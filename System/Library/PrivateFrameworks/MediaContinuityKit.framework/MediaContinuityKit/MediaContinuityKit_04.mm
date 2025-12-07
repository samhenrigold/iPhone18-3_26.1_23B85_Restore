uint64_t sub_2584C11F8()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStream;
  swift_beginAccess();
  sub_2584AC3B8(v2 + v3, v1, &unk_27F930970, &unk_25853ACE0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_258465168(v1, &unk_27F930970, &unk_25853ACE0);
  if (v2 == 1)
  {
    v5 = 2;
LABEL_9:
    sub_2584BBF74();
    swift_allocError();
    *v20 = v5;
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }

  v6 = v0[13];
  v7 = v0[11];
  v8 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_transitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v7 + v8, v6, &unk_27F930DB0, &qword_258536390);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v10 = *(*(v9 - 8) + 48);
  LODWORD(v8) = v10(v6, 1, v9);
  sub_258465168(v6, &unk_27F930DB0, &qword_258536390);
  if (v8 != 1 || (v12 = v0[11], v11 = v0[12], v13 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_stopTransitionContinuation, swift_beginAccess(), sub_2584AC3B8(v12 + v13, v11, &unk_27F930DB0, &qword_258536390), v14 = v10(v11, 1, v9), sub_258465168(v11, &unk_27F930DB0, &qword_258536390), v14 != 1))
  {
    v5 = 0;
    goto LABEL_9;
  }

  v15 = v0[11];
  v16 = sub_2584C6294(&qword_27F930958, type metadata accessor for AVConferenceBackedAudioStream, &unk_25853ACB0);
  v17 = swift_task_alloc();
  v0[15] = v17;
  *v17 = v0;
  v17[1] = sub_2584C0F4C;
  v18 = v0[11];
  v19 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v17, v15, v16, 0x2928656D75736572, 0xE800000000000000, sub_2584C6088, v18, v19);
}

uint64_t sub_2584C1588()
{
  v1[11] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584C1668, v0, 0);
}

uint64_t sub_2584C1668()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStream;
  swift_beginAccess();
  sub_2584AC3B8(v2 + v3, v1, &unk_27F930970, &unk_25853ACE0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_258465168(v1, &unk_27F930970, &unk_25853ACE0);
  if (v2 == 1)
  {
    v5 = 2;
LABEL_9:
    sub_2584BBF74();
    swift_allocError();
    *v20 = v5;
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }

  v6 = v0[13];
  v7 = v0[11];
  v8 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_transitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v7 + v8, v6, &unk_27F930DB0, &qword_258536390);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v10 = *(*(v9 - 8) + 48);
  LODWORD(v8) = v10(v6, 1, v9);
  sub_258465168(v6, &unk_27F930DB0, &qword_258536390);
  if (v8 != 1 || (v12 = v0[11], v11 = v0[12], v13 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_stopTransitionContinuation, swift_beginAccess(), sub_2584AC3B8(v12 + v13, v11, &unk_27F930DB0, &qword_258536390), v14 = v10(v11, 1, v9), sub_258465168(v11, &unk_27F930DB0, &qword_258536390), v14 != 1))
  {
    v5 = 0;
    goto LABEL_9;
  }

  v15 = v0[11];
  v16 = sub_2584C6294(&qword_27F9309D0, type metadata accessor for AVConferenceBackedVideoStream, &unk_25853BCC0);
  v17 = swift_task_alloc();
  v0[15] = v17;
  *v17 = v0;
  v17[1] = sub_2584C0F4C;
  v18 = v0[11];
  v19 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v17, v15, v16, 0x2928656D75736572, 0xE800000000000000, sub_2584C6308, v18, v19);
}

uint64_t sub_2584C19F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258464F5C;

  return sub_2584C1A98();
}

uint64_t sub_2584C1A98()
{
  v1[17] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0);
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584C1BEC, v0, 0);
}

uint64_t sub_2584C1BEC()
{
  v40 = v0;
  v0[25] = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_logger;

  v1 = sub_258532A2C();
  v2 = sub_2585338BC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[17];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v39 = v5;
    *v4 = 136315138;
    v0[16] = v3;
    type metadata accessor for AVConferenceBackedAudioStream(0);

    v6 = sub_25853347C();
    v8 = sub_2584713B0(v6, v7, &v39);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25845E000, v1, v2, "%s stopping", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  v9 = v0[24];
  v10 = v0[17];
  v11 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStream;
  swift_beginAccess();
  sub_2584AC3B8(v10 + v11, v9, &unk_27F930970, &unk_25853ACE0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  LODWORD(v10) = (*(*(v12 - 8) + 48))(v9, 1, v12);
  sub_258465168(v9, &unk_27F930970, &unk_25853ACE0);
  if (v10 == 1)
  {
    sub_2584BBF74();
    swift_allocError();
    *v13 = 2;
LABEL_11:
    swift_willThrow();

    v27 = v0[1];

    return v27();
  }

  v14 = v0[23];
  v15 = v0[18];
  v16 = v0[19];
  v17 = v0[17];
  v18 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_stopTransitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v17 + v18, v14, &unk_27F930DB0, &qword_258536390);
  v19 = *(v16 + 48);
  LODWORD(v15) = v19(v14, 1, v15);
  sub_258465168(v14, &unk_27F930DB0, &qword_258536390);
  if (v15 != 1)
  {
    sub_2584BBF74();
    swift_allocError();
    goto LABEL_10;
  }

  v20 = *(v0[17] + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventMonitorTask);
  sub_2584BBF74();
  v22 = swift_allocError();
  if (!v20)
  {
LABEL_10:
    *v21 = 0;
    goto LABEL_11;
  }

  v23 = v0[22];
  v25 = v0[17];
  v24 = v0[18];
  *v21 = 1;
  v26 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_transitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v25 + v26, v23, &unk_27F930DB0, &qword_258536390);
  if (v19(v23, 1, v24) == 1)
  {
    sub_258465168(v0[22], &unk_27F930DB0, &qword_258536390);
  }

  else
  {
    v29 = v0[20];
    v30 = v0[21];
    v31 = v0[18];
    v32 = v0[19];
    (*(v32 + 32))(v29, v0[22], v31);
    v0[15] = v22;
    v33 = v22;
    sub_25853363C();
    (*(v32 + 8))(v29, v31);
    (*(v32 + 56))(v30, 1, 1, v31);
    swift_beginAccess();
    sub_2584AC5D0(v30, v25 + v26, &unk_27F930DB0, &qword_258536390);
    swift_endAccess();
  }

  v34 = v0[17];

  v35 = sub_2584C6294(&qword_27F930958, type metadata accessor for AVConferenceBackedAudioStream, &unk_25853ACB0);
  v36 = swift_task_alloc();
  v0[26] = v36;
  *v36 = v0;
  v36[1] = sub_2584C21A8;
  v37 = v0[17];
  v38 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v36, v34, v35, 0x2928706F7473, 0xE600000000000000, sub_2584C5DC0, v37, v38);
}

uint64_t sub_2584C21A8()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_2584C247C;
  }

  else
  {
    v4 = sub_2584C22D4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584C22D4()
{
  v12 = v0;

  v1 = sub_258532A2C();
  v2 = sub_2585338BC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[17];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[14] = v3;
    type metadata accessor for AVConferenceBackedAudioStream(0);

    v6 = sub_25853347C();
    v8 = sub_2584713B0(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25845E000, v1, v2, "%s stopped", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_2584C247C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584C2518()
{
  v1[17] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0);
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584C266C, v0, 0);
}

uint64_t sub_2584C266C()
{
  v40 = v0;
  v0[25] = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_logger;

  v1 = sub_258532A2C();
  v2 = sub_2585338BC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[17];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v39 = v5;
    *v4 = 136315138;
    v0[16] = v3;
    type metadata accessor for AVConferenceBackedVideoStream(0);

    v6 = sub_25853347C();
    v8 = sub_2584713B0(v6, v7, &v39);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25845E000, v1, v2, "%s stopping", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  v9 = v0[24];
  v10 = v0[17];
  v11 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStream;
  swift_beginAccess();
  sub_2584AC3B8(v10 + v11, v9, &unk_27F930970, &unk_25853ACE0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  LODWORD(v10) = (*(*(v12 - 8) + 48))(v9, 1, v12);
  sub_258465168(v9, &unk_27F930970, &unk_25853ACE0);
  if (v10 == 1)
  {
    sub_2584BBF74();
    swift_allocError();
    *v13 = 2;
LABEL_11:
    swift_willThrow();

    v27 = v0[1];

    return v27();
  }

  v14 = v0[23];
  v15 = v0[18];
  v16 = v0[19];
  v17 = v0[17];
  v18 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_stopTransitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v17 + v18, v14, &unk_27F930DB0, &qword_258536390);
  v19 = *(v16 + 48);
  LODWORD(v15) = v19(v14, 1, v15);
  sub_258465168(v14, &unk_27F930DB0, &qword_258536390);
  if (v15 != 1)
  {
    sub_2584BBF74();
    swift_allocError();
    goto LABEL_10;
  }

  v20 = *(v0[17] + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventMonitorTask);
  sub_2584BBF74();
  v22 = swift_allocError();
  if (!v20)
  {
LABEL_10:
    *v21 = 0;
    goto LABEL_11;
  }

  v23 = v0[22];
  v25 = v0[17];
  v24 = v0[18];
  *v21 = 1;
  v26 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_transitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v25 + v26, v23, &unk_27F930DB0, &qword_258536390);
  if (v19(v23, 1, v24) == 1)
  {
    sub_258465168(v0[22], &unk_27F930DB0, &qword_258536390);
  }

  else
  {
    v29 = v0[20];
    v30 = v0[21];
    v31 = v0[18];
    v32 = v0[19];
    (*(v32 + 32))(v29, v0[22], v31);
    v0[15] = v22;
    v33 = v22;
    sub_25853363C();
    (*(v32 + 8))(v29, v31);
    (*(v32 + 56))(v30, 1, 1, v31);
    swift_beginAccess();
    sub_2584AC5D0(v30, v25 + v26, &unk_27F930DB0, &qword_258536390);
    swift_endAccess();
  }

  v34 = v0[17];

  v35 = sub_2584C6294(&qword_27F9309D0, type metadata accessor for AVConferenceBackedVideoStream, &unk_25853BCC0);
  v36 = swift_task_alloc();
  v0[26] = v36;
  *v36 = v0;
  v36[1] = sub_2584C2C28;
  v37 = v0[17];
  v38 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v36, v34, v35, 0x2928706F7473, 0xE600000000000000, sub_2584C62DC, v37, v38);
}

uint64_t sub_2584C2C28()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_2584C6638;
  }

  else
  {
    v4 = sub_2584C2D54;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584C2D54()
{
  v12 = v0;

  v1 = sub_258532A2C();
  v2 = sub_2585338BC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[17];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[14] = v3;
    type metadata accessor for AVConferenceBackedVideoStream(0);

    v6 = sub_25853347C();
    v8 = sub_2584713B0(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25845E000, v1, v2, "%s stopped", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_2584C2EFC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2584C2F1C, v1, 0);
}

uint64_t sub_2584C2F1C()
{
  sub_2584BB594(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2584C2F98()
{
  if (*v0 >= 2u)
  {
    return 14;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_2584C2FB0(void *a1, uint64_t *a2, uint64_t *a3)
{
  v24 = a1;
  v25 = a3;
  v5 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DA0, &unk_25853BD00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930990, &unk_25853AD00);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9308E0, &qword_25853AC68);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - v17;
  v19 = *a2;
  swift_beginAccess();
  sub_2584AC3B8(v5 + v19, v14, &unk_27F930990, &unk_25853AD00);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_258465168(v14, &unk_27F930990, &unk_25853AD00);
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    v26 = v24;
    v20 = v24;
    sub_2585337FC();
    (*(v16 + 8))(v18, v15);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60);
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  v22 = *v25;
  swift_beginAccess();
  sub_2584AC5D0(v8, v5 + v22, &unk_27F930DA0, &unk_25853BD00);
  swift_endAccess();
  (*(v16 + 56))(v12, 1, 1, v15);
  swift_beginAccess();
  sub_2584AC5D0(v12, v5 + v19, &unk_27F930990, &unk_25853AD00);
  return swift_endAccess();
}

uint64_t sub_2584C32EC(uint64_t *a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16[-v12];
  v14 = *a1;
  swift_beginAccess();
  sub_2584AC3B8(v3 + v14, v9, &unk_27F930DB0, &qword_258536390);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_258465168(v9, &unk_27F930DB0, &qword_258536390);
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_25853364C();
  (*(v11 + 8))(v13, v10);
  (*(v11 + 56))(v7, 1, 1, v10);
  swift_beginAccess();
  sub_2584AC5D0(v7, v3 + v14, &unk_27F930DB0, &qword_258536390);
  return swift_endAccess();
}

uint64_t sub_2584C3540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22 - v14;
  v16 = sub_25853368C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  (*(v9 + 16))(v12, a1, v8);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  (*(v9 + 32))(v19 + v18, v12, v8);
  *(v19 + ((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
  v20 = sub_258476C88(0, 0, v15, a4, v19);
  *(v5 + *v23) = v20;
}

uint64_t sub_2584C3768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0);
  v5[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9309C0, &qword_25853AF18);
  v5[28] = v7;
  v5[29] = *(v7 - 8);
  v5[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584C3918, 0, 0);
}

uint64_t sub_2584C3918()
{
  v0[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  sub_2585336FC();
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_2584C3A08;
  v2 = v0[28];

  return MEMORY[0x2822005A8](v0 + 17, 0, 0, v2, v0 + 18);
}

uint64_t sub_2584C3A08()
{

  if (v0)
  {
    v1 = sub_2584C3C54;
  }

  else
  {
    v1 = sub_2584C3B18;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2584C3B18(uint64_t a1)
{
  v2 = v1[17];
  v1[33] = v2;
  if (v2 == 4)
  {
    (*(v1[29] + 8))(v1[30], v1[28]);
LABEL_9:

    v4 = v1[1];

    return v4();
  }

  if ((sub_25853376C() & 1) != 0 || (Strong = swift_weakLoadStrong(), (v1[36] = Strong) == 0))
  {
    (*(v1[29] + 8))(v1[30], v1[28]);
    sub_2584C6274(v2);
    goto LABEL_9;
  }

  return MEMORY[0x2822009F8](sub_2584C4008, Strong, 0);
}

uint64_t sub_2584C3C54()
{
  (*(v0[29] + 8))(v0[30], v0[28]);
  v1 = v0[18];
  v0[34] = v1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[35] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2584C3D78, Strong, 0);
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_2584C3D78()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);
  sub_2584C2FB0(*(v0 + 272), &OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStreamContinuation, &OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStream);
  v5 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_transitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v5, v4, &unk_27F930DB0, &qword_258536390);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_258465168(*(v0 + 192), &unk_27F930DB0, &qword_258536390);
  }

  else
  {
    v6 = *(v0 + 272);
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = *(v0 + 184);
    (*(v8 + 32))(v7, *(v0 + 192), v9);
    *(v0 + 152) = v6;
    v11 = v6;
    sub_25853363C();
    (*(v8 + 8))(v7, v9);
    (*(v8 + 56))(v10, 1, 1, v9);
    swift_beginAccess();
    sub_2584AC5D0(v10, v1 + v5, &unk_27F930DB0, &qword_258536390);
    swift_endAccess();
  }

  v12 = *(v0 + 280);
  v13 = *(v0 + 248);
  v14 = *(v0 + 176);
  sub_2584C32EC(&OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_stopTransitionContinuation);
  (*(*(v13 - 8) + 56))(v14, 1, 1, v13);
  v15 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStream;
  swift_beginAccess();
  sub_2584AC5D0(v14, v12 + v15, &unk_27F930970, &unk_25853ACE0);
  swift_endAccess();
  *(v12 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventMonitorTask) = 0;

  return MEMORY[0x2822009F8](sub_2584C41D0, 0, 0);
}

uint64_t sub_2584C4008()
{
  *(v0 + 296) = sub_2584C4CE0(*(v0 + 264)) & 1;

  return MEMORY[0x2822009F8](sub_2584C407C, 0, 0);
}

uint64_t sub_2584C407C()
{
  v1 = *(v0 + 296);
  sub_2584C6274(*(v0 + 264));

  if (v1)
  {
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 256) = v4;
    *v4 = v0;
    v4[1] = sub_2584C3A08;
    v5 = *(v0 + 224);

    return MEMORY[0x2822005A8](v0 + 136, 0, 0, v5, v0 + 144);
  }
}

uint64_t sub_2584C41D0()
{
  v1 = *(v0 + 272);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2584C4278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0);
  v5[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9309C0, &qword_25853AF18);
  v5[28] = v7;
  v5[29] = *(v7 - 8);
  v5[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584C4428, 0, 0);
}

uint64_t sub_2584C4428()
{
  v0[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  sub_2585336FC();
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_2584C4518;
  v2 = v0[28];

  return MEMORY[0x2822005A8](v0 + 17, 0, 0, v2, v0 + 18);
}

uint64_t sub_2584C4518()
{

  if (v0)
  {
    v1 = sub_2584C4764;
  }

  else
  {
    v1 = sub_2584C4628;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2584C4628(uint64_t a1)
{
  v2 = v1[17];
  v1[33] = v2;
  if (v2 == 4)
  {
    (*(v1[29] + 8))(v1[30], v1[28]);
LABEL_9:

    v4 = v1[1];

    return v4();
  }

  if ((sub_25853376C() & 1) != 0 || (Strong = swift_weakLoadStrong(), (v1[36] = Strong) == 0))
  {
    (*(v1[29] + 8))(v1[30], v1[28]);
    sub_2584C6274(v2);
    goto LABEL_9;
  }

  return MEMORY[0x2822009F8](sub_2584C4B18, Strong, 0);
}

uint64_t sub_2584C4764()
{
  (*(v0[29] + 8))(v0[30], v0[28]);
  v1 = v0[18];
  v0[34] = v1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[35] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2584C4888, Strong, 0);
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_2584C4888()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);
  sub_2584C2FB0(*(v0 + 272), &OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStreamContinuation, &OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStream);
  v5 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_transitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v5, v4, &unk_27F930DB0, &qword_258536390);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_258465168(*(v0 + 192), &unk_27F930DB0, &qword_258536390);
  }

  else
  {
    v6 = *(v0 + 272);
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = *(v0 + 184);
    (*(v8 + 32))(v7, *(v0 + 192), v9);
    *(v0 + 152) = v6;
    v11 = v6;
    sub_25853363C();
    (*(v8 + 8))(v7, v9);
    (*(v8 + 56))(v10, 1, 1, v9);
    swift_beginAccess();
    sub_2584AC5D0(v10, v1 + v5, &unk_27F930DB0, &qword_258536390);
    swift_endAccess();
  }

  v12 = *(v0 + 280);
  v13 = *(v0 + 248);
  v14 = *(v0 + 176);
  sub_2584C32EC(&OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_stopTransitionContinuation);
  (*(*(v13 - 8) + 56))(v14, 1, 1, v13);
  v15 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStream;
  swift_beginAccess();
  sub_2584AC5D0(v14, v12 + v15, &unk_27F930970, &unk_25853ACE0);
  swift_endAccess();
  *(v12 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventMonitorTask) = 0;

  return MEMORY[0x2822009F8](sub_2584C6640, 0, 0);
}

uint64_t sub_2584C4B18()
{
  *(v0 + 296) = sub_2584C549C(*(v0 + 264)) & 1;

  return MEMORY[0x2822009F8](sub_2584C4B8C, 0, 0);
}

uint64_t sub_2584C4B8C()
{
  v1 = *(v0 + 296);
  sub_2584C6274(*(v0 + 264));

  if (v1)
  {
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 256) = v4;
    *v4 = v0;
    v4[1] = sub_2584C4518;
    v5 = *(v0 + 224);

    return MEMORY[0x2822005A8](v0 + 136, 0, 0, v5, v0 + 144);
  }
}

