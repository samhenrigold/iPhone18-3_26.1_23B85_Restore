void sub_257CB9108(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7138, &unk_257EE0328);
  sub_257ECEE60();
  if (v6 == 1)
  {
    v2 = *(a1 + 6);
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = v2;
    sub_257CD5040();
  }

  sub_257ECEE60();
  if (v6)
  {
    return;
  }

  v4 = *(a1 + 6);
  if (!v4)
  {
LABEL_8:
    type metadata accessor for MFReaderBlockManager(0);
    sub_257CB92C0();
    sub_257ECE320();
    __break(1u);
    return;
  }

  v5 = v4;
  sub_257CD1508();
}

unint64_t sub_257CB922C()
{
  result = qword_27F8F7130;
  if (!qword_27F8F7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7130);
  }

  return result;
}

unint64_t sub_257CB92C0()
{
  result = qword_27F8F5E38;
  if (!qword_27F8F5E38)
  {
    type metadata accessor for MFReaderBlockManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5E38);
  }

  return result;
}

unint64_t sub_257CB9318()
{
  result = qword_27F8F7140;
  if (!qword_27F8F7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7140);
  }

  return result;
}

unint64_t sub_257CB9370()
{
  result = qword_27F8F7148;
  if (!qword_27F8F7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7148);
  }

  return result;
}

unint64_t sub_257CB93C8()
{
  result = qword_27F8F7150;
  if (!qword_27F8F7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7150);
  }

  return result;
}

unint64_t sub_257CB9488()
{
  result = qword_27F8F7158;
  if (!qword_27F8F7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7158);
  }

  return result;
}

uint64_t sub_257CB94DC()
{
  v0 = sub_257ECCA30();
  __swift_allocate_value_buffer(v0, qword_27F912F40);
  __swift_project_value_buffer(v0, qword_27F912F40);
  return sub_257ECCA00();
}

uint64_t sub_257CB9540()
{
  v1 = sub_257ECDA30();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  sub_257ECF900();
  v0[8] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();
  v0[9] = v3;
  v0[10] = v2;

  return MEMORY[0x2822009F8](sub_257CB9630, v3, v2);
}

uint64_t sub_257CB9630()
{
  if (qword_27F8F4770 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = xmmword_257EDE760;
  *(v0 + 32) = 7;
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_257CB9714;

  return MAGActionHandler.send(_:)(v0 + 16);
}

uint64_t sub_257CB9714()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  sub_257C6DA74(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_257CB9854;
  }

  else
  {
    v5 = sub_257C6D490;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257CB9854()
{
  v1 = v0[12];

  sub_257ECD3A0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete DetectFurnitureIntent: %@", v7, 0xCu);
    sub_257C11B14(v8);
    MEMORY[0x259C74820](v8, -1, -1);
    MEMORY[0x259C74820](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_257CB99D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8F4600 != -1)
  {
    swift_once();
  }

  v2 = sub_257ECCA30();
  v3 = __swift_project_value_buffer(v2, qword_27F912F40);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257CB9A78(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  v1[3] = swift_task_alloc();
  v1[4] = sub_257ECF900();
  v1[5] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CB9B4C, v3, v2);
}

uint64_t sub_257CB9B4C()
{
  v1 = *(v0 + 24);

  v2 = sub_257ECF930();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_257ECF8F0();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D85700];
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  sub_257C3FBD4(0, 0, v1, &unk_257EE0440, v4);

  sub_257ECC350();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_257CB9C60(uint64_t a1)
{
  v2 = sub_257CB9488();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_257CB9CAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257BE3DE0;

  return sub_257CB9540();
}

void sub_257CB9D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2 == 1)
  {
    v5 = sub_257C03FE4(a3);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v3;
      v14 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_257C07D0C();
        v9 = v14;
      }

      sub_257C0667C(v7, v9);
      *v4 = v9;
    }
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_257EC6B40(a1, a2, a3, v13);
    *v3 = v15;
  }
}

uint64_t sub_257CB9E30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5728, &qword_257EDA690);
  MEMORY[0x28223BE20](v6 - 8, v7, v8, v9, v10);
  v12 = &v29 - v11;
  v13 = sub_257ECCCF0();
  v14 = *(v13 - 8);
  v19 = MEMORY[0x28223BE20](v13, v15, v16, v17, v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v13, v19) == 1)
  {
    sub_257BE4084(a1, &qword_27F8F5728, &qword_257EDA690);
    v22 = sub_257C040A0(a2);
    if (v23)
    {
      v24 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *v3;
      v30 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_257C08174();
        v26 = v30;
      }

      (*(v14 + 32))(v12, *(v26 + 56) + *(v14 + 72) * v24, v13);
      sub_257C06BDC(v24, v26);
      *v3 = v26;
      (*(v14 + 56))(v12, 0, 1, v13);
    }

    else
    {
      (*(v14 + 56))(v12, 1, 1, v13);
    }

    return sub_257BE4084(v12, &qword_27F8F5728, &qword_257EDA690);
  }

  else
  {
    (*(v14 + 32))(v21, a1, v13);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v3;
    result = sub_257EC6CA0(v21, a2, v27);
    *v3 = v30;
  }

  return result;
}

uint64_t sub_257CBA080(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  if ((a1 & 0x100000000) != 0)
  {
    result = sub_257C09E78();
    if (v8)
    {
      v9 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_257C085AC();
        v11 = v13;
      }

      result = sub_257C06F3C(v9, v11);
      *v3 = v11;
    }
  }

  else
  {
    v5 = *&a1;
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_257EC7174(v4, v6, v5);
    *v2 = v12;
  }

  return result;
}

void sub_257CBA13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_257EC798C(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    v9 = sub_257C040E4(a3);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        sub_257C08F9C();
        v13 = v15;
      }

      sub_257C070D0(v11, v13);
      *v4 = v13;
    }
  }
}

uint64_t MAGOutputEngine.__allocating_init(audioService:audioSessionAutomaticallyDeactivatesAfterSpeaking:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = swift_allocObject();
  MAGOutputEngine.init(audioService:audioSessionAutomaticallyDeactivatesAfterSpeaking:)(a1, v2);
  return v4;
}

char *MAGOutputEngine.init(audioService:audioSessionAutomaticallyDeactivatesAfterSpeaking:)(uint64_t a1, int a2)
{
  v3 = v2;
  v38 = a2;
  v37 = a1;
  v36 = sub_257ECFD20();
  v4 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v5, v6, v7, v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v16 = sub_257ECF190();
  MEMORY[0x28223BE20](v16 - 8, v17, v18, v19, v20);
  v35[1] = sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  sub_257ECF150();
  v39 = MEMORY[0x277D84F90];
  sub_257CC8834(&qword_281543F30, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000, &unk_257EDC200);
  sub_257BD2D4C(&unk_281543FA0, &unk_27F8F8000, &unk_257EDC200, MEMORY[0x277D83970]);
  sub_257ED0180();
  (*(v4 + 104))(v10, *MEMORY[0x277D85260], v36);
  *(v2 + 2) = sub_257ECFD80();
  sub_257ECD330();
  *(v2 + 3) = sub_257ECD320();
  sub_257ECD2C0();
  *(v2 + 4) = sub_257ECD2B0();
  v21 = MEMORY[0x277D84F90];
  *(v2 + 5) = MEMORY[0x277D84F90];
  v22 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__previousEvent;
  v23 = type metadata accessor for MAGOutputEvent(0);
  v24 = *(*(v23 - 8) + 56);
  v24(&v3[v22], 1, 1, v23);
  v24(&v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__currentEvent], 1, 1, v23);
  v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isProcessingEventQueue] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isElligbleForNewEvent] = 0;
  v25 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine_observerStream;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7188, &qword_257EE0458);
  swift_allocObject();
  *&v3[v25] = sub_257ECD2E0();
  v26 = &v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__outputEngineTextAnnouncement];
  *v26 = 0;
  *(v26 + 1) = 0xE000000000000000;
  v27 = &v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__outputEngineVQAAnnouncement];
  *v27 = 0;
  *(v27 + 1) = 0xE000000000000000;
  v28 = &v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__outputEngineDocumentAnnouncement];
  *v28 = 0;
  *(v28 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___speechSynthesizer] = 0;
  v24(&v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__lastSpokenEvent], 1, 1, v23);
  v29 = &v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__lastSpeechContent];
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *(v29 + 4) = 0;
  v30 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine_supportHaptics;
  LOBYTE(v24) = [objc_msgSend(objc_opt_self() capabilitiesForHardware)];
  swift_unknownObjectRelease();
  v3[v30] = v24;
  v31 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine_cachedSoundEffects;
  *&v3[v31] = sub_257BE9C08(v21);
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___audioEngine] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___hapticEngine] = 1;
  v32 = sub_257BE9CFC(&unk_286904AB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F71E0, &qword_257EE0460);
  swift_arrayDestroy();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__eventTextDictionary] = v32;
  v33 = sub_257BE9CFC(&unk_286904B60);
  sub_257BE4084(&unk_286904B80, &qword_27F8F71E0, &qword_257EE0460);
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__advancedEventTextDictionary] = v33;
  sub_257ECCF10();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine_audioService] = v37;
  v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine_audioSessionAutomaticallyDeactivatesAfterSpeaking] = v38;
  return v3;
}

double sub_257CBA778(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3, v4, v5, v6);
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
    sub_257ECCED0();
  }

  return result;
}

double sub_257CBA8AC(uint64_t a1)
{
  if (*(v1 + 32) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3, v4, v5, v6);
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
    sub_257ECCED0();
  }

  return result;
}

double sub_257CBA9E0(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_257D56814(v3, a1);

  if (v4)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7, v8, v9, v10);
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
    sub_257ECCED0();
  }

  return result;
}

void sub_257CBAB28(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isProcessingEventQueue) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isProcessingEventQueue) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3, v4, v5, v6);
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
    sub_257ECCED0();
  }
}

void sub_257CBAC40(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isElligbleForNewEvent;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v5, v6, v7, v8);
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
    sub_257ECCED0();
  }
}

double sub_257CBADBC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = (v5 + *a3);
  v9 = *v8 == a1 && v8[1] == a2;
  if (v9 || (sub_257ED0640() & 1) != 0)
  {
    *v8 = a1;
    v8[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v12, v13, v14, v15);
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
    sub_257ECCED0();
  }

  return result;
}

double sub_257CBAF74(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  swift_beginAccess();

  sub_257D77D44(v7, a1);
  v9 = v8;

  if (v9)
  {
    *(v4 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v12, v13, v14, v15);
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
    sub_257ECCED0();
  }

  return result;
}

uint64_t sub_257CBB0BC()
{
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  return sub_257ECC3F0();
}

uint64_t sub_257CBB160@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  *a2 = *(v3 + 24);
  return sub_257ECC3F0();
}

uint64_t sub_257CBB20C()
{
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  return sub_257ECC3F0();
}

uint64_t sub_257CBB2B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  *a2 = *(v3 + 32);
  return sub_257ECC3F0();
}

uint64_t sub_257CBB35C()
{
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  swift_beginAccess();
}

uint64_t sub_257CBB414@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  swift_beginAccess();
  *a2 = *(v3 + 40);
}

void sub_257CBB4D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
}

uint64_t sub_257CBB58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50, &unk_257EDEFA0);
  MEMORY[0x28223BE20](v7 - 8, v8, v9, v10, v11);
  v13 = &v15 - v12;
  sub_257BE401C(a1, &v15 - v12, &qword_27F8F6D50, &unk_257EDEFA0);
  return a5(v13);
}

double sub_257CBB668(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50, &unk_257EDEFA0);
  MEMORY[0x28223BE20](v6 - 8, v7, v8, v9, v10);
  v12 = &v15 - v11;
  sub_257BE401C(a2, &v15 - v11, &qword_27F8F6D50, &unk_257EDEFA0);
  v13 = *a3;
  swift_beginAccess();
  sub_257C0DA64(v12, a1 + v13, &qword_27F8F6D50, &unk_257EDEFA0);
  swift_endAccess();
  return result;
}

uint64_t sub_257CBB754()
{
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  return *(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isProcessingEventQueue);
}

void sub_257CBB7FC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  *a2 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isProcessingEventQueue);
}

uint64_t sub_257CBB90C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  v4 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isElligbleForNewEvent;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_257CBB9F8()
{
  swift_getKeyPath();
  v3 = v0;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  v1 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isElligbleForNewEvent;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t (*sub_257CBBAB4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  *v4 = v1;
  swift_getKeyPath();
  sub_257ECCF00();

  v4[7] = sub_257CBB8AC(v4);
  return sub_257CBBBEC;
}

void sub_257CBBBEC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_257ECCEF0();

  free(v1);
}

void sub_257CBBC80(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50, &unk_257EDEFA0);
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7, v8);
  v245 = v231 - v9;
  v244 = type metadata accessor for MAGOutputEvent(0);
  v249 = *(v244 - 8);
  MEMORY[0x28223BE20](v244, v10, v11, v12, v13);
  v237 = v231 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  v236 = v231 - v20;
  MEMORY[0x28223BE20](v21, v22, v23, v24, v25);
  v248 = v231 - v26;
  MEMORY[0x28223BE20](v27, v28, v29, v30, v31);
  v33 = v231 - v32;
  MEMORY[0x28223BE20](v34, v35, v36, v37, v38);
  v240 = v231 - v39;
  MEMORY[0x28223BE20](v40, v41, v42, v43, v44);
  v243 = v231 - v45;
  MEMORY[0x28223BE20](v46, v47, v48, v49, v50);
  v239 = v231 - v51;
  MEMORY[0x28223BE20](v52, v53, v54, v55, v56);
  v238 = v231 - v57;
  MEMORY[0x28223BE20](v58, v59, v60, v61, v62);
  v64 = v231 - v63;
  MEMORY[0x28223BE20](v65, v66, v67, v68, v69);
  v71 = v231 - v70;
  v253 = sub_257ECDA30();
  v72 = *(v253 - 8);
  MEMORY[0x28223BE20](v253, v73, v74, v75, v76);
  v78 = v231 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79, v80, v81, v82, v83);
  v246 = v231 - v84;
  MEMORY[0x28223BE20](v85, v86, v87, v88, v89);
  v247 = v231 - v90;
  MEMORY[0x28223BE20](v91, v92, v93, v94, v95);
  v250 = v231 - v96;
  MEMORY[0x28223BE20](v97, v98, v99, v100, v101);
  v242 = v231 - v102;
  MEMORY[0x28223BE20](v103, v104, v105, v106, v107);
  v109 = v231 - v108;
  sub_257ECD500();
  sub_257CC93D0(a1, v71, type metadata accessor for MAGOutputEvent);
  sub_257CC93D0(a1, v64, type metadata accessor for MAGOutputEvent);
  swift_retain_n();
  v110 = sub_257ECDA20();
  v111 = sub_257ECFBD0();
  v112 = os_log_type_enabled(v110, v111);
  v252 = v72;
  v241 = v78;
  v235 = v33;
  if (v112)
  {
    v113 = swift_slowAlloc();
    v251 = swift_slowAlloc();
    v256 = v251;
    *v113 = 136315650;
    LODWORD(v234) = v111;
    v114 = sub_257ECCCA0();
    v115 = a1;
    v117 = v116;
    sub_257CC9438(v71, type metadata accessor for MAGOutputEvent);
    v118 = sub_257BF1FC8(v114, v117, &v256);
    a1 = v115;
    v119 = v253;

    *(v113 + 4) = v118;
    *(v113 + 12) = 2080;
    v120 = MAGOutputEvent.description.getter();
    v122 = v121;
    sub_257CC9438(v64, type metadata accessor for MAGOutputEvent);
    v123 = sub_257BF1FC8(v120, v122, &v256);

    *(v113 + 14) = v123;
    *(v113 + 22) = 2048;
    swift_getKeyPath();
    v255[0] = v2;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
    sub_257ECCEE0();

    swift_beginAccess();
    v124 = *(*(v2 + 40) + 16);

    *(v113 + 24) = v124;

    _os_log_impl(&dword_257BAC000, v110, v234, "%s: Will schedule event: %s. eventQueue.count=%ld", v113, 0x20u);
    v125 = v251;
    swift_arrayDestroy();
    MEMORY[0x259C74820](v125, -1, -1);
    v126 = v113;
    v127 = v252;
    MEMORY[0x259C74820](v126, -1, -1);

    v128 = *(v127 + 8);
    v129 = v109;
    v130 = v119;
  }

  else
  {

    sub_257CC9438(v64, type metadata accessor for MAGOutputEvent);
    sub_257CC9438(v71, type metadata accessor for MAGOutputEvent);
    v128 = *(v72 + 8);
    v129 = v109;
    v130 = v253;
  }

  v251 = v128;
  v128(v129, v130);
  v131 = MAGOutputEvent.replacesEventsWithSameCategory.getter();
  if (v131)
  {
    MEMORY[0x28223BE20](v131, v132, v133, v134, v135);
    v231[-2] = a1;
    swift_getKeyPath();
    v136 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine___observationRegistrar;
    v256 = v2;
    v137 = sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
    sub_257ECCEE0();

    v256 = v2;
    swift_getKeyPath();
    sub_257ECCF00();

    swift_beginAccess();
    v138 = sub_257CC83E8(sub_257CC8AA0, &v231[-4]);
    v139 = *(*(v2 + 40) + 16);
    if (v139 < v138)
    {
      __break(1u);
      return;
    }

    v234 = 0;
    sub_257CC8744(v138, v139, sub_257BFCC48, sub_257E53A34);
    swift_endAccess();
    v256 = v2;
    swift_getKeyPath();
    v233 = v137;
    sub_257ECCEF0();

    v140 = v242;
    sub_257ECD500();
    v141 = v238;
    sub_257CC93D0(a1, v238, type metadata accessor for MAGOutputEvent);
    v142 = v239;
    sub_257CC93D0(a1, v239, type metadata accessor for MAGOutputEvent);
    swift_retain_n();
    v143 = sub_257ECDA20();
    v144 = sub_257ECFBD0();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = v141;
      v146 = swift_slowAlloc();
      v232 = swift_slowAlloc();
      v256 = v232;
      *v146 = 136315650;
      v147 = sub_257ECCCA0();
      v231[1] = v136;
      v148 = v147;
      v150 = v149;
      sub_257CC9438(v145, type metadata accessor for MAGOutputEvent);
      v151 = sub_257BF1FC8(v148, v150, &v256);

      *(v146 + 4) = v151;
      *(v146 + 12) = 2080;
      MAGOutputEvent.category.getter(v255);
      v152 = MAGOutputEventCategory.rawValue.getter();
      v154 = v153;
      v155 = v253;
      sub_257CC9438(v142, type metadata accessor for MAGOutputEvent);
      v156 = sub_257BF1FC8(v152, v154, &v256);

      *(v146 + 14) = v156;
      *(v146 + 22) = 2048;
      swift_getKeyPath();
      v255[0] = v2;
      sub_257ECCEE0();

      v157 = *(*(v2 + 40) + 16);

      *(v146 + 24) = v157;

      _os_log_impl(&dword_257BAC000, v143, v144, "%s: Did remove events in queue with category: %s. eventQueue.count=%ld", v146, 0x20u);
      v158 = v232;
      swift_arrayDestroy();
      MEMORY[0x259C74820](v158, -1, -1);
      MEMORY[0x259C74820](v146, -1, -1);

      v159 = v242;
      v160 = v155;
    }

    else
    {

      sub_257CC9438(v142, type metadata accessor for MAGOutputEvent);
      sub_257CC9438(v141, type metadata accessor for MAGOutputEvent);
      v159 = v140;
      v160 = v253;
    }

    v131 = v251(v159, v160);
  }

  v161 = v231;
  MEMORY[0x28223BE20](v131, v132, v133, v134, v135);
  v231[-2] = a1;
  KeyPath = swift_getKeyPath();
  v256 = v2;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  v256 = v2;
  swift_getKeyPath();
  sub_257ECCF00();

  swift_beginAccess();
  v163 = (v2 + 40);
  v164 = sub_257CC83E8(sub_257CC889C, &v231[-4]);
  v165 = *(*(v2 + 40) + 16);
  if (v165 < v164)
  {
    __break(1u);
  }

  else
  {
    sub_257CC8744(v164, v165, sub_257BFCC48, sub_257E53A34);
    swift_endAccess();
    v256 = v2;
    swift_getKeyPath();
    sub_257ECCEF0();

    v166 = v250;
    sub_257ECD500();
    v167 = v243;
    sub_257CC93D0(a1, v243, type metadata accessor for MAGOutputEvent);
    swift_retain_n();
    v168 = sub_257ECDA20();
    v169 = sub_257ECFBD0();
    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      v256 = v171;
      *v170 = 136315650;
      v172 = sub_257ECCCA0();
      v173 = v167;
      v175 = v174;
      sub_257CC9438(v173, type metadata accessor for MAGOutputEvent);
      v176 = sub_257BF1FC8(v172, v175, &v256);

      *(v170 + 4) = v176;
      *(v170 + 12) = 2080;
      v177 = MEMORY[0x259C72340](MEMORY[0x277D84F90], &type metadata for MAGOutputEventCategory);
      v179 = sub_257BF1FC8(v177, v178, &v256);

      *(v170 + 14) = v179;
      *(v170 + 22) = 2048;
      swift_getKeyPath();
      v255[0] = v2;
      sub_257ECCEE0();

      v180 = *(*(v2 + 40) + 16);

      *(v170 + 24) = v180;

      _os_log_impl(&dword_257BAC000, v168, v169, "%s: Did remove events in queue with categories: %s. eventQueue.count=%ld", v170, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C74820](v171, -1, -1);
      MEMORY[0x259C74820](v170, -1, -1);

      v181 = v250;
    }

    else
    {

      sub_257CC9438(v167, type metadata accessor for MAGOutputEvent);
      v181 = v166;
    }

    v251(v181, v253);
    v161 = v248;
    KeyPath = v249;
    v182 = v247;
    v183 = v245;
    swift_getKeyPath();
    v256 = v2;
    sub_257ECCEE0();

    v184 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__currentEvent;
    swift_beginAccess();
    sub_257BE401C(v2 + v184, v183, &qword_27F8F6D50, &unk_257EDEFA0);
    if ((*(KeyPath + 48))(v183, 1, v244) == 1)
    {
      sub_257BE4084(v183, &qword_27F8F6D50, &unk_257EDEFA0);
    }

    else
    {
      v185 = v240;
      sub_257CC88E8(v183, v240);
      MAGOutputEvent.category.getter(v255);
      if (MAGOutputEvent.interruptsSpeechEventsWithCategory(_:)(v255))
      {
        sub_257ECD500();
        v186 = v235;
        sub_257CC93D0(a1, v235, type metadata accessor for MAGOutputEvent);
        v187 = v182;
        v188 = sub_257ECDA20();
        v189 = sub_257ECFBD0();
        if (os_log_type_enabled(v188, v189))
        {
          v190 = swift_slowAlloc();
          v250 = v190;
          v191 = swift_slowAlloc();
          v255[0] = v191;
          *v190 = 136315138;
          v192 = sub_257ECCCA0();
          v194 = v193;
          sub_257CC9438(v186, type metadata accessor for MAGOutputEvent);
          v195 = sub_257BF1FC8(v192, v194, v255);
          v161 = v248;

          v196 = v250;
          *(v250 + 4) = v195;
          v197 = v196;
          _os_log_impl(&dword_257BAC000, v188, v189, "%s: Will request interrupt speech, as required by event to be scheduled", v196, 0xCu);
          v198 = __swift_destroy_boxed_opaque_existential_0(v191);
          v199 = v191;
          KeyPath = v249;
          MEMORY[0x259C74820](v199, -1, -1, v198);
          MEMORY[0x259C74820](v197, -1, -1);

          v200 = v247;
        }

        else
        {

          sub_257CC9438(v186, type metadata accessor for MAGOutputEvent);
          v200 = v187;
        }

        v251(v200, v253);
        swift_getKeyPath();
        v255[0] = v2;
        sub_257ECCEE0();

        sub_257ECC3F0();
        sub_257ECC3F0();
        sub_257ECD2A0();

        v201 = v240;
      }

      else
      {
        v201 = v185;
      }

      sub_257CC9438(v201, type metadata accessor for MAGOutputEvent);
    }

    sub_257CC93D0(a1, v161, type metadata accessor for MAGOutputEvent);
    swift_getKeyPath();
    v255[0] = v2;
    sub_257ECCEE0();

    v255[0] = v2;
    swift_getKeyPath();
    sub_257ECCF00();

    swift_beginAccess();
    v163 = *(v2 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 40) = v163;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_25;
    }
  }

  v163 = sub_257BFCC48(0, v163[2] + 1, 1, v163);
  *(v2 + 40) = v163;
