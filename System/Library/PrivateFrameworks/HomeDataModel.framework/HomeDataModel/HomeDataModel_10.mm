uint64_t sub_1D17AE7D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
}

uint64_t (*sub_1D17AE83C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC13HomeDataModel14TriggerBuilder___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D17AE464(v4);
  return sub_1D17AE974;
}

uint64_t sub_1D17AE9D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  result = swift_beginAccess();
  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_1D17AEAB8()
{
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  return *(v0 + 64);
}

uint64_t sub_1D17AEB8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_1D17AEBE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 33) = v2;
  return result;
}

uint64_t sub_1D17AEC88(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 64) == v2)
  {
    *(v1 + 64) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
    sub_1D1E66C9C();
  }

  return result;
}

uint64_t sub_1D17AEDAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 64) = v2;
  return result;
}

uint64_t (*sub_1D17AEE00(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC13HomeDataModel14TriggerBuilder___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D17AE980(v4);
  return sub_1D17AEF38;
}

uint64_t sub_1D17AEF94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  result = swift_beginAccess();
  *a2 = *(v3 + 65);
  return result;
}

uint64_t sub_1D17AF078()
{
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  return *(v0 + 65);
}

uint64_t sub_1D17AF12C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 65) == v2)
  {
    *(v1 + 65) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
    sub_1D1E66C9C();
  }

  return result;
}

uint64_t sub_1D17AF250()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 65) = v2;
  return result;
}

uint64_t (*sub_1D17AF2A4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC13HomeDataModel14TriggerBuilder___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D17AEF44(v4);
  return sub_1D17AF3DC;
}

void sub_1D17AF3E8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_1D1E66CBC();

  free(v3);
}

uint64_t TriggerBuilder.__allocating_init(name:events:actions:activatedScenes:executesOnce:enabled:deletesAfterExecution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{
  v16 = swift_allocObject();
  *(v16 + 32) = 1;
  sub_1D1E66CDC();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 40) = a3;
  *(v16 + 48) = a4;
  *(v16 + 56) = a5;
  *(v16 + 64) = a6;
  *(v16 + 33) = a7;
  *(v16 + 65) = a8;
  return v16;
}

uint64_t TriggerBuilder.init(name:events:actions:activatedScenes:executesOnce:enabled:deletesAfterExecution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{
  *(v8 + 32) = 1;
  sub_1D1E66CDC();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 33) = a7;
  *(v8 + 65) = a8;
  return v8;
}

uint64_t TriggerBuilder.__allocating_init(trigger:)(void *a1)
{
  v2 = type metadata accessor for StaticTrigger(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1;
  StaticTrigger.init(trigger:)(v5, v4);
  v6 = _s13HomeDataModel14TriggerBuilderC06staticD0AcA06StaticD0V_tcfC_0(v4);

  return v6;
}

char *TriggerBuilder.deinit()
{

  v1 = OBJC_IVAR____TtC13HomeDataModel14TriggerBuilder___observationRegistrar;
  v2 = sub_1D1E66CEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TriggerBuilder.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC13HomeDataModel14TriggerBuilder___observationRegistrar;
  v2 = sub_1D1E66CEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t TriggerBuilder.createNewTrigger(in:)(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_1D1E66FDC();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17AF83C, 0, 0);
}

uint64_t sub_1D17AF83C(uint64_t a1)
{
  v13 = v1;
  v3 = v1[22];
  v2 = v1[23];
  v5 = v1[20];
  v4 = v1[21];
  v6 = v1[19];
  v12 = 0;
  sub_1D1E66FCC();
  v1[24] = _s2os6LoggerV13HomeDataModelE11AutomationsO8didBegin_7trigger2idAA23OSSignpostIntervalStateCAF9OperationO_AD14TriggerBuilderCAA0K2IDVtFZ_0(&v12, v5, v2);
  (*(v3 + 8))(v2, v4);
  v7 = sub_1D17AFCAC(v6);
  v1[25] = v7;
  v8 = v7;
  v9 = v1[19];
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1D17AFA38;
  v10 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C80, &qword_1D1E73420);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1D17AFE50;
  v1[13] = &block_descriptor_1;
  v1[14] = v10;
  [v9 hdm:v8 addEventTriggerFromBuilder:v1 + 10 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1D17AFA38()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_1D17AFBF0;
  }

  else
  {
    v2 = sub_1D17AFB48;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D17AFB48()
{
  v6 = v0;
  v1 = v0[24];
  v2 = v0[18];
  v5 = 0;
  _s2os6LoggerV13HomeDataModelE11AutomationsO9didFinish_5state5erroryAF9OperationO_AA23OSSignpostIntervalStateCs5Error_pSgtFZ_0(&v5, v1, 0);
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1D17AFBF0(uint64_t a1)
{
  v8 = v1;
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = v1[26];
  v3 = v1[24];
  v7[0] = 0;
  v4 = v2;
  _s2os6LoggerV13HomeDataModelE11AutomationsO9didFinish_5state5erroryAF9OperationO_AA23OSSignpostIntervalStateCs5Error_pSgtFZ_0(v7, v3, v2);

  swift_willThrow();

  v5 = v1[1];

  return v5();
}

id sub_1D17AFCAC(void *a1)
{
  sub_1D17B0574(a1);
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();

  v3 = sub_1D1E677EC();

  sub_1D1741B10(0, &unk_1EC643B70, 0x1E696CB78);
  v4 = sub_1D1E67BFC();

  v5 = [a1 hdm:v3 newEventTriggerBuilderWithName:v4 events:?];

  if (v5)
  {
    sub_1D17B1014(v5, a1);
    if (v1)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1D17B2A14();
    swift_allocError();
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1D17AFE50(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t TriggerBuilder.update(trigger:in:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1D1E66FDC();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17AFFEC, 0, 0);
}

uint64_t sub_1D17AFFEC(uint64_t a1)
{
  v20 = v1;
  v3 = *(v1 + 176);
  v2 = *(v1 + 184);
  v5 = *(v1 + 160);
  v4 = *(v1 + 168);
  v6 = *(v1 + 144);
  v18 = 1;
  sub_1D1E66FCC();
  *(v1 + 192) = _s2os6LoggerV13HomeDataModelE11AutomationsO8didBegin_7trigger2idAA23OSSignpostIntervalStateCAF9OperationO_AD14TriggerBuilderCAA0K2IDVtFZ_0(&v18, v5, v2);
  (*(v3 + 8))(v2, v4);
  v7 = [v6 copyAsBuilder];
  *(v1 + 200) = v7;
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      sub_1D17B1014(v9, *(v1 + 152));
      v16 = *(v1 + 144);
      *(v1 + 16) = v1;
      *(v1 + 24) = sub_1D17B0250;
      v17 = swift_continuation_init();
      *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
      *(v1 + 80) = MEMORY[0x1E69E9820];
      *(v1 + 88) = 1107296256;
      *(v1 + 96) = sub_1D17B04C8;
      *(v1 + 104) = &block_descriptor_35;
      *(v1 + 112) = v17;
      [v16 updateWithBuilder:v10 completionHandler:v1 + 80];

      return MEMORY[0x1EEE6DEC8](v1 + 16);
    }
  }

  sub_1D17B2A14();
  v11 = swift_allocError();
  swift_willThrow();
  v12 = *(v1 + 192);
  v19[0] = 1;
  v13 = v11;
  _s2os6LoggerV13HomeDataModelE11AutomationsO9didFinish_5state5erroryAF9OperationO_AA23OSSignpostIntervalStateCs5Error_pSgtFZ_0(v19, v12, v11);

  swift_willThrow();

  v14 = *(v1 + 8);

  return v14();
}

uint64_t sub_1D17B0250()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_1D17B040C;
  }

  else
  {
    v2 = sub_1D17B0360;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D17B0360()
{
  v9 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[18];
  v8 = 1;
  _s2os6LoggerV13HomeDataModelE11AutomationsO9didFinish_5state5erroryAF9OperationO_AA23OSSignpostIntervalStateCs5Error_pSgtFZ_0(&v8, v1, 0);

  v4 = v3;

  v5 = v0[1];
  v6 = v0[18];

  return v5(v6);
}

uint64_t sub_1D17B040C(uint64_t a1)
{
  v9 = v1;
  v2 = v1[25];
  swift_willThrow();

  v3 = v1[26];
  v4 = v1[24];
  v8[0] = 1;
  v5 = v3;
  _s2os6LoggerV13HomeDataModelE11AutomationsO9didFinish_5state5erroryAF9OperationO_AA23OSSignpostIntervalStateCs5Error_pSgtFZ_0(v8, v4, v3);

  swift_willThrow();

  v6 = v1[1];

  return v6();
}

uint64_t sub_1D17B04C8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

void sub_1D17B0574(void *a1)
{
  v3 = type metadata accessor for Event.CharacteristicEvent(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Event.TimeEvent(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for Event(0);
  v78 = *(v80 - 8);
  v8 = MEMORY[0x1EEE9AC00](v80);
  v69 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v72 = &v66 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v66 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v66 - v15;
  swift_getKeyPath();
  v82[0] = v1;
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  v17 = *(v1 + 40);
  v67 = MEMORY[0x1E69E7CC0];
  v83 = MEMORY[0x1E69E7CC0];
  v18 = v17 + 56;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 56);
  v22 = (v19 + 63) >> 6;
  v79 = v17;
  swift_bridgeObjectRetain_n();
  v23 = 0;
  *&v24 = 138412546;
  v68 = v24;
  v74 = v5;
  v75 = v14;
  v73 = v16;
  v76 = v22;
  v77 = v18;
  while (v21)
  {
    while (1)
    {
LABEL_11:
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      sub_1D17B2FB0(*(v79 + 48) + *(v78 + 72) * (v26 | (v23 << 6)), v16, type metadata accessor for Event);
      sub_1D17B2FB0(v16, v14, type metadata accessor for Event);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        v32 = *v14;
        v31 = *(v14 + 1);
        v33 = *(v14 + 2);
        if (v14[24] == 1)
        {
          v59 = objc_allocWithZone(MEMORY[0x1E695FBB0]);
          v60 = sub_1D1E677EC();
          v61 = [v59 initWithCenter:v60 radius:*&v32 identifier:{*&v31, *&v33}];

          [objc_allocWithZone(MEMORY[0x1E696CBC8]) initWithRegion_];
          v14 = v75;
        }

        else
        {
          if (v31)
          {
            if (v31 != 1)
            {
              v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
              v82[3] = v34;
              v82[4] = sub_1D179747C();
              v82[0] = v31;
              __swift_project_boxed_opaque_existential_1(v82, v34);
              sub_1D17979F0(v32, v31, v33, 0);
              v35 = 0;
              if (sub_1D1E6827C())
              {
                goto LABEL_22;
              }

              v36 = [a1 users];
              sub_1D1741B10(0, &qword_1EE079BF8, 0x1E696CCA0);
              v37 = sub_1D1E67C1C();

              MEMORY[0x1EEE9AC00](v38);
              *(&v66 - 2) = v82;
              v39 = sub_1D179689C(sub_1D17974F0, (&v66 - 4), v37);
              if (v39 >> 62)
              {
                if (!sub_1D1E6873C())
                {
LABEL_21:

                  v35 = 1;
LABEL_22:
                  sub_1D179732C();
                  v29 = swift_allocError();
                  *v40 = v35;
                  swift_willThrow();
                  __swift_destroy_boxed_opaque_existential_1(v82);
                  sub_1D1771BD4(v32, v31, v33, 0);
                  v81 = 0;
                  v5 = v74;
                  v30 = v72;
                  v16 = v73;
                  goto LABEL_23;
                }
              }

              else if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_21;
              }

              __swift_destroy_boxed_opaque_existential_1(v82);
              v81 = objc_allocWithZone(MEMORY[0x1E696CC18]);
              v65 = sub_1D1E67BFC();

              [v81 initWithPresenceEventType:v32 presenceUserType:3 users:v65];

              sub_1D1771BD4(v32, v31, v33, 0);
              v5 = v74;
              v14 = v75;
              goto LABEL_34;
            }

            [objc_allocWithZone(MEMORY[0x1E696CC18]) initWithPresenceEventType:v32 presenceUserType:2];
            v62 = v32;
            v63 = 1;
          }

          else
          {
            [objc_allocWithZone(MEMORY[0x1E696CC18]) initWithPresenceEventType:v32 presenceUserType:1];
            v62 = v32;
            v63 = 0;
          }

          sub_1D1771BD4(v62, v63, v33, 0);
        }

        v5 = v74;
LABEL_34:
        v16 = v73;
        goto LABEL_35;
      }

      if (EnumCaseMultiPayload == 2)
      {
        break;
      }

      v58 = v66;
      sub_1D17B3078(v14, v66, type metadata accessor for Event.TimeEvent);
      Event.TimeEvent.createEvent()();
      sub_1D17B3018(v58, type metadata accessor for Event.TimeEvent);
LABEL_35:
      v64 = sub_1D17B3018(v16, type metadata accessor for Event);
      MEMORY[0x1D3891220](v64);
      if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D1E67C5C();
      }

      sub_1D1E67CAC();
      v67 = v83;
      v22 = v76;
      v18 = v77;
      if (!v21)
      {
        goto LABEL_7;
      }
    }

    sub_1D17B3078(v14, v5, type metadata accessor for Event.CharacteristicEvent);
    Event.CharacteristicEvent.createEvent(in:)(a1);
    v29 = v28;
    if (!v28)
    {
      sub_1D17B3018(v5, type metadata accessor for Event.CharacteristicEvent);
      v14 = v75;
      goto LABEL_35;
    }

    sub_1D17B3018(v5, type metadata accessor for Event.CharacteristicEvent);
    v81 = 0;
    v30 = v72;
LABEL_23:
    if (qword_1EC642130 != -1)
    {
      swift_once();
    }

    v41 = sub_1D1E6709C();
    __swift_project_value_buffer(v41, qword_1EC643BF8);
    sub_1D17B2FB0(v16, v30, type metadata accessor for Event);
    v42 = v29;
    v43 = sub_1D1E6707C();
    v44 = sub_1D1E6833C();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v70 = v46;
      v71 = swift_slowAlloc();
      v82[0] = v71;
      *v45 = v68;
      v47 = v29;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v48;
      *v46 = v48;
      *(v45 + 12) = 2080;
      v49 = v30;
      sub_1D17B2FB0(v30, v69, type metadata accessor for Event);
      v50 = a1;
      v51 = sub_1D1E6789C();
      v53 = v52;
      v54 = v49;
      v16 = v73;
      sub_1D17B3018(v54, type metadata accessor for Event);
      v55 = sub_1D1B1312C(v51, v53, v82);
      v5 = v74;

      *(v45 + 14) = v55;
      a1 = v50;
      _os_log_impl(&dword_1D16EC000, v43, v44, "Error: %@ creating event from %s", v45, 0x16u);
      v56 = v70;
      sub_1D1741A30(v70, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v56, -1, -1);
      v57 = v71;
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x1D3893640](v57, -1, -1);
      MEMORY[0x1D3893640](v45, -1, -1);
    }

    else
    {

      sub_1D17B3018(v30, type metadata accessor for Event);
    }

    v18 = v77;
    sub_1D17B3018(v16, type metadata accessor for Event);
    v14 = v75;
    v22 = v76;
  }

LABEL_7:
  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v22)
    {

      return;
    }

    v21 = *(v18 + 8 * v25);
    ++v23;
    if (v21)
    {
      v23 = v25;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1D17B1014(void *a1, objc_class *a2)
{
  v3 = v2;
  v25 = type metadata accessor for Event(0);
  v6 = MEMORY[0x1EEE9AC00](v25);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v26 = (&v25 - v9);
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  v30[0] = v2;
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  [a1 setEnabled_];
  swift_getKeyPath();
  v30[0] = v2;
  sub_1D1E66CAC();

  swift_beginAccess();

  v10 = sub_1D1E677EC();

  swift_getKeyPath();
  v30[0] = v2;
  sub_1D1E66CAC();

  swift_beginAccess();
  [a1 setName:v10 isConfigured:*(v2 + 32)];

  v28 = a2;
  sub_1D17B0574(a2);
  sub_1D1741B10(0, &unk_1EC643B70, 0x1E696CB78);
  v11 = sub_1D1E67BFC();

  [a1 setEvents_];

  swift_getKeyPath();
  v30[0] = v3;
  sub_1D1E66CAC();

  swift_beginAccess();
  [a1 setExecuteOnce_];
  swift_getKeyPath();
  v30[0] = v3;
  sub_1D1E66CAC();

  swift_beginAccess();
  v12 = *(v3 + 40);
  v30[0] = v12;
  v30[1] = sub_1D17B2408;
  v30[2] = 0;
  v30[3] = sub_1D17B28C8;
  v30[4] = 0;

  v13 = v30;
  v14 = sub_1D17779F4();
  if (v16)
  {
    goto LABEL_12;
  }

  if (*(v12 + 36) != v15)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v14 == 1 << *(v12 + 32))
  {

LABEL_7:
    v17 = 127;
    goto LABEL_8;
  }

  v13 = v26;
  sub_1D1790974(v14, v15, v12, v26);
  sub_1D17B2FB0(v13, v8, type metadata accessor for Event);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_13:
    sub_1D17B3018(v8, type metadata accessor for Event);
    sub_1D17B3018(v13, type metadata accessor for Event);
    __break(1u);
    return;
  }

  v17 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643078, &qword_1D1E71148) + 48)];
  sub_1D17B3018(v8, type metadata accessor for Event.TimeEvent);
  sub_1D17B3018(v13, type metadata accessor for Event);

  if (!v17)
  {
    goto LABEL_7;
  }

LABEL_8:
  v29[0] = v17;
  sub_1D17B35A0();
  v18 = v28;
  sub_1D17B1654(v28);
  v20 = v19;
  v21 = [a1 triggerOwnedActionSet];
  sub_1D1784E8C(v20);

  sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
  sub_1D179E328();
  v22 = sub_1D1E6815C();

  [v21 setActions_];

  sub_1D17B1BBC(v18);
  sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
  v23 = sub_1D1E67BFC();

  [a1 setActionSets_];

  swift_getKeyPath();
  v29[0] = v3;
  sub_1D1E66CAC();

  swift_beginAccess();
  v24 = 0;
  if (*(v3 + 65) == 1)
  {
    v24 = [objc_opt_self() deleteAfterExecutionPolicy];
  }

  [a1 setPolicy_];
}

void sub_1D17B1654(objc_class *a1)
{
  v46.super.isa = a1;
  v41 = type metadata accessor for Action(0);
  v45 = *(v41 - 8);
  v2 = MEMORY[0x1EEE9AC00](v41);
  v40 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v36 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - v7;
  swift_getKeyPath();
  v50 = v1;
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  v9 = *(v1 + 48);
  v37 = MEMORY[0x1E69E7CC0];
  v49 = MEMORY[0x1E69E7CC0];
  v10 = v9 + 56;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 56);
  v14 = (v11 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v15 = 0;
  *&v16 = 138412546;
  v38 = v16;
  v42 = v9;
  v44 = v9 + 56;
  v47 = v14;
  for (i = v8; v13; v14 = v47)
  {
LABEL_11:
    while (1)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      sub_1D17B2FB0(*(v9 + 48) + *(v45 + 72) * (v18 | (v15 << 6)), v8, type metadata accessor for Action);
      Action.createAction(in:)(v46);
      if (!v19)
      {
        break;
      }

      if (qword_1EC642130 != -1)
      {
        swift_once();
      }

      v20 = sub_1D1E6709C();
      __swift_project_value_buffer(v20, qword_1EC643BF8);
      sub_1D17B2FB0(v8, v6, type metadata accessor for Action);
      v21 = v19;
      v22 = sub_1D1E6707C();
      v23 = sub_1D1E6833C();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v48 = v43;
        *v24 = v38;
        v26 = v19;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v27;
        *v25 = v27;
        *(v24 + 12) = 2080;
        sub_1D17B2FB0(v6, v40, type metadata accessor for Action);
        v28 = sub_1D1E6789C();
        v30 = v29;
        sub_1D17B3018(v6, type metadata accessor for Action);
        v31 = sub_1D1B1312C(v28, v30, &v48);

        *(v24 + 14) = v31;
        v8 = i;
        v32 = v22;
        _os_log_impl(&dword_1D16EC000, v22, v23, "Error: %@ creating action from %s", v24, 0x16u);
        sub_1D1741A30(v25, &unk_1EC644000, &unk_1D1E75B00);
        MEMORY[0x1D3893640](v25, -1, -1);
        v33 = v43;
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x1D3893640](v33, -1, -1);
        v34 = v24;
        v9 = v42;
        MEMORY[0x1D3893640](v34, -1, -1);
      }

      else
      {

        sub_1D17B3018(v6, type metadata accessor for Action);
      }

      v10 = v44;
      v14 = v47;
      sub_1D17B3018(v8, type metadata accessor for Action);
      if (!v13)
      {
        goto LABEL_7;
      }
    }

    v35 = sub_1D17B3018(v8, type metadata accessor for Action);
    MEMORY[0x1D3891220](v35);
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D1E67C5C();
      v10 = v44;
    }

    sub_1D1E67CAC();
    v37 = v49;
    v9 = v42;
  }