uint64_t sub_2584C4CE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9309C8, qword_25853AF20);
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x28223BE20](v2);
  v57 = &v56 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v56 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v60 = &v56 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930990, &unk_25853AD00);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v56 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9308E0, &qword_25853AC68);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v56 - v28;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v47 = v63;
      sub_2584C2FB0(0, &OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStreamContinuation, &OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStream);
      sub_2584C32EC(&OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_stopTransitionContinuation);
      *(v47 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventMonitorTask) = 0;

      return 1;
    }

    if (a1 == 3)
    {
      v35 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_transitionContinuation;
      v36 = v63;
      swift_beginAccess();
      sub_2584AC3B8(v36 + v35, v10, &unk_27F930DB0, &qword_258536390);
      v38 = v61;
      v37 = v62;
      if ((*(v61 + 48))(v10, 1, v62) == 1)
      {
        v32 = &unk_27F930DB0;
        v33 = &qword_258536390;
        v34 = v10;
        goto LABEL_14;
      }

      (*(v38 + 32))(v16, v10, v37);
      v54 = v63;
      sub_25853364C();
      (*(v38 + 8))(v16, v37);
      v51 = v60;
      (*(v38 + 56))(v60, 1, 1, v37);
      swift_beginAccess();
      v52 = v54 + v35;
LABEL_19:
      sub_2584AC5D0(v51, v52, &unk_27F930DB0, &qword_258536390);
      swift_endAccess();
      return 0;
    }

LABEL_10:
    v39 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_transitionContinuation;
    v40 = v63;
    swift_beginAccess();
    v41 = v40 + v39;
    v42 = v56;
    sub_2584AC3B8(v41, v56, &unk_27F930DB0, &qword_258536390);
    v44 = v61;
    v43 = v62;
    if ((*(v61 + 48))(v42, 1, v62) == 1)
    {
      v32 = &unk_27F930DB0;
      v33 = &qword_258536390;
      v34 = v42;
      goto LABEL_14;
    }

    (*(v44 + 32))(v14, v42, v43);
    v64 = a1;
    v49 = a1;
    v50 = v63;
    sub_25853363C();
    (*(v44 + 8))(v14, v43);
    v51 = v60;
    (*(v44 + 56))(v60, 1, 1, v43);
    swift_beginAccess();
    v52 = v50 + v39;
    goto LABEL_19;
  }

  if (!a1)
  {
    v45 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStreamContinuation;
    v46 = v63;
    swift_beginAccess();
    sub_2584AC3B8(v46 + v45, v22, &unk_27F930990, &unk_25853AD00);
    if ((*(v24 + 48))(v22, 1, v23) != 1)
    {
      (*(v24 + 32))(v29, v22, v23);
      LOBYTE(v64) = 0;
      v55 = v57;
      sub_2585337EC();
      (*(v58 + 8))(v55, v59);
      (*(v24 + 8))(v29, v23);
      return 0;
    }

    v32 = &unk_27F930990;
    v33 = &unk_25853AD00;
    v34 = v22;
    goto LABEL_14;
  }

  if (a1 != 1)
  {
    goto LABEL_10;
  }

  v30 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStreamContinuation;
  v31 = v63;
  swift_beginAccess();
  sub_2584AC3B8(v31 + v30, v20, &unk_27F930990, &unk_25853AD00);
  if ((*(v24 + 48))(v20, 1, v23) != 1)
  {
    (*(v24 + 32))(v27, v20, v23);
    LOBYTE(v64) = 1;
    v53 = v57;
    sub_2585337EC();
    (*(v58 + 8))(v53, v59);
    (*(v24 + 8))(v27, v23);
    return 0;
  }

  v32 = &unk_27F930990;
  v33 = &unk_25853AD00;
  v34 = v20;
LABEL_14:
  sub_258465168(v34, v32, v33);
  return 0;
}

uint64_t sub_2584C549C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9309C8, qword_25853AF20);
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x28223BE20](v2);
  v57 = &v56 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v56 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v60 = &v56 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930990, &unk_25853AD00);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v56 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9308E0, &qword_25853AC68);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v56 - v28;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v47 = v63;
      sub_2584C2FB0(0, &OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStreamContinuation, &OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStream);
      sub_2584C32EC(&OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_stopTransitionContinuation);
      *(v47 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventMonitorTask) = 0;

      return 1;
    }

    if (a1 == 3)
    {
      v35 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_transitionContinuation;
      v36 = v63;
      swift_beginAccess();
      sub_2584AC3B8(v36 + v35, v10, &unk_27F930DB0, &qword_258536390);
      v38 = v61;
      v37 = v62;
      if ((*(v61 + 48))(v10, 1, v62) == 1)
      {
        v32 = &unk_27F930DB0;
        v33 = &qword_258536390;
        v34 = v10;
        goto LABEL_14;
      }

      (*(v38 + 32))(v16, v10, v37);
      v54 = v63;
      sub_25853364C();
      (*(v38 + 8))(v16, v37);
      v51 = v60;
      (*(v38 + 56))(v60, 1, 1, v37);
      swift_beginAccess();
      v52 = v54 + v35;
LABEL_19:
      sub_2584AC5D0(v51, v52, &unk_27F930DB0, &qword_258536390);
      swift_endAccess();
      return 0;
    }

LABEL_10:
    v39 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_transitionContinuation;
    v40 = v63;
    swift_beginAccess();
    v41 = v40 + v39;
    v42 = v56;
    sub_2584AC3B8(v41, v56, &unk_27F930DB0, &qword_258536390);
    v44 = v61;
    v43 = v62;
    if ((*(v61 + 48))(v42, 1, v62) == 1)
    {
      v32 = &unk_27F930DB0;
      v33 = &qword_258536390;
      v34 = v42;
      goto LABEL_14;
    }

    (*(v44 + 32))(v14, v42, v43);
    v64 = a1;
    v49 = a1;
    v50 = v63;
    sub_25853363C();
    (*(v44 + 8))(v14, v43);
    v51 = v60;
    (*(v44 + 56))(v60, 1, 1, v43);
    swift_beginAccess();
    v52 = v50 + v39;
    goto LABEL_19;
  }

  if (!a1)
  {
    v45 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStreamContinuation;
    v46 = v63;
    swift_beginAccess();
    sub_2584AC3B8(v46 + v45, v22, &unk_27F930990, &unk_25853AD00);
    if ((*(v24 + 48))(v22, 1, v23) != 1)
    {
      (*(v24 + 32))(v29, v22, v23);
      LOBYTE(v64) = 0;
      v55 = v57;
      sub_2585337EC();
      (*(v58 + 8))(v55, v59);
      (*(v24 + 8))(v29, v23);
      return 0;
    }

    v32 = &unk_27F930990;
    v33 = &unk_25853AD00;
    v34 = v22;
    goto LABEL_14;
  }

  if (a1 != 1)
  {
    goto LABEL_10;
  }

  v30 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStreamContinuation;
  v31 = v63;
  swift_beginAccess();
  sub_2584AC3B8(v31 + v30, v20, &unk_27F930990, &unk_25853AD00);
  if ((*(v24 + 48))(v20, 1, v23) != 1)
  {
    (*(v24 + 32))(v27, v20, v23);
    LOBYTE(v64) = 1;
    v53 = v57;
    sub_2585337EC();
    (*(v58 + 8))(v53, v59);
    (*(v24 + 8))(v27, v23);
    return 0;
  }

  v32 = &unk_27F930990;
  v33 = &unk_25853AD00;
  v34 = v20;
LABEL_14:
  sub_258465168(v34, v32, v33);
  return 0;
}

id sub_2584C5C58(uint64_t a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = *a3;
  swift_beginAccess();
  sub_2584AC5D0(v10, a2 + v13, &unk_27F930DB0, &qword_258536390);
  swift_endAccess();
  return [*(a2 + 112) *a4];
}

uint64_t sub_2584C5DEC(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258472CF8;

  return sub_2584BE6E0(a1, a2);
}

uint64_t sub_2584C5EA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584C0ADC();
}

uint64_t sub_2584C5F48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584C1588();
}

uint64_t sub_2584C5FE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584C2518();
}

uint64_t sub_2584C610C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2584C6148(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258464F5C;

  return sub_2584C3768(a1, v6, v7, v1 + v5, v8);
}

void sub_2584C6274(id result)
{
  if (result != 4)
  {
    sub_2584C6284(result);
  }
}

void sub_2584C6284(id a1)
{
  if (a1 >= 4)
  {
  }
}

uint64_t sub_2584C6294(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_21Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2584C6470(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258472CF8;

  return sub_2584C4278(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_2584C65AC(uint64_t a1)
{
  result = sub_2584BBF74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584C65D8()
{
  result = qword_27F9309D8;
  if (!qword_27F9309D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9309D8);
  }

  return result;
}

id CoexServerXPCListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CoexServerXPCListener.init()()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v3 = sub_25853341C();
  v4 = [v2 initWithMachServiceName_];

  *&v1[OBJC_IVAR____TtC18MediaContinuityKit21CoexServerXPCListener_coexListener] = v4;
  type metadata accessor for CoexSessionManager(0);
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC18MediaContinuityKit21CoexServerXPCListener_coexManager] = sub_2584CA2B8();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CoexServerXPCListener();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_2584C684C()
{
  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  __swift_project_value_buffer(v1, qword_27F93D050);
  v2 = sub_258532A2C();
  v3 = sub_2585338EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25845E000, v2, v3, "Activating the Coex Manager", v4, 2u);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + OBJC_IVAR____TtC18MediaContinuityKit21CoexServerXPCListener_coexManager);
  *(v0 + 24) = v6;

  return MEMORY[0x2822009F8](sub_2584C6978, v6, 0);
}

uint64_t sub_2584C6978()
{
  sub_2584C99B8();

  return MEMORY[0x2822009F8](sub_2584C69E0, 0, 0);
}

uint64_t sub_2584C69E0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MediaContinuityKit21CoexServerXPCListener_coexListener);
  [v1 setDelegate_];
  [v1 resume];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2584C6A88()
{
  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  __swift_project_value_buffer(v1, qword_27F93D050);
  v2 = sub_258532A2C();
  v3 = sub_2585338EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25845E000, v2, v3, "Invalidating the Coex Manager", v4, 2u);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + OBJC_IVAR____TtC18MediaContinuityKit21CoexServerXPCListener_coexManager);
  *(v0 + 24) = v6;

  return MEMORY[0x2822009F8](sub_2584C6BB4, v6, 0);
}

uint64_t sub_2584C6BB4()
{
  sub_2584C9CDC();

  return MEMORY[0x2822009F8](sub_2584C6C1C, 0, 0);
}

uint64_t sub_2584C6C1C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MediaContinuityKit21CoexServerXPCListener_coexListener);
  [v1 suspend];
  [v1 invalidate];
  v2 = *(v0 + 8);

  return v2();
}

id CoexServerXPCListener.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoexServerXPCListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2584C6D24(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v5 = sub_258532A4C();
  __swift_project_value_buffer(v5, qword_27F93D050);
  v6 = sub_258532A2C();
  v7 = sub_2585338EC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_25845E000, v6, v7, "New coex client request", v8, 2u);
    MEMORY[0x259C82900](v8, -1, -1);
  }

  sub_2584C7B28();
  if ((sub_2585339EC() & 1) == 0)
  {
    v11 = sub_258532A2C();
    v12 = sub_2585338CC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_25845E000, v11, v12, "Unknown coex listener", v13, 2u);
      MEMORY[0x259C82900](v13, -1, -1);
    }

    return 0;
  }

  v9 = sub_25853341C();
  v10 = [a1 valueForEntitlement_];

  if (v10)
  {
    sub_258533A5C();
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0u;
    v37 = 0u;
  }

  v40[0] = aBlock;
  v40[1] = v37;
  sub_2584C7B74(v40, &aBlock);
  if (!*(&v37 + 1))
  {
    sub_258467FD8(&aBlock);
LABEL_19:
    v30 = sub_258532A2C();
    v31 = sub_2585338CC();
    if (!os_log_type_enabled(v30, v31))
    {
LABEL_22:

      sub_258467FD8(v40);
      return 0;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Failed entitlement check";
LABEL_21:
    _os_log_impl(&dword_25845E000, v30, v31, v33, v32, 2u);
    MEMORY[0x259C82900](v32, -1, -1);
    goto LABEL_22;
  }

  if (!swift_dynamicCast() || (v35 & 1) == 0)
  {
    goto LABEL_19;
  }

  v14 = objc_opt_self();
  v15 = [v14 interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  v38 = sub_2584C7404;
  v39 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v37 = sub_2584D170C;
  *(&v37 + 1) = &block_descriptor_0;
  v16 = _Block_copy(&aBlock);
  [a1 setInterruptionHandler_];
  _Block_release(v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = sub_2584C7C34;
  v39 = v17;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v37 = sub_2584D170C;
  *(&v37 + 1) = &block_descriptor_7;
  v18 = _Block_copy(&aBlock);

  [a1 setInvalidationHandler_];
  _Block_release(v18);
  v19 = [a1 remoteObjectProxy];
  sub_258533A5C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930A68, &qword_25853B118);
  if (!swift_dynamicCast())
  {
    v30 = sub_258532A2C();
    v31 = sub_2585338CC();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_22;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Invalid coex client proxy";
    goto LABEL_21;
  }

  v20 = *(v3 + OBJC_IVAR____TtC18MediaContinuityKit21CoexServerXPCListener_coexManager);
  swift_unknownObjectRetain();

  v21 = [a1 processIdentifier];
  type metadata accessor for CoreOSBackedDaemonTransaction();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = sub_2584C7C3C(v35, v20, v21, v22);
  v24 = [v14 interfaceWithProtocol_];
  sub_258473C6C();
  v25 = sub_25853386C();

  [v24 setClasses:v25 forSelector:sel_startWithUuid_config_completionHandler_ argumentIndex:1 ofReply:0];

  sub_258473C6C();
  v26 = sub_25853386C();

  [v24 setClasses:v26 forSelector:sel_startSuspendedWithUuid_config_completionHandler_ argumentIndex:1 ofReply:0];

  [a1 setExportedInterface_];
  [a1 setExportedObject_];
  v27 = sub_258532A2C();
  v28 = sub_2585338EC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_25845E000, v27, v28, "New coex client created", v29, 2u);
    MEMORY[0x259C82900](v29, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  sub_258467FD8(v40);
  return 1;
}

void sub_2584C7404()
{
  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v0 = sub_258532A4C();
  __swift_project_value_buffer(v0, qword_27F93D050);
  oslog = sub_258532A2C();
  v1 = sub_2585338AC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_25845E000, oslog, v1, "interruptionHandler called", v2, 2u);
    MEMORY[0x259C82900](v2, -1, -1);
  }
}

void sub_2584C74EC(uint64_t a1)
{
  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  __swift_project_value_buffer(v1, qword_27F93D050);
  v2 = sub_258532A2C();
  v3 = sub_2585338CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25845E000, v2, v3, "XPC connection invalidated", v4, 2u);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ([Strong exportedObject])
    {
      sub_258533A5C();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12[0] = v10;
    v12[1] = v11;
    if (*(&v11 + 1))
    {
      type metadata accessor for CoexSessionXPCServerProxy();
      if (swift_dynamicCast())
      {
        if (*&v9[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexSession])
        {
          __swift_project_boxed_opaque_existential_1(&v9[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexManager], *&v9[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexManager + 24]);
          v7 = off_28698ED98[0];
          type metadata accessor for CoexSessionManager(0);

          v7(v8);

          *(*__swift_project_boxed_opaque_existential_1(&v9[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_daemonTransaction], *&v9[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_daemonTransaction + 24]) + 16) = 0;
          swift_unknownObjectRelease();
          return;
        }
      }
    }

    else
    {

      sub_258467FD8(v12);
    }
  }
}

Swift::Bool __swiftcall CoexServerXPCListener.listener(_:shouldAcceptNewConnection:)(NSXPCListener _, NSXPCConnection shouldAcceptNewConnection)
{
  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v4 = sub_258532A4C();
  __swift_project_value_buffer(v4, qword_27F93D050);
  v5 = sub_258532A2C();
  v6 = sub_2585338EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_25845E000, v5, v6, "New coex client connection", v7, 2u);
    MEMORY[0x259C82900](v7, -1, -1);
  }

  v8 = sub_2584C6D24(shouldAcceptNewConnection.super.isa, _.super.isa);
  [(objc_class *)shouldAcceptNewConnection.super.isa resume];
  return v8 & 1;
}

uint64_t dispatch thunk of CoexServerXPCListener.activate()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258472CF8;

  return v5();
}

uint64_t dispatch thunk of CoexServerXPCListener.invalidate()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258464F5C;

  return v5();
}

unint64_t sub_2584C7B28()
{
  result = qword_27F930A58;
  if (!qword_27F930A58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F930A58);
  }

  return result;
}