LABEL_25:
  v204 = v163[2];
  v203 = v163[3];
  if (v204 >= v203 >> 1)
  {
    v163 = sub_257BFCC48((v203 > 1), v204 + 1, 1, v163);
  }

  v163[2] = v204 + 1;
  sub_257CC88E8(v161, v163 + ((*(KeyPath + 80) + 32) & ~*(KeyPath + 80)) + *(KeyPath + 72) * v204);
  *(v2 + 40) = v163;
  swift_endAccess();
  v255[0] = v2;
  swift_getKeyPath();
  sub_257ECCEF0();

  swift_getKeyPath();
  v255[0] = v2;
  sub_257ECCEE0();

  if (*(v2 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isProcessingEventQueue))
  {
    v205 = v241;
    sub_257ECD500();
    v206 = v237;
    sub_257CC93D0(a1, v237, type metadata accessor for MAGOutputEvent);
    swift_retain_n();
    v207 = sub_257ECDA20();
    v208 = sub_257ECFBD0();
    if (os_log_type_enabled(v207, v208))
    {
      v209 = v206;
      v210 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      v255[0] = v211;
      *v210 = 136315394;
      v212 = sub_257ECCCA0();
      v214 = v213;
      sub_257CC9438(v209, type metadata accessor for MAGOutputEvent);
      v215 = sub_257BF1FC8(v212, v214, v255);

      *(v210 + 4) = v215;
      *(v210 + 12) = 2048;
      swift_getKeyPath();
      v254 = v2;
      sub_257ECCEE0();

      v216 = *(*(v2 + 40) + 16);

      *(v210 + 14) = v216;

      _os_log_impl(&dword_257BAC000, v207, v208, "%s: Did schedule event. eventQueue.count=%ld. isProcessingEventQueue=true", v210, 0x16u);
      v217 = __swift_destroy_boxed_opaque_existential_0(v211);
      MEMORY[0x259C74820](v211, -1, -1, v217);
      MEMORY[0x259C74820](v210, -1, -1);

      v218 = v241;
    }

    else
    {

      sub_257CC9438(v206, type metadata accessor for MAGOutputEvent);
      v218 = v205;
    }

    v251(v218, v253);
  }

  else
  {
    sub_257ECD500();
    v219 = v236;
    sub_257CC93D0(a1, v236, type metadata accessor for MAGOutputEvent);
    swift_retain_n();
    v220 = sub_257ECDA20();
    v221 = sub_257ECFBD0();
    if (os_log_type_enabled(v220, v221))
    {
      v222 = v219;
      v223 = swift_slowAlloc();
      v224 = swift_slowAlloc();
      v255[0] = v224;
      *v223 = 136315394;
      v225 = sub_257ECCCA0();
      v227 = v226;
      sub_257CC9438(v222, type metadata accessor for MAGOutputEvent);
      v228 = sub_257BF1FC8(v225, v227, v255);

      *(v223 + 4) = v228;
      *(v223 + 12) = 2048;
      swift_getKeyPath();
      v254 = v2;
      sub_257ECCEE0();

      v229 = *(*(v2 + 40) + 16);

      *(v223 + 14) = v229;

      _os_log_impl(&dword_257BAC000, v220, v221, "%s: Did schedule event. eventQueue.count=%ld. isProcessingEventQueue=false so will call processEventQueue() (async)", v223, 0x16u);
      v230 = __swift_destroy_boxed_opaque_existential_0(v224);
      MEMORY[0x259C74820](v224, -1, -1, v230);
      MEMORY[0x259C74820](v223, -1, -1);
    }

    else
    {

      sub_257CC9438(v219, type metadata accessor for MAGOutputEvent);
    }

    v251(v246, v253);
    swift_getKeyPath();
    v255[0] = v2;
    sub_257ECCEE0();

    sub_257ECC3F0();
    sub_257ECC3F0();
    sub_257ECD310();
  }
}

uint64_t sub_257CBD3B8()
{
  MAGOutputEvent.category.getter(&v7);
  MAGOutputEvent.category.getter(&v6);
  v0 = MAGOutputEventCategory.rawValue.getter();
  v2 = v1;
  if (v0 == MAGOutputEventCategory.rawValue.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_257ED0640();
  }

  return v4 & 1;
}

uint64_t sub_257CBD48C()
{
  sub_257ECF900();
  *(v0 + 24) = sub_257ECF8F0();
  v2 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CBD520, v2, v1);
}

uint64_t sub_257CBD520()
{

  *(v0 + 32) = sub_257CC211C();
  v3 = (*MEMORY[0x277D701C8] + MEMORY[0x277D701C8]);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_257CBD5D4;

  return v3();
}

uint64_t sub_257CBD5D4()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_257CBD6E0()
{
  v0[2] = sub_257ECF900();
  v0[3] = sub_257ECF8F0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_257CBD78C;

  return sub_257CBD8C8();
}

uint64_t sub_257CBD78C()
{

  v1 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CC9EBC, v1, v0);
}

uint64_t sub_257CBD8C8()
{
  v1[39] = v0;
  v2 = sub_257ECF120();
  v1[40] = v2;
  v1[41] = *(v2 - 8);
  v1[42] = swift_task_alloc();
  v3 = sub_257ECF190();
  v1[43] = v3;
  v1[44] = *(v3 - 8);
  v1[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  v1[46] = swift_task_alloc();
  v4 = sub_257ECCB70();
  v1[47] = v4;
  v1[48] = *(v4 - 8);
  v1[49] = swift_task_alloc();
  v1[50] = type metadata accessor for MAGOutputEngine.Event(0);
  v1[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50, &unk_257EDEFA0);
  v1[52] = swift_task_alloc();
  v5 = type metadata accessor for MAGOutputEvent(0);
  v1[53] = v5;
  v6 = *(v5 - 8);
  v1[54] = v6;
  v1[55] = *(v6 + 64);
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v7 = sub_257ECDA30();
  v1[65] = v7;
  v1[66] = *(v7 - 8);
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  sub_257ECF900();
  v1[75] = sub_257ECF8F0();
  v9 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CBDC88, v9, v8);
}

uint64_t sub_257CBDC88()
{
  v209 = v0;
  v1 = v0;
  v2 = v0[39];
  swift_getKeyPath();
  v0[23] = v2;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  v207 = v0 + 23;
  sub_257ECCEE0();

  if (*(v2 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isProcessingEventQueue) == 1)
  {

    sub_257ECD500();
    v3 = sub_257ECDA20();
    v4 = sub_257ECFBD0();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[74];
    v7 = v0[66];
    v8 = v1[65];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_257BAC000, v3, v4, "Will abort processEventQueue(). isProcessingEventQueue=true", v9, 2u);
      MEMORY[0x259C74820](v9, -1, -1);
    }

    (*(v7 + 8))(v6, v8);
    goto LABEL_58;
  }

  v201 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isProcessingEventQueue;
  v10 = v0[39];
  swift_getKeyPath();
  v11 = swift_task_alloc();
  *(v11 + 16) = v10;
  *(v11 + 24) = 1;
  v1[24] = v10;
  sub_257ECCED0();

  swift_getKeyPath();
  v1[25] = v10;
  sub_257ECCEE0();

  swift_beginAccess();
  if (*(*(v10 + 40) + 16))
  {
    v12 = v1[39];
    swift_getKeyPath();
    v1[26] = v12;
    sub_257ECCEE0();

    v1[27] = v12;
    swift_getKeyPath();
    sub_257ECCF00();

    result = swift_beginAccess();
    v14 = *(v10 + 40);
    if (!*(v14 + 16))
    {
      __break(1u);
      return result;
    }

    log = v1[64];
    v202 = v1[63];
    v204 = v1[62];
    v15 = v1[54];
    v197 = v1[53];
    v16 = v1[52];
    v17 = v1[39];
    v188 = *(v15 + 80);
    sub_257CC93D0(v14 + ((v188 + 32) & ~v188), log, type metadata accessor for MAGOutputEvent);
    v189 = v10;
    sub_257CC8744(0, 1, sub_257BFCC48, sub_257E53A34);
    swift_endAccess();
    v1[28] = v17;
    swift_getKeyPath();
    sub_257ECCEF0();

    swift_getKeyPath();
    v1[29] = v17;
    v18 = v2;
    sub_257ECCEE0();

    v19 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__currentEvent;
    swift_beginAccess();
    sub_257BE401C(v17 + v19, v16, &qword_27F8F6D50, &unk_257EDEFA0);
    sub_257CBB550(v16);
    sub_257CC93D0(log, v16, type metadata accessor for MAGOutputEvent);
    (*(v15 + 56))(v16, 0, 1, v197);
    sub_257CBB640(v16);
    sub_257ECD500();
    sub_257CC93D0(log, v202, type metadata accessor for MAGOutputEvent);
    sub_257CC93D0(log, v204, type metadata accessor for MAGOutputEvent);
    swift_retain_n();
    v20 = sub_257ECDA20();
    v205 = sub_257ECFBD0();
    v21 = os_log_type_enabled(v20, v205);
    v22 = v1[73];
    v23 = v1[66];
    v24 = v1[65];
    v26 = v1[62];
    v25 = v1[63];
    v203 = v1;
    v27 = v1[39];
    v199 = v18;
    if (v21)
    {
      v28 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      v208[0] = v192;
      *v28 = 136315650;
      v195 = v24;
      v198 = v22;
      v29 = sub_257ECCCA0();
      v31 = v30;
      sub_257CC9438(v25, type metadata accessor for MAGOutputEvent);
      v32 = sub_257BF1FC8(v29, v31, v208);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v33 = MAGOutputEvent.description.getter();
      v35 = v34;
      sub_257CC9438(v26, type metadata accessor for MAGOutputEvent);
      v36 = sub_257BF1FC8(v33, v35, v208);

      *(v28 + 14) = v36;
      *(v28 + 22) = 2048;
      swift_getKeyPath();
      v207[14] = v27;
      sub_257ECCEE0();

      v37 = *(*(v189 + 40) + 16);

      *(v28 + 24) = v37;

      _os_log_impl(&dword_257BAC000, v20, v205, "%s: Will process event: %s. after removal eventQueue.count=%ld", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C74820](v192, -1, -1);
      MEMORY[0x259C74820](v28, -1, -1);

      v38 = *(v23 + 8);
      v40 = v195;
      v39 = v198;
    }

    else
    {

      sub_257CC9438(v26, type metadata accessor for MAGOutputEvent);
      sub_257CC9438(v25, type metadata accessor for MAGOutputEvent);
      v38 = *(v23 + 8);
      v39 = v22;
      v40 = v24;
    }

    v206 = v38;
    v38(v39, v40);
    v49 = v1[64];
    v50 = v1[61];
    v51 = v1[51];
    sub_257CC93D0(v49, v51, type metadata accessor for MAGOutputEvent);
    swift_storeEnumTagMultiPayload();
    sub_257ECD2F0();
    sub_257CC9438(v51, type metadata accessor for MAGOutputEngine.Event);
    sub_257ECD500();
    sub_257CC93D0(v49, v50, type metadata accessor for MAGOutputEvent);
    v52 = sub_257ECDA20();
    v53 = sub_257ECFBD0();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v1[72];
    v56 = v1[65];
    v57 = v1[61];
    if (v54)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v208[0] = v59;
      *v58 = 136315138;
      v60 = sub_257ECCCA0();
      v62 = v61;
      sub_257CC9438(v57, type metadata accessor for MAGOutputEvent);
      v63 = sub_257BF1FC8(v60, v62, v208);

      *(v58 + 4) = v63;
      _os_log_impl(&dword_257BAC000, v52, v53, "%s: Will update display visuals", v58, 0xCu);
      v64 = __swift_destroy_boxed_opaque_existential_0(v59);
      v65 = v59;
      v1 = v203;
      MEMORY[0x259C74820](v65, -1, -1, v64);
      MEMORY[0x259C74820](v58, -1, -1);
    }

    else
    {

      sub_257CC9438(v57, type metadata accessor for MAGOutputEvent);
    }

    v206(v55, v56);
    v66 = v18;
    MAGOutputEvent.category.getter(v208);
    v68 = v207;
    if (MAGOutputEventCategory.rawValue.getter() == 0x746E656D75636F64 && v67 == 0xEF676E696D617246)
    {
    }

    else
    {
      v69 = sub_257ED0640();

      if ((v69 & 1) == 0)
      {
        v72 = v1[39];
        sub_257CC6694();
        swift_getKeyPath();
        v1[30] = v72;
        sub_257ECCEE0();
        v71 = &OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__outputEngineTextAnnouncement;
        goto LABEL_24;
      }
    }

    v70 = v1[39];
    sub_257CC7BF8();
    swift_getKeyPath();
    v1[36] = v70;
    sub_257ECCEE0();
    v71 = &OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__outputEngineDocumentAnnouncement;
LABEL_24:

    v73 = v1[51];
    v74 = (v1[39] + *v71);
    v75 = v74[1];
    *v73 = *v74;
    v73[1] = v75;
    swift_storeEnumTagMultiPayload();

    sub_257ECD2F0();
    sub_257CC9438(v73, type metadata accessor for MAGOutputEngine.Event);
    MAGOutputEvent.soundEffect.getter(v208);
    v76 = LOBYTE(v208[0]);
    if (LOBYTE(v208[0]) == 20)
    {
      goto LABEL_37;
    }

    v77 = v1[39];
    v78 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine_cachedSoundEffects;
    swift_beginAccess();
    v79 = *(v77 + v78);
    if (*(v79 + 16))
    {

      v80 = sub_257C04470(v76);
      if (v81)
      {
        v82 = *(*(v79 + 56) + 8 * v80);

        v196 = v82;
LABEL_33:
        v97 = v68 - 21;
        v98 = v1[64];
        v99 = v1[60];
        sub_257ECD500();
        sub_257CC93D0(v98, v99, type metadata accessor for MAGOutputEvent);
        v100 = sub_257ECDA20();
        v101 = v1;
        v102 = sub_257ECFBD0();
        v103 = os_log_type_enabled(v100, v102);
        v104 = v101[71];
        v105 = v101[65];
        v106 = v101[60];
        if (v103)
        {
          v107 = swift_slowAlloc();
          v193 = v68 - 21;
          v108 = swift_slowAlloc();
          v208[0] = v108;
          *v107 = 136315138;
          v109 = sub_257ECCCA0();
          v111 = v110;
          sub_257CC9438(v106, type metadata accessor for MAGOutputEvent);
          v112 = sub_257BF1FC8(v109, v111, v208);

          *(v107 + 4) = v112;
          _os_log_impl(&dword_257BAC000, v100, v102, "%s: Will request sound effect for event (async)", v107, 0xCu);
          v113 = __swift_destroy_boxed_opaque_existential_0(v108);
          v114 = v108;
          v97 = v193;
          MEMORY[0x259C74820](v114, -1, -1, v113);
          MEMORY[0x259C74820](v107, -1, -1);
        }

        else
        {

          sub_257CC9438(v106, type metadata accessor for MAGOutputEvent);
        }

        v206(v104, v105);
        v1 = v203;
        v115 = v203[45];
        v116 = v203[42];
        loga = v203[44];
        v194 = v203[43];
        v118 = v203[40];
        v117 = v203[41];
        v119 = v203[39];
        v120 = swift_allocObject();
        *(v120 + 16) = v119;
        *(v120 + 24) = v196;
        v203[6] = sub_257CC9C48;
        v203[7] = v120;
        v203[2] = MEMORY[0x277D85DD0];
        v203[3] = 1107296256;
        v203[4] = sub_257D231C0;
        v203[5] = &block_descriptor_243;
        v121 = _Block_copy(v97);
        sub_257ECC3F0();
        sub_257ECF150();
        v203[35] = MEMORY[0x277D84F90];
        sub_257CC8834(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
        sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
        sub_257ED0180();
        MEMORY[0x259C72880](0, v115, v116, v121);
        _Block_release(v121);

        (*(v117 + 8))(v116, v118);
        (loga[1].isa)(v115, v194);

        v66 = v199;
LABEL_37:
        if (*(v1[39] + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine_supportHaptics) == 1)
        {
          MAGOutputEvent.hapticEffect.getter(v208);
          if (LOBYTE(v208[0]) != 11)
          {
            v122.super.isa = MAGHapticEffect.hapticPattern(duration:volume:)(1.0, 1.0).super.isa;
            if (v123.super.isa)
            {
              v124 = v1[64];
              v125 = v1[56];
              sub_257ECD500();
              sub_257CC93D0(v124, v125, type metadata accessor for MAGOutputEvent);
              v126 = sub_257ECDA20();
              v127 = sub_257ECFBE0();
              v128 = os_log_type_enabled(v126, v127);
              v129 = v1[67];
              v130 = v1[65];
              v131 = v1[56];
              if (v128)
              {
                v132 = swift_slowAlloc();
                v200 = v129;
                v133 = swift_slowAlloc();
                v208[0] = v133;
                *v132 = 136315138;
                v134 = sub_257ECCCA0();
                v136 = v135;
                sub_257CC9438(v131, type metadata accessor for MAGOutputEvent);
                v137 = sub_257BF1FC8(v134, v136, v208);
                v66 = v199;

                *(v132 + 4) = v137;
                _os_log_impl(&dword_257BAC000, v126, v127, "%s: Could not create haptic pattern", v132, 0xCu);
                v138 = __swift_destroy_boxed_opaque_existential_0(v133);
                MEMORY[0x259C74820](v133, -1, -1, v138);
                v139 = v132;
                v1 = v203;
                MEMORY[0x259C74820](v139, -1, -1);

                v140 = v200;
              }

              else
              {

                sub_257CC9438(v131, type metadata accessor for MAGOutputEvent);
                v140 = v129;
              }

              v206(v140, v130);
            }

            else
            {
              isa = v122.super.isa;
              sub_257CC5EEC(v122.super.isa);
            }
          }
        }

        v142 = sub_257CC211C();
        v143 = [v142 isPaused];

        if (v143)
        {
          v144 = v1[64];
          v145 = v1[58];
          sub_257ECD500();
          sub_257CC93D0(v144, v145, type metadata accessor for MAGOutputEvent);
          v146 = sub_257ECDA20();
          v147 = sub_257ECFBD0();
          v148 = os_log_type_enabled(v146, v147);
          v149 = v1[70];
          v150 = v1[65];
          v151 = v1[58];
          if (v148)
          {
            v152 = swift_slowAlloc();
            v153 = swift_slowAlloc();
            v208[0] = v153;
            *v152 = 136315138;
            v154 = sub_257ECCCA0();
            v156 = v155;
            sub_257CC9438(v151, type metadata accessor for MAGOutputEvent);
            v157 = v154;
            v1 = v203;
            v158 = sub_257BF1FC8(v157, v156, v208);
            v66 = v199;

            *(v152 + 4) = v158;
            _os_log_impl(&dword_257BAC000, v146, v147, "%s: Will not speak event. Speech is paused", v152, 0xCu);
            v159 = __swift_destroy_boxed_opaque_existential_0(v153);
            MEMORY[0x259C74820](v153, -1, -1, v159);
            MEMORY[0x259C74820](v152, -1, -1);
          }

          else
          {

            sub_257CC9438(v151, type metadata accessor for MAGOutputEvent);
          }

          v206(v149, v150);
        }

        else
        {
          v160 = v1[64];
          v161 = v1[59];
          v162 = v1[55];
          v163 = v1[39];
          swift_getKeyPath();
          v1[31] = v163;
          sub_257ECCEE0();

          sub_257CC93D0(v160, v161, type metadata accessor for MAGOutputEvent);
          v164 = (v188 + 16) & ~v188;
          v165 = swift_allocObject();
          sub_257CC88E8(v161, v165 + v164);
          *(v165 + ((v164 + v162 + 7) & 0xFFFFFFFFFFFFFFF8)) = v163;
          sub_257ECC3F0();
          sub_257ECC3F0();
          sub_257ECD310();
        }

        v166 = v1[64];
        v167 = v1[57];
        sub_257ECD500();
        sub_257CC93D0(v166, v167, type metadata accessor for MAGOutputEvent);
        v168 = sub_257ECDA20();
        v169 = sub_257ECFBD0();
        v170 = os_log_type_enabled(v168, v169);
        v171 = v1[69];
        v172 = v1[65];
        v173 = v1[57];
        if (v170)
        {
          v174 = swift_slowAlloc();
          v175 = swift_slowAlloc();
          v208[0] = v175;
          *v174 = 136315138;
          v176 = sub_257ECCCA0();
          v178 = v177;
          sub_257CC9438(v173, type metadata accessor for MAGOutputEvent);
          v179 = v176;
          v1 = v203;
          v180 = sub_257BF1FC8(v179, v178, v208);
          v66 = v199;

          *(v174 + 4) = v180;
          _os_log_impl(&dword_257BAC000, v168, v169, "%s: Did process event", v174, 0xCu);
          v181 = __swift_destroy_boxed_opaque_existential_0(v175);
          MEMORY[0x259C74820](v175, -1, -1, v181);
          MEMORY[0x259C74820](v174, -1, -1);
        }

        else
        {

          sub_257CC9438(v173, type metadata accessor for MAGOutputEvent);
        }

        v206(v171, v172);
        v182 = v1[64];
        v183 = v1[51];
        v184 = v1[39];
        sub_257CC93D0(v182, v183, type metadata accessor for MAGOutputEvent);
        swift_storeEnumTagMultiPayload();
        sub_257ECD2F0();
        sub_257CC9438(v183, type metadata accessor for MAGOutputEngine.Event);
        swift_getKeyPath();
        v1[32] = v184;
        sub_257ECCEE0();

        sub_257ECC3F0();
        sub_257ECC3F0();
        sub_257ECD310();

        sub_257CC9438(v182, type metadata accessor for MAGOutputEvent);
        v87 = v201;
        if (*(v66 + v201) == 1)
        {
          v185 = v1[39];
          swift_getKeyPath();
          v186 = swift_task_alloc();
          *(v186 + 16) = v185;
          *(v186 + 24) = 0;
          v1[33] = v185;
          goto LABEL_56;
        }

LABEL_57:
        *(v66 + v87) = 0;
        goto LABEL_58;
      }
    }

    v83 = v1[47];
    v84 = v1[48];
    v85 = v1[46];
    LOBYTE(v208[0]) = v76;
    MAGSoundEffect.url.getter(v85);
    if ((*(v84 + 48))(v85, 1, v83) != 1)
    {
      v90 = v1[49];
      (*(v1[48] + 32))(v90, v1[46], v1[47]);
      v91 = sub_257CC99DC(v90);
      v93 = v1[48];
      v92 = v1[49];
      v94 = v1[47];
      swift_beginAccess();
      v95 = v91;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v208[0] = *(v77 + v78);
      *(v77 + v78) = 0x8000000000000000;
      v196 = v95;
      sub_257EC79F4(v95, v76, isUniquelyReferenced_nonNull_native);
      *(v77 + v78) = v208[0];
      swift_endAccess();
      (*(v93 + 8))(v92, v94);
      v68 = v207;
      goto LABEL_33;
    }

    v86 = v1[46];
    sub_257CC9438(v1[64], type metadata accessor for MAGOutputEvent);
    sub_257BE4084(v86, &qword_27F8F5F30, &qword_257EDA9E0);
    v87 = v201;
    if (*(v199 + v201) != 1)
    {
      goto LABEL_57;
    }

    v88 = v1[39];
    swift_getKeyPath();
    v89 = swift_task_alloc();
    *(v89 + 16) = v88;
    *(v89 + 24) = 0;
    v1[34] = v88;
LABEL_56:
    sub_257ECCED0();

    goto LABEL_58;
  }

  sub_257ECD500();
  v41 = sub_257ECDA20();
  v42 = sub_257ECFBD0();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_257BAC000, v41, v42, "Will abort processEventQueue(). eventQueue is empty", v43, 2u);
    MEMORY[0x259C74820](v43, -1, -1);
  }

  v44 = v1[68];
  v45 = v1[66];
  v46 = v1[65];

  (*(v45 + 8))(v44, v46);
  if (*(v2 + v201) == 1)
  {
    v47 = v1[39];
    swift_getKeyPath();
    v48 = swift_task_alloc();
    *(v48 + 16) = v47;
    *(v48 + 24) = 0;
    v1[38] = v47;
    goto LABEL_56;
  }

  *(v2 + v201) = 0;