LABEL_7:
  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      return;
    }

    v13 = *(v10 + 8 * v17);
    ++v15;
    if (v13)
    {
      v15 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1D17B1BBC(unint64_t a1)
{
  isUniquelyReferenced_nonNull_native = sub_1D1E66A7C();
  v76 = *(isUniquelyReferenced_nonNull_native - 8);
  v3 = MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v67 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v73 = &v64 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v64 - v7;
  v9 = [a1 actionSets];
  sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
  v10 = sub_1D1E67C1C();

  if (v10 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1E6873C())
  {
    v74 = a1;
    v80 = isUniquelyReferenced_nonNull_native;
    if (i)
    {
      break;
    }

    v13 = MEMORY[0x1E69E7CC8];
LABEL_22:

    swift_getKeyPath();
    v31 = OBJC_IVAR____TtC13HomeDataModel14TriggerBuilder___observationRegistrar;
    v32 = j;
    v83 = j;
    sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
    a1 = v32 + v31;
    sub_1D1E66CAC();

    swift_beginAccess();
    v33 = v32[7];
    v65 = MEMORY[0x1E69E7CC0];
    v82 = MEMORY[0x1E69E7CC0];
    v34 = v33 + 56;
    v35 = 1 << *(v33 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v33 + 56);
    v10 = (v35 + 63) >> 6;
    v78 = v33;
    v79 = v76 + 16;
    v77 = (v76 + 8);
    swift_bridgeObjectRetain_n();
    v38 = 0;
    *&v39 = 136315394;
    v66 = v39;
    v40 = v67;
    v8 = v73;
    v75 = v10;
    for (j = v34; v37; v65 = v82)
    {
LABEL_32:
      while (1)
      {
        v43 = __clz(__rbit64(v37));
        v37 &= v37 - 1;
        v44 = *(v76 + 16);
        v44(v8, *(v78 + 48) + *(v76 + 72) * (v43 | (v38 << 6)), isUniquelyReferenced_nonNull_native);
        if (v13[2])
        {
          v45 = sub_1D1742188();
          if (v46)
          {
            break;
          }
        }

        if (qword_1EC642130 != -1)
        {
          swift_once();
        }

        v47 = sub_1D1E6709C();
        __swift_project_value_buffer(v47, qword_1EC643BF8);
        v44(v40, v8, isUniquelyReferenced_nonNull_native);
        v48 = v74;
        v49 = sub_1D1E6707C();
        a1 = sub_1D1E6833C();

        if (os_log_type_enabled(v49, a1))
        {
          v50 = swift_slowAlloc();
          v70 = a1;
          v51 = v40;
          v52 = v50;
          v69 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v81 = v71;
          *v52 = v66;
          sub_1D17ADC40(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v68 = v49;
          v53 = v51;
          v54 = sub_1D1E68FAC();
          v56 = v55;
          v41 = *v77;
          (*v77)(v53, v80);
          v57 = sub_1D1B1312C(v54, v56, &v81);
          isUniquelyReferenced_nonNull_native = v80;

          *(v52 + 4) = v57;
          *(v52 + 12) = 2112;
          *(v52 + 14) = v48;
          v58 = v69;
          *v69 = v74;
          v59 = v48;
          v60 = v68;
          _os_log_impl(&dword_1D16EC000, v68, v70, "Failed to find action set with identifier %s in home %@", v52, 0x16u);
          sub_1D1741A30(v58, &unk_1EC644000, &unk_1D1E75B00);
          MEMORY[0x1D3893640](v58, -1, -1);
          a1 = v71;
          __swift_destroy_boxed_opaque_existential_1(v71);
          MEMORY[0x1D3893640](a1, -1, -1);
          MEMORY[0x1D3893640](v52, -1, -1);

          v40 = v67;
        }

        else
        {

          v41 = *v77;
          (*v77)(v40, isUniquelyReferenced_nonNull_native);
        }

        v8 = v73;
        v41(v73, isUniquelyReferenced_nonNull_native);
        v34 = j;
        v10 = v75;
        if (!v37)
        {
          goto LABEL_28;
        }
      }

      v61 = *v77;
      v71 = *(v13[7] + 8 * v45);
      v62 = (v61)(v8, isUniquelyReferenced_nonNull_native);
      a1 = &v82;
      MEMORY[0x1D3891220](v62);
      if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D1E67C5C();
        v10 = v75;
      }

      sub_1D1E67CAC();
    }

LABEL_28:
    while (1)
    {
      v42 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v42 >= v10)
      {

        return v65;
      }

      v37 = *(v34 + 8 * v42);
      ++v38;
      if (v37)
      {
        v38 = v42;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  v12 = 0;
  v78 = v10 & 0xFFFFFFFFFFFFFF8;
  v79 = v10 & 0xC000000000000001;
  v75 = v76 + 16;
  v77 = (v76 + 8);
  v13 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v79)
    {
      v15 = MEMORY[0x1D3891EF0](v12, v10);
    }

    else
    {
      if (v12 >= *(v78 + 16))
      {
        goto LABEL_45;
      }

      v15 = *(v10 + 8 * v12 + 32);
    }

    a1 = v15;
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_44;
    }

    v17 = [v15 uniqueIdentifier];
    sub_1D1E66A5C();

    v18 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v13;
    a1 = v13;
    v19 = sub_1D1742188();
    v21 = v13[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_46;
    }

    v25 = v20;
    if (v13[3] < v24)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v30 = v19;
      sub_1D1734844();
      v19 = v30;
    }

LABEL_17:
    isUniquelyReferenced_nonNull_native = v80;
    v13 = v83;
    if (v25)
    {
      v14 = v83[7];
      a1 = *(v14 + 8 * v19);
      *(v14 + 8 * v19) = v18;

      (*v77)(v8, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      v83[(v19 >> 6) + 8] |= 1 << v19;
      v27 = v76;
      a1 = v19;
      (*(v76 + 16))(v13[6] + *(v76 + 72) * v19, v8, isUniquelyReferenced_nonNull_native);
      *(v13[7] + 8 * a1) = v18;

      (*(v27 + 8))(v8, isUniquelyReferenced_nonNull_native);
      v28 = v13[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        goto LABEL_47;
      }

      v13[2] = v29;
    }

    ++v12;
    if (v16 == i)
    {
      goto LABEL_22;
    }
  }

  sub_1D17218F8(v24, isUniquelyReferenced_nonNull_native);
  v19 = sub_1D1742188();
  if ((v25 & 1) == (v26 & 1))
  {
    goto LABEL_17;
  }

  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D17B2408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Event(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B2FB0(a1, v6, type metadata accessor for Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = type metadata accessor for Event;
  if (EnumCaseMultiPayload == 1)
  {
    v9 = *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643078, &qword_1D1E71148) + 48)];
    v8 = type metadata accessor for Event.TimeEvent;
  }

  else
  {
    v9 = 0;
  }

  result = sub_1D17B3018(v6, v8);
  *a2 = v9;
  *(a2 + 8) = EnumCaseMultiPayload != 1;
  return result;
}

id sub_1D17B2540(void *a1)
{
  v1 = [a1 debugDescription];

  return v1;
}

uint64_t HMCalendarEvent.description.getter()
{
  v1 = [v0 debugDescription];
  v2 = sub_1D1E6781C();

  return v2;
}

id sub_1D17B25D0(void *a1)
{
  v1 = a1;
  HMCalendarEvent.debugDescription.getter();

  v2 = sub_1D1E677EC();

  return v2;
}

unint64_t HMCalendarEvent.debugDescription.getter()
{
  v1 = sub_1D1E662EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_1D1E6884C();

  v8 = 0xD000000000000026;
  v9 = 0x80000001D1EB90D0;
  v5 = [v0 fireDateComponents];
  sub_1D1E6621C();

  sub_1D17ADC40(&qword_1EC643948, MEMORY[0x1E6968278], MEMORY[0x1E69682A0]);
  v6 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v6);

  (*(v2 + 8))(v4, v1);
  MEMORY[0x1D3890F70](32010, 0xE200000000000000);
  return v8;
}

void sub_1D17B27C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_1D1E6873C())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_1D1E6878C();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t _s13HomeDataModel14TriggerBuilderC06staticD0AcA06StaticD0V_tcfC_0(uint64_t a1)
{
  v2 = type metadata accessor for StaticTrigger(0);
  v3 = (a1 + v2[5]);
  v4 = *(a1 + v2[7]);
  v5 = *(a1 + v2[8]);
  v6 = *(a1 + v2[9]);
  v13 = *(a1 + v2[10]);
  v8 = *v3;
  v7 = v3[1];
  v9 = *(a1 + v2[6]);
  v10 = *(a1 + v2[11]);
  type metadata accessor for TriggerBuilder(0);
  v11 = swift_allocObject();
  *(v11 + 32) = 1;

  sub_1D1E66CDC();
  sub_1D17B3018(a1, type metadata accessor for StaticTrigger);
  *(v11 + 16) = v8;
  *(v11 + 24) = v7;
  *(v11 + 40) = v4;
  *(v11 + 48) = v5;
  *(v11 + 56) = v6;
  *(v11 + 64) = v13;
  *(v11 + 33) = v9;
  *(v11 + 65) = v10;
  return v11;
}

unint64_t sub_1D17B2A14()
{
  result = qword_1EC643C88;
  if (!qword_1EC643C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643C88);
  }

  return result;
}

uint64_t sub_1D17B2A70(uint64_t a1)
{
  result = sub_1D1E66CEC();
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

unint64_t sub_1D17B2F5C()
{
  result = qword_1EC643CA8;
  if (!qword_1EC643CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643CA8);
  }

  return result;
}

uint64_t sub_1D17B2FB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D17B3018(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D17B3078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t TriggerRecurrenceWeekdays.description.getter()
{
  v1 = *v0;
  switch(v1)
  {
    case '\x7F':
      return 0x7961647972657665;
    case 'A':
      return 0x646E656B656577;
    case '>':
      return 0x737961646B656577;
  }

  if ((v1 & 1) == 0)
  {
    v3 = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v3 = sub_1D177CF00(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v3 + 2);
  v5 = *(v3 + 3);
  v6 = v4 + 1;
  if (v4 >= v5 >> 1)
  {
    v44 = v4 + 1;
    v33 = v3;
    v34 = *(v3 + 2);
    v35 = sub_1D177CF00((v5 > 1), v4 + 1, 1, v33);
    v4 = v34;
    v6 = v44;
    v3 = v35;
  }

  *(v3 + 2) = v6;
  v7 = &v3[16 * v4];
  *(v7 + 4) = 0x7961646E7573;
  *(v7 + 5) = 0xE600000000000000;
  if ((v1 & 2) != 0)
  {
LABEL_13:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D177CF00(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v9 = *(v3 + 3);
    v10 = v8 + 1;
    if (v8 >= v9 >> 1)
    {
      v45 = v8 + 1;
      v36 = v3;
      v37 = *(v3 + 2);
      v38 = sub_1D177CF00((v9 > 1), v8 + 1, 1, v36);
      v8 = v37;
      v10 = v45;
      v3 = v38;
    }

    *(v3 + 2) = v10;
    v11 = &v3[16 * v8];
    *(v11 + 4) = 0x7961646E6F6DLL;
    *(v11 + 5) = 0xE600000000000000;
  }

LABEL_18:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D177CF00(0, *(v3 + 2) + 1, 1, v3);
    }

    v13 = *(v3 + 2);
    v12 = *(v3 + 3);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      v39 = sub_1D177CF00((v12 > 1), v13 + 1, 1, v3);
      v14 = v13 + 1;
      v3 = v39;
    }

    *(v3 + 2) = v14;
    v15 = &v3[16 * v13];
    *(v15 + 4) = 0x79616473657574;
    *(v15 + 5) = 0xE700000000000000;
    if ((v1 & 8) == 0)
    {
LABEL_20:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_34;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D177CF00(0, *(v3 + 2) + 1, 1, v3);
  }

  v17 = *(v3 + 2);
  v16 = *(v3 + 3);
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
    v40 = sub_1D177CF00((v16 > 1), v17 + 1, 1, v3);
    v18 = v17 + 1;
    v3 = v40;
  }

  *(v3 + 2) = v18;
  v19 = &v3[16 * v17];
  *(v19 + 4) = 0x616473656E646577;
  *(v19 + 5) = 0xE900000000000079;
  if ((v1 & 0x10) == 0)
  {
LABEL_21:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_22;
    }

LABEL_39:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D177CF00(0, *(v3 + 2) + 1, 1, v3);
    }

    v25 = *(v3 + 2);
    v24 = *(v3 + 3);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      v42 = sub_1D177CF00((v24 > 1), v25 + 1, 1, v3);
      v26 = v25 + 1;
      v3 = v42;
    }

    *(v3 + 2) = v26;
    v27 = &v3[16 * v25];
    *(v27 + 4) = 0x796164697266;
    *(v27 + 5) = 0xE600000000000000;
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_44;
  }

LABEL_34:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D177CF00(0, *(v3 + 2) + 1, 1, v3);
  }

  v21 = *(v3 + 2);
  v20 = *(v3 + 3);
  v22 = v21 + 1;
  if (v21 >= v20 >> 1)
  {
    v41 = sub_1D177CF00((v20 > 1), v21 + 1, 1, v3);
    v22 = v21 + 1;
    v3 = v41;
  }

  *(v3 + 2) = v22;
  v23 = &v3[16 * v21];
  *(v23 + 4) = 0x7961647372756874;
  *(v23 + 5) = 0xE800000000000000;
  if ((v1 & 0x20) != 0)
  {
    goto LABEL_39;
  }

LABEL_22:
  if ((v1 & 0x40) != 0)
  {
LABEL_44:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D177CF00(0, *(v3 + 2) + 1, 1, v3);
    }

    v29 = *(v3 + 2);
    v28 = *(v3 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      v43 = sub_1D177CF00((v28 > 1), v29 + 1, 1, v3);
      v30 = v29 + 1;
      v3 = v43;
    }

    *(v3 + 2) = v30;
    v31 = &v3[16 * v29];
    *(v31 + 4) = 0x7961647275746173;
    *(v31 + 5) = 0xE800000000000000;
  }

LABEL_49:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v32 = sub_1D1E6770C();

  return v32;
}

id sub_1D17B35A0()
{
  v1 = sub_1D17B36F8();

  return [v0 setRecurrenceDays_];
}

unint64_t sub_1D17B3684()
{
  result = qword_1EE07B278;
  if (!qword_1EE07B278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643CB0, &qword_1D1E73640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07B278);
  }

  return result;
}