uint64_t sub_2584C7B74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FD80, &unk_25853F3F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2584C7BFC()
{
  MEMORY[0x259C829D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2584C7C3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CoexSessionManager(0);
  v31[3] = v8;
  v31[4] = &off_28698ED70;
  v31[0] = a2;
  v9 = type metadata accessor for CoreOSBackedDaemonTransaction();
  v29 = v9;
  v30 = &off_28698F5B0;
  v28[0] = a4;
  v10 = type metadata accessor for CoexSessionXPCServerProxy();
  v11 = objc_allocWithZone(v10);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v31, v8);
  MEMORY[0x28223BE20](v12);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
  MEMORY[0x28223BE20](v16);
  v18 = (&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v14;
  v21 = *v18;
  v27[3] = v8;
  v27[4] = &off_28698ED70;
  v26[4] = &off_28698F5B0;
  v27[0] = v20;
  v26[3] = v9;
  v26[0] = v21;
  *&v11[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexSession] = 0;
  *&v11[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_processIdentifier] = a3;
  *&v11[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_delegate] = a1;
  sub_258464C30(v27, &v11[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexManager]);
  sub_258464C30(v26, &v11[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_daemonTransaction]);
  v25.receiver = v11;
  v25.super_class = v10;
  v22 = objc_msgSendSuper2(&v25, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  return v22;
}

uint64_t sub_2584C7EC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64657472617473;
  if (v2 != 1)
  {
    v5 = 0x65646E6570737573;
    v4 = 0xE900000000000064;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x646570706F7473;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x64657472617473;
  if (*a2 != 1)
  {
    v8 = 0x65646E6570737573;
    v3 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x646570706F7473;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_258533E2C();
  }

  return v11 & 1;
}

uint64_t sub_2584C7FCC()
{
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_2584C8074(uint64_t a1)
{
  sub_2585334AC();
}

uint64_t sub_2584C8108(uint64_t a1)
{
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

unint64_t sub_2584C81AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2584C9590(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2584C81DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64657472617473;
  if (v2 != 1)
  {
    v5 = 0x65646E6570737573;
    v4 = 0xE900000000000064;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x646570706F7473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2584C8260()
{
  v12 = v0;
  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  *(v0 + 24) = __swift_project_value_buffer(v1, qword_27F93D050);

  v2 = sub_258532A2C();
  v3 = sub_2585338EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    sub_258533B8C();

    strcpy(v11, "CoexSession=[");
    HIWORD(v11[1]) = -4864;
    sub_2585329BC();
    sub_2584C9548(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v6 = sub_258533DFC();
    MEMORY[0x259C81500](v6);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v7 = sub_2584713B0(v11[0], v11[1], &v10);

    *(v4 + 4) = v7;
    _os_log_impl(&dword_25845E000, v2, v3, "%s Coex session suspending", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  *v8 = v0;
  v8[1] = sub_2584C852C;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_2584C852C()
{

  return MEMORY[0x2822009F8](sub_2584C8628, 0, 0);
}

uint64_t sub_2584C8628()
{
  v11 = v0;

  v1 = sub_258532A2C();
  v2 = sub_2585338EC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    sub_258533B8C();

    strcpy(v10, "CoexSession=[");
    HIWORD(v10[1]) = -4864;
    sub_2585329BC();
    sub_2584C9548(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v5 = sub_258533DFC();
    MEMORY[0x259C81500](v5);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v6 = sub_2584713B0(v10[0], v10[1], &v9);

    *(v3 + 4) = v6;
    _os_log_impl(&dword_25845E000, v1, v2, "%s Coex session suspended", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x259C82900](v4, -1, -1);
    MEMORY[0x259C82900](v3, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2584C884C()
{
  v12 = v0;
  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  *(v0 + 24) = __swift_project_value_buffer(v1, qword_27F93D050);

  v2 = sub_258532A2C();
  v3 = sub_2585338EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    sub_258533B8C();

    strcpy(v11, "CoexSession=[");
    HIWORD(v11[1]) = -4864;
    sub_2585329BC();
    sub_2584C9548(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v6 = sub_258533DFC();
    MEMORY[0x259C81500](v6);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v7 = sub_2584713B0(v11[0], v11[1], &v10);

    *(v4 + 4) = v7;
    _os_log_impl(&dword_25845E000, v2, v3, "%s Coex session resuming", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  *v8 = v0;
  v8[1] = sub_2584C8B20;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_2584C8B20()
{

  return MEMORY[0x2822009F8](sub_2584C8C1C, 0, 0);
}

uint64_t sub_2584C8C1C()
{
  v11 = v0;

  v1 = sub_258532A2C();
  v2 = sub_2585338EC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    sub_258533B8C();

    strcpy(v10, "CoexSession=[");
    HIWORD(v10[1]) = -4864;
    sub_2585329BC();
    sub_2584C9548(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v5 = sub_258533DFC();
    MEMORY[0x259C81500](v5);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v6 = sub_2584713B0(v10[0], v10[1], &v9);

    *(v3 + 4) = v6;
    _os_log_impl(&dword_25845E000, v1, v2, "%s Coex session resumed", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x259C82900](v4, -1, -1);
    MEMORY[0x259C82900](v3, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2584C8E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = aBlock - v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_25853364C();
  }

  v15 = Strong;
  (*(v11 + 16))(v13, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v13, v10);
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2584D170C;
  aBlock[3] = a5;
  v18 = _Block_copy(aBlock);

  [v15 *a6];
  _Block_release(v18);
  return swift_unknownObjectRelease();
}

uint64_t sub_2584C8FF8()
{
  v1 = OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_uuid;
  v2 = sub_2585329BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_258471C08(v0 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_delegate);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for CoexSession(uint64_t a1)
{
  result = qword_27F930A78;
  if (!qword_27F930A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2584C9108(uint64_t a1)
{
  result = sub_2585329BC();
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

unint64_t sub_2584C91DC()
{
  result = qword_27F930A88;
  if (!qword_27F930A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930A88);
  }

  return result;
}

uint64_t sub_2584C9230()
{
  sub_258533B8C();

  strcpy(v2, "CoexSession=[");
  sub_2585329BC();
  sub_2584C9548(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v0 = sub_258533DFC();
  MEMORY[0x259C81500](v0);

  MEMORY[0x259C81500](93, 0xE100000000000000);
  return v2[0];
}

uint64_t sub_2584C9320()
{
  sub_258533EEC();
  sub_2585329BC();
  sub_2584C9548(&qword_27F92FE58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2585333BC();
  return sub_258533F2C();
}

uint64_t sub_2584C93C0(uint64_t a1)
{
  sub_2585329BC();
  sub_2584C9548(&qword_27F92FE58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_2585333BC();
}

uint64_t sub_2584C9448(uint64_t a1)
{
  sub_258533EEC();
  sub_2585329BC();
  sub_2584C9548(&qword_27F92FE58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2585333BC();
  return sub_258533F2C();
}

uint64_t sub_2584C9548(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2584C9590(uint64_t a1, uint64_t a2)
{
  v2 = sub_258533CEC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2584C979C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_258533ABC();
    type metadata accessor for CoexSession(0);
    sub_2584D1630(&qword_27F930B10, type metadata accessor for CoexSession, &unk_25853B248);
    sub_25853389C();
    result = v10;
    v3 = v11;
    v5 = v12;
    v4 = v13;
    v6 = v14;
  }

  else
  {
    v4 = 0;
    v7 = -1;
    v8 = -1 << *(result + 32);
    v3 = result + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v7 = ~(-1 << v9);
    }

    v6 = v7 & *(result + 56);
  }

  *a2 = result;
  a2[1] = v3;
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = v6;
  a2[5] = 0;
  return result;
}

void sub_2584C9888()
{
  if ((*v0 & 0x8000000000000000) != 0)
  {
    if (sub_258533AEC())
    {
      type metadata accessor for CoexSession(0);
      swift_dynamicCast();
      if (v10)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v1 = v0[3];
    v2 = v0[4];
    if (!v2)
    {
      v4 = (v0[2] + 64) >> 6;
      if (v4 <= v1 + 1)
      {
        v5 = v1 + 1;
      }

      else
      {
        v5 = (v0[2] + 64) >> 6;
      }

      v6 = v5 - 1;
      while (1)
      {
        v3 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v3 >= v4)
        {
          v8 = 0;
          v7 = 0;
          goto LABEL_15;
        }

        v2 = *(v0[1] + 8 * v3);
        ++v1;
        if (v2)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v3 = v0[3];
LABEL_14:
    v7 = (v2 - 1) & v2;
    v8 = *(*(*v0 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v2)))));

    v6 = v3;
LABEL_15:
    v0[3] = v6;
    v0[4] = v7;
    if (v8)
    {
LABEL_16:
      v9 = v0[5];
      if (!__OFADD__(v9, 1))
      {
        v0[5] = v9 + 1;
        return;
      }

      goto LABEL_21;
    }
  }
}

void sub_2584C99B8()
{
  v1 = v0;
  v2 = 0xEB0000000064657ALL;
  v3 = OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_state;
  if (*(v0 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_state))
  {
    v4 = 0x6574617669746361;
    v5 = sub_258533E2C();

    if ((v5 & 1) == 0)
    {
      if (qword_27F92F900 != -1)
      {
        swift_once();
      }

      v6 = sub_258532A4C();
      __swift_project_value_buffer(v6, qword_27F93D050);

      oslog = sub_258532A2C();
      v7 = sub_2585338CC();

      if (os_log_type_enabled(oslog, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v17 = v9;
        *v8 = 136315138;
        if (*(v1 + v3))
        {
          if (*(v1 + v3) == 1)
          {
            v2 = 0xE900000000000064;
          }

          else
          {
            v4 = 0x6164696C61766E69;
            v2 = 0xEB00000000646574;
          }
        }

        else
        {
          v4 = 0x696C616974696E69;
        }

        v15 = sub_2584713B0(v4, v2, &v17);

        *(v8 + 4) = v15;
        _os_log_impl(&dword_25845E000, oslog, v7, "Invalid state=%s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        MEMORY[0x259C82900](v9, -1, -1);
        MEMORY[0x259C82900](v8, -1, -1);
      }

      return;
    }
  }

  else
  {
  }

  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v10 = sub_258532A4C();
  __swift_project_value_buffer(v10, qword_27F93D050);
  v11 = sub_258532A2C();
  v12 = sub_2585338EC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_25845E000, v11, v12, "Activate the Coex Manager", v13, 2u);
    MEMORY[0x259C82900](v13, -1, -1);
  }

  *(v1 + v3) = 1;
  v14 = v1 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_eventStream;

  sub_2584CA9CC(v14);
}

uint64_t sub_2584C9CDC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_state;
  if (*(v0 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_state) && *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_state) != 1)
  {
  }

  else
  {
    v3 = sub_258533E2C();

    if ((v3 & 1) == 0)
    {
      if (qword_27F92F900 != -1)
      {
        swift_once();
      }

      v5 = sub_258532A4C();
      __swift_project_value_buffer(v5, qword_27F93D050);
      v6 = sub_258532A2C();
      v7 = sub_2585338EC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_25845E000, v6, v7, "Invalidating the Coex Manager", v8, 2u);
        MEMORY[0x259C82900](v8, -1, -1);
      }

      *(v1 + v2) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF0, &qword_25853B4D0);
      result = sub_2585337FC();
      if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_eventHandler))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
        sub_25853374C();
      }
    }
  }

  return result;
}

uint64_t sub_2584C9F00()
{
  if (*v0 >= 3u)
  {
    return 9;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_2584C9F18(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB00000000646574;
  v3 = *a1;
  v4 = 0x6574617669746361;
  v5 = 0xE900000000000064;
  if (v3 != 1)
  {
    v4 = 0x6164696C61766E69;
    v5 = 0xEB00000000646574;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x696C616974696E69;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEB0000000064657ALL;
  }

  v8 = 0x6574617669746361;
  if (*a2 == 1)
  {
    v2 = 0xE900000000000064;
  }

  else
  {
    v8 = 0x6164696C61766E69;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696C616974696E69;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0xEB0000000064657ALL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_258533E2C();
  }

  return v11 & 1;
}

uint64_t sub_2584CA024()
{
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_2584CA0D4(uint64_t a1)
{
  sub_2585334AC();
}

uint64_t sub_2584CA170(uint64_t a1)
{
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

unint64_t sub_2584CA21C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2584D0F08(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2584CA24C(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x6574617669746361;
  if (*v1 != 1)
  {
    v3 = 0x6164696C61766E69;
    v2 = 0xEB00000000646574;
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x696C616974696E69;
  }

  if (*v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xEB0000000064657ALL;
  }

  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_2584CA2B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930B20, &qword_25853B520);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF0, &qword_25853B4D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF8, &unk_25853B4D8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  swift_defaultActor_initialize();
  *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_eventHandler) = 0;
  if (MEMORY[0x277D84F90] >> 62 && sub_258533ACC())
  {
    v13 = sub_2584D0C7C(MEMORY[0x277D84F90]);
  }

  else
  {
    v13 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_coexSessions) = v13;
  *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_state) = 0;
  (*(v2 + 104))(v4, *MEMORY[0x277D858A0], v1);
  sub_2585337BC();
  (*(v2 + 8))(v4, v1);
  (*(v10 + 32))(v0 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_eventStream, v12, v9);
  (*(v6 + 32))(v0 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_eventStreamContinuation, v8, v5);
  return v0;
}

uint64_t sub_2584CA584()
{
  v1 = OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_eventStreamContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF0, &qword_25853B4D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_eventStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF8, &unk_25853B4D8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for CoexSessionManager(uint64_t a1)
{
  result = qword_27F930AC0;
  if (!qword_27F930AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2584CA6C8(uint64_t a1)
{
  sub_2584CA7F4(319, &qword_27F930AD0, MEMORY[0x277D858B0]);
  if (v1 <= 0x3F)
  {
    sub_2584CA7F4(319, &qword_27F930AD8, MEMORY[0x277D858D8]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2584CA7F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v7 = a3(a1, &type metadata for CoexSessionManager.Events, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2584CA88C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 24))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2584CA8E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_2584CA978()
{
  result = qword_27F930AE0;
  if (!qword_27F930AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930AE0);
  }

  return result;
}

uint64_t sub_2584CA9CC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF8, &unk_25853B4D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_25853368C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v7, a1, v3);
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v4 + 32))(v14 + v13, v7, v3);
  *(v14 + ((v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_eventHandler) = sub_258476C88(0, 0, v10, &unk_25853B4F0, v14);
}

uint64_t sub_2584CABF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AE8, &qword_25853B4C8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  v11[1] = a1 | 0x8000000000000000;
  v11[2] = a2;
  v11[3] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF0, &qword_25853B4D0);
  sub_2585337EC();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2584CAD28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AE8, &qword_25853B4C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - v4;
  v7[2] = 0;
  v7[3] = 0;
  v7[1] = a1 | 0xC000000000000000;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF0, &qword_25853B4D0);
  sub_2585337EC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2584CAE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930B00, &qword_25853B4F8);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584CAF0C, 0, 0);
}

uint64_t sub_2584CAF0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF8, &unk_25853B4D8);
  sub_2585336FC();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_2584CAFF8;
  v2 = *(v0 + 88);

  return MEMORY[0x2822005A8](v0 + 40, 0, 0, v2, v0 + 64);
}

uint64_t sub_2584CAFF8()
{

  if (v0)
  {
    v1 = sub_2584CB9D0;
  }

  else
  {
    v1 = sub_2584CB108;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2584CB108(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v1[15] = v3;
  v1[16] = v2;
  v4 = v1[7];
  v1[17] = v4;
  if ((~v3 & 0xF000000000000007) == 0)
  {
    (*(v1[12] + 8))(v1[13], v1[11]);
LABEL_9:

    v6 = v1[1];

    return v6();
  }

  if ((sub_25853376C() & 1) != 0 || (Strong = swift_weakLoadStrong(), (v1[18] = Strong) == 0))
  {
    (*(v1[12] + 8))(v1[13], v1[11]);
    sub_2584D119C(v3, v2, v4);
    goto LABEL_9;
  }

  return MEMORY[0x2822009F8](sub_2584CB22C, Strong, 0);
}

uint64_t sub_2584CB22C()
{
  v1 = v0[15];
  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 == 2)
    {
      v5 = swift_task_alloc();
      v0[21] = v5;
      *v5 = v0;
      v6 = sub_2584CB528;
    }

    else
    {
      v5 = swift_task_alloc();
      v0[23] = v5;
      *v5 = v0;
      v6 = sub_2584CB654;
    }

    v5[1] = v6;

    return sub_2584CCA5C(v1 & 0x3FFFFFFFFFFFFFFFLL);
  }

  else if (v2)
  {
    v7 = v0[16];
    sub_2584CC638(v1 & 0x3FFFFFFFFFFFFFFFLL);
    v7(1, 0);

    return MEMORY[0x2822009F8](sub_2584CB7F4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_2584CB3FC;

    return sub_2584CBA50(v1);
  }
}

uint64_t sub_2584CB3FC()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_2584CB75C;
  }

  else
  {
    v4 = sub_2584D1708;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584CB528()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_2584CB938;
  }

  else
  {
    v4 = sub_2584CB8C4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584CB654()
{

  if (v0)
  {
  }

  return MEMORY[0x2822009F8](sub_2584CB7F4, 0, 0);
}

uint64_t sub_2584CB75C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = v1;
  v2(0, v1);

  return MEMORY[0x2822009F8](sub_2584CB7F4, 0, 0);
}

uint64_t sub_2584CB7F4()
{
  v1 = v0[17];
  v3 = v0[15];
  v2 = v0[16];

  sub_2584D119C(v3, v2, v1);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_2584CAFF8;
  v5 = v0[11];

  return MEMORY[0x2822005A8](v0 + 5, 0, 0, v5, v0 + 8);
}

uint64_t sub_2584CB8C4()
{
  (*(v0 + 128))(1, 0);

  return MEMORY[0x2822009F8](sub_2584CB7F4, 0, 0);
}

uint64_t sub_2584CB938()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  v3 = v1;
  v2(0, v1);

  return MEMORY[0x2822009F8](sub_2584CB7F4, 0, 0);
}

uint64_t sub_2584CB9D0()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2584CBA50(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2584CBA70, v1, 0);
}

uint64_t sub_2584CBA70()
{
  v23 = v0;
  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  v0[7] = __swift_project_value_buffer(v1, qword_27F93D050);

  v2 = sub_258532A2C();
  v3 = sub_2585338EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136315138;
    sub_258533B8C();

    strcpy(v22, "CoexSession=[");
    HIWORD(v22[1]) = -4864;
    sub_2585329BC();
    sub_2584D1630(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v6 = sub_258533DFC();
    MEMORY[0x259C81500](v6);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v7 = sub_2584713B0(v22[0], v22[1], &v21);

    *(v4 + 4) = v7;
    _os_log_impl(&dword_25845E000, v2, v3, "%s Coex session starting ...", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  v8 = sub_2584CD468(v0[5]);
  v0[8] = v8;
  if (v8 >> 62)
  {
    result = sub_258533ACC();
    v0[9] = result;
    if (result)
    {
LABEL_11:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v0[10] = 0;
        v10 = v0[8];
        if ((v10 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x259C81BF0](0);
        }

        else
        {
          v11 = *(v10 + 32);
        }

        v0[11] = v11;
        v12 = swift_task_alloc();
        v0[12] = v12;
        *v12 = v0;
        v12[1] = sub_2584CC1E4;

        return sub_2584C8240();
      }

      return result;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[9] = result;
    if (result)
    {
      goto LABEL_11;
    }
  }

  v13 = v0[5];

  *(v13 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) = 1;
  swift_beginAccess();

  sub_2584CED10(v22, v13);
  swift_endAccess();

  v14 = sub_258532A2C();
  v15 = sub_2585338EC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    v22[0] = 0;
    *v16 = 136315138;
    v22[1] = 0xE000000000000000;
    sub_258533B8C();

    strcpy(v22, "CoexSession=[");
    HIWORD(v22[1]) = -4864;
    sub_2585329BC();
    sub_2584D1630(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v18 = sub_258533DFC();
    MEMORY[0x259C81500](v18);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v19 = sub_2584713B0(v22[0], v22[1], &v21);

    *(v16 + 4) = v19;
    _os_log_impl(&dword_25845E000, v14, v15, "%s Coex session started", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x259C82900](v17, -1, -1);
    MEMORY[0x259C82900](v16, -1, -1);
  }

  sub_2584CE3C4();
  v20 = v0[1];

  return v20();
}

uint64_t sub_2584CC1E4()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_2584CC2F4, v1, 0);
}

uint64_t sub_2584CC2F4()
{
  v18 = v0;
  v1 = v0[9];
  v2 = v0[10] + 1;
  *(v0[11] + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) = 2;

  if (v2 == v1)
  {
    v3 = v0[5];

    *(v3 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) = 1;
    swift_beginAccess();

    sub_2584CED10(v17, v3);
    swift_endAccess();

    v4 = sub_258532A2C();
    v5 = sub_2585338EC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      v17[0] = 0;
      *v6 = 136315138;
      v17[1] = 0xE000000000000000;
      sub_258533B8C();

      strcpy(v17, "CoexSession=[");
      HIWORD(v17[1]) = -4864;
      sub_2585329BC();
      sub_2584D1630(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v8 = sub_258533DFC();
      MEMORY[0x259C81500](v8);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v9 = sub_2584713B0(v17[0], v17[1], &v16);

      *(v6 + 4) = v9;
      _os_log_impl(&dword_25845E000, v4, v5, "%s Coex session started", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x259C82900](v7, -1, -1);
      MEMORY[0x259C82900](v6, -1, -1);
    }

    sub_2584CE3C4();
    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[10] + 1;
    v0[10] = v12;
    v13 = v0[8];
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x259C81BF0]();
    }

    else
    {
      v14 = *(v13 + 8 * v12 + 32);
    }

    v0[11] = v14;
    v15 = swift_task_alloc();
    v0[12] = v15;
    *v15 = v0;
    v15[1] = sub_2584CC1E4;

    return sub_2584C8240();
  }
}

uint64_t sub_2584CC638(uint64_t a1)
{
  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v2 = sub_258532A4C();
  __swift_project_value_buffer(v2, qword_27F93D050);

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    sub_258533B8C();

    strcpy(v16, "CoexSession=[");
    HIWORD(v16[1]) = -4864;
    sub_2585329BC();
    sub_2584D1630(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v7 = sub_258533DFC();
    MEMORY[0x259C81500](v7);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v8 = sub_2584713B0(v16[0], v16[1], &v17);

    *(v5 + 4) = v8;
    _os_log_impl(&dword_25845E000, v3, v4, "%s Coex session start suspended ...", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x259C82900](v6, -1, -1);
    MEMORY[0x259C82900](v5, -1, -1);
  }

  swift_beginAccess();

  sub_2584CED10(&v17, a1);
  swift_endAccess();

  *(a1 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) = 2;

  v9 = sub_258532A2C();
  v10 = sub_2585338EC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    sub_258533B8C();

    strcpy(v16, "CoexSession=[");
    HIWORD(v16[1]) = -4864;
    sub_2585329BC();
    sub_2584D1630(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = sub_258533DFC();
    MEMORY[0x259C81500](v13);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v14 = sub_2584713B0(v16[0], v16[1], &v17);

    *(v11 + 4) = v14;
    _os_log_impl(&dword_25845E000, v9, v10, "%s Coex session started", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x259C82900](v12, -1, -1);
    MEMORY[0x259C82900](v11, -1, -1);
  }

  return sub_2584CE3C4();
}

uint64_t sub_2584CCA5C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_2584CCA7C, v1, 0);
}

uint64_t sub_2584CCA7C()
{
  v28 = v0;
  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  v0[10] = __swift_project_value_buffer(v1, qword_27F93D050);

  v2 = sub_258532A2C();
  v3 = sub_2585338EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v26 = v5;
    *v4 = 136315138;
    sub_258533B8C();

    strcpy(v27, "CoexSession=[");
    HIWORD(v27[1]) = -4864;
    sub_2585329BC();
    sub_2584D1630(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v6 = sub_258533DFC();
    MEMORY[0x259C81500](v6);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v7 = sub_2584713B0(v27[0], v27[1], &v26);

    *(v4 + 4) = v7;
    _os_log_impl(&dword_25845E000, v2, v3, "%s Coex session stopping ...", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  v8 = v0[8];
  v9 = v0[9];
  v10 = OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_coexSessions;
  swift_beginAccess();
  v11 = *(v9 + v10);

  LOBYTE(v8) = sub_2584CE824(v8, v11);

  if (v8)
  {
    v12 = v0[8];
    *(v12 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) = 0;
    swift_beginAccess();
    sub_2584D06A8(v12);
    swift_endAccess();

    v13 = sub_2584D12D8();
    v0[11] = v13;

    if (v13 >> 62)
    {
      result = sub_258533ACC();
      v0[12] = result;
      if (result)
      {
LABEL_8:
        if (result < 1)
        {
          __break(1u);
        }

        else
        {
          v0[13] = 0;
          v15 = v0[11];
          if ((v15 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x259C81BF0](0);
          }

          else
          {
            v16 = *(v15 + 32);
          }

          v0[14] = v16;
          v19 = swift_task_alloc();
          v0[15] = v19;
          *v19 = v0;
          v19[1] = sub_2584CD068;

          return sub_2584C882C();
        }

        return result;
      }
    }

    else
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0[12] = result;
      if (result)
      {
        goto LABEL_8;
      }
    }

    v20 = sub_258532A2C();
    v21 = sub_2585338EC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26 = v23;
      v27[0] = 0;
      *v22 = 136315138;
      v27[1] = 0xE000000000000000;
      sub_258533B8C();

      strcpy(v27, "CoexSession=[");
      HIWORD(v27[1]) = -4864;
      sub_2585329BC();
      sub_2584D1630(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v24 = sub_258533DFC();
      MEMORY[0x259C81500](v24);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v25 = sub_2584713B0(v27[0], v27[1], &v26);

      *(v22 + 4) = v25;
      _os_log_impl(&dword_25845E000, v20, v21, "%s Coex session stopped", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x259C82900](v23, -1, -1);
      MEMORY[0x259C82900](v22, -1, -1);
    }

    sub_2584CE3C4();
    v18 = v0[1];
  }

  else
  {
    sub_2584D1284();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
    v18 = v0[1];
  }

  return v18();
}

uint64_t sub_2584CD068()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_2584CD178, v1, 0);
}

uint64_t sub_2584CD178()
{
  v17 = v0;
  v1 = v0[12];
  v2 = v0[13] + 1;
  *(v0[14] + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) = 1;

  if (v2 == v1)
  {

    v3 = sub_258532A2C();
    v4 = sub_2585338EC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v15 = v6;
      *v5 = 136315138;
      sub_258533B8C();

      strcpy(v16, "CoexSession=[");
      HIWORD(v16[1]) = -4864;
      sub_2585329BC();
      sub_2584D1630(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v7 = sub_258533DFC();
      MEMORY[0x259C81500](v7);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v8 = sub_2584713B0(v16[0], v16[1], &v15);

      *(v5 + 4) = v8;
      _os_log_impl(&dword_25845E000, v3, v4, "%s Coex session stopped", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x259C82900](v6, -1, -1);
      MEMORY[0x259C82900](v5, -1, -1);
    }

    sub_2584CE3C4();
    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[13] + 1;
    v0[13] = v11;
    v12 = v0[11];
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x259C81BF0]();
    }

    else
    {
      v13 = *(v12 + 8 * v11 + 32);
    }

    v0[14] = v13;
    v14 = swift_task_alloc();
    v0[15] = v14;
    *v14 = v0;
    v14[1] = sub_2584CD068;

    return sub_2584C882C();
  }
}

NSObject *sub_2584CD468(uint64_t a1)
{
  v136 = *MEMORY[0x277D85DE8];
  v4 = sub_2585329BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = MEMORY[0x277D84F90];
  v8 = OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_coexSessions;
  swift_beginAccess();
  v9 = *(&v1->isa + v8);

  v10 = sub_2584CE824(a1, v9);

  if (v10)
  {
    sub_2584D1284();
    swift_allocError();
    *v11 = 0;
LABEL_10:
    swift_willThrow();
    return v1;
  }

  if (*(a1 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state))
  {
    v12 = sub_258533E2C();

    if ((v12 & 1) == 0)
    {
      sub_2584D1284();
      swift_allocError();
      *v18 = 2;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v120 = v5;
  v123 = a1;
  v13 = *(&v1->isa + v8);
  v119 = v7;
  v124 = v2;
  if ((v13 & 0xC000000000000001) != 0)
  {

    sub_258533ABC();
    v1 = type metadata accessor for CoexSession(0);
    sub_2584D1630(&qword_27F930B10, type metadata accessor for CoexSession, &unk_25853B248);
    sub_25853389C();
    v13 = v131;
    v14 = v132;
    v15 = v133;
    v16 = v134;
    v17 = v135;
  }

  else
  {
    v19 = -1 << *(v13 + 32);
    v14 = v13 + 56;
    v15 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v17 = v21 & *(v13 + 56);

    v16 = 0;
  }

  v121 = v4;
  v125 = v15;
  v22 = (v15 + 64) >> 6;
  v126 = MEMORY[0x277D84F90];
  v122 = &v129;
  v127 = v13;
  while (2)
  {
    v23 = v16;
    v24 = v17;
    if (v13 < 0)
    {
LABEL_17:
      v25 = sub_258533AEC();
      if (v25)
      {
        v130[0] = v25;
        type metadata accessor for CoexSession(0);
        swift_dynamicCast();
        v26 = v128[0];
        v16 = v23;
        v17 = v24;
        if (v128[0])
        {
          goto LABEL_25;
        }
      }

LABEL_167:
      v1 = v126;
      goto LABEL_168;
    }

    while (1)
    {
      v27 = v23;
      v28 = v24;
      v16 = v23;
      if (!v24)
      {
        while (1)
        {
          v16 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v16 >= v22)
          {
            goto LABEL_167;
          }

          v28 = *(v14 + 8 * v16);
          ++v27;
          if (v28)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_175;
      }

LABEL_24:
      v17 = (v28 - 1) & v28;
      v26 = *(*(v13 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v28)))));

      if (!v26)
      {
        goto LABEL_167;
      }

LABEL_25:
      if (*(v26 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state))
      {
        break;
      }

      v1 = 0xE700000000000000;
LABEL_29:
      v29 = sub_258533E2C();

      if (v29)
      {
        goto LABEL_33;
      }

      v23 = v16;
      v24 = v17;
      v13 = v127;
      if (v127 < 0)
      {
        goto LABEL_17;
      }
    }

    if (*(v26 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) == 2)
    {
      v1 = 0xE900000000000064;
      goto LABEL_29;
    }

LABEL_33:
    v30 = OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_config;
    v31 = *(v26 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_config) + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage;
    v33 = *v31;
    v32 = *(v31 + 8);
    v35 = *(v31 + 16);
    v34 = *(v31 + 24);
    v36 = *(v31 + 32);
    v37 = *(v123 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_config);
    v39 = *(v37 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage);
    v40 = *(v37 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 8);
    v42 = *(v37 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 16);
    v41 = *(v37 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 24);
    v43 = *(v37 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 32);
    if (*(v31 + 33) == 1)
    {
      v44 = v35 | v32;
      if (v44 | v33 | v34)
      {
        v45 = 0;
      }

      else
      {
        v45 = v36 == 0;
      }

      if (v45)
      {
        if (*(v37 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 33))
        {
          if (!(v42 | v40 | v39 | v41) && v43 == 0)
          {
            goto LABEL_178;
          }
        }

        goto LABEL_162;
      }

      v46 = v44 | v34;
      if (*(v31 + 32))
      {
        v47 = 0;
      }

      else
      {
        v47 = v33 == 1;
      }

      if (v47 && v46 == 0)
      {
        if (*(v37 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 33))
        {
          v61 = v42 | v40;
          if (v61 | v39 | v41 || v43 != 0)
          {
            v63 = v61 | v41;
            v64 = !*(v37 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 32) && v39 == 1;
            if (v64 && v63 == 0)
            {
              goto LABEL_178;
            }
          }
        }

        goto LABEL_162;
      }

      if (*(v31 + 32))
      {
        v49 = 0;
      }

      else
      {
        v49 = v33 == 2;
      }

      if (v49 && v46 == 0)
      {
        if (*(v37 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 33))
        {
          v72 = v42 | v40;
          if (v72 | v39 | v41 || v43 != 0)
          {
            v74 = v72 | v41;
            v75 = !*(v37 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 32) && v39 == 1;
            v76 = v75 && v74 == 0;
            v77 = !v76 && v43 == 0;
            v78 = v77 && v39 == 2;
            if (v78 && v74 == 0)
            {
              goto LABEL_178;
            }
          }
        }

        goto LABEL_162;
      }

      if (*(v31 + 32))
      {
        v51 = 0;
      }

      else
      {
        v51 = v33 == 3;
      }

      if (v51 && v46 == 0)
      {
        if (!*(v37 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 33))
        {
          goto LABEL_162;
        }

        v80 = v42 | v40;
        if (!(v80 | v39 | v41) && v43 == 0)
        {
          goto LABEL_162;
        }

        v82 = v80 | v41;
        v83 = !*(v37 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 32) && v39 == 1;
        if (v83 && v82 == 0)
        {
          goto LABEL_162;
        }

        if (!*(v37 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 32) && v39 == 2 && v82 == 0)
        {
          goto LABEL_162;
        }

        if (*(v37 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 32) || v39 != 3 || v82)
        {
          goto LABEL_162;
        }

        goto LABEL_178;
      }

      if (*(v37 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 33))
      {
        v53 = v42 | v40;
        if (v53 | v39 | v41 || v43 != 0)
        {
          v55 = v53 | v41;
          v56 = !*(v37 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 32) && v39 == 1;
          if (!v56 || v55 != 0)
          {
            if (*(v37 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 32) || (v39 == 2 ? (v58 = v55 == 0) : (v58 = 0), !v58))
            {
              if (*(v37 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 32))
              {
                goto LABEL_178;
              }

              if (v39 != 3 || v55 != 0)
              {
                goto LABEL_178;
              }
            }
          }
        }
      }

LABEL_162:
      v38 = v37 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage;
      v13 = v127;
      if (*(v31 + 33) != 1 || *(v38 + 33))
      {

        if (qword_27F92F900 != -1)
        {
          swift_once();
        }

        v88 = sub_258532A4C();
        __swift_project_value_buffer(v88, qword_27F93D050);

        v1 = sub_258532A2C();
        v89 = sub_2585338CC();

        if (os_log_type_enabled(v1, v89))
        {
          v90 = swift_slowAlloc();
          v126 = v90;
          v124 = swift_slowAlloc();
          v130[0] = v124;
          *v90 = 136315394;
          v128[0] = 0;
          v128[1] = 0xE000000000000000;
          v122 = v1;
          sub_258533B8C();

          strcpy(v128, "CoexSession=[");
          HIWORD(v128[1]) = -4864;
          sub_2584D1630(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v91 = v121;
          v92 = sub_258533DFC();
          MEMORY[0x259C81500](v92);

          MEMORY[0x259C81500](93, 0xE100000000000000);
          v93 = sub_2584713B0(v128[0], v128[1], v130);

          v94 = v126;
          *(v126 + 4) = v93;
          *(v94 + 12) = 2080;
          v95 = v120;
          v96 = v119;
          (*(v120 + 16))(v119, v26 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_uuid, v91);
          v97 = sub_258533DFC();
          LODWORD(v123) = v89;
          v98 = v97;
          v100 = v99;
          (*(v95 + 8))(v96, v91);
          v101 = sub_2584713B0(v98, v100, v130);
          v13 = v127;

          v102 = v126;
          *(v126 + 14) = v101;
          v103 = v122;
          _os_log_impl(&dword_25845E000, v122, v123, "%s Coex session start blocked by session=%s", v102, 0x16u);
          v1 = v124;
          swift_arrayDestroy();
          MEMORY[0x259C82900](v1, -1, -1);
          MEMORY[0x259C82900](v102, -1, -1);

          goto LABEL_176;
        }

LABEL_175:

LABEL_176:
        sub_2584D1284();
        swift_allocError();
        *v104 = 3;
        swift_willThrow();

        v105 = v13;
LABEL_177:
        sub_2584D127C(v105);
        return v1;
      }

      v1 = &v129;
      MEMORY[0x259C81600](v86);
      if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2585335FC();
      }

      sub_25853361C();

      v126 = v129;
      continue;
    }

    break;
  }

  if (*(v37 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 33))
  {
    goto LABEL_162;
  }

  if (v36)
  {
    if (v43)
    {
      goto LABEL_178;
    }

    goto LABEL_162;
  }

  if (v43)
  {
    goto LABEL_162;
  }

  v66 = 0;
  v67 = v128;
  v128[0] = *v31;
  v128[1] = v32;
  v128[2] = v35;
  v128[3] = v34;
  v130[0] = v39;
  v130[1] = v40;
  v130[2] = v42;
  v130[3] = v41;
  while (1)
  {
    if (v67)
    {
      if (v67 == v122)
      {
        v68 = 0;
        v69 = 1;
        v67 = v122;
      }

      else
      {
        v69 = 0;
        isa_low = LOBYTE(v67->isa);
        v67 = (v67 + 1);
        v68 = isa_low;
      }
    }

    else
    {
      v68 = 0;
      v69 = 1;
    }

    if (v66 == 32)
    {
      break;
    }

    if (!v69)
    {
      v71 = *(v130 + v66++);
      if (v68 == v71)
      {
        continue;
      }
    }

    goto LABEL_162;
  }

  if ((v69 & 1) == 0)
  {
    goto LABEL_162;
  }

LABEL_178:

  if (*(v26 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_pid) != *(v123 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_pid) || ((v106 = (*(v26 + v30) + OBJC_IVAR___MediaContinuityCoexSessionConfig_remoteDeviceID), *v106 == *(v37 + OBJC_IVAR___MediaContinuityCoexSessionConfig_remoteDeviceID)) ? (v107 = v106[1] == *(v37 + OBJC_IVAR___MediaContinuityCoexSessionConfig_remoteDeviceID + 8)) : (v107 = 0), !v107 && (sub_258533E2C() & 1) == 0))
  {
    if (qword_27F92F900 != -1)
    {
      swift_once();
    }

    v108 = sub_258532A4C();
    __swift_project_value_buffer(v108, qword_27F93D050);

    v109 = sub_258532A2C();
    v110 = sub_2585338CC();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v130[0] = v126;
      *v111 = 136315394;
      v128[0] = 0;
      v128[1] = 0xE000000000000000;
      v124 = v109;
      sub_258533B8C();

      strcpy(v128, "CoexSession=[");
      HIWORD(v128[1]) = -4864;
      sub_2584D1630(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      LODWORD(v122) = v110;
      v112 = sub_258533DFC();
      MEMORY[0x259C81500](v112);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v113 = sub_2584713B0(v128[0], v128[1], v130);

      *(v111 + 4) = v113;
      *(v111 + 12) = 2080;
      v128[0] = 0;
      v128[1] = 0xE000000000000000;

      sub_258533B8C();

      strcpy(v128, "CoexSession=[");
      HIWORD(v128[1]) = -4864;
      v114 = sub_258533DFC();
      MEMORY[0x259C81500](v114);

      MEMORY[0x259C81500](93, 0xE100000000000000);

      v115 = sub_2584713B0(v128[0], v128[1], v130);

      *(v111 + 14) = v115;
      v116 = v124;
      _os_log_impl(&dword_25845E000, v124, v122, "%s Coex session start blocked by session=%s", v111, 0x16u);
      v117 = v126;
      swift_arrayDestroy();
      MEMORY[0x259C82900](v117, -1, -1);
      MEMORY[0x259C82900](v111, -1, -1);
    }

    else
    {
    }

    v1 = v127;
    sub_2584D1284();
    swift_allocError();
    *v118 = 3;
    swift_willThrow();

    v105 = v1;
    goto LABEL_177;
  }

  v1 = MEMORY[0x277D84F90];
  v13 = v127;
LABEL_168:
  sub_2584D127C(v13);
  return v1;
}