LABEL_58:

  v187 = v1[1];

  return v187();
}

uint64_t sub_257CBF684(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  type metadata accessor for MAGOutputEvent(0);
  v2[29] = swift_task_alloc();
  v3 = sub_257ECDA30();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();
  sub_257ECF900();
  v2[33] = sub_257ECF8F0();
  v5 = sub_257ECF8B0();
  v2[34] = v5;
  v2[35] = v4;

  return MEMORY[0x2822009F8](sub_257CBF7A4, v5, v4);
}

uint64_t sub_257CBF7A4(uint64_t a1)
{
  v33 = v1;
  v2 = v1[29];
  v3 = v1[27];
  sub_257ECD500();
  sub_257CC93D0(v3, v2, type metadata accessor for MAGOutputEvent);
  v4 = sub_257ECDA20();
  v5 = sub_257ECFBD0();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[31];
  v8 = v1[32];
  v9 = v1[29];
  v10 = v1[30];
  if (v6)
  {
    v31 = v1[32];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v11 = 136315138;
    v13 = sub_257ECCCA0();
    v15 = v14;
    sub_257CC9438(v9, type metadata accessor for MAGOutputEvent);
    v16 = sub_257BF1FC8(v13, v15, &v32);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_257BAC000, v4, v5, "%s: eventDispatchQueue:dispatch :: speak()", v11, 0xCu);
    v17 = __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x259C74820](v12, -1, -1, v17);
    MEMORY[0x259C74820](v11, -1, -1);

    (*(v7 + 8))(v31, v10);
  }

  else
  {

    sub_257CC9438(v9, type metadata accessor for MAGOutputEvent);
    (*(v7 + 8))(v8, v10);
  }

  if (UIAccessibilityIsVoiceOverRunning())
  {
    v18 = MAGOutputEvent.brailleContent.getter();
    if (v19)
    {
      v1[18] = v18;
      v1[19] = v19;
      v1[20] = 10;
      v1[21] = 0xE100000000000000;
      v1[22] = 32;
      v1[23] = 0xE100000000000000;
      v30 = sub_257BDAB08();
      v29 = MEMORY[0x277D837D0];
      sub_257ED0120();

      v20 = objc_allocWithZone(MEMORY[0x277CE6B98]);
      v21 = sub_257ECF4C0();

      v22 = [v20 initWithString_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FB2D0, &unk_257ED9DE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_257ED6D30;
      v1[24] = sub_257ECF500();
      v1[25] = v24;
      sub_257ED0280();
      *(inited + 96) = MEMORY[0x277D839B0];
      *(inited + 72) = 1;
      sub_257BE88A0(inited);
      swift_setDeallocating();
      sub_257BE4084(inited + 32, &unk_27F8F54A0, &qword_257EE0A60);
      v25 = sub_257ECF3C0();

      [v22 setAttributes_];

      UIAccessibilityPostNotification(*MEMORY[0x277D76438], v22);
    }
  }

  v26 = swift_task_alloc();
  v1[36] = v26;
  *v26 = v1;
  v26[1] = sub_257CBFB7C;
  v27 = v1[27];

  return sub_257CC2C00(v27);
}

uint64_t sub_257CBFB7C()
{
  v1 = *v0;

  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return MEMORY[0x2822009F8](sub_257CBFC9C, v3, v2);
}

uint64_t sub_257CBFC9C()
{
  v10 = v0;

  MAGOutputEvent.category.getter(v9);
  if (MAGOutputEventCategory.rawValue.getter() == 0x65636E756F6E6E61 && v1 == 0xEC000000746E656DLL)
  {
  }

  else
  {
    v2 = sub_257ED0640();

    if ((v2 & 1) == 0)
    {
      v3 = v0[28];
      v4 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isElligbleForNewEvent;
      swift_beginAccess();
      if (*(v3 + v4) == 1)
      {
        *(v3 + v4) = 1;
      }

      else
      {
        v5 = v0[28];
        swift_getKeyPath();
        v6 = swift_task_alloc();
        *(v6 + 16) = v5;
        *(v6 + 24) = 1;
        v0[26] = v5;
        sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
        sub_257ECCED0();
      }
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_257CBFE7C()
{
  v0[2] = sub_257ECF900();
  v0[3] = sub_257ECF8F0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_257CBFF28;

  return sub_257CBD8C8();
}

uint64_t sub_257CBFF28()
{

  v1 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CC0064, v1, v0);
}

uint64_t sub_257CC0064()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_257CC00C4()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD500();
  v8 = sub_257ECDA20();
  v9 = sub_257ECFBC0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_257BAC000, v8, v9, "clearEventQueue() called. removing all events", v10, 2u);
    MEMORY[0x259C74820](v10, -1, -1);
  }

  (*(v1 + 8))(v7, v0);
  return sub_257CBA9E0(MEMORY[0x277D84F90]);
}

void sub_257CC0214()
{
  v1 = v0;
  v76 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v76, v2, v3, v4, v5);
  v69 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  v13 = v67 - v12;
  v75 = type metadata accessor for MAGOutputEvent(0);
  v14 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v15, v16, v17, v18);
  v71 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21, v22, v23, v24);
  v72 = v67 - v25;
  MEMORY[0x28223BE20](v26, v27, v28, v29, v30);
  v74 = v67 - v31;
  MEMORY[0x28223BE20](v32, v33, v34, v35, v36);
  v38 = v67 - v37;
  v39 = sub_257ECDA30();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v41, v42, v43, v44);
  v46 = v67 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD500();
  v47 = sub_257ECDA20();
  v48 = sub_257ECFBC0();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_257BAC000, v47, v48, "clearEventQueueOfActiveEvents() called. removing all 'announcement' events", v49, 2u);
    MEMORY[0x259C74820](v49, -1, -1);
  }

  (*(v40 + 8))(v46, v39);
  swift_getKeyPath();
  v50 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine___observationRegistrar;
  v77 = v1;
  v51 = sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  v77 = v1;
  swift_getKeyPath();
  sub_257ECCF00();

  swift_beginAccess();
  v68 = v1;
  v52 = *(v1 + 40);
  v53 = v52[2];
  if (v53)
  {
    v67[1] = v51;
    v67[2] = v50;
    v54 = 0;
    v55 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v67[3] = 0x8000000257EF7520;
    v73 = 0x8000000257EF74D0;
    v70 = v55;
    v56 = v52 + v55;
    while (1)
    {
      if (v54 >= v52[2])
      {
        __break(1u);
        goto LABEL_29;
      }

      v57 = *(v14 + 72);
      sub_257CC93D0(&v56[v57 * v54], v38, type metadata accessor for MAGOutputEvent);
      sub_257CC93D0(&v38[*(v75 + 20)], v13, type metadata accessor for MAGOutputEvent.EventType);
      swift_getEnumCaseMultiPayload();
      sub_257CC9438(v13, type metadata accessor for MAGOutputEvent.EventType);
      v58 = sub_257ED0640();

      sub_257CC9438(v38, type metadata accessor for MAGOutputEvent);
      if ((v58 & 1) == 0)
      {
        break;
      }

      if (v53 == ++v54)
      {
        v54 = v52[2];
        v59 = v54;
        v60 = v68;
        goto LABEL_27;
      }
    }

    v59 = v54 + 1;
    v61 = v52[2];
    v60 = v68;
    if (v61 - 1 == v54)
    {
      goto LABEL_27;
    }

    v62 = v69;
    v63 = v70 + v57 * v59;
    while (v59 < v61)
    {
      v64 = v74;
      sub_257CC93D0(v52 + v63, v74, type metadata accessor for MAGOutputEvent);
      sub_257CC93D0(v64 + *(v75 + 20), v62, type metadata accessor for MAGOutputEvent.EventType);
      swift_getEnumCaseMultiPayload();
      sub_257CC9438(v62, type metadata accessor for MAGOutputEvent.EventType);
      LOBYTE(v64) = sub_257ED0640();

      sub_257CC9438(v74, type metadata accessor for MAGOutputEvent);
      if (v64)
      {
        if (v59 != v54)
        {
          if ((v54 & 0x8000000000000000) != 0)
          {
            goto LABEL_30;
          }

          v65 = v52[2];
          if (v54 >= v65)
          {
            goto LABEL_31;
          }

          sub_257CC93D0(v52 + v70 + v54 * v57, v72, type metadata accessor for MAGOutputEvent);
          if (v59 >= v65)
          {
            goto LABEL_32;
          }

          sub_257CC93D0(v52 + v63, v71, type metadata accessor for MAGOutputEvent);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v60 + 40) = v52;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v52 = sub_257C7DE24(v52);
            *(v60 + 40) = v52;
          }

          v62 = v69;
          if (v54 >= v52[2])
          {
            goto LABEL_33;
          }

          sub_257CC9498(v71, v52 + v70 + v54 * v57);
          *(v60 + 40) = v52;
          if (v59 >= v52[2])
          {
            goto LABEL_34;
          }

          sub_257CC9498(v72, v52 + v63);
          *(v60 + 40) = v52;
        }

        ++v54;
      }

      ++v59;
      v61 = v52[2];
      v63 += v57;
      if (v59 == v61)
      {
        if (v59 < v54)
        {
          goto LABEL_35;
        }

        goto LABEL_27;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
    v54 = 0;
    v59 = 0;
    v60 = v68;
LABEL_27:
    sub_257CC8744(v54, v59, sub_257BFCC48, sub_257E53A34);
    swift_endAccess();
    v77 = v60;
    swift_getKeyPath();
    sub_257ECCEF0();
  }
}

uint64_t sub_257CC0FB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50, &unk_257EDEFA0);
  MEMORY[0x28223BE20](v1 - 8, v2, v3, v4, v5);
  v7 = &v10[-v6];
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  swift_getKeyPath();
  v11 = v0;
  v12 = v14;
  v13 = v0;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCED0();

  sub_257BE4084(v14, &qword_27F8F6E68, &qword_257EDF540);
  v8 = type metadata accessor for MAGOutputEvent(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  return sub_257CC266C(v7);
}

uint64_t sub_257CC116C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t sub_257CC1220@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  v7 = (v6 + *a3);
  v8 = v7[1];
  *a4 = *v7;
  a4[1] = v8;
}

id sub_257CC12DC(__n128 a1)
{
  v1 = sub_257CC211C();
  v2 = [v1 isSpeaking];

  return v2;
}

double sub_257CC1318()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD500();
  v10 = sub_257ECDA20();
  v11 = sub_257ECFBC0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_257BAC000, v10, v11, "ttsCommandDispatchQueue:request :: stop()", v12, 2u);
    MEMORY[0x259C74820](v12, -1, -1);
  }

  (*(v3 + 8))(v9, v2);
  swift_getKeyPath();
  v20[3] = v1;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECD2A0();

  v13 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isElligbleForNewEvent;
  swift_beginAccess();
  if (*(v1 + v13) == 1)
  {
    *(v1 + v13) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v16, v17, v18, v19);
    v20[-2] = v1;
    LOBYTE(v20[-1]) = 1;
    v20[2] = v1;
    sub_257ECCED0();
  }

  return result;
}

uint64_t sub_257CC15C4(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_257ECDA30();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257CC1684, 0, 0);
}

uint64_t sub_257CC1684(uint64_t a1)
{
  sub_257ECD500();
  v2 = sub_257ECDA20();
  v3 = sub_257ECFBC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_257BAC000, v2, v3, "ttsCommandDispatchQueue:dispatch :: stop()", v4, 2u);
    MEMORY[0x259C74820](v4, -1, -1);
  }

  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[3];

  (*(v6 + 8))(v5, v7);
  sub_257ECF900();
  v1[6] = sub_257ECF8F0();
  v9 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CC17B8, v9, v8);
}

uint64_t sub_257CC17B8()
{

  *(v0 + 56) = sub_257CC211C();
  v3 = (*MEMORY[0x277D701C8] + MEMORY[0x277D701C8]);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_257CC9E98;

  return v3();
}

uint64_t sub_257CC1890(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_257ECDA30();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257CC1950, 0, 0);
}

uint64_t sub_257CC1950(uint64_t a1)
{
  sub_257ECD500();
  v2 = sub_257ECDA20();
  v3 = sub_257ECFBC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_257BAC000, v2, v3, "ttsCommandDispatchQueue:dispatch :: pause()", v4, 2u);
    MEMORY[0x259C74820](v4, -1, -1);
  }

  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[3];

  (*(v6 + 8))(v5, v7);
  sub_257ECF900();
  v1[6] = sub_257ECF8F0();
  v9 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CC1A84, v9, v8);
}

uint64_t sub_257CC1A84()
{

  *(v0 + 56) = sub_257CC211C();
  v3 = (*MEMORY[0x277D70318] + MEMORY[0x277D70318]);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_257CC1B3C;

  return v3();
}

uint64_t sub_257CC1B3C()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

double sub_257CC1C84(const char *a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_257ECDA30();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD500();
  v13 = sub_257ECDA20();
  v14 = sub_257ECFBC0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_257BAC000, v13, v14, a1, v15, 2u);
    MEMORY[0x259C74820](v15, -1, -1);
  }

  (*(v6 + 8))(v12, v5);
  swift_getKeyPath();
  v17[1] = v4;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECD2A0();

  return result;
}

uint64_t sub_257CC1E70(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_257ECDA30();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257CC1F30, 0, 0);
}

uint64_t sub_257CC1F30(uint64_t a1)
{
  sub_257ECD500();
  v2 = sub_257ECDA20();
  v3 = sub_257ECFBC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_257BAC000, v2, v3, "ttsCommandDispatchQueue:dispatch :: resume()", v4, 2u);
    MEMORY[0x259C74820](v4, -1, -1);
  }

  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[3];

  (*(v6 + 8))(v5, v7);
  sub_257ECF900();
  v1[6] = sub_257ECF8F0();
  v9 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CC2064, v9, v8);
}

uint64_t sub_257CC2064()
{

  *(v0 + 56) = sub_257CC211C();
  v3 = (*MEMORY[0x277D70330] + MEMORY[0x277D70330]);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_257CC9E98;

  return v3();
}

id sub_257CC211C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___speechSynthesizer;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___speechSynthesizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___speechSynthesizer);
  }

  else
  {
    v4 = sub_257CC2180(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_257CC2180(uint64_t a1)
{
  v24[1] = a1;
  v1 = sub_257ECCFB0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECD050();
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v24[0] = sub_257ECD0F0();
  v19 = sub_257ECD110();
  v20 = sub_257ECD100();
  v27 = v19;
  v28 = MEMORY[0x277D70368];
  v26 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7298, &qword_257EE0A98);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_257ED6D30;
  sub_257ECD040();
  v25 = v21;
  sub_257CC8834(&qword_27F8F72A0, MEMORY[0x277D702B8], MEMORY[0x277D702C0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F72A8, &unk_257EE0AA0);
  sub_257BD2D4C(&qword_27F8F72B0, &qword_27F8F72A8, &unk_257EE0AA0, MEMORY[0x277D83970]);
  sub_257ED0180();
  v25 = MEMORY[0x277D84F90];
  sub_257ED0180();
  (*(v2 + 104))(v8, *MEMORY[0x277D700F8], v1);
  v22 = sub_257ECCFE0();
  MAGAudioService.audioSessionForSpeaking(shouldDuckOthers:)(0);
  sub_257ECD000();
  sub_257ECD020();
  sub_257ECD010();
  return v22;
}

uint64_t sub_257CC24B8@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  v6 = *a2;
  swift_beginAccess();
  return sub_257BE401C(v3 + v6, a3, &qword_27F8F6D50, &unk_257EDEFA0);
}

uint64_t sub_257CC2590@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  v7 = *a3;
  swift_beginAccess();
  return sub_257BE401C(v6 + v7, a4, &qword_27F8F6D50, &unk_257EDEFA0);
}

uint64_t sub_257CC2694(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50, &unk_257EDEFA0);
  MEMORY[0x28223BE20](v7 - 8, v8, v9, v10, v11);
  v13 = v21 - v12;
  v14 = *a2;
  swift_beginAccess();
  sub_257BE401C(v4 + v14, v13, &qword_27F8F6D50, &unk_257EDEFA0);
  LOBYTE(a2) = sub_257CC96A8(v13, a1);
  sub_257BE4084(v13, &qword_27F8F6D50, &unk_257EDEFA0);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v16, v17, v18, v19);
    v21[-2] = v4;
    v21[-1] = a1;
    v21[2] = v4;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
    sub_257ECCED0();
  }

  else
  {
    sub_257BE401C(a1, v13, &qword_27F8F6D50, &unk_257EDEFA0);
    swift_beginAccess();
    sub_257C0DA64(v13, v4 + v14, &qword_27F8F6D50, &unk_257EDEFA0);
    swift_endAccess();
  }

  return sub_257BE4084(a1, &qword_27F8F6D50, &unk_257EDEFA0);
}

uint64_t sub_257CC28A8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  v3 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__lastSpeechContent;
  swift_beginAccess();
  return sub_257BE401C(v5 + v3, a1, &qword_27F8F6E68, &qword_257EDF540);
}

uint64_t sub_257CC2980@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  v4 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__lastSpeechContent;
  swift_beginAccess();
  return sub_257BE401C(v3 + v4, a2, &qword_27F8F6E68, &qword_257EDF540);
}

uint64_t sub_257CC2A58(uint64_t a1, uint64_t *a2)
{
  sub_257BE401C(a1, v3, &qword_27F8F6E68, &qword_257EDF540);
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCED0();

  return sub_257BE4084(v3, &qword_27F8F6E68, &qword_257EDF540);
}

double sub_257CC2B60(uint64_t a1, uint64_t a2)
{
  sub_257BE401C(a2, v5, &qword_27F8F6E68, &qword_257EDF540);
  v3 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__lastSpeechContent;
  swift_beginAccess();
  sub_257C0DA64(v5, a1 + v3, &qword_27F8F6E68, &qword_257EDF540);
  swift_endAccess();
  return result;
}

uint64_t sub_257CC2C00(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7248, &unk_257EE0960);
  v2[35] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7250, &unk_257EE1490);
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7258, &qword_257EE0970);
  v2[39] = v4;
  v2[40] = *(v4 - 8);
  v2[41] = swift_task_alloc();
  v5 = sub_257ECD0B0();
  v2[42] = v5;
  v2[43] = *(v5 - 8);
  v2[44] = swift_task_alloc();
  v6 = sub_257ECCFD0();
  v2[45] = v6;
  v2[46] = *(v6 - 8);
  v2[47] = swift_task_alloc();
  v7 = sub_257ECCFC0();
  v2[48] = v7;
  v2[49] = *(v7 - 8);
  v2[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7260, &qword_257EE0978);
  v2[51] = swift_task_alloc();
  v8 = sub_257ECD0D0();
  v2[52] = v8;
  v2[53] = *(v8 - 8);
  v2[54] = swift_task_alloc();
  v9 = type metadata accessor for MAGOutputEvent(0);
  v2[55] = v9;
  v2[56] = *(v9 - 8);
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v10 = sub_257ECDA30();
  v2[63] = v10;
  v2[64] = *(v10 - 8);
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50, &unk_257EDEFA0);
  v2[71] = swift_task_alloc();
  v2[72] = sub_257ECF900();
  v2[73] = sub_257ECF8F0();
  v12 = sub_257ECF8B0();
  v2[74] = v12;
  v2[75] = v11;

  return MEMORY[0x2822009F8](sub_257CC30B8, v12, v11);
}