uint64_t sub_1D17B36F8()
{
  v1 = *v0;
  if ((*v0 & 2) != 0)
  {
    if ((v1 & 4) != 0)
    {
      result = 6;
      if ((v1 & 8) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      result = 2;
      if ((v1 & 8) == 0)
      {
        if ((v1 & 0x10) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_22;
      }
    }

    goto LABEL_16;
  }

  if ((v1 & 4) != 0)
  {
    result = 4;
    if ((v1 & 8) == 0)
    {
LABEL_17:
      if ((v1 & 0x10) == 0)
      {
        if ((v1 & 0x20) != 0)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }

LABEL_22:
      result |= 0x10uLL;
      if ((v1 & 0x20) != 0)
      {
        goto LABEL_23;
      }

LABEL_19:
      if ((v1 & 0x40) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

LABEL_16:
    result |= 8uLL;
    goto LABEL_17;
  }

  result = 0;
  if ((v1 & 8) != 0)
  {
    goto LABEL_16;
  }

  if ((v1 & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  if ((v1 & 0x20) == 0)
  {
    if ((v1 & 0x40) == 0)
    {
      if ((v1 & 1) == 0)
      {
        return result;
      }

      return result | 1;
    }

    goto LABEL_24;
  }

LABEL_23:
  result |= 0x20uLL;
  if ((v1 & 0x40) != 0)
  {
LABEL_24:
    result |= 0x40uLL;
    if ((v1 & 1) == 0)
    {
      return result;
    }

LABEL_25:
    if (result)
    {
      return result;
    }

    return result | 1;
  }

LABEL_20:
  if (v1)
  {
    goto LABEL_25;
  }

  return result;
}

unint64_t sub_1D17B378C()
{
  result = qword_1EC643CB8;
  if (!qword_1EC643CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643CB8);
  }

  return result;
}

unint64_t sub_1D17B37E4()
{
  result = qword_1EC643CC0;
  if (!qword_1EC643CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643CC0);
  }

  return result;
}

unint64_t sub_1D17B3838()
{
  result = qword_1EC643CC8;
  if (!qword_1EC643CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643CC8);
  }

  return result;
}

unint64_t sub_1D17B3890()
{
  result = qword_1EC643CD0;
  if (!qword_1EC643CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643CD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TriggerRecurrenceWeekdays(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TriggerRecurrenceWeekdays(uint64_t result, int a2, int a3)
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

void sub_1D17B3940()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D1E677EC();
  v2 = [v0 initWithSuiteName_];

  qword_1EC643CD8 = v2;
}

id static CameraClipsInternalPreferences.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC642138 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1EC643CD8;
  *a1 = qword_1EC643CD8;

  return v2;
}

id CameraClipsInternalPreferences.showDebugUI.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = sub_1D1E677EC();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

id CameraClipsInternalPreferences.overrideDisableHLS.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = sub_1D1E677EC();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

id CameraClipsInternalPreferences.overrideDisableScrubberAutoHideTimer.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = sub_1D1E677EC();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

uint64_t sub_1D17B3B54(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D17B3BB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t CameraClip.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for CameraClip(uint64_t a1)
{
  result = qword_1EC643CF0;
  if (!qword_1EC643CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CameraClip.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CameraClip(0) + 24);
  v4 = sub_1D1E669FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CameraClip.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CameraClip(0) + 28);
  v4 = sub_1D1E669FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CameraClip.significantEvents.getter()
{
  type metadata accessor for CameraClip(0);
}

uint64_t CameraClip.init(id:eventID:date:creationDate:isComplete:duration:significantEvents:posterFrameURL:timelapseID:timelapseOffset:timelapseQualityAssetURL:highQualityAssetURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13)
{
  v17 = type metadata accessor for CameraClip(0);
  v18 = v17[11];
  v19 = sub_1D1E6680C();
  v20 = *(*(v19 - 8) + 56);
  v20(a9 + v18, 1, 1, v19);
  v21 = v17[12];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  (*(*(v22 - 8) + 56))(a9 + v21, 1, 1, v22);
  v23 = v17[14];
  v20(a9 + v23, 1, 1, v19);
  v24 = v17[15];
  v20(a9 + v24, 1, 1, v19);
  v25 = sub_1D1E66A7C();
  (*(*(v25 - 8) + 32))(a9, a1, v25);
  sub_1D1741A90(a2, a9 + v17[5], &qword_1EC643CE0, &qword_1D1E738D0);
  v26 = v17[6];
  v27 = sub_1D1E669FC();
  v28 = *(*(v27 - 8) + 32);
  v28(a9 + v26, a3, v27);
  v28(a9 + v17[7], a4, v27);
  *(a9 + v17[8]) = a5;
  *(a9 + v17[9]) = a10;
  *(a9 + v17[10]) = a6;
  sub_1D17B4270(a7, a9 + v18, &qword_1EC642EA8, &qword_1D1E73C60);
  sub_1D17B4270(a8, a9 + v21, &qword_1EC643CE0, &qword_1D1E738D0);
  *(a9 + v17[13]) = a11;
  sub_1D17B4270(a12, a9 + v23, &qword_1EC642EA8, &qword_1D1E73C60);
  return sub_1D17B4270(a13, a9 + v24, &qword_1EC642EA8, &qword_1D1E73C60);
}

uint64_t sub_1D17B4270(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t CameraClip.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D1E6680C();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v69 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v65 = &v54 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v54 - v11;
  v12 = sub_1D1E66A7C();
  v64 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v55 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v63 = &v54 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v54 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v54 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CE0, &qword_1D1E738D0);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v59 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v54 - v28;
  v54 = sub_1D17B61EC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v30 = type metadata accessor for CameraClip(0);
  sub_1D1741C08(v1 + v30[5], v29, &qword_1EC643CE0, &qword_1D1E738D0);
  v31 = *(v15 + 48);
  v61 = v15 + 48;
  v62 = v14;
  v58 = v31;
  v32 = v31(v29, 1, v14);
  v57 = v12;
  if (v32 == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1741A90(v29, v24, &qword_1EC642590, qword_1D1E71260);
    sub_1D1E6922C();
    sub_1D1741C08(v24, v22, &qword_1EC642590, qword_1D1E71260);
    v33 = v64;
    if ((*(v64 + 48))(v22, 1, v12) == 1)
    {
      sub_1D1E6922C();
    }

    else
    {
      v34 = v56;
      (*(v33 + 32))(v56, v22, v12);
      sub_1D1E6922C();
      sub_1D1E676EC();
      (*(v33 + 8))(v34, v12);
    }

    sub_1D1741A30(v24, &qword_1EC642590, qword_1D1E71260);
  }

  sub_1D1E669FC();
  sub_1D17B61EC(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D1E676EC();
  sub_1D1E676EC();
  sub_1D1E6922C();
  v35 = *(v1 + v30[9]);
  if (v35 == 0.0)
  {
    v35 = 0.0;
  }

  MEMORY[0x1D3892890](*&v35);
  sub_1D1770D00(a1, *(v1 + v30[10]));
  v36 = v60;
  sub_1D1741C08(v2 + v30[11], v60, &qword_1EC642EA8, &qword_1D1E73C60);
  v38 = v67;
  v37 = v68;
  v39 = *(v67 + 48);
  if (v39(v36, 1, v68) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v40 = v69;
    (*(v38 + 32))(v69, v36, v37);
    sub_1D1E6922C();
    sub_1D17B61EC(&qword_1EC643068, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D1E676EC();
    (*(v38 + 8))(v40, v37);
  }

  v41 = v59;
  sub_1D1741C08(v2 + v30[12], v59, &qword_1EC643CE0, &qword_1D1E738D0);
  v42 = v58(v41, 1, v62);
  v43 = v63;
  if (v42 == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v62 = v39;
    sub_1D1741A90(v41, v63, &qword_1EC642590, qword_1D1E71260);
    sub_1D1E6922C();
    v44 = v55;
    sub_1D1741C08(v43, v55, &qword_1EC642590, qword_1D1E71260);
    v45 = v64;
    v46 = v57;
    if ((*(v64 + 48))(v44, 1, v57) == 1)
    {
      sub_1D1E6922C();
    }

    else
    {
      v47 = v56;
      (*(v45 + 32))(v56, v44, v46);
      sub_1D1E6922C();
      sub_1D1E676EC();
      (*(v45 + 8))(v47, v46);
    }

    sub_1D1741A30(v43, &qword_1EC642590, qword_1D1E71260);
    v37 = v68;
    v39 = v62;
  }

  v48 = *(v2 + v30[13]);
  if (v48 == 0.0)
  {
    v48 = 0.0;
  }

  MEMORY[0x1D3892890](*&v48);
  v49 = v65;
  sub_1D1741C08(v2 + v30[14], v65, &qword_1EC642EA8, &qword_1D1E73C60);
  if (v39(v49, 1, v37) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v50 = v69;
    (*(v38 + 32))(v69, v49, v37);
    sub_1D1E6922C();
    sub_1D17B61EC(&qword_1EC643068, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D1E676EC();
    (*(v38 + 8))(v50, v37);
  }

  v51 = v66;
  sub_1D1741C08(v2 + v30[15], v66, &qword_1EC642EA8, &qword_1D1E73C60);
  if (v39(v51, 1, v37) == 1)
  {
    return sub_1D1E6922C();
  }

  v53 = v69;
  (*(v38 + 32))(v69, v51, v37);
  sub_1D1E6922C();
  sub_1D17B61EC(&qword_1EC643068, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1D1E676EC();
  return (*(v38 + 8))(v53, v37);
}

uint64_t CameraClip.hashValue.getter()
{
  sub_1D1E6920C();
  CameraClip.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D17B4CFC()
{
  sub_1D1E6920C();
  CameraClip.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D17B4D40(uint64_t a1)
{
  sub_1D1E6920C();
  CameraClip.hash(into:)(v2);
  return sub_1D1E6926C();
}

BOOL _s13HomeDataModel10CameraClipV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E6680C();
  v129 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v121 = &v110 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v127 = &v110 - v13;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D18, &unk_1D1E73EA0);
  v14 = MEMORY[0x1EEE9AC00](v130);
  v120 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v123 = &v110 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v128 = &v110 - v18;
  v19 = sub_1D1E66A7C();
  v20 = *(v19 - 8);
  v135 = v19;
  v136 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v131 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v122 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v132 = &v110 - v26;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v27 = MEMORY[0x1EEE9AC00](v134);
  v124 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v133 = &v110 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CE0, &qword_1D1E738D0);
  v31 = MEMORY[0x1EEE9AC00](v30 - 8);
  v125 = &v110 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v110 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D20, &qword_1D1E739B8);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v126 = &v110 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v110 - v38;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v114 = v10;
  v116 = v6;
  v117 = v4;
  v118 = type metadata accessor for CameraClip(0);
  v40 = v118[5];
  v115 = v35;
  v41 = *(v35 + 48);
  v119 = a1;
  sub_1D1741C08(a1 + v40, v39, &qword_1EC643CE0, &qword_1D1E738D0);
  sub_1D1741C08(a2 + v40, &v39[v41], &qword_1EC643CE0, &qword_1D1E738D0);
  v44 = *(v23 + 48);
  v43 = v23 + 48;
  v42 = v44;
  if (v44(v39, 1, v22) == 1)
  {
    if (v42(&v39[v41], 1, v22) == 1)
    {
LABEL_4:
      v112 = v42;
      v111 = v43;
      sub_1D1741A30(v39, &qword_1EC643CE0, &qword_1D1E738D0);
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  sub_1D1741C08(v39, v34, &qword_1EC643CE0, &qword_1D1E738D0);
  if (v42(&v39[v41], 1, v22) == 1)
  {
    sub_1D1741A30(v34, &qword_1EC642590, qword_1D1E71260);
LABEL_15:
    v56 = &qword_1EC643D20;
    v57 = &qword_1D1E739B8;
LABEL_16:
    v58 = v39;
LABEL_17:
    sub_1D1741A30(v58, v56, v57);
    return 0;
  }

  v113 = a2;
  v60 = *(v134 + 48);
  v61 = v34;
  v62 = v133;
  sub_1D1741A90(v61, v133, &qword_1EC642590, qword_1D1E71260);
  v63 = v60;
  sub_1D1741A90(&v39[v41], v62 + v60, &qword_1EC642590, qword_1D1E71260);
  v64 = v135;
  v65 = *(v136 + 48);
  if (v65(v62, 1, v135) == 1)
  {
    if (v65(v62 + v63, 1, v64) == 1)
    {
      sub_1D1741A30(v62, &qword_1EC642590, qword_1D1E71260);
      a2 = v113;
      goto LABEL_4;
    }

    goto LABEL_24;
  }

  v66 = v132;
  sub_1D1741C08(v62, v132, &qword_1EC642590, qword_1D1E71260);
  if (v65(v62 + v63, 1, v64) == 1)
  {
    (*(v136 + 8))(v66, v64);
LABEL_24:
    sub_1D1741A30(v62, &qword_1EC642980, &unk_1D1E6E6E0);
    v56 = &qword_1EC643CE0;
    v57 = &qword_1D1E738D0;
    goto LABEL_16;
  }

  v112 = v42;
  v111 = v43;
  v67 = v136;
  v68 = v62;
  v69 = v131;
  (*(v136 + 32))(v131, v62 + v63, v64);
  sub_1D17B61EC(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v70 = sub_1D1E6775C();
  v71 = *(v67 + 8);
  v71(v69, v64);
  v71(v66, v64);
  a2 = v113;
  sub_1D1741A30(v68, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v39, &qword_1EC643CE0, &qword_1D1E738D0);
  if ((v70 & 1) == 0)
  {
    return 0;
  }

LABEL_5:
  v46 = v118;
  v45 = v119;
  if ((sub_1D1E669AC() & 1) == 0 || (sub_1D1E669AC() & 1) == 0 || *(v45 + v46[8]) != *(a2 + v46[8]) || *(v45 + v46[9]) != *(a2 + v46[9]) || (sub_1D177BF78(*(v45 + v46[10]), *(a2 + v46[10])) & 1) == 0)
  {
    return 0;
  }

  v47 = v46[11];
  v48 = *(v130 + 48);
  v49 = v45 + v47;
  v50 = v128;
  sub_1D1741C08(v49, v128, &qword_1EC642EA8, &qword_1D1E73C60);
  v51 = v50;
  sub_1D1741C08(a2 + v47, v50 + v48, &qword_1EC642EA8, &qword_1D1E73C60);
  v52 = v129;
  v53 = *(v129 + 48);
  v54 = v117;
  v133 = v129 + 48;
  if ((v53)(v51, 1, v117) == 1)
  {
    if ((v53)(v51 + v48, 1, v54) == 1)
    {
      v132 = v53;
      v113 = a2;
      sub_1D1741A30(v51, &qword_1EC642EA8, &qword_1D1E73C60);
      v55 = v116;
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v72 = v127;
  sub_1D1741C08(v51, v127, &qword_1EC642EA8, &qword_1D1E73C60);
  v132 = v53;
  if ((v53)(v51 + v48, 1, v54) == 1)
  {
    (*(v52 + 8))(v72, v54);
LABEL_29:
    v56 = &qword_1EC643D18;
    v57 = &unk_1D1E73EA0;
    v58 = v51;
    goto LABEL_17;
  }

  v113 = a2;
  v73 = v116;
  (*(v52 + 32))(v116, v51 + v48, v54);
  sub_1D17B61EC(&qword_1EC643D28, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v74 = v72;
  v55 = v73;
  LOBYTE(v73) = sub_1D1E6775C();
  v75 = *(v52 + 8);
  v75(v55, v54);
  v75(v74, v54);
  sub_1D1741A30(v51, &qword_1EC642EA8, &qword_1D1E73C60);
  if ((v73 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v76 = v46[12];
  v77 = *(v115 + 48);
  v78 = v126;
  sub_1D1741C08(v119 + v76, v126, &qword_1EC643CE0, &qword_1D1E738D0);
  v79 = v113;
  sub_1D1741C08(v113 + v76, v78 + v77, &qword_1EC643CE0, &qword_1D1E738D0);
  v80 = v22;
  v81 = v112;
  if (v112(v78, 1, v22) == 1)
  {
    if (v81(v78 + v77, 1, v22) == 1)
    {
LABEL_33:
      sub_1D1741A30(v78, &qword_1EC643CE0, &qword_1D1E738D0);
      goto LABEL_34;
    }

    goto LABEL_40;
  }

  v87 = v125;
  sub_1D1741C08(v78, v125, &qword_1EC643CE0, &qword_1D1E738D0);
  if (v81(v78 + v77, 1, v80) == 1)
  {
    sub_1D1741A30(v87, &qword_1EC642590, qword_1D1E71260);
LABEL_40:
    v56 = &qword_1EC643D20;
    v57 = &qword_1D1E739B8;
    v58 = v78;
    goto LABEL_17;
  }

  v88 = *(v134 + 48);
  v89 = v78;
  v90 = v124;
  sub_1D1741A90(v87, v124, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A90(v89 + v77, v90 + v88, &qword_1EC642590, qword_1D1E71260);
  v91 = v135;
  v92 = *(v136 + 48);
  if (v92(v90, 1, v135) == 1)
  {
    if (v92(v90 + v88, 1, v91) == 1)
    {
      sub_1D1741A30(v90, &qword_1EC642590, qword_1D1E71260);
      v79 = v113;
      v78 = v126;
      goto LABEL_33;
    }

    goto LABEL_46;
  }

  v93 = v122;
  sub_1D1741C08(v90, v122, &qword_1EC642590, qword_1D1E71260);
  if (v92(v90 + v88, 1, v91) == 1)
  {
    (*(v136 + 8))(v93, v91);
LABEL_46:
    sub_1D1741A30(v90, &qword_1EC642980, &unk_1D1E6E6E0);
    v56 = &qword_1EC643CE0;
    v57 = &qword_1D1E738D0;
    v58 = v126;
    goto LABEL_17;
  }

  v100 = v90;
  v101 = v136;
  v102 = v100 + v88;
  v103 = v131;
  (*(v136 + 32))(v131, v102, v91);
  sub_1D17B61EC(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v104 = sub_1D1E6775C();
  v105 = *(v101 + 8);
  v105(v103, v91);
  v105(v93, v91);
  sub_1D1741A30(v100, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v126, &qword_1EC643CE0, &qword_1D1E738D0);
  v79 = v113;
  if ((v104 & 1) == 0)
  {
    return 0;
  }

LABEL_34:
  if (*(v119 + v118[13]) != *(v79 + v118[13]))
  {
    return 0;
  }

  v82 = v118[14];
  v83 = v79;
  v84 = *(v130 + 48);
  v85 = v123;
  sub_1D1741C08(v119 + v82, v123, &qword_1EC642EA8, &qword_1D1E73C60);
  v113 = v83;
  sub_1D1741C08(v83 + v82, v85 + v84, &qword_1EC642EA8, &qword_1D1E73C60);
  v86 = v132;
  if ((v132)(v85, 1, v54) == 1)
  {
    if (v86(v85 + v84, 1, v54) != 1)
    {
LABEL_56:
      v56 = &qword_1EC643D18;
      v57 = &unk_1D1E73EA0;
      v58 = v85;
      goto LABEL_17;
    }

    sub_1D1741A30(v85, &qword_1EC642EA8, &qword_1D1E73C60);
  }

  else
  {
    v94 = v121;
    sub_1D1741C08(v85, v121, &qword_1EC642EA8, &qword_1D1E73C60);
    if (v86(v85 + v84, 1, v54) == 1)
    {
LABEL_55:
      (*(v129 + 8))(v94, v54);
      goto LABEL_56;
    }

    v95 = v129;
    (*(v129 + 32))(v55, v85 + v84, v54);
    sub_1D17B61EC(&qword_1EC643D28, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
    v96 = sub_1D1E6775C();
    v97 = *(v95 + 8);
    v97(v55, v54);
    v97(v94, v54);
    sub_1D1741A30(v85, &qword_1EC642EA8, &qword_1D1E73C60);
    if ((v96 & 1) == 0)
    {
      return 0;
    }
  }

  v98 = v118[15];
  v99 = *(v130 + 48);
  v85 = v120;
  sub_1D1741C08(v119 + v98, v120, &qword_1EC642EA8, &qword_1D1E73C60);
  sub_1D1741C08(v113 + v98, v85 + v99, &qword_1EC642EA8, &qword_1D1E73C60);
  if (v86(v85, 1, v54) != 1)
  {
    v106 = v55;
    v94 = v114;
    sub_1D1741C08(v85, v114, &qword_1EC642EA8, &qword_1D1E73C60);
    if (v86(v85 + v99, 1, v54) != 1)
    {
      v107 = v129;
      (*(v129 + 32))(v106, v85 + v99, v54);
      sub_1D17B61EC(&qword_1EC643D28, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v108 = sub_1D1E6775C();
      v109 = *(v107 + 8);
      v109(v106, v54);
      v109(v94, v54);
      sub_1D1741A30(v85, &qword_1EC642EA8, &qword_1D1E73C60);
      return (v108 & 1) != 0;
    }

    goto LABEL_55;
  }

  if (v86(v85 + v99, 1, v54) != 1)
  {
    goto LABEL_56;
  }

  sub_1D1741A30(v85, &qword_1EC642EA8, &qword_1D1E73C60);
  return 1;
}

void sub_1D17B5FCC(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D17B6124(319);
    if (v2 <= 0x3F)
    {
      sub_1D1E669FC();
      if (v3 <= 0x3F)
      {
        sub_1D17B6188(319, &qword_1EC643D08, type metadata accessor for SignificantEvent, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1D17B6188(319, &qword_1EC643D10, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D17B6124(uint64_t a1)
{
  if (!qword_1EC643D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC642590, qword_1D1E71260);
    v1 = sub_1D1E685AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC643D00);
    }
  }
}

void sub_1D17B6188(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D17B61EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ReachabilityEvent.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for ReachabilityEvent(uint64_t a1)
{
  result = qword_1EC643D38;
  if (!qword_1EC643D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReachabilityEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReachabilityEvent(0) + 24);
  v4 = sub_1D1E669FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReachabilityEvent.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReachabilityEvent(0) + 28);
  v4 = sub_1D1E669FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReachabilityEvent.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReachabilityEvent(0) + 32);

  return sub_1D174A548(v3, a1);
}

uint64_t ReachabilityEvent.endDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ReachabilityEvent(0) + 32);

  return sub_1D17B648C(a1, v3);
}

uint64_t sub_1D17B648C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ReachabilityEvent.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - v5;
  v7 = sub_1D1E669FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ReachabilityEvent(0);
  sub_1D174A548(v0 + *(v11 + 32), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D1741A30(v6, &qword_1EC642570, &qword_1D1E6C6A0);
    static String.hfLocalized(_:)(0xD000000000000027, 0x80000001D1EB9250);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D1E739C0;
    (*(v8 + 16))(v4, v0 + *(v11 + 24), v7);
    (*(v8 + 56))(v4, 0, 1, v7);
    v13 = sub_1D17B681C(v4);
    v15 = v14;
    sub_1D1741A30(v4, &qword_1EC642570, &qword_1D1E6C6A0);
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1D1757D20();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    v16 = sub_1D1E6784C();
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v16 = sub_1D17B785C(v0 + *(v11 + 24), v10);
    (*(v8 + 8))(v10, v7);
  }

  return v16;
}

uint64_t sub_1D17B681C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1D1E669FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D174A548(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D1741A30(v4, &qword_1EC642570, &qword_1D1E6C6A0);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v11 = sub_1D1E677EC();
    [v10 setLocalizedDateFormatFromTemplate_];

    v12 = sub_1D1E6694C();
    v13 = [v10 stringFromDate_];

    v14 = sub_1D1E6781C();
    (*(v6 + 8))(v8, v5);
    return v14;
  }
}

uint64_t ReachabilityEvent.init(id:reachable:date:creationDate:endDate:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for ReachabilityEvent(0);
  v13 = v12[8];
  v14 = sub_1D1E669FC();
  v15 = *(v14 - 8);
  (*(v15 + 56))(a6 + v13, 1, 1, v14);
  v16 = sub_1D1E66A7C();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  *(a6 + v12[5]) = a2;
  v17 = *(v15 + 32);
  v17(a6 + v12[6], a3, v14);
  v17(a6 + v12[7], a4, v14);

  return sub_1D17B648C(a5, a6 + v13);
}

uint64_t ReachabilityEvent.hash(into:)(uint64_t a1)
{
  v2 = sub_1D1E669FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1D1E66A7C();
  sub_1D17B7814(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v9 = type metadata accessor for ReachabilityEvent(0);
  sub_1D1E6922C();
  sub_1D17B7814(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D1E676EC();
  sub_1D1E676EC();
  sub_1D174A548(v1 + *(v9 + 32), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_1D1E6922C();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_1D1E6922C();
  sub_1D1E676EC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ReachabilityEvent.hashValue.getter()
{
  v1 = sub_1D1E669FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D17B7814(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v8 = type metadata accessor for ReachabilityEvent(0);
  sub_1D1E6922C();
  sub_1D17B7814(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D1E676EC();
  sub_1D1E676EC();
  sub_1D174A548(v0 + *(v8 + 32), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D17B70C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D17B7814(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  sub_1D1E6922C();
  sub_1D17B7814(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D1E676EC();
  sub_1D1E676EC();
  sub_1D174A548(v2 + *(a2 + 32), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v5 + 8))(v7, v4);
  }

  return sub_1D1E6926C();
}

BOOL _s13HomeDataModel17ReachabilityEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for ReachabilityEvent(0);
  if (*(a1 + *(v14 + 20)) != *(a2 + *(v14 + 20)))
  {
    return 0;
  }

  v15 = v14;
  if ((sub_1D1E669AC() & 1) == 0 || (sub_1D1E669AC() & 1) == 0)
  {
    return 0;
  }

  v16 = *(v15 + 32);
  v17 = *(v11 + 48);
  sub_1D174A548(a1 + v16, v13);
  sub_1D174A548(a2 + v16, &v13[v17]);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_1D1741A30(v13, &qword_1EC642570, &qword_1D1E6C6A0);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1D174A548(v13, v10);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_10:
    sub_1D1741A30(v13, &qword_1EC642AC0, &qword_1D1E6E810);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v17], v4);
  sub_1D17B7814(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v20 = sub_1D1E6775C();
  v21 = *(v5 + 8);
  v21(v7, v4);
  v21(v10, v4);
  sub_1D1741A30(v13, &qword_1EC642570, &qword_1D1E6C6A0);
  return (v20 & 1) != 0;
}

void sub_1D17B7718(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D1E669FC();
    if (v2 <= 0x3F)
    {
      sub_1D17B77BC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D17B77BC(uint64_t a1)
{
  if (!qword_1EE07E020)
  {
    sub_1D1E669FC();
    v1 = sub_1D1E685AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE07E020);
    }
  }
}

uint64_t sub_1D17B7814(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D17B785C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D1E66BBC();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v6 = sub_1D1E677EC();
  [v5 setLocalizedDateFormatFromTemplate_];

  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v8 = sub_1D1E677EC();
  [v7 setLocalizedDateFormatFromTemplate_];

  sub_1D1E66B9C();
  v9 = sub_1D1E66B7C();
  v10 = sub_1D1E66AFC();
  v11 = sub_1D1E6694C();
  v12 = [v5 stringFromDate_];

  v54 = sub_1D1E6781C();
  v55 = v13;

  v14 = sub_1D1E6694C();
  v15 = [v5 stringFromDate_];

  v52 = sub_1D1E6781C();
  v53 = v16;

  v17 = sub_1D1E6694C();
  v18 = [v7 stringFromDate_];

  v19 = sub_1D1E6781C();
  v21 = v20;

  if ((v9 & 1) == 0)
  {
    v29 = sub_1D1E6694C();
    v30 = [v7 stringFromDate_];

    v31 = sub_1D1E6781C();
    v33 = v32;

    if ((v10 & 1) == 0)
    {
      v51[1] = static String.hfLocalized(_:)(0xD000000000000027, 0x80000001D1EB9280);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1D1E72CC0;
      v46 = MEMORY[0x1E69E6158];
      *(v45 + 56) = MEMORY[0x1E69E6158];
      v47 = sub_1D1757D20();
      v48 = v55;
      *(v45 + 32) = v54;
      *(v45 + 40) = v48;
      *(v45 + 96) = v46;
      *(v45 + 104) = v47;
      *(v45 + 64) = v47;
      *(v45 + 72) = v19;
      *(v45 + 80) = v21;
      *(v45 + 136) = v46;
      *(v45 + 144) = v47;
      v49 = v53;
      *(v45 + 112) = v52;
      *(v45 + 120) = v49;
      *(v45 + 176) = v46;
      *(v45 + 184) = v47;
      *(v45 + 152) = v31;
      *(v45 + 160) = v33;
      v28 = sub_1D1E6784C();
      goto LABEL_9;
    }

    static String.hfLocalized(_:)(0xD00000000000002CLL, 0x80000001D1EB92B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1D1E6F900;
    v35 = MEMORY[0x1E69E6158];
    *(v34 + 56) = MEMORY[0x1E69E6158];
    v36 = sub_1D1757D20();
    v37 = v55;
    *(v34 + 32) = v54;
    *(v34 + 40) = v37;
    *(v34 + 96) = v35;
    *(v34 + 104) = v36;
    *(v34 + 64) = v36;
    *(v34 + 72) = v19;
    *(v34 + 80) = v21;
    *(v34 + 136) = v35;
    *(v34 + 144) = v36;
    v38 = v53;
    *(v34 + 112) = v52;
    *(v34 + 120) = v38;
LABEL_7:
    v28 = sub_1D1E6784C();
LABEL_9:

    goto LABEL_10;
  }

  if ((v10 & 1) == 0)
  {
    static String.hfLocalized(_:)(0xD00000000000002ELL, 0x80000001D1EB92E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1D1E6F900;
    v40 = MEMORY[0x1E69E6158];
    *(v39 + 56) = MEMORY[0x1E69E6158];
    v41 = sub_1D1757D20();
    v42 = v55;
    *(v39 + 32) = v54;
    *(v39 + 40) = v42;
    *(v39 + 96) = v40;
    *(v39 + 104) = v41;
    v44 = v52;
    v43 = v53;
    *(v39 + 64) = v41;
    *(v39 + 72) = v44;
    *(v39 + 80) = v43;
    *(v39 + 136) = v40;
    *(v39 + 144) = v41;
    *(v39 + 112) = v19;
    *(v39 + 120) = v21;
    goto LABEL_7;
  }

  static String.hfLocalized(_:)(0xD00000000000002CLL, 0x80000001D1EB9310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D1E73A90;
  v23 = MEMORY[0x1E69E6158];
  *(v22 + 56) = MEMORY[0x1E69E6158];
  v24 = sub_1D1757D20();
  v25 = v55;
  *(v22 + 32) = v54;
  *(v22 + 40) = v25;
  *(v22 + 96) = v23;
  *(v22 + 104) = v24;
  v27 = v52;
  v26 = v53;
  *(v22 + 64) = v24;
  *(v22 + 72) = v27;
  *(v22 + 80) = v26;
  v28 = sub_1D1E6784C();

LABEL_10:
  (*(v56 + 8))(v4, v57);
  return v28;
}

uint64_t ScrubberElement.ID.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ScrubberElement.ID.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D17BA528(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  return sub_1D1E676EC();
}

uint64_t ScrubberElement.ID.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D17BA528(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D17B7F10()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D17BA528(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D17B7F98(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D17BA528(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  return sub_1D1E676EC();
}

uint64_t sub_1D17B801C(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D17BA528(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t ScrubberElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ReachabilityEvent(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ScrubberElement(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v2, v12, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17BA164(v12, v6, type metadata accessor for ReachabilityEvent);
    v13 = sub_1D1E66A7C();
    (*(*(v13 - 8) + 16))(a1, v6, v13);
    v14 = type metadata accessor for ReachabilityEvent;
    v15 = v6;
  }

  else
  {
    sub_1D17BA164(v12, v9, type metadata accessor for CameraClip);
    v16 = sub_1D1E66A7C();
    (*(*(v16 - 8) + 16))(a1, v9, v16);
    v14 = type metadata accessor for CameraClip;
    v15 = v9;
  }

  return sub_1D17B82F0(v15, v14);
}

uint64_t sub_1D17B82F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ScrubberElement.eventID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ScrubberElement(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v2, v9, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
    v11 = type metadata accessor for ScrubberElement;
    v12 = v9;
  }

  else
  {
    sub_1D17BA164(v9, v6, type metadata accessor for CameraClip);
    sub_1D1741C08(&v6[*(v4 + 20)], a1, &qword_1EC643CE0, &qword_1D1E738D0);
    v11 = type metadata accessor for CameraClip;
    v12 = v6;
  }

  return sub_1D17B82F0(v12, v11);
}

uint64_t ScrubberElement.date.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ReachabilityEvent(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ScrubberElement(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v2, v12, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17BA164(v12, v6, type metadata accessor for ReachabilityEvent);
    v13 = *(v4 + 24);
    v14 = sub_1D1E669FC();
    (*(*(v14 - 8) + 16))(a1, &v6[v13], v14);
    v15 = type metadata accessor for ReachabilityEvent;
    v16 = v6;
  }

  else
  {
    sub_1D17BA164(v12, v9, type metadata accessor for CameraClip);
    v17 = *(v7 + 24);
    v18 = sub_1D1E669FC();
    (*(*(v18 - 8) + 16))(a1, &v9[v17], v18);
    v15 = type metadata accessor for CameraClip;
    v16 = v9;
  }

  return sub_1D17B82F0(v16, v15);
}

uint64_t ScrubberElement.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ReachabilityEvent(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ScrubberElement(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v2, v12, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17BA164(v12, v6, type metadata accessor for ReachabilityEvent);
    v13 = *(v4 + 28);
    v14 = sub_1D1E669FC();
    (*(*(v14 - 8) + 16))(a1, &v6[v13], v14);
    v15 = type metadata accessor for ReachabilityEvent;
    v16 = v6;
  }

  else
  {
    sub_1D17BA164(v12, v9, type metadata accessor for CameraClip);
    v17 = *(v7 + 28);
    v18 = sub_1D1E669FC();
    (*(*(v18 - 8) + 16))(a1, &v9[v17], v18);
    v15 = type metadata accessor for CameraClip;
    v16 = v9;
  }

  return sub_1D17B82F0(v16, v15);
}

uint64_t ScrubberElement.isComplete.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ScrubberElement(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v1, v7, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17B82F0(v7, type metadata accessor for ScrubberElement);
    return 0;
  }

  else
  {
    sub_1D17BA164(v7, v4, type metadata accessor for CameraClip);
    v8 = v4[*(v2 + 32)];
    sub_1D17B82F0(v4, type metadata accessor for CameraClip);
  }

  return v8;
}

uint64_t ScrubberElement.duration.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ScrubberElement(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v1, v7, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17B82F0(v7, type metadata accessor for ScrubberElement);
    return 0;
  }

  else
  {
    sub_1D17BA164(v7, v4, type metadata accessor for CameraClip);
    v8 = *&v4[*(v2 + 36)];
    sub_1D17B82F0(v4, type metadata accessor for CameraClip);
  }

  return v8;
}

uint64_t ScrubberElement.significantEvents.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ScrubberElement(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v1, v7, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17B82F0(v7, type metadata accessor for ScrubberElement);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1D17BA164(v7, v4, type metadata accessor for CameraClip);
    v8 = *&v4[*(v2 + 40)];

    sub_1D17B82F0(v4, type metadata accessor for CameraClip);
  }

  return v8;
}

uint64_t ScrubberElement.posterFrameURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ScrubberElement(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v2, v9, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D1E6680C();
    (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
    v11 = type metadata accessor for ScrubberElement;
    v12 = v9;
  }

  else
  {
    sub_1D17BA164(v9, v6, type metadata accessor for CameraClip);
    sub_1D1741C08(&v6[*(v4 + 44)], a1, &qword_1EC642EA8, &qword_1D1E73C60);
    v11 = type metadata accessor for CameraClip;
    v12 = v6;
  }

  return sub_1D17B82F0(v12, v11);
}

uint64_t ScrubberElement.timelapseID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ScrubberElement(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v2, v9, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
    v11 = type metadata accessor for ScrubberElement;
    v12 = v9;
  }

  else
  {
    sub_1D17BA164(v9, v6, type metadata accessor for CameraClip);
    sub_1D1741C08(&v6[*(v4 + 48)], a1, &qword_1EC643CE0, &qword_1D1E738D0);
    v11 = type metadata accessor for CameraClip;
    v12 = v6;
  }

  return sub_1D17B82F0(v12, v11);
}

double ScrubberElement.timelapseOffset.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ScrubberElement(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v1, v7, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17B82F0(v7, type metadata accessor for ScrubberElement);
    return 0.0;
  }

  else
  {
    sub_1D17BA164(v7, v4, type metadata accessor for CameraClip);
    v8 = *&v4[*(v2 + 52)];
    sub_1D17B82F0(v4, type metadata accessor for CameraClip);
  }

  return v8;
}

uint64_t ScrubberElement.timelapseQualityAssetURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ScrubberElement(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v2, v9, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D1E6680C();
    (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
    v11 = type metadata accessor for ScrubberElement;
    v12 = v9;
  }

  else
  {
    sub_1D17BA164(v9, v6, type metadata accessor for CameraClip);
    sub_1D1741C08(&v6[*(v4 + 56)], a1, &qword_1EC642EA8, &qword_1D1E73C60);
    v11 = type metadata accessor for CameraClip;
    v12 = v6;
  }

  return sub_1D17B82F0(v12, v11);
}

uint64_t ScrubberElement.highQualityAssetURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ScrubberElement(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v2, v9, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D1E6680C();
    (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
    v11 = type metadata accessor for ScrubberElement;
    v12 = v9;
  }

  else
  {
    sub_1D17BA164(v9, v6, type metadata accessor for CameraClip);
    sub_1D1741C08(&v6[*(v4 + 60)], a1, &qword_1EC642EA8, &qword_1D1E73C60);
    v11 = type metadata accessor for CameraClip;
    v12 = v6;
  }

  return sub_1D17B82F0(v12, v11);
}

uint64_t ScrubberElement.updated(withSignificantEvent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SignificantEvent(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ScrubberElement(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v2, v11, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17B82F0(v11, type metadata accessor for ScrubberElement);
    return sub_1D17B99D4(v2, a2, type metadata accessor for ScrubberElement);
  }

  else
  {
    sub_1D17BA164(v11, v14, type metadata accessor for CameraClip);
    sub_1D17B99D4(v14, a2, type metadata accessor for CameraClip);
    v16 = 0;
    v17 = *(v12 + 40);
    v18 = *(a2 + v17);
    v19 = v18[2];
    while (v19 != v16)
    {
      v20 = v16 + 1;
      v21 = _s13HomeDataModel16SignificantEventV2eeoiySbAC_ACtFZ_0(v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, a1);
      v16 = v20;
      if (v21)
      {
        sub_1D17B82F0(v14, type metadata accessor for CameraClip);
        return swift_storeEnumTagMultiPayload();
      }
    }

    sub_1D17B99D4(a1, v8, type metadata accessor for SignificantEvent);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1D177D3B4(0, v18[2] + 1, 1, v18);
    }

    v23 = v18[2];
    v22 = v18[3];
    if (v23 >= v22 >> 1)
    {
      v18 = sub_1D177D3B4((v22 > 1), v23 + 1, 1, v18);
    }

    sub_1D17B82F0(v14, type metadata accessor for CameraClip);
    v18[2] = v23 + 1;
    sub_1D17BA164(v8, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v23, type metadata accessor for SignificantEvent);
    *(a2 + v17) = v18;
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1D17B99D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ScrubberElement.hash(into:)(uint64_t a1)
{
  v3 = sub_1D1E669FC();
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for ReachabilityEvent(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ScrubberElement(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v1, v17, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17BA164(v17, v11, type metadata accessor for ReachabilityEvent);
    MEMORY[0x1D3892850](1);
    sub_1D1E66A7C();
    sub_1D17BA528(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    sub_1D1E6922C();
    sub_1D17BA528(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    sub_1D1E676EC();
    sub_1D1741C08(&v11[*(v9 + 32)], v8, &qword_1EC642570, &qword_1D1E6C6A0);
    v18 = v23;
    if ((*(v23 + 48))(v8, 1, v3) == 1)
    {
      sub_1D1E6922C();
    }

    else
    {
      (*(v18 + 32))(v5, v8, v3);
      sub_1D1E6922C();
      sub_1D1E676EC();
      (*(v18 + 8))(v5, v3);
    }

    v19 = type metadata accessor for ReachabilityEvent;
    v20 = v11;
  }

  else
  {
    sub_1D17BA164(v17, v14, type metadata accessor for CameraClip);
    MEMORY[0x1D3892850](0);
    CameraClip.hash(into:)(a1);
    v19 = type metadata accessor for CameraClip;
    v20 = v14;
  }

  return sub_1D17B82F0(v20, v19);
}

uint64_t ScrubberElement.hashValue.getter()
{
  sub_1D1E6920C();
  ScrubberElement.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D17B9EBC()
{
  sub_1D1E6920C();
  ScrubberElement.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D17B9F00(uint64_t a1)
{
  sub_1D1E6920C();
  ScrubberElement.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D17B9F3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ReachabilityEvent(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CameraClip(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v2, v12, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17BA164(v12, v6, type metadata accessor for ReachabilityEvent);
    v13 = sub_1D1E66A7C();
    (*(*(v13 - 8) + 16))(a1, v6, v13);
    v14 = type metadata accessor for ReachabilityEvent;
    v15 = v6;
  }

  else
  {
    sub_1D17BA164(v12, v10, type metadata accessor for CameraClip);
    v16 = sub_1D1E66A7C();
    (*(*(v16 - 8) + 16))(a1, v10, v16);
    v14 = type metadata accessor for CameraClip;
    v15 = v10;
  }

  return sub_1D17B82F0(v15, v14);
}

uint64_t sub_1D17BA164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL _s13HomeDataModel15ScrubberElementO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReachabilityEvent(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ScrubberElement(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D80, &qword_1D1E74300);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  sub_1D17B99D4(a1, &v27 - v18, type metadata accessor for ScrubberElement);
  sub_1D17B99D4(a2, &v19[v20], type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17B99D4(v19, v13, type metadata accessor for ScrubberElement);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D17BA164(&v19[v20], v6, type metadata accessor for ReachabilityEvent);
      v21 = _s13HomeDataModel17ReachabilityEventV2eeoiySbAC_ACtFZ_0(v13, v6);
      sub_1D17B82F0(v6, type metadata accessor for ReachabilityEvent);
      v22 = v13;
      v23 = type metadata accessor for ReachabilityEvent;
LABEL_9:
      sub_1D17B82F0(v22, v23);
      sub_1D17B82F0(v19, type metadata accessor for ScrubberElement);
      return v21;
    }

    v24 = type metadata accessor for ReachabilityEvent;
    v25 = v13;
  }

  else
  {
    sub_1D17B99D4(v19, v15, type metadata accessor for ScrubberElement);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D17BA164(&v19[v20], v9, type metadata accessor for CameraClip);
      v21 = _s13HomeDataModel10CameraClipV2eeoiySbAC_ACtFZ_0(v15, v9);
      sub_1D17B82F0(v9, type metadata accessor for CameraClip);
      v22 = v15;
      v23 = type metadata accessor for CameraClip;
      goto LABEL_9;
    }

    v24 = type metadata accessor for CameraClip;
    v25 = v15;
  }

  sub_1D17B82F0(v25, v24);
  sub_1D17BA770(v19);
  return 0;
}

uint64_t sub_1D17BA528(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D17BA668(uint64_t a1)
{
  result = type metadata accessor for CameraClip(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ReachabilityEvent(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D17BA704(uint64_t a1)
{
  result = sub_1D1E66A7C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D17BA770(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D80, &qword_1D1E74300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ScrubberPositionData.element.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ScrubberPositionData(0) + 28);

  return sub_1D17BA880(v3, a1);
}

uint64_t type metadata accessor for ScrubberPositionData(uint64_t a1)
{
  result = qword_1EC643D90;
  if (!qword_1EC643D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D17BA880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D88, &unk_1D1E73BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ScrubberPositionData.init(offset:clipOffset:timeElapsedInClip:clipWidth:element:time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D3>)
{
  sub_1D1741A30(a2, &qword_1EC642570, &qword_1D1E6C6A0);
  *a3 = a4;
  a3[1] = a5;
  a3[2] = a6;
  v11 = a3 + *(type metadata accessor for ScrubberPositionData(0) + 28);

  return sub_1D17BA978(a1, v11);
}

uint64_t sub_1D17BA978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D88, &unk_1D1E73BE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ScrubberPositionData.addingOffset(_:)@<X0>(double *a1@<X8>, double a2@<D0>)
{
  v48 = a1;
  v43 = type metadata accessor for ReachabilityEvent(0);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D1E669FC();
  v46 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ScrubberElement(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D88, &unk_1D1E73BE0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v41 - v22;
  v25 = *v2;
  v24 = *(v2 + 8);
  ScrubberPositionData.timeElapsedInClip.getter();
  v26 = *(v2 + 16);
  v47 = type metadata accessor for ScrubberPositionData(0);
  v27 = *(v47 + 28);
  sub_1D17BA880(v2 + v27, v23);
  sub_1D17BA880(v2 + v27, v21);
  v28 = 1;
  v29 = (*(v9 + 48))(v21, 1, v8);
  v30 = v6;
  v31 = v46;
  if (v29 != 1)
  {
    sub_1D17BB5A8(v21, v14, type metadata accessor for ScrubberElement);
    sub_1D17BB544(v14, v12);
    v32 = (v31 + 16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = v12;
      v34 = v44;
      sub_1D17BB5A8(v33, v44, type metadata accessor for ReachabilityEvent);
      v35 = v45;
      (*v32)(v45, v34 + *(v43 + 24), v30);
      v36 = type metadata accessor for ReachabilityEvent;
    }

    else
    {
      v37 = v12;
      v34 = v42;
      sub_1D17BB5A8(v37, v42, type metadata accessor for CameraClip);
      v35 = v45;
      (*v32)(v45, v34 + *(v41 + 24), v30);
      v36 = type metadata accessor for CameraClip;
    }

    sub_1D17B82F0(v34, v36);
    ScrubberPositionData.timeElapsedInClip.getter();
    sub_1D1E6693C();
    (*(v31 + 8))(v35, v30);
    sub_1D17B82F0(v14, type metadata accessor for ScrubberElement);
    v28 = 0;
  }

  (*(v31 + 56))(v17, v28, 1, v30);
  sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
  v38 = v47;
  v39 = v48;
  *v48 = v25 + a2;
  *(v39 + 1) = v24;
  *(v39 + 2) = v26;
  return sub_1D17BA978(v23, v39 + *(v38 + 28));
}

uint64_t ScrubberPositionData.timeElapsedInClip.getter()
{
  v1 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ScrubberElement(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D88, &unk_1D1E73BE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  v11 = type metadata accessor for ScrubberPositionData(0);
  sub_1D17BA880(v0 + *(v11 + 28), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_1D1741A30(v10, &qword_1EC643D88, &unk_1D1E73BE0);
  }

  sub_1D17BB544(v10, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17B82F0(v7, type metadata accessor for ScrubberElement);
  }

  else
  {
    sub_1D17BB5A8(v7, v3, type metadata accessor for CameraClip);
    sub_1D17B82F0(v3, type metadata accessor for CameraClip);
  }

  return sub_1D17B82F0(v10, type metadata accessor for ScrubberElement);
}

uint64_t ScrubberPositionData.time.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v30 = type metadata accessor for ReachabilityEvent(0);
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1E669FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ScrubberElement(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D88, &unk_1D1E73BE0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28 - v17;
  v19 = *(type metadata accessor for ScrubberPositionData(0) + 28);
  v32 = v1;
  sub_1D17BA880(v1 + v19, v18);
  v20 = 1;
  v21 = (*(v10 + 48))(v18, 1, v9);
  v22 = v33;
  if (v21 != 1)
  {
    sub_1D17BB5A8(v18, v15, type metadata accessor for ScrubberElement);
    sub_1D17BB544(v15, v13);
    v23 = (v6 + 16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v31;
      sub_1D17BB5A8(v13, v31, type metadata accessor for ReachabilityEvent);
      (*v23)(v8, v24 + *(v30 + 24), v5);
      v25 = type metadata accessor for ReachabilityEvent;
      v26 = v24;
    }

    else
    {
      sub_1D17BB5A8(v13, v4, type metadata accessor for CameraClip);
      (*v23)(v8, &v4[*(v29 + 24)], v5);
      v25 = type metadata accessor for CameraClip;
      v26 = v4;
    }

    sub_1D17B82F0(v26, v25);
    ScrubberPositionData.timeElapsedInClip.getter();
    sub_1D1E6693C();
    (*(v6 + 8))(v8, v5);
    sub_1D17B82F0(v15, type metadata accessor for ScrubberElement);
    v20 = 0;
  }

  return (*(v6 + 56))(v22, v20, 1, v5);
}

uint64_t sub_1D17BB544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrubberElement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D17BB5A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ScrubberPositionData.updating(offset:clipOffset:)@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v48 = a1;
  v43 = type metadata accessor for ReachabilityEvent(0);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E669FC();
  v46 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ScrubberElement(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D88, &unk_1D1E73BE0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v41 - v24;
  ScrubberPositionData.timeElapsedInClip.getter();
  v26 = *(v3 + 16);
  v47 = type metadata accessor for ScrubberPositionData(0);
  v27 = *(v47 + 28);
  sub_1D17BA880(v3 + v27, v25);
  sub_1D17BA880(v3 + v27, v23);
  v28 = 1;
  v29 = (*(v11 + 48))(v23, 1, v10);
  v30 = v8;
  v31 = v46;
  if (v29 != 1)
  {
    sub_1D17BB5A8(v23, v16, type metadata accessor for ScrubberElement);
    sub_1D17BB544(v16, v14);
    v32 = (v31 + 16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = v14;
      v34 = v44;
      sub_1D17BB5A8(v33, v44, type metadata accessor for ReachabilityEvent);
      v35 = v45;
      (*v32)(v45, v34 + *(v43 + 24), v30);
      v36 = type metadata accessor for ReachabilityEvent;
    }

    else
    {
      v37 = v14;
      v34 = v42;
      sub_1D17BB5A8(v37, v42, type metadata accessor for CameraClip);
      v35 = v45;
      (*v32)(v45, v34 + *(v41 + 24), v30);
      v36 = type metadata accessor for CameraClip;
    }

    sub_1D17B82F0(v34, v36);
    ScrubberPositionData.timeElapsedInClip.getter();
    sub_1D1E6693C();
    (*(v31 + 8))(v35, v30);
    sub_1D17B82F0(v16, type metadata accessor for ScrubberElement);
    v28 = 0;
  }

  (*(v31 + 56))(v19, v28, 1, v30);
  sub_1D1741A30(v19, &qword_1EC642570, &qword_1D1E6C6A0);
  v38 = v47;
  v39 = v48;
  *v48 = a2;
  v39[1] = a3;
  *(v39 + 2) = v26;
  return sub_1D17BA978(v25, v39 + *(v38 + 28));
}

uint64_t ScrubberPositionData.updating(offset:)@<X0>(double *a1@<X8>, double a2@<D0>)
{
  v47 = a1;
  v42 = type metadata accessor for ReachabilityEvent(0);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D1E669FC();
  v45 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ScrubberElement(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D88, &unk_1D1E73BE0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v40 - v22;
  v24 = *(v2 + 8);
  ScrubberPositionData.timeElapsedInClip.getter();
  v25 = *(v2 + 16);
  v46 = type metadata accessor for ScrubberPositionData(0);
  v26 = *(v46 + 28);
  sub_1D17BA880(v2 + v26, v23);
  sub_1D17BA880(v2 + v26, v21);
  v27 = 1;
  v28 = (*(v9 + 48))(v21, 1, v8);
  v29 = v6;
  v30 = v45;
  if (v28 != 1)
  {
    sub_1D17BB5A8(v21, v14, type metadata accessor for ScrubberElement);
    sub_1D17BB544(v14, v12);
    v31 = (v30 + 16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = v12;
      v33 = v43;
      sub_1D17BB5A8(v32, v43, type metadata accessor for ReachabilityEvent);
      v34 = v44;
      (*v31)(v44, v33 + *(v42 + 24), v29);
      v35 = type metadata accessor for ReachabilityEvent;
    }

    else
    {
      v36 = v12;
      v33 = v41;
      sub_1D17BB5A8(v36, v41, type metadata accessor for CameraClip);
      v34 = v44;
      (*v31)(v44, v33 + *(v40 + 24), v29);
      v35 = type metadata accessor for CameraClip;
    }

    sub_1D17B82F0(v33, v35);
    ScrubberPositionData.timeElapsedInClip.getter();
    sub_1D1E6693C();
    (*(v30 + 8))(v34, v29);
    sub_1D17B82F0(v14, type metadata accessor for ScrubberElement);
    v27 = 0;
  }

  (*(v30 + 56))(v17, v27, 1, v29);
  sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
  v37 = v46;
  v38 = v47;
  *v47 = a2;
  *(v38 + 1) = v24;
  *(v38 + 2) = v25;
  return sub_1D17BA978(v23, v38 + *(v37 + 28));
}

uint64_t ScrubberPositionData.updating(element:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v47 = a2;
  v42 = type metadata accessor for ReachabilityEvent(0);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D1E669FC();
  v45 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ScrubberElement(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D88, &unk_1D1E73BE0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v40 - v22;
  v24 = *v2;
  v25 = v2[1];
  ScrubberPositionData.timeElapsedInClip.getter();
  v26 = v2[2];
  sub_1D17BA880(a1, v23);
  v46 = type metadata accessor for ScrubberPositionData(0);
  sub_1D17BA880(v2 + *(v46 + 28), v21);
  v27 = 1;
  v28 = (*(v9 + 48))(v21, 1, v8);
  v29 = v6;
  v30 = v45;
  if (v28 != 1)
  {
    sub_1D17BB5A8(v21, v14, type metadata accessor for ScrubberElement);
    sub_1D17BB544(v14, v12);
    v31 = (v30 + 16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = v12;
      v33 = v43;
      sub_1D17BB5A8(v32, v43, type metadata accessor for ReachabilityEvent);
      v34 = v44;
      (*v31)(v44, v33 + *(v42 + 24), v29);
      v35 = type metadata accessor for ReachabilityEvent;
    }

    else
    {
      v36 = v12;
      v33 = v41;
      sub_1D17BB5A8(v36, v41, type metadata accessor for CameraClip);
      v34 = v44;
      (*v31)(v44, v33 + *(v40 + 24), v29);
      v35 = type metadata accessor for CameraClip;
    }

    sub_1D17B82F0(v33, v35);
    ScrubberPositionData.timeElapsedInClip.getter();
    sub_1D1E6693C();
    (*(v30 + 8))(v34, v29);
    sub_1D17B82F0(v14, type metadata accessor for ScrubberElement);
    v27 = 0;
  }

  (*(v30 + 56))(v17, v27, 1, v29);
  sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
  v37 = v46;
  v38 = v47;
  *v47 = v24;
  v38[1] = v25;
  v38[2] = v26;
  return sub_1D17BA978(v23, v38 + *(v37 + 28));
}

BOOL _s13HomeDataModel016ScrubberPositionB0V2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v4 = type metadata accessor for ScrubberElement(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D88, &unk_1D1E73BE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643DA8, &qword_1D1E73C48);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v15 = v12;
  v16 = *(type metadata accessor for ScrubberPositionData(0) + 28);
  v17 = *(v15 + 48);
  sub_1D17BA880(a1 + v16, v14);
  sub_1D17BA880(a2 + v16, &v14[v17]);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    if (v18(&v14[v17], 1, v4) == 1)
    {
      sub_1D1741A30(v14, &qword_1EC643D88, &unk_1D1E73BE0);
      return 1;
    }

    goto LABEL_9;
  }

  sub_1D17BA880(v14, v10);
  if (v18(&v14[v17], 1, v4) == 1)
  {
    sub_1D17B82F0(v10, type metadata accessor for ScrubberElement);
LABEL_9:
    sub_1D1741A30(v14, &qword_1EC643DA8, &qword_1D1E73C48);
    return 0;
  }

  sub_1D17BB5A8(&v14[v17], v7, type metadata accessor for ScrubberElement);
  v20 = _s13HomeDataModel15ScrubberElementO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_1D17B82F0(v7, type metadata accessor for ScrubberElement);
  sub_1D17B82F0(v10, type metadata accessor for ScrubberElement);
  sub_1D1741A30(v14, &qword_1EC643D88, &unk_1D1E73BE0);
  return v20;
}

void sub_1D17BC7D0(uint64_t a1)
{
  sub_1D17BC854(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D17BC854(uint64_t a1)
{
  if (!qword_1EC643DA0)
  {
    type metadata accessor for ScrubberElement(255);
    v1 = sub_1D1E685AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC643DA0);
    }
  }
}

uint64_t SignificantEvent.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SignificantEvent.clipID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignificantEvent(0) + 20);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SignificantEvent(uint64_t a1)
{
  result = qword_1EC643DD8;
  if (!qword_1EC643DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SignificantEvent.reason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SignificantEvent(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SignificantEvent.dateOfOccurrence.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignificantEvent(0) + 28);
  v4 = sub_1D1E669FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SignificantEvent.confidenceLevel.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SignificantEvent(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t SignificantEvent.faceCropImageData.getter()
{
  v1 = v0 + *(type metadata accessor for SignificantEvent(0) + 40);
  v2 = *v1;
  sub_1D1771B38(*v1, *(v1 + 8));
  return v2;
}

uint64_t SignificantEvent.faceCropImageData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SignificantEvent(0) + 40);
  result = sub_1D1716AA4(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t SignificantEvent.init(id:clipID:reason:dateOfOccurrence:confidenceLevel:faceCropURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a3;
  v12 = *a5;
  v13 = type metadata accessor for SignificantEvent(0);
  *(a7 + v13[10]) = xmmword_1D1E73C50;
  v14 = sub_1D1E66A7C();
  v15 = *(*(v14 - 8) + 32);
  v15(a7, a1, v14);
  v15(a7 + v13[5], a2, v14);
  *(a7 + v13[6]) = v11;
  v16 = v13[7];
  v17 = sub_1D1E669FC();
  (*(*(v17 - 8) + 32))(a7 + v16, a4, v17);
  *(a7 + v13[8]) = v12;
  v18 = a7 + v13[9];

  return sub_1D17BCD38(a6, v18);
}

uint64_t sub_1D17BCD38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SignificantEvent.hash(into:)(uint64_t a1)
{
  v2 = sub_1D1E6680C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  sub_1D1E66A7C();
  sub_1D17BDFEC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v9 = type metadata accessor for SignificantEvent(0);
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v1 + v9[6]));
  sub_1D1E669FC();
  sub_1D17BDFEC(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D1E676EC();
  v10 = *(v1 + v9[8]);
  sub_1D1E6922C();
  if (v10 != 4)
  {
    MEMORY[0x1D3892850](v10);
  }

  sub_1D17BDBEC(v1 + v9[9], v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1D1E6922C();
    sub_1D17BDFEC(&qword_1EC643068, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D1E676EC();
    (*(v3 + 8))(v5, v2);
  }

  if (*(v1 + v9[10] + 8) >> 60 == 15)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  return sub_1D1E668CC();
}

uint64_t SignificantEvent.hashValue.getter()
{
  v1 = sub_1D1E6680C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D17BDFEC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v8 = type metadata accessor for SignificantEvent(0);
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v0 + v8[6]));
  sub_1D1E669FC();
  sub_1D17BDFEC(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D1E676EC();
  v9 = *(v0 + v8[8]);
  sub_1D1E6922C();
  if (v9 != 4)
  {
    MEMORY[0x1D3892850](v9);
  }

  sub_1D17BDBEC(v0 + v8[9], v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1D1E6922C();
    sub_1D17BDFEC(&qword_1EC643068, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D1E676EC();
    (*(v2 + 8))(v4, v1);
  }

  if (*(v0 + v8[10] + 8) >> 60 == 15)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E668CC();
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D17BD434(uint64_t a1, int *a2)
{
  v4 = sub_1D1E6680C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D17BDFEC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v2 + a2[6]));
  sub_1D1E669FC();
  sub_1D17BDFEC(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D1E676EC();
  v11 = *(v2 + a2[8]);
  sub_1D1E6922C();
  if (v11 != 4)
  {
    MEMORY[0x1D3892850](v11);
  }

  sub_1D17BDBEC(v2 + a2[9], v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1D1E6922C();
    sub_1D17BDFEC(&qword_1EC643068, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D1E676EC();
    (*(v5 + 8))(v7, v4);
  }

  if (*(v2 + a2[10] + 8) >> 60 == 15)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E668CC();
  }

  return sub_1D1E6926C();
}

BOOL _s13HomeDataModel16SignificantEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E6680C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D18, &unk_1D1E73EA0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for SignificantEvent(0);
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *(a1 + v14[6]) != *(a2 + v14[6]) || (sub_1D1E669AC() & 1) == 0)
  {
    return 0;
  }

  v15 = v14[8];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 4)
  {
    if (v17 != 4)
    {
      return 0;
    }
  }

  else if (v16 != v17)
  {
    return 0;
  }

  v18 = v14[9];
  v19 = *(v11 + 48);
  sub_1D17BDBEC(a1 + v18, v13);
  v33 = v19;
  sub_1D17BDBEC(a2 + v18, &v13[v19]);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    if (v20(&v13[v33], 1, v4) == 1)
    {
      sub_1D1741A30(v13, &qword_1EC642EA8, &qword_1D1E73C60);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  sub_1D17BDBEC(v13, v10);
  if (v20(&v13[v33], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_14:
    sub_1D1741A30(v13, &qword_1EC643D18, &unk_1D1E73EA0);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v33], v4);
  sub_1D17BDFEC(&qword_1EC643D28, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v21 = sub_1D1E6775C();
  v22 = *(v5 + 8);
  v22(v7, v4);
  v22(v10, v4);
  sub_1D1741A30(v13, &qword_1EC642EA8, &qword_1D1E73C60);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v23 = v14[10];
  v24 = a1 + v23;
  v26 = *(a1 + v23);
  v25 = *(v24 + 8);
  v27 = (a2 + v23);
  v29 = *v27;
  v28 = v27[1];
  if (v25 >> 60 == 15)
  {
    if (v28 >> 60 == 15)
    {
      sub_1D1771B38(v26, *(v24 + 8));
      sub_1D1771B38(v29, v28);
      sub_1D1716AA4(v26, v25);
      return 1;
    }

    goto LABEL_20;
  }

  if (v28 >> 60 == 15)
  {
LABEL_20:
    sub_1D1771B38(v26, *(v24 + 8));
    sub_1D1771B38(v29, v28);
    sub_1D1716AA4(v26, v25);
    sub_1D1716AA4(v29, v28);
    return 0;
  }

  sub_1D1771B38(v26, *(v24 + 8));
  sub_1D1771B38(v29, v28);
  v31 = sub_1D199F344(v26, v25, v29, v28);
  sub_1D1716AA4(v29, v28);
  sub_1D1716AA4(v26, v25);
  return v31;
}

uint64_t sub_1D17BDBEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D17BDC60()
{
  result = qword_1EC643DB0;
  if (!qword_1EC643DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643DB8, &qword_1D1E73C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643DB0);
  }

  return result;
}

unint64_t sub_1D17BDCC8()
{
  result = qword_1EC643DC0;
  if (!qword_1EC643DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643DC0);
  }

  return result;
}

unint64_t sub_1D17BDD20()
{
  result = qword_1EC643DC8;
  if (!qword_1EC643DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643DC8);
  }

  return result;
}

void sub_1D17BDE2C(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D1E669FC();
    if (v2 <= 0x3F)
    {
      sub_1D17BDF80(319, &qword_1EC643DE8, &type metadata for SignificantEvent.ConfidenceLevel);
      if (v3 <= 0x3F)
      {
        sub_1D17BDF28(319);
        if (v4 <= 0x3F)
        {
          sub_1D17BDF80(319, &qword_1EE07D198, MEMORY[0x1E6969080]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D17BDF28(uint64_t a1)
{
  if (!qword_1EC643D10)
  {
    sub_1D1E6680C();
    v1 = sub_1D1E685AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC643D10);
    }
  }
}

void sub_1D17BDF80(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D1E685AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D17BDFEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

HomeDataModel::CameraClipPlaybackViewState_optional __swiftcall CameraClipPlaybackViewState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E68C2C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CameraClipPlaybackViewState.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x646573756170;
  v3 = 0xD000000000000014;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 1702259052;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E6979616C70;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1D17BE140()
{
  result = qword_1EC643DF0;
  if (!qword_1EC643DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643DF0);
  }

  return result;
}

uint64_t sub_1D17BE194()
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D17BE270(uint64_t a1)
{
  sub_1D1E678EC();
}

uint64_t sub_1D17BE338(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

void sub_1D17BE41C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x646573756170;
  v5 = 0xD000000000000014;
  v6 = 0x80000001D1EB5A20;
  v7 = 0x80000001D1EB5A40;
  v8 = 0xD000000000000015;
  if (v2 != 3)
  {
    v8 = 1702259052;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x676E6979616C70;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1D17BE4C4(void (*a1)(uint64_t *__return_ptr, char *))
{
  v12 = a1;
  v3 = type metadata accessor for SignificantEvent(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E18, &unk_1D1E73FD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1D1741C08(v1, &v11 - v8, &qword_1EC643E18, &unk_1D1E73FD0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 0;
  }

  sub_1D17BA164(v9, v6, type metadata accessor for SignificantEvent);
  v12(&v11, v6);
  if (v2)
  {
    result = sub_1D17C3CD4(v6, type metadata accessor for SignificantEvent);
    __break(1u);
  }

  else
  {
    sub_1D17C3CD4(v6, type metadata accessor for SignificantEvent);
    return v11;
  }

  return result;
}

uint64_t sub_1D17BE6B4(void (*a1)(uint64_t *__return_ptr, char *))
{
  v12 = a1;
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1D1741C08(v1, &v11 - v8, &qword_1EC642590, qword_1D1E71260);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(&v13, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v13;
  }

  return result;
}

uint64_t sub_1D17BE894(void (*a1)(uint64_t *__return_ptr, char *))
{
  v12 = a1;
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1D1741C08(v1, &v11 - v8, &qword_1EC642590, qword_1D1E71260);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(&v11, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v11;
  }

  return result;
}

uint64_t sub_1D17BEA80()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC643DF8);
  __swift_project_value_buffer(v0, qword_1EC643DF8);
  return sub_1D1E6708C();
}

uint64_t static Logger.posterFrameGenerator.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC642140 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  v3 = __swift_project_value_buffer(v2, qword_1EC643DF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _s13HomeDataModel30CameraClipPosterFrameGeneratorC07initialfg5ImageB03for4size10Foundation0B0VAA15ScrubberElementO_So6CGSizeVtYaAC15GenerationErrorOYKFZ(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 48) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 24) = a1;
  v5 = type metadata accessor for SignificantEvent(0);
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = type metadata accessor for ReachabilityEvent(0);
  *(v4 + 96) = swift_task_alloc();
  v6 = sub_1D1E669FC();
  *(v4 + 104) = v6;
  *(v4 + 112) = *(v6 - 8);
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D18, &unk_1D1E73EA0);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = type metadata accessor for CameraClip(0);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = type metadata accessor for ScrubberElement(0);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  v7 = sub_1D1E6680C();
  *(v4 + 296) = v7;
  *(v4 + 304) = *(v7 - 8);
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17BEF20, 0, 0);
}

uint64_t sub_1D17BEF20()
{
  sub_1D17C07E0(*(v0 + 24), *(v0 + 224), type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = *(v0 + 224);
    (*(*(v0 + 304) + 56))(*(v0 + 272), 1, 1, *(v0 + 296));
    v2 = type metadata accessor for ScrubberElement;
    v3 = v1;
  }

  else
  {
    v4 = *(v0 + 272);
    v6 = *(v0 + 152);
    v5 = *(v0 + 160);
    sub_1D17BA164(*(v0 + 224), v5, type metadata accessor for CameraClip);
    sub_1D1741C08(v5 + *(v6 + 56), v4, &qword_1EC642EA8, &qword_1D1E73C60);
    v2 = type metadata accessor for CameraClip;
    v3 = v5;
  }

  sub_1D17C3CD4(v3, v2);
  v7 = *(v0 + 296);
  v8 = *(v0 + 304);
  v9 = *(v0 + 280);
  sub_1D1741A90(*(v0 + 272), v9, &qword_1EC642EA8, &qword_1D1E73C60);
  v10 = *(v8 + 48);
  if (v10(v9, 1, v7) == 1)
  {
    sub_1D17C07E0(*(v0 + 24), *(v0 + 216), type metadata accessor for ScrubberElement);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = *(v0 + 216);
      (*(*(v0 + 304) + 56))(*(v0 + 264), 1, 1, *(v0 + 296));
      v12 = type metadata accessor for ScrubberElement;
      v13 = v11;
    }

    else
    {
      v17 = *(v0 + 264);
      v19 = *(v0 + 152);
      v18 = *(v0 + 160);
      sub_1D17BA164(*(v0 + 216), v18, type metadata accessor for CameraClip);
      sub_1D1741C08(v18 + *(v19 + 60), v17, &qword_1EC642EA8, &qword_1D1E73C60);
      v12 = type metadata accessor for CameraClip;
      v13 = v18;
    }

    sub_1D17C3CD4(v13, v12);
    v20 = *(v0 + 296);
    v21 = *(v0 + 280);
    sub_1D1741A90(*(v0 + 264), *(v0 + 288), &qword_1EC642EA8, &qword_1D1E73C60);
    if (v10(v21, 1, v20) != 1)
    {
      sub_1D1741A30(*(v0 + 280), &qword_1EC642EA8, &qword_1D1E73C60);
    }
  }

  else
  {
    v14 = *(v0 + 296);
    v15 = *(v0 + 304);
    v16 = *(v0 + 288);
    (*(v15 + 32))(v16, *(v0 + 280), v14);
    (*(v15 + 56))(v16, 0, 1, v14);
  }

  v22 = *(v0 + 288);
  v23 = *(v0 + 296);
  if (v10(v22, 1, v23) == 1)
  {
    v24 = *(v0 + 48);
    sub_1D1741A30(v22, &qword_1EC642EA8, &qword_1D1E73C60);
    *v24 = 0;
    *(v0 + 392) = 0;
    sub_1D17C078C();
    swift_willThrowTypedImpl();

    v25 = *(v0 + 8);

    return v25();
  }

  v128 = v10;
  v27 = *(v0 + 320);
  v28 = *(v0 + 304);
  v29 = *(v0 + 256);
  v30 = *(v0 + 208);
  v32 = *(v0 + 32);
  v31 = *(v0 + 40);
  v33 = *(v0 + 24);
  v127 = *(v28 + 32);
  v127(v27, v22, v23);
  v34 = objc_allocWithZone(MEMORY[0x1E6988168]);
  v35 = sub_1D1E6677C();
  v36 = [v34 initWithURL:v35 options:0];
  *(v0 + 328) = v36;

  v37 = [objc_allocWithZone(MEMORY[0x1E6987E68]) initWithAsset_];
  *(v0 + 336) = v37;
  [v37 setMaximumSize_];
  v38 = MEMORY[0x1E6960CC0];
  v39 = *(MEMORY[0x1E6960CC0] + 16);
  *(v0 + 368) = *MEMORY[0x1E6960CC0];
  *(v0 + 376) = *(v38 + 8);
  *(v0 + 384) = v39;
  [v37 setRequestedTimeToleranceBefore_];
  (*(v28 + 16))(v29, v27, v23);
  v40 = *(v28 + 56);
  v40(v29, 0, 1, v23);
  sub_1D17C07E0(v33, v30, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = *(v0 + 208);
    v40(*(v0 + 240), 1, 1, *(v0 + 296));
    v42 = type metadata accessor for ScrubberElement;
    v43 = v41;
  }

  else
  {
    v44 = *(v0 + 240);
    v45 = *(v0 + 152);
    v46 = *(v0 + 160);
    sub_1D17BA164(*(v0 + 208), v46, type metadata accessor for CameraClip);
    sub_1D1741C08(v46 + *(v45 + 56), v44, &qword_1EC642EA8, &qword_1D1E73C60);
    v42 = type metadata accessor for CameraClip;
    v43 = v46;
  }

  sub_1D17C3CD4(v43, v42);
  v47 = *(v0 + 296);
  v49 = *(v0 + 248);
  v48 = *(v0 + 256);
  v50 = *(v0 + 136);
  v51 = *(v0 + 144);
  sub_1D1741A90(*(v0 + 240), v49, &qword_1EC642EA8, &qword_1D1E73C60);
  v52 = *(v50 + 48);
  sub_1D1741C08(v48, v51, &qword_1EC642EA8, &qword_1D1E73C60);
  sub_1D1741C08(v49, v51 + v52, &qword_1EC642EA8, &qword_1D1E73C60);
  v53 = v128(v51, 1, v47);
  v54 = *(v0 + 296);
  if (v53 == 1)
  {
    v55 = *(v0 + 256);
    sub_1D1741A30(*(v0 + 248), &qword_1EC642EA8, &qword_1D1E73C60);
    sub_1D1741A30(v55, &qword_1EC642EA8, &qword_1D1E73C60);
    if (v128(v51 + v52, 1, v54) == 1)
    {
      sub_1D1741A30(*(v0 + 144), &qword_1EC642EA8, &qword_1D1E73C60);
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  sub_1D1741C08(*(v0 + 144), *(v0 + 232), &qword_1EC642EA8, &qword_1D1E73C60);
  if (v128(v51 + v52, 1, v54) == 1)
  {
    v57 = *(v0 + 296);
    v56 = *(v0 + 304);
    v58 = *(v0 + 256);
    v59 = *(v0 + 232);
    sub_1D1741A30(*(v0 + 248), &qword_1EC642EA8, &qword_1D1E73C60);
    sub_1D1741A30(v58, &qword_1EC642EA8, &qword_1D1E73C60);
    (*(v56 + 8))(v59, v57);
LABEL_23:
    sub_1D1741A30(*(v0 + 144), &qword_1EC643D18, &unk_1D1E73EA0);
    goto LABEL_29;
  }

  v61 = *(v0 + 304);
  v60 = *(v0 + 312);
  v62 = *(v0 + 296);
  v64 = *(v0 + 248);
  v63 = *(v0 + 256);
  v65 = *(v0 + 232);
  v129 = *(v0 + 144);
  v127(v60, v51 + v52, v62);
  sub_1D17C45BC(&qword_1EC643D28, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v66 = sub_1D1E6775C();
  v67 = *(v61 + 8);
  v67(v60, v62);
  sub_1D1741A30(v64, &qword_1EC642EA8, &qword_1D1E73C60);
  sub_1D1741A30(v63, &qword_1EC642EA8, &qword_1D1E73C60);
  v67(v65, v62);
  sub_1D1741A30(v129, &qword_1EC642EA8, &qword_1D1E73C60);
  if (v66)
  {
LABEL_25:
    sub_1D17C07E0(*(v0 + 24), *(v0 + 200), type metadata accessor for ScrubberElement);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v69 = *(v0 + 200);
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D17C3CD4(v69, type metadata accessor for ScrubberElement);
    }

    else
    {
      v70 = *(v0 + 160);
      sub_1D17BA164(v69, v70, type metadata accessor for CameraClip);
      sub_1D17C3CD4(v70, type metadata accessor for CameraClip);
    }
  }

LABEL_29:
  v71 = *(v0 + 112);
  sub_1D17C07E0(*(v0 + 24), *(v0 + 192), type metadata accessor for ScrubberElement);
  v72 = swift_getEnumCaseMultiPayload();
  v73 = (v71 + 16);
  v74 = *(v0 + 192);
  if (v72 == 1)
  {
    v75 = *(v0 + 128);
    v77 = *(v0 + 96);
    v76 = *(v0 + 104);
    v78 = *(v0 + 88);
    sub_1D17BA164(v74, v77, type metadata accessor for ReachabilityEvent);
    v79 = *v73;
    (*v73)(v75, v77 + *(v78 + 24), v76);
    v80 = type metadata accessor for ReachabilityEvent;
    v81 = v77;
  }

  else
  {
    v83 = *(v0 + 152);
    v82 = *(v0 + 160);
    v84 = *(v0 + 128);
    v85 = *(v0 + 104);
    sub_1D17BA164(v74, v82, type metadata accessor for CameraClip);
    v79 = *v73;
    (*v73)(v84, v82 + *(v83 + 24), v85);
    v80 = type metadata accessor for CameraClip;
    v81 = v82;
  }

  sub_1D17C3CD4(v81, v80);
  sub_1D17C07E0(*(v0 + 24), *(v0 + 184), type metadata accessor for ScrubberElement);
  v86 = swift_getEnumCaseMultiPayload();
  v87 = *(v0 + 184);
  if (v86 != 1)
  {
    v96 = *(v0 + 152);
    v97 = *(v0 + 160);
    sub_1D17BA164(v87, v97, type metadata accessor for CameraClip);
    v88 = *(v97 + *(v96 + 40));

    sub_1D17C3CD4(v97, type metadata accessor for CameraClip);
    if (*(v88 + 16))
    {
      goto LABEL_34;
    }

LABEL_36:
    v98 = *(v0 + 176);
    v100 = *(v0 + 104);
    v99 = *(v0 + 112);
    v101 = *(v0 + 80);
    v102 = *(v0 + 24);

    (*(v99 + 56))(v101, 1, 1, v100);
    sub_1D17C07E0(v102, v98, type metadata accessor for ScrubberElement);
    v103 = swift_getEnumCaseMultiPayload();
    v104 = *(v0 + 176);
    if (v103 == 1)
    {
      v105 = *(v0 + 120);
      v107 = *(v0 + 96);
      v106 = *(v0 + 104);
      v108 = *(v0 + 88);
      sub_1D17BA164(v104, v107, type metadata accessor for ReachabilityEvent);
      v79(v105, v107 + *(v108 + 24), v106);
      v109 = type metadata accessor for ReachabilityEvent;
      v110 = v107;
    }

    else
    {
      v112 = *(v0 + 152);
      v111 = *(v0 + 160);
      v113 = *(v0 + 120);
      v114 = *(v0 + 104);
      sub_1D17BA164(v104, v111, type metadata accessor for CameraClip);
      v79(v113, v111 + *(v112 + 24), v114);
      v109 = type metadata accessor for CameraClip;
      v110 = v111;
    }

    sub_1D17C3CD4(v110, v109);
    v115 = *(v0 + 80);
    if ((*(*(v0 + 112) + 48))(v115, 1, *(v0 + 104)) != 1)
    {
      sub_1D1741A30(v115, &qword_1EC642570, &qword_1D1E6C6A0);
    }

    goto LABEL_41;
  }

  sub_1D17C3CD4(v87, type metadata accessor for ScrubberElement);
  v88 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_36;
  }

LABEL_34:
  v89 = *(v0 + 112);
  v90 = *(v0 + 120);
  v91 = *(v0 + 104);
  v93 = *(v0 + 72);
  v92 = *(v0 + 80);
  v94 = *(v0 + 56);
  v95 = *(*(v0 + 64) + 80);
  sub_1D17C07E0(v88 + ((v95 + 32) & ~v95), v93, type metadata accessor for SignificantEvent);

  v79(v92, v93 + *(v94 + 28), v91);
  sub_1D17C3CD4(v93, type metadata accessor for SignificantEvent);
  (*(v89 + 56))(v92, 0, 1, v91);
  (*(v89 + 32))(v90, v92, v91);
LABEL_41:
  v117 = *(v0 + 120);
  v116 = *(v0 + 128);
  v119 = *(v0 + 104);
  v118 = *(v0 + 112);
  sub_1D1E669DC();
  v120 = *(v118 + 8);
  v120(v117, v119);
  v120(v116, v119);
  v121 = sub_1D1E6848C();
  v123 = v122;
  v125 = v124;
  v126 = swift_task_alloc();
  *(v0 + 344) = v126;
  *v126 = v0;
  v126[1] = sub_1D17BFDF8;

  return MEMORY[0x1EEE68118](v121, v123, v125);
}

uint64_t sub_1D17BFDF8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v4 = sub_1D17C0454;
  }

  else
  {
    v4 = sub_1D17BFF0C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D17BFF0C()
{
  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    goto LABEL_8;
  }

  v2 = Mutable;
  v3 = sub_1D1E677EC();
  v4 = CGImageDestinationCreateWithData(v2, v3, 1uLL, 0);

  if (!v4)
  {

LABEL_8:
    v16 = *(v0 + 352);
    v18 = *(v0 + 328);
    v17 = *(v0 + 336);
    v19 = *(v0 + 320);
    v20 = *(v0 + 296);
    v21 = *(v0 + 304);
    **(v0 + 48) = 1;
    *(v0 + 394) = 1;
    sub_1D17C078C();
    swift_willThrowTypedImpl();

    (*(v21 + 8))(v19, v20);
    goto LABEL_14;
  }

  CGImageDestinationAddImage(v4, *(v0 + 352), 0);
  if (CGImageDestinationFinalize(v4))
  {
    v5 = *(v0 + 352);
    v6 = *(v0 + 328);
    v7 = *(v0 + 336);
    v8 = *(v0 + 320);
    v9 = *(v0 + 296);
    v10 = *(v0 + 304);
    v11 = v2;
    v12 = sub_1D1E668BC();
    v33 = v13;

    (*(v10 + 8))(v8, v9);

    v14 = *(v0 + 8);

    return v14(v12, v33);
  }

  if (qword_1EC642140 != -1)
  {
    swift_once();
  }

  v22 = sub_1D1E6709C();
  __swift_project_value_buffer(v22, qword_1EC643DF8);
  v23 = sub_1D1E6707C();
  v24 = sub_1D1E6833C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1D16EC000, v23, v24, "Failed to output data for image", v25, 2u);
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = *(v0 + 352);
  v28 = *(v0 + 328);
  v27 = *(v0 + 336);
  v34 = *(v0 + 320);
  v29 = *(v0 + 296);
  v30 = *(v0 + 304);
  v31 = *(v0 + 48);

  *v31 = 1;
  *(v0 + 395) = 1;
  sub_1D17C078C();
  swift_willThrowTypedImpl();

  (*(v30 + 8))(v34, v29);
LABEL_14:

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1D17C0454()
{
  v22 = v0;
  if (qword_1EC642140 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 360);
  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EC643DF8);
  v3 = v1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 360);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    *(v0 + 16) = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v10 = sub_1D1E6789C();
    v12 = sub_1D1B1312C(v10, v11, &v21);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1D16EC000, v4, v5, "image generation failed with error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  v13 = *(v0 + 360);
  v15 = *(v0 + 328);
  v14 = *(v0 + 336);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  **(v0 + 48) = 1;
  *(v0 + 393) = 1;
  sub_1D17C078C();
  swift_willThrowTypedImpl();

  (*(v18 + 8))(v16, v17);

  v19 = *(v0 + 8);

  return v19();
}

unint64_t sub_1D17C078C()
{
  result = qword_1EC643E10;
  if (!qword_1EC643E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643E10);
  }

  return result;
}

uint64_t sub_1D17C07E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s13HomeDataModel30CameraClipPosterFrameGeneratorC010compositedF6Frames3for11segmentSize5countSaySo10CGImageRefaGAA15ScrubberElementO_So6CGSizeVSitYaAC15GenerationErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 240) = a2;
  *(v5 + 248) = a3;
  *(v5 + 224) = a4;
  *(v5 + 232) = a5;
  *(v5 + 216) = a1;
  sub_1D1E6842C();
  *(v5 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E18, &unk_1D1E73FD0);
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D18, &unk_1D1E73EA0);
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = type metadata accessor for CameraClip(0);
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = type metadata accessor for ScrubberElement(0);
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  v6 = sub_1D1E6680C();
  *(v5 + 424) = v6;
  *(v5 + 432) = *(v6 - 8);
  *(v5 + 440) = swift_task_alloc();
  *(v5 + 448) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17C0B10, 0, 0);
}

uint64_t sub_1D17C0B10()
{
  v1 = v0;
  sub_1D17C07E0(v0[27], v0[44], type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = v0[44];
    (*(v0[54] + 56))(v0[50], 1, 1, v0[53]);
    v3 = type metadata accessor for ScrubberElement;
    v4 = v2;
  }

  else
  {
    v5 = v0[50];
    v6 = v0[44];
    v8 = v0[36];
    v7 = v1[37];
    sub_1D17BA164(v6, v7, type metadata accessor for CameraClip);
    sub_1D1741C08(v7 + *(v8 + 56), v5, &qword_1EC642EA8, &qword_1D1E73C60);
    v3 = type metadata accessor for CameraClip;
    v4 = v7;
  }

  sub_1D17C3CD4(v4, v3);
  v9 = v1[53];
  v10 = v1[54];
  v11 = v1[51];
  sub_1D1741A90(v1[50], v11, &qword_1EC642EA8, &qword_1D1E73C60);
  v12 = *(v10 + 48);
  if (v12(v11, 1, v9) == 1)
  {
    sub_1D17C07E0(v1[27], v1[43], type metadata accessor for ScrubberElement);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = v1[43];
      (*(v1[54] + 56))(v1[49], 1, 1, v1[53]);
      v14 = type metadata accessor for ScrubberElement;
      v15 = v13;
    }

    else
    {
      v19 = v1[49];
      v21 = v1[36];
      v20 = v1[37];
      sub_1D17BA164(v1[43], v20, type metadata accessor for CameraClip);
      sub_1D1741C08(v20 + *(v21 + 60), v19, &qword_1EC642EA8, &qword_1D1E73C60);
      v14 = type metadata accessor for CameraClip;
      v15 = v20;
    }

    sub_1D17C3CD4(v15, v14);
    v22 = v1[53];
    v23 = v1[51];
    sub_1D1741A90(v1[49], v1[52], &qword_1EC642EA8, &qword_1D1E73C60);
    if (v12(v23, 1, v22) != 1)
    {
      sub_1D1741A30(v1[51], &qword_1EC642EA8, &qword_1D1E73C60);
    }
  }

  else
  {
    v16 = v1[53];
    v17 = v1[54];
    v18 = v1[52];
    (*(v17 + 32))(v18, v1[51], v16);
    (*(v17 + 56))(v18, 0, 1, v16);
  }

  v25 = v1[52];
  v24 = v1[53];
  if (v12(v25, 1, v24) == 1)
  {
    sub_1D1741A30(v25, &qword_1EC642EA8, &qword_1D1E73C60);
LABEL_19:
    *v1[31] = 0;
    *(v1 + 73) = 0;
    sub_1D17C078C();
    swift_willThrowTypedImpl();

    v47 = v1[1];

    return v47();
  }

  v26 = v1[42];
  v27 = v1[27];
  v28 = *(v1[54] + 32);
  v28(v1[56], v25, v24);
  sub_1D17C07E0(v27, v26, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v1[42];
    (*(v1[54] + 8))(v1[56], v1[53]);
    sub_1D17C3CD4(v29, type metadata accessor for ScrubberElement);
    goto LABEL_19;
  }

  v30 = v1[36];
  v31 = v1[37];
  sub_1D17BA164(v1[42], v31, type metadata accessor for CameraClip);
  v32 = *(v31 + *(v30 + 36));
  sub_1D17C3CD4(v31, type metadata accessor for CameraClip);
  v33 = v1[56];
  v35 = v1[53];
  v34 = v1[54];
  if (v32 <= 0.0)
  {
    (*(v34 + 8))(v1[56], v1[53]);
    goto LABEL_19;
  }

  v36 = v1[48];
  v119 = v1[41];
  v117 = v28;
  v118 = v1[27];
  v37 = objc_allocWithZone(MEMORY[0x1E6988168]);
  v38 = sub_1D1E6677C();
  v39 = [v37 initWithURL:v38 options:0];
  v1[57] = v39;

  v40 = [objc_allocWithZone(MEMORY[0x1E6987E68]) initWithAsset_];
  v1[58] = v40;
  [v40 setMaximumSize_];
  v41 = MEMORY[0x1E6960CC0];
  v42 = *(MEMORY[0x1E6960CC0] + 16);
  *(v1 + 76) = *MEMORY[0x1E6960CC0];
  *(v1 + 84) = *(v41 + 8);
  *(v1 + 92) = v42;
  [v40 setRequestedTimeToleranceBefore_];
  (*(v34 + 16))(v36, v33, v35);
  v43 = *(v34 + 56);
  v43(v36, 0, 1, v35);
  sub_1D17C07E0(v118, v119, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = v1[41];
    v43(v1[46], 1, 1, v1[53]);
    v45 = type metadata accessor for ScrubberElement;
    v46 = v44;
  }

  else
  {
    v49 = v1[46];
    v50 = v1[36];
    v51 = v1[37];
    sub_1D17BA164(v1[41], v51, type metadata accessor for CameraClip);
    sub_1D1741C08(v51 + *(v50 + 56), v49, &qword_1EC642EA8, &qword_1D1E73C60);
    v45 = type metadata accessor for CameraClip;
    v46 = v51;
  }

  sub_1D17C3CD4(v46, v45);
  v120 = v1[53];
  v53 = v1[47];
  v52 = v1[48];
  v55 = v1[34];
  v54 = v1[35];
  sub_1D1741A90(v1[46], v53, &qword_1EC642EA8, &qword_1D1E73C60);
  v56 = *(v55 + 48);
  sub_1D1741C08(v52, v54, &qword_1EC642EA8, &qword_1D1E73C60);
  v122 = v56;
  sub_1D1741C08(v53, v54 + v56, &qword_1EC642EA8, &qword_1D1E73C60);
  v57 = v12(v54, 1, v120);
  v58 = v1[53];
  if (v57 == 1)
  {
    v59 = v1[48];
    sub_1D1741A30(v1[47], &qword_1EC642EA8, &qword_1D1E73C60);
    sub_1D1741A30(v59, &qword_1EC642EA8, &qword_1D1E73C60);
    if (v12(v54 + v122, 1, v58) == 1)
    {
      sub_1D1741A30(v1[35], &qword_1EC642EA8, &qword_1D1E73C60);
LABEL_30:
      sub_1D17C07E0(v1[27], v1[40], type metadata accessor for ScrubberElement);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v74 = v1[40];
      if (EnumCaseMultiPayload != 1)
      {
        v76 = v1[36];
        v75 = v1[37];
        sub_1D17BA164(v74, v75, type metadata accessor for CameraClip);
        v72 = *(v75 + *(v76 + 52));
        sub_1D17C3CD4(v75, type metadata accessor for CameraClip);
        goto LABEL_34;
      }

      sub_1D17C3CD4(v74, type metadata accessor for ScrubberElement);
      goto LABEL_32;
    }

LABEL_28:
    sub_1D1741A30(v1[35], &qword_1EC643D18, &unk_1D1E73EA0);
LABEL_32:
    v72 = 0.0;
    goto LABEL_34;
  }

  sub_1D1741C08(v1[35], v1[45], &qword_1EC642EA8, &qword_1D1E73C60);
  if (v12(v54 + v122, 1, v58) == 1)
  {
    v60 = v1[53];
    v61 = v1[54];
    v62 = v1[48];
    v63 = v1[45];
    sub_1D1741A30(v1[47], &qword_1EC642EA8, &qword_1D1E73C60);
    sub_1D1741A30(v62, &qword_1EC642EA8, &qword_1D1E73C60);
    (*(v61 + 8))(v63, v60);
    goto LABEL_28;
  }

  v65 = v1[54];
  v64 = v1[55];
  v66 = v1[53];
  v68 = v1[47];
  v67 = v1[48];
  v69 = v1[45];
  v121 = v1[35];
  v117(v64, v54 + v122, v66);
  sub_1D17C45BC(&qword_1EC643D28, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v70 = sub_1D1E6775C();
  v71 = *(v65 + 8);
  v71(v64, v66);
  sub_1D1741A30(v68, &qword_1EC642EA8, &qword_1D1E73C60);
  sub_1D1741A30(v67, &qword_1EC642EA8, &qword_1D1E73C60);
  v71(v69, v66);
  sub_1D1741A30(v121, &qword_1EC642EA8, &qword_1D1E73C60);
  v72 = 0.0;
  if (v70)
  {
    goto LABEL_30;
  }

LABEL_34:
  sub_1D17C07E0(v1[27], v1[39], type metadata accessor for ScrubberElement);
  v77 = swift_getEnumCaseMultiPayload();
  v78 = v1[39];
  if (v77 == 1)
  {
    sub_1D17C3CD4(v78, type metadata accessor for ScrubberElement);
    v79 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v81 = v1[36];
    v80 = v1[37];
    sub_1D17BA164(v78, v80, type metadata accessor for CameraClip);
    v79 = *(v80 + *(v81 + 40));

    sub_1D17C3CD4(v80, type metadata accessor for CameraClip);
  }

  v82 = v1[33];
  if (*(v79 + 16))
  {
    v83 = type metadata accessor for SignificantEvent(0);
    v84 = *(v83 - 8);
    sub_1D17C07E0(v79 + ((*(v84 + 80) + 32) & ~*(v84 + 80)), v82, type metadata accessor for SignificantEvent);

    (*(v84 + 56))(v82, 0, 1, v83);
  }

  else
  {

    v85 = type metadata accessor for SignificantEvent(0);
    (*(*(v85 - 8) + 56))(v82, 1, 1, v85);
  }

  v86 = v1[33];
  v87 = v1[30];
  v88 = v1[27];
  *(swift_task_alloc() + 16) = v88;
  v89 = sub_1D17BE4C4(sub_1D17C3D34);
  v91 = v90;

  sub_1D1741A30(v86, &qword_1EC643E18, &unk_1D1E73FD0);
  v92 = *&v89;
  if (v91)
  {
    v92 = 0.0;
  }

  v93 = v72 + v92 + 2.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643480, &qword_1D1E71900);
  inited = swift_initStackObject();
  v1[59] = inited;
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v93;
  v95 = 1;
  if (v87 >= 2)
  {
    v96 = v32 + v72;
    v97 = v32 + v72 - v93;
    if (v97 > 0.0)
    {
      v98 = v97 / (v1[30] - 1);
      v99 = v96 + -0.1;
      v100 = 5;
      do
      {
        v101 = v100 - 3;
        if (v99 >= v93 + v98 * (v100 - 4))
        {
          v102 = v93 + v98 * (v100 - 4);
        }

        else
        {
          v102 = v99;
        }

        v103 = *(inited + 24);
        if (v100 - 4 >= v103 >> 1)
        {
          inited = sub_1D177D4E8((v103 > 1), v100 - 3, 1, inited);
        }

        v104 = v1[30];
        *(inited + 16) = v101;
        *(inited + 8 * v100++) = v102;
      }

      while (v101 != v104);
      v95 = v100 - 4;
    }
  }

  v1[60] = inited;
  v123 = MEMORY[0x1E69E7CC0];
  sub_1D178D094(0, v95, 0);
  v105 = v123;
  v106 = inited + 32;
  do
  {
    v107 = sub_1D1E6848C();
    v124 = v105;
    v111 = *(v105 + 16);
    v110 = *(v105 + 24);
    if (v111 >= v110 >> 1)
    {
      v113 = v107;
      v114 = v108;
      v115 = v109;
      sub_1D178D094((v110 > 1), v111 + 1, 1);
      v107 = v113;
      v108 = v114;
      v109 = v115;
      v105 = v124;
    }

    *(v105 + 16) = v111 + 1;
    v112 = (v105 + 24 * v111);
    v112[4] = v107;
    v112[5] = v108;
    v112[6] = v109;
    v106 += 8;
    --v95;
  }

  while (v95);
  sub_1D1E6843C();

  v116 = swift_task_alloc();
  v1[61] = v116;
  *v116 = v1;
  v116[1] = sub_1D17C1A50;

  return sub_1D17C24C0();
}

void sub_1D17C1A50(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 496) = a1;
  *(v3 + 504) = v1;

  if (v1)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1D17C1BBC, 0, 0);
  }
}

uint64_t sub_1D17C1BBC()
{
  v49 = v0;
  v48[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 496);
  v2 = MEMORY[0x1E69E7CC0];
  v47 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = 0;
  v5 = *(v0 + 504);
  v6 = v1 + 32;
  v7 = 0x1EC642000uLL;
  v8 = qword_1EC643DF8;
  v44 = *(v0 + 496);
  v41 = v1 + 32;
  do
  {
    v42 = v2;
    v2 = v6 + (v4 << 6);
    v9 = v4;
    while (1)
    {
      if (v9 >= *(v1 + 16))
      {
        __break(1u);
LABEL_29:
        if (!sub_1D1E6873C())
        {
          goto LABEL_30;
        }

LABEL_19:
        v28 = *(v0 + 224);
        if (v28 <= -9.22337204e18)
        {
          __break(1u);
        }

        else if (v28 < 9.22337204e18)
        {
          v29 = *(v0 + 232);
          if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v0 + 232) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v29 > -9.22337204e18)
            {
              if (v29 < 9.22337204e18)
              {
                v30 = _s13HomeDataModel30CameraClipPosterFrameGeneratorC15compositedImage4from12segmentWidth0L6HeightSo10CGImageRefaSgSayAIG_S2itFZ_0(v2, v28, v29);

                v31 = *(v0 + 456);
                v32 = *(v0 + 464);
                v33 = *(v0 + 448);
                v35 = *(v0 + 424);
                v34 = *(v0 + 432);
                if (v30)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
                  v36 = swift_allocObject();
                  *(v36 + 16) = xmmword_1D1E73FA0;
                  v43 = v36;
                  *(v36 + 32) = v30;

                  (*(v34 + 8))(v33, v35);
                }

                else
                {

                  (*(v34 + 8))(v33, v35);
                  v43 = MEMORY[0x1E69E7CC0];
                }

                goto LABEL_31;
              }

LABEL_38:
              __break(1u);
            }

LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        __break(1u);
        goto LABEL_36;
      }

      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      *(v0 + 57) = *(v2 + 41);
      *(v0 + 32) = v11;
      *(v0 + 48) = v12;
      *(v0 + 16) = v10;
      v4 = v9 + 1;
      sub_1D17C3D54(v0 + 16, v0 + 104);
      sub_1D1E6841C();
      if (!v5)
      {
        break;
      }

      if (*(v7 + 320) != -1)
      {
        swift_once();
      }

      v13 = sub_1D1E6709C();
      __swift_project_value_buffer(v13, v8);
      v14 = v5;
      v15 = sub_1D1E6707C();
      v16 = sub_1D1E6833C();

      if (os_log_type_enabled(v15, v16))
      {
        v46 = v4;
        v17 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v48[0] = v45;
        *v17 = 136315394;
        *(v17 + 4) = sub_1D1B1312C(0xD00000000000002ELL, 0x80000001D1EB9340, v48);
        *(v17 + 12) = 2080;
        *(v0 + 208) = v5;
        v18 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
        v19 = sub_1D1E6789C();
        v21 = v15;
        v22 = v8;
        v23 = sub_1D1B1312C(v19, v20, v48);
        v7 = 0x1EC642000;

        *(v17 + 14) = v23;
        v8 = v22;
        v24 = v16;
        v25 = v21;
        _os_log_impl(&dword_1D16EC000, v21, v24, "%s failed to grab image %s", v17, 0x16u);
        swift_arrayDestroy();
        v1 = v44;
        MEMORY[0x1D3893640](v45, -1, -1);
        v26 = v17;
        v4 = v46;
        MEMORY[0x1D3893640](v26, -1, -1);
      }

      else
      {
      }

      sub_1D17C3DB0(v0 + 16);
      v5 = 0;
      v2 += 64;
      v9 = v4;
      if (v3 == v4)
      {
        v2 = v42;
        goto LABEL_17;
      }
    }

    v27 = sub_1D17C3DB0(v0 + 16);
    MEMORY[0x1D3891220](v27);
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D1E67C5C();
    }

    sub_1D1E67CAC();
    v5 = 0;
    v2 = v47;
    v6 = v41;
  }

  while (v3 - 1 != v9);
LABEL_17:

  if (v2 >> 62)
  {
    goto LABEL_29;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_30:
  v43 = v2;
  v37 = *(v0 + 456);
  v38 = *(v0 + 464);
  (*(*(v0 + 432) + 8))(*(v0 + 448), *(v0 + 424));

LABEL_31:

  v39 = *(v0 + 8);

  return v39(v43);
}

uint64_t sub_1D17C21DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v24 = a3;
  v23[0] = a2;
  v23[1] = a1;
  v3 = type metadata accessor for ReachabilityEvent(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ScrubberElement(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D1E669FC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17C07E0(v23[0], v11, type metadata accessor for ScrubberElement);
  v16 = (v13 + 16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17BA164(v11, v5, type metadata accessor for ReachabilityEvent);
    (*v16)(v15, &v5[*(v3 + 24)], v12);
    v17 = type metadata accessor for ReachabilityEvent;
    v18 = v5;
  }

  else
  {
    sub_1D17BA164(v11, v8, type metadata accessor for CameraClip);
    (*v16)(v15, &v8[*(v6 + 24)], v12);
    v17 = type metadata accessor for CameraClip;
    v18 = v8;
  }

  sub_1D17C3CD4(v18, v17);
  type metadata accessor for SignificantEvent(0);
  sub_1D1E669DC();
  v20 = v19;
  result = (*(v13 + 8))(v15, v12);
  v22 = v24;
  *v24 = v20;
  *(v22 + 8) = 0;
  return result;
}

uint64_t sub_1D17C24C0()
{
  v1[26] = v0;
  v2 = sub_1D1E6842C();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17C2580, 0, 0);
}

uint64_t sub_1D17C2580()
{
  v1 = MEMORY[0x1E69E5A08];
  sub_1D17C45BC(&qword_1EC643E68, MEMORY[0x1E69E5A08], MEMORY[0x1E69E5A18]);
  sub_1D1E6801C();
  v0[30] = MEMORY[0x1E69E7CC0];
  v2 = sub_1D17C45BC(&qword_1EC643E70, v1, MEMORY[0x1E69E5A10]);
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_1D17C26B0;
  v4 = v0[27];

  return MEMORY[0x1EEE6D8C8](v0 + 2, v4, v2);
}

uint64_t sub_1D17C26B0()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    (*(v2[28] + 8))(v2[29], v2[27]);

    v3 = sub_1D17C29EC;
  }

  else
  {
    v3 = sub_1D17C27E4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D17C27E4()
{
  if (*(v0 + 72) == 255)
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    v13 = *(v0 + 32);
    *(v0 + 80) = *(v0 + 16);
    *(v0 + 96) = v13;
    *(v0 + 112) = *(v0 + 48);
    *(v0 + 121) = *(v0 + 57);
    sub_1D1741A30(v0 + 80, &qword_1EC643E78, &unk_1D1E74150);

    v14 = *(v0 + 8);
    v15 = *(v0 + 240);

    return v14(v15);
  }

  else
  {
    v1 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v1;
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 185) = *(v0 + 57);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v0 + 240);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_1D177D3DC(0, *(v3 + 2) + 1, 1, v3);
    }

    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_1D177D3DC((v4 > 1), v5 + 1, 1, v3);
    }

    *(v3 + 2) = v5 + 1;
    v6 = &v3[64 * v5];
    v7 = *(v0 + 144);
    v8 = *(v0 + 160);
    v9 = *(v0 + 176);
    *(v6 + 73) = *(v0 + 185);
    *(v6 + 3) = v8;
    *(v6 + 4) = v9;
    *(v6 + 2) = v7;
    *(v0 + 240) = v3;
    v10 = sub_1D17C45BC(&qword_1EC643E70, MEMORY[0x1E69E5A08], MEMORY[0x1E69E5A10]);
    v11 = swift_task_alloc();
    *(v0 + 248) = v11;
    *v11 = v0;
    v11[1] = sub_1D17C26B0;
    v12 = *(v0 + 216);

    return MEMORY[0x1EEE6D8C8](v0 + 16, v12, v10);
  }
}

uint64_t sub_1D17C29EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D17C2A50(uint64_t a1)
{
  v1[4] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E58, &unk_1D1E74140);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17C2B1C, 0, 0);
}

uint64_t sub_1D17C2B1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643360, &qword_1D1E717C8);
  sub_1D1E67DBC();
  v0[8] = MEMORY[0x1E69E7CC0];
  v1 = sub_1D17C4548(&qword_1EC643E60, &qword_1EC643E58, &unk_1D1E74140);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1D17C2C18;
  v3 = v0[5];

  return MEMORY[0x1EEE6D8C8](v0 + 2, v3, v1);
}

uint64_t sub_1D17C2C18()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    v3 = sub_1D17C2F00;
  }

  else
  {
    v3 = sub_1D17C2D4C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D17C2D4C()
{
  if (*(v0 + 24) == 1)
  {
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

    v1 = *(v0 + 8);
    v2 = *(v0 + 64);

    return v1(v2);
  }

  else
  {
    v13 = *(v0 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v0 + 64);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_1D177EFB8(0, v5[2] + 1, 1, v5);
    }

    v7 = v5[2];
    v6 = v5[3];
    v8 = v13;
    if (v7 >= v6 >> 1)
    {
      v12 = sub_1D177EFB8((v6 > 1), v7 + 1, 1, v5);
      v8 = v13;
      v5 = v12;
    }

    v5[2] = v7 + 1;
    *&v5[2 * v7 + 4] = v8;
    *(v0 + 64) = v5;
    v9 = sub_1D17C4548(&qword_1EC643E60, &qword_1EC643E58, &unk_1D1E74140);
    v10 = swift_task_alloc();
    *(v0 + 72) = v10;
    *v10 = v0;
    v10[1] = sub_1D17C2C18;
    v11 = *(v0 + 40);

    return MEMORY[0x1EEE6D8C8](v0 + 16, v11, v9);
  }
}

uint64_t sub_1D17C2F00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D17C2F64(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E40, &unk_1D1E74120);
  v1[3] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E20, &unk_1D1E717B0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E48, &qword_1D1E74130);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17C30DC, 0, 0);
}

uint64_t sub_1D17C30DC()
{
  sub_1D1E67DBC();
  v0[11] = MEMORY[0x1E69E7CC0];
  v1 = sub_1D17C4548(&qword_1EC643E50, &qword_1EC643E48, &qword_1D1E74130);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1D17C31BC;
  v3 = v0[8];
  v4 = v0[3];

  return MEMORY[0x1EEE6D8C8](v4, v3, v1);
}

uint64_t sub_1D17C31BC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    v3 = sub_1D17C4604;
  }

  else
  {
    v3 = sub_1D17C32F0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D17C32F0()
{
  v1 = v0[3];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    sub_1D1741A30(v1, &qword_1EC643E40, &unk_1D1E74120);

    v2 = v0[1];
    v3 = v0[11];

    return v2(v3);
  }

  else
  {
    v6 = v0[6];
    v5 = v0[7];
    sub_1D1741A90(v1, v5, &unk_1EC649E20, &unk_1D1E717B0);
    sub_1D1741C08(v5, v6, &unk_1EC649E20, &unk_1D1E717B0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v0[11];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1D177F0EC(0, v8[2] + 1, 1, v0[11]);
    }

    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_1D177F0EC((v9 > 1), v10 + 1, 1, v8);
    }

    v11 = v0[6];
    v12 = v0[5];
    sub_1D1741A30(v0[7], &unk_1EC649E20, &unk_1D1E717B0);
    v8[2] = v10 + 1;
    sub_1D1741A90(v11, v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10, &unk_1EC649E20, &unk_1D1E717B0);
    v0[11] = v8;
    v13 = sub_1D17C4548(&qword_1EC643E50, &qword_1EC643E48, &qword_1D1E74130);
    v14 = swift_task_alloc();
    v0[12] = v14;
    *v14 = v0;
    v14[1] = sub_1D17C31BC;
    v15 = v0[8];
    v16 = v0[3];

    return MEMORY[0x1EEE6D8C8](v16, v15, v13);
  }
}

uint64_t sub_1D17C3584(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E28, &unk_1D1E740F8);
  v1[3] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643158, &unk_1D1E715B0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E30, &unk_1D1E74108);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17C36FC, 0, 0);
}

uint64_t sub_1D17C36FC()
{
  sub_1D1E67DBC();
  v0[11] = MEMORY[0x1E69E7CC0];
  v1 = sub_1D17C4548(&qword_1EC643E38, &qword_1EC643E30, &unk_1D1E74108);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1D17C37DC;
  v3 = v0[8];
  v4 = v0[3];

  return MEMORY[0x1EEE6D8C8](v4, v3, v1);
}

uint64_t sub_1D17C37DC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    v3 = sub_1D17C3BA4;
  }

  else
  {
    v3 = sub_1D17C3910;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D17C3910()
{
  v1 = v0[3];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    sub_1D1741A30(v1, &qword_1EC643E28, &unk_1D1E740F8);

    v2 = v0[1];
    v3 = v0[11];

    return v2(v3);
  }

  else
  {
    v6 = v0[6];
    v5 = v0[7];
    sub_1D1741A90(v1, v5, &qword_1EC643158, &unk_1D1E715B0);
    sub_1D1741C08(v5, v6, &qword_1EC643158, &unk_1D1E715B0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v0[11];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1D17802DC(0, v8[2] + 1, 1, v0[11]);
    }

    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_1D17802DC((v9 > 1), v10 + 1, 1, v8);
    }

    v11 = v0[6];
    v12 = v0[5];
    sub_1D1741A30(v0[7], &qword_1EC643158, &unk_1D1E715B0);
    v8[2] = v10 + 1;
    sub_1D1741A90(v11, v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10, &qword_1EC643158, &unk_1D1E715B0);
    v0[11] = v8;
    v13 = sub_1D17C4548(&qword_1EC643E38, &qword_1EC643E30, &unk_1D1E74108);
    v14 = swift_task_alloc();
    v0[12] = v14;
    *v14 = v0;
    v14[1] = sub_1D17C37DC;
    v15 = v0[8];
    v16 = v0[3];

    return MEMORY[0x1EEE6D8C8](v16, v15, v13);
  }
}

uint64_t sub_1D17C3BA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CameraClipPosterFrameGenerator.GenerationError.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D17C3CD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s13HomeDataModel30CameraClipPosterFrameGeneratorC15compositedImage4from12segmentWidth0L6HeightSo10CGImageRefaSgSayAIG_S2itFZ_0(unint64_t a1, uint64_t a2, size_t a3)
{
  v6 = a1;
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v44 = result;
  if (result)
  {
    while (1)
    {
      v8 = a2 * result;
      if ((a2 * result) >> 64 != (a2 * result) >> 63)
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v9 = __CGBitmapContextCreate(v8, a3, DeviceRGB);
      if (!v9)
      {
        break;
      }

      if (v44 < 1)
      {
        goto LABEL_35;
      }

      v10 = v9;
      v42 = DeviceRGB;
      v43 = a2;
      v11 = a2;
      v12 = a3;
      if ((v6 & 0xC000000000000001) != 0)
      {
        v13 = 0;
        v14 = 0;
        while (1)
        {
          v15 = v6;
          v16 = MEMORY[0x1D3891EF0](v14, v6);
          CGImageGetWidth(v16);
          CGImageGetHeight(v16);
          v45.origin.y = 0.0;
          v45.origin.x = v13;
          v45.size.width = v11;
          v45.size.height = v12;
          CGRectGetWidth(v45);
          v46.origin.y = 0.0;
          v46.origin.x = v13;
          v46.size.width = v11;
          v46.size.height = v12;
          CGRectGetHeight(v46);
          v47.origin.y = 0.0;
          v47.origin.x = v13;
          v47.size.width = v11;
          v47.size.height = v12;
          CGRectGetWidth(v47);
          v48.origin.y = 0.0;
          v48.origin.x = v13;
          v48.size.width = v11;
          v48.size.height = v12;
          CGRectGetHeight(v48);
          CGContextSaveGState(v10);
          v49.origin.y = 0.0;
          v49.origin.x = v13;
          v49.size.width = v11;
          v49.size.height = v12;
          CGContextAddRect(v10, v49);
          v17 = sub_1D1E66D4C();
          v6 = &v41;
          v18 = *(v17 - 8);
          MEMORY[0x1EEE9AC00](v17);
          v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v18 + 104))(v20, *MEMORY[0x1E695EEC0], v17);
          a3 = v10;
          sub_1D1E682FC();
          (*(v18 + 8))(v20, v17);
          a2 = v43;
          sub_1D1E6830C();
          CGContextRestoreGState(v10);
          swift_unknownObjectRelease();
          if (__OFADD__(v13, a2))
          {
            break;
          }

          ++v14;
          v13 += a2;
          v6 = v15;
          if (v44 == v14)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
        v25 = 0;
        v26 = (v6 + 32);
        v27 = MEMORY[0x1E695EEC0];
        while (1)
        {
          v6 = *v26;
          CGImageGetWidth(v6);
          CGImageGetHeight(v6);
          v50.origin.y = 0.0;
          v50.origin.x = v25;
          v50.size.width = v11;
          v50.size.height = v12;
          CGRectGetWidth(v50);
          v51.origin.y = 0.0;
          v51.origin.x = v25;
          v51.size.width = v11;
          v51.size.height = v12;
          CGRectGetHeight(v51);
          v52.origin.y = 0.0;
          v52.origin.x = v25;
          v52.size.width = v11;
          v52.size.height = v12;
          CGRectGetWidth(v52);
          v53.origin.y = 0.0;
          v53.origin.x = v25;
          v53.size.width = v11;
          v53.size.height = v12;
          CGRectGetHeight(v53);
          CGContextSaveGState(v10);
          v54.origin.y = 0.0;
          v54.origin.x = v25;
          v54.size.width = v11;
          v54.size.height = v12;
          CGContextAddRect(v10, v54);
          v28 = sub_1D1E66D4C();
          a2 = &v41;
          v29 = *(v28 - 8);
          MEMORY[0x1EEE9AC00](v28);
          v31 = &v41 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v29 + 104))(v31, *v27, v28);
          a3 = v10;
          sub_1D1E682FC();
          (*(v29 + 8))(v31, v28);
          v32 = v43;
          sub_1D1E6830C();
          CGContextRestoreGState(v10);

          if (__OFADD__(v25, v32))
          {
            break;
          }

          v25 += v32;
          ++v26;
          if (!--v44)
          {
LABEL_18:
            Image = CGBitmapContextCreateImage(v10);
            if (Image)
            {
              v34 = Image;

              return v34;
            }

            if (qword_1EC642140 != -1)
            {
              swift_once();
            }

            v35 = sub_1D1E6709C();
            __swift_project_value_buffer(v35, qword_1EC643DF8);
            v36 = sub_1D1E6707C();
            v37 = sub_1D1E6833C();
            v38 = os_log_type_enabled(v36, v37);
            v39 = v42;
            if (v38)
            {
              v40 = swift_slowAlloc();
              *v40 = 0;
              _os_log_impl(&dword_1D16EC000, v36, v37, "Failed to create composite image from context", v40, 2u);
              MEMORY[0x1D3893640](v40, -1, -1);
            }

            return 0;
          }
        }
      }

      __break(1u);
LABEL_29:
      if (v6 < 0)
      {
        DeviceRGB = v6;
      }

      else
      {
        DeviceRGB = (v6 & 0xFFFFFFFFFFFFFF8);
      }

      result = sub_1D1E6873C();
      v44 = result;
      if (!result)
      {
        return result;
      }

      result = sub_1D1E6873C();
    }

    if (qword_1EC642140 == -1)
    {
      goto LABEL_12;
    }