uint64_t sub_2584CE3C4()
{
  v1 = v0;
  if (qword_27F92F900 != -1)
  {
LABEL_22:
    swift_once();
  }

  v2 = sub_258532A4C();
  __swift_project_value_buffer(v2, qword_27F93D050);

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_coexSessions;
    swift_beginAccess();
    v7 = *(v1 + v6);
    if ((v7 & 0xC000000000000001) != 0)
    {

      v8 = sub_258533ACC();
    }

    else
    {
      v8 = *(v7 + 16);
    }

    *(v5 + 4) = v8;

    _os_log_impl(&dword_25845E000, v3, v4, "+ Session count: %ld", v5, 0xCu);
    MEMORY[0x259C82900](v5, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();

  sub_2584C979C(v9, &v28);
  sub_2584C9888();
  if (v11)
  {
    v12 = v10;
    v1 = v11;
    do
    {

      v15 = sub_258532A2C();
      v16 = sub_2585338EC();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v27 = v18;
        *v17 = 134218498;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_22;
        }

        v19 = v18;
        *(v17 + 4) = v12 + 1;
        *(v17 + 12) = 2080;

        sub_258533B8C();

        strcpy(v26, "CoexSession=[");
        HIWORD(v26[1]) = -4864;
        sub_2585329BC();
        sub_2584D1630(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v20 = sub_258533DFC();
        MEMORY[0x259C81500](v20);

        MEMORY[0x259C81500](93, 0xE100000000000000);

        v21 = sub_2584713B0(v26[0], v26[1], &v27);

        *(v17 + 14) = v21;
        *(v17 + 22) = 2080;
        if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state))
        {
          if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) == 1)
          {
            v22 = 0xE700000000000000;
            v23 = 0x64657472617473;
          }

          else
          {
            v22 = 0xE900000000000064;
            v23 = 0x65646E6570737573;
          }
        }

        else
        {
          v22 = 0xE700000000000000;
          v23 = 0x646570706F7473;
        }

        v24 = sub_2584713B0(v23, v22, &v27);

        *(v17 + 24) = v24;
        _os_log_impl(&dword_25845E000, v15, v16, "+ %ld. %s state=%s", v17, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x259C82900](v19, -1, -1);
        MEMORY[0x259C82900](v17, -1, -1);
      }

      else
      {
      }

      sub_2584C9888();
      v12 = v13;
      v1 = v14;
    }

    while (v14);
  }

  return sub_2584D127C(v28);
}