uint64_t sub_257CC30B8()
{
  v123 = v0;
  v1 = v0[71];
  v2 = v0[34];
  swift_getKeyPath();
  v0[28] = v2;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  v3 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__lastSpokenEvent;
  swift_beginAccess();
  sub_257BE401C(v2 + v3, v1, &qword_27F8F6D50, &unk_257EDEFA0);
  MAGOutputEvent.speechContent(withPreviousEvent:)(v1, v0 + 7);
  sub_257BE4084(v1, &qword_27F8F6D50, &unk_257EDEFA0);
  if (!v0[10])
  {
    v23 = v0[58];
    v24 = v0[33];

    sub_257BE4084((v0 + 7), &qword_27F8F6E68, &qword_257EDF540);
    sub_257ECD500();
    sub_257CC93D0(v24, v23, type metadata accessor for MAGOutputEvent);
    v25 = sub_257ECDA20();
    v26 = sub_257ECFBD0();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[66];
    v30 = v0[63];
    v29 = v0[64];
    v31 = v0[58];
    if (v27)
    {
      v120 = v0[66];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v122[0] = v33;
      *v32 = 136315138;
      v34 = sub_257ECCCA0();
      v36 = v35;
      sub_257CC9438(v31, type metadata accessor for MAGOutputEvent);
      v37 = sub_257BF1FC8(v34, v36, v122);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_257BAC000, v25, v26, "%s: Will abort speak(). no speech content", v32, 0xCu);
      v38 = __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x259C74820](v33, -1, -1, v38);
      MEMORY[0x259C74820](v32, -1, -1);

      (*(v29 + 8))(v120, v30);
    }

    else
    {

      sub_257CC9438(v31, type metadata accessor for MAGOutputEvent);
      (*(v29 + 8))(v28, v30);
    }

    goto LABEL_25;
  }

  v4 = v0 + 12;
  v5 = v0[62];
  v6 = v0[33];
  v119 = v0 + 2;
  sub_257BE40E4((v0 + 7), (v0 + 2));
  sub_257ECD500();
  sub_257CC93D0(v6, v5, type metadata accessor for MAGOutputEvent);
  v7 = sub_257ECDA20();
  v8 = sub_257ECFBD0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[70];
  v12 = v0[63];
  v11 = v0[64];
  v13 = v0[62];
  if (v9)
  {
    v115 = v0[70];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v122[0] = v15;
    *v14 = 136315138;
    v16 = sub_257ECCCA0();
    v113 = v12;
    v18 = v17;
    sub_257CC9438(v13, type metadata accessor for MAGOutputEvent);
    v19 = v16;
    v4 = v0 + 12;
    v20 = sub_257BF1FC8(v19, v18, v122);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_257BAC000, v7, v8, "%s: Will handle speak() for event", v14, 0xCu);
    v21 = __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x259C74820](v15, -1, -1, v21);
    MEMORY[0x259C74820](v14, -1, -1);

    v22 = *(v11 + 8);
    v22(v115, v113);
  }

  else
  {

    sub_257CC9438(v13, type metadata accessor for MAGOutputEvent);
    v22 = *(v11 + 8);
    v22(v10, v12);
  }

  v0[76] = v22;
  v39 = v0[34];
  swift_getKeyPath();
  v0[29] = v39;
  sub_257ECCEE0();

  v40 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__lastSpeechContent;
  swift_beginAccess();
  sub_257BE401C(v39 + v40, v4, &qword_27F8F6E68, &qword_257EDF540);
  v41 = v0[15];
  if (v41)
  {
    v42 = __swift_project_boxed_opaque_existential_1(v4, v0[15]);
    v43 = *(v41 - 8);
    v44 = swift_task_alloc();
    (*(v43 + 16))(v44, v42, v41);
    sub_257BE4084(v4, &qword_27F8F6E68, &qword_257EDF540);
    v45 = sub_257ECCF70();
    v47 = v46;
    (*(v43 + 8))(v44, v41);
  }

  else
  {
    sub_257BE4084(v4, &qword_27F8F6E68, &qword_257EDF540);
    v45 = 0;
    v47 = 0;
  }

  __swift_project_boxed_opaque_existential_1(v119, v0[5]);
  v48 = sub_257ECCF70();
  v116 = v22;
  if (!v47)
  {
    goto LABEL_17;
  }

  if (v45 == v48 && v47 == v49)
  {
  }

  else
  {
    v50 = sub_257ED0640();

    if ((v50 & 1) == 0)
    {
LABEL_18:
      v52 = v0[71];
      v114 = v0[61];
      v53 = v0[56];
      v106 = v0[55];
      v107 = v0[51];
      v108 = v0[50];
      v54 = v0[49];
      v109 = v0[48];
      v110 = v0[46];
      v111 = v0[47];
      v112 = v0[45];
      v55 = v0[34];
      v117 = v0[33];
      sub_257C024BC(v119, (v0 + 17));
      swift_getKeyPath();
      v56 = swift_task_alloc();
      *(v56 + 16) = v55;
      *(v56 + 24) = v0 + 17;
      v0[30] = v55;
      sub_257ECCED0();

      sub_257BE4084((v0 + 17), &qword_27F8F6E68, &qword_257EDF540);
      sub_257CC93D0(v117, v52, type metadata accessor for MAGOutputEvent);
      (*(v53 + 56))(v52, 0, 1, v106);
      sub_257CC266C(v52);
      v57 = sub_257ECD060();
      (*(*(v57 - 8) + 56))(v107, 1, 1, v57);
      *(swift_task_alloc() + 16) = v119;
      (*(v54 + 104))(v108, *MEMORY[0x277D70198], v109);
      (*(v110 + 104))(v111, *MEMORY[0x277D701A0], v112);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7268, &unk_257EE14A0);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_257EDBBA0;
      sub_257ECD0A0();
      sub_257ECD090();
      sub_257ECD080();
      v0[31] = v58;
      sub_257CC8834(&qword_27F8F7270, MEMORY[0x277D70340], MEMORY[0x277D70348]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7278, &qword_257EE09B0);
      sub_257BD2D4C(&qword_27F8F7280, &qword_27F8F7278, &qword_257EE09B0, MEMORY[0x277D83970]);
      sub_257ED0180();
      sub_257ECD0C0();

      sub_257ECD500();
      sub_257CC93D0(v117, v114, type metadata accessor for MAGOutputEvent);
      v59 = sub_257ECDA20();
      v60 = sub_257ECFBD0();
      v61 = os_log_type_enabled(v59, v60);
      v62 = v0[69];
      v63 = v0[63];
      v64 = v0[61];
      if (v61)
      {
        v121 = v0[69];
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v122[0] = v66;
        *v65 = 136315138;
        v67 = sub_257ECCCA0();
        v69 = v68;
        sub_257CC9438(v64, type metadata accessor for MAGOutputEvent);
        v70 = sub_257BF1FC8(v67, v69, v122);

        *(v65 + 4) = v70;
        _os_log_impl(&dword_257BAC000, v59, v60, "%s: Will begin speech synthesis", v65, 0xCu);
        v71 = __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x259C74820](v66, -1, -1, v71);
        MEMORY[0x259C74820](v65, -1, -1);

        v72 = v121;
      }

      else
      {

        sub_257CC9438(v64, type metadata accessor for MAGOutputEvent);
        v72 = v62;
      }

      v116(v72, v63);
      v74 = v0[37];
      v73 = v0[38];
      v75 = v0[36];
      v76 = sub_257CC211C();
      sub_257ECD070();

      sub_257ECF970();
      (*(v74 + 8))(v73, v75);
      v77 = sub_257ECF8F0();
      v0[77] = v77;
      v78 = swift_task_alloc();
      v0[78] = v78;
      *v78 = v0;
      v78[1] = sub_257CC410C;
      v79 = v0[39];
      v80 = v0[35];
      v81 = MEMORY[0x277D85700];

      return MEMORY[0x2822005A8](v80, v77, v81, v79, v0 + 32);
    }
  }

  MAGOutputEvent.category.getter(v122);
  if (MAGOutputEventCategory.rawValue.getter() == 0x6544656C706F6570 && v51 == 0xEF6E6F6974636574)
  {
    goto LABEL_17;
  }

  v83 = sub_257ED0640();

  if (v83)
  {
    goto LABEL_18;
  }

  MAGOutputEvent.category.getter(v122);
  if (MAGOutputEventCategory.rawValue.getter() == 0xD000000000000013 && 0x8000000257EF74D0 == v84)
  {
    goto LABEL_17;
  }

  v85 = sub_257ED0640();

  if (v85)
  {
    goto LABEL_18;
  }

  MAGOutputEvent.category.getter(v122);
  if (MAGOutputEventCategory.rawValue.getter() == 0x746E656D75636F64 && v86 == 0xEF676E696D617246)
  {
    goto LABEL_17;
  }

  v87 = sub_257ED0640();

  if (v87)
  {
    goto LABEL_18;
  }

  MAGOutputEvent.category.getter(v122);
  if (MAGOutputEventCategory.rawValue.getter() == 0xD000000000000012 && 0x8000000257EF7520 == v88)
  {
LABEL_17:

    goto LABEL_18;
  }

  v89 = sub_257ED0640();

  if (v89)
  {
    goto LABEL_18;
  }

  v90 = v0[59];
  v91 = v0[33];

  sub_257ECD500();
  sub_257CC93D0(v91, v90, type metadata accessor for MAGOutputEvent);
  v92 = sub_257ECDA20();
  v93 = sub_257ECFBD0();
  v94 = os_log_type_enabled(v92, v93);
  v95 = v0[67];
  v96 = v0[63];
  v97 = v0[59];
  if (v94)
  {
    v118 = v0[67];
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v122[0] = v99;
    *v98 = 136315138;
    v100 = sub_257ECCCA0();
    v102 = v101;
    sub_257CC9438(v97, type metadata accessor for MAGOutputEvent);
    v103 = sub_257BF1FC8(v100, v102, v122);

    *(v98 + 4) = v103;
    _os_log_impl(&dword_257BAC000, v92, v93, "%s: Will abort speak(). Last spoken event was same as current", v98, 0xCu);
    v104 = __swift_destroy_boxed_opaque_existential_0(v99);
    MEMORY[0x259C74820](v99, -1, -1, v104);
    MEMORY[0x259C74820](v98, -1, -1);

    v116(v118, v96);
  }

  else
  {

    sub_257CC9438(v97, type metadata accessor for MAGOutputEvent);
    v22(v95, v96);
  }

  __swift_destroy_boxed_opaque_existential_0(v119);
LABEL_25:
  sub_257CC4AA0();

  v82 = v0[1];

  return v82();
}

uint64_t sub_257CC410C()
{
  v2 = *v1;

  v3 = *(v2 + 600);
  v4 = *(v2 + 592);
  if (v0)
  {
    v5 = sub_257CC46B0;
  }

  else
  {
    v5 = sub_257CC4234;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_257CC4234()
{
  v34 = v0;
  v1 = v0[35];
  v2 = sub_257ECD030();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[60];
    v4 = v0[33];
    (*(v0[40] + 8))(v0[41], v0[39]);

    sub_257ECD500();
    sub_257CC93D0(v4, v3, type metadata accessor for MAGOutputEvent);
    v5 = sub_257ECDA20();
    v6 = sub_257ECFBD0();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[76];
    v9 = v0[68];
    v32 = v0[63];
    v10 = v0[60];
    v12 = v0[53];
    v11 = v0[54];
    v13 = v0[52];
    if (v7)
    {
      v31 = v0[52];
      v14 = swift_slowAlloc();
      v30 = v9;
      v15 = swift_slowAlloc();
      v33 = v15;
      *v14 = 136315138;
      v28 = v8;
      v29 = v11;
      v16 = sub_257ECCCA0();
      v18 = v17;
      sub_257CC9438(v10, type metadata accessor for MAGOutputEvent);
      v19 = sub_257BF1FC8(v16, v18, &v33);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_257BAC000, v5, v6, "%s: Did finish speech synthesis", v14, 0xCu);
      v20 = __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x259C74820](v15, -1, -1, v20);
      MEMORY[0x259C74820](v14, -1, -1);

      v28(v30, v32);
      (*(v12 + 8))(v29, v31);
    }

    else
    {

      sub_257CC9438(v10, type metadata accessor for MAGOutputEvent);
      v8(v9, v32);
      (*(v12 + 8))(v11, v13);
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    sub_257CC4AA0();

    v26 = v0[1];

    return v26();
  }

  else
  {
    sub_257BE4084(v1, &qword_27F8F7248, &unk_257EE0960);
    v21 = sub_257ECF8F0();
    v0[77] = v21;
    v22 = swift_task_alloc();
    v0[78] = v22;
    *v22 = v0;
    v22[1] = sub_257CC410C;
    v23 = v0[39];
    v24 = v0[35];
    v25 = MEMORY[0x277D85700];

    return MEMORY[0x2822005A8](v24, v21, v25, v23, v0 + 32);
  }
}

uint64_t sub_257CC46B0()
{
  v35 = v0;
  v1 = v0[57];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];
  v5 = v0[33];

  (*(v3 + 8))(v2, v4);
  v6 = v0[32];
  sub_257ECD500();
  sub_257CC93D0(v5, v1, type metadata accessor for MAGOutputEvent);
  v7 = v6;
  v8 = sub_257ECDA20();
  v9 = sub_257ECFBE0();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[76];
  v12 = v0[65];
  v33 = v0[63];
  v13 = v0[57];
  v14 = v0[53];
  v15 = v0[54];
  v16 = v0[52];
  if (v10)
  {
    v32 = v0[65];
    v17 = swift_slowAlloc();
    v31 = v15;
    v18 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v34 = v28;
    *v17 = 136315394;
    v29 = v11;
    v30 = v16;
    v19 = sub_257ECCCA0();
    v21 = v20;
    sub_257CC9438(v13, type metadata accessor for MAGOutputEvent);
    v22 = sub_257BF1FC8(v19, v21, &v34);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = v6;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v18 = v24;
    _os_log_impl(&dword_257BAC000, v8, v9, "%s: Error occurred during speech synthesis: %@", v17, 0x16u);
    sub_257BE4084(v18, &unk_27F8F5490, &unk_257EDC470);
    MEMORY[0x259C74820](v18, -1, -1);
    v25 = __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x259C74820](v28, -1, -1, v25);
    MEMORY[0x259C74820](v17, -1, -1);

    v29(v32, v33);
    (*(v14 + 8))(v31, v30);
  }

  else
  {

    sub_257CC9438(v13, type metadata accessor for MAGOutputEvent);
    v11(v12, v33);
    (*(v14 + 8))(v15, v16);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_257CC4AA0();

  v26 = v0[1];

  return v26();
}

void sub_257CC4AA0()
{
  MAGOutputEvent.category.getter(&v5);
  if (MAGOutputEventCategory.rawValue.getter() == 0x7061436567616D69 && v0 == 0xEC0000006E6F6974)
  {
  }

  else
  {
    v2 = sub_257ED0640();

    if ((v2 & 1) == 0)
    {
      return;
    }
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v4 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v3 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }
}

double sub_257CC4C5C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_257ECCF80();
  sub_257ECD130();
  __swift_destroy_boxed_opaque_existential_0(v3);
  sub_257ECD130();
  return __swift_destroy_boxed_opaque_existential_0(v4);
}

id sub_257CC4CE8()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___audioEngine;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___audioEngine);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___audioEngine);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CB8388]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_257CC4D5C()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___hapticEngine;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___hapticEngine);
  v3 = v2;
  if (v2 == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine_supportHaptics) == 1)
    {
      v4 = [objc_opt_self() sharedInstance];
      v14[0] = 0;
      v5 = [objc_allocWithZone(MEMORY[0x277CBF6B0]) initWithAudioSession:v4 error:v14];
      if (v5)
      {
        v3 = v5;
        v6 = v14[0];

        v14[0] = 0;
        if ([v3 startAndReturnError_])
        {
          v7 = v14[0];
LABEL_10:
          v11 = *(v0 + v1);
          *(v0 + v1) = v3;
          v12 = v3;
          sub_257CC8CC0(v11);
          goto LABEL_11;
        }

        v10 = v14[0];
        v9 = sub_257ECC9F0();

        swift_willThrow();
      }

      else
      {
        v8 = v14[0];
        v9 = sub_257ECC9F0();

        swift_willThrow();
      }
    }

    v3 = 0;
    goto LABEL_10;
  }

LABEL_11:
  sub_257CC9350(v2);
  return v3;
}

void sub_257CC4EEC(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v94 = a2;
  v95 = a3;
  v111 = *MEMORY[0x277D85DE8];
  v78 = sub_257ECDA30();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v5, v6, v7, v8);
  v79 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277CB83E0]) init];
  v11 = sub_257CC4CE8();
  [v11 attachNode_];

  v12 = [objc_allocWithZone(MEMORY[0x277CB8468]) init];
  [v12 setBypass_];
  v13 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___audioEngine;
  [*(v3 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___audioEngine) attachNode_];
  v14 = [objc_allocWithZone(MEMORY[0x277CB8440]) init];
  [v14 setBypass_];
  [*(v3 + v13) attachNode_];
  v15 = [objc_allocWithZone(MEMORY[0x277CB8450]) initWithNumberOfBands_];
  [v15 setBypass_];
  [*(v3 + v13) attachNode_];
  v16 = *(v3 + v13);
  v17 = a1;
  v18 = [a1 format];
  v93 = v10;
  [v16 connect:v10 to:v12 format:v18];

  v19 = *(v3 + v13);
  v20 = [v17 format];
  v91 = v12;
  [v19 connect:v12 to:v15 format:v20];

  v21 = *(v3 + v13);
  v22 = [v17 format];
  [v21 connect:v15 to:v14 format:v22];

  v92 = v3;
  v23 = *(v3 + v13);
  v24 = [v23 mainMixerNode];
  v96 = v17;
  v25 = [v17 format];
  [v23 connect:v14 to:v24 format:v25];

  v97 = v15;
  v26 = [v15 bands];
  sub_257BD2C2C(0, &qword_27F8F7240, 0x277CB8458);
  v27 = sub_257ECF810();

  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x259C72E20](0, v27);
  }

  else
  {
    if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v28 = *(v27 + 32);
  }

  v29 = v28;
  v90 = v28;

  [v29 setFilterType_];
  LODWORD(v30) = 1120403456;
  [v29 setFrequency_];
  [v29 setBypass_];
  v31 = swift_allocObject();
  v32 = v92;
  swift_weakInit();
  v33 = swift_allocObject();
  v34 = v93;
  *(v33 + 16) = v31;
  *(v33 + 24) = v34;
  *&v100 = sub_257CC9198;
  *(&v100 + 1) = v33;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v99 = sub_257CC5DA8;
  *(&v99 + 1) = &block_descriptor_20;
  v35 = _Block_copy(&aBlock);
  v36 = v34;

  [v36 scheduleBuffer:v96 atTime:0 options:v94 & 1 completionCallbackType:2 completionHandler:v35];
  _Block_release(v35);
  v96 = swift_allocObject();
  *(v96 + 16) = v36;
  v94 = swift_allocObject();
  *(v94 + 16) = v36;
  v93 = swift_allocObject();
  *(v93 + 16) = v36;
  v89 = swift_allocObject();
  v37 = v91;
  *(v89 + 16) = v91;
  v88 = swift_allocObject();
  *(v88 + 16) = v37;
  v87 = swift_allocObject();
  *(v87 + 16) = v37;
  v86 = swift_allocObject();
  *(v86 + 16) = v37;
  v85 = swift_allocObject();
  *(v85 + 16) = v14;
  v84 = swift_allocObject();
  *(v84 + 16) = v14;
  v83 = swift_allocObject();
  *(v83 + 16) = v14;
  v82 = swift_allocObject();
  *(v82 + 16) = v14;
  v81 = swift_allocObject();
  *(v81 + 16) = v14;
  v80 = swift_allocObject();
  *(v80 + 16) = v14;
  v38 = v14;
  v39 = objc_opt_self();
  v40 = swift_allocObject();
  *(v40 + 16) = v32;
  *(v40 + 24) = v36;
  *&v100 = sub_257CC9288;
  *(&v100 + 1) = v40;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v99 = sub_257D231C0;
  *(&v99 + 1) = &block_descriptor_210;
  v41 = _Block_copy(&aBlock);
  v42 = v36;
  v43 = v37;
  v44 = v38;
  v45 = v42;
  v46 = v43;
  v47 = v44;
  v48 = v45;
  v49 = v46;
  v50 = v47;
  v51 = v48;
  v52 = v49;
  v53 = v50;
  sub_257ECC3F0();

  *&aBlock = 0;
  LODWORD(v49) = [v39 catchException:v41 error:&aBlock];
  _Block_release(v41);
  if (v49)
  {
    v54 = aBlock;

    v55 = v95;
    v56 = v96;
    v57 = v94;
    v58 = v93;
  }

  else
  {
    v59 = aBlock;
    v60 = sub_257ECC9F0();

    swift_willThrow();
    v61 = v79;
    sub_257ECD440();
    v62 = v60;
    v63 = sub_257ECDA20();
    v64 = sub_257ECFBE0();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 138412290;
      v67 = v60;
      v68 = _swift_stdlib_bridgeErrorToNSError();
      *(v65 + 4) = v68;
      *v66 = v68;
      _os_log_impl(&dword_257BAC000, v63, v64, "Could not play sound with audioEngine error: %@", v65, 0xCu);
      sub_257BE4084(v66, &unk_27F8F5490, &unk_257EDC470);
      MEMORY[0x259C74820](v66, -1, -1);
      MEMORY[0x259C74820](v65, -1, -1);
    }

    else
    {

      v51 = v63;
    }

    v69 = v78;
    v70 = v77;
    v55 = v95;
    v56 = v96;
    v57 = v94;
    v58 = v93;

    (*(v70 + 8))(v61, v69);
  }

  *&aBlock = sub_257CC91B8;
  *(&aBlock + 1) = v56;
  *&v99 = sub_257CC91C8;
  *(&v99 + 1) = v57;
  *&v100 = sub_257CC91D8;
  *(&v100 + 1) = v58;
  *&v101 = sub_257CC91E8;
  *(&v101 + 1) = v89;
  *&v102 = sub_257CC91F8;
  *(&v102 + 1) = v88;
  *&v103 = sub_257CC9208;
  *(&v103 + 1) = v87;
  *&v104 = sub_257CC9218;
  *(&v104 + 1) = v86;
  *&v105 = sub_257CC9228;
  *(&v105 + 1) = v85;
  *&v106 = sub_257CC9238;
  *(&v106 + 1) = v84;
  *&v107 = sub_257CC9248;
  *(&v107 + 1) = v83;
  *&v108 = sub_257CC9258;
  *(&v108 + 1) = v82;
  *&v109 = sub_257CC9268;
  *(&v109 + 1) = v81;
  *&v110 = sub_257CC9278;
  *(&v110 + 1) = v80;
  CGSizeMake();
  v71 = v109;
  v55[10] = v108;
  v55[11] = v71;
  v55[12] = v110;
  v72 = v105;
  v55[6] = v104;
  v55[7] = v72;
  v73 = v107;
  v55[8] = v106;
  v55[9] = v73;
  v74 = v101;
  v55[2] = v100;
  v55[3] = v74;
  v75 = v103;
  v55[4] = v102;
  v55[5] = v75;
  v76 = v99;
  *v55 = aBlock;
  v55[1] = v76;
}

double sub_257CC5B1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7, v8);
  v10 = &v17 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = sub_257ECF930();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v13;
    v15[5] = a3;
    v16 = a3;
    sub_257C3FBD4(0, 0, v10, &unk_257EE0958, v15);
  }

  return result;
}

uint64_t sub_257CC5C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_257CC5C70, 0, 0);
}

uint64_t sub_257CC5C70()
{
  sub_257ECF900();
  *(v0 + 32) = sub_257ECF8F0();
  v2 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CC5D04, v2, v1);
}

uint64_t sub_257CC5D04()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = sub_257CC4CE8();
  [v3 disconnectNodeOutput_];

  [*(v2 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___audioEngine) detachNode_];
  v4 = v0[1];

  return v4();
}

double sub_257CC5DA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_257ECC3F0();
  v3(a2);

  return result;
}

id sub_257CC5DFC(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = sub_257CC4CE8();
  v10[0] = 0;
  v5 = [v4 startAndReturnError_];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    v8 = sub_257ECC9F0();

    swift_willThrow();
  }

  result = [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___audioEngine) isRunning];
  if (result)
  {
    return [a2 play];
  }

  return result;
}

void *sub_257CC5EEC(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_257CC4D5C();
  if (result)
  {
    v23[0] = 0;
    v11 = result;
    v12 = [result createPlayerWithPattern:a1 error:v23];

    v13 = v23[0];
    if (v12)
    {
      v23[0] = 0;
      v14 = v13;
      if ([v12 startAtTime:v23 error:0.0])
      {
        v15 = v23[0];
        return swift_unknownObjectRelease();
      }

      v18 = v23[0];
      v17 = sub_257ECC9F0();

      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = v23[0];
      v17 = sub_257ECC9F0();

      swift_willThrow();
    }

    sub_257ECD500();
    v19 = sub_257ECDA20();
    v20 = sub_257ECFBE0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_257BAC000, v19, v20, "Magnifier could not create haptic player", v21, 2u);
      MEMORY[0x259C74820](v21, -1, -1);
    }

    return (*(v3 + 8))(v9, v2);
  }

  return result;
}

uint64_t sub_257CC6150(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  swift_beginAccess();
}

uint64_t sub_257CC6208@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

void sub_257CC62D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

void sub_257CC6340(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  swift_getKeyPath();
  sub_257ECCF00();

  v3 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__eventTextDictionary;
  swift_beginAccess();
  sub_257CB9D58(0, 1, v2);
  swift_endAccess();
  swift_getKeyPath();
  sub_257ECCEF0();

  swift_getKeyPath();
  sub_257ECCEE0();

  v4 = *(v1 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = (*(v4 + 56) + ((v9 << 10) | (16 * v11)));
      v13 = v12[1];
      if (v13)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v23 = *v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_257BFCB3C(0, *(v10 + 2) + 1, 1, v10);
    }

    v16 = *(v10 + 2);
    v15 = *(v10 + 3);
    if (v16 >= v15 >> 1)
    {
      v10 = sub_257BFCB3C((v15 > 1), v16 + 1, 1, v10);
    }

    *(v10 + 2) = v16 + 1;
    v17 = &v10[16 * v16];
    *(v17 + 4) = v23;
    *(v17 + 5) = v13;
  }

  while (v7);
  while (1)
  {
LABEL_6:
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v4 + 64 + 8 * v14);
    ++v9;
    if (v7)
    {
      v9 = v14;
      goto LABEL_4;
    }
  }

  if (*(v10 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90, &qword_257EDEFD0);
    sub_257BD2D4C(&qword_27F8F6D70, &qword_27F8F9D90, &qword_257EDEFD0, MEMORY[0x277D83958]);
    v18 = sub_257ECF420();
    v20 = v19;

    v21 = v18;
    v22 = v20;
  }

  else
  {

    v21 = 0;
    v22 = 0xE000000000000000;
  }

  sub_257CBAD6C(v21, v22);
}