LABEL_36:
    swift_once();
LABEL_12:
    v21 = sub_1D1E6709C();
    __swift_project_value_buffer(v21, qword_1EC643DF8);
    v22 = sub_1D1E6707C();
    v23 = sub_1D1E6833C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D16EC000, v22, v23, "Failed to create bitmap context for compositing", v24, 2u);
      MEMORY[0x1D3893640](v24, -1, -1);
    }

    return 0;
  }

  return result;
}

unint64_t sub_1D17C44A8()
{
  result = qword_1EC643E20;
  if (!qword_1EC643E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643E20);
  }

  return result;
}

uint64_t sub_1D17C4548(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D17C45BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of CameraEventCacheable.prefetchAndLoadInitialEvents(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D17C4CF0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CameraEventCacheable.fetchOlderEvents(limit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D17C4CF0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CameraEventCacheable.fetchOlderEvents()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of CameraEventCacheable.fetchNewerEvents()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of CameraEventCacheable.fetchFirstClip(in:limit:ascending:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 64) + **(a6 + 64));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1D17C4BFC;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1D17C4BFC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

BOOL sub_1D17C4CF4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1D1E66A7C();
    ++v2;
    sub_1D17CA8FC(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  }

  while ((sub_1D1E6775C() & 1) == 0);
  return v3 != v4;
}

BOOL sub_1D17C4E00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v5 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v7 = ServiceKind.rawValue.getter();
    v9 = v8;
    if (v7 == ServiceKind.rawValue.getter() && v9 == v10)
    {

      return v5 != 0;
    }

    v4 = sub_1D1E6904C();

    ++v3;
  }

  while ((v4 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_1D17C4EDC(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = (a3 + 40);
    do
    {
      if (*v4)
      {
        if (a2)
        {
          return 1;
        }
      }

      else if ((a2 & 1) == 0 && *(v4 - 1) == a1)
      {
        return 1;
      }

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return 0;
}

BOOL sub_1D17C4F24(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1D17C4F54(__int16 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  for (i = (a2 + 33); !*i; i += 2)
  {
    if (!HIBYTE(a1))
    {
      goto LABEL_4;
    }

LABEL_5:
    if (!--v2)
    {
      return 0;
    }
  }

  if (*i == 1)
  {
    if (HIBYTE(a1) != 1)
    {
      goto LABEL_5;
    }
  }

  else if (HIBYTE(a1) != 2)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (*(i - 1) != a1)
  {
    goto LABEL_5;
  }

  return 1;
}

BOOL sub_1D17C4FC0(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while ((0xFE060504030201uLL >> (8 * a1)) != (0xFE060504030201uLL >> (8 * v6)));
  return v4 != 0;
}

uint64_t sub_1D17C5014(void *a1, uint64_t a2)
{
  v36 = a1;
  v35 = sub_1D1E66A7C();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = &v25 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v33);
  v8 = &v25 - v7;
  v31 = _s8IntervalVMa(0);
  MEMORY[0x1EEE9AC00](v31);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v32 = (v3 + 48);
    v34 = *(v9 + 72);
    v26 = (v3 + 32);
    v29 = (v3 + 8);
    v14 = v30;
    do
    {
      sub_1D17CA4EC(v13, v11, _s8IntervalVMa);
      v15 = *v11 == *v36 && v11[1] == v36[1];
      if (!v15 && (sub_1D1E6904C() & 1) == 0)
      {
        goto LABEL_5;
      }

      v16 = *(type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0) + 20);
      v17 = *(v33 + 48);
      sub_1D1741C08(v11 + v16, v8, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741C08(v36 + v16, &v8[v17], &qword_1EC642590, qword_1D1E71260);
      v18 = *v32;
      if ((*v32)(v8, 1, v35) == 1)
      {
        if (v18(&v8[v17], 1, v35) != 1)
        {
          goto LABEL_4;
        }

        sub_1D1741A30(v8, &qword_1EC642590, qword_1D1E71260);
      }

      else
      {
        sub_1D1741C08(v8, v14, &qword_1EC642590, qword_1D1E71260);
        if (v18(&v8[v17], 1, v35) == 1)
        {
          (*v29)(v14, v35);
LABEL_4:
          sub_1D1741A30(v8, &qword_1EC642980, &unk_1D1E6E6E0);
LABEL_5:
          sub_1D17CA7E4(v11, _s8IntervalVMa);
          goto LABEL_6;
        }

        v19 = v27;
        v20 = v35;
        (*v26)(v27, &v8[v17], v35);
        sub_1D17CA8FC(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v28 = sub_1D1E6775C();
        v21 = *v29;
        v22 = v19;
        v14 = v30;
        (*v29)(v22, v20);
        v21(v14, v20);
        sub_1D1741A30(v8, &qword_1EC642590, qword_1D1E71260);
        if ((v28 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if ((sub_1D1E68A0C() & 1) == 0)
      {
        goto LABEL_5;
      }

      v23 = sub_1D1E68A0C();
      sub_1D17CA7E4(v11, _s8IntervalVMa);
      if (v23)
      {
        return 1;
      }

LABEL_6:
      v13 += v34;
      --v12;
    }

    while (v12);
  }

  return 0;
}

uint64_t sub_1D17C5508(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = a1;
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      if (v5 == 53)
      {
        if (v3 == 53)
        {
          return 1;
        }
      }

      else if (v3 != 53)
      {
        v6 = ServiceKind.rawValue.getter();
        v8 = v7;
        if (v6 == ServiceKind.rawValue.getter() && v8 == v9)
        {

          return 1;
        }

        v10 = sub_1D1E6904C();

        if (v10)
        {
          return 1;
        }
      }

      --v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_1D17C5604(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = (a2 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 == 7)
      {
        if (a1 == 7)
        {
          return 1;
        }
      }

      else if (a1 != 7 && (sub_1D179F2F8(v5, a1) & 1) != 0)
      {
        return 1;
      }

      --v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_1D17C567C(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v41 = sub_1D1E66A7C();
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AA8, &unk_1D1E9F9F0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  v8 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v40 = (&v34 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = *(a2 + 16);
  if (!v17)
  {
    return 0;
  }

  v18 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v42 = *(v14 + 72);
  v39 = (v3 + 8);
  v35 = (v3 + 32);
  v36 = v8;
  while (1)
  {
    sub_1D17CA4EC(v18, v16, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v19 = &v7[*(v5 + 48)];
    sub_1D17CA4EC(v16, v7, type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D17CA4EC(v43, v19, type metadata accessor for StaticAccessory.DeviceIdentifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D17CA4EC(v7, v11, type metadata accessor for StaticAccessory.DeviceIdentifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = v5;
        v21 = v37;
        v22 = v19;
        v23 = v41;
        (*v35)(v37, v22, v41);
        v38 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        v24 = *v39;
        v25 = v21;
        v5 = v20;
        (*v39)(v25, v23);
        v24(v11, v23);
        sub_1D17CA7E4(v7, type metadata accessor for StaticAccessory.DeviceIdentifier);
        if (v38)
        {
          goto LABEL_21;
        }

        goto LABEL_5;
      }

      (*v39)(v11, v41);
LABEL_4:
      sub_1D1741A30(v7, &qword_1EC642AA8, &unk_1D1E9F9F0);
      goto LABEL_5;
    }

    v26 = v40;
    sub_1D17CA4EC(v7, v40, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v28 = *v26;
    v27 = v26[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      goto LABEL_4;
    }

    v29 = *v19;
    v30 = *(v19 + 1);
    if (v28 == v29 && v27 == v30)
    {
      break;
    }

    v32 = sub_1D1E6904C();

    if (v32)
    {
      goto LABEL_20;
    }

    sub_1D17CA7E4(v7, type metadata accessor for StaticAccessory.DeviceIdentifier);
LABEL_5:
    sub_1D17CA7E4(v16, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v18 += v42;
    if (!--v17)
    {
      return 0;
    }
  }

LABEL_20:
  sub_1D17CA7E4(v7, type metadata accessor for StaticAccessory.DeviceIdentifier);
LABEL_21:
  sub_1D17CA7E4(v16, type metadata accessor for StaticAccessory.DeviceIdentifier);
  return 1;
}

uint64_t sub_1D17C5B18(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E98, &unk_1D1E74290);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for RoomType(0) - 8;
  v10 = MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  v15 = *(a2 + 16);
  if (!v15)
  {
    return 0;
  }

  v16 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v17 = *(v11 + 72);
  v18 = (v4 + 48);
  v29 = v6;
  v30 = (v4 + 8);
  v26 = (v4 + 32);
  v31 = v17;
  v32 = v12;
  while (1)
  {
    sub_1D17CA4EC(v16, v14, type metadata accessor for RoomType);
    v19 = *(v6 + 48);
    sub_1D17CA4EC(v14, v8, type metadata accessor for RoomType);
    sub_1D17CA4EC(v33, &v8[v19], type metadata accessor for RoomType);
    v20 = *v18;
    v21 = (*v18)(v8, 4, v3);
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        if (v20(&v8[v19], 4, v3) == 2)
        {
          goto LABEL_22;
        }
      }

      else if (v21 == 3)
      {
        if (v20(&v8[v19], 4, v3) == 3)
        {
          goto LABEL_22;
        }
      }

      else if (v20(&v8[v19], 4, v3) == 4)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }

    if (v21)
    {
      break;
    }

    v22 = v32;
    sub_1D17CA4EC(v8, v32, type metadata accessor for RoomType);
    if (v20(&v8[v19], 4, v3))
    {
      (*v30)(v22, v3);
      v6 = v29;
      v17 = v31;
LABEL_16:
      sub_1D1741A30(v8, &qword_1EC643E98, &unk_1D1E74290);
      goto LABEL_17;
    }

    v23 = v28;
    (*v26)(v28, &v8[v19], v3);
    v27 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    v24 = *v30;
    (*v30)(v23, v3);
    v24(v22, v3);
    sub_1D17CA7E4(v8, type metadata accessor for RoomType);
    v6 = v29;
    v17 = v31;
    if (v27)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_1D17CA7E4(v14, type metadata accessor for RoomType);
    v16 += v17;
    if (!--v15)
    {
      return 0;
    }
  }

  if (v20(&v8[v19], 4, v3) != 1)
  {
    goto LABEL_16;
  }

LABEL_22:
  sub_1D17CA7E4(v8, type metadata accessor for RoomType);
LABEL_23:
  sub_1D17CA7E4(v14, type metadata accessor for RoomType);
  return 1;
}

BOOL sub_1D17C5F88(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = CategoryKind.description.getter(*v4);
    v9 = v8;
    if (v7 == CategoryKind.description.getter(v2) && v9 == v10)
    {

      return v5 != 0;
    }

    v12 = sub_1D1E6904C();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

uint64_t CameraEventPrefetcher.fetchRequestsCancellationRequested.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  if (a1)
  {
    if (*(v1 + 64))
    {

      sub_1D1E67F5C();
    }

    if (*(v1 + 72))
    {

      sub_1D1E67F5C();
    }

    *(v1 + 64) = 0;

    *(v1 + 72) = 0;
  }

  return result;
}

uint64_t (*CameraEventPrefetcher.fetchRequestsCancellationRequested.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D17C61C8;
}

uint64_t sub_1D17C61C8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    if (*(v5 + 56) == 1)
    {
      v6 = *(a1 + 24);
      if (*(v5 + 64))
      {

        sub_1D1E67F5C();

        v6 = *(a1 + 24);
      }

      if (*(v6 + 72))
      {

        sub_1D1E67F5C();
      }

      *(v5 + 64) = 0;

      *(v6 + 72) = 0;
    }
  }

  return result;
}

uint64_t CameraEventPrefetcher.__allocating_init(eventCache:boundarySize:eventFetchLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  v9 = MEMORY[0x1E69E7CD0];
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = v9;
  *(result + 40) = a3;
  *(result + 48) = a4;
  return result;
}

uint64_t CameraEventPrefetcher.init(eventCache:boundarySize:eventFetchLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = 0;
  v5 = MEMORY[0x1E69E7CD0];
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = v5;
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  return v4;
}

uint64_t CameraEventPrefetcher.fetchOlderEventsIfNeeded(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = &v41 - v5;
  v6 = type metadata accessor for ReachabilityEvent(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ScrubberElement(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ScrubberElement.ID(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v20 = (*(v18 + 24))(ObjectType, v18);
  v21 = sub_1D17C680C(*(v1 + 40), v20);
  v23 = v22;
  v25 = v24;
  v42 = v26;
  if ((sub_1D17C9708(a1, v22, v26, v24) & 1) == 0)
  {

    return swift_unknownObjectRelease();
  }

  v41 = v23;
  swift_beginAccess();
  v27 = *(v2 + 32);
  sub_1D17CA4EC(a1, v14, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17CA77C(v14, v8, type metadata accessor for ReachabilityEvent);
    v28 = sub_1D1E66A7C();
    (*(*(v28 - 8) + 16))(v17, v8, v28);

    v29 = type metadata accessor for ReachabilityEvent;
    v30 = v8;
  }

  else
  {
    sub_1D17CA77C(v14, v11, type metadata accessor for CameraClip);
    v28 = sub_1D1E66A7C();
    (*(*(v28 - 8) + 16))(v17, v11, v28);

    v29 = type metadata accessor for CameraClip;
    v30 = v11;
  }

  sub_1D17CA7E4(v30, v29);
  v31 = sub_1D1719534(v17, v27);

  sub_1D1E66A7C();
  (*(*(v28 - 8) + 8))(v17, v28);
  if (v31)
  {
    return swift_unknownObjectRelease();
  }

  v33 = sub_1D1E67E7C();
  v34 = v43;
  (*(*(v33 - 8) + 56))(v43, 1, 1, v33);
  sub_1D1E67E1C();
  swift_unknownObjectRetain();

  v35 = sub_1D1E67E0C();
  v36 = swift_allocObject();
  v37 = MEMORY[0x1E69E85E0];
  v36[2] = v35;
  v36[3] = v37;
  v39 = v41;
  v38 = v42;
  v36[4] = v21;
  v36[5] = v39;
  v36[6] = v38;
  v36[7] = v25;
  v36[8] = v2;
  v40 = sub_1D17C6EF0(0, 0, v34, &unk_1D1E741B0, v36);
  swift_unknownObjectRelease();
  *(v2 + 64) = v40;
}

uint64_t sub_1D17C680C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for ScrubberElement(0);
    return a2;
  }

  return result;
}

uint64_t sub_1D17C68A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  type metadata accessor for ReachabilityEvent(0);
  v8[9] = swift_task_alloc();
  type metadata accessor for CameraClip(0);
  v8[10] = swift_task_alloc();
  type metadata accessor for ScrubberElement.ID(0);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v9 = sub_1D1E66A7C();
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v10 = type metadata accessor for ScrubberElement(0);
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  sub_1D1E67E1C();
  v8[21] = sub_1D1E67E0C();
  v12 = sub_1D1E67D4C();
  v8[22] = v12;
  v8[23] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D17C6A9C, v12, v11);
}

void sub_1D17C6A9C()
{
  v1 = v0[6];
  v2 = v0[7] >> 1;
  v3 = v2 - v1;
  if (v2 != v1)
  {
    if (v2 <= v1)
    {
      __break(1u);
      return;
    }

    v4 = v0[14];
    v27 = (v4 + 16);
    v28 = *(v0[18] + 72);
    v5 = (v4 + 32);
    v6 = (v4 + 8);
    v7 = v1 * v28;
    do
    {
      v8 = v0[19];
      v9 = v0[20];
      sub_1D17CA4EC(v0[5] + v7, v9, type metadata accessor for ScrubberElement);
      sub_1D17CA4EC(v9, v8, type metadata accessor for ScrubberElement);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v11 = v0[13];
      v12 = v0[11];
      v13 = 9;
      if (EnumCaseMultiPayload == 1)
      {
        v14 = type metadata accessor for ReachabilityEvent;
      }

      else
      {
        v13 = 10;
        v14 = type metadata accessor for CameraClip;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v15 = type metadata accessor for ReachabilityEvent;
      }

      else
      {
        v15 = type metadata accessor for CameraClip;
      }

      v16 = v0[v13];
      sub_1D17CA77C(v0[19], v16, v14);
      (*v27)(v12, v16, v11);
      sub_1D17CA7E4(v16, v15);
      v17 = v0[20];
      v19 = v0[15];
      v18 = v0[16];
      v20 = v0[12];
      v21 = v0[13];
      sub_1D17CA77C(v0[11], v20, type metadata accessor for ScrubberElement.ID);
      (*v5)(v19, v20, v21);
      swift_beginAccess();
      sub_1D1762CB8(v18, v19);
      swift_endAccess();
      (*v6)(v18, v21);
      sub_1D17CA7E4(v17, type metadata accessor for ScrubberElement);
      v7 += v28;
      --v3;
    }

    while (v3);
  }

  v22 = v0[8];
  v23 = *(v22 + 24);
  ObjectType = swift_getObjectType();
  v25 = *(v22 + 48);
  v29 = (*(v23 + 40) + **(v23 + 40));
  v26 = swift_task_alloc();
  v0[24] = v26;
  *v26 = v0;
  v26[1] = sub_1D17C6DD0;

  v29(v25, ObjectType, v23);
}

uint64_t sub_1D17C6DD0()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1D17CA944, v3, v2);
}

uint64_t sub_1D17C6EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D1741C08(a3, v25 - v10, &unk_1EC6442C0, &qword_1D1E741A0);
  v12 = sub_1D1E67E7C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D1741A30(v11, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D1E67D4C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D1E678CC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D17C71F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D1741C08(a3, v25 - v10, &unk_1EC6442C0, &qword_1D1E741A0);
  v12 = sub_1D1E67E7C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D1741A30(v11, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D1E67D4C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D1E678CC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E88, &qword_1D1E74268);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E88, &qword_1D1E74268);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D17C7504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D1741C08(a3, v25 - v10, &unk_1EC6442C0, &qword_1D1E741A0);
  v12 = sub_1D1E67E7C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D1741A30(v11, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D1E67D4C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D1E678CC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643EB0, &qword_1D1E742E0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643EB0, &qword_1D1E742E0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D17C7818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D1741C08(a3, v25 - v10, &unk_1EC6442C0, &qword_1D1E741A0);
  v12 = sub_1D1E67E7C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D1741A30(v11, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D1E67D4C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D1E678CC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643EA8, &qword_1D1E742C8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643EA8, &qword_1D1E742C8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D17C7B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D1741C08(a3, v25 - v10, &unk_1EC6442C0, &qword_1D1E741A0);
  v12 = sub_1D1E67E7C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D1741A30(v11, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D1E67D4C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D1E678CC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643EA0, &qword_1D1E742B0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643EA0, &qword_1D1E742B0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D17C7E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D1741C08(a3, v25 - v10, &unk_1EC6442C0, &qword_1D1E741A0);
  v12 = sub_1D1E67E7C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D1741A30(v11, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D1E67D4C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D1E678CC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E80, &qword_1D1E74248);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E80, &qword_1D1E74248);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D17C8154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D1741C08(a3, v25 - v10, &unk_1EC6442C0, &qword_1D1E741A0);
  v12 = sub_1D1E67E7C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D1741A30(v11, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D1E67D4C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D1E678CC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E90, &qword_1D1E74280);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E90, &qword_1D1E74280);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t CameraEventPrefetcher.fetchNewerEventsIfNeeded(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = &v41 - v5;
  v6 = type metadata accessor for ReachabilityEvent(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ScrubberElement(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ScrubberElement.ID(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v20 = (*(v18 + 24))(ObjectType, v18);
  v21 = sub_1D17C892C(*(v1 + 40), v20);
  v23 = v22;
  v25 = v24;
  v42 = v26;
  if ((sub_1D17C9708(a1, v22, v26, v24) & 1) == 0)
  {

    return swift_unknownObjectRelease();
  }

  v41 = v23;
  swift_beginAccess();
  v27 = *(v2 + 32);
  sub_1D17CA4EC(a1, v14, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17CA77C(v14, v8, type metadata accessor for ReachabilityEvent);
    v28 = sub_1D1E66A7C();
    (*(*(v28 - 8) + 16))(v17, v8, v28);

    v29 = type metadata accessor for ReachabilityEvent;
    v30 = v8;
  }

  else
  {
    sub_1D17CA77C(v14, v11, type metadata accessor for CameraClip);
    v28 = sub_1D1E66A7C();
    (*(*(v28 - 8) + 16))(v17, v11, v28);

    v29 = type metadata accessor for CameraClip;
    v30 = v11;
  }

  sub_1D17CA7E4(v30, v29);
  v31 = sub_1D1719534(v17, v27);

  sub_1D1E66A7C();
  (*(*(v28 - 8) + 8))(v17, v28);
  if (v31)
  {
    return swift_unknownObjectRelease();
  }

  v33 = sub_1D1E67E7C();
  v34 = v43;
  (*(*(v33 - 8) + 56))(v43, 1, 1, v33);
  sub_1D1E67E1C();
  swift_unknownObjectRetain();

  v35 = sub_1D1E67E0C();
  v36 = swift_allocObject();
  v37 = MEMORY[0x1E69E85E0];
  v36[2] = v35;
  v36[3] = v37;
  v39 = v41;
  v38 = v42;
  v36[4] = v21;
  v36[5] = v39;
  v36[6] = v38;
  v36[7] = v25;
  v36[8] = v2;
  v40 = sub_1D17C6EF0(0, 0, v34, &unk_1D1E741C0, v36);
  swift_unknownObjectRelease();
  *(v2 + 72) = v40;
}

uint64_t sub_1D17C892C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for ScrubberElement(0);
    return a2;
  }

  return result;
}

uint64_t sub_1D17C89B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  type metadata accessor for ReachabilityEvent(0);
  v8[9] = swift_task_alloc();
  type metadata accessor for CameraClip(0);
  v8[10] = swift_task_alloc();
  type metadata accessor for ScrubberElement.ID(0);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v9 = sub_1D1E66A7C();
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v10 = type metadata accessor for ScrubberElement(0);
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  sub_1D1E67E1C();
  v8[21] = sub_1D1E67E0C();
  v12 = sub_1D1E67D4C();
  v8[22] = v12;
  v8[23] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D17C8BB0, v12, v11);
}

void sub_1D17C8BB0()
{
  v1 = v0[6];
  v2 = v0[7] >> 1;
  v3 = v2 - v1;
  if (v2 != v1)
  {
    if (v2 <= v1)
    {
      __break(1u);
      return;
    }

    v4 = v0[14];
    v25 = (v4 + 16);
    v26 = *(v0[18] + 72);
    v5 = (v4 + 32);
    v6 = (v4 + 8);
    v7 = v1 * v26;
    do
    {
      v8 = v0[19];
      v9 = v0[20];
      sub_1D17CA4EC(v0[5] + v7, v9, type metadata accessor for ScrubberElement);
      sub_1D17CA4EC(v9, v8, type metadata accessor for ScrubberElement);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v11 = v0[13];
      v12 = v0[11];
      v13 = 9;
      if (EnumCaseMultiPayload == 1)
      {
        v14 = type metadata accessor for ReachabilityEvent;
      }

      else
      {
        v13 = 10;
        v14 = type metadata accessor for CameraClip;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v15 = type metadata accessor for ReachabilityEvent;
      }

      else
      {
        v15 = type metadata accessor for CameraClip;
      }

      v16 = v0[v13];
      sub_1D17CA77C(v0[19], v16, v14);
      (*v25)(v12, v16, v11);
      sub_1D17CA7E4(v16, v15);
      v17 = v0[20];
      v19 = v0[15];
      v18 = v0[16];
      v20 = v0[12];
      v21 = v0[13];
      sub_1D17CA77C(v0[11], v20, type metadata accessor for ScrubberElement.ID);
      (*v5)(v19, v20, v21);
      swift_beginAccess();
      sub_1D1762CB8(v18, v19);
      swift_endAccess();
      (*v6)(v18, v21);
      sub_1D17CA7E4(v17, type metadata accessor for ScrubberElement);
      v7 += v26;
      --v3;
    }

    while (v3);
  }

  v22 = *(v0[8] + 24);
  ObjectType = swift_getObjectType();
  v27 = (*(v22 + 56) + **(v22 + 56));
  v24 = swift_task_alloc();
  v0[24] = v24;
  *v24 = v0;
  v24[1] = sub_1D17C8EDC;

  v27(ObjectType, v22);
}

uint64_t sub_1D17C8EDC()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1D17C8FFC, v3, v2);
}

uint64_t sub_1D17C8FFC()
{

  v1 = *(v0 + 8);

  return v1();
}

void *CameraEventPrefetcher.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t CameraEventPrefetcher.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D17C914C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D17C9240;

  return v5(v2 + 32);
}

uint64_t sub_1D17C9240()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1D17C9354(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1D17C9448;

  return v5(v2 + 16);
}

uint64_t sub_1D17C9448()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1D17C9578(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1D17CA948;

  return v5(v2 + 16);
}

uint64_t sub_1D17C966C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D1E6791C();

    return sub_1D1E67A0C();
  }

  return result;
}