uint64_t sub_2584CE824(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_258533AFC();
  }

  else if (*(a2 + 16) && (sub_258533EEC(), sub_2585329BC(), sub_2584D1630(&qword_27F92FE58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), sub_2585333BC(), v4 = sub_258533F2C(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    do
    {

      v3 = sub_25853296C();

      if (v3)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_2584CE9A4(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  do
  {
    if (a3)
    {
      if (a3 == a4)
      {
        v4 = 0;
        v5 = 1;
        a3 = a4;
        if (!a1)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v5 = 0;
        v8 = *a3++;
        v4 = v8;
        if (!a1)
        {
LABEL_10:
          v6 = 0;
          v7 = 1;
          if (v5)
          {
            return v7;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
      v4 = 0;
      v5 = 1;
      if (!a1)
      {
        goto LABEL_10;
      }
    }

    if (a1 == a2)
    {
      v6 = 0;
      v7 = 1;
      a1 = a2;
      if (v5)
      {
        return v7;
      }
    }

    else
    {
      v7 = 0;
      v9 = *a1++;
      v6 = v9;
      if (v5)
      {
        return v7;
      }
    }

LABEL_13:
    if (v4 != v6)
    {
      LODWORD(v7) = 1;
    }
  }

  while (v7 != 1);
  return 0;
}

uint64_t sub_2584CEA30(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_258532D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2584D1630(&qword_27F930B28, MEMORY[0x277CD8CF0], MEMORY[0x277CD8CF8]);
  v33 = a2;
  v11 = sub_2585333AC();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_2584D1630(&qword_27F930B30, MEMORY[0x277CD8CF0], MEMORY[0x277CD8D00]);
      v21 = sub_25853340C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_2584CF8FC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2584CED10(void *a1, uint64_t a2)
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

    v8 = sub_258533ADC();

    if (v8)
    {

      type metadata accessor for CoexSession(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
    }

    else
    {
      result = sub_258533ACC();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_2584CEFA8(v7, result + 1);
        v18 = *(v17 + 16);
        if (*(v17 + 24) <= v18)
        {
          sub_2584CF55C(v18 + 1);
        }

        sub_2584CF804(v19, v17);

        *v3 = v17;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    sub_258533EEC();
    sub_2585329BC();
    sub_2584D1630(&qword_27F92FE58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_2585333BC();
    v10 = sub_258533F2C();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      while (1)
      {

        v14 = sub_25853296C();

        if (v14)
        {
          break;
        }

        v12 = (v12 + 1) & v13;
        if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v12);

      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v2;

      sub_2584CFBA0(v16, v12, isUniquelyReferenced_nonNull_native);
      *v2 = v22;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2584CEFA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930B08, &qword_25853B518);
    v2 = sub_258533B5C();
    v15 = v2;
    sub_258533ABC();
    if (sub_258533AEC())
    {
      type metadata accessor for CoexSession(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_2584CF55C(v9 + 1);
        }

        v2 = v15;
        sub_258533EEC();
        sub_2585329BC();
        sub_2584D1630(&qword_27F92FE58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        sub_2585333BC();
        result = sub_258533F2C();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_258533AEC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2584CF200(uint64_t a1)
{
  v2 = v1;
  v36 = sub_258532D8C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930B38, &qword_25853B528);
  result = sub_258533B4C();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_2584D1630(&qword_27F930B28, MEMORY[0x277CD8CF0], MEMORY[0x277CD8CF8]);
      result = sub_2585333AC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_2584CF55C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930B08, &qword_25853B518);
  result = sub_258533B4C();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_258533EEC();
      sub_2585329BC();
      sub_2584D1630(&qword_27F92FE58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_2585333BC();
      result = sub_258533F2C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2584CF804(uint64_t a1, uint64_t a2)
{
  sub_258533EEC();
  sub_2585329BC();
  sub_2584D1630(&qword_27F92FE58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2585333BC();
  sub_258533F2C();
  result = sub_258533AAC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2584CF8FC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_258532D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2584CF200(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2584CFD7C();
      goto LABEL_12;
    }

    sub_2584D0104(v10 + 1);
  }

  v12 = *v3;
  sub_2584D1630(&qword_27F930B28, MEMORY[0x277CD8CF0], MEMORY[0x277CD8CF8]);
  v13 = sub_2585333AC();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_2584D1630(&qword_27F930B30, MEMORY[0x277CD8CF0], MEMORY[0x277CD8D00]);
      v21 = sub_25853340C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_258533E4C();
  __break(1u);
  return result;
}

uint64_t sub_2584CFBA0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2584CF55C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_2584CFFB4();
      goto LABEL_12;
    }

    sub_2584D0420(v7 + 1);
  }

  v9 = *v3;
  sub_258533EEC();
  sub_2585329BC();
  sub_2584D1630(&qword_27F92FE58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2585333BC();
  result = sub_258533F2C();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for CoexSession(0);
    do
    {

      v12 = sub_25853296C();

      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v6;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_258533E4C();
  __break(1u);
  return result;
}

void *sub_2584CFD7C()
{
  v1 = v0;
  v2 = sub_258532D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930B38, &qword_25853B528);
  v6 = *v0;
  v7 = sub_258533B3C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_2584CFFB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930B08, &qword_25853B518);
  v2 = *v0;
  v3 = sub_258533B3C();
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

uint64_t sub_2584D0104(uint64_t a1)
{
  v2 = v1;
  v33 = sub_258532D8C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930B38, &qword_25853B528);
  v7 = sub_258533B4C();
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
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_2584D1630(&qword_27F930B28, MEMORY[0x277CD8CF0], MEMORY[0x277CD8CF8]);
      result = sub_2585333AC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_2584D0420(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930B08, &qword_25853B518);
  result = sub_258533B4C();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_258533EEC();
      sub_2585329BC();
      sub_2584D1630(&qword_27F92FE58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

      sub_2585333BC();
      result = sub_258533F2C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2584D06A8(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_258533AFC();

    if (v5)
    {
      v6 = sub_2584D089C(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_258533EEC();
  sub_2585329BC();
  sub_2584D1630(&qword_27F92FE58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2585333BC();
  v8 = sub_258533F2C();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (1)
  {

    v12 = sub_25853296C();

    if (v12)
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  v16 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2584CFFB4();
    v14 = v16;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_2584D0A60(v10);
  result = v15;
  *v1 = v16;
  return result;
}

uint64_t sub_2584D089C(uint64_t a1, uint64_t a2)
{

  v3 = sub_258533ACC();
  v4 = swift_unknownObjectRetain();
  v5 = sub_2584CEFA8(v4, v3);
  v13 = v5;
  sub_258533EEC();
  sub_2585329BC();
  sub_2584D1630(&qword_27F92FE58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  sub_2585333BC();
  v6 = sub_258533F2C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {

      v10 = sub_25853296C();

      if (v10)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v5 + 48) + 8 * v8);
  sub_2584D0A60(v8);
  result = sub_25853296C();
  if (result)
  {
    *v2 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2584D0A60(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_258533A9C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_258533EEC();
        sub_2585329BC();
        sub_2584D1630(&qword_27F92FE58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

        sub_2585333BC();
        v10 = sub_258533F2C();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2584D0C7C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_258533ACC();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930B08, &qword_25853B518);
      result = sub_258533B6C();
      v3 = result;
      v19 = v1;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_258533ACC();
      v4 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v19 = v1;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v3;
  }

LABEL_9:
  v5 = 0;
  v6 = v3 + 56;
  v18 = v4;
  while ((v19 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x259C81BF0](v5, v19);
    v7 = result;
    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      goto LABEL_25;
    }

LABEL_17:
    sub_258533EEC();
    sub_2585329BC();
    sub_2584D1630(&qword_27F92FE58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_2585333BC();
    result = sub_258533F2C();
    v9 = -1 << *(v3 + 32);
    v10 = result & ~v9;
    v11 = v10 >> 6;
    v12 = *(v6 + 8 * (v10 >> 6));
    v13 = 1 << v10;
    if (((1 << v10) & v12) != 0)
    {
      v14 = ~v9;
      while (1)
      {

        v15 = sub_25853296C();

        if (v15)
        {
          break;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *(v6 + 8 * (v10 >> 6));
        v13 = 1 << v10;
        if (((1 << v10) & v12) == 0)
        {
          v4 = v18;
          goto LABEL_22;
        }
      }

      v4 = v18;
      if (v5 == v18)
      {
        return v3;
      }
    }

    else
    {
LABEL_22:
      *(v6 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v7;
      v16 = *(v3 + 16);
      v8 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v8)
      {
        goto LABEL_26;
      }

      *(v3 + 16) = v17;
      if (v5 == v4)
      {
        return v3;
      }
    }
  }

  if (v5 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v7 = *(v19 + 32 + 8 * v5);

  v8 = __OFADD__(v5++, 1);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_2584D0F08(uint64_t a1, uint64_t a2)
{
  v2 = sub_258533CEC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2584D0F54()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2584D0F8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF8, &unk_25853B4D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2584D1070(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF8, &unk_25853B4D8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258464F5C;

  return sub_2584CAE40(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_2584D119C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_2584D11B0(result, a2, a3);
  }

  return result;
}

uint64_t sub_2584D11B0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 >> 62) <= 2)
  {
  }
}

uint64_t sub_2584D1214(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FBC0, &qword_258537930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2584D1284()
{
  result = qword_27F930B18;
  if (!qword_27F930B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930B18);
  }

  return result;
}

void *sub_2584D12D8()
{
  v21 = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_coexSessions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_258533ABC();
    type metadata accessor for CoexSession(0);
    sub_2584D1630(&qword_27F930B10, type metadata accessor for CoexSession, &unk_25853B248);
    result = sub_25853389C();
    v2 = v22;
    v4 = v23;
    v5 = v24;
    v6 = v25;
    v7 = v26;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
  }

  v11 = MEMORY[0x277D84F90];
  v19 = v2;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v2 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (v16)
    {
      while (!*(v16 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) || *(v16 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) == 2)
      {
        v17 = sub_258533E2C();

        if (v17)
        {

          v11 = MEMORY[0x277D84F90];
          v2 = v19;
          goto LABEL_23;
        }

        MEMORY[0x259C81600](v18);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2585335FC();
        }

        sub_25853361C();

        v11 = v21;
        v6 = v14;
        v7 = v15;
        v2 = v19;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_258533AEC())
        {
          type metadata accessor for CoexSession(0);
          swift_dynamicCast();
          v16 = v20;
          v14 = v6;
          v15 = v7;
          if (v20)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

      v11 = MEMORY[0x277D84F90];
    }

LABEL_23:
    sub_2584D127C(v2);
    return v11;
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= ((v5 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v13 = *(v4 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2584D1630(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2584D1688(uint64_t a1)
{
  result = sub_2584D1284();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584D16B4()
{
  result = qword_27F930B40;
  if (!qword_27F930B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930B40);
  }

  return result;
}

uint64_t sub_2584D170C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_2584D1794(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CoexSessionXPCServerProxy();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2584D18B8(char *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = *&a1[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_delegate];
  v16[4] = a5;
  v16[5] = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_2584D170C;
  v16[3] = a6;
  v14 = _Block_copy(v16);
  v15 = a1;

  [v13 *a7];

  _Block_release(v14);
}

uint64_t sub_2584D19BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v22 = a3;
  v23 = a4;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AE8, &qword_25853B4C8);
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v22 - v9;
  v11 = sub_2585329BC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_daemonTransaction], *&v4[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_daemonTransaction + 24]);
  sub_2584D672C();
  (*(v12 + 16))(v14, a1, v11);
  v15 = *&v4[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_processIdentifier];
  type metadata accessor for CoexSession(0);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v16 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) = 0;
  (*(v12 + 32))(v16 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_uuid, v14, v11);
  *(v16 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_config) = a2;
  swift_unknownObjectWeakAssign();
  *(v16 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_pid) = v15;
  *&v5[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexSession] = v16;
  v17 = a2;

  __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexManager], *&v5[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexManager + 24]);
  v18 = swift_allocObject();
  v19 = v23;
  v18[2] = v22;
  v18[3] = v19;
  v18[4] = v5;
  v25 = v16;
  v26 = sub_2584D26CC;
  v27 = v18;

  v20 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF0, &qword_25853B4D0);
  sub_2585337EC();

  return (*(v8 + 8))(v10, v24);
}

void sub_2584D1D08(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2585328AC();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_2584D1D78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v22 = a3;
  v23 = a4;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AE8, &qword_25853B4C8);
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v22 - v9;
  v11 = sub_2585329BC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_daemonTransaction], *&v4[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_daemonTransaction + 24]);
  sub_2584D672C();
  (*(v12 + 16))(v14, a1, v11);
  v15 = *&v4[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_processIdentifier];
  type metadata accessor for CoexSession(0);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v16 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) = 0;
  (*(v12 + 32))(v16 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_uuid, v14, v11);
  *(v16 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_config) = a2;
  swift_unknownObjectWeakAssign();
  *(v16 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_pid) = v15;
  *&v5[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexSession] = v16;
  v17 = a2;

  __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexManager], *&v5[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexManager + 24]);
  v18 = swift_allocObject();
  v19 = v23;
  v18[2] = v22;
  v18[3] = v19;
  v18[4] = v5;
  v25 = v16 | 0x4000000000000000;
  v26 = sub_2584D25A4;
  v27 = v18;

  v20 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF0, &qword_25853B4D0);
  sub_2585337EC();

  return (*(v8 + 8))(v10, v24);
}

uint64_t sub_2584D20C8(void *a1, uint64_t a2, uint64_t a3, void *a4, const void *a5, uint64_t a6, uint64_t a7, void (*a8)(char *, id, uint64_t, uint64_t))
{
  v13 = sub_2585329BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a5);
  sub_25853297C();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = a4;
  v20 = a1;
  a8(v16, v19, a7, v18);

  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_2584D228C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = a1;
  result = a3(a1, a2);
  if ((v6 & 1) == 0)
  {
    *(*__swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_daemonTransaction), *(a5 + OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_daemonTransaction + 24)) + 16) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2584D2308(char *a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *&a1[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexSession];
  if (v5)
  {
    *&a1[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexSession] = 0;
    __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexManager], *&a1[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexManager + 24]);
    v6 = swift_allocObject();
    v6[2] = sub_2584D24E4;
    v6[3] = v4;
    v6[4] = a1;
    v7 = off_28698ED90[0];
    _Block_copy(a2);
    type metadata accessor for CoexSessionManager(0);

    v8 = a1;
    v7(v5, sub_2584D2540, v6);
  }

  else
  {
    sub_2584D24EC();
    v9 = swift_allocError();
    _Block_copy(a2);
    v10 = sub_2585328AC();
    (a2)[2](a2, 0, v10);
  }
}

uint64_t sub_2584D24AC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_2584D24EC()
{
  result = qword_27F930B70;
  if (!qword_27F930B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930B70);
  }

  return result;
}

uint64_t sub_2584D2540()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();
  *(*__swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_daemonTransaction), *(v1 + OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_daemonTransaction + 24)) + 16) = 0;

  return swift_unknownObjectRelease();
}

uint64_t objectdestroy_7Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2584D2628(uint64_t a1)
{
  result = sub_2584D24EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584D2654()
{
  result = qword_27F930B78;
  if (!qword_27F930B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930B78);
  }

  return result;
}

uint64_t sub_2584D26F8()
{
  sub_258467E20(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

id sub_2584D275C()
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (*(v0 + 24) == 1)
  {
    v1 = *(v0 + 16);
    v2 = sub_25853291C();
    v7[0] = 0;
    v3 = [v1 setAnswer:v2 withError:v7];

    if (v3)
    {
      return v7[0];
    }

    v6 = v7[0];
    sub_2585328BC();
  }

  else
  {
    sub_2584D29F0();
    swift_allocError();
    *v5 = 1;
  }

  return swift_willThrow();
}

id sub_2584D2858()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v8[0] = 0;
  v2 = [v1 generateMediaStreamInitOptionsWithError_];
  v3 = v8[0];
  if (v2)
  {
    v4 = v2;
    v5 = sub_25853337C();
    v6 = v3;
  }

  else
  {
    v5 = v8[0];
    sub_2585328BC();

    swift_willThrow();
  }

  return v5;
}

id sub_2584D2938()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v6[0] = 0;
  v2 = [v1 generateMediaStreamConfigurationWithError_];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_2585328BC();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_2584D29F0()
{
  result = qword_27F930B80;
  if (!qword_27F930B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930B80);
  }

  return result;
}

unint64_t sub_2584D2A54(uint64_t a1)
{
  result = sub_2584D29F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584D2A80()
{
  result = qword_27F930B88;
  if (!qword_27F930B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930B88);
  }

  return result;
}

void sub_2584D2AD4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    v6 = sub_2584F4738(a2);
  }

  else
  {
    v6 = 0;
  }

  v7 = type metadata accessor for AVConferenceBackedMediaStreamNegotiator();
  v8 = swift_allocObject();
  *(v8 + 24) = 1;
  v9 = objc_allocWithZone(MEMORY[0x277CE5708]);
  v10 = sub_2584D2CF4(a1, v6);
  if (v3)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v8 + 16) = v10;
    v11 = [v10 offer];
    v12 = sub_25853292C();
    v14 = v13;

    *(v8 + 32) = v12;
    *(v8 + 40) = v14;
    a3[3] = v7;
    a3[4] = &off_28698F0E0;
    *a3 = v8;
  }
}

id sub_2584D2BD8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a3)
  {
    v8 = sub_2584F4738(a3);
  }

  else
  {
    v8 = 0;
  }

  v9 = type metadata accessor for AVConferenceBackedMediaStreamNegotiator();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  objc_allocWithZone(MEMORY[0x277CE5708]);
  sub_2584A7B8C(a1, a2);
  result = sub_2584D2E00(a1, a2, v8);
  if (v4)
  {
    sub_258467E20(a1, a2);
    return swift_deallocPartialClassInstance();
  }

  else
  {
    *(v10 + 16) = result;
    a4[3] = v9;
    a4[4] = &off_28698F0E0;
    *a4 = v10;
  }

  return result;
}

id sub_2584D2CF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v10[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = sub_25853336C();
  }

  else
  {
    v5 = 0;
  }

  v10[0] = 0;
  v6 = [v3 initWithMode:a1 options:v5 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_2585328BC();

    swift_willThrow();
  }

  return v6;
}

id sub_2584D2E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_25853291C();
  if (a3)
  {
    v6 = sub_25853336C();
  }

  else
  {
    v6 = 0;
  }

  v11[0] = 0;
  v7 = [v3 initWithOffer:v5 options:v6 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_2585328BC();

    swift_willThrow();
  }

  return v7;
}

char *sub_2584D2F4C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(v3) init];
  v7 = objc_allocWithZone(MEMORY[0x277CE5730]);
  v8 = v6;
  v9 = [v7 initWithStreamToken:a1 delegate:v8];
  v10 = *&v8[OBJC_IVAR____TtC18MediaContinuityKit35AVConferenceBackedRemoteVideoClient_remoteVideoClient];
  *&v8[OBJC_IVAR____TtC18MediaContinuityKit35AVConferenceBackedRemoteVideoClient_remoteVideoClient] = v9;
  v11 = v9;

  if (v11)
  {
    [v11 setVideoLayer:a2 forMode:0];
  }

  else
  {
    sub_2584D3A58();
    swift_allocError();
    *v12 = 2;
    swift_willThrow();
  }

  return v8;
}

id sub_2584D3058()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C58, &unk_25853B9A0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C40, &qword_25853B990);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C60, &unk_25853EB20);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  *&v0[OBJC_IVAR____TtC18MediaContinuityKit35AVConferenceBackedRemoteVideoClient_remoteVideoClient] = 0;
  v0[OBJC_IVAR____TtC18MediaContinuityKit35AVConferenceBackedRemoteVideoClient_isValid] = 1;
  (*(v2 + 104))(v4, *MEMORY[0x277D858A0], v1);
  sub_2585337BC();
  (*(v2 + 8))(v4, v1);
  (*(v10 + 32))(&v0[OBJC_IVAR____TtC18MediaContinuityKit35AVConferenceBackedRemoteVideoClient_eventStream], v12, v9);
  (*(v6 + 32))(&v0[OBJC_IVAR____TtC18MediaContinuityKit35AVConferenceBackedRemoteVideoClient_eventStreamContinuation], v8, v5);
  v13 = type metadata accessor for AVConferenceBackedRemoteVideoClient(0);
  v15.receiver = v0;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, sel_init);
}