double sub_257CC6694()
{
  v1 = v0;
  v2 = sub_257ECF120();
  v73 = *(v2 - 8);
  v74 = v2;
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v72 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MAGOutputEvent.displayContent.getter();
  v10 = v9;
  MAGOutputEvent.category.getter(v79);
  v11 = v79[0];
  if (v10 && (!v8 && v10 == 0xE000000000000000 || (sub_257ED0640() & 1) != 0))
  {

    swift_getKeyPath();
    *v79 = v0;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
    sub_257ECCEE0();

    *v79 = v0;
    swift_getKeyPath();
    sub_257ECCF00();

    swift_beginAccess();
    sub_257CB9D58(0, 1, v11);
    swift_endAccess();
    *v79 = v0;
    swift_getKeyPath();
  }

  else
  {
    swift_getKeyPath();
    *v79 = v0;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
    sub_257ECCEE0();

    *v79 = v0;
    swift_getKeyPath();
    sub_257ECCF00();

    v12 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__eventTextDictionary;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = *&v0[v12];
    *&v0[v12] = 0x8000000000000000;
    sub_257EC6B40(v8, v10, v11, isUniquelyReferenced_nonNull_native);
    *&v0[v12] = v78;
    swift_endAccess();
    *v79 = v0;
    swift_getKeyPath();
  }

  sub_257ECCEF0();

  v79[0] = v11;
  if (MAGOutputEventCategory.rawValue.getter() == 0x646E41746E696F70 && v14 == 0xED00006B61657053)
  {

    v15 = &OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___doorDetectionSettingsViewController;
    v16 = &OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___doorDetectionSettingsViewController;
  }

  else
  {
    v17 = sub_257ED0640();

    v15 = &OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___doorDetectionSettingsViewController;
    v16 = &OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___doorDetectionSettingsViewController;
    if ((v17 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  swift_getKeyPath();
  *v79 = v0;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  v18 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__eventTextDictionary;
  swift_beginAccess();
  if (*(*&v0[v18] + 16))
  {

    sub_257C03FE4(6);
    v20 = v19;

    if (v20)
    {
      swift_getKeyPath();
      *v79 = v0;
      sub_257ECCEE0();

      *v79 = v0;
      swift_getKeyPath();
      sub_257ECCF00();

      swift_beginAccess();
      sub_257CB9D58(0, 1, 6);
      swift_endAccess();
      *v79 = v0;
      swift_getKeyPath();
      sub_257ECCEF0();
LABEL_21:

      goto LABEL_22;
    }
  }

LABEL_14:
  v79[0] = v11;
  if (MAGOutputEventCategory.rawValue.getter() == 0x6574654474786574 && v21 == 0xED00006E6F697463)
  {
  }

  else
  {
    v22 = sub_257ED0640();

    if ((v22 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  swift_getKeyPath();
  *v79 = v0;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  v23 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__eventTextDictionary;
  swift_beginAccess();
  if (*(*&v0[v23] + 16))
  {

    sub_257C03FE4(5);
    v25 = v24;

    if (v25)
    {
      swift_getKeyPath();
      *v79 = v0;
      sub_257ECCEE0();

      *v79 = v0;
      swift_getKeyPath();
      sub_257ECCF00();

      swift_beginAccess();
      sub_257CB9D58(0, 1, 5);
      swift_endAccess();
      *v79 = v0;
      swift_getKeyPath();
      sub_257ECCEF0();
      goto LABEL_21;
    }
  }

LABEL_22:
  if (qword_281544FE0 != -1)
  {
LABEL_69:
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v79[0] != 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (v79[0] & 1) == 0))
  {
    swift_getKeyPath();
    *v79 = v1;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
    sub_257ECCEE0();

    *v79 = v1;
    swift_getKeyPath();
    sub_257ECCF00();

    swift_beginAccess();
    sub_257CB9D58(0, 1, 1);
    swift_endAccess();
    *v79 = v1;
    swift_getKeyPath();
    sub_257ECCEF0();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v79[0] != 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (v79[0] & 1) == 0))
  {
    swift_getKeyPath();
    *v79 = v1;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
    sub_257ECCEE0();

    *v79 = v1;
    swift_getKeyPath();
    sub_257ECCF00();

    swift_beginAccess();
    sub_257CB9D58(0, 1, 2);
    swift_endAccess();
    *v79 = v1;
    swift_getKeyPath();
    sub_257ECCEF0();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v79[0] != 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (v79[0] & 1) == 0))
  {
    swift_getKeyPath();
    *v79 = v1;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
    sub_257ECCEE0();

    *v79 = v1;
    swift_getKeyPath();
    sub_257ECCF00();

    swift_beginAccess();
    sub_257CB9D58(0, 1, 4);
    swift_endAccess();
    *v79 = v1;
    swift_getKeyPath();
    sub_257ECCEF0();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v79[0] != 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (v79[0] & 1) == 0))
  {
    swift_getKeyPath();
    *v79 = v1;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
    sub_257ECCEE0();

    *v79 = v1;
    swift_getKeyPath();
    sub_257ECCF00();

    swift_beginAccess();
    sub_257CB9D58(0, 1, 5);
    swift_endAccess();
    *v79 = v1;
    swift_getKeyPath();
    sub_257ECCEF0();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v79[0] != 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (v79[0] & 1) == 0))
  {
    swift_getKeyPath();
    *v79 = v1;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
    sub_257ECCEE0();

    *v79 = v1;
    swift_getKeyPath();
    sub_257ECCF00();

    swift_beginAccess();
    sub_257CB9D58(0, 1, 6);
    swift_endAccess();
    *v79 = v1;
    swift_getKeyPath();
    sub_257ECCEF0();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v79[0] != 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (v79[0] & 1) == 0))
  {
    swift_getKeyPath();
    *v79 = v1;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
    sub_257ECCEE0();

    *v79 = v1;
    swift_getKeyPath();
    sub_257ECCF00();

    swift_beginAccess();
    sub_257CB9D58(0, 1, 3);
    swift_endAccess();
    *v79 = v1;
    swift_getKeyPath();
    sub_257ECCEF0();
  }

  swift_getKeyPath();
  v16 = v16[63];
  *v79 = v1;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  v26 = v15[61];
  swift_beginAccess();
  v27 = *&v1[v26];
  v28 = 1 << *(v27 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v27 + 64);
  v15 = ((v28 + 63) >> 6);
  swift_bridgeObjectRetain_n();
  v31 = 0;
  v32 = MEMORY[0x277D84F90];
  if (!v30)
  {
    goto LABEL_46;
  }

  do
  {
LABEL_44:
    while (1)
    {
      v33 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v34 = (*(v27 + 56) + ((v31 << 10) | (16 * v33)));
      v35 = v34[1];
      if (v35)
      {
        break;
      }

      if (!v30)
      {
        goto LABEL_46;
      }
    }

    v70 = *v34;

    v37 = swift_isUniquelyReferenced_nonNull_native();
    v71 = v16;
    if ((v37 & 1) == 0)
    {
      v32 = sub_257BFCB3C(0, *(v32 + 2) + 1, 1, v32);
    }

    v39 = *(v32 + 2);
    v38 = *(v32 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v69 = v39 + 1;
      v42 = sub_257BFCB3C((v38 > 1), v39 + 1, 1, v32);
      v40 = v69;
      v32 = v42;
    }

    *(v32 + 2) = v40;
    v41 = &v32[16 * v39];
    *(v41 + 4) = v70;
    *(v41 + 5) = v35;
    v16 = v71;
  }

  while (v30);
  while (1)
  {
LABEL_46:
    v36 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_69;
    }

    if (v36 >= v15)
    {
      break;
    }

    v30 = *(v27 + 64 + 8 * v36);
    ++v31;
    if (v30)
    {
      v31 = v36;
      goto LABEL_44;
    }
  }

  if (*(v32 + 2))
  {
    v78 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90, &qword_257EDEFD0);
    sub_257BD2D4C(&qword_27F8F6D70, &qword_27F8F9D90, &qword_257EDEFD0, MEMORY[0x277D83958]);
    v43 = sub_257ECF420();
    v45 = v44;

    v46 = v43;
    v47 = v45;
  }

  else
  {

    v46 = 0;
    v47 = 0xE000000000000000;
  }

  sub_257CBAD6C(v46, v47);
  if (_s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0())
  {
    v49 = qword_281548358;
    swift_getKeyPath();
    v78 = v1;
    sub_257ECCEE0();

    v50 = *&v1[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__outputEngineTextAnnouncement];
    v51 = *&v1[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__outputEngineTextAnnouncement + 8];
    v52 = v49 + 48;
    swift_beginAccess();
    v75 = *(v49 + 48);
    v76 = *(v49 + 56);
    v53 = qword_2815447E0;

    if (v53 != -1)
    {
      v54 = swift_once();
    }

    MEMORY[0x28223BE20](v54, v55, v56, v57, v58);
    *(&v69 - 2) = &v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90, &qword_257EDEFD0);
    sub_257ECFD50();
    v59 = v77;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_257BFCB3C(0, *(v59 + 2) + 1, 1, v59);
    }

    v61 = *(v59 + 2);
    v60 = *(v59 + 3);
    if (v61 >= v60 >> 1)
    {
      v59 = sub_257BFCB3C((v60 > 1), v61 + 1, 1, v59);
    }

    *(v59 + 2) = v61 + 1;
    v62 = &v59[16 * v61];
    *(v62 + 4) = v50;
    *(v62 + 5) = v51;
    v75 = v59;
    v63 = v72;
    v64 = sub_257ECF110();
    MEMORY[0x28223BE20](v64, v65, v66, v67, v68);
    *(&v69 - 2) = &v75;
    *(&v69 - 1) = v52;
    sub_257ECFD40();
    (*(v73 + 8))(v63, v74);

    swift_endAccess();
  }

  return result;
}

double sub_257CC7BF8()
{
  v1 = v0;
  v2 = MAGOutputEvent.displayContent.getter();
  v4 = v3;
  MAGOutputEvent.category.getter(v19);
  v5 = v19[0];
  if (v4 && (!v2 && v4 == 0xE000000000000000 || (sub_257ED0640() & 1) != 0))
  {

    swift_getKeyPath();
    *v19 = v0;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
    sub_257ECCEE0();

    *v19 = v0;
    swift_getKeyPath();
    sub_257ECCF00();

    swift_beginAccess();
    sub_257CB9D58(0, 1, v5);
    swift_endAccess();
    *v19 = v0;
    swift_getKeyPath();
  }

  else
  {
    swift_getKeyPath();
    *v19 = v0;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
    sub_257ECCEE0();

    *v19 = v0;
    swift_getKeyPath();
    sub_257ECCF00();

    v6 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__advancedEventTextDictionary;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v0 + v6);
    *(v0 + v6) = 0x8000000000000000;
    sub_257EC6B40(v2, v4, v5, isUniquelyReferenced_nonNull_native);
    *(v0 + v6) = v18;
    swift_endAccess();
    *v19 = v0;
    swift_getKeyPath();
  }

  sub_257ECCEF0();

  swift_getKeyPath();
  *v19 = v0;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
  sub_257ECCEE0();

  v8 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__advancedEventTextDictionary;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_12;
  }

  v10 = sub_257C03FE4(7);
  if ((v11 & 1) == 0)
  {

    goto LABEL_12;
  }

  v12 = (*(v9 + 56) + 16 * v10);
  v14 = *v12;
  v13 = v12[1];

  if (!v13)
  {
LABEL_12:
    v16 = 0;
    v15 = 0xE000000000000000;
    return sub_257CBAD94(v16, v15);
  }

  v15 = v13;
  v16 = v14;
  return sub_257CBAD94(v16, v15);
}

uint64_t MAGOutputEngine.deinit()
{

  sub_257BE4084(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__previousEvent, &qword_27F8F6D50, &unk_257EDEFA0);
  sub_257BE4084(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__currentEvent, &qword_27F8F6D50, &unk_257EDEFA0);

  sub_257BE4084(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__lastSpokenEvent, &qword_27F8F6D50, &unk_257EDEFA0);
  sub_257BE4084(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__lastSpeechContent, &qword_27F8F6E68, &qword_257EDF540);

  sub_257CC8CC0(*(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___hapticEngine));

  v1 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine___observationRegistrar;
  v2 = sub_257ECCF20();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MAGOutputEngine.__deallocating_deinit()
{
  MAGOutputEngine.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_257CC81B0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for MAGOutputEvent(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

id sub_257CC829C(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_257ECCAE0();
  v13[0] = 0;
  v5 = [v2 initForReading:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_257ECCB70();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_257ECC9F0();

    swift_willThrow();
    v11 = sub_257ECCB70();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_257CC83E8(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for MAGOutputEvent(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8, v8, v9, v10, v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v20 = &v46 - v19;
  MEMORY[0x28223BE20](v21, v22, v23, v24, v25);
  v27 = &v46 - v26;
  v28 = *v2;
  result = sub_257CC81B0(a1, a2, *v2);
  if (!v3)
  {
    v56 = 0;
    if (v30)
    {
      return *(v28 + 16);
    }

    v51 = v27;
    v52 = a1;
    v48 = v20;
    v49 = v13;
    v47 = v2;
    v55 = result;
    v31 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v33 = (v28 + 16);
      v32 = *(v28 + 16);
      if (v31 == v32)
      {
        return v55;
      }

      v50 = v7;
      while (v31 < v32)
      {
        v34 = v28;
        v53 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v35 = v28 + v53;
        v36 = *(v7 + 72);
        v54 = v36 * v31;
        v37 = v51;
        sub_257CC93D0(v35 + v36 * v31, v51, type metadata accessor for MAGOutputEvent);
        v38 = a2;
        v39 = v56;
        v40 = v52(v37);
        result = sub_257CC9438(v37, type metadata accessor for MAGOutputEvent);
        v56 = v39;
        if (v39)
        {
          return result;
        }

        if (v40)
        {
          a2 = v38;
          v7 = v50;
          v28 = v34;
        }

        else
        {
          v41 = v55;
          if (v31 == v55)
          {
            a2 = v38;
            v7 = v50;
            v28 = v34;
          }

          else
          {
            if ((v55 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v42 = *v33;
            if (v55 >= *v33)
            {
              goto LABEL_27;
            }

            v43 = v36 * v55;
            result = sub_257CC93D0(v35 + v36 * v55, v48, type metadata accessor for MAGOutputEvent);
            if (v31 >= v42)
            {
              goto LABEL_28;
            }

            v44 = v54;
            sub_257CC93D0(v35 + v54, v49, type metadata accessor for MAGOutputEvent);
            v28 = v34;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = sub_257C7DE24(v34);
            }

            a2 = v38;
            v45 = v28 + v53;
            result = sub_257CC9498(v49, v28 + v53 + v43);
            if (v31 >= *(v28 + 16))
            {
              goto LABEL_29;
            }

            result = sub_257CC9498(v48, v45 + v44);
            *v47 = v28;
            v7 = v50;
            v41 = v55;
          }

          v55 = v41 + 1;
        }

        ++v31;
        v33 = (v28 + 16);
        v32 = *(v28 + 16);
        if (v31 == v32)
        {
          return v55;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_257CC8744(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_257CC8834(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257CC88E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAGOutputEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257CC894C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257C167C4;

  return sub_257CBD6E0();
}

uint64_t sub_257CC8A10()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_257C167C4;

  return sub_257CBD46C(v0);
}

uint64_t sub_257CC8ADC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_257C167C4;

  return sub_257CC15C4(v0);
}

uint64_t sub_257CC8B6C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_257BE3DE0;

  return sub_257CC1890(v0);
}

uint64_t sub_257CC8BFC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_257C167C4;

  return sub_257CC1E70(v0);
}

void sub_257CC8CC0(id a1)
{
  if (a1 != 1)
  {
  }
}

void sub_257CC8CD8(uint64_t a1)
{
  sub_257CC9030(319);
  if (v1 <= 0x3F)
  {
    sub_257ECCF20();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_257CC9030(uint64_t a1)
{
  if (!qword_27F8F7220)
  {
    type metadata accessor for MAGOutputEvent(255);
    v1 = sub_257ED00C0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8F7220);
    }
  }
}

uint64_t sub_257CC90A8(uint64_t a1)
{
  result = type metadata accessor for MAGOutputEvent(319);
  if (v2 <= 0x3F)
  {
    result = sub_257CC9120();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_257CC9120()
{
  result = qword_27F8F7238;
  if (!qword_27F8F7238)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F8F7238);
  }

  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257CC9290(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257CC5C50(a1, v4, v5, v7, v6);
}

id sub_257CC9350(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t keypath_set_155Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_257CC93D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_257CC9438(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_257CC9498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAGOutputEvent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_257CC9514()
{
  v2 = *(type metadata accessor for MAGOutputEvent(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_257C167C4;

  return sub_257CBF684(v0 + v3, v4);
}

uint64_t sub_257CC9618()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257C167C4;

  return sub_257CBFE7C();
}

uint64_t sub_257CC96A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAGOutputEvent(0);
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50, &unk_257EDEFA0);
  MEMORY[0x28223BE20](v12 - 8, v13, v14, v15, v16);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7290, &qword_257EE0A68);
  MEMORY[0x28223BE20](v19 - 8, v20, v21, v22, v23);
  v25 = &v34 - v24;
  v27 = *(v26 + 56);
  sub_257BE401C(a1, &v34 - v24, &qword_27F8F6D50, &unk_257EDEFA0);
  sub_257BE401C(a2, &v25[v27], &qword_27F8F6D50, &unk_257EDEFA0);
  v28 = *(v5 + 48);
  if (v28(v25, 1, v4) == 1)
  {
    if (v28(&v25[v27], 1, v4) == 1)
    {
      sub_257BE4084(v25, &qword_27F8F6D50, &unk_257EDEFA0);
      v29 = 0;
      return v29 & 1;
    }

LABEL_6:
    sub_257BE4084(v25, &qword_27F8F7290, &qword_257EE0A68);
    v29 = 1;
    return v29 & 1;
  }

  sub_257BE401C(v25, v18, &qword_27F8F6D50, &unk_257EDEFA0);
  if (v28(&v25[v27], 1, v4) == 1)
  {
    sub_257CC9438(v18, type metadata accessor for MAGOutputEvent);
    goto LABEL_6;
  }

  sub_257CC88E8(&v25[v27], v11);
  if ((sub_257ECCCC0() & 1) != 0 && (_s16MagnifierSupport14MAGOutputEventV0D4TypeO2eeoiySbAE_AEtFZ_0(&v18[v4[5]], &v11[v4[5]]) & 1) != 0 && v18[v4[6]] == v11[v4[6]])
  {
    v30 = v4[7];
    v31 = v18[v30];
    v32 = v11[v30];
    sub_257CC9438(v11, type metadata accessor for MAGOutputEvent);
    v29 = v31 ^ v32;
  }

  else
  {
    sub_257CC9438(v11, type metadata accessor for MAGOutputEvent);
    v29 = 1;
  }

  sub_257CC9438(v18, type metadata accessor for MAGOutputEvent);
  sub_257BE4084(v25, &qword_27F8F6D50, &unk_257EDEFA0);
  return v29 & 1;
}

id sub_257CC99DC(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = sub_257ECCB70();
  v7 = MEMORY[0x28223BE20](v3, v4, v3, v5, v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1, v7);
  v11 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v12 = sub_257CC829C(v9);
  if (!v1)
  {
    v13 = v12;
    v14 = [v12 processingFormat];
    v15 = [v13 length];
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v15))
    {
      v11 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v14 frameCapacity:v15];

      if (v11)
      {
        v20[0] = 0;
        if ([v13 readIntoBuffer:v11 error:v20])
        {
          v16 = v20[0];

          return v11;
        }

        v18 = v20[0];
        sub_257ECC9F0();

        swift_willThrow();
        v13 = v11;
      }

      else
      {
        sub_257BEBEF0();
        swift_allocError();
        *(v17 + 8) = 0;
        *(v17 + 16) = 0;
        *v17 = 0;
        *(v17 + 24) = 4;
        swift_willThrow();
      }

      return v11;
    }

    __break(1u);
  }

  return v11;
}

uint64_t objectdestroy_164Tm()
{

  return swift_deallocObject();
}

uint64_t sub_257CC9C98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isElligbleForNewEvent;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void sub_257CC9D3C()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
  sub_257ECC3F0();
}

void sub_257CC9D78()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
  sub_257ECC3F0();
}

void sub_257CC9DD4(void *a1, uint64_t a2)
{
  v3 = v2[4];
  v4 = (v2[2] + *a1);
  *v4 = v2[3];
  v4[1] = v3;
}

MagnifierSupport::MFAutomationNotification_optional __swiftcall MFAutomationNotification.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_257ED04B0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t MFAutomationNotification.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000026;
  }

  else
  {
    return 0xD00000000000002BLL;
  }
}

uint64_t sub_257CC9F60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000026;
  }

  else
  {
    v3 = 0xD00000000000002BLL;
  }

  if (v2)
  {
    v4 = "nce";
  }

  else
  {
    v4 = "erModeNextReaderBlockSpoken";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000026;
  }

  else
  {
    v6 = 0xD00000000000002BLL;
  }

  if (*a2)
  {
    v7 = "erModeNextReaderBlockSpoken";
  }

  else
  {
    v7 = "nce";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_257ED0640();
  }

  return v9 & 1;
}

unint64_t sub_257CCA010()
{
  result = qword_27F8F72B8;
  if (!qword_27F8F72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F72B8);
  }

  return result;
}

uint64_t sub_257CCA064()
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

double sub_257CCA0E4(uint64_t a1)
{
  sub_257ECF5D0();

  return result;
}

uint64_t sub_257CCA150(uint64_t a1)
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

void sub_257CCA1CC(char *a2@<X8>)
{
  v3 = sub_257ED04B0();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_257CCA22C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000026;
  }

  else
  {
    v2 = 0xD00000000000002BLL;
  }

  if (*v1)
  {
    v3 = "erModeNextReaderBlockSpoken";
  }

  else
  {
    v3 = "nce";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_257CCA2A8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F72C0, &qword_257EE0C58);
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F72C8, &qword_257EE0C60);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = &v41 - v15;
  if (AXDeviceSupportsAccessibilityReader())
  {
    sub_257BBD7E4(v1[6], v1[7]);
    sub_257ECD740();
    v17 = v1[1];
    sub_257ECD8F0();
    sub_257CCA98C(&qword_27F8F7328, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
    v18 = v1;
    v19 = sub_257ECDCE0();
    v20 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F72E8, &qword_257EE0C70) + 36)];
    *v20 = v19;
    v20[1] = v17;
    v21 = v18[5];
    sub_257ECD950();
    sub_257CCA98C(&qword_27F8F7330, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    v22 = v17;
    v23 = sub_257ECDCE0();
    v24 = &v16[*(v10 + 36)];
    *v24 = v23;
    v24[1] = v21;
    sub_257CCA9D4(v16, v9);
    swift_storeEnumTagMultiPayload();
    sub_257ECC3F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F72D0, &qword_257EE0C68);
    sub_257CCA6C8();
    sub_257CCA840();
    sub_257ECE6F0();
    return sub_257CCAA44(v16);
  }

  else
  {
    v26 = v1[6];
    v47 = v1[7];
    v48 = v26;
    sub_257BBD7E4(v26, v47);
    type metadata accessor for MFReaderBlockManager(0);
    sub_257CCA98C(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager, &protocol conformance descriptor for MFReaderBlockManager);
    v49 = v10;
    v27 = sub_257ECE330();
    v45 = v3;
    v28 = v27;
    v42 = v29;
    v52[0] = 0;
    sub_257ECEE50();
    v44 = v50;
    v43 = v51;
    v52[0] = 1;
    sub_257ECEE50();
    v46 = a1;
    v30 = v50;
    v31 = v51;
    v52[0] = 1;
    sub_257ECEE50();
    v32 = v50;
    v33 = v51;
    LOBYTE(v50) = 0;
    v52[0] = 0;
    v34 = v1[3];
    v35 = sub_257ECDCE0();
    v36 = v50;
    v37 = v52[0];
    v38 = v42;
    *v9 = v28;
    *(v9 + 1) = v38;
    *(v9 + 2) = sub_257C337B4;
    *(v9 + 3) = 0;
    v9[32] = v36;
    *(v9 + 5) = sub_257C337EC;
    *(v9 + 6) = 0;
    v9[56] = v37;
    v39 = v47;
    *(v9 + 8) = v48;
    *(v9 + 9) = v39;
    v9[80] = v44;
    *(v9 + 11) = v43;
    v9[96] = v30;
    *(v9 + 13) = v31;
    v9[112] = v32;
    *(v9 + 15) = v33;
    *(v9 + 16) = v35;
    *(v9 + 17) = v34;
    swift_storeEnumTagMultiPayload();
    v40 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F72D0, &qword_257EE0C68);
    sub_257CCA6C8();
    sub_257CCA840();
    return sub_257ECE6F0();
  }
}

unint64_t sub_257CCA6C8()
{
  result = qword_27F8F72D8;
  if (!qword_27F8F72D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F72C8, &qword_257EE0C60);
    sub_257CCA76C();
    sub_257CCA938(&qword_27F8F7308, &qword_27F8F7310, &unk_257EE0C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F72D8);
  }

  return result;
}

unint64_t sub_257CCA76C()
{
  result = qword_27F8F72E0;
  if (!qword_27F8F72E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F72E8, &qword_257EE0C70);
    sub_257CCA98C(&qword_27F8F72F0, MEMORY[0x277CE7468], MEMORY[0x277CE7460]);
    sub_257CCA938(&qword_27F8F72F8, &qword_27F8F7300, &qword_257EE0C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F72E0);
  }

  return result;
}

unint64_t sub_257CCA840()
{
  result = qword_27F8F7318;
  if (!qword_27F8F7318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F72D0, &qword_257EE0C68);
    sub_257CCA8E4();
    sub_257CCA938(&qword_27F8F6120, &qword_27F8F6128, &qword_257EDC770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7318);
  }

  return result;
}