uint64_t sub_1D17C9708(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v66 = a1;
  v67 = a2;
  v58 = sub_1D1E669FC();
  v6 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v50 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v57);
  v12 = &v50 - v11;
  v59 = type metadata accessor for ReachabilityEvent(0);
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CameraClip(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v60 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D80, &qword_1D1E74300);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  v19 = type metadata accessor for ScrubberElement(0);
  v65 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v64 = &v50 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v50 - v25;
  v27 = a4 >> 1;
  if (a4 >> 1 == a3)
  {
    return 0;
  }

  v53 = (v6 + 32);
  v54 = (v6 + 8);
  v63 = a4 >> 1;
  v55 = (v6 + 48);
  while (a3 < v27)
  {
    sub_1D17CA4EC(v67 + *(v65 + 72) * a3, v26, type metadata accessor for ScrubberElement);
    v31 = *(v16 + 48);
    sub_1D17CA4EC(v26, v18, type metadata accessor for ScrubberElement);
    sub_1D17CA4EC(v66, &v18[v31], type metadata accessor for ScrubberElement);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D17CA4EC(v18, v22, type metadata accessor for ScrubberElement);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v32 = v61;
        sub_1D17CA77C(&v18[v31], v61, type metadata accessor for ReachabilityEvent);
        v33 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        v34 = v32;
        if ((v33 & 1) != 0 && v22[*(v59 + 20)] == *(v32 + *(v59 + 20)))
        {
          v35 = sub_1D1E669AC();
          v34 = v61;
          if (v35)
          {
            v36 = sub_1D1E669AC();
            v34 = v61;
            if (v36)
            {
              v62 = *(v59 + 32);
              v37 = *(v57 + 48);
              sub_1D1741C08(&v22[v62], v12, &qword_1EC642570, &qword_1D1E6C6A0);
              v52 = v37;
              sub_1D1741C08(v61 + v62, &v37[v12], &qword_1EC642570, &qword_1D1E6C6A0);
              v38 = *v55;
              v62 = v12;
              v39 = v58;
              v51 = v38;
              if (v38(v12, 1, v58) == 1)
              {
                if (v51(v52 + v62, 1, v39) == 1)
                {
                  goto LABEL_28;
                }

LABEL_24:
                sub_1D1741A30(v62, &qword_1EC642AC0, &qword_1D1E6E810);
                v34 = v61;
              }

              else
              {
                v47 = v62;
                v50 = v10;
                sub_1D1741C08(v62, v10, &qword_1EC642570, &qword_1D1E6C6A0);
                v48 = v52 + v47;
                v49 = v58;
                if (v51(v48, 1, v58) == 1)
                {
                  (*v54)(v50, v49);
                  goto LABEL_24;
                }

                (*v53)(v56, v52 + v62, v49);
                sub_1D17CA8FC(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
                LODWORD(v51) = sub_1D1E6775C();
                v52 = *v54;
                v52(v56, v49);
                v52(v50, v49);
                sub_1D1741A30(v62, &qword_1EC642570, &qword_1D1E6C6A0);
                v34 = v61;
                if (v51)
                {
                  goto LABEL_29;
                }
              }
            }
          }
        }

        sub_1D17CA7E4(v34, type metadata accessor for ReachabilityEvent);
        sub_1D17CA7E4(v22, type metadata accessor for ReachabilityEvent);
        sub_1D17CA7E4(v18, type metadata accessor for ScrubberElement);
      }

      else
      {
        v29 = type metadata accessor for ReachabilityEvent;
        v30 = v22;
LABEL_5:
        sub_1D17CA7E4(v30, v29);
        sub_1D1741A30(v18, &qword_1EC643D80, &qword_1D1E74300);
      }

      sub_1D17CA7E4(v26, type metadata accessor for ScrubberElement);
      goto LABEL_7;
    }

    v40 = v64;
    sub_1D17CA4EC(v18, v64, type metadata accessor for ScrubberElement);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = type metadata accessor for CameraClip;
      v30 = v40;
      goto LABEL_5;
    }

    v41 = v26;
    v42 = v19;
    v43 = v22;
    v44 = v16;
    v45 = v60;
    sub_1D17CA77C(&v18[v31], v60, type metadata accessor for CameraClip);
    LODWORD(v62) = _s13HomeDataModel10CameraClipV2eeoiySbAC_ACtFZ_0(v64, v45);
    v46 = v45;
    v16 = v44;
    v22 = v43;
    v19 = v42;
    v26 = v41;
    sub_1D17CA7E4(v46, type metadata accessor for CameraClip);
    sub_1D17CA7E4(v64, type metadata accessor for CameraClip);
    sub_1D17CA7E4(v18, type metadata accessor for ScrubberElement);
    sub_1D17CA7E4(v41, type metadata accessor for ScrubberElement);
    if (v62)
    {
      return 1;
    }