id sub_2584D331C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVConferenceBackedRemoteVideoClient(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AVConferenceBackedRemoteVideoClient(uint64_t a1)
{
  result = qword_27F930BB8;
  if (!qword_27F930BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2584D347C(uint64_t a1)
{
  sub_2584D3590(319, &unk_27F930BC8, MEMORY[0x277D858D8]);
  if (v1 <= 0x3F)
  {
    sub_2584D3590(319, &qword_27F930BD8, MEMORY[0x277D858B0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2584D3590(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v7 = a3(a1, &type metadata for RemoteVideoClientEvent, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2584D360C()
{
  *(*v0 + OBJC_IVAR____TtC18MediaContinuityKit35AVConferenceBackedRemoteVideoClient_isValid) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C40, &qword_25853B990);
  return sub_2585337FC();
}

uint64_t sub_2584D3680(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C50, &qword_25853B998);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v12 = a4;
  v13 = 2;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C40, &qword_25853B990);
  sub_2585337EC();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2584D3838(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C50, &qword_25853B998);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  v15 = a4;
  v16 = a5;
  v12 = a4;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C40, &qword_25853B990);
  sub_2585337EC();

  return (*(v9 + 8))(v11, v8);
}

char *sub_2584D396C(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = objc_allocWithZone(MEMORY[0x277CE5730]);
  v7 = v5;
  v8 = [v6 initWithStreamToken:a1 endpointID:a2 delegate:v7];
  v9 = *&v7[OBJC_IVAR____TtC18MediaContinuityKit35AVConferenceBackedRemoteVideoClient_remoteVideoClient];
  *&v7[OBJC_IVAR____TtC18MediaContinuityKit35AVConferenceBackedRemoteVideoClient_remoteVideoClient] = v8;
  v10 = v8;

  if (v10)
  {
  }

  else
  {
    sub_2584D3A58();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();
  }

  return v7;
}

unint64_t sub_2584D3A58()
{
  result = qword_27F930C48;
  if (!qword_27F930C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930C48);
  }

  return result;
}

unint64_t sub_2584D3ABC(uint64_t a1)
{
  result = sub_2584D3A58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584D3AE8()
{
  result = qword_27F930C68;
  if (!qword_27F930C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930C68);
  }

  return result;
}

char *sub_2584D3B60(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *&v1[OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedStreamInput_streamInput] = 0;
  v1[OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedStreamInput_isStarted] = 0;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for AVConferenceBackedStreamInput();
  v3 = objc_msgSendSuper2(&v18, sel_init);
  v4 = qword_27F92F8E0;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_258532A4C();
  __swift_project_value_buffer(v6, qword_27F93CFF0);
  v7 = sub_258532A2C();
  v8 = sub_2585338EC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v5;
    *v10 = v5;
    v11 = v5;
    _os_log_impl(&dword_25845E000, v7, v8, "%@ Initializing stream input", v9, 0xCu);
    sub_2584D1214(v10);
    MEMORY[0x259C82900](v10, -1, -1);
    MEMORY[0x259C82900](v9, -1, -1);
  }

  v17 = 0;
  v12 = [objc_allocWithZone(MEMORY[0x277CE5748]) initWithDelegate:v5 delegateQueue:0 format:a1 options:0 error:&v17];
  v13 = v17;
  if (v12)
  {

    v14 = *&v5[OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedStreamInput_streamInput];
    *&v5[OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedStreamInput_streamInput] = v12;
  }

  else
  {
    v15 = v13;
    sub_2585328BC();

    swift_willThrow();
  }

  return v5;
}

id sub_2584D3D88()
{
  if (qword_27F92F8E0 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  __swift_project_value_buffer(v1, qword_27F93CFF0);
  v2 = v0;
  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_25845E000, v3, v4, "%@ Deinitializing stream input", v5, 0xCu);
    sub_2584D1214(v6);
    MEMORY[0x259C82900](v6, -1, -1);
    MEMORY[0x259C82900](v5, -1, -1);
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for AVConferenceBackedStreamInput();
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

void sub_2584D3F60(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedStreamInput_isStarted) == 1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedStreamInput_streamInput);
    if (v2)
    {
      v7[0] = 0;
      v4 = v2;
      if ([v4 pushSampleBuffer:a1 error:v7])
      {
        v5 = v7[0];
      }

      else
      {
        v6 = v7[0];
        sub_2585328BC();

        swift_willThrow();
      }
    }

    else
    {
      sub_2584D421C();
      swift_allocError();
      swift_willThrow();
    }
  }
}

void sub_2584D4098()
{
  if (qword_27F92F8E0 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  __swift_project_value_buffer(v1, qword_27F93CFF0);
  v2 = v0;
  oslog = sub_258532A2C();
  v3 = sub_2585338CC();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    *(v4 + 4) = v2;
    *v5 = v2;
    v6 = v2;
    _os_log_impl(&dword_25845E000, oslog, v3, "%@ serverDidDie", v4, 0xCu);
    sub_2584D1214(v5);
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }
}

unint64_t sub_2584D421C()
{
  result = qword_27F930CE8;
  if (!qword_27F930CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930CE8);
  }

  return result;
}

unint64_t sub_2584D4280(uint64_t a1)
{
  result = sub_2584D421C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584D42AC()
{
  result = qword_27F930CF8;
  if (!qword_27F930CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930CF8);
  }

  return result;
}

id *sub_2584D4300(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v76 = a2;
  v77 = a1;
  v90 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v60 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930D90, &unk_25853BCF0);
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v7 = &v60 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930980, &unk_25853ACF0);
  v74 = *(v8 - 8);
  v75 = v8;
  MEMORY[0x28223BE20](v8);
  v71 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v60 - v12;
  swift_defaultActor_initialize();
  v14 = *(v11 + 56);
  v78 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStream;
  v68 = v14;
  v69 = v10;
  v14(&v3[OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStream], 1, 1, v10);
  v66 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventMonitorTask;
  *&v3[OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventMonitorTask] = 0;
  v15 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStream;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60);
  v17 = *(*(v16 - 8) + 56);
  v67 = v15;
  v17(&v3[v15], 1, 1, v16);
  v18 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStreamContinuation;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9308E0, &qword_25853AC68);
  v20 = *(*(v19 - 8) + 56);
  v65 = v18;
  v20(&v3[v18], 1, 1, v19);
  v21 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_transitionContinuation;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v23 = *(*(v22 - 8) + 56);
  v64 = v21;
  v23(&v3[v21], 1, 1, v22);
  v63 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_stopTransitionContinuation;
  v23(&v3[OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_stopTransitionContinuation], 1, 1, v22);
  v24 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_logger;
  if (qword_27F92F8E0 != -1)
  {
    swift_once();
  }

  v25 = sub_258532A4C();
  v26 = __swift_project_value_buffer(v25, qword_27F93CFF0);
  v62 = *(v25 - 8);
  v27 = *(v62 + 16);
  v61 = v25;
  v27(&v3[v24], v26, v25);
  *&v3[OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_cachedStreamDirection] = 0;
  v28 = v70;
  v29 = v72;
  (*(v70 + 104))(v7, *MEMORY[0x277D858A0], v72);
  v30 = v71;
  sub_2585337BC();
  (*(v28 + 8))(v7, v29);
  v31 = v73;
  v32 = v13;
  v33 = v69;
  (*(v11 + 32))(v73, v32, v69);
  v68(v31, 0, 1, v33);
  v34 = v78;
  swift_beginAccess();
  sub_2584BBC80(v31, &v3[v34]);
  swift_endAccess();
  v35 = v24;
  v36 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStreamContinuation;
  v38 = v74;
  v37 = v75;
  (*(v74 + 32))(&v3[OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStreamContinuation], v30, v75);
  v39 = v77;
  v81 = sub_25853299C();
  v82 = v40;
  v83 = v41;
  v84 = v42;
  v85 = v43;
  v86 = v44;
  v87 = v45;
  v88 = v46;
  v89 = v47;
  v48 = objc_allocWithZone(MEMORY[0x277CE5758]);
  v49 = sub_25853336C();

  v80 = 0;
  v50 = [v48 initWithNWConnectionClientID:&v81 options:v49 error:&v80];

  v51 = v80;
  if (v50)
  {
    *(v3 + 14) = v50;
    v52 = v51;
    v53 = [v50 streamToken];
    *&v3[OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_streamToken] = v53;
    v54 = type metadata accessor for AVConferenceBackedVideoStream(0);
    v79.receiver = v3;
    v79.super_class = v54;
    v55 = objc_msgSendSuper2(&v79, sel_init);
    [*(v55 + 112) setDelegate_];
    v56 = sub_2585329BC();
    (*(*(v56 - 8) + 8))(v39, v56);
  }

  else
  {
    v57 = v80;
    sub_2585328BC();

    swift_willThrow();
    v58 = sub_2585329BC();
    (*(*(v58 - 8) + 8))(v39, v58);
    sub_258465168(&v3[v78], &unk_27F930970, &unk_25853ACE0);
    (*(v38 + 8))(&v3[v36], v37);

    sub_258465168(&v3[v67], &unk_27F930DA0, &unk_25853BD00);
    sub_258465168(&v3[v65], &unk_27F930990, &unk_25853AD00);
    sub_258465168(&v3[v64], &unk_27F930DB0, &qword_258536390);
    sub_258465168(&v3[v63], &unk_27F930DB0, &qword_258536390);
    (*(v62 + 8))(&v3[v35], v61);
    v55 = type metadata accessor for AVConferenceBackedVideoStream(0);
    swift_defaultActor_destroy();
    swift_deallocPartialClassInstance();
  }

  return v55;
}