unint64_t sub_257CCA8E4()
{
  result = qword_27F8F7320;
  if (!qword_27F8F7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7320);
  }

  return result;
}

uint64_t sub_257CCA938(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_257CCA98C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257CCA9D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F72C8, &qword_257EE0C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257CCAA44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F72C8, &qword_257EE0C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_257CCAAAC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v21 = 1;
  v8 = objc_allocWithZone(type metadata accessor for MFReaderBlockManager(0));
  v9 = sub_257CD4C68(0, &v21);
  sub_257ECD950();
  swift_allocObject();
  sub_257ECD940();
  sub_257ECD8F0();
  sub_257CCA98C(&qword_27F8F7328, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
  v10 = a1;
  v11 = sub_257ECE150();
  v13 = v12;
  sub_257CCA98C(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager, &protocol conformance descriptor for MFReaderBlockManager);
  v14 = v9;
  v15 = sub_257ECE150();
  v17 = v16;
  sub_257CCA98C(&qword_27F8F7330, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  v18 = sub_257ECE150();
  v20 = v19;

  *a4 = v11;
  a4[1] = v13;
  a4[2] = v15;
  a4[3] = v17;
  a4[4] = v18;
  a4[5] = v20;
  a4[6] = a2;
  a4[7] = a3;
}

void sub_257CCAC60(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v29 = a3;
  v7 = sub_257ECD900();
  v11 = MEMORY[0x28223BE20](v7, v8, v7, v9, v10);
  (*(v13 + 104))(&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE7240], v11);
  v14 = objc_allocWithZone(sub_257ECD8F0());
  v15 = sub_257ECD8D0();
  sub_257ECD950();
  swift_allocObject();
  sub_257ECD940();
  sub_257CCA98C(&qword_27F8F7328, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
  v16 = v15;
  v17 = sub_257ECE150();
  v19 = v18;
  type metadata accessor for MFReaderBlockManager(0);
  sub_257CCA98C(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager, &protocol conformance descriptor for MFReaderBlockManager);
  v20 = a1;
  v21 = sub_257ECE150();
  v23 = v22;
  sub_257CCA98C(&qword_27F8F7330, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  v24 = sub_257ECE150();
  v26 = v25;

  *a4 = v17;
  a4[1] = v19;
  a4[2] = v21;
  a4[3] = v23;
  a4[4] = v24;
  a4[5] = v26;
  v27 = v29;
  a4[6] = a2;
  a4[7] = v27;
}

unint64_t sub_257CCAEC0()
{
  result = qword_27F8F7338;
  if (!qword_27F8F7338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7340, &qword_257EE0C90);
    sub_257CCA6C8();
    sub_257CCA840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7338);
  }

  return result;
}

MagnifierSupport::DetectedTextAndLanguage __swiftcall DetectedTextAndLanguage.init(text:locale:)(Swift::String text, Swift::String locale)
{
  *v2 = text;
  v2[1] = locale;
  result.locale = locale;
  result.text = text;
  return result;
}

int *DetectedTextBlock.init(stringLocaleMap:normalizedBbox:confidence:detectLanguages:outputRegion:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>)
{
  sub_257ECCCE0();
  result = type metadata accessor for DetectedTextBlock(0);
  v19 = result[9];
  *(a4 + result[5]) = a1;
  v20 = (a4 + result[6]);
  *v20 = a5;
  v20[1] = a6;
  v20[2] = a7;
  v20[3] = a8;
  *(a4 + result[7]) = a9;
  *(a4 + result[8]) = a2;
  *(a4 + v19) = a3;
  return result;
}

uint64_t type metadata accessor for DetectedTextBlock(uint64_t a1)
{
  result = qword_27F8F7370;
  if (!qword_27F8F7370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257CCB040(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_257ED0360();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x259C72E20](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_257ED0330();
      sub_257ED0370();
      sub_257ED0380();
      sub_257ED0340();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_257ED0210();
    sub_257ED0360();
  }

  return v8;
}

void sub_257CCB1A8(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v283 = a2;
  v280 = a3;
  v3 = *(a1 + 16);
  v282 = v3;
  v279 = a1;
  if (v3)
  {
    v4 = a1 + 32;
    v5 = MEMORY[0x277D84F90];
    v6 = a1 + 32;
    while (1)
    {
      sub_257C024BC(v6, &v287);
      v7 = v288;
      v8 = v289;
      __swift_project_boxed_opaque_existential_1(&v287, v288);
      v9 = (*(v8 + 40))(v7, v8);
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = [objc_opt_self() currentDevice];
      v17 = [v16 orientation];

      if (v17 == 3 || v17 == 4)
      {
        CGSizeMake();
        v9 = v18;
        v20 = v19;
        v13 = v21;
        v15 = v22;
        if ((v283 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (1.0 - v11 - v15 > 0.0)
        {
          v20 = 1.0 - v11 - v15;
        }

        else
        {
          v20 = 0.0;
        }

        if ((v283 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v9 = v9 + -0.025;
      v20 = v20 + -0.025;
      v13 = (v13 + 0.05) * 1.05;
      v15 = (v15 + 0.05) * 1.05;
LABEL_7:
      v294.origin.x = v9;
      v294.origin.y = v20;
      v294.size.width = v13;
      v294.size.height = v15;
      if (CGRectGetMinX(v294) >= 0.0 && (v295.origin.x = v9, v295.origin.y = v20, v295.size.width = v13, v295.size.height = v15, CGRectGetMinY(v295) >= 0.0) && (v296.origin.x = v9, v296.origin.y = v20, v296.size.width = v13, v296.size.height = v15, CGRectGetMaxX(v296) <= 1.0) && (v297.origin.x = v9, v297.origin.y = v20, v297.size.width = v13, v297.size.height = v15, CGRectGetMaxY(v297) <= 1.0))
      {
        sub_257BE40E4(&v287, v284);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v290[0] = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_257BF2824(0, *(v5 + 16) + 1, 1);
          v5 = v290[0];
        }

        v25 = *(v5 + 16);
        v24 = *(v5 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_257BF2824((v24 > 1), v25 + 1, 1);
        }

        v26 = v285;
        v27 = v286;
        v28 = __swift_mutable_project_boxed_opaque_existential_1(v284, v285);
        v32 = MEMORY[0x28223BE20](v28, v28, v29, v30, v31);
        v34 = &v269[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v35 + 16))(v34, v32);
        sub_257CCE078(v25, v34, v290, v26, v27);
        __swift_destroy_boxed_opaque_existential_0(v284);
        v5 = v290[0];
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v287);
      }

      v6 += 40;
      if (!--v3)
      {
        v36 = *(v5 + 16);

        if (v36)
        {
          v37 = v282;
          if (v282 == v36)
          {
            v278 = 0;
            v38 = 1;
            v39 = &v293;
          }

          else
          {
            v38 = v282 * 0.75 <= v36;
            LODWORD(v281) = v38;
            v39 = &v292 + 4;
          }

          *(v39 - 64) = v38;
          v44 = v37;
        }

        else
        {
          LODWORD(v281) = 0;
          v278 = 0;
          v44 = v282;
        }

        v45 = MEMORY[0x277D84F90];
        v46 = v4;
        do
        {
          sub_257C024BC(v46, &v287);
          v47 = v288;
          v48 = v289;
          __swift_project_boxed_opaque_existential_1(&v287, v288);
          (*(v48 + 40))(v47, v48);
          sub_257E5B51C();
          x = v298.origin.x;
          y = v298.origin.y;
          width = v298.size.width;
          height = v298.size.height;
          if ((CGRectGetMinX(v298) >= 0.0 || (v299.origin.x = x, v299.origin.y = y, v299.size.width = width, v299.size.height = height, CGRectGetMaxX(v299) < 0.75) || (v300.origin.x = x, v300.origin.y = y, v300.size.width = width, v300.size.height = height, CGRectGetMaxX(v300) > 1.0)) && ((v301.origin.x = x, v301.origin.y = y, v301.size.width = width, v301.size.height = height, CGRectGetMinX(v301) < 0.0) || (v302.origin.x = x, v302.origin.y = y, v302.size.width = width, v302.size.height = height, CGRectGetMinX(v302) > 0.25) || (v303.origin.x = x, v303.origin.y = y, v303.size.width = width, v303.size.height = height, CGRectGetMaxX(v303) <= 1.0)) && ((v304.origin.x = x, v304.origin.y = y, v304.size.width = width, v304.size.height = height, CGRectGetMinY(v304) >= 0.0) || (v305.origin.x = x, v305.origin.y = y, v305.size.width = width, v305.size.height = height, CGRectGetMaxY(v305) < 0.75) || (v306.origin.x = x, v306.origin.y = y, v306.size.width = width, v306.size.height = height, CGRectGetMaxY(v306) > 1.0)) && ((v307.origin.x = x, v307.origin.y = y, v307.size.width = width, v307.size.height = height, CGRectGetMinY(v307) < 0.0) || (v308.origin.x = x, v308.origin.y = y, v308.size.width = width, v308.size.height = height, CGRectGetMinY(v308) > 0.25) || (v309.origin.x = x, v309.origin.y = y, v309.size.width = width, v309.size.height = height, CGRectGetMaxY(v309) <= 1.0)))
          {
            __swift_destroy_boxed_opaque_existential_0(&v287);
          }

          else
          {
            sub_257BE40E4(&v287, v284);
            v53 = swift_isUniquelyReferenced_nonNull_native();
            v290[0] = v45;
            if ((v53 & 1) == 0)
            {
              sub_257BF2824(0, *(v45 + 16) + 1, 1);
              v45 = v290[0];
            }

            v55 = *(v45 + 16);
            v54 = *(v45 + 24);
            if (v55 >= v54 >> 1)
            {
              sub_257BF2824((v54 > 1), v55 + 1, 1);
            }

            v56 = v285;
            v57 = v286;
            v58 = __swift_mutable_project_boxed_opaque_existential_1(v284, v285);
            v62 = MEMORY[0x28223BE20](v58, v58, v59, v60, v61);
            v64 = &v269[-((v63 + 15) & 0xFFFFFFFFFFFFFFF0)];
            (*(v65 + 16))(v64, v62);
            sub_257CCE078(v55, v64, v290, v56, v57);
            __swift_destroy_boxed_opaque_existential_0(v284);
            v45 = v290[0];
          }

          v46 += 40;
          --v44;
        }

        while (v44);
        v66 = *(v45 + 16);

        if (v281)
        {
LABEL_54:
          v67 = 1;
          goto LABEL_147;
        }

        v275 = v66;
        v68 = MEMORY[0x277D84F90];
        v69 = v282;
        while (2)
        {
          sub_257C024BC(v4, &v287);
          v70 = v288;
          v71 = v289;
          __swift_project_boxed_opaque_existential_1(&v287, v288);
          v72 = (*(v71 + 40))(v70, v71);
          v74 = v73;
          v76 = v75;
          v78 = v77;
          v79 = [objc_opt_self() currentDevice];
          v80 = [v79 orientation];

          if (v80 == 3 || v80 == 4)
          {
            CGSizeMake();
            v72 = v81;
            v83 = v82;
            v76 = v84;
            v78 = v85;
            if (v283)
            {
              goto LABEL_61;
            }
          }

          else
          {
            if (1.0 - v74 - v78 > 0.0)
            {
              v83 = 1.0 - v74 - v78;
            }

            else
            {
              v83 = 0.0;
            }

            if (v283)
            {
LABEL_61:
              v72 = v72 + -0.025;
              v83 = v83 + -0.025;
              v76 = (v76 + 0.05) * 1.05;
              v78 = (v78 + 0.05) * 1.05;
            }
          }

          v310.origin.x = v72;
          v310.origin.y = v83;
          v310.size.width = v76;
          v310.size.height = v78;
          if (CGRectGetMinY(v310) >= 0.0 && (v311.origin.x = v72, v311.origin.y = v83, v311.size.width = v76, v311.size.height = v78, CGRectGetMaxY(v311) >= 0.3))
          {
            __swift_destroy_boxed_opaque_existential_0(&v287);
          }

          else
          {
            sub_257BE40E4(&v287, v284);
            v86 = swift_isUniquelyReferenced_nonNull_native();
            v290[0] = v68;
            if ((v86 & 1) == 0)
            {
              sub_257BF2824(0, *(v68 + 16) + 1, 1);
              v68 = v290[0];
            }

            v88 = *(v68 + 16);
            v87 = *(v68 + 24);
            if (v88 >= v87 >> 1)
            {
              sub_257BF2824((v87 > 1), v88 + 1, 1);
            }

            v89 = v285;
            v90 = v286;
            v91 = __swift_mutable_project_boxed_opaque_existential_1(v284, v285);
            v95 = MEMORY[0x28223BE20](v91, v91, v92, v93, v94);
            v97 = &v269[-((v96 + 15) & 0xFFFFFFFFFFFFFFF0)];
            (*(v98 + 16))(v97, v95);
            sub_257CCE078(v88, v97, v290, v89, v90);
            __swift_destroy_boxed_opaque_existential_0(v284);
            v68 = v290[0];
          }

          v4 += 40;
          if (!--v69)
          {
            goto LABEL_76;
          }

          continue;
        }
      }
    }
  }

  v40 = MEMORY[0x277D84F90];
  v41 = *(MEMORY[0x277D84F90] + 16);

  if (v41)
  {
    v42 = v41;
    v43 = *(v40 + 16);

    if (v282 * 0.75 <= v42)
    {
      goto LABEL_54;
    }

    v275 = v43;
  }

  else
  {
    v275 = *(v40 + 16);
  }

  v278 = 0;
  v68 = MEMORY[0x277D84F90];
LABEL_76:
  v99 = *(v68 + 16);
  if (!v99)
  {

    v272 = 0;
    v146 = 0;
    v276 = 0;
LABEL_104:
    v148 = &v292;
    goto LABEL_106;
  }

  v100 = 0;
  v101 = v68 + 32;
  v102 = MEMORY[0x277D84F90];
  v103 = v68 + 32;
  do
  {
    if (v100 >= *(v68 + 16))
    {
      __break(1u);
      goto LABEL_218;
    }

    sub_257C024BC(v103, &v287);
    v104 = v288;
    v105 = v289;
    __swift_project_boxed_opaque_existential_1(&v287, v288);
    (*(v105 + 40))(v104, v105);
    sub_257E5B51C();
    v106 = v312.origin.x;
    v107 = v312.origin.y;
    v108 = v312.size.width;
    v109 = v312.size.height;
    if (CGRectGetMinX(v312) >= 0.0 && (v313.origin.x = v106, v313.origin.y = v107, v313.size.width = v108, v313.size.height = v109, CGRectGetMaxX(v313) >= 0.3))
    {
      __swift_destroy_boxed_opaque_existential_0(&v287);
    }

    else
    {
      sub_257BE40E4(&v287, v284);
      v110 = swift_isUniquelyReferenced_nonNull_native();
      v290[0] = v102;
      if ((v110 & 1) == 0)
      {
        sub_257BF2824(0, *(v102 + 16) + 1, 1);
        v102 = v290[0];
      }

      v112 = *(v102 + 16);
      v111 = *(v102 + 24);
      if (v112 >= v111 >> 1)
      {
        sub_257BF2824((v111 > 1), v112 + 1, 1);
      }

      v113 = v285;
      v114 = v286;
      v115 = __swift_mutable_project_boxed_opaque_existential_1(v284, v285);
      v119 = MEMORY[0x28223BE20](v115, v115, v116, v117, v118);
      v121 = &v269[-((v120 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v122 + 16))(v121, v119);
      sub_257CCE078(v112, v121, v290, v113, v114);
      __swift_destroy_boxed_opaque_existential_0(v284);
      v102 = v290[0];
    }

    ++v100;
    v103 += 40;
  }

  while (v99 != v100);
  v123 = *(v102 + 16);

  v277 = v123 != 0;
  v276 = v123 == 0;
  v124 = *(v68 + 16);
  if (!v124)
  {
    v126 = MEMORY[0x277D84F90];
LABEL_102:

    v147 = *(v126 + 16);

    if (v147)
    {
      v272 = v276;
      v146 = v277;
      goto LABEL_104;
    }

    v272 = v277;
    v146 = v276;
    v148 = &v291 + 4;
LABEL_106:
    *(v148 - 64) = 0;
    v274 = v146;
    v149 = MEMORY[0x277D84F90];
    v150 = v282;
    if (v282)
    {
      v151 = v279 + 32;
      v152 = MEMORY[0x277D84F90];
      do
      {
        sub_257C024BC(v151, &v287);
        v153 = v288;
        v154 = v289;
        __swift_project_boxed_opaque_existential_1(&v287, v288);
        (*(v154 + 40))(v153, v154);
        sub_257E5B51C();
        v155 = v316.origin.x;
        v156 = v316.origin.y;
        v157 = v316.size.width;
        v158 = v316.size.height;
        if (CGRectGetMaxY(v316) <= 1.0 && (v317.origin.x = v155, v317.origin.y = v156, v317.size.width = v157, v317.size.height = v158, CGRectGetMinY(v317) <= 0.7))
        {
          __swift_destroy_boxed_opaque_existential_0(&v287);
        }

        else
        {
          sub_257BE40E4(&v287, v284);
          v159 = swift_isUniquelyReferenced_nonNull_native();
          v290[0] = v152;
          if ((v159 & 1) == 0)
          {
            sub_257BF2824(0, *(v152 + 16) + 1, 1);
            v152 = v290[0];
          }

          v161 = *(v152 + 16);
          v160 = *(v152 + 24);
          if (v161 >= v160 >> 1)
          {
            sub_257BF2824((v160 > 1), v161 + 1, 1);
          }

          v162 = v285;
          v163 = v286;
          v164 = __swift_mutable_project_boxed_opaque_existential_1(v284, v285);
          v168 = MEMORY[0x28223BE20](v164, v164, v165, v166, v167);
          v170 = &v269[-((v169 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v171 + 16))(v170, v168);
          sub_257CCE078(v161, v170, v290, v162, v163);
          __swift_destroy_boxed_opaque_existential_0(v284);
          v152 = v290[0];
        }

        v151 += 40;
        --v150;
      }

      while (v150);
    }

    else
    {
      v152 = MEMORY[0x277D84F90];
    }

    v281 = *(v152 + 16);
    if (v281)
    {
      v172 = 0;
      v173 = v152 + 32;
      v174 = MEMORY[0x277D84F90];
      v175 = v152 + 32;
      while (v172 < *(v152 + 16))
      {
        sub_257C024BC(v175, &v287);
        v177 = v288;
        v176 = v289;
        __swift_project_boxed_opaque_existential_1(&v287, v288);
        (*(v176 + 40))(v177, v176);
        sub_257E5B51C();
        v178 = v318.origin.x;
        v179 = v318.origin.y;
        v180 = v318.size.width;
        v181 = v318.size.height;
        if (CGRectGetMinX(v318) >= 0.0 && (v319.origin.x = v178, v319.origin.y = v179, v319.size.width = v180, v319.size.height = v181, CGRectGetMaxX(v319) >= 0.3))
        {
          __swift_destroy_boxed_opaque_existential_0(&v287);
        }

        else
        {
          sub_257BE40E4(&v287, v284);
          v182 = swift_isUniquelyReferenced_nonNull_native();
          v290[0] = v174;
          if ((v182 & 1) == 0)
          {
            sub_257BF2824(0, *(v174 + 16) + 1, 1);
            v174 = v290[0];
          }

          v184 = *(v174 + 16);
          v183 = *(v174 + 24);
          if (v184 >= v183 >> 1)
          {
            sub_257BF2824((v183 > 1), v184 + 1, 1);
          }

          v185 = v285;
          v186 = v286;
          v187 = __swift_mutable_project_boxed_opaque_existential_1(v284, v285);
          v191 = MEMORY[0x28223BE20](v187, v187, v188, v189, v190);
          v193 = &v269[-((v192 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v194 + 16))(v193, v191);
          sub_257CCE078(v184, v193, v290, v185, v186);
          __swift_destroy_boxed_opaque_existential_0(v284);
          v174 = v290[0];
        }

        ++v172;
        v175 += 40;
        if (v281 == v172)
        {
          v195 = *(v174 + 16);

          v273 = v195 != 0;
          LODWORD(v281) = v195 == 0;
          v196 = *(v152 + 16);
          if (v196)
          {
            v197 = 0;
            v198 = MEMORY[0x277D84F90];
            while (v197 < *(v152 + 16))
            {
              sub_257C024BC(v173, &v287);
              v199 = v288;
              v200 = v289;
              __swift_project_boxed_opaque_existential_1(&v287, v288);
              (*(v200 + 40))(v199, v200);
              sub_257E5B51C();
              v201 = v320.origin.x;
              v202 = v320.origin.y;
              v203 = v320.size.width;
              v204 = v320.size.height;
              if (CGRectGetMaxX(v320) <= 1.0 && (v321.origin.x = v201, v321.origin.y = v202, v321.size.width = v203, v321.size.height = v204, CGRectGetMinX(v321) <= 0.7))
              {
                __swift_destroy_boxed_opaque_existential_0(&v287);
              }

              else
              {
                sub_257BE40E4(&v287, v284);
                v205 = swift_isUniquelyReferenced_nonNull_native();
                v290[0] = v198;
                if ((v205 & 1) == 0)
                {
                  sub_257BF2824(0, *(v198 + 16) + 1, 1);
                  v198 = v290[0];
                }

                v207 = *(v198 + 16);
                v206 = *(v198 + 24);
                if (v207 >= v206 >> 1)
                {
                  sub_257BF2824((v206 > 1), v207 + 1, 1);
                }

                v208 = v285;
                v209 = v286;
                v210 = __swift_mutable_project_boxed_opaque_existential_1(v284, v285);
                v214 = MEMORY[0x28223BE20](v210, v210, v211, v212, v213);
                v216 = &v269[-((v215 + 15) & 0xFFFFFFFFFFFFFFF0)];
                (*(v217 + 16))(v216, v214);
                sub_257CCE078(v207, v216, v290, v208, v209);
                __swift_destroy_boxed_opaque_existential_0(v284);
                v198 = v290[0];
              }

              ++v197;
              v173 += 40;
              if (v196 == v197)
              {
                goto LABEL_155;
              }
            }

            goto LABEL_220;
          }

          v198 = MEMORY[0x277D84F90];
LABEL_155:

          v224 = *(v198 + 16);

          if (v224)
          {
            v270 = 0;
            v218 = v281;
            v271 = v281;
            LODWORD(v281) = v273;
            v219 = v282;
            if (!v282)
            {
              goto LABEL_143;
            }

            goto LABEL_157;
          }

          v271 = 0;
          v218 = v273;
          v270 = v273;
          v219 = v282;
          if (v282)
          {
            goto LABEL_157;
          }

          goto LABEL_143;
        }
      }

LABEL_218:
      __break(1u);
      goto LABEL_219;
    }

    v271 = 0;
    v270 = 0;
    v218 = 0;
    LODWORD(v281) = 0;
    v219 = v282;
    if (v282)
    {
LABEL_157:
      v225 = v279 + 32;
      v226 = MEMORY[0x277D84F90];
      v227 = v279 + 32;
      do
      {
        sub_257C024BC(v227, &v287);
        v228 = v288;
        v229 = v289;
        __swift_project_boxed_opaque_existential_1(&v287, v288);
        (*(v229 + 40))(v228, v229);
        sub_257E5B51C();
        v230 = v322.origin.x;
        v231 = v322.origin.y;
        v232 = v322.size.width;
        v233 = v322.size.height;
        if (CGRectGetMinX(v322) >= 0.0 && (v323.origin.x = v230, v323.origin.y = v231, v323.size.width = v232, v323.size.height = v233, CGRectGetMaxX(v323) >= 0.3))
        {
          __swift_destroy_boxed_opaque_existential_0(&v287);
        }

        else
        {
          sub_257BE40E4(&v287, v284);
          v234 = swift_isUniquelyReferenced_nonNull_native();
          v290[0] = v226;
          if ((v234 & 1) == 0)
          {
            sub_257BF2824(0, *(v226 + 16) + 1, 1);
            v226 = v290[0];
          }

          v236 = *(v226 + 16);
          v235 = *(v226 + 24);
          if (v236 >= v235 >> 1)
          {
            sub_257BF2824((v235 > 1), v236 + 1, 1);
          }

          v237 = v285;
          v238 = v286;
          v239 = __swift_mutable_project_boxed_opaque_existential_1(v284, v285);
          v243 = MEMORY[0x28223BE20](v239, v239, v240, v241, v242);
          v245 = &v269[-((v244 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v246 + 16))(v245, v243);
          sub_257CCE078(v236, v245, v290, v237, v238);
          __swift_destroy_boxed_opaque_existential_0(v284);
          v226 = v290[0];
        }

        v227 += 40;
        --v219;
      }

      while (v219);
      v220 = *(v226 + 16);

      v149 = MEMORY[0x277D84F90];
      do
      {
        sub_257C024BC(v225, &v287);
        v247 = v288;
        v248 = v289;
        __swift_project_boxed_opaque_existential_1(&v287, v288);
        (*(v248 + 40))(v247, v248);
        sub_257E5B51C();
        v249 = v324.origin.x;
        v250 = v324.origin.y;
        v251 = v324.size.width;
        v252 = v324.size.height;
        if (CGRectGetMaxX(v324) <= 1.0 && (v325.origin.x = v249, v325.origin.y = v250, v325.size.width = v251, v325.size.height = v252, CGRectGetMinX(v325) <= 0.7))
        {
          __swift_destroy_boxed_opaque_existential_0(&v287);
        }

        else
        {
          sub_257BE40E4(&v287, v284);
          v253 = swift_isUniquelyReferenced_nonNull_native();
          v290[0] = v149;
          if ((v253 & 1) == 0)
          {
            sub_257BF2824(0, *(v149 + 16) + 1, 1);
            v149 = v290[0];
          }

          v255 = *(v149 + 16);
          v254 = *(v149 + 24);
          if (v255 >= v254 >> 1)
          {
            sub_257BF2824((v254 > 1), v255 + 1, 1);
          }

          v256 = v285;
          v257 = v286;
          v258 = __swift_mutable_project_boxed_opaque_existential_1(v284, v285);
          v262 = MEMORY[0x28223BE20](v258, v258, v259, v260, v261);
          v264 = &v269[-((v263 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v265 + 16))(v264, v262);
          sub_257CCE078(v255, v264, v290, v256, v257);
          __swift_destroy_boxed_opaque_existential_0(v284);
          v149 = v290[0];
        }

        v225 += 40;
        --v282;
      }

      while (v282);
    }

    else
    {
LABEL_143:
      v220 = *(v149 + 16);
    }

    v221 = *(v149 + 16);

    if (v221)
    {
      if (v220)
      {
        v67 = 0;
LABEL_147:
        v222 = v280;
        goto LABEL_202;
      }

      v222 = v280;
      if (v274)
      {
        v266 = v281;
        if (v275)
        {
          v266 = 1;
        }

        v267 = v278;
        if (v266)
        {
          goto LABEL_201;
        }
      }

      else
      {
        v267 = v278;
        if (v275)
        {
          goto LABEL_201;
        }
      }

      if ((v267 & 1) == 0 && (((v276 | v271) & 1) != 0 || (((v274 || v272) | v281 | v218) & 1) == 0))
      {
        v67 = 6;
        goto LABEL_202;
      }

LABEL_201:
      v67 = 0;
      goto LABEL_202;
    }

    if (v220)
    {
      v222 = v280;
      if (v274)
      {
        v223 = v281;
        if (v275)
        {
          v223 = 1;
        }

        if (v223)
        {
          goto LABEL_201;
        }
      }

      else if (v275)
      {
        goto LABEL_201;
      }

      if (v278 & 1) != 0 || !v277 && !v270 && (((v274 || v272) | v281 | v218))
      {
        goto LABEL_201;
      }

      v67 = 5;
    }

    else
    {
      v222 = v280;
      if (!v274)
      {
        if (!v275)
        {
          if (v281)
          {
            if (((v272 | v278) & 1) == 0)
            {
              v67 = 8;
              goto LABEL_202;
            }
          }

          else
          {
            if (((v218 | v278) & 1) == 0)
            {
              v67 = v277 ? 2 : 4;
              if (v277 || v276)
              {
                goto LABEL_202;
              }
            }

            if (((v272 | v278) & 1) == 0)
            {
              v67 = v270 ? 7 : 9;
              if ((v270 | v271))
              {
                goto LABEL_202;
              }
            }
          }
        }

        goto LABEL_201;
      }

      v268 = v281;
      if (v275)
      {
        v268 = 1;
      }

      if (v268 & 1) != 0 || ((v218 | v278))
      {
        goto LABEL_201;
      }

      v67 = 3;
    }

LABEL_202:
    *v222 = v67;
    return;
  }

  v125 = 0;
  v126 = MEMORY[0x277D84F90];
  while (v125 < *(v68 + 16))
  {
    sub_257C024BC(v101, &v287);
    v127 = v288;
    v128 = v289;
    __swift_project_boxed_opaque_existential_1(&v287, v288);
    (*(v128 + 40))(v127, v128);
    sub_257E5B51C();
    v129 = v314.origin.x;
    v130 = v314.origin.y;
    v131 = v314.size.width;
    v132 = v314.size.height;
    if (CGRectGetMaxX(v314) <= 1.0 && (v315.origin.x = v129, v315.origin.y = v130, v315.size.width = v131, v315.size.height = v132, CGRectGetMinX(v315) <= 0.7))
    {
      __swift_destroy_boxed_opaque_existential_0(&v287);
    }

    else
    {
      sub_257BE40E4(&v287, v284);
      v133 = swift_isUniquelyReferenced_nonNull_native();
      v290[0] = v126;
      if ((v133 & 1) == 0)
      {
        sub_257BF2824(0, *(v126 + 16) + 1, 1);
        v126 = v290[0];
      }

      v135 = *(v126 + 16);
      v134 = *(v126 + 24);
      if (v135 >= v134 >> 1)
      {
        sub_257BF2824((v134 > 1), v135 + 1, 1);
      }

      v136 = v285;
      v137 = v286;
      v138 = __swift_mutable_project_boxed_opaque_existential_1(v284, v285);
      v142 = MEMORY[0x28223BE20](v138, v138, v139, v140, v141);
      v144 = &v269[-((v143 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v145 + 16))(v144, v142);
      sub_257CCE078(v135, v144, v290, v136, v137);
      __swift_destroy_boxed_opaque_existential_0(v284);
      v126 = v290[0];
    }

    ++v125;
    v101 += 40;
    if (v124 == v125)
    {
      goto LABEL_102;
    }
  }

LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
}

uint64_t TextDetectionDirection.description.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v5 = 0x2E6D6F74746F622ELL;
    v6 = 0x6E776F642ELL;
    if (v1 != 8)
    {
      v6 = 0x2E6D6F74746F622ELL;
    }

    if (v1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7466656C2ELL;
    if (v1 != 5)
    {
      v7 = 0x74686769722ELL;
    }

    if (*v0 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 7370030;
    if (v1 != 3)
    {
      v2 = 0x6769722E706F742ELL;
    }

    v3 = 0x66656C2E706F742ELL;
    if (v1 < 2)
    {
      v3 = 0;
    }

    if (*v0 <= 2u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_257CCCE54@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  if (result)
  {
    v4 = v3 - 3;
    v5 = v4 >= 6u;
    v6 = 0xA0C090B0C08uLL >> (8 * (v4 & 0x1Fu));
    if (v5)
    {
      LOBYTE(v6) = 12;
    }

    *a2 = v6;
  }

  else
  {
    *a2 = byte_257EE0F82[v3];
  }

  return result;
}

uint64_t static DetectedTextAndLanguage.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_257ED0640(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_257ED0640();
    }
  }

  return result;
}

uint64_t sub_257CCCF44(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_257ED0640(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_257ED0640();
    }
  }

  return result;
}

uint64_t DetectedTextBlock.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECCCF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DetectedTextBlock.id.setter(uint64_t a1)
{
  v3 = sub_257ECCCF0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DetectedTextBlock.stringLocaleMap.getter()
{
  type metadata accessor for DetectedTextBlock(0);
}

void DetectedTextBlock.stringLocaleMap.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DetectedTextBlock(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t DetectedTextBlock.normalizedBbox.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for DetectedTextBlock(0);
  v10 = (v4 + *(result + 24));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t DetectedTextBlock.confidence.setter(double a1)
{
  result = type metadata accessor for DetectedTextBlock(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t DetectedTextBlock.detectLanguages.setter(char a1)
{
  result = type metadata accessor for DetectedTextBlock(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

void *DetectedTextBlock.outputRegion.getter()
{
  v1 = *(v0 + *(type metadata accessor for DetectedTextBlock(0) + 36));
  v2 = v1;
  return v1;
}

void DetectedTextBlock.outputRegion.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DetectedTextBlock(0) + 36);

  *(v1 + v3) = a1;
}

uint64_t DetectedTextBlock.hash(into:)(uint64_t a1)
{
  sub_257ECCCF0();
  sub_257CCE3A0(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_257ECF400();
}

uint64_t DetectedTextBlock.hashValue.getter()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257CCE3A0(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  return sub_257ED0800();
}

void sub_257CCD564(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);

  *(v2 + v4) = a1;
}

uint64_t sub_257CCD5D4(uint64_t result, double a2, double a3, double a4, double a5)
{
  v6 = (v5 + *(result + 24));
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  return result;
}

void *sub_257CCD684(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));
  v3 = v2;
  return v2;
}

void sub_257CCD6B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
}

uint64_t sub_257CCD70C()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257CCE3A0(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257CCD794(uint64_t a1)
{
  sub_257ECCCF0();
  sub_257CCE3A0(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_257ECF400();
}

uint64_t sub_257CCD818(uint64_t a1)
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257CCE3A0(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t Sequence<>.mag_debugTextBlockDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90, &qword_257EDEFD0);
  sub_257BD2D4C(&qword_27F8F7348, &qword_27F8F9D90, &qword_257EDEFD0, MEMORY[0x277D83970]);
  sub_257ECF770();
  sub_257BD2D4C(&qword_27F8F6D70, &qword_27F8F9D90, &qword_257EDEFD0, MEMORY[0x277D83958]);
  v3 = sub_257ECF420();

  return v3;
}

void sub_257CCD9BC(uint64_t a3@<X3>, void *a4@<X8>)
{
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = v6(AssociatedTypeWitness, a3);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v10)
  {
    v18 = a4;
    v21 = MEMORY[0x277D84F90];
    sub_257BF26A4(0, v10, 0);
    v11 = v21;
    v12 = (v9 + 56);
    do
    {
      v13 = *(v12 - 3);
      v14 = *(v12 - 2);
      v19 = *(v12 - 1);
      v20 = *v12;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      MEMORY[0x259C72150](658386221, 0xE400000000000000);
      MEMORY[0x259C72150](v13, v14);

      MEMORY[0x259C72150](39, 0xE100000000000000);

      v16 = *(v21 + 16);
      v15 = *(v21 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_257BF26A4((v15 > 1), v16 + 1, 1);
      }

      *(v21 + 16) = v16 + 1;
      v17 = v21 + 16 * v16;
      *(v17 + 32) = v19;
      *(v17 + 40) = v20;
      v12 += 4;
      --v10;
    }

    while (v10);

    a4 = v18;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  *a4 = v11;
}

MagnifierSupport::TextDetectionDirection_optional __swiftcall TextDetectionDirection.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 10;
  if (rawValue < 0xA)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void *detectTextBlocks(forDocument:)(void *a1)
{
  v2 = type metadata accessor for DetectedTextBlock(0);
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = &v55 - v14;
  v16 = [a1 blocksWithTypes:2 inRegion:{0.0, 0.0, 1.0, 1.0}];
  sub_257BD2C2C(0, &qword_27F8F5FA8, 0x277CE2D70);
  v17 = sub_257ECF810();

  v18 = sub_257CCB040(v17);

  if (!v18)
  {
    return MEMORY[0x277D84F90];
  }

  v19 = v18 & 0xFFFFFFFFFFFFFF8;
  if (v18 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
  {
    v21 = 0;
    v58 = v18 & 0xC000000000000001;
    v22 = MEMORY[0x277D84F90];
    v56 = v19;
    v57 = v18;
    v55 = i;
    while (1)
    {
      if (v58)
      {
        v23 = MEMORY[0x259C72E20](v21, v18);
      }

      else
      {
        if (v21 >= *(v19 + 16))
        {
          goto LABEL_22;
        }

        v23 = *(v18 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v62 = objc_autoreleasePoolPush();
      v61 = sub_257D11120();
      [v24 boundingBox];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      [v24 confidence];
      v35 = v34;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v36 = v8;
      v37 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectLanguages;
      swift_beginAccess();
      v38 = *(v37 + 8);
      v39 = *(v37 + 16);
      v63[0] = *v37;
      v63[1] = v38;
      v64 = v39;
      v40 = qword_2815447E0;

      if (v40 != -1)
      {
        v41 = swift_once();
      }

      MEMORY[0x28223BE20](v41, v42, v43, v44, v45);
      *(&v55 - 2) = v63;
      sub_257ECFD50();

      v46 = v65;
      v47 = [v24 getCROutputRegion];
      sub_257ECCCE0();
      v48 = v60;
      v49 = v60[9];
      *&v15[v60[5]] = v61;
      v50 = &v15[v48[6]];
      *v50 = v27;
      *(v50 + 1) = v29;
      *(v50 + 2) = v31;
      *(v50 + 3) = v33;
      *&v15[v48[7]] = v35;
      v15[v48[8]] = v46;
      *&v15[v49] = v47;
      v8 = v36;
      sub_257C7E2F0(v15, v36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_257BFD440(0, v22[2] + 1, 1, v22);
      }

      v51 = v55;
      v53 = v22[2];
      v52 = v22[3];
      if (v53 >= v52 >> 1)
      {
        v22 = sub_257BFD440((v52 > 1), v53 + 1, 1, v22);
      }

      v22[2] = v53 + 1;
      sub_257CCE288(v8, v22 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v53);
      sub_257CCE2EC(v15);
      objc_autoreleasePoolPop(v62);

      ++v21;
      v19 = v56;
      v18 = v57;
      if (v25 == v51)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_25:

  return v22;
}

uint64_t sub_257CCE03C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257D12DA0(*a1, *(a1 + 8), *(a1 + 16));
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_257CCE078(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_257BE40E4(&v12, v10 + 40 * a1 + 32);
}

BOOL _s16MagnifierSupport17DetectedTextBlockV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_257ECCCC0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DetectedTextBlock(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (!v7 || (sub_257D55200(v6, v7) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  result = CGRectEqualToRect(*(a1 + v4[6]), *(a2 + v4[6]));
  if (!result)
  {
    return result;
  }

  if (*(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8]))
  {
    v9 = v4[9];
    v10 = *(a1 + v9);
    v11 = *(a2 + v9);
    if (v10)
    {
      if (!v11)
      {
        return 0;
      }

      sub_257BD2C2C(0, &qword_27F8F5B20, 0x277D70098);
      v12 = v11;
      v13 = v10;
      v14 = sub_257ECFF50();

      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_257CCE24C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257D12DA0(**(v1 + 16), *(*(v1 + 16) + 8), *(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_257CCE288(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedTextBlock(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257CCE2EC(uint64_t a1)
{
  v2 = type metadata accessor for DetectedTextBlock(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257CCE348(uint64_t a1)
{
  result = sub_257CCE3A0(&qword_27F8F7350, type metadata accessor for DetectedTextBlock, &protocol conformance descriptor for DetectedTextBlock);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_257CCE3A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_257CCE47C()
{
  result = qword_27F8F7358;
  if (!qword_27F8F7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7358);
  }

  return result;
}

void sub_257CCE678(uint64_t a1)
{
  sub_257ECCCF0();
  if (v1 <= 0x3F)
  {
    sub_257CCE744(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGRect(319);
      if (v3 <= 0x3F)
      {
        sub_257CCE7A8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_257CCE744(uint64_t a1)
{
  if (!qword_27F8F7380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7388, &qword_257EE0F38);
    v1 = sub_257ED00C0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8F7380);
    }
  }
}

void sub_257CCE7A8(uint64_t a1)
{
  if (!qword_27F8F7390)
  {
    sub_257BD2C2C(255, &qword_27F8F5B20, 0x277D70098);
    v1 = sub_257ED00C0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8F7390);
    }
  }
}

uint64_t getEnumTagSinglePayload for DoorAttributeModelHeads.Color(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DoorAttributeModelHeads.Color(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double static MAGAction.detectText()@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_257EDA120;
  *(a1 + 16) = 7;
  return result;
}

double static MAGAction.detectPeople()@<D0>(uint64_t a1@<X8>)
{
  *&result = 5;
  *a1 = xmmword_257EDE780;
  *(a1 + 16) = 7;
  return result;
}

double static MAGAction.detectDoors()@<D0>(uint64_t a1@<X8>)
{
  *&result = 4;
  *a1 = xmmword_257EDE770;
  *(a1 + 16) = 7;
  return result;
}

double static MAGAction.detectFurniture()@<D0>(uint64_t a1@<X8>)
{
  *&result = 6;
  *a1 = xmmword_257EDE760;
  *(a1 + 16) = 7;
  return result;
}

uint64_t MAGAction.actionType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_257CCE9D4(v2, v3, v4);
}

uint64_t sub_257CCE9D4(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

void static MAGAction.describeImage()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 7;
}

uint64_t static MAGAction.adjustZoom(increase:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t static MAGAction.adjustFlashlight(increase:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

uint64_t static MAGAction.adjustBrightness(increase:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 3;
  return result;
}

uint64_t static MAGAction.adjustContrast(increase:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 4;
  return result;
}

uint64_t static MAGAction.toggleFocusLock(on:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 5;
  return result;
}

unsigned __int8 *static MAGAction.adjustFilter(filter:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 6;
  return result;
}

double static MAGAction.startPointAndSpeak()@<D0>(uint64_t a1@<X8>)
{
  *&result = 2;
  *a1 = xmmword_257EE0F90;
  *(a1 + 16) = 7;
  return result;
}

double static MAGAction.startTextDetection()@<D0>(uint64_t a1@<X8>)
{
  *&result = 3;
  *a1 = xmmword_257EE0FA0;
  *(a1 + 16) = 7;
  return result;
}

uint64_t static MAGAction.start(activity:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *a3 = v3;
  *(a3 + 8) = v4;
  *(a3 + 16) = 0;
}

double static MAGAction.readerMode()@<D0>(uint64_t a1@<X8>)
{
  *&result = 7;
  *a1 = xmmword_257EE0FB0;
  *(a1 + 16) = 7;
  return result;
}

uint64_t MAGAction.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MAGAction.ActionType.description.getter();
  MEMORY[0x259C72150](v3);

  return 0x203A6E6F69746341;
}

uint64_t MAGAction.ActionType.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 > 3)
  {
    if (*(v0 + 16) > 5u)
    {
      if (v3 == 6)
      {
        sub_257ED02D0();

        v18 = 0xD000000000000013;
        sub_257D188B4();
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v9 = [objc_opt_self() bundleForClass_];
        v10 = sub_257ECF4C0();

        v11 = sub_257ECF4C0();
        v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

        v13 = sub_257ECF500();
        v15 = v14;

        MEMORY[0x259C72150](v13, v15);

        return v18;
      }

      if (v1 <= 3)
      {
        v16 = 0x6562697263736544;
        if (v1 ^ 2 | v2)
        {
          v17 = 0xD000000000000014;
        }

        else
        {
          v17 = 0xD000000000000015;
        }

        if (v1 | v2)
        {
          v16 = 0x5420746365746544;
        }

        if (v1 <= 1)
        {
          return v16;
        }

        else
        {
          return v17;
        }
      }

      if (v1 > 5)
      {
        if (v1 ^ 6 | v2)
        {
          return 0x726564616552;
        }

        else
        {
          return 0xD000000000000010;
        }
      }

      v4 = 0x4420746365746544;
      v5 = 0x5020746365746544;
      v6 = (v1 ^ 4 | v2) == 0;
    }

    else
    {
      v4 = 0xD000000000000011;
      v5 = 0x6F4C207375636F46;
      v6 = v3 == 4;
    }

    if (v6)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  if (*(v0 + 16) > 1u)
  {
    if (v3 == 2)
    {
      return 0xD00000000000001ELL;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else
  {
    if (!*(v0 + 16))
    {
      sub_257ED02D0();

      v18 = 0xD000000000000016;
      MEMORY[0x259C72150](v1, v2);
      MEMORY[0x259C72150](23847, 0xE200000000000000);
      return v18;
    }

    if (v1)
    {
      return 0x6573616572636E49;
    }

    else
    {
      return 0x6573616572636544;
    }
  }
}

uint64_t sub_257CCEFA4()
{
  v0 = MAGAction.ActionType.description.getter();
  MEMORY[0x259C72150](v0);

  return 0x203A6E6F69746341;
}

uint64_t get_enum_tag_for_layout_string_16MagnifierSupport9MAGActionV10ActionTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_257CCF040(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_257CCF088(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t sub_257CCF0CC(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

id sub_257CCF0FC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setBorderStyle_];
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 tertiarySystemFillColor];
  [v3 setBackgroundColor_];

  [v3 _setCornerRadius_];
  [v3 setReturnKeyType_];
  [v3 setEnablesReturnKeyOnNonWhiteSpaceContent_];
  [v3 setAutocapitalizationType_];
  [v3 setClearButtonMode_];
  v5 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v3 setLeftView_];
  [v3 setLeftViewMode_];
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 userInterfaceLayoutDirection] == 1;

  [v3 setTextAlignment_];
  return v3;
}

id sub_257CCF30C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  sub_257ECF500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D83B88];
  *(v6 + 16) = xmmword_257ED6D30;
  v8 = MEMORY[0x277D83C10];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = 0;
  sub_257ECF540();

  v9 = sub_257ECF4C0();

  [v0 setText_];

  v10 = [objc_opt_self() systemRedColor];
  [v0 setTextColor_];

  v11 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v12 = v0;
  [v12 setClipsToBounds_];
  [v12 setAdjustsFontForContentSizeCategory_];
  [v12 setLineBreakMode_];
  [v12 setTextAlignment_];
  [v12 setNumberOfLines_];
  LODWORD(v13) = 1.0;
  [v12 _setHyphenationFactor_];
  [v12 setHidden_];

  return v12;
}

void sub_257CCF5C8(uint64_t a1, __n128 a2)
{
  v24.receiver = v2;
  v24.super_class = type metadata accessor for ActivityNameOnBoardingController();
  objc_msgSendSuper2(&v24, sel_viewDidLoad);
  v3 = OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField;
  [*&v2[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField] setDelegate_];
  [*&v2[v3] becomeFirstResponder];
  v4 = [v2 contentView];
  [v4 addSubview_];

  sub_257CD0844();
  v5 = [v2 navigationItem];
  [v5 setHidesBackButton_];

  v6 = [v2 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_257ECF4C0();
  v10 = sub_257ECF4C0();
  v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

  sub_257ECF500();
  v22 = 0u;
  v23 = 0u;
  v12 = sub_257ECF4C0();

  v13 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v14 = [v13 initWithTitle:v12 style:0 target:0 action:{0, v22, v23}];

  swift_unknownObjectRelease();
  [v6 setBackBarButtonItem_];

  v15 = [v2 contentView];
  v16 = OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel;
  [v15 addSubview_];

  sub_257CD0AA4();
  [v2 setShouldAdjustScrollViewInsetForKeyboard_];
  [v2 setShouldAdjustButtonTrayForKeyboard_];
  v17 = [v2 contentView];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];

  v18 = [v2 contentView];
  v19 = [v18 bottomAnchor];

  v20 = [*&v2[v16] bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:10.0];

  [v21 setActive_];
}

uint64_t sub_257CCFAD0(void *a1)
{
  v2 = v1;
  v4 = sub_257ECC7D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257CD13D4();
  v12 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField);
  v13 = sub_257ECFF50();

  if ((v13 & 1) == 0)
  {
    return 1;
  }

  result = [a1 text];
  if (result)
  {
    v15 = result;
    sub_257ECC7A0();
    v16 = sub_257ECC790();
    (*(v5 + 8))(v11, v4);
    v17 = [v15 stringByTrimmingCharactersInSet_];

    v18 = sub_257ECF500();
    v20 = v19;

    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (!v21)
    {
      goto LABEL_13;
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v22 = qword_281548348;
    swift_beginAccess();
    v23 = v22[12];
    v24 = v22[13];
    v48 = v22[11];
    v49 = v23;
    v50 = v24;
    v25 = qword_2815447E0;

    if (v25 != -1)
    {
      v26 = swift_once();
    }

    MEMORY[0x28223BE20](v26, v27, v28, v29, v30);
    *(&v48 - 2) = &v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
    sub_257ECFD50();

    v32 = v51;
    v33 = *(v51 + 16);
    if (v33)
    {
      v34 = sub_257C63CC4(*(v51 + 16), 0, v31);
      v35 = sub_257C67A48(&v48, v34 + 4, v33, v32);
      sub_257C02520(v48);
      if (v35 != v33)
      {
        __break(1u);
LABEL_13:

        v41 = v2 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_delegate;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          return 1;
        }

        v42 = *(v41 + 8);
        ObjectType = swift_getObjectType();
        (*(v42 + 8))(ObjectType, v42);
LABEL_19:
        swift_unknownObjectRelease();
        return 1;
      }
    }

    else
    {

      v34 = MEMORY[0x277D84F90];
    }

    v48 = v18;
    v49 = v20;
    MEMORY[0x28223BE20](v36, v37, v38, v39, v40);
    *(&v48 - 2) = &v48;
    v44 = sub_257DF8ED4(sub_257CD1478, (&v48 - 4), v34);

    if (v44)
    {
      return 1;
    }

    v45 = v2 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_delegate;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return 1;
    }

    v46 = *(v45 + 8);
    v47 = swift_getObjectType();
    (*(v46 + 16))(v47, v46);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void sub_257CCFF30(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_257ECC7D0();
  v7 = *(v6 - 8);
  *&v12 = MEMORY[0x28223BE20](v6, v8, v9, v10, v11).n128_u64[0];
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 text];
  if (v15)
  {
    v16 = v15;
    v17 = sub_257ECF500();
    v19 = v18;

    v27[0] = v17;
    v27[1] = v19;
    sub_257ECC7A0();
    sub_257BDAB08();
    v20 = sub_257ED0110();
    v22 = v21;
    (*(v7 + 8))(v14, v6);

    if (a2)
    {
      goto LABEL_3;
    }

    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v23 && (v24 = v3 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_createActivityDelegate, swift_unknownObjectWeakLoadStrong()))
    {
      v25 = *(v24 + 8);
      ObjectType = swift_getObjectType();
      (*(v25 + 24))(v20, v22, ObjectType, v25);

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_3:
    }
  }
}

id sub_257CD01FC(void *a1)
{
  v2 = v1;
  v4 = sub_257ECC7D0();
  v5 = *(v4 - 8);
  *&v10 = MEMORY[0x28223BE20](v4, v6, v7, v8, v9).n128_u64[0];
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 text];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  sub_257ECC7A0();
  v15 = sub_257ECC790();
  (*(v5 + 8))(v12, v4);
  v16 = [v14 stringByTrimmingCharactersInSet_];

  v17 = sub_257ECF500();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    goto LABEL_12;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v21 = qword_281548348;
  swift_beginAccess();
  v22 = v21[12];
  v23 = v21[13];
  v56 = v21[11];
  v57 = v22;
  v58 = v23;
  v24 = qword_2815447E0;

  if (v24 != -1)
  {
    v25 = swift_once();
  }

  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  *(&v56 - 2) = &v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
  sub_257ECFD50();

  v31 = v59;
  v32 = *(v59 + 16);
  if (v32)
  {
    v33 = sub_257C63CC4(*(v59 + 16), 0, v30);
    v34 = sub_257C67A48(&v56, v33 + 4, v32, v31);
    sub_257C02520(v56);
    if (v34 != v32)
    {
      __break(1u);
LABEL_12:

      [*(v2 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel) setHidden_];
LABEL_20:
      v49 = v2 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_createActivityDelegate;
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v50 = *(v49 + 8);
      ObjectType = swift_getObjectType();
      (*(v50 + 16))(ObjectType, v50);
      return swift_unknownObjectRelease();
    }
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  v56 = v17;
  v57 = v19;
  MEMORY[0x28223BE20](v35, v36, v37, v38, v39);
  *(&v56 - 2) = &v56;
  v40 = sub_257DF8ED4(sub_257CD13B8, (&v56 - 4), v33);

  if (v40)
  {
    goto LABEL_18;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v42 = [objc_opt_self() bundleForClass_];
  v43 = sub_257ECF4C0();
  v44 = sub_257ECF4C0();
  v45 = [v42 localizedStringForKey:v43 value:0 table:v44];

  v46 = sub_257ECF500();
  v48 = v47;

  if (v17 == v46 && v19 == v48)
  {

LABEL_18:

LABEL_19:
    [*(v2 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel) setHidden_];
    goto LABEL_20;
  }

  v52 = sub_257ED0640();

  if (v52)
  {
    goto LABEL_19;
  }

  [*(v2 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel) setHidden_];
  v53 = v2 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_createActivityDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v54 = *(v53 + 8);
    v55 = swift_getObjectType();
    (*(v54 + 8))(v55, v54);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_257CD0844()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField] setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [*&v0[v1] leftAnchor];
  v3 = [v0 contentView];
  v4 = [v3 leftAnchor];

  v5 = [v2 constraintEqualToAnchor_];
  [v5 setActive_];

  v6 = [*&v0[v1] rightAnchor];
  v7 = [v0 contentView];
  v8 = [v7 rightAnchor];

  v9 = [v6 constraintEqualToAnchor_];
  [v9 setActive_];

  v10 = [*&v0[v1] heightAnchor];
  v11 = [v10 constraintGreaterThanOrEqualToConstant_];

  [v11 setActive_];
  v12 = [*&v0[v1] topAnchor];
  v13 = [v0 contentView];
  v14 = [v13 topAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:10.0];
  [v15 setActive_];
}

void sub_257CD0AA4()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [*&v0[v1] leftAnchor];
  v3 = [v0 contentView];
  v4 = [v3 leftAnchor];

  v5 = [v2 constraintEqualToAnchor_];
  [v5 setActive_];

  v6 = [*&v0[v1] rightAnchor];
  v7 = [v0 contentView];
  v8 = [v7 rightAnchor];

  v9 = [v6 constraintEqualToAnchor_];
  [v9 setActive_];

  v10 = [*&v0[v1] topAnchor];
  v11 = [*&v0[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField] bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:10.0];

  [v12 setActive_];
}

id sub_257CD0CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_kContentViewHeight] = 50;
  *&v7[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_kTextFieldHeight] = 45;
  *&v7[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_kTextFieldWidthPadding] = 60;
  *&v7[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_kTextFieldTopPadding] = 10;
  *&v7[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_kTextFieldCornerRadius] = 15;
  v11 = OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField;
  *&v7[v11] = sub_257CCF0FC();
  v12 = OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel;
  *&v7[v12] = sub_257CCF30C();
  *&v7[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_button] = 0;
  *&v7[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_createActivityDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = sub_257ECF4C0();

  if (!a4)
  {
    v14 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v14 = sub_257ECF4C0();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = sub_257ECF4C0();

LABEL_6:
  v18.receiver = v7;
  v18.super_class = type metadata accessor for ActivityNameOnBoardingController();
  v16 = objc_msgSendSuper2(&v18, sel_initWithTitle_detailText_symbolName_contentLayout_, v13, v14, v15, a7);

  return v16;
}

id sub_257CD0EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_kContentViewHeight] = 50;
  *&v6[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_kTextFieldHeight] = 45;
  *&v6[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_kTextFieldWidthPadding] = 60;
  *&v6[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_kTextFieldTopPadding] = 10;
  *&v6[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_kTextFieldCornerRadius] = 15;
  v10 = OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField;
  *&v6[v10] = sub_257CCF0FC();
  v11 = OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel;
  *&v6[v11] = sub_257CCF30C();
  *&v6[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_button] = 0;
  *&v6[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_createActivityDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = sub_257ECF4C0();

  if (a4)
  {
    v13 = sub_257ECF4C0();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v6;
  v16.super_class = type metadata accessor for ActivityNameOnBoardingController();
  v14 = objc_msgSendSuper2(&v16, sel_initWithTitle_detailText_icon_contentLayout_, v12, v13, a5, a6);

  return v14;
}

id sub_257CD1104(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActivityNameOnBoardingController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_257CD1238(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_257ED0640() & 1;
  }
}

uint64_t sub_257CD1290()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField);
  v6 = sub_257ECF4C0();
  [v5 setText_];

  [*(v1 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel) setHidden_];
  v7 = v1 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_createActivityDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    v10 = swift_getObjectType();
    (*(v9 + 16))(v10, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_257CD13D4()
{
  result = qword_281543DA0;
  if (!qword_281543DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281543DA0);
  }

  return result;
}

uint64_t sub_257CD1420(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_257ED0640() & 1;
  }
}

uint64_t sub_257CD1494()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v1;
}

void sub_257CD1508()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v1 - 8, v2, v3, v4, v5);
  v7 = &v17 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v8 = v18 - 1;
  if (__OFSUB__(v18, 1))
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v8;
    v9 = v0;
    sub_257ECDD70();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v18 < 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v18) = 2;
      v15 = v9;
      sub_257ECDD70();
      swift_getKeyPath();
      swift_getKeyPath();
      v18 = 0;
      v16 = v15;
      sub_257ECDD70();
    }

    else
    {
      v10 = sub_257ECF930();
      (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
      sub_257ECF900();
      v11 = v9;
      v12 = sub_257ECF8F0();
      v13 = swift_allocObject();
      v14 = MEMORY[0x277D85700];
      *(v13 + 16) = v12;
      *(v13 + 24) = v14;
      *(v13 + 32) = v11;
      *(v13 + 40) = 0;
      sub_257C3FBD4(0, 0, v7, &unk_257EE1548, v13);
    }
  }
}

MagnifierSupport::MFReaderSpeechState_optional __swiftcall MFReaderSpeechState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_257ED04B0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MFReaderSpeechState.rawValue.getter()
{
  v1 = 0x646573756170;
  if (*v0 != 1)
  {
    v1 = 0x64656873696E6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E696B61657073;
  }
}

uint64_t sub_257CD185C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x646573756170;
  if (v2 != 1)
  {
    v4 = 0x64656873696E6966;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x676E696B61657073;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x646573756170;
  if (*a2 != 1)
  {
    v8 = 0x64656873696E6966;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E696B61657073;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_257ED0640();
  }

  return v11 & 1;
}

uint64_t sub_257CD1958()
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

double sub_257CD19F8(uint64_t a1)
{
  sub_257ECF5D0();

  return result;
}

uint64_t sub_257CD1A84(uint64_t a1)
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

void sub_257CD1B2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x646573756170;
  if (v2 != 1)
  {
    v5 = 0x64656873696E6966;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E696B61657073;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_257CD1B88()
{
  v24[1] = *MEMORY[0x277D85DE8];
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD0F0();
  v8 = sub_257ECD0E0();
  v9 = sub_257ECCFF0();
  v10 = *MEMORY[0x277CB8030];
  v24[0] = 0;
  v11 = [v9 setCategory:v10 withOptions:3 error:v24];

  if (v11)
  {
    v12 = v24[0];
  }

  else
  {
    v13 = v24[0];
    v14 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD3F0();
    v15 = v14;
    v16 = sub_257ECDA20();
    v17 = sub_257ECFBE0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v14;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_257BAC000, v16, v17, "Failed to configure reader mode audio session with error: %@", v18, 0xCu);
      sub_257BE4084(v19, &unk_27F8F5490, &unk_257EDC470);
      MEMORY[0x259C74820](v19, -1, -1);
      MEMORY[0x259C74820](v18, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v7, v0);
  }

  sub_257ECD010();
  return v8;
}

uint64_t sub_257CD1E08()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v11 < 0)
  {
LABEL_8:
    v6 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_blocks;
    swift_beginAccess();
    v7 = *(v0 + v6);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x259C72E20](0);
      goto LABEL_18;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v7 + 32);
      sub_257ECC3F0();
LABEL_18:
      swift_endAccess();
      return v8;
    }

    __break(1u);
    goto LABEL_22;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v1 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_blocks;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    if (v11 < sub_257ED0210())
    {
      goto LABEL_4;
    }
  }

  else if (v11 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v3 = v10;
    result = swift_beginAccess();
    v5 = *(v0 + v1);
    if ((v5 & 0xC000000000000001) != 0)
    {
LABEL_19:
      v8 = MEMORY[0x259C72E20](v3);
      goto LABEL_18;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v10 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_17:
      v8 = *(v5 + 8 * v3 + 32);
      sub_257ECC3F0();
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_8;
  }

  v9 = *(v0 + v1);
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_22:
  result = sub_257ED0210();
  v3 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_14:
  result = swift_beginAccess();
  v5 = *(v0 + v1);
  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_19;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v3 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_27:
  __break(1u);
  return result;
}

double MFReaderBlockManager.speechState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return result;
}

void sub_257CD2114(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a2 = v3;
}

uint64_t sub_257CD2194(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_257ECDD70();
}

uint64_t MFReaderBlockManager.speechState.setter(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_257ECDD70();
}

uint64_t (*MFReaderBlockManager.speechState.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_257ECDD50();
  return sub_257CD2314;
}

void sub_257CD2314(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

double MFReaderBlockManager.$speechState.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F73F8, &qword_257EE12C8);
  sub_257ECDD30();
  swift_endAccess();
  return result;
}

double sub_257CD23F0(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F73F8, &qword_257EE12C8);
  sub_257ECDD30();
  swift_endAccess();
  return result;
}

uint64_t sub_257CD2468(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7400, &qword_257EE12D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v18 = &v21 - v17;
  v19 = *(v4 + 16);
  v19(&v21 - v17, a1, v3, v16);
  (v19)(v10, v18, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F73F8, &qword_257EE12C8);
  sub_257ECDD40();
  swift_endAccess();
  return (*(v4 + 8))(v18, v3);
}

uint64_t MFReaderBlockManager.$speechState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7400, &qword_257EE12D0);
  v3 = *(v2 - 8);
  v8 = MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  (*(v3 + 16))(&v11 - v9, a1, v2, v8);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F73F8, &qword_257EE12C8);
  sub_257ECDD40();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*MFReaderBlockManager.$speechState.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7400, &qword_257EE12D0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager__speechState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F73F8, &qword_257EE12C8);
  sub_257ECDD30();
  swift_endAccess();
  return sub_257CD2894;
}

void sub_257CD2894(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_257ECDD40();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_257ECDD40();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_257CD29FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 420) = a5;
  *(v5 + 120) = a4;
  v6 = sub_257ECD030();
  *(v5 + 128) = v6;
  *(v5 + 136) = *(v6 - 8);
  *(v5 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7248, &unk_257EE0960);
  *(v5 + 152) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7258, &qword_257EE0970);
  *(v5 + 160) = v7;
  *(v5 + 168) = *(v7 - 8);
  *(v5 + 176) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7250, &unk_257EE1490);
  *(v5 + 184) = v8;
  *(v5 + 192) = *(v8 - 8);
  *(v5 + 200) = swift_task_alloc();
  v9 = sub_257ECD0B0();
  *(v5 + 208) = v9;
  *(v5 + 216) = *(v9 - 8);
  *(v5 + 224) = swift_task_alloc();
  v10 = sub_257ECCFD0();
  *(v5 + 232) = v10;
  *(v5 + 240) = *(v10 - 8);
  *(v5 + 248) = swift_task_alloc();
  v11 = sub_257ECCFC0();
  *(v5 + 256) = v11;
  *(v5 + 264) = *(v11 - 8);
  *(v5 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7260, &qword_257EE0978);
  *(v5 + 280) = swift_task_alloc();
  v12 = sub_257ECD0D0();
  *(v5 + 288) = v12;
  *(v5 + 296) = *(v12 - 8);
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = sub_257ECF900();
  *(v5 + 320) = sub_257ECF8F0();
  v14 = sub_257ECF8B0();
  *(v5 + 328) = v14;
  *(v5 + 336) = v13;

  return MEMORY[0x2822009F8](sub_257CD2DA8, v14, v13);
}