LABEL_7:
    ++a3;
    v27 = v63;
    if (v63 == a3)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_28:
  sub_1D1741A30(v62, &qword_1EC642570, &qword_1D1E6C6A0);
  v34 = v61;
LABEL_29:
  sub_1D17CA7E4(v34, type metadata accessor for ReachabilityEvent);
  sub_1D17CA7E4(v22, type metadata accessor for ReachabilityEvent);
  sub_1D17CA7E4(v18, type metadata accessor for ScrubberElement);
  sub_1D17CA7E4(v26, type metadata accessor for ScrubberElement);
  return 1;
}

uint64_t sub_1D17C9FBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D17C4CF0;

  return sub_1D17C68A0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D17CA0E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D17C4BFC;

  return sub_1D17C89B4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D17CA20C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D17C9578(a1, v4);
}

uint64_t sub_1D17CA2C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D17C914C(a1, v4);
}

uint64_t sub_1D17CA37C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D1A08480(a1, v4);
}

uint64_t sub_1D17CA434(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return sub_1D1A08480(a1, v4);
}

uint64_t sub_1D17CA4EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D17CA554(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D17C9354(a1, v4);
}

uint64_t sub_1D17CA60C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D1B2258C(a1, v4);
}

uint64_t sub_1D17CA6C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D1B2258C(a1, v4);
}