uint64_t sub_2584D4BC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930980, &unk_25853ACF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - v4;
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventMonitorTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();
  }

  v6 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStreamContinuation;
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStreamContinuation, v2);
  v11[1] = 0;
  sub_2585337FC();
  v7 = *(v3 + 8);
  v7(v5, v2);

  sub_258465168(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStream, &unk_27F930970, &unk_25853ACE0);
  v7((v1 + v6), v2);

  sub_258465168(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStream, &unk_27F930DA0, &unk_25853BD00);
  sub_258465168(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStreamContinuation, &unk_27F930990, &unk_25853AD00);
  sub_258465168(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_transitionContinuation, &unk_27F930DB0, &qword_258536390);
  sub_258465168(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_stopTransitionContinuation, &unk_27F930DB0, &qword_258536390);
  v8 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_logger;
  v9 = sub_258532A4C();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_2584D4E38()
{
  sub_2584D4BC4();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AVConferenceBackedVideoStream(uint64_t a1)
{
  result = qword_27F930D08;
  if (!qword_27F930D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2584D4EEC(uint64_t a1)
{
  sub_2584A7894(319, &qword_27F9308A8, &qword_27F9308B0, &unk_25853AC38);
  if (v1 <= 0x3F)
  {
    sub_2584BB8BC(319);
    if (v2 <= 0x3F)
    {
      sub_2584A7894(319, &qword_27F9308C8, &qword_27F9308D0, &qword_25853AC60);
      if (v3 <= 0x3F)
      {
        sub_2584A7894(319, &qword_27F9308D8, &unk_27F9308E0, &qword_25853AC68);
        if (v4 <= 0x3F)
        {
          sub_2584A7894(319, &qword_27F92FE88, &qword_27F9308F0, &qword_25853AC70);
          if (v5 <= 0x3F)
          {
            sub_258532A4C();
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_2584D5150(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v7 = a3;

  v8 = a5;
  sub_2584D5450(v6, a5);
}

uint64_t sub_2584D526C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9309A0, &unk_25853AD10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  v10[1] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930980, &unk_25853ACF0);
  sub_2585337EC();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2584D5384(uint64_t a1)
{
  result = sub_2584D540C(&qword_27F9309D0, &unk_25853BCC0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2584D53C8(uint64_t a1)
{
  result = sub_2584D540C(&unk_27F930D80, &unk_25853BC88);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2584D540C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AVConferenceBackedVideoStream(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2584D5450(char a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930980, &unk_25853ACF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9309A0, &unk_25853AD10);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - v11;
  result = (*(v6 + 16))(v8, v2 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStreamContinuation, v5);
  if (a1)
  {
    a2 = 3;
LABEL_5:
    v15[1] = a2;
    sub_2585337EC();
    (*(v6 + 8))(v8, v5);
    return (*(v10 + 8))(v12, v9);
  }

  if (a2)
  {
    v14 = a2;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double sub_2584D5658@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v111 = a3;
  v112 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930DD8, &unk_25853CEC0);
  MEMORY[0x28223BE20](v8 - 8);
  v104 = &v94 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930DE0, &unk_25853BD80);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v101 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v106 = &v94 - v13;
  v109 = sub_258532AAC();
  v108 = *(v109 - 8);
  v14 = MEMORY[0x28223BE20](v109);
  v100 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v103 = &v94 - v17;
  MEMORY[0x28223BE20](v16);
  v105 = &v94 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930620, &unk_25853E7D0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v94 - v20;
  v22 = sub_258532D8C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for NetworkBackedNetworkInterface(0);
  v107 = *(v102 - 8);
  v26 = MEMORY[0x28223BE20](v102);
  v28 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v110 = (&v94 - v29);
  v116 = 1;
  sub_2584A7B8C(a1, a2);
  v113 = a2;
  v30 = sub_2584B80A0(a1, a2);
  if (!v31)
  {
    goto LABEL_15;
  }

  sub_2584BA8B8(v30, v31);
  v33 = v32;

  if (!v33)
  {
    goto LABEL_15;
  }

  sub_258532D9C();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_258465168(v21, &qword_27F930620, &unk_25853E7D0);
  }

  else
  {
    v34 = *(v23 + 32);
    v34(v25, v21, v22);
    v34(v28, v25, v22);
    v35 = v110;
    sub_258465104(v28, v110);
    v36 = v113;
    sub_2584A7B8C(a1, v113);
    v37 = v106;
    sub_25852E2E0(a1, v36, v106);
    v38 = v108;
    v39 = *(v108 + 48);
    v40 = v109;
    if (v39(v37, 1, v109) != 1)
    {
      v41 = *(v38 + 32);
      v42 = v105;
      v106 = v38 + 32;
      v99 = v41;
      v41(v105, v37, v40);
      v43 = v103;
      v98 = *(v38 + 16);
      v98(v103, v42, v40);
      v44 = v35;
      v45 = v104;
      sub_2584D62FC(v44, v104);
      v46 = *(v107 + 56);
      v107 += 56;
      v97 = v46;
      v46(v45, 0, 1, v102);
      v47 = sub_2584F1368(v43, v45);
      if (v50)
      {
        v51 = v50;
        v52 = v47;
        v95 = v48;
        v96 = v49;
        v53 = v111;
        v54 = v112;
        sub_2584A7B8C(v111, v112);
        v55 = v101;
        v56 = v54;
        v57 = v109;
        sub_25852E2E0(v53, v56, v101);
        if (v39(v55, 1, v57) == 1)
        {
          sub_2584D6360(v52, v95, v96, v51);
          (*(v108 + 8))(v105, v57);
          sub_2584D62A0(v110);
          sub_258465168(v55, &qword_27F930DE0, &unk_25853BD80);
          goto LABEL_15;
        }

        v94 = v51;
        v59 = v100;
        v99(v100, v55, v57);
        v60 = v103;
        v98(v103, v59, v57);
        v61 = v110;
        v62 = v104;
        sub_2584D62FC(v110, v104);
        v63 = v102;
        v97(v62, 0, 1, v102);
        v64 = sub_2584F1368(v60, v62);
        if (v67)
        {
          v68 = v67;
          v115[3] = v63;
          v115[4] = &off_2869900B8;
          v106 = v64;
          v104 = v65;
          v107 = v66;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v115);
          sub_2584D62FC(v61, boxed_opaque_existential_1);
          v115[8] = &type metadata for NetworkBackedNetworkAddress;
          v115[9] = &off_2869900A0;
          v70 = swift_allocObject();
          v71 = v95;
          v70[2] = v52;
          v70[3] = v71;
          v72 = v94;
          v70[4] = v96;
          v70[5] = v72;
          v115[5] = v70;
          v115[13] = &type metadata for NetworkBackedNetworkAddress;
          v115[14] = &off_2869900A0;
          v73 = swift_allocObject();
          v115[10] = v73;
          sub_258467E20(a1, v113);
          sub_258467E20(v111, v112);
          v74 = v104;
          v73[2] = v106;
          v73[3] = v74;
          v73[4] = v107;
          v73[5] = v68;
          v75 = *(v108 + 8);
          v75(v59, v57);
          v75(v105, v57);
          sub_2584D62A0(v61);
          sub_2584D63E0(v115, a5);
          sub_2584D6418(v115);
          return result;
        }

        sub_2584D6360(v52, v95, v96, v94);
        v77 = *(v108 + 8);
        v77(v59, v57);
        v77(v105, v57);
        v58 = v61;
      }

      else
      {
        (*(v38 + 8))(v42, v40);
        v58 = v110;
      }

      sub_2584D62A0(v58);
      goto LABEL_15;
    }

    sub_2584D62A0(v35);
    sub_258465168(v37, &qword_27F930DE0, &unk_25853BD80);
  }

LABEL_15:
  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v78 = sub_258532A4C();
  __swift_project_value_buffer(v78, qword_27F93CFD8);
  v79 = v113;
  sub_2584A7B8C(a1, v113);
  v81 = v111;
  v80 = v112;
  sub_2584A7B8C(v111, v112);
  v82 = sub_258532A2C();
  v83 = sub_2585338CC();
  sub_258467E20(a1, v79);
  sub_258467E20(v81, v80);
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v114 = v85;
    *v84 = 136315138;
    sub_2584A7B8C(a1, v79);
    sub_2584A7B8C(v81, v80);
    v86 = sub_2584AE0D8(a1, v79, v81, v80);
    v110 = a5;
    v87 = v79;
    v88 = v86;
    v90 = v89;
    sub_258467E20(a1, v87);
    sub_258467E20(v81, v80);
    v91 = sub_2584713B0(v88, v90, &v114);

    *(v84 + 4) = v91;
    _os_log_impl(&dword_25845E000, v82, v83, "Unable to create ControlConnectionInfoBackedNetworkPath controlConnectionInfo: %s", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v85);
    MEMORY[0x259C82900](v85, -1, -1);
    MEMORY[0x259C82900](v84, -1, -1);

    v92 = a1;
    v93 = v87;
    a5 = v110;
  }

  else
  {

    v92 = a1;
    v93 = v79;
  }

  sub_258467E20(v92, v93);
  sub_258467E20(v81, v80);
  result = 0.0;
  *(a5 + 105) = 0u;
  a5[5] = 0u;
  a5[6] = 0u;
  a5[3] = 0u;
  a5[4] = 0u;
  a5[1] = 0u;
  a5[2] = 0u;
  *a5 = 0u;
  return result;
}

uint64_t sub_2584D615C()
{
  sub_258533B8C();
  MEMORY[0x259C81500](0xD000000000000010, 0x80000002585414B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931420, &unk_258535450);
  sub_258533C8C();
  MEMORY[0x259C81500](0xD000000000000010, 0x80000002585414D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930DD0, &unk_25853BD70);
  sub_258533C8C();
  MEMORY[0x259C81500](0xD000000000000011, 0x80000002585414F0);
  sub_258533C8C();
  return 0;
}

uint64_t sub_2584D62A0(uint64_t a1)
{
  v2 = type metadata accessor for NetworkBackedNetworkInterface(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2584D62FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkBackedNetworkInterface(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2584D6360(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_258467E20(result, a2);
  }

  return result;
}

uint64_t sub_2584D63A0()
{
  sub_258467E20(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2584D6474(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
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

uint64_t sub_2584D64BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2584D652C()
{
  v1 = v0;
  if (!*(v0 + 16))
  {
    goto LABEL_8;
  }

  v2 = qword_27F92F900;
  swift_unknownObjectRetain();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = sub_258532A4C();
  __swift_project_value_buffer(v3, qword_27F93D050);
  swift_unknownObjectRetain();
  v4 = sub_258532A2C();
  v5 = sub_2585338DC();
  if (!os_log_type_enabled(v4, v5))
  {
    swift_unknownObjectRelease_n();

    goto LABEL_8;
  }

  v6 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  v13 = v7;
  *v6 = 136315138;
  description = os_transaction_get_description();
  result = swift_unknownObjectRelease();
  if (description)
  {
    v10 = sub_2585334CC();
    v12 = sub_2584713B0(v10, v11, &v13);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_25845E000, v4, v5, "Transaction=%s not released", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);

    swift_unknownObjectRelease();
LABEL_8:
    swift_unknownObjectRelease();
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2584D66D4()
{
  sub_2584D652C();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2584D672C()
{
  v1 = v0;
  sub_258533B8C();

  sub_2585329BC();
  sub_2584BA1B0();
  v2 = sub_258533DFC();
  MEMORY[0x259C81500](v2);

  sub_25853348C();

  v3 = os_transaction_create();

  *(v1 + 16) = v3;

  return swift_unknownObjectRelease();
}

uint64_t sub_2584D6810()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2584D6874()
{
  v1 = v0;
  v2 = sub_25853398C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Signpost(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2584D6A6C(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *v8;
  if (EnumCaseMultiPayload != 1)
  {
    return v10;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F930DE8, &qword_25853BED0);
  result = (*(v3 + 32))(v5, &v8[*(v11 + 48)], v2);
  if ((v10 & 0x8000000000000000) == 0)
  {
    sub_25853397C();
    sub_2585339DC();
    (*(v3 + 8))(v5, v2);
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_2584D6A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2584D6AD0(void *a1)
{
  v25 = &unk_25853BF70;
  v26 = &unk_25853BF88;
  v27 = MEMORY[0x277D83410] + 64;
  v28 = &unk_25853BFA0;
  v29 = &unk_25853BFB8;
  v30 = &unk_25853BFA0;
  v31 = &unk_25853BFD0;
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  v4 = a1[13];
  v5 = a1[14];
  v6 = a1[15];
  v19 = v1;
  v20 = v2;
  v21 = v3;
  v22 = v4;
  v23 = v5;
  v24 = v6;
  type metadata accessor for ControlConnectionEvent(255, &v19);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
  v7 = sub_25853384C();
  if (v8 <= 0x3F)
  {
    v32 = *(v7 - 8) + 64;
    v9 = sub_25853380C();
    if (v10 <= 0x3F)
    {
      v33 = *(v9 - 8) + 64;
      v19 = v1;
      v20 = v2;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      v24 = v6;
      type metadata accessor for NetworkBackedControlConnection.BackingConnectionEvent(255, &v19);
      v11 = sub_25853372C();
      if (v12 <= 0x3F)
      {
        v34 = *(v11 - 8) + 64;
        v13 = sub_2585336EC();
        if (v14 <= 0x3F)
        {
          v35 = *(v13 - 8) + 64;
          v36 = &unk_25853BFA0;
          v37 = &unk_25853BFA0;
          v38 = &unk_25853BFA0;
          sub_258472254(319);
          if (v16 <= 0x3F)
          {
            v39 = *(v15 - 8) + 64;
            v40 = &unk_25853BFA0;
            sub_2584E1A48(319);
            if (v18 <= 0x3F)
            {
              v41 = *(v17 - 8) + 64;
              swift_initClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2584D6D74@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x277D858A0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
  v4 = sub_2585337DC();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_2584D6E64(unsigned __int8 a1)
{
  sub_258533EEC();
  MEMORY[0x259C81F40](a1);
  return sub_258533F2C();
}

uint64_t sub_2584D6EC8(uint64_t a1)
{
  sub_258533EEC();
  sub_2584D6E3C(v3, *v1);
  return sub_258533F2C();
}

uint64_t sub_2584D6F10(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a6;
  v9[5] = a7;
  type metadata accessor for NetworkBackedControlConnection.State(0, v9);
  LOBYTE(v9[0]) = a1;
  swift_getWitnessTable();
  return sub_2585333EC() & 1;
}

uint64_t sub_2584D6FE4(uint64_t a1)
{
  sub_258533EEC();
  sub_2584D6E3C(v3, *v1);
  return sub_258533F2C();
}

void sub_2584D707C(uint64_t a1)
{
  v86 = a1;
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 96);
  v88 = *(*v1 + 80);
  v89 = v4;
  v90 = *(v3 + 112);
  v5 = type metadata accessor for ControlConnectionEvent(0, &v88);
  MEMORY[0x28223BE20](v5);
  v81 = &v71 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
  v7 = sub_25853380C();
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x28223BE20](v7);
  v78 = &v71 - v8;
  v82 = v5;
  v77 = sub_2585337CC();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v71 - v9;
  v10 = type metadata accessor for NetworkBackedNetworkPath(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930F88, &unk_25853C1E8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v74 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = &v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v72 = &v71 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v85 = &v71 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v71 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F930F98, &qword_25853C230);
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v28 = &v71 - v27;
  v29 = *(v2 + 256);
  v84 = v1;
  v30 = v1 + v29;
  swift_beginAccess();
  v31 = *(v26 + 56);
  v83 = v30;
  sub_2584AC3B8(v30, v28, &qword_27F930F88, &unk_25853C1E8);
  v32 = v86;
  sub_2584AC3B8(v86, &v28[v31], &qword_27F930F88, &unk_25853C1E8);
  v33 = *(v11 + 48);
  if (v33(v28, 1, v10) == 1)
  {
    if (v33(&v28[v31], 1, v10) == 1)
    {
      sub_258465168(v28, &qword_27F930F88, &unk_25853C1E8);
      return;
    }
  }

  else
  {
    sub_2584AC3B8(v28, v24, &qword_27F930F88, &unk_25853C1E8);
    if (v33(&v28[v31], 1, v10) != 1)
    {
      sub_2584E22D8(&v28[v31], v13);
      v50 = sub_2584F3CC0(v24, v13);
      sub_2584E23A0(v13);
      sub_2584E23A0(v24);
      sub_258465168(v28, &qword_27F930F88, &unk_25853C1E8);
      v34 = v32;
      v35 = v84;
      if (v50)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_2584E23A0(v24);
  }

  sub_258465168(v28, qword_27F930F98, &qword_25853C230);
  v34 = v32;
  v35 = v84;
LABEL_7:
  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v36 = sub_258532A4C();
  __swift_project_value_buffer(v36, qword_27F93CFD8);
  v37 = v85;
  sub_2584AC3B8(v34, v85, &qword_27F930F88, &unk_25853C1E8);

  v38 = sub_258532A2C();
  v39 = sub_2585338EC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v87 = v84;
    *v40 = 136315650;
    v41 = sub_2584E1FC0();
    v42 = v37;
    v44 = v43;

    v45 = sub_2584713B0(v41, v44, &v87);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2080;
    v46 = v42;
    v47 = v72;
    sub_2584AC3B8(v46, v72, &qword_27F930F88, &unk_25853C1E8);
    if (v33(v47, 1, v10) == 1)
    {
      sub_258465168(v47, &qword_27F930F88, &unk_25853C1E8);
      v48 = 0xE400000000000000;
      v49 = 1701736270;
    }

    else
    {
      sub_258464C30(v47 + *(v10 + 20), &v88);
      sub_2584E23A0(v47);
      __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
      v49 = sub_258532D5C();
      v48 = v51;
      __swift_destroy_boxed_opaque_existential_1Tm(&v88);
    }

    sub_258465168(v85, &qword_27F930F88, &unk_25853C1E8);
    v52 = sub_2584713B0(v49, v48, &v87);

    *(v40 + 14) = v52;
    *(v40 + 22) = 2080;
    v53 = v83;
    v54 = v33(v83, 1, v10);
    v34 = v86;
    if (v54)
    {
      v55 = 0xE400000000000000;
      v56 = 1701736270;
    }

    else
    {
      sub_258464C30(v53 + *(v10 + 20), &v88);
      __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
      v57 = sub_258532D5C();
      v55 = v58;
      __swift_destroy_boxed_opaque_existential_1Tm(&v88);
      v56 = v57;
    }

    v59 = sub_2584713B0(v56, v55, &v87);

    *(v40 + 24) = v59;
    _os_log_impl(&dword_25845E000, v38, v39, "%s migrated from %s to %s", v40, 0x20u);
    v60 = v84;
    swift_arrayDestroy();
    MEMORY[0x259C82900](v60, -1, -1);
    MEMORY[0x259C82900](v40, -1, -1);
  }

  else
  {

    sub_258465168(v37, &qword_27F930F88, &unk_25853C1E8);
  }

  if (v35[112] == 2)
  {
    v62 = v79;
    v61 = v80;
    v63 = &v35[*(*v35 + 192)];
    v64 = v78;
    (*(v79 + 16))(v78, v63, v80);
    v65 = v73;
    sub_2584AC3B8(v34, v73, &qword_27F930F88, &unk_25853C1E8);
    if (v33(v65, 1, v10) == 1)
    {
      sub_258465168(v65, &qword_27F930F88, &unk_25853C1E8);
      v66 = v81;
      *v81 = 0u;
      *(v66 + 1) = 0u;
      *(v66 + 4) = 0;
    }

    else
    {
      v66 = v81;
      *(v81 + 3) = v10;
      *(v66 + 4) = &off_2869900E8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
      sub_2584E22D8(v65, boxed_opaque_existential_1);
    }

    v68 = v74;
    sub_2584AC3B8(v83, v74, &qword_27F930F88, &unk_25853C1E8);
    if (v33(v68, 1, v10) == 1)
    {
      sub_258465168(v68, &qword_27F930F88, &unk_25853C1E8);
      *(v66 + 40) = 0u;
      *(v66 + 56) = 0u;
      *(v66 + 9) = 0;
    }

    else
    {
      *(v66 + 8) = v10;
      *(v66 + 9) = &off_2869900E8;
      v69 = __swift_allocate_boxed_opaque_existential_1(v66 + 5);
      sub_2584E22D8(v68, v69);
    }

    swift_storeEnumTagMultiPayload();
    v70 = v75;
    sub_2585337EC();
    (*(v62 + 8))(v64, v61);
    (*(v76 + 8))(v70, v77);
  }
}

uint64_t sub_2584D7A88(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930F88, &unk_25853C1E8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8[-v4];
  v6 = *(*v1 + 256);
  swift_beginAccess();
  sub_2584AC3B8(v1 + v6, v5, &qword_27F930F88, &unk_25853C1E8);
  swift_beginAccess();
  sub_2584E2664(a1, v1 + v6);
  swift_endAccess();
  sub_2584D707C(v5);
  sub_258465168(a1, &qword_27F930F88, &unk_25853C1E8);
  return sub_258465168(v5, &qword_27F930F88, &unk_25853C1E8);
}

uint64_t sub_2584D7BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_2584D7BF8(a1, a2, a3);
  return v6;
}

uint64_t sub_2584D7BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v55 = a3;
  v63 = a2;
  v53 = a1;
  v6 = *(*v3 + 88);
  v7 = *(*v3 + 96);
  v8 = *(*v3 + 104);
  v9 = *(*v3 + 112);
  v10 = *(*v3 + 120);
  v65 = *(*v3 + 80);
  v5 = v65;
  v66 = v6;
  v67 = v7;
  v68 = v8;
  v69 = v9;
  v70 = v10;
  v11 = type metadata accessor for NetworkBackedControlConnection.BackingConnectionEvent(255, &v65);
  v61 = sub_2585336BC();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v57 = &v48 - v12;
  v60 = sub_2585336EC();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v56 = &v48 - v13;
  v62 = v11;
  v54 = sub_25853372C();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = &v48 - v14;
  v65 = v5;
  v66 = v6;
  v67 = v7;
  v68 = v8;
  v69 = v9;
  v70 = v10;
  type metadata accessor for ControlConnectionEvent(255, &v65);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
  v50 = sub_2585337DC();
  v15 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v17 = &v48 - v16;
  v49 = sub_25853380C();
  v18 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v20 = &v48 - v19;
  v21 = sub_25853384C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v48 - v23;
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + *(*v4 + 216)) = 0;
  *(v4 + *(*v4 + 224)) = 0;
  *(v4 + *(*v4 + 232)) = 0;
  v25 = *(*v4 + 240);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  (*(*(v26 - 8) + 56))(v4 + v25, 1, 1, v26);
  *(v4 + *(*v4 + 248)) = 0;
  v27 = *(*v4 + 256);
  v28 = type metadata accessor for NetworkBackedNetworkPath(0);
  (*(*(v28 - 8) + 56))(v4 + v27, 1, 1, v28);
  if (*(v63 + 24))
  {
    v29 = 0;
    *(v4 + 176) = v53;
  }

  else
  {
    v29 = v53;
  }

  *(v4 + 128) = v29;
  sub_2584AC3B8(v63, v4 + 136, &qword_27F9304F8, &qword_258538138);
  *(v4 + 120) = v55;
  sub_2584D6D74(v17);

  sub_2585337BC();
  (*(v15 + 8))(v17, v50);
  (*(v22 + 32))(v4 + *(*v4 + 184), v24, v21);
  (*(v18 + 32))(v4 + *(*v4 + 192), v20, v49);
  v30 = v59;
  v31 = v57;
  v32 = v61;
  (*(v59 + 104))(v57, *MEMORY[0x277D85778], v61);
  v33 = v51;
  v34 = v56;
  sub_25853369C();
  (*(v30 + 8))(v31, v32);
  (*(v52 + 32))(v4 + *(*v4 + 200), v33, v54);
  (*(v58 + 32))(v4 + *(*v4 + 208), v34, v60);
  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v35 = sub_258532A4C();
  __swift_project_value_buffer(v35, qword_27F93CFD8);

  v36 = sub_258532A2C();
  v37 = sub_2585338EC();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v65 = v39;
    *v38 = 136315394;
    v40 = sub_2584E1FC0();
    v42 = v41;

    v43 = sub_2584713B0(v40, v42, &v65);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2080;
    v64 = sub_258532C0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930508, &unk_25853C220);
    v44 = sub_25853347C();
    v46 = sub_2584713B0(v44, v45, &v65);

    *(v38 + 14) = v46;
    _os_log_impl(&dword_25845E000, v36, v37, "%s created with connection=%s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v39, -1, -1);
    MEMORY[0x259C82900](v38, -1, -1);
  }

  else
  {
  }

  sub_258465168(v63, &qword_27F9304F8, &qword_258538138);
  return v4;
}

uint64_t sub_2584D84E4()
{
  *(v1 + 64) = v0;
  *(v1 + 72) = *v0;
  return MEMORY[0x2822009F8](sub_2584D852C, v0, 0);
}

uint64_t sub_2584D852C()
{
  v31 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  v8 = v1[14];
  v7 = v1[15];
  if ((sub_2584D6F10(*(v2 + 112), v3, v4, v5, v6, v8, v7) & 1) == 0)
  {
    v28 = v7;
    v29 = v8;
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v9 = sub_258532A4C();
    __swift_project_value_buffer(v9, qword_27F93CFD8);

    v10 = sub_258532A2C();
    v11 = sub_2585338EC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v27 = v2;
      v25 = swift_slowAlloc();
      v30 = v25;
      *v12 = 136315138;

      v13 = v6;
      v14 = v5;
      v15 = v3;
      v16 = sub_2584E1FC0();
      v26 = v4;
      v18 = v17;

      v19 = v16;
      v3 = v15;
      v5 = v14;
      v6 = v13;
      v20 = sub_2584713B0(v19, v18, &v30);
      v4 = v26;

      *(v12 + 4) = v20;
      _os_log_impl(&dword_25845E000, v10, v11, "%s invalidating", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      v2 = v27;
      MEMORY[0x259C82900](v25, -1, -1);
      MEMORY[0x259C82900](v12, -1, -1);
    }

    else
    {
    }

    *(v2 + 112) = 3;
    v0[2] = v3;
    v0[3] = v4;
    v0[4] = v5;
    v0[5] = v6;
    v0[6] = v29;
    v0[7] = v28;
    type metadata accessor for NetworkBackedControlConnection.Errors(0, (v0 + 2));
    swift_getWitnessTable();
    v21 = swift_allocError();
    *v22 = 2;
    sub_2584E0A68(v21);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_2584D87C8(uint64_t a1)
{
  v2[48] = a1;
  v2[49] = v1;
  v2[50] = *v1;
  return MEMORY[0x2822009F8](sub_2584D8810, v1, 0);
}

uint64_t sub_2584D8810()
{
  v40 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);
  v3 = *(v1 + 112);
  v4 = v2[10];
  *(v0 + 408) = v4;
  v5 = v2[11];
  *(v0 + 416) = v5;
  v6 = v2[12];
  *(v0 + 424) = v6;
  v7 = v2[13];
  *(v0 + 432) = v7;
  v8 = v2[14];
  *(v0 + 440) = v8;
  v9 = v2[15];
  *(v0 + 448) = v9;
  if (v3)
  {
    *&v10 = v6;
    *(&v10 + 1) = v7;
    *&v11 = v4;
    *(&v11 + 1) = v5;
    *(v0 + 16) = v11;
    *(v0 + 32) = v10;
    *(v0 + 48) = v8;
    *(v0 + 56) = v9;
    type metadata accessor for NetworkBackedControlConnection.Errors(0, v0 + 16);
    swift_getWitnessTable();
    v12 = swift_allocError();
    *v13 = 0;
LABEL_3:
    swift_willThrow();
    sub_2584E10BC(v12);
    swift_willThrow();
    v14 = *(v0 + 8);

    return v14();
  }

  *(v1 + 112) = 1;
  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v16 = sub_258532A4C();
  *(v0 + 456) = __swift_project_value_buffer(v16, qword_27F93CFD8);

  v17 = sub_258532A2C();
  v18 = sub_2585338EC();
  if (os_log_type_enabled(v17, v18))
  {
    log = v17;
    v19 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v19 = 136315138;

    v35 = sub_2584E1FC0();
    v36 = v18;
    v21 = v20;

    v22 = sub_2584713B0(v35, v21, &v39);

    *(v19 + 4) = v22;
    _os_log_impl(&dword_25845E000, log, v36, "%s activating", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x259C82900](v38, -1, -1);
    MEMORY[0x259C82900](v19, -1, -1);
  }

  else
  {
  }

  v23 = *(v0 + 392);
  v24 = *(v23 + 176);
  *(v0 + 464) = v24;
  if (v24)
  {

    v25 = swift_task_alloc();
    *(v0 + 472) = v25;
    *v25 = v0;
    v25[1] = sub_2584D8D60;

    return sub_2584DB670(v24);
  }

  else
  {
    v26 = *(v23 + 128);
    *(v0 + 488) = v26;
    if (!v26)
    {
      *&v30 = v4;
      *(&v30 + 1) = v5;
      *&v31 = v6;
      *(&v31 + 1) = v7;
      *(v0 + 64) = v30;
      *(v0 + 80) = v31;
      *(v0 + 96) = v8;
      *(v0 + 104) = v9;
      type metadata accessor for NetworkBackedControlConnection.Errors(0, v0 + 64);
      swift_getWitnessTable();
      v12 = swift_allocError();
      *v32 = 5;
      goto LABEL_3;
    }

    sub_2584DEA2C();
    *(v0 + 376) = v26;
    v27 = sub_258532F6C();
    *(v0 + 344) = sub_25853313C();
    *(v0 + 352) = sub_25853318C();
    WitnessTable = swift_getWitnessTable();
    v29 = MEMORY[0x277CD8F50];
    *(v0 + 360) = MEMORY[0x277CD8F48];
    *(v0 + 368) = v29;
    *(v0 + 304) = 2;
    *(v0 + 312) = v27;
    *(v0 + 320) = v0 + 344;
    *(v0 + 328) = WitnessTable;
    *(v0 + 336) = v0 + 360;
    sub_258532C6C();
    swift_getWitnessTable();
    if (sub_25852FEC4())
    {
      sub_2584DFE70();
      v33 = swift_task_alloc();
      *(v0 + 496) = v33;
      *v33 = v0;
      v34 = sub_2584D9164;
    }

    else
    {
      v33 = swift_task_alloc();
      *(v0 + 512) = v33;
      *v33 = v0;
      v34 = sub_2584D955C;
    }

    v33[1] = v34;

    return sub_2584DB8D0(v26);
  }
}

uint64_t sub_2584D8D60()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  v3 = *(v2 + 392);
  if (v0)
  {
    v4 = sub_2584D9964;
  }

  else
  {
    v4 = sub_2584D8E8C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584D8E8C()
{
  v22 = v0;
  v1 = (v0 + 408);
  if (*(*(v0 + 392) + 112) == 1)
  {
    sub_2584DD9E4(*(v0 + 464));

    *(*(v0 + 392) + 112) = 2;

    v2 = sub_258532A2C();
    v3 = sub_2585338EC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v21 = v5;
      *v4 = 136315138;

      v6 = sub_2584E1FC0();
      v8 = v7;

      v9 = sub_2584713B0(v6, v8, &v21);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_25845E000, v2, v3, "%s activated", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x259C82900](v5, -1, -1);
      MEMORY[0x259C82900](v4, -1, -1);
    }

    else
    {
    }

    v14 = *(v0 + 384);
    v15 = *(v0 + 392);
    v16 = *(*v15 + 184);
    v17 = *(v0 + 424);
    *(v0 + 160) = *v1;
    v18 = *(v0 + 440);
    *(v0 + 176) = v17;
    *(v0 + 192) = v18;
    type metadata accessor for ControlConnectionEvent(255, v0 + 160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v19 = sub_25853384C();
    (*(*(v19 - 8) + 16))(v14, v15 + v16, v19);
    v13 = *(v0 + 8);
  }

  else
  {
    v10 = *(v0 + 424);
    *(v0 + 256) = *v1;
    *(v0 + 272) = v10;
    *(v0 + 288) = *(v0 + 440);
    type metadata accessor for NetworkBackedControlConnection.Errors(0, v0 + 256);
    swift_getWitnessTable();
    v11 = swift_allocError();
    *v12 = 2;
    swift_willThrow();

    sub_2584E10BC(v11);
    swift_willThrow();
    v13 = *(v0 + 8);
  }

  return v13();
}

uint64_t sub_2584D9164()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  v3 = *(v2 + 392);
  if (v0)
  {
    v4 = sub_2584D99E8;
  }

  else
  {
    v4 = sub_2584D9290;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584D9290()
{
  v23 = v0;
  v1 = (v0 + 408);
  if (*(*(v0 + 392) + 112) == 1)
  {

    *(*(v0 + 392) + 112) = 2;

    v2 = sub_258532A2C();
    v3 = sub_2585338EC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v22 = v5;
      *v4 = 136315138;

      v6 = sub_2584E1FC0();
      v8 = v7;

      v9 = sub_2584713B0(v6, v8, &v22);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_25845E000, v2, v3, "%s activated", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x259C82900](v5, -1, -1);
      MEMORY[0x259C82900](v4, -1, -1);
    }

    else
    {
    }

    v15 = *(v0 + 384);
    v16 = *(v0 + 392);
    v17 = *(*v16 + 184);
    v18 = *(v0 + 424);
    *(v0 + 160) = *v1;
    v19 = *(v0 + 440);
    *(v0 + 176) = v18;
    *(v0 + 192) = v19;
    type metadata accessor for ControlConnectionEvent(255, v0 + 160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v20 = sub_25853384C();
    (*(*(v20 - 8) + 16))(v15, v16 + v17, v20);
    v14 = *(v0 + 8);
  }

  else
  {
    v10 = *(v0 + 424);
    *(v0 + 208) = *v1;
    v11 = *(v0 + 440);
    *(v0 + 224) = v10;
    *(v0 + 240) = v11;
    type metadata accessor for NetworkBackedControlConnection.Errors(0, v0 + 208);
    swift_getWitnessTable();
    v12 = swift_allocError();
    *v13 = 2;
    swift_willThrow();

    sub_2584E10BC(v12);
    swift_willThrow();
    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t sub_2584D955C()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = *(v2 + 392);
  if (v0)
  {
    v4 = sub_2584D9A6C;
  }

  else
  {
    v4 = sub_2584D9688;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584D9688()
{
  v24 = v0;
  v1 = (v0 + 408);
  if (*(*(v0 + 392) + 112) == 1)
  {
    v2 = *(v0 + 520);
    sub_2584DFE70();
    v3 = v2;

    if (!v2)
    {
      *(*(v0 + 392) + 112) = 2;

      v4 = sub_258532A2C();
      v5 = sub_2585338EC();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v23 = v7;
        *v6 = 136315138;

        v8 = sub_2584E1FC0();
        v10 = v9;

        v11 = sub_2584713B0(v8, v10, &v23);

        *(v6 + 4) = v11;
        _os_log_impl(&dword_25845E000, v4, v5, "%s activated", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v7);
        MEMORY[0x259C82900](v7, -1, -1);
        MEMORY[0x259C82900](v6, -1, -1);
      }

      else
      {
      }

      v17 = *(v0 + 384);
      v18 = *(v0 + 392);
      v19 = *(*v18 + 184);
      v20 = *(v0 + 424);
      *(v0 + 160) = *v1;
      v21 = *(v0 + 440);
      *(v0 + 176) = v20;
      *(v0 + 192) = v21;
      type metadata accessor for ControlConnectionEvent(255, v0 + 160);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
      v22 = sub_25853384C();
      (*(*(v22 - 8) + 16))(v17, v18 + v19, v22);
      v15 = *(v0 + 8);
      goto LABEL_7;
    }
  }

  else
  {
    v12 = *(v0 + 424);
    *(v0 + 112) = *v1;
    v13 = *(v0 + 440);
    *(v0 + 128) = v12;
    *(v0 + 144) = v13;
    type metadata accessor for NetworkBackedControlConnection.Errors(0, v0 + 112);
    swift_getWitnessTable();
    v3 = swift_allocError();
    *v14 = 2;
    swift_willThrow();
  }

  sub_2584E10BC(v3);
  swift_willThrow();
  v15 = *(v0 + 8);
LABEL_7:

  return v15();
}

uint64_t sub_2584D9964()
{

  sub_2584E10BC(*(v0 + 480));
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584D99E8()
{

  sub_2584E10BC(*(v0 + 504));
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584D9A6C()
{

  sub_2584E10BC(*(v0 + 520));
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584D9AF0(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = *v1;
  v2[16] = *v1;
  v4 = *(v3 + 80);
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584D9BF4, v1, 0);
}

uint64_t sub_2584D9BF4()
{
  v1 = v0[16];
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[15];
  if (*(v0[15] + 112) == 2)
  {
    sub_2584DD8A4();
    v7 = *(v0[15] + 176);
    v0[21] = v7;
    if (v7)
    {

      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_2584D9DE8;
      v9 = v0[14];
      v10 = MEMORY[0x277D84F90];

      return MEMORY[0x282125408](v9, v10, 0);
    }

    v11 = v0 + 8;
    v12 = 4;
    v13 = 13;
    v14 = 12;
    v15 = 11;
    v16 = 10;
    v17 = 9;
  }

  else
  {
    v11 = v0 + 2;
    v12 = 3;
    v13 = 7;
    v14 = 6;
    v15 = 5;
    v16 = 4;
    v17 = 3;
  }

  *v11 = v0[17];
  v0[v17] = v2;
  v0[v16] = v3;
  v0[v15] = v4;
  v0[v14] = v5;
  v0[v13] = v6;
  type metadata accessor for NetworkBackedControlConnection.Errors(0, v11);
  swift_getWitnessTable();
  swift_allocError();
  *v18 = v12;
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_2584D9DE8()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_2584DA1E8;
  }

  else
  {
    v4 = sub_2584D9F14;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584D9F14()
{
  v32 = v0;
  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[14];
  v5 = sub_258532A4C();
  __swift_project_value_buffer(v5, qword_27F93CFD8);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);

  v7 = sub_258532A2C();
  v8 = sub_2585338BC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[20];
  if (v9)
  {
    v27 = v0[19];
    v12 = v0[17];
    v11 = v0[18];
    v30 = v8;
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v13 = 136315394;

    v14 = sub_2584E1FC0();
    log = v7;
    v15 = v6;
    v17 = v16;

    v18 = sub_2584713B0(v14, v17, &v31);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    v15(v27, v10, v12);
    v19 = sub_25853347C();
    v21 = v20;
    (*(v11 + 8))(v10, v12);
    v22 = sub_2584713B0(v19, v21, &v31);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_25845E000, log, v30, "%s sent %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v29, -1, -1);
    MEMORY[0x259C82900](v13, -1, -1);
  }

  else
  {
    v23 = v0[17];
    v24 = v0[18];

    (*(v24 + 8))(v10, v23);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_2584DA1E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584DA25C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 112);
  if (v1[112] == 2)
  {
    v15 = *(*v1 + 112);
    v16 = *(*v1 + 80);
    v7 = v1;
    result = sub_2584DD644();
    if (!v2)
    {
      v9 = sub_258532F6C();
      v18[0] = sub_25853313C();
      v18[1] = sub_25853318C();
      WitnessTable = swift_getWitnessTable();
      v17[0] = MEMORY[0x277CD8F48];
      v17[1] = MEMORY[0x277CD8F50];
      v19.i64[0] = 2;
      v19.i64[1] = v9;
      *&v20 = v18;
      *(&v20 + 1) = WitnessTable;
      *&v21 = v17;
      sub_258532C6C();

      v11 = sub_258532C2C();
      v19 = vdupq_laneq_s64(v16, 1);
      v20 = v15;
      v21 = v15;
      v12 = type metadata accessor for NetworkBackedControlConnection(0, &v19);
      v19 = v16;
      *&v20 = v3;
      *(&v20 + 1) = v4;
      v21 = v15;
      *(&v20 + 1) = type metadata accessor for NetworkBackedControlConnection(0, &v19);
      *&v21 = swift_getWitnessTable();
      v19.i64[0] = v7;
      v13 = swift_allocObject();

      sub_2584D7BF8(v11, &v19, 1);
      a1[3] = v12;
      a1[4] = swift_getWitnessTable();

      *a1 = v13;
    }
  }

  else
  {
    v19 = *(*v1 + 80);
    *&v20 = v3;
    *(&v20 + 1) = v4;
    v21 = v5;
    type metadata accessor for NetworkBackedControlConnection.Errors(0, &v19);
    swift_getWitnessTable();
    swift_allocError();
    *v14 = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2584DA4F4(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = *v1;
  v2[28] = *v1;
  v4 = *(v3 + 80);
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584DA604, v1, 0);
}

uint64_t sub_2584DA604()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v2 + 112);
  v4 = v1[11];
  *(v0 + 272) = v4;
  v5 = v1[12];
  *(v0 + 280) = v5;
  v6 = v1[13];
  *(v0 + 288) = v6;
  v7 = v1[14];
  *(v0 + 296) = v7;
  v8 = v1[15];
  *(v0 + 304) = v8;
  if (v3)
  {
    *(v0 + 16) = *(v0 + 232);
    *&v9 = v4;
    *(&v9 + 1) = v5;
    *&v10 = v6;
    *(&v10 + 1) = v7;
    *(v0 + 40) = v10;
    *(v0 + 24) = v9;
    *(v0 + 56) = v8;
    type metadata accessor for NetworkBackedControlConnection.Errors(0, v0 + 16);
    swift_getWitnessTable();
    swift_allocError();
    *v11 = 0;
LABEL_6:
    swift_willThrow();

    v16 = *(v0 + 8);

    return v16();
  }

  if (*(v2 + 128))
  {
    *(v0 + 160) = *(v0 + 232);
    *&v12 = v4;
    *(&v12 + 1) = v5;
    *&v13 = v6;
    *(&v13 + 1) = v7;
    *(v0 + 184) = v13;
    *(v0 + 168) = v12;
    *(v0 + 200) = v8;
    type metadata accessor for NetworkBackedControlConnection.Errors(0, v0 + 160);
    swift_getWitnessTable();
    swift_allocError();
    v15 = 8;
LABEL_5:
    *v14 = v15;
    goto LABEL_6;
  }

  v18 = *(v2 + 176);
  *(v0 + 312) = v18;
  if (!v18)
  {
    *(v0 + 64) = *(v0 + 232);
    *&v20 = v4;
    *(&v20 + 1) = v5;
    *&v21 = v6;
    *(&v21 + 1) = v7;
    *(v0 + 88) = v21;
    *(v0 + 72) = v20;
    *(v0 + 104) = v8;
    type metadata accessor for NetworkBackedControlConnection.Errors(0, v0 + 64);
    swift_getWitnessTable();
    swift_allocError();
    v15 = 4;
    goto LABEL_5;
  }

  v19 = swift_task_alloc();
  *(v0 + 320) = v19;
  *v19 = v0;
  v19[1] = sub_2584DA89C;

  return sub_2584DB670(v18);
}

uint64_t sub_2584DA89C()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 216);
  if (v0)
  {
    v4 = sub_2584DAF74;
  }

  else
  {
    v4 = sub_2584DA9C8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584DA9C8()
{
  if (*(*(v0 + 216) + 112))
  {
    *(v0 + 112) = *(v0 + 232);
    v1 = *(v0 + 304);
    v2 = *(v0 + 288);
    *(v0 + 120) = *(v0 + 272);
    *(v0 + 136) = v2;
    *(v0 + 152) = v1;
    type metadata accessor for NetworkBackedControlConnection.Errors(0, v0 + 112);
    swift_getWitnessTable();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 336) = v6;
    *v6 = v0;
    v6[1] = sub_2584DAB40;
    v7 = *(v0 + 264);

    return MEMORY[0x282125410](v7);
  }
}

uint64_t sub_2584DAB40(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 344) = v1;

  v4 = *(v3 + 216);
  if (v1)
  {
    v5 = sub_2584DAFFC;
  }

  else
  {

    v5 = sub_2584DAC7C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2584DAC7C()
{
  v31 = v0;
  (*(v0[30] + 32))(v0[26], v0[33], v0[29]);
  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[26];
  v5 = sub_258532A4C();
  __swift_project_value_buffer(v5, qword_27F93CFD8);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);

  v7 = sub_258532A2C();
  v8 = sub_2585338BC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[32];
  if (v9)
  {
    v27 = v0[31];
    v12 = v0[29];
    v11 = v0[30];
    v29 = v8;
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v13 = 136315394;

    v14 = sub_2584E1FC0();
    v26 = v6;
    v16 = v15;

    v17 = sub_2584713B0(v14, v16, &v30);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v26(v27, v10, v12);
    v18 = sub_25853347C();
    v20 = v19;
    (*(v11 + 8))(v10, v12);
    v21 = sub_2584713B0(v18, v20, &v30);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_25845E000, v7, v29, "%s receivedOnce, message: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v28, -1, -1);
    MEMORY[0x259C82900](v13, -1, -1);
  }

  else
  {
    v22 = v0[29];
    v23 = v0[30];

    (*(v23 + 8))(v10, v22);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_2584DAF74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584DAFFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584DB084(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v2[23] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930F88, &unk_25853C1E8);
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584DB148, v1, 0);
}

uint64_t sub_2584DB148()
{
  v1 = *(v0 + 176);
  if (*(v1 + 112) == 2)
  {
    sub_2584AC3B8(v1 + 136, v0 + 104, &qword_27F9304F8, &qword_258538138);
    if (*(v0 + 128))
    {
      sub_258464C18((v0 + 104), v0 + 64);
      v2 = *(v0 + 88);
      v3 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 64), v2);
      v20 = (*(v3 + 104) + **(v3 + 104));
      v4 = swift_task_alloc();
      *(v0 + 200) = v4;
      *v4 = v0;
      v4[1] = sub_2584DB46C;
      v5 = *(v0 + 168);

      return v20(v5, v2, v3);
    }

    v12 = *(v0 + 192);
    v13 = *(v0 + 176);
    sub_258465168(v0 + 104, &qword_27F9304F8, &qword_258538138);
    v14 = *(*v13 + 256);
    swift_beginAccess();
    sub_2584AC3B8(v13 + v14, v12, &qword_27F930F88, &unk_25853C1E8);
    v15 = type metadata accessor for NetworkBackedNetworkPath(0);
    v16 = (*(*(v15 - 8) + 48))(v12, 1, v15);
    v17 = *(v0 + 192);
    v18 = *(v0 + 168);
    if (v16 == 1)
    {
      sub_258465168(*(v0 + 192), &qword_27F930F88, &unk_25853C1E8);
      *v18 = 0u;
      *(v18 + 16) = 0u;
      *(v18 + 32) = 0;
    }

    else
    {
      *(v18 + 24) = v15;
      *(v18 + 32) = &off_2869900E8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
      sub_2584E22D8(v17, boxed_opaque_existential_1);
    }

    v11 = *(v0 + 8);
  }

  else
  {
    v7 = *(v0 + 184);
    v8 = v7[6];
    v9 = v7[7];
    *(v0 + 16) = v7[5];
    *(v0 + 32) = v8;
    *(v0 + 48) = v9;
    type metadata accessor for NetworkBackedControlConnection.Errors(0, v0 + 16);
    swift_getWitnessTable();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();

    v11 = *(v0 + 8);
  }

  return v11();
}

uint64_t sub_2584DB46C()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    v4 = sub_2584DB604;
  }

  else
  {
    v4 = sub_2584DB598;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584DB598()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584DB604()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584DB670(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2584DB690, v1, 0);
}

uint64_t sub_2584DB690(uint64_t a1)
{
  if (*(v1[3] + 184))
  {
    v2 = v1[1];

    return v2();
  }

  else
  {
    sub_2584DEA2C();
    v4 = swift_task_alloc();
    v1[4] = v4;
    *v4 = v1;
    v4[1] = sub_2584DB768;
    v5 = v1[2];

    return sub_2584DB8D0(v5);
  }
}

uint64_t sub_2584DB768()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 24);

    return MEMORY[0x2822009F8](sub_2584DB8AC, v6, 0);
  }
}

uint64_t sub_2584DB8D0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930F88, &unk_25853C1E8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584DB994, v1, 0);
}

uint64_t sub_2584DB994()
{
  sub_2584E1378();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_2584DBA30;
  v2 = *(v0 + 96);

  return sub_2584DBD24(v2);
}

uint64_t sub_2584DBA30()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 104);

    return MEMORY[0x2822009F8](sub_2584DBB80, v6, 0);
  }
}

uint64_t sub_2584DBB80(uint64_t a1)
{
  result = sub_258532C0C();
  if (result)
  {
    v3 = v1[17];
    sub_2584DD36C();

    if (!v3)
    {
      v4 = *(v1[13] + 128);
      if (v4)
      {
        v5 = v1[15];
        v1[11] = v4;
        v6 = sub_258532F6C();

        v1[7] = sub_25853313C();
        v1[8] = sub_25853318C();
        WitnessTable = swift_getWitnessTable();
        v8 = MEMORY[0x277CD8F50];
        v1[9] = MEMORY[0x277CD8F48];
        v1[10] = v8;
        v1[2] = 2;
        v1[3] = v6;
        v1[4] = v1 + 7;
        v1[5] = WitnessTable;
        v1[6] = v1 + 9;
        sub_258532C6C();
        swift_getWitnessTable();
        sub_25852FF2C(v5);
        sub_2584D7A88(v5);
      }
    }

    v9 = v1[1];

    return v9();
  }

  else
  {
    __break(1u);
  }

  return result;
}