uint64_t sub_257CD2DA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v1 = *(v0 + 64);
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  sub_257ECDD60();

  if ((*(v0 + 72) & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  KeyPath = *(v0 + 80);
  v4 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_blocks;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5 >> 62)
  {
    goto LABEL_19;
  }

  if (KeyPath >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    v6 = *(v3 + v4);
    if (v6 >> 62)
    {
      v28 = sub_257ED0210();
      v1 = v28 - 1;
      if (!__OFSUB__(v28, 1))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v1 = v7 - 1;
      if (!__OFSUB__(v7, 1))
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_8:
    v1 = 0;
  }

LABEL_9:
  while (1)
  {
    v3 = *(v0 + 120);
    v4 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_blocks;
    swift_beginAccess();
    v8 = *(v3 + v4);
    if ((v8 & 0xC000000000000001) != 0)
    {
      break;
    }

    if ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v1 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v8 + 8 * v1 + 32);
      sub_257ECC3F0();
      goto LABEL_13;
    }

    __break(1u);
LABEL_19:
    if (KeyPath >= sub_257ED0210())
    {
      goto LABEL_4;
    }
  }

  v9 = MEMORY[0x259C72E20](v1);
LABEL_13:
  *(v0 + 344) = v9;
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  v12 = *(v0 + 256);
  v13 = *(v0 + 264);
  v15 = *(v0 + 240);
  v14 = *(v0 + 248);
  v30 = *(v0 + 232);
  v16 = *(v0 + 420);
  v31 = *(v0 + 120);
  swift_endAccess();
  v17 = sub_257ECD060();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = swift_task_alloc();
  *(v18 + 16) = v16;
  *(v18 + 24) = v9;
  (*(v13 + 104))(v11, *MEMORY[0x277D70198], v12);
  (*(v15 + 104))(v14, *MEMORY[0x277D701A0], v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7268, &unk_257EE14A0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_257EDBBA0;
  sub_257ECD0A0();
  sub_257ECD090();
  sub_257ECD080();
  *(v0 + 88) = v19;
  sub_257CD53B8(&qword_27F8F7270, MEMORY[0x277D70340], MEMORY[0x277D70348]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7278, &qword_257EE09B0);
  sub_257CD4FDC();
  sub_257ED0180();
  sub_257ECD0C0();

  v20 = *(v31 + OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_synth);
  sub_257ECD070();

  sub_257ECF970();
  v21 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock___observationRegistrar;
  *(v0 + 352) = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange;
  *(v0 + 360) = v21;
  *(v0 + 368) = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__containsSelection;
  v22 = MEMORY[0x277D701E8];
  *(v0 + 400) = *MEMORY[0x277D701F0];
  *(v0 + 404) = *v22;
  *(v0 + 408) = *MEMORY[0x277D701D8];
  *(v0 + 412) = *MEMORY[0x277D701E0];
  v23 = sub_257ECF8F0();
  *(v0 + 376) = v23;
  v24 = swift_task_alloc();
  *(v0 + 384) = v24;
  *v24 = v0;
  v24[1] = sub_257CD330C;
  v25 = *(v0 + 152);
  v26 = *(v0 + 160);
  v27 = MEMORY[0x277D85700];

  return MEMORY[0x2822005A8](v25, v23, v27, v26, v0 + 96);
}