uint64_t sub_1D17CA77C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D17CA7E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D17CA844(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D1B2258C(a1, v4);
}

uint64_t sub_1D17CA8FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1D17CA954(void *a1, uint64_t a2)
{
  v3 = v2;
  v68 = a1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v73 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v8 = *(v7 - 8);
  v76 = v7;
  v77 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v61 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F00, &qword_1D1E744B0);
  v10 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v12 = &v61 - v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  v78 = *(v62 - 8);
  v13 = MEMORY[0x1EEE9AC00](v62);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v61 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F08, &qword_1D1E744B8);
  v18 = *(v17 - 8);
  v71 = v17;
  v72 = v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v61 - v22;
  v24 = *(a2 + 8);
  v65 = *a2;
  v64 = v24;
  v63 = *(a2 + 16);
  swift_defaultActor_initialize();
  *&v3[OBJC_IVAR____TtC13HomeDataModel16CameraController_snapshotTimer] = 0;
  v25 = OBJC_IVAR____TtC13HomeDataModel16CameraController_previousSnapshotCallTime;
  v26 = sub_1D1E669FC();
  (*(*(v26 - 8) + 56))(&v3[v25], 1, 1, v26);
  v27 = &v3[OBJC_IVAR____TtC13HomeDataModel16CameraController_currentSnapshotInterval];
  *v27 = 0;
  *(v27 + 1) = 0;
  v27[16] = 1;
  v3[OBJC_IVAR____TtC13HomeDataModel16CameraController_currentStreamingResolution] = 5;
  v3[OBJC_IVAR____TtC13HomeDataModel16CameraController_lastStreamAttemptResultedInBusyError] = 0;
  v3[OBJC_IVAR____TtC13HomeDataModel16CameraController_wasReset] = 0;
  *&v3[OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManagerTask] = 0;
  v28 = v67;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8650], v67);
  v70 = v23;
  v29 = v75;
  sub_1D1E67E8C();
  (*(v10 + 8))(v12, v28);
  (*(v18 + 16))(v21, v23, v17);
  v30 = *(v78 + 16);
  v31 = v29;
  v32 = v29;
  v33 = v62;
  v30(v15, v31, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F10, &qword_1D1E744C0);
  swift_allocObject();
  v34 = sub_1D1DE3088("Camera", 6, 2, v21, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F18, &qword_1D1E744C8);
  swift_allocObject();
  v35 = sub_1D17D6B88();
  v36 = v68;
  *(v3 + 15) = v68;
  v30(&v3[OBJC_IVAR____TtC13HomeDataModel16CameraController_updates], v32, v33);
  *&v3[OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManager] = v34;
  v66 = v34;
  *&v3[OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider] = v35;
  v79 = v65;
  v80 = v64;
  LOBYTE(v81) = v63;
  v30(v15, v32, v33);
  type metadata accessor for CameraController.State(0);
  swift_allocObject();
  v37 = v36;
  v67 = v35;
  swift_retain_n();
  v38 = v37;
  v68 = v38;

  *(v3 + 14) = sub_1D17DE8C0(v38, &v79, v15, &unk_1D1E744D8, v35);
  v39 = type metadata accessor for CameraController(0);
  v83.receiver = v3;
  v83.super_class = v39;
  v40 = objc_msgSendSuper2(&v83, sel_init);
  v41 = OBJC_IVAR____TtC13HomeDataModel16CameraController_updates;
  v30(v15, &v40[OBJC_IVAR____TtC13HomeDataModel16CameraController_updates], v33);
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = -126;
  v42 = v40;
  v43 = v69;
  sub_1D1E67ECC();
  v65 = *(v78 + 8);
  v78 += 8;
  v65(v15, v33);
  v44 = *(v77 + 8);
  v77 += 8;
  v44(v43, v76);
  v30(v15, &v40[v41], v33);
  v45 = *(v42 + 14);
  swift_getKeyPath();
  v79 = v45;
  sub_1D17D8E60(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);

  sub_1D1E66CAC();

  v46 = v45 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__mode;
  swift_beginAccess();
  v47 = *v46;
  v48 = *(v46 + 8);
  v49 = *(v46 + 16);

  v79 = v47;
  v80 = v48;
  v81 = v49;
  v82 = 0;
  sub_1D1E67ECC();
  v50 = v33;
  v51 = v33;
  v52 = v65;
  v65(v15, v50);
  v44(v43, v76);
  v53 = sub_1D1E67E7C();
  v54 = v73;
  (*(*(v53 - 8) + 56))(v73, 1, 1, v53);
  sub_1D1E67E1C();
  v55 = v66;

  v56 = sub_1D1E67E0C();
  v57 = swift_allocObject();
  v58 = MEMORY[0x1E69E85E0];
  v57[2] = v56;
  v57[3] = v58;
  v57[4] = v55;
  v57[5] = v42;
  v57[6] = ObjectType;
  v59 = sub_1D17C6EF0(0, 0, v54, &unk_1D1E74510, v57);

  v52(v75, v51);
  (*(v72 + 8))(v70, v71);
  *&v42[OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManagerTask] = v59;

  return v42;
}