uint64_t sub_257CD330C()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 328);
  v4 = *(v2 + 336);
  if (v0)
  {
    v5 = sub_257CD3A10;
  }

  else
  {
    v5 = sub_257CD3430;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257CD3430()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 296);
    v36 = *(v0 + 304);
    v5 = *(v0 + 288);
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v9 = *(v0 + 176);
    v8 = *(v0 + 184);
    v11 = *(v0 + 160);
    v10 = *(v0 + 168);

    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    (*(v4 + 8))(v36, v5);

    v12 = *(v0 + 8);

    return v12();
  }

  v14 = *(v0 + 400);
  v15 = *(v0 + 144);
  (*(v3 + 32))(v15, v1, v2);
  v16 = (*(v3 + 88))(v15, v2);
  if (v16 == v14)
  {
    v17 = *(v0 + 144);
    (*(*(v0 + 136) + 96))(v17, *(v0 + 128));
    if (*v17 == 1)
    {
      v18 = *(v0 + 344);
      v19 = v18 + *(v0 + 352);
      if (*(v19 + 16))
      {
        *v19 = 0;
        *(v19 + 8) = 0;
        *(v19 + 16) = 1;
      }

      else
      {
        swift_getKeyPath();
        v24 = swift_task_alloc();
        *(v24 + 24) = 0;
        *(v24 + 32) = 0;
        *(v24 + 16) = v18;
        *(v24 + 40) = 1;
        *(v0 + 112) = v18;
        sub_257CD53B8(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
        sub_257ECCED0();
      }

      v25 = *(v0 + 368);
      v26 = *(v0 + 344);
      if (*(v26 + v25) == 1)
      {
        swift_getKeyPath();
        v27 = swift_task_alloc();
        *(v27 + 16) = v26;
        *(v27 + 24) = 0;
        *(v0 + 104) = v26;
        sub_257CD53B8(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
        sub_257ECCED0();
      }

      else
      {
        *(v26 + v25) = 0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (*(v0 + 416) && *(v0 + 416) != 1)
      {
      }

      else
      {
        v35 = sub_257ED0640();

        if ((v35 & 1) == 0)
        {
          sub_257CD5040();
        }
      }
    }

    goto LABEL_19;
  }

  if (v16 == *(v0 + 404))
  {
    v20 = *(v0 + 120);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 419) = 0;
    v21 = v20;
  }

  else if (v16 == *(v0 + 408))
  {
    v22 = *(v0 + 120);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 418) = 1;
    v23 = v22;
  }

  else
  {
    if (v16 != *(v0 + 412))
    {
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
      goto LABEL_19;
    }

    v28 = *(v0 + 120);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 417) = 0;
    v29 = v28;
  }

  sub_257ECDD70();
LABEL_19:
  v30 = sub_257ECF8F0();
  *(v0 + 376) = v30;
  v31 = swift_task_alloc();
  *(v0 + 384) = v31;
  *v31 = v0;
  v31[1] = sub_257CD330C;
  v32 = *(v0 + 152);
  v33 = *(v0 + 160);
  v34 = MEMORY[0x277D85700];

  return MEMORY[0x2822005A8](v32, v30, v34, v33, v0 + 96);
}

uint64_t sub_257CD3A10()
{
  v1 = *(v0 + 296);
  v11 = *(v0 + 304);
  v2 = *(v0 + 288);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v11, v2);

  v9 = *(v0 + 8);

  return v9();
}

double sub_257CD3B64(char a1, uint64_t a2)
{
  if (a1)
  {
    swift_getKeyPath();
    *&v8 = a2;
    sub_257CD53B8(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
    sub_257ECCEE0();

    if (*(a2 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange + 16) == 1)
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
      sub_257ECD180();
      sub_257BE4084(&v8, &qword_27F8F6E68, &qword_257EDF540);
    }

    else
    {
      sub_257DCCD64(*(a2 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange), *(a2 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange + 8), v7);
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(v7);
      sub_257ECD130();
      sub_257C024BC(v6, v5);
      sub_257ECD180();
      sub_257BE4084(v5, &qword_27F8F6E68, &qword_257EDF540);
      __swift_destroy_boxed_opaque_existential_0(v6);
      __swift_destroy_boxed_opaque_existential_0(&v8);
    }

    sub_257ECD130();
    sub_257ECD130();
  }

  else
  {
    swift_getKeyPath();
    *&v8 = a2;
    sub_257CD53B8(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
    sub_257ECCEE0();

    *(&v9 + 1) = sub_257ECD1C0();
    v10 = MEMORY[0x277D703A0];
    __swift_allocate_boxed_opaque_existential_1(&v8);

    sub_257ECD1D0();
    sub_257ECD130();
    __swift_destroy_boxed_opaque_existential_0(&v8);
    sub_257ECD130();
    sub_257ECD130();
  }

  __swift_destroy_boxed_opaque_existential_0(v6);
  __swift_destroy_boxed_opaque_existential_0(v7);
  sub_257ECD130();
  return __swift_destroy_boxed_opaque_existential_0(&v8);
}