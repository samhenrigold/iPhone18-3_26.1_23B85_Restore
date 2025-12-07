Swift::Void __swiftcall RollItemsMediaActivityTracker.jumpFromOverallPosition(_:fromRollItem:toRollItem:eventData:)(Swift::UInt64 _, JEHLSRollItem *fromRollItem, JEHLSRollItem *toRollItem, Swift::OpaquePointer_optional eventData)
{
  rawValue = eventData.value._rawValue;
  v9 = *(v4 + OBJC_IVAR___JERollItemsMediaActivityTracker_playActivity);
  if (v9)
  {
    v10 = OBJC_IVAR___JEMediaActivity_type;
    swift_beginAccess();
    if (!*(v9 + v10))
    {
      v11 = sub_1AB460544();
      v13 = v12;
      v14 = sub_1AB460544();
      sub_1AB317F54(0, _, v11, v13, v14, v15, rawValue);
    }
  }

  RollItemsMediaActivityTracker.seekStartedAtOverallPosition(_:type:reason:rollItem:eventData:)(_, @"automatic", @"next", fromRollItem, rawValue);
  v16 = [(JEHLSItem *)toRollItem startOverallPosition];
  v17 = sub_1AB460544();
  v19 = v18;
  v20 = sub_1AB460544();
  sub_1AB317F54(1, v16, v17, v19, v20, v21, rawValue);

  _s9JetEngine29RollItemsMediaActivityTrackerC28playStartedAtOverallPosition_4type6reason8rollItem9eventDatays6UInt64V_So07JEMediaF11TriggerTypeaSo0tF15PlayStartReasonaSo09JEHLSRollP0CSaySDySSypGGSgtF_0([(JEHLSItem *)toRollItem startOverallPosition], @"automatic", @"next", toRollItem, rawValue);
}

void RollItemsMediaActivityTracker.seekStartedAtOverallPosition(_:type:reason:rollItem:eventData:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v41 = sub_1AB460544();
  v11 = v10;
  v42 = sub_1AB460544();
  v13 = v12;
  v14 = *(v6 + OBJC_IVAR___JERollItemsMediaActivityTracker_pipeline);
  v15 = *(v6 + OBJC_IVAR___JERollItemsMediaActivityTracker_topic);
  v16 = *(v6 + OBJC_IVAR___JERollItemsMediaActivityTracker_topic + 8);
  v17 = objc_allocWithZone(type metadata accessor for MediaActivity());
  v18 = v14;

  v19 = a4;
  v20 = sub_1AB31931C(1, v19, v18, v15, v16, v17);
  if (v20)
  {
    v21 = v20;
    v22 = sub_1AB3191D0(a5, v19, v6);
    memset(v47, 0, 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78, &unk_1AB4D6AC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D9850;
    *(inited + 32) = sub_1AB460544();
    *(inited + 40) = v24;
    v25 = sub_1AB2D3B88(a1);
    v26 = MEMORY[0x1E69E76D8];
    *(inited + 72) = MEMORY[0x1E69E76D8];
    *(inited + 48) = v25;
    *(inited + 80) = sub_1AB460544();
    *(inited + 88) = v27;
    *(inited + 120) = v26;
    *(inited + 96) = a1;
    *(inited + 128) = sub_1AB460544();
    *(inited + 136) = v28;
    *(inited + 168) = MEMORY[0x1E69E6158];
    *(inited + 144) = v41;
    *(inited + 152) = v11;
    *(inited + 176) = sub_1AB460544();
    *(inited + 184) = v29;
    *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AC0, &qword_1AB4E75C0);
    *(inited + 192) = v42;
    *(inited + 200) = v13;

    v30 = sub_1AB01B220(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0, &qword_1AB4DA4B0);
    swift_arrayDestroy();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1AB2AFF70(0, v22[2] + 1, 1, v22);
    }

    v32 = v22[2];
    v31 = v22[3];
    if (v32 >= v31 >> 1)
    {
      v22 = sub_1AB2AFF70((v31 > 1), v32 + 1, 1, v22);
    }

    v22[2] = v32 + 1;
    v22[v32 + 4] = v30;
    v33 = OBJC_IVAR___JEMediaActivity_type;
    swift_beginAccess();
    v34 = sub_1AB2D3FA0(*&v21[v33]);
    v36 = v22[2];
    v35 = v22[3];
    if (v36 >= v35 >> 1)
    {
      v40 = v34;
      v22 = sub_1AB2AFF70((v35 > 1), v36 + 1, 1, v22);
      v34 = v40;
    }

    v22[2] = v36 + 1;
    v22[v36 + 4] = v34;
    v46 = v22;
    sub_1AB2D5948(&v46);
    v37 = sub_1AB2F116C(v46);

    sub_1AB01522C(v47, v44);
    if (v45)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43A610, &unk_1AB4EA9B0);
      if (swift_dynamicCast())
      {
        v38 = v43;
      }

      else
      {
        v38 = 0;
      }
    }

    else
    {
      sub_1AB0167A8(v44);
      v38 = 0;
    }

    sub_1AB2EFD58(v37, v38, *&v21[v33]);

    sub_1AB0167A8(v47);
    v39 = *(v6 + OBJC_IVAR___JERollItemsMediaActivityTracker_seekActivity);
    *(v6 + OBJC_IVAR___JERollItemsMediaActivityTracker_seekActivity) = v21;
  }

  else
  {
  }
}

uint64_t RollItemsMediaActivityTracker.seekStoppedAtOverallPosition(_:type:reason:rollItem:eventData:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1AB460544();
  v9 = v8;
  v10 = sub_1AB460544();
  sub_1AB317F54(1, a1, v7, v9, v10, v11, a5);
}

uint64_t sub_1AB318DB4(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, void (*a8)(uint64_t, id, id, id, uint64_t))
{
  v9 = a7;
  if (a7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70, &unk_1AB4D6790);
    v9 = sub_1AB460954();
  }

  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a1;
  a8(a3, v15, v16, v17, v9);
}

id RollItemsMediaActivityTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RollItemsMediaActivityTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AB3191D0(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = MEMORY[0x1E69E7CC0];
  v5 = *(a3 + OBJC_IVAR___JERollItemsMediaActivityTracker_playlist);
  if ([v5 respondsToSelector_])
  {
    v6 = [v5 eventData];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1AB460954();

      v9 = sub_1AB3B27AC(v8);

      if (v9)
      {
        sub_1AB164EFC(v9);
      }
    }
  }

  if ([a2 respondsToSelector_])
  {
    v10 = [a2 eventData];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1AB460954();

      v13 = sub_1AB3B27AC(v12);

      if (v13)
      {
        sub_1AB164EFC(v13);
      }
    }
  }

  if (a1)
  {

    sub_1AB164EFC(v14);
  }

  return v16;
}

id sub_1AB31931C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char *a6)
{
  type metadata accessor for WrappedMetricsPipeline();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    *&a6[OBJC_IVAR___JEMediaActivity_type] = a1;
    *&a6[OBJC_IVAR___JEMediaActivity_playlistItem] = a2;
    sub_1AB0560F8(v12 + OBJC_IVAR___JEWrappedMetricsPipeline_pipeline, &v28);
    type metadata accessor for MediaActivityPipelineHandler();
    v13 = swift_allocObject();
    *(v13 + 232) = 0;
    *(v13 + 240) = 0;
    *(v13 + 248) = 0;
    v14 = a2;
    v15 = MEMORY[0x1E69E7CC0];
    *(v13 + 256) = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
    *(v13 + 264) = sub_1AB01B220(v15);
    v16 = v39;
    *(v13 + 176) = v38;
    *(v13 + 192) = v16;
    *(v13 + 208) = v40;
    v17 = v35;
    *(v13 + 112) = v34;
    *(v13 + 128) = v17;
    v18 = v37;
    *(v13 + 144) = v36;
    *(v13 + 160) = v18;
    v19 = v31;
    *(v13 + 48) = v30;
    *(v13 + 64) = v19;
    v20 = v33;
    *(v13 + 80) = v32;
    *(v13 + 96) = v20;
    v21 = v29;
    *(v13 + 16) = v28;
    *(v13 + 32) = v21;
    *(v13 + 216) = a4;
    *(v13 + 224) = a5;
    *&a6[OBJC_IVAR___JEMediaActivity_pipelineHandler] = v13;
    v27.receiver = a6;
    v27.super_class = type metadata accessor for MediaActivity();
    v22 = objc_msgSendSuper2(&v27, sel_init);
  }

  else
  {

    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v23 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1AB4D4720;
    *(&v29 + 1) = MEMORY[0x1E69E6158];
    *&v28 = 0xD00000000000006ALL;
    *(&v28 + 1) = 0x80000001AB508570;
    *(v25 + 48) = 0u;
    *(v25 + 32) = 0u;
    sub_1AB0169C4(&v28, v25 + 32);
    *(v25 + 64) = 0;
    *(v24 + 32) = v25;
    *&v28 = v23;
    v41 = 0;
    OSLogger.log(contentsOf:withLevel:)(v24, &v41);

    type metadata accessor for MediaActivity();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v22;
}

void _s9JetEngine29RollItemsMediaActivityTrackerC28playStartedAtOverallPosition_4type6reason8rollItem9eventDatays6UInt64V_So07JEMediaF11TriggerTypeaSo0tF15PlayStartReasonaSo09JEHLSRollP0CSaySDySSypGGSgtF_0(char *a1, unint64_t a2, uint64_t a3, char *a4, void *a5)
{
  v7 = a4;
  if ([a4 startOverallPosition] > a1)
  {
    goto LABEL_4;
  }

  v10 = [v7 startOverallPosition];
  v11 = [v7 duration];
  if (__CFADD__(v10, v11))
  {
    __break(1u);
LABEL_33:
    a5 = sub_1AB2AFF70(0, a5[2] + 1, 1, a5);
    goto LABEL_18;
  }

  if (&v11[v10] < a1)
  {
LABEL_4:
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v12 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1AB4D4720;
    v62 = sub_1AB0168A8(0, 70, 0, MEMORY[0x1E69E7CC0]);
    v14._object = 0x80000001AB509DF0;
    v14._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    v65 = MEMORY[0x1E69E76D8];
    v64[0] = a1;
    sub_1AB01522C(v64, v58);
    v59 = 0u;
    v60 = 0u;
    sub_1AB0169C4(v58, &v59);
    v61 = 1;
    v15 = v62;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1AB0168A8(0, *(v15 + 2) + 1, 1, v15);
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1AB0168A8((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v18 = &v15[40 * v17];
    v19 = v59;
    v20 = v60;
    v18[64] = v61;
    *(v18 + 2) = v19;
    *(v18 + 3) = v20;
    v62 = v15;
    sub_1AB0167A8(v64);
    v21._countAndFlagsBits = 0xD00000000000002BLL;
    v21._object = 0x80000001AB509E10;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    *(v13 + 32) = v62;
    *&v59 = v12;
LABEL_11:
    LOBYTE(v64[0]) = 0;
    OSLogger.log(contentsOf:withLevel:)(v13, v64);
LABEL_12:

    return;
  }

  v22 = OBJC_IVAR___JERollItemsMediaActivityTracker_playActivity;
  v23 = *(v5 + OBJC_IVAR___JERollItemsMediaActivityTracker_playActivity);
  if (v23)
  {
    v24 = OBJC_IVAR___JEMediaActivity_type;
    swift_beginAccess();
    if (!*(v23 + v24) && *(*(v23 + OBJC_IVAR___JEMediaActivity_pipelineHandler) + 232) != 1)
    {
      if (qword_1ED4D1FC0 != -1)
      {
        swift_once();
      }

      v51 = qword_1ED4D1FC8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1AB4D4720;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1AB4D4720;
      *(&v60 + 1) = MEMORY[0x1E69E6158];
      *&v59 = 0xD000000000000037;
      *(&v59 + 1) = 0x80000001AB509DB0;
      *(v52 + 48) = 0u;
      *(v52 + 32) = 0u;
      sub_1AB0169C4(&v59, v52 + 32);
      *(v52 + 64) = 0;
      *(v13 + 32) = v52;
      *&v59 = v51;
      goto LABEL_11;
    }
  }

  v56 = v22;
  v54 = sub_1AB460544();
  v57 = v25;
  v55 = sub_1AB460544();
  v27 = v26;
  v28 = *(v5 + OBJC_IVAR___JERollItemsMediaActivityTracker_pipeline);
  v30 = *(v5 + OBJC_IVAR___JERollItemsMediaActivityTracker_topic);
  v29 = *(v5 + OBJC_IVAR___JERollItemsMediaActivityTracker_topic + 8);
  v31 = objc_allocWithZone(type metadata accessor for MediaActivity());
  v32 = v28;

  v33 = v7;
  v34 = sub_1AB31931C(0, v33, v32, v30, v29, v31);
  if (!v34)
  {

    goto LABEL_12;
  }

  v7 = v34;
  a2 = v5;
  a5 = sub_1AB3191D0(a5, v33, v5);
  v59 = 0u;
  v60 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78, &unk_1AB4D6AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D9850;
  *(inited + 32) = sub_1AB460544();
  *(inited + 40) = v36;
  v37 = sub_1AB2D3B88(a1);
  v38 = MEMORY[0x1E69E76D8];
  *(inited + 72) = MEMORY[0x1E69E76D8];
  *(inited + 48) = v37;
  *(inited + 80) = sub_1AB460544();
  *(inited + 88) = v39;
  *(inited + 120) = v38;
  *(inited + 96) = a1;
  *(inited + 128) = sub_1AB460544();
  *(inited + 136) = v40;
  *(inited + 168) = MEMORY[0x1E69E6158];
  *(inited + 144) = v54;
  *(inited + 152) = v57;
  *(inited + 176) = sub_1AB460544();
  *(inited + 184) = v41;
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AC0, &qword_1AB4E75C0);
  *(inited + 192) = v55;
  *(inited + 200) = v27;

  v5 = sub_1AB01B220(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0, &qword_1AB4DA4B0);
  swift_arrayDestroy();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_18:
  v43 = a5[2];
  v42 = a5[3];
  if (v43 >= v42 >> 1)
  {
    a5 = sub_1AB2AFF70((v42 > 1), v43 + 1, 1, a5);
  }

  a5[2] = v43 + 1;
  a5[v43 + 4] = v5;
  v44 = OBJC_IVAR___JEMediaActivity_type;
  swift_beginAccess();
  v45 = sub_1AB2D3FA0(*&v7[v44]);
  v47 = a5[2];
  v46 = a5[3];
  if (v47 >= v46 >> 1)
  {
    v53 = v45;
    a5 = sub_1AB2AFF70((v46 > 1), v47 + 1, 1, a5);
    v45 = v53;
  }

  a5[2] = v47 + 1;
  a5[v47 + 4] = v45;
  v66 = a5;
  sub_1AB2D5948(&v66);
  v48 = sub_1AB2F116C(v66);

  sub_1AB01522C(&v59, v64);
  if (v65)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43A610, &unk_1AB4EA9B0);
    if (swift_dynamicCast())
    {
      v49 = v63;
    }

    else
    {
      v49 = 0;
    }
  }

  else
  {
    sub_1AB0167A8(v64);
    v49 = 0;
  }

  sub_1AB2EFD58(v48, v49, *&v7[v44]);

  sub_1AB0167A8(&v59);
  v50 = *(a2 + v56);
  *(a2 + v56) = v7;
}

id sub_1AB319D44()
{
  result = [objc_allocWithZone(_JEAtomicFlag) initWithInitialValue_];
  qword_1EB43AE18 = result;
  return result;
}

uint64_t sub_1AB319D7C()
{
  result = sub_1AB319D9C();
  qword_1EB46C318 = result;
  return result;
}

uint64_t sub_1AB319D9C()
{
  if (qword_1EB435DB0 != -1)
  {
    swift_once();
  }

  [(_JEAtomicFlag *)qword_1EB43AE18 setCurrentValue:?];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE28, &qword_1AB4EAA28);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE30, &qword_1AB4EAA30);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  v2 = (v1 + 24);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v3 = (v1 + 16);
  *(v0 + 16) = v1;
  v12[3] = &type metadata for SyncTaskScheduler;
  v12[4] = &protocol witness table for SyncTaskScheduler;
  sub_1AB01494C(v12, v9);
  v10 = sub_1AB319F40;
  v11 = 0;
  sub_1AB31A050(v9, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE40, &unk_1AB4EAA40);
  v4 = swift_allocObject();
  v5 = v7[1];
  *(v4 + 16) = v7[0];
  *(v4 + 32) = v5;
  *(v4 + 48) = v7[2];
  *(v4 + 64) = v8;
  os_unfair_lock_lock(v2);
  sub_1AB31A0C0(v3);
  os_unfair_lock_unlock(v2);

  sub_1AB31A0DC(v9);

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v0;
}

void sub_1AB319F40(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v1);

  sub_1AB25070C(v1, v2);
}

double static JetEngineTracing.onEnterPointOfInterest.getter()
{
  if (qword_1EB435DB8 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_1AB319FEC()
{
  result = qword_1EB43AE20;
  if (!qword_1EB43AE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43AE28, &qword_1AB4EAA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43AE20);
  }

  return result;
}

uint64_t sub_1AB31A050(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE38, &qword_1AB4EAA38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB31A0DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE38, &qword_1AB4EAA38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for LocalizerFormattingKey(uint64_t a1)
{
  result = qword_1EB432F48;
  if (!qword_1EB432F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AB31A1B8(uint64_t a1)
{
  v1 = sub_1AB45FB04();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void *sub_1AB31A210(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v14 = *(a4 + 16);
    v6 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v14 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      v10 = a3 - 1;
      v11 = (a4 + 32 * v6 + 16);
      while (v6 + v9 <= *(a4 + 16))
      {
        v13 = *v11;
        v12 = v11[1];
        *v8 = *(v11 - 1);
        *(v8 + 16) = v13;
        *(v8 + 24) = v12;
        if (!(v10 + v9))
        {

          v14 = v6 + v9 - 1;
          goto LABEL_13;
        }

        --v9;
        v11 -= 4;
        v8 += 32;
        if (!(v6 + v9))
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_16;
    }

LABEL_9:
    v14 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v14;
    return v6;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t _IntentReplayDispatcher.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  v4 = sub_1AB31CFAC();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  a2[8] = &type metadata for UserPreferenceIntentReplayDispatcherConfigurationProvider;
  a2[9] = &off_1F200B3C0;
  v11 = swift_allocObject();
  a2[5] = v11;
  *(v11 + 16) = v4 & 1;
  *(v11 + 17) = HIBYTE(v4) & 1;
  *(v11 + 24) = v6;
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  sub_1AB014A58(a1, a2, &qword_1EB439168, &qword_1AB4E1F60);
  v12 = a2[8];
  v13 = a2[9];
  __swift_project_boxed_opaque_existential_1Tm(a2 + 5, v12);
  v14 = (*(v13 + 16))(v12, v13);
  v15 = type metadata accessor for StandardIntentReplayStorage();
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v16 + 120) = 0;
  *(v16 + 112) = v14 & 1;
  *(v16 + 128) = sub_1AB021978(MEMORY[0x1E69E7CC0]);
  a2[13] = v15;
  a2[14] = &off_1F2000F60;
  a2[10] = v16;
  return sub_1AB014AC0(a1, &qword_1EB439168, &qword_1AB4E1F60);
}

uint64_t sub_1AB31A488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = sub_1AB462174();
  v9 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v4[8];
  v12 = v4[9];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 5, v11);
  v13 = (*(v12 + 40))(v11, v12);
  v14 = (*(a3 + 32))(a2, a3);
  if (!*(v13 + 16))
  {

    goto LABEL_7;
  }

  v16 = sub_1AB014DB4(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_7:

    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  v19 = (*(v13 + 56) + 16 * v16);
  v20 = *v19;
  v21 = v19[1];

  v76 = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v75);
  v23 = (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  *&v72 = 47;
  *(&v72 + 1) = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v23);
  v59 = &v72;
  v24 = sub_1AB021178(0x7FFFFFFFFFFFFFFFLL, 1, sub_1AB021538, (&v60 - 4), v20, v21, &v60);
  v25 = v24;
  v26 = *(v24 + 16);
  if (v26)
  {
    v27 = sub_1AB1AFF38(*(v24 + 16), 0);
    v28 = sub_1AB31A210(&v72, (v27 + 32), v26, v25);

    if (v28 != v26)
    {
      __break(1u);
      return result;
    }
  }

  else
  {

    v27 = MEMORY[0x1E69E7CC0];
  }

  v61 = a4;
  if (!*(v27 + 2))
  {
    goto LABEL_57;
  }

  v62 = (v9 + 8);
  v30 = v27;
  while (1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v31 = *(v30 + 2);
      if (!v31)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v30 = sub_1AB3C4AF8(v30);
      v31 = *(v30 + 2);
      if (!v31)
      {
LABEL_50:
        __break(1u);
        goto LABEL_57;
      }
    }

    v32 = v31 - 1;
    v33 = &v30[32 * v31];
    v35 = *v33;
    v34 = *(v33 + 1);
    v37 = *(v33 + 2);
    v36 = *(v33 + 3);
    v64 = v30;
    *(v30 + 2) = v32;
    sub_1AB0165C4(&v75, &v72);
    sub_1AB462124();
    sub_1AB462164();
    sub_1AB461814();

    sub_1AB461944();
    if (v74)
    {
      break;
    }

LABEL_11:
    (*v62)(v65, v63);

    v30 = v64;
LABEL_12:
    if (!*(v30 + 2))
    {
      goto LABEL_57;
    }
  }

  v38 = v35 >> 16;
  v39 = v34 >> 16;
  while (1)
  {
    v70 = v72;
    sub_1AB014B78(&v73, v71);
    sub_1AB014A58(&v70, &v68, &qword_1EB43AE98, &unk_1AB4F3690);
    v40 = *(&v68 + 1);
    if (!*(&v68 + 1))
    {
      sub_1AB014AC0(&v70, &qword_1EB43AE98, &unk_1AB4F3690);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      goto LABEL_18;
    }

    v41 = v68;
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    v42 = (v40 & 0x2000000000000000) != 0 ? HIBYTE(v40) & 0xF : v41 & 0xFFFFFFFFFFFFLL;
    if (v41 == v37 && v40 == v36 && !v38 && v42 == v39)
    {
      break;
    }

    LOBYTE(v59) = 0;
    v43 = sub_1AB461C34();

    if (v43)
    {
      goto LABEL_31;
    }

    sub_1AB014AC0(&v70, &qword_1EB43AE98, &unk_1AB4F3690);
LABEL_18:
    sub_1AB461944();
    if (!v74)
    {
      goto LABEL_11;
    }
  }

LABEL_31:

  v30 = v64;
  if (*(v64 + 2))
  {
LABEL_34:
    sub_1AB014A58(&v70, &v68, &qword_1EB43AE98, &unk_1AB4F3690);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DA8, &qword_1AB4EAC30);
    if (!swift_dynamicCast())
    {
      (*v62)(v65, v63);

      v68 = v70;
      v69[0] = v71[0];
      v69[1] = v71[1];

      __swift_destroy_boxed_opaque_existential_1Tm(&v75);
      v55 = v69;
LABEL_48:
      sub_1AB014B78(v55, &v75);
      goto LABEL_12;
    }

    v44 = *&v66[0];
    v45 = *(v30 + 2);
    if (v45)
    {
      v46 = &v30[32 * v45];
      v47 = *v46;
      v48 = *(v46 + 1);
      v49 = *(v46 + 2);
      v50 = *(v46 + 3);

      v51 = sub_1AB4613D4();
      if (!v50)
      {
        goto LABEL_53;
      }

      if (v49 == v53 && v50 == v54 && v47 >> 16 == v51 >> 16 && v48 >> 16 == v52 >> 16)
      {

        v30 = v64;
      }

      else
      {
        LOBYTE(v59) = 0;
        v56 = sub_1AB461C34();

        v30 = v64;
        if ((v56 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      if (!*(v44 + 16))
      {

        goto LABEL_56;
      }

      sub_1AB0165C4(v44 + 32, v66);

      sub_1AB014B78(v66, &v68);
      v57 = *(v30 + 2);
      if (v57)
      {
        *(v30 + 2) = v57 - 1;
      }

      sub_1AB014AC0(&v70, &qword_1EB43AE98, &unk_1AB4F3690);
      (*v62)(v65, v63);
      __swift_destroy_boxed_opaque_existential_1Tm(&v75);
      v55 = &v68;
      goto LABEL_48;
    }

    sub_1AB4613D4();
LABEL_53:

LABEL_54:

LABEL_56:
    sub_1AB014AC0(&v70, &qword_1EB43AE98, &unk_1AB4F3690);
    (*v62)(v65, v63);
LABEL_57:

    v58 = v61;
    *(v61 + 32) = 0;
    *v58 = 0u;
    v58[1] = 0u;
    return __swift_destroy_boxed_opaque_existential_1Tm(&v75);
  }

  sub_1AB014A58(&v70, &v68, &qword_1EB43AE98, &unk_1AB4F3690);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE90, &unk_1AB4EAC20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v67 = 0;
    memset(v66, 0, sizeof(v66));
    sub_1AB014AC0(v66, &qword_1EB43AE78, &qword_1AB4EAC18);
    goto LABEL_34;
  }

  sub_1AB014AC0(&v70, &qword_1EB43AE98, &unk_1AB4F3690);
  (*v62)(v65, v63);

  sub_1AB0149B0(v66, v61);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v75);
}

uint64_t sub_1AB31AD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = sub_1AB460294();
  *&v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1AB460284();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v62 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v57 - v10;
  v11 = sub_1AB45F0F4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v68 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  v20 = v3[8];
  v21 = v3[9];
  __swift_project_boxed_opaque_existential_1Tm(v3 + 5, v20);
  v22 = (*(v21 + 32))(v20, v21);
  v23 = *(a3 + 32);
  v70 = a3 + 32;
  v71 = a3;
  v69 = v23;
  v24 = v23(a2, a3);
  LOBYTE(v21) = sub_1AB05CF1C(v24, v25, v22);

  v26 = 0;
  if (v21)
  {
    return v26;
  }

  v27 = *(v13 + 16);
  v27(v19, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE68, &qword_1AB4EAC08);
  if (swift_dynamicCast())
  {
    sub_1AB0149B0(&v74, &v77);
    v72 = 0;
    v73 = 0xE000000000000000;
    v28 = v69(a2, v71);
    MEMORY[0x1AC59BA20](v28);

    MEMORY[0x1AC59BA20](1600416095, 0xE400000000000000);
    __swift_project_boxed_opaque_existential_1Tm(&v77, v78);
    *(&v75 + 1) = swift_getAssociatedTypeWitness();
    *&v76 = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_0(&v74);
    sub_1AB4615F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE90, &unk_1AB4EAC20);
    sub_1AB461824();
    __swift_destroy_boxed_opaque_existential_1Tm(&v74);
    v26 = v72;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm(&v77);
    return v26;
  }

  *&v76 = 0;
  v74 = 0u;
  v75 = 0u;
  sub_1AB014AC0(&v74, &qword_1EB43AE70, &qword_1AB4EAC10);
  v29 = v71;
  sub_1AB31A488(a1, a2, v71, &v74);
  if (*(&v75 + 1))
  {
    sub_1AB0149B0(&v74, &v77);
    *&v74 = 0;
    *(&v74 + 1) = 0xE000000000000000;
    v30 = v69(a2, v29);
    MEMORY[0x1AC59BA20](v30);

    MEMORY[0x1AC59BA20](0x5F68746170785FLL, 0xE700000000000000);
    __swift_project_boxed_opaque_existential_1Tm(&v77, v78);
    sub_1AB461D64();
LABEL_6:
    v26 = v74;
    goto LABEL_7;
  }

  sub_1AB014AC0(&v74, &qword_1EB43AE78, &qword_1AB4EAC18);
  v27(v16, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE48, &qword_1AB4EAA88);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    sub_1AB014AC0(&v74, &qword_1EB43AE50, &qword_1AB4EAA90);
    return 0;
  }

  sub_1AB0CBDB8(&v74, &v77);
  sub_1AB45F194();
  swift_allocObject();
  v32 = sub_1AB45F184();
  sub_1AB45F0E4();
  sub_1AB45F104();
  __swift_project_boxed_opaque_existential_1Tm(&v77, v78);
  v33 = sub_1AB45F174();
  v60 = v32;
  v59 = a2;
  v34 = v33;
  v36 = v35;
  sub_1AB31D300(&qword_1EB43AE80, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  v37 = v61;
  v38 = v64;
  sub_1AB460274();
  sub_1AB017200(v34, v36);
  sub_1AB31CCEC(v34, v36, v37);
  v39 = v34;
  v58 = v36;
  sub_1AB017254(v34, v36);
  v40 = v65;
  sub_1AB460264();
  (*(v63 + 8))(v37, v38);
  (*(v66 + 16))(v62, v40, v67);
  sub_1AB31D300(&qword_1EB43AE88, MEMORY[0x1E69663E0], MEMORY[0x1E69663F0]);
  result = sub_1AB4607F4();
  v41 = *(&v74 + 1);
  v68 = v74;
  v42 = *(v74 + 16);
  v43 = MEMORY[0x1E69E7CC0];
  if (*(&v74 + 1) == v42)
  {
LABEL_13:
    (*(v66 + 8))(v65, v67);

    *&v74 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8, &qword_1AB4D4400);
    sub_1AB04E498();
    v44 = sub_1AB460484();
    v46 = v45;

    *&v74 = v69(v59, v71);
    *(&v74 + 1) = v47;
    MEMORY[0x1AC59BA20](0x5F6465687361685FLL, 0xE800000000000000);

    MEMORY[0x1AC59BA20](v44, v46);
    sub_1AB017254(v39, v58);

    goto LABEL_6;
  }

  v64 = (v68 + 32);
  v63 = xmmword_1AB4D4720;
  v48 = *(&v74 + 1);
  while ((v41 & 0x8000000000000000) == 0)
  {
    if (v48 >= *(v68 + 2))
    {
      goto LABEL_24;
    }

    v49 = *(v64 + v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
    v50 = swift_allocObject();
    *(v50 + 16) = v63;
    *(v50 + 56) = MEMORY[0x1E69E7508];
    *(v50 + 64) = MEMORY[0x1E69E7558];
    *(v50 + 32) = v49;
    v51 = sub_1AB460584();
    v53 = v52;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AB020904(0, *(v43 + 16) + 1, 1, v43);
      v43 = result;
    }

    v55 = *(v43 + 16);
    v54 = *(v43 + 24);
    if (v55 >= v54 >> 1)
    {
      result = sub_1AB020904((v54 > 1), v55 + 1, 1, v43);
      v43 = result;
    }

    ++v48;
    *(v43 + 16) = v55 + 1;
    v56 = v43 + 16 * v55;
    *(v56 + 32) = v51;
    *(v56 + 40) = v53;
    if (v42 == v48)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t _IntentReplayDispatcher.load<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB31B720, 0, 0);
}

uint64_t sub_1AB31B720()
{
  v1 = sub_1AB31AD34(v0[6], v0[7], v0[8]);
  v0[10] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v0[11] = AssociatedTypeWitness;
    v6 = dynamic_cast_existential_2_conditional(AssociatedTypeWitness, AssociatedTypeWitness, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
    v0[12] = v6;
    v0[13] = v7;
    if (v6)
    {
      v8 = v0[9];
      v9 = v8[13];
      v10 = v8[14];
      __swift_project_boxed_opaque_existential_1Tm(v8 + 10, v9);
      v16 = (*(v10 + 24) + **(v10 + 24));
      v11 = swift_task_alloc();
      v0[14] = v11;
      *v11 = v0;
      v11[1] = sub_1AB31B954;

      return v16(v4, v3, v9, v10);
    }
  }

  v13 = v0[5];
  v14 = swift_getAssociatedTypeWitness();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = v0[1];

  return v15();
}

uint64_t sub_1AB31B954(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = a2;
  v3[15] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1AB31BA78, 0, 0);
}

uint64_t sub_1AB31BA78()
{
  v1 = v0[15];
  if (v1 >> 60 == 15)
  {
    v2 = v0[5];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 56))(v2, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v4 = v0[3];
    swift_task_alloc();
    sub_1AB45F0D4();
    swift_allocObject();
    sub_1AB45F0C4();
    sub_1AB45F0B4();
    sub_1AB03BD58(v4, v1);

    v5 = v0[11];
    v6 = v0[5];
    v7 = swift_dynamicCast();
    (*(*(v5 - 8) + 56))(v6, v7 ^ 1u, 1, v5);
  }

  v8 = v0[1];

  return v8();
}

uint64_t _IntentReplayDispatcher.cache<A>(result:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[19] = AssociatedTypeWitness;
  v5[20] = *(AssociatedTypeWitness - 8);
  v5[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB31BD34, 0, 0);
}

uint64_t sub_1AB31BD34()
{
  v1 = sub_1AB31AD34(*(v0 + 120), *(v0 + 128), *(v0 + 136));
  *(v0 + 176) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    (*(*(v0 + 160) + 16))(*(v0 + 168), *(v0 + 112), *(v0 + 152));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE48, &qword_1AB4EAA88);
    if (swift_dynamicCast())
    {
      sub_1AB0CBDB8((v0 + 64), (v0 + 16));
      __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
      sub_1AB45F194();
      swift_allocObject();
      sub_1AB45F184();
      v7 = sub_1AB45F174();
      v9 = v8;
      v10 = *(v0 + 144);

      *(v0 + 184) = v9;
      *(v0 + 192) = v7;
      v11 = v10[13];
      v12 = v10[14];
      __swift_project_boxed_opaque_existential_1Tm(v10 + 10, v11);
      v14 = (*(v12 + 16) + **(v12 + 16));
      v13 = swift_task_alloc();
      *(v0 + 200) = v13;
      *v13 = v0;
      v13[1] = sub_1AB31BFF8;

      return v14(v4, v3, v7, v9, v11, v12);
    }

    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 64) = 0u;
    sub_1AB014AC0(v0 + 64, &qword_1EB43AE50, &qword_1AB4EAA90);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1AB31BFF8()
{

  return MEMORY[0x1EEE6DFA0](sub_1AB31C110, 0, 0);
}

uint64_t sub_1AB31C110()
{
  sub_1AB017254(v0[24], v0[23]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t _IntentReplayDispatcher.perform<A, B>(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[17] = a6;
  v7[18] = v6;
  v7[15] = a4;
  v7[16] = a5;
  v7[13] = a2;
  v7[14] = a3;
  v7[12] = a1;
  v7[19] = *(a4 - 8);
  v7[20] = swift_task_alloc();
  v8 = sub_1AB461354();
  v7[21] = v8;
  v7[22] = *(v8 - 8);
  v7[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB31C2A8, 0, 0);
}

uint64_t sub_1AB31C2A8()
{
  sub_1AB014A58(*(v0 + 144), v0 + 56, &qword_1EB439168, &qword_1AB4E1F60);
  if (*(v0 + 80))
  {
    sub_1AB0149B0((v0 + 56), v0 + 16);
    v1 = swift_task_alloc();
    *(v0 + 192) = v1;
    *v1 = v0;
    v1[1] = sub_1AB31C408;
    v2 = *(v0 + 184);
    v3 = *(v0 + 136);
    v4 = *(v0 + 128);
    v5 = *(v0 + 104);

    return _IntentReplayDispatcher.load<A>(for:)(v2, v5, v4, v3);
  }

  else
  {
    sub_1AB014AC0(v0 + 56, &qword_1EB439168, &qword_1AB4E1F60);
    sub_1AB31D164();
    swift_allocError();
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1AB31C408()
{

  if (v0)
  {

    v1 = sub_1AB31CA2C;
  }

  else
  {
    v1 = sub_1AB31C520;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1AB31C520()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[15];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[22] + 8))(v1, v0[21]);
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v4);
    v14 = (*(v5 + 16) + **(v5 + 16));
    v6 = swift_task_alloc();
    v0[25] = v6;
    *v6 = v0;
    v6[1] = sub_1AB31C71C;
    v7 = v0[20];
    v8 = v0[16];
    v9 = v0[17];
    v10 = v0[13];
    v11 = v0[14];

    return v14(v7, v10, v11, v8, v9, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[12], v1, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1AB31C71C()
{
  v2 = *v1;
  v2[26] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB31CB9C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[27] = v3;
    *v3 = v2;
    v3[1] = sub_1AB31C898;
    v4 = v2[17];
    v5 = v2[16];
    v6 = v2[13];
    v7 = v2[20];

    return _IntentReplayDispatcher.cache<A>(result:for:)(v7, v6, v5, v4);
  }
}

uint64_t sub_1AB31C898()
{

  return MEMORY[0x1EEE6DFA0](sub_1AB31C994, 0, 0);
}

uint64_t sub_1AB31C994()
{
  (*(v0[19] + 32))(v0[12], v0[20], v0[15]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB31CA2C()
{
  (*(v0[19] + 56))(v0[23], 1, 1, v0[15]);
  (*(v0[22] + 8))(v0[23], v0[21]);
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v1);
  v10 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_1AB31C71C;
  v4 = v0[20];
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[13];
  v8 = v0[14];

  return v10(v4, v7, v8, v5, v6, v1, v2);
}

uint64_t sub_1AB31CB9C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB31CC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1AB027460;

  return _IntentReplayDispatcher.perform<A, B>(_:asPartOf:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1AB31CCEC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1AB460294();
      sub_1AB31D300(&qword_1EB43AE80, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1AB460254();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1AB31CECC(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1AB31CECC(v5, v6);
  }

  sub_1AB460294();
  sub_1AB31D300(&qword_1EB43AE80, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  return sub_1AB460254();
}

uint64_t sub_1AB31CECC(uint64_t a1, uint64_t a2)
{
  result = sub_1AB45F414();
  if (!result || (result = sub_1AB45F444(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1AB45F434();
      sub_1AB460294();
      sub_1AB31D300(&qword_1EB43AE80, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1AB460254();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB31CFAC()
{
  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  sub_1AB026D00(0xD000000000000012, 0x80000001AB509E40);
  sub_1AB026D00(0x4D6E496568636163, 0xED000079726F6D65);
  sub_1AB17BB48(0xD000000000000011, 0x80000001AB509E60);
  if (sub_1AB17C1F4(0xD000000000000016, 0x80000001AB509E80))
  {
  }

  if (!sub_1AB17C8A8(0xD000000000000019, 0x80000001AB509EA0))
  {
    sub_1AB0B22E0(MEMORY[0x1E69E7CC0]);
  }

  v0 = sub_1AB026D00(0xD000000000000012, 0x80000001AB509E40);
  v1 = sub_1AB026D00(0x4D6E496568636163, 0xED000079726F6D65);
  sub_1AB17BB48(0xD000000000000011, 0x80000001AB509E60);
  sub_1AB17C1F4(0xD000000000000016, 0x80000001AB509E80);
  if (!sub_1AB17C8A8(0xD000000000000019, 0x80000001AB509EA0))
  {
    sub_1AB0B22E0(MEMORY[0x1E69E7CC0]);
  }

  return v0 & 1 | ((v1 & 1) << 8);
}

unint64_t sub_1AB31D164()
{
  result = qword_1EB43AE58;
  if (!qword_1EB43AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43AE58);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1AB31D1E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AB31D22C(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AB31D2AC()
{
  result = qword_1EB43AE60;
  if (!qword_1EB43AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43AE60);
  }

  return result;
}

uint64_t sub_1AB31D300(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AB31D348@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_1AB31D3F0()
{
  result = qword_1EB43AEA0;
  if (!qword_1EB43AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43AEA0);
  }

  return result;
}

unint64_t sub_1AB31D448()
{
  result = qword_1EB43AEA8;
  if (!qword_1EB43AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43AEA8);
  }

  return result;
}

unint64_t sub_1AB31D4A0()
{
  result = qword_1EB43AEB0;
  if (!qword_1EB43AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43AEB0);
  }

  return result;
}

unint64_t sub_1AB31D4F8()
{
  result = qword_1EB43AEB8;
  if (!qword_1EB43AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43AEB8);
  }

  return result;
}

BOOL sub_1AB31D588(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1AB31D5B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1AB31D5E4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1AB31D6E0(uint64_t a1, uint64_t a2)
{
  if (qword_1EB435678 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB4358E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v20 = sub_1AB0168A8(0, 1, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v19[3] = MEMORY[0x1E69E6158];
  v19[0] = a1;
  v19[1] = a2;
  sub_1AB01522C(v19, v15);
  v16 = 0u;
  v17 = 0u;

  sub_1AB0169C4(v15, &v16);
  v18 = 0;
  v7 = v20;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AB0168A8(0, *(v7 + 2) + 1, 1, v7);
    v20 = v7;
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[40 * v9];
  v11 = v16;
  v12 = v17;
  v10[64] = v18;
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  v20 = v7;
  sub_1AB0167A8(v19);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v5 + 32) = v20;
  *&v16 = v4;
  LOBYTE(v19[0]) = 0;
  OSLogger.log(contentsOf:withLevel:)(v5, v19);
}

uint64_t sub_1AB31D8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB435678 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB4358E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AB4D4720;
  v32 = sub_1AB0168A8(0, 1, 0, MEMORY[0x1E69E7CC0]);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  v10 = MEMORY[0x1E69E6158];
  v31[3] = MEMORY[0x1E69E6158];
  v31[0] = a1;
  v31[1] = a2;
  sub_1AB01522C(v31, v27);
  v28 = 0u;
  v29 = 0u;

  sub_1AB0169C4(v27, &v28);
  v30 = 0;
  v11 = v32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1AB0168A8(0, *(v11 + 2) + 1, 1, v11);
    v32 = v11;
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1AB0168A8((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[40 * v13];
  v15 = v28;
  v16 = v29;
  v14[64] = v30;
  *(v14 + 2) = v15;
  *(v14 + 3) = v16;
  v32 = v11;
  sub_1AB0167A8(v31);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  *(v8 + 32) = v32;
  v18 = sub_1AB461094();
  if (os_log_type_enabled(v7, v18))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v19 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v19[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v19 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v21 = swift_allocObject();
    *(v21 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v28 = v8;
    *(&v28 + 1) = a4;
    *&v29 = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
    sub_1AB016A34();
    v22 = sub_1AB460484();
    v24 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1AB4D4720;
    *(v25 + 56) = v10;
    *(v25 + 64) = sub_1AB016854();
    *(v25 + 32) = v22;
    *(v25 + 40) = v24;
    sub_1AB45FF14("%{public}@", 10, 2, &dword_1AB012000, v7, v18, v25);
  }
}

uint64_t sub_1AB31DC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a3;
  v5[8] = a4;
  v5[5] = a1;
  v5[6] = a2;
  v5[9] = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1AB0D582C, 0, 0);
}

void sub_1AB31DC58(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, void *a3@<X0>)
{
  v4 = [a2 arrayForKey_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4386D8, &qword_1AB4E3930);
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = sub_1AB3E0724;
  v5[4] = 0;
  if (qword_1EB435660 != -1)
  {
    swift_once();
  }

  v6 = qword_1EB435668;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AB4D4720;
  v36 = sub_1AB0168A8(0, 27, 0, MEMORY[0x1E69E7CC0]);
  v8._object = 0x80000001AB509EC0;
  v8._countAndFlagsBits = 0xD00000000000001ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AEC8, &qword_1AB4EAE10);
  v34[0] = v5;
  sub_1AB01522C(v34, v30);
  v31 = 0u;
  v32 = 0u;

  sub_1AB0169C4(v30, &v31);
  v33 = 0;
  v9 = v36;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1AB0168A8(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1AB0168A8((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[40 * v11];
  v13 = v31;
  v14 = v32;
  v12[64] = v33;
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  v36 = v9;
  sub_1AB0167A8(v34);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v7 + 32) = v36;
  *&v31 = v6;
  LOBYTE(v34[0]) = 3;
  OSLogger.log(contentsOf:withLevel:)(v7, v34);

  v16 = sub_1AB0A332C(v5);
  v17 = qword_1EB435668;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1AB4D4720;
  v36 = sub_1AB0168A8(0, 38, 0, MEMORY[0x1E69E7CC0]);
  v19._countAndFlagsBits = 0xD000000000000025;
  v19._object = 0x80000001AB509EE0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  if (v16)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DA8, &qword_1AB4EAC30);
    v21 = v16;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v34[1] = 0;
    v34[2] = 0;
  }

  v34[0] = v21;
  v35 = v20;
  sub_1AB01522C(v34, v30);
  v31 = 0u;
  v32 = 0u;

  sub_1AB0169C4(v30, &v31);
  v33 = 0;
  v22 = v36;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_1AB0168A8(0, *(v22 + 2) + 1, 1, v22);
  }

  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  if (v24 >= v23 >> 1)
  {
    v22 = sub_1AB0168A8((v23 > 1), v24 + 1, 1, v22);
  }

  *(v22 + 2) = v24 + 1;
  v25 = &v22[40 * v24];
  v26 = v31;
  v27 = v32;
  v25[64] = v33;
  *(v25 + 2) = v26;
  *(v25 + 3) = v27;
  v36 = v22;
  sub_1AB0167A8(v34);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v28);
  *(v18 + 32) = v36;
  *&v31 = v17;
  LOBYTE(v34[0]) = 3;
  OSLogger.log(contentsOf:withLevel:)(v18, v34);

  if (v16)
  {
    v29 = sub_1AB3B28D4(v21);
  }

  else
  {
    v29 = 0;
  }

  *a1 = v29;
}

uint64_t PageRenderField<>.callAsFunction(for:at:)(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v7 = sub_1AB45FF84();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a3;
  v11 = *v3;
  v12 = *(v3 + 16);
  v36 = *a3;
  v34 = v11;
  if (qword_1ED4D0060 != -1)
  {
    swift_once();
    v11 = v34;
    v10 = v36;
  }

  v13 = qword_1ED4D3E38;
  *&v40[0] = a1;
  *(&v40[0] + 1) = a2;
  v40[2] = v11;
  v40[1] = v10;
  LOBYTE(v40[3]) = v12;
  sub_1AB320074(v40);
  v14 = memcpy(v39, v40, sizeof(v39));
  v15 = *(v13 + 16);
  MEMORY[0x1EEE9AC00](v14);
  *(&v32 - 2) = v39;

  os_unfair_lock_lock(v15 + 8);
  sub_1AB1EEAC4(v15 + 16);
  os_unfair_lock_unlock(v15 + 8);

  v16 = v34;
  v17 = sub_1AB461614();
  v38 = v36;
  sub_1AB299E24(v17, v18, a1, a2, &v38);

  if (qword_1ED4D0058 != -1)
  {
    swift_once();
  }

  v19 = sub_1AB45FFC4();
  __swift_project_value_buffer(v19, qword_1ED4D3E20);
  MEMORY[0x1AC59BAE0](a1, a2);
  v20 = v35;
  sub_1AB45FF94();
  sub_1AB1EEAE0();
  sub_1AB3201E4();
  sub_1AB0177B8(v21, v22);

  v23 = sub_1AB45FFA4();
  LODWORD(v34) = sub_1AB461244();
  result = sub_1AB461314();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  v32 = v8;
  v33 = v7;
  if ((v12 & 1) == 0)
  {

    if (!v16)
    {
      __break(1u);
LABEL_9:

      return (*(v8 + 8))(v20, v7);
    }

    goto LABEL_14;
  }

  if (v16 >> 32)
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((v16 & 0xFFFFF800) == 0xD800)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v16 >> 16 > 0x10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = &v38;
LABEL_14:
  v25 = *(&v36 + 1);
  v26 = v36;
  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v37 = v28;
  *&v38 = v26;
  *v27 = 134218498;
  *(&v38 + 1) = v25;
  sub_1AB35DE9C();
  *(v27 + 4) = v29;
  *(v27 + 12) = 2080;
  *(v27 + 14) = sub_1AB030D2C(a1, a2, &v37);
  *(v27 + 22) = 2048;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  *(v27 + 24) = v25 / *&qword_1ED4D1F90 + v26;
  v30 = v35;
  v31 = sub_1AB45FF64();
  _os_signpost_emit_with_name_impl(&dword_1AB012000, v23, v34, v31, v16, "%{signpost.description:event_time}lluid=%s, instant=%f", v27, 0x20u);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  MEMORY[0x1AC59F020](v28, -1, -1);
  MEMORY[0x1AC59F020](v27, -1, -1);

  return (*(v32 + 8))(v30, v33);
}

uint64_t PageRenderField<>.startTime(for:at:)(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v7 = sub_1AB45FF84();
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v38 - v10;
  v11 = *a3;
  v12 = *v3;
  v13 = *(v3 + 16);
  v39 = *(v3 + 3);
  v14 = *(v3 + 32);
  v44 = v11;
  v42 = v12;
  if (qword_1ED4D0060 != -1)
  {
    swift_once();
    v12 = v42;
    v11 = v44;
  }

  v15 = qword_1ED4D3E38;
  *&v48[0] = a1;
  *(&v48[0] + 1) = a2;
  v48[2] = v12;
  v48[1] = v11;
  LOBYTE(v48[3]) = v13;
  sub_1AB3225D0(v48);
  v16 = memcpy(v47, v48, sizeof(v47));
  v17 = *(v15 + 16);
  MEMORY[0x1EEE9AC00](v16);
  *(&v38 - 2) = v47;

  os_unfair_lock_lock(v17 + 8);
  sub_1AB1EEC60(v17 + 16);
  os_unfair_lock_unlock(v17 + 8);

  v18 = v42;
  *&v46 = sub_1AB461614();
  *(&v46 + 1) = v19;
  MEMORY[0x1AC59BA20](0x6D69547472617453, 0xE900000000000065);
  v21 = *(&v46 + 1);
  v20 = v46;
  v46 = v44;
  sub_1AB299E24(v20, v21, a1, a2, &v46);

  if ((v14 & 1) == 0)
  {
    if (qword_1EB434B88 != -1)
    {
      v22 = swift_once();
    }

    v23 = qword_1EB46C200;
    MEMORY[0x1EEE9AC00](v22);
    *(&v38 - 4) = a1;
    *(&v38 - 3) = a2;
    *(&v38 - 2) = v39;
    os_unfair_lock_lock(v23 + 10);
    sub_1AB3226AC(&v23[4]);
    os_unfair_lock_unlock(v23 + 10);
  }

  v24 = v43;
  if (qword_1ED4D0058 != -1)
  {
    swift_once();
  }

  v25 = sub_1AB45FFC4();
  __swift_project_value_buffer(v25, qword_1ED4D3E20);
  MEMORY[0x1AC59BAE0](a1, a2);
  sub_1AB45FF94();
  sub_1AB1EEAE0();
  sub_1AB3201E4();
  sub_1AB0177B8(v26, v27);

  v28 = sub_1AB45FFA4();
  v29 = sub_1AB461234();
  result = sub_1AB461314();
  if ((result & 1) == 0)
  {
    goto LABEL_13;
  }

  v38 = v7;
  LODWORD(v42) = v29;
  if ((v13 & 1) == 0)
  {

    if (!v18)
    {
      __break(1u);
LABEL_13:

LABEL_21:
      v37 = v41;
      (*(v41 + 16))(v40, v24, v7);
      sub_1AB460014();
      swift_allocObject();
      sub_1AB460004();

      return (*(v37 + 8))(v24, v7);
    }

LABEL_18:
    v31 = *(&v44 + 1);
    v32 = v44;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v45 = v34;
    *&v46 = v32;
    *v33 = 134218498;
    *(&v46 + 1) = v31;
    sub_1AB35DE9C();
    *(v33 + 4) = v35;
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_1AB030D2C(a1, a2, &v45);
    *(v33 + 22) = 2048;
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    *(v33 + 24) = v31 / *&qword_1ED4D1F90 + v32;
    v24 = v43;
    v36 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v28, v42, v36, v18, "%{signpost.description:begin_time}lluid=%s, instant=%f", v33, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1AC59F020](v34, -1, -1);
    MEMORY[0x1AC59F020](v33, -1, -1);

    v7 = v38;
    goto LABEL_21;
  }

  if (v18 >> 32)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v18 & 0xFFFFF800) != 0xD800)
  {
    if (v18 >> 16 <= 0x10)
    {

      v18 = &v46;
      goto LABEL_18;
    }

    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t PageRenderField<>.callAsFunction(_:for:at:)(void *a1, uint64_t a2, unint64_t a3, __int128 *a4)
{
  v9 = sub_1AB45FF84();
  v44 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a4;
  v13 = *v4;
  v14 = *(v4 + 16);
  v47 = *a4;
  v45 = v13;
  if (qword_1ED4D0060 != -1)
  {
    swift_once();
    v13 = v45;
    v12 = v47;
  }

  v15 = qword_1ED4D3E38;
  *&v51[0] = a2;
  *(&v51[0] + 1) = a3;
  v51[1] = v12;
  v51[2] = v13;
  LOBYTE(v52) = v14;
  *(&v52 + 1) = a1;
  v53[0] = v51[0];
  v53[1] = v12;
  v53[2] = v13;
  v53[3] = v52;
  sub_1AB3226CC(v53);
  v16 = memcpy(v50, v53, sizeof(v50));
  v46 = a2;
  v17 = *(v15 + 16);
  MEMORY[0x1EEE9AC00](v16);
  *(&v41 - 2) = v50;

  v18 = a1;
  os_unfair_lock_lock(v17 + 8);
  sub_1AB1EEC60(v17 + 16);
  os_unfair_lock_unlock(v17 + 8);
  sub_1AB014AC0(v51, &qword_1EB43AED0, &qword_1AB4EAE40);
  v19 = v46;
  v20 = v45;
  v21 = sub_1AB461614();
  v49 = v47;
  sub_1AB299E24(v21, v22, v19, a3, &v49);

  if (qword_1ED4D0058 != -1)
  {
    swift_once();
  }

  v23 = sub_1AB45FFC4();
  __swift_project_value_buffer(v23, qword_1ED4D3E20);
  MEMORY[0x1AC59BAE0](v19, a3);
  sub_1AB45FF94();
  sub_1AB1EEAE0();
  sub_1AB3201E4();
  sub_1AB0177B8(v24, v25);

  v26 = a1;
  v27 = v11;
  v28 = sub_1AB45FFA4();
  v29 = sub_1AB461244();
  result = sub_1AB461314();
  if ((result & 1) == 0)
  {

    return (*(v44 + 8))(v27, v9);
  }

  *&v45 = v27;
  v43 = v9;
  v42 = v29;
  if (v14)
  {
    if (!(v20 >> 32))
    {
      if ((v20 & 0xFFFFF800) == 0xD800)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if (v20 >> 16 <= 0x10)
      {

        v41 = &v49;
        goto LABEL_14;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v20)
  {
    __break(1u);
    goto LABEL_18;
  }

  v41 = v20;
LABEL_14:
  v31 = *(&v47 + 1);
  v32 = v47;
  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v48 = v35;
  *&v49 = v32;
  *v33 = 134218754;
  *(&v49 + 1) = v31;
  sub_1AB35DE9C();
  *(v33 + 4) = v36;
  *(v33 + 12) = 2080;
  *(v33 + 14) = sub_1AB030D2C(v46, a3, &v48);
  *(v33 + 22) = 2048;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  *(v33 + 24) = v31 / *&qword_1ED4D1F90 + v32;
  *(v33 + 32) = 2112;
  v37 = a1;
  v38 = _swift_stdlib_bridgeErrorToNSError();
  *(v33 + 34) = v38;
  *v34 = v38;
  v39 = v45;
  v40 = sub_1AB45FF64();
  _os_signpost_emit_with_name_impl(&dword_1AB012000, v28, v42, v40, v41, "%{signpost.description:event_time}lluid=%s, instant=%f, value=%@", v33, 0x2Au);
  sub_1AB014AC0(v34, &qword_1EB43AED8, &unk_1AB4EAE48);
  MEMORY[0x1AC59F020](v34, -1, -1);
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  MEMORY[0x1AC59F020](v35, -1, -1);
  MEMORY[0x1AC59F020](v33, -1, -1);

  return (*(v44 + 8))(v39, v43);
}

uint64_t PageRenderField<>.endTime(for:at:)(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v7 = sub_1AB45FFD4();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1AB45FF84();
  v63 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v16 = *a3;
  v17 = *v3;
  v18 = *(v3 + 16);
  v58 = *(v3 + 3);
  v19 = *(v3 + 32);
  v62 = v16;
  v59 = v17;
  if (qword_1ED4D0060 != -1)
  {
    swift_once();
    v17 = v59;
    v16 = v62;
  }

  v20 = qword_1ED4D3E38;
  *&v68[0] = a1;
  *(&v68[0] + 1) = a2;
  v68[2] = v17;
  v68[1] = v16;
  LOBYTE(v68[3]) = v18;
  sub_1AB3227A8(v68);
  v21 = memcpy(v67, v68, sizeof(v67));
  v64 = a1;
  v22 = *(v20 + 16);
  MEMORY[0x1EEE9AC00](v21);
  *(&v53 - 2) = v67;

  os_unfair_lock_lock(v22 + 8);
  sub_1AB1EEC60(v22 + 16);
  os_unfair_lock_unlock(v22 + 8);

  v23 = v64;
  *&v66 = sub_1AB461614();
  *(&v66 + 1) = v24;
  MEMORY[0x1AC59BA20](0x656D6954646E45, 0xE700000000000000);
  v26 = *(&v66 + 1);
  v25 = v66;
  v66 = v62;
  sub_1AB299E24(v25, v26, v23, a2, &v66);

  if ((v19 & 1) == 0)
  {
    if (qword_1EB434B88 != -1)
    {
      v27 = swift_once();
    }

    v28 = qword_1EB46C200;
    MEMORY[0x1EEE9AC00](v27);
    *(&v53 - 4) = v23;
    *(&v53 - 3) = a2;
    *(&v53 - 2) = v58;
    os_unfair_lock_lock(v28 + 10);
    sub_1AB322884(&v28[4]);
    os_unfair_lock_unlock(v28 + 10);
  }

  v29 = v63;
  if (qword_1ED4D0058 != -1)
  {
    swift_once();
  }

  v30 = sub_1AB45FFC4();
  __swift_project_value_buffer(v30, qword_1ED4D3E20);
  MEMORY[0x1AC59BAE0](v64, a2);
  sub_1AB45FF94();
  v31 = v61;
  (*(v29 + 16))(v12, v15, v61);
  sub_1AB460014();
  swift_allocObject();
  sub_1AB460004();
  v33 = *(v29 + 8);
  v32 = v29 + 8;
  v34 = v15;
  v35 = v33;
  v33(v34, v31);
  sub_1AB1EEAE0();
  sub_1AB3201E4();
  sub_1AB0177B8(v36, v37);

  v38 = sub_1AB45FFA4();
  v39 = v60;
  sub_1AB45FFF4();
  LODWORD(v58) = sub_1AB461224();
  result = sub_1AB461314();
  if ((result & 1) == 0)
  {
    goto LABEL_13;
  }

  v54 = v35;
  if ((v18 & 1) == 0)
  {

    if (!v59)
    {
      __break(1u);
LABEL_13:

      return v35(v39, v31);
    }

    goto LABEL_18;
  }

  if (DWORD1(v59))
  {
    __break(1u);
    goto LABEL_25;
  }

  if ((v59 & 0xFFFFF800) == 0xD800)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  if (v59 >> 16 > 0x10)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *&v59 = &v66;
LABEL_18:
  v63 = v32;
  v41 = *(&v62 + 1);
  v42 = v62;

  v43 = v55;
  sub_1AB460024();

  v45 = v56;
  v44 = v57;
  if ((*(v56 + 88))(v43, v57) == *MEMORY[0x1E69E93E8])
  {
    v46 = 0;
    v47 = 0;
    *&v62 = "[Error] Interval already ended";
  }

  else
  {
    (*(v45 + 8))(v43, v44);
    *&v62 = "%{signpost.description:end_time}lluid=%s, instant=%f";
    v47 = 2;
    v46 = 3;
  }

  v48 = swift_slowAlloc();
  v49 = swift_slowAlloc();
  v65 = v49;
  *&v66 = v42;
  *v48 = v47;
  *(v48 + 1) = v46;
  *(v48 + 2) = 2048;
  *(&v66 + 1) = v41;
  sub_1AB35DE9C();
  *(v48 + 4) = v50;
  *(v48 + 12) = 2080;
  *(v48 + 14) = sub_1AB030D2C(v64, a2, &v65);
  *(v48 + 22) = 2048;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  *(v48 + 24) = v41 / *&qword_1ED4D1F90 + v42;
  v51 = v60;
  v52 = sub_1AB45FF64();
  _os_signpost_emit_with_name_impl(&dword_1AB012000, v38, v58, v52, v59, v62, v48, 0x20u);
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  MEMORY[0x1AC59F020](v49, -1, -1);
  MEMORY[0x1AC59F020](v48, -1, -1);

  return v54(v51, v61);
}

uint64_t PageRenderField<>.callAsFunction(_:for:at:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v54 = a6;
  v55 = a1;
  v56 = a2;
  v9 = *(a5 + 16);
  v49 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v53 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45FF84();
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a4;
  v13 = a4[1];
  v15 = *v6;
  v16 = *(v6 + 8);
  v17 = *(v6 + 16);
  if (qword_1ED4D0060 != -1)
  {
    swift_once();
  }

  v18 = qword_1ED4D3E38;

  sub_1AB4608B4();
  *&v19 = v15;
  v48 = v16;
  *(&v19 + 1) = v16;
  *&v61[0] = v56;
  *(&v61[0] + 1) = a3;
  *&v20 = v14;
  *(&v20 + 1) = v13;
  v61[1] = v20;
  v61[2] = v19;
  LOBYTE(v62) = v17;
  *(&v62 + 1) = v58;
  v63 = v59;
  *&v64[4] = v59;
  v64[0] = v61[0];
  v64[1] = v20;
  v64[2] = v19;
  v64[3] = v62;
  sub_1AB1EE9E4(v64);
  v21 = memcpy(v60, v64, sizeof(v60));
  v52 = v9;
  v22 = *(v18 + 16);
  MEMORY[0x1EEE9AC00](v21);
  *(&v44 - 2) = v60;
  os_unfair_lock_lock(v22 + 8);
  sub_1AB1EEC60(v22 + 16);
  v23 = v56;
  os_unfair_lock_unlock(v22 + 8);
  sub_1AB014AC0(v61, &unk_1EB438560, &qword_1AB4DCF90);
  v51 = v15;
  v24 = sub_1AB461614();
  v45 = v14;
  v58 = v14;
  v59 = v13;
  v48 = v13;
  sub_1AB299E24(v24, v25, v23, a3, &v58);

  if (qword_1ED4D0058 != -1)
  {
    swift_once();
  }

  v26 = sub_1AB45FFC4();
  __swift_project_value_buffer(v26, qword_1ED4D3E20);
  MEMORY[0x1AC59BAE0](v23, a3);
  v27 = v50;
  sub_1AB45FF94();
  sub_1AB1EEAE0();
  sub_1AB3201E4();
  sub_1AB0177B8(v28, v29);
  v30 = v49;
  v32 = v52;
  v31 = v53;
  (*(v49 + 16))(v53, v55, v52);

  v33 = sub_1AB45FFA4();
  LODWORD(v55) = sub_1AB461244();
  result = sub_1AB461314();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((v17 & 1) == 0)
  {

    v35 = v45;
    v36 = v48;
    if (!v51)
    {
      __break(1u);
LABEL_9:

      (*(v30 + 8))(v31, v32);
      return (*(v46 + 8))(v27, v47);
    }

LABEL_14:
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v57[0] = v38;
    *v37 = 134218754;
    v58 = v35;
    v59 = v36;
    sub_1AB35DE9C();
    *(v37 + 4) = v39;
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_1AB030D2C(v56, a3, v57);
    *(v37 + 22) = 2048;
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    *(v37 + 24) = v36 / *&qword_1ED4D1F90 + v35;
    *(v37 + 32) = 2080;
    v41 = v52;
    v40 = v53;
    sub_1AB4608B4();
    (*(v30 + 8))(v40, v41);
    v42 = sub_1AB030D2C(v58, v59, v57);

    *(v37 + 34) = v42;
    v43 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v33, v55, v43, v51, "%{signpost.description:event_time}lluid=%s, instant=%f, value=%s", v37, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1AC59F020](v38, -1, -1);
    MEMORY[0x1AC59F020](v37, -1, -1);

    return (*(v46 + 8))(v27, v47);
  }

  v35 = v45;
  v36 = v48;
  if (v51 >> 32)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v51 & 0xFFFFF800) != 0xD800)
  {
    if (v51 >> 16 <= 0x10)
    {

      v51 = &v58;
      goto LABEL_14;
    }

    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t PageRenderField<>.callAsFunction(_:for:at:)(int a1, uint64_t a2, unint64_t a3, __int128 *a4)
{
  v9 = sub_1AB45FF84();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a4;
  v13 = *v4;
  v14 = *(v4 + 16);
  v40 = *a4;
  v38 = v13;
  if (qword_1ED4D0060 != -1)
  {
    swift_once();
    v13 = v38;
    v12 = v40;
  }

  v15 = qword_1ED4D3E38;
  v37 = a1;
  *&v44[0] = a2;
  *(&v44[0] + 1) = a3;
  v44[2] = v13;
  v44[1] = v12;
  LOBYTE(v44[3]) = v14;
  BYTE1(v44[3]) = a1 & 1;
  sub_1AB3228A4(v44);
  v16 = memcpy(v43, v44, sizeof(v43));
  v17 = *(v15 + 16);
  MEMORY[0x1EEE9AC00](v16);
  *(&v34 - 2) = v43;

  os_unfair_lock_lock(v17 + 8);
  sub_1AB1EEC60(v17 + 16);
  os_unfair_lock_unlock(v17 + 8);

  v18 = v38;
  v19 = sub_1AB461614();
  v42 = v40;
  sub_1AB299E24(v19, v20, a2, a3, &v42);

  if (qword_1ED4D0058 != -1)
  {
    swift_once();
  }

  v21 = sub_1AB45FFC4();
  __swift_project_value_buffer(v21, qword_1ED4D3E20);
  MEMORY[0x1AC59BAE0](a2, a3);
  v22 = v39;
  sub_1AB45FF94();
  sub_1AB1EEAE0();
  sub_1AB3201E4();
  sub_1AB0177B8(v23, v24);

  v25 = sub_1AB45FFA4();
  LODWORD(v38) = sub_1AB461244();
  result = sub_1AB461314();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  v35 = v10;
  v36 = v9;
  if ((v14 & 1) == 0)
  {

    if (!v18)
    {
      __break(1u);
LABEL_9:

      return (*(v10 + 8))(v22, v9);
    }

    goto LABEL_14;
  }

  if (v18 >> 32)
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((v18 & 0xFFFFF800) == 0xD800)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v18 >> 16 > 0x10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = &v42;
LABEL_14:
  v27 = *(&v40 + 1);
  v28 = v40;
  v29 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v41 = v30;
  *&v42 = v28;
  *v29 = 134218754;
  *(&v42 + 1) = v27;
  sub_1AB35DE9C();
  *(v29 + 4) = v31;
  *(v29 + 12) = 2080;
  *(v29 + 14) = sub_1AB030D2C(a2, a3, &v41);
  *(v29 + 22) = 2048;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  *(v29 + 24) = v27 / *&qword_1ED4D1F90 + v28;
  *(v29 + 32) = 1024;
  *(v29 + 34) = v37 & 1;
  v32 = v39;
  v33 = sub_1AB45FF64();
  _os_signpost_emit_with_name_impl(&dword_1AB012000, v25, v38, v33, v18, "%{signpost.description:event_time}lluid=%s, instant=%f, value=%{BOOL}d", v29, 0x26u);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  MEMORY[0x1AC59F020](v30, -1, -1);
  MEMORY[0x1AC59F020](v29, -1, -1);

  return (*(v35 + 8))(v32, v36);
}

uint64_t sub_1AB320074(uint64_t result)
{
  v1 = *(result + 376);
  v2 = *(result + 96) & 1;
  v3 = *(result + 112) & 1;
  v4 = *(result + 128) & 0xFF01;
  v5 = *(result + 144) & 1;
  v6 = *(result + 160) & 1;
  v7 = *(result + 176) & 1;
  v8 = *(result + 192) & 1;
  v9 = *(result + 208) & 1;
  v10 = *(result + 224) & 1;
  v11 = *(result + 240) & 1;
  v12 = *(result + 256) & 1;
  v13 = *(result + 272) & 1;
  v14 = *(result + 288) & 0xFF01;
  v15 = *(result + 304) & 1;
  v16 = *(result + 320) & 1;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v2;
  *(result + 112) = v3;
  *(result + 128) = v4;
  *(result + 144) = v5;
  *(result + 160) = v6;
  *(result + 176) = v7;
  *(result + 192) = v8;
  *(result + 208) = v9;
  *(result + 224) = v10;
  *(result + 240) = v11;
  *(result + 256) = v12;
  *(result + 272) = v13;
  *(result + 288) = v14;
  *(result + 304) = v15;
  *(result + 320) = v16;
  *(result + 376) = v1;
  return result;
}

void PageRenderField<>.init(timestampWithName:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  sub_1AB461614();
  v8 = sub_1AB460794();

  if ((v8 & 1) == 0)
  {
    sub_1AB40D090("JetEngine/PageRenderField.swift", 0x1FuLL, 2, 0x2FuLL);
  }

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
}

void PageRenderField<>.init(intervalWithBaseName:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  sub_1AB461614();
  v8 = sub_1AB460794();

  if (v8)
  {
    sub_1AB40C4C0("JetEngine/PageRenderField.swift", 0x1FuLL, 2, 0x52uLL);
  }

  sub_1AB461614();
  v9 = sub_1AB460794();

  if (v9)
  {
    sub_1AB40CAA8("JetEngine/PageRenderField.swift", 0x1FuLL, 2, 0x54uLL);
  }

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
}

void sub_1AB320354(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  sub_1AB461614();
  v10 = sub_1AB460794();

  if (v10)
  {
    sub_1AB40C4C0("JetEngine/PageRenderField.swift", 0x1FuLL, 2, 0x52uLL);
  }

  sub_1AB461614();
  v11 = sub_1AB460794();

  if (v11)
  {
    sub_1AB40CAA8("JetEngine/PageRenderField.swift", 0x1FuLL, 2, 0x54uLL);
  }

  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = v6;
  *(a5 + 24) = a4;
  *(a5 + 32) = 0;
}

uint64_t PageRenderField<>.callAsFunction(_:for:at:)(uint64_t a1, unint64_t a2, __int128 *a3, double a4)
{
  v9 = sub_1AB45FF84();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a3;
  v13 = *v4;
  v14 = *(v4 + 16);
  v38 = *a3;
  v36 = v13;
  if (qword_1ED4D0060 != -1)
  {
    swift_once();
    v13 = v36;
    v12 = v38;
  }

  v15 = qword_1ED4D3E38;
  *&v42[0] = a1;
  *(&v42[0] + 1) = a2;
  v42[2] = v13;
  v42[1] = v12;
  LOBYTE(v42[3]) = v14;
  *(&v42[3] + 1) = a4;
  sub_1AB322980(v42);
  v16 = memcpy(v41, v42, sizeof(v41));
  v17 = *(v15 + 16);
  MEMORY[0x1EEE9AC00](v16);
  *(&v34 - 2) = v41;

  os_unfair_lock_lock(v17 + 8);
  sub_1AB1EEC60(v17 + 16);
  os_unfair_lock_unlock(v17 + 8);

  v18 = v36;
  v19 = sub_1AB461614();
  v40 = v38;
  sub_1AB299E24(v19, v20, a1, a2, &v40);

  if (qword_1ED4D0058 != -1)
  {
    swift_once();
  }

  v21 = sub_1AB45FFC4();
  __swift_project_value_buffer(v21, qword_1ED4D3E20);
  MEMORY[0x1AC59BAE0](a1, a2);
  v22 = v37;
  sub_1AB45FF94();
  sub_1AB1EEAE0();
  sub_1AB3201E4();
  sub_1AB0177B8(v23, v24);

  v25 = sub_1AB45FFA4();
  LODWORD(v36) = sub_1AB461244();
  result = sub_1AB461314();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  v34 = v10;
  v35 = v9;
  if ((v14 & 1) == 0)
  {

    if (!v18)
    {
      __break(1u);
LABEL_9:

      return (*(v10 + 8))(v22, v9);
    }

    goto LABEL_14;
  }

  if (v18 >> 32)
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((v18 & 0xFFFFF800) == 0xD800)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v18 >> 16 > 0x10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = &v40;
LABEL_14:
  v27 = *(&v38 + 1);
  v28 = v38;
  v29 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v39 = v30;
  *&v40 = v28;
  *v29 = 134218754;
  *(&v40 + 1) = v27;
  sub_1AB35DE9C();
  *(v29 + 4) = v31;
  *(v29 + 12) = 2080;
  *(v29 + 14) = sub_1AB030D2C(a1, a2, &v39);
  *(v29 + 22) = 2048;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  *(v29 + 24) = v27 / *&qword_1ED4D1F90 + v28;
  *(v29 + 32) = 2048;
  *(v29 + 34) = a4;
  v32 = v37;
  v33 = sub_1AB45FF64();
  _os_signpost_emit_with_name_impl(&dword_1AB012000, v25, v36, v33, v18, "%{signpost.description:event_time}lluid=%s, instant=%f, value=%f", v29, 0x2Au);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  MEMORY[0x1AC59F020](v30, -1, -1);
  MEMORY[0x1AC59F020](v29, -1, -1);

  return (*(v34 + 8))(v32, v35);
}

uint64_t PageRenderField<>.callAsFunction(_:for:at:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, __int128 *a5)
{
  v40 = sub_1AB45FF84();
  v11 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a5;
  v14 = *v5;
  v15 = *(v5 + 16);
  v43 = *a5;
  v41 = v14;
  if (qword_1ED4D0060 != -1)
  {
    swift_once();
    v14 = v41;
    v13 = v43;
  }

  v16 = qword_1ED4D3E38;
  *&v47[0] = a3;
  *(&v47[0] + 1) = a4;
  v47[1] = v13;
  v47[2] = v14;
  LOBYTE(v48) = v15;
  v39 = a1;
  *(&v48 + 1) = a1;
  v49 = a2;
  *&v50[4] = a2;
  v50[2] = v14;
  v50[3] = v48;
  v50[0] = v47[0];
  v50[1] = v13;
  sub_1AB1EE9E4(v50);
  v17 = memcpy(v46, v50, sizeof(v46));
  v18 = *(v16 + 16);
  MEMORY[0x1EEE9AC00](v17);
  *&v36[-16] = v46;

  os_unfair_lock_lock(v18 + 8);
  sub_1AB1EEC60(v18 + 16);
  os_unfair_lock_unlock(v18 + 8);
  sub_1AB014AC0(v47, &unk_1EB438560, &qword_1AB4DCF90);
  v19 = v41;
  v20 = sub_1AB461614();
  v45 = v43;
  sub_1AB299E24(v20, v21, a3, a4, &v45);

  if (qword_1ED4D0058 != -1)
  {
    swift_once();
  }

  v22 = sub_1AB45FFC4();
  __swift_project_value_buffer(v22, qword_1ED4D3E20);
  *&v41 = a3;
  MEMORY[0x1AC59BAE0](a3, a4);
  v23 = v42;
  sub_1AB45FF94();
  sub_1AB1EEAE0();
  sub_1AB3201E4();
  sub_1AB0177B8(v24, v25);

  v26 = sub_1AB45FFA4();
  v27 = sub_1AB461244();
  result = sub_1AB461314();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  v38 = v11;
  v37 = v27;
  if ((v15 & 1) == 0)
  {

    if (!v19)
    {
      __break(1u);
LABEL_9:

      return (*(v11 + 8))(v23, v40);
    }

    goto LABEL_14;
  }

  if (v19 >> 32)
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((v19 & 0xFFFFF800) == 0xD800)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v19 >> 16 > 0x10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = &v45;
LABEL_14:
  v29 = *(&v43 + 1);
  v30 = v43;
  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  v44 = v32;
  *&v45 = v30;
  *v31 = 134218754;
  *(&v45 + 1) = v29;
  sub_1AB35DE9C();
  *(v31 + 4) = v33;
  *(v31 + 12) = 2080;
  *(v31 + 14) = sub_1AB030D2C(v41, a4, &v44);
  *(v31 + 22) = 2048;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  *(v31 + 24) = v29 / *&qword_1ED4D1F90 + v30;
  *(v31 + 32) = 2080;
  *(v31 + 34) = sub_1AB030D2C(v39, a2, &v44);
  v34 = v42;
  v35 = sub_1AB45FF64();
  _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v37, v35, v19, "%{signpost.description:event_time}lluid=%s, instant=%f, value=%s", v31, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x1AC59F020](v32, -1, -1);
  MEMORY[0x1AC59F020](v31, -1, -1);

  return (*(v38 + 8))(v34, v40);
}

void PageRenderField<>.init(enum:withName:)(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
}

uint64_t PageRenderField<>.init(requestWithName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
  return result;
}

uint64_t PageRenderField<>.callAsFunction(_:for:at:)(const void *a1, uint64_t a2, unint64_t a3, __int128 *a4)
{
  v9 = sub_1AB45FF84();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v58, a1, sizeof(v58));
  v12 = *a4;
  v13 = *v4;
  v14 = *(v4 + 16);
  v54 = *a4;
  v52 = v13;
  if (qword_1ED4D0060 != -1)
  {
    swift_once();
    v13 = v52;
    v12 = v54;
  }

  v15 = qword_1ED4D3E38;
  *&v59[0] = a2;
  *(&v59[0] + 1) = a3;
  v59[2] = v13;
  v59[1] = v12;
  LOBYTE(v59[3]) = v14;
  memcpy(&v59[3] + 8, a1, 0x158uLL);
  memcpy(v60, v59, 0x190uLL);
  sub_1AB322A5C(v60);
  v16 = memcpy(v57, v60, sizeof(v57));
  v17 = *(v15 + 16);
  MEMORY[0x1EEE9AC00](v16);
  *(&v50 - 2) = v57;

  sub_1AB0B724C(v58, v56);
  os_unfair_lock_lock(v17 + 8);
  sub_1AB1EEC60(v17 + 16);
  os_unfair_lock_unlock(v17 + 8);
  sub_1AB014AC0(v59, &qword_1EB43AEE0, &qword_1AB4EAE58);
  v18 = v52;
  v19 = sub_1AB461614();
  v56[0] = v54;
  sub_1AB299E24(v19, v20, a2, a3, v56);

  if (qword_1ED4D0058 != -1)
  {
    swift_once();
  }

  v21 = sub_1AB45FFC4();
  __swift_project_value_buffer(v21, qword_1ED4D3E20);
  MEMORY[0x1AC59BAE0](a2, a3);
  v22 = v53;
  sub_1AB45FF94();
  sub_1AB1EEAE0();
  sub_1AB3201E4();
  sub_1AB0177B8(v23, v24);
  sub_1AB0B724C(v58, v56);

  sub_1AB0B724C(v58, v56);
  v25 = sub_1AB45FFA4();
  LODWORD(v52) = sub_1AB461244();
  result = sub_1AB461314();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  v50 = v10;
  v51 = v9;
  if ((v14 & 1) == 0)
  {

    if (!v18)
    {
      __break(1u);
LABEL_9:

      sub_1AB0B7368(v58);

      sub_1AB0B7368(v58);
      return (*(v10 + 8))(v22, v9);
    }

    goto LABEL_14;
  }

  if (v18 >> 32)
  {
    __break(1u);
    goto LABEL_48;
  }

  if ((v18 & 0xFFFFF800) == 0xD800)
  {
LABEL_49:
    __break(1u);
    return result;
  }

  if (v18 >> 16 > 0x10)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v18 = v56;
LABEL_14:
  v27 = *(&v54 + 1);
  v28 = v54;
  v29 = swift_slowAlloc();
  *&v54 = swift_slowAlloc();
  v55[0] = v54;
  *v29 = 134221058;
  *&v56[0] = v28;
  *(&v56[0] + 1) = v27;
  sub_1AB35DE9C();
  *(v29 + 4) = v30;
  *(v29 + 12) = 2080;
  *(v29 + 14) = sub_1AB030D2C(a2, a3, v55);
  *(v29 + 22) = 2048;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  *(v29 + 24) = v27 / *&qword_1ED4D1F90 + v28;
  *(v29 + 32) = 2080;
  if (v58[1])
  {
    v31 = v58[0];
  }

  else
  {
    v31 = 0;
  }

  if (v58[1])
  {
    v32 = v58[1];
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  v33 = sub_1AB030D2C(v31, v32, v55);

  *(v29 + 34) = v33;
  *(v29 + 42) = 2080;
  if (v58[3])
  {
    v34 = v58[2];
  }

  else
  {
    v34 = 0;
  }

  if (v58[3])
  {
    v35 = v58[3];
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  v36 = sub_1AB030D2C(v34, v35, v55);

  *(v29 + 44) = v36;
  *(v29 + 52) = 2048;
  v37 = *&v58[4];
  if (LOBYTE(v58[5]))
  {
    v37 = 0.0;
  }

  *(v29 + 54) = v37;
  *(v29 + 62) = 2048;
  v38 = *&v58[6];
  if (LOBYTE(v58[7]))
  {
    v38 = 0.0;
  }

  *(v29 + 64) = v38;
  *(v29 + 72) = 2048;
  v39 = *&v58[8];
  if (LOBYTE(v58[9]))
  {
    v39 = 0.0;
  }

  *(v29 + 74) = v39;
  *(v29 + 82) = 1024;
  sub_1AB0B7368(v58);
  v40 = v51;
  v41 = BYTE1(v58[9]) != 2 && (v58[9] & 0x100) != 0;
  v42 = v50;
  *(v29 + 84) = v41;
  sub_1AB0B7368(v58);
  *(v29 + 88) = 2048;
  v43 = *&v58[10];
  if (LOBYTE(v58[11]))
  {
    v43 = 0.0;
  }

  *(v29 + 90) = v43;
  *(v29 + 98) = 2048;
  v44 = *&v58[12];
  if (LOBYTE(v58[13]))
  {
    v44 = 0.0;
  }

  *(v29 + 100) = v44;
  *(v29 + 108) = 2048;
  v45 = *&v58[14];
  if (LOBYTE(v58[15]))
  {
    v45 = 0.0;
  }

  *(v29 + 110) = v45;
  *(v29 + 118) = 2048;
  v46 = *&v58[16];
  if (LOBYTE(v58[17]))
  {
    v46 = 0.0;
  }

  *(v29 + 120) = v46;
  v47 = v53;
  v48 = sub_1AB45FF64();
  _os_signpost_emit_with_name_impl(&dword_1AB012000, v25, v52, v48, v18, "%{signpost.description:event_time}lluid=%s, instant=%f, clientCorrelationKey=%s, pageURL=%s, requestStartTime=%f, responseStartTime=%f, responseEndTime=%f, responseWasCached=%{BOOL}d, parseStartTime=%f, parseEndTime=%f, modelConstructionStartTime=%f, modelConstructionEndTime=%f", v29, 0x80u);
  v49 = v54;
  swift_arrayDestroy();
  MEMORY[0x1AC59F020](v49, -1, -1);
  MEMORY[0x1AC59F020](v29, -1, -1);

  return (*(v42 + 8))(v47, v40);
}

uint64_t PagePreloadStatus.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

JetEngine::PageInterruptReason_optional __swiftcall PageInterruptReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1AB4619B4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PageInterruptReason.rawValue.getter()
{
  v1 = 0x657373696D736964;
  v2 = 0x6669636570736E75;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x756F72676B636162;
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

uint64_t sub_1AB32164C()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB321724(uint64_t a1)
{
  sub_1AB460684();
}

uint64_t sub_1AB3217E8(uint64_t a1)
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

void sub_1AB3218C8(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x657373696D736964;
  v4 = 0xEB00000000646569;
  v5 = 0x6669636570736E75;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000001AB4FE3A0;
  }

  if (*v1)
  {
    v3 = 0x756F72676B636162;
    v2 = 0xEA0000000000646ELL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void sub_1AB32195C()
{
  sub_1AB461614();
  v0 = sub_1AB460794();

  if ((v0 & 1) == 0)
  {
    sub_1AB40D090("JetEngine/PageRenderField.swift", 0x1FuLL, 2, 0x2FuLL);
  }

  *&xmmword_1ED4D3DD0 = "pageRequestTime";
  *(&xmmword_1ED4D3DD0 + 1) = 15;
  byte_1ED4D3DE0 = 2;
  qword_1ED4D3DE8 = 0;
  byte_1ED4D3DF0 = 1;
}

void sub_1AB321A00()
{
  sub_1AB461614();
  v0 = sub_1AB460794();

  if ((v0 & 1) == 0)
  {
    sub_1AB40D090("JetEngine/PageRenderField.swift", 0x1FuLL, 2, 0x2FuLL);
  }

  *&xmmword_1ED4D0000 = "interstitialPageAppearTime";
  *(&xmmword_1ED4D0000 + 1) = 26;
  byte_1ED4D0010 = 2;
  qword_1ED4D0018 = 0;
  byte_1ED4D0020 = 1;
}

double static PageRenderField<>._interstitialPageAppearTime.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ED4CFFF8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = byte_1ED4D0010;
  v2 = qword_1ED4D0018;
  v3 = byte_1ED4D0020;
  result = *&xmmword_1ED4D0000;
  *a1 = xmmword_1ED4D0000;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  return result;
}

void sub_1AB321B24()
{
  sub_1AB461614();
  v0 = sub_1AB460794();

  if ((v0 & 1) == 0)
  {
    sub_1AB40D090("JetEngine/PageRenderField.swift", 0x1FuLL, 2, 0x2FuLL);
  }

  *&xmmword_1ED4D3DF8 = "pageAppearTime";
  *(&xmmword_1ED4D3DF8 + 1) = 14;
  byte_1ED4D3E08 = 2;
  qword_1ED4D3E10 = 0;
  byte_1ED4D3E18 = 1;
}

void sub_1AB321BC8()
{
  sub_1AB461614();
  v0 = sub_1AB460794();

  if ((v0 & 1) == 0)
  {
    sub_1AB40D090("JetEngine/PageRenderField.swift", 0x1FuLL, 2, 0x2FuLL);
  }

  *&xmmword_1ED4D3DA8 = "pageUserInteractiveTime";
  *(&xmmword_1ED4D3DA8 + 1) = 23;
  byte_1ED4D3DB8 = 2;
  qword_1ED4D3DC0 = 0;
  byte_1ED4D3DC8 = 1;
}

void sub_1AB321C6C()
{
  sub_1AB461614();
  v0 = sub_1AB460794();

  if ((v0 & 1) == 0)
  {
    sub_1AB40D090("JetEngine/PageRenderField.swift", 0x1FuLL, 2, 0x2FuLL);
  }

  *&xmmword_1ED4D3D58 = "pageEndTime";
  *(&xmmword_1ED4D3D58 + 1) = 11;
  byte_1ED4D3D68 = 2;
  qword_1ED4D3D70 = 0;
  byte_1ED4D3D78 = 1;
}

void sub_1AB321D10()
{
  sub_1AB461614();
  v0 = sub_1AB460794();

  if ((v0 & 1) == 0)
  {
    sub_1AB40D090("JetEngine/PageRenderField.swift", 0x1FuLL, 2, 0x2FuLL);
  }

  *&xmmword_1ED4CFE10 = "pageInterruptTime";
  *(&xmmword_1ED4CFE10 + 1) = 17;
  byte_1ED4CFE20 = 2;
  qword_1ED4CFE28 = 0;
  byte_1ED4CFE30 = 1;
}

double static PageRenderField<>.pageInterruptTime.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ED4CFE08 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = byte_1ED4CFE20;
  v2 = qword_1ED4CFE28;
  v3 = byte_1ED4CFE30;
  result = *&xmmword_1ED4CFE10;
  *a1 = xmmword_1ED4CFE10;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  return result;
}

void sub_1AB321E34()
{
  sub_1AB461614();
  v0 = sub_1AB460794();

  if ((v0 & 1) == 0)
  {
    sub_1AB40D090("JetEngine/PageRenderField.swift", 0x1FuLL, 2, 0x2FuLL);
  }

  *&xmmword_1ED4D3CF0 = "pageReappearTime";
  *(&xmmword_1ED4D3CF0 + 1) = 16;
  byte_1ED4D3D00 = 2;
  qword_1ED4D3D08 = 0;
  byte_1ED4D3D10 = 1;
}

void sub_1AB321ED8()
{
  sub_1AB461614();
  v0 = sub_1AB460794();

  if ((v0 & 1) == 0)
  {
    sub_1AB40D090("JetEngine/PageRenderField.swift", 0x1FuLL, 2, 0x2FuLL);
  }

  *&xmmword_1EB46C188 = "primaryDataRequestStartTime";
  *(&xmmword_1EB46C188 + 1) = 27;
  byte_1EB46C198 = 2;
  qword_1EB46C1A0 = 0;
  byte_1EB46C1A8 = 1;
}

void sub_1AB321F7C()
{
  sub_1AB461614();
  v0 = sub_1AB460794();

  if ((v0 & 1) == 0)
  {
    sub_1AB40D090("JetEngine/PageRenderField.swift", 0x1FuLL, 2, 0x2FuLL);
  }

  *&xmmword_1ED4D3D80 = "onScreenResourcesAppearEndTime";
  *(&xmmword_1ED4D3D80 + 1) = 30;
  byte_1ED4D3D90 = 2;
  qword_1ED4D3D98 = 0;
  byte_1ED4D3DA0 = 1;
}

void sub_1AB322020()
{
  sub_1AB461614();
  v0 = sub_1AB460794();

  if ((v0 & 1) == 0)
  {
    sub_1AB40D090("JetEngine/PageRenderField.swift", 0x1FuLL, 2, 0x2FuLL);
  }

  *&xmmword_1EB46C1B0 = "primaryDataFetchStartTime";
  *(&xmmword_1EB46C1B0 + 1) = 25;
  byte_1EB46C1C0 = 2;
  qword_1EB46C1C8 = 0;
  byte_1EB46C1D0 = 1;
}

void sub_1AB3220C4()
{
  sub_1AB461614();
  v0 = sub_1AB460794();

  if ((v0 & 1) == 0)
  {
    sub_1AB40D090("JetEngine/PageRenderField.swift", 0x1FuLL, 2, 0x2FuLL);
  }

  *&xmmword_1EB46BEC8 = "primaryDataSecureConnectionStartTime";
  *(&xmmword_1EB46BEC8 + 1) = 36;
  byte_1EB46BED8 = 2;
  qword_1EB46BEE0 = 0;
  byte_1EB46BEE8 = 1;
}

void sub_1AB322168()
{
  *&xmmword_1EB46BEA0 = "secondaryData";
  *(&xmmword_1EB46BEA0 + 1) = 13;
  byte_1EB46BEB0 = 2;
  qword_1EB46BEB8 = 0;
  byte_1EB46BEC0 = 1;
}

void sub_1AB322280()
{
  *&xmmword_1EB46BF50 = "isPrimaryDataResponseCached";
  *(&xmmword_1EB46BF50 + 1) = 27;
  byte_1EB46BF60 = 2;
  qword_1EB46BF68 = 0;
  byte_1EB46BF70 = 1;
}

void sub_1AB3222B0()
{
  *&xmmword_1EB46C110 = "isAppLaunch";
  *(&xmmword_1EB46C110 + 1) = 11;
  byte_1EB46C120 = 2;
  qword_1EB46C128 = 0;
  byte_1EB46C130 = 1;
}

void sub_1AB3222E0()
{
  *&xmmword_1EB46BF28 = "primaryDataConnectionReused";
  *(&xmmword_1EB46BF28 + 1) = 27;
  byte_1EB46BF38 = 2;
  qword_1EB46BF40 = 0;
  byte_1EB46BF48 = 1;
}

void sub_1AB322310()
{
  *&xmmword_1EB46BF78 = "isLowDataMode";
  *(&xmmword_1EB46BF78 + 1) = 13;
  byte_1EB46BF88 = 2;
  qword_1EB46BF90 = 0;
  byte_1EB46BF98 = 1;
}

void sub_1AB322340()
{
  *&xmmword_1EB46BFA0 = "clientCorrelationKey";
  *(&xmmword_1EB46BFA0 + 1) = 20;
  byte_1EB46BFB0 = 2;
  qword_1EB46BFB8 = 0;
  byte_1EB46BFC0 = 1;
}

void sub_1AB322370()
{
  *&xmmword_1EB46C068 = "pageUrl";
  *(&xmmword_1EB46C068 + 1) = 7;
  byte_1EB46C078 = 2;
  qword_1EB46C080 = 0;
  byte_1EB46C088 = 1;
}

void sub_1AB3223A0()
{
  *&xmmword_1EB46C018 = "primaryDataStatusCode";
  *(&xmmword_1EB46C018 + 1) = 21;
  byte_1EB46C028 = 2;
  qword_1EB46C030 = 0;
  byte_1EB46C038 = 1;
}

void sub_1AB3223D0()
{
  *&xmmword_1EB46BFC8 = "primaryDataEdgeNodeCacheStatus";
  *(&xmmword_1EB46BFC8 + 1) = 30;
  byte_1EB46BFD8 = 2;
  qword_1EB46BFE0 = 0;
  byte_1EB46BFE8 = 1;
}

void sub_1AB322400()
{
  *&xmmword_1EB46C040 = "primaryDataEnvironmentDataCenter";
  *(&xmmword_1EB46C040 + 1) = 32;
  byte_1EB46C050 = 2;
  qword_1EB46C058 = 0;
  byte_1EB46C060 = 1;
}

void sub_1AB322430()
{
  *&xmmword_1EB46BFF0 = "primaryDataAppleTimingApp";
  *(&xmmword_1EB46BFF0 + 1) = 25;
  byte_1EB46C000 = 2;
  qword_1EB46C008 = 0;
  byte_1EB46C010 = 1;
}

void sub_1AB322460()
{
  *&xmmword_1EB46BE28 = "primaryDataRequestMessageSize";
  *(&xmmword_1EB46BE28 + 1) = 29;
  byte_1EB46BE38 = 2;
  qword_1EB46BE40 = 0;
  byte_1EB46BE48 = 1;
}

void sub_1AB322490()
{
  *&xmmword_1EB46BE00 = "primaryDataResponseMessageSize";
  *(&xmmword_1EB46BE00 + 1) = 30;
  byte_1EB46BE10 = 2;
  qword_1EB46BE18 = 0;
  byte_1EB46BE20 = 1;
}

void sub_1AB3224C0()
{
  *&xmmword_1EB46C320 = "preloadStatus";
  *(&xmmword_1EB46C320 + 1) = 13;
  byte_1EB46C330 = 2;
  qword_1EB46C338 = 0;
  byte_1EB46C340 = 1;
}

void sub_1AB3224F0()
{
  *&xmmword_1EB433E70 = "pageInterruptReason";
  *(&xmmword_1EB433E70 + 1) = 19;
  byte_1EB433E80 = 2;
  qword_1EB433E88 = 0;
  byte_1EB433E90 = 1;
}

double static PageRenderField<>.pageInterruptReason.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB433E68 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = byte_1EB433E80;
  v2 = qword_1EB433E88;
  v3 = byte_1EB433E90;
  result = *&xmmword_1EB433E70;
  *a1 = xmmword_1EB433E70;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  return result;
}

void sub_1AB3225A0()
{
  *&xmmword_1EB46BF00 = "errors";
  *(&xmmword_1EB46BF00 + 1) = 6;
  byte_1EB46BF10 = 2;
  qword_1EB46BF18 = 0;
  byte_1EB46BF20 = 1;
}

uint64_t sub_1AB3225D0(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 1;
  v3 = *(result + 128) & 0xFF01;
  v4 = *(result + 144) & 1;
  v5 = *(result + 160) & 1;
  v6 = *(result + 176) & 1;
  v7 = *(result + 192) & 1;
  v8 = *(result + 208) & 1;
  v9 = *(result + 224) & 1;
  v10 = *(result + 240) & 1;
  v11 = *(result + 256) & 1;
  v12 = *(result + 272) & 1;
  v13 = *(result + 288) & 0xFF01;
  v14 = *(result + 304) & 1;
  v15 = *(result + 320) & 1;
  v16 = *(result + 376) | 0x2000000000000000;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 176) = v6;
  *(result + 192) = v7;
  *(result + 208) = v8;
  *(result + 224) = v9;
  *(result + 240) = v10;
  *(result + 256) = v11;
  *(result + 272) = v12;
  *(result + 288) = v13;
  *(result + 304) = v14;
  *(result + 320) = v15;
  *(result + 376) = v16;
  return result;
}

uint64_t sub_1AB3226CC(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 1;
  v3 = *(result + 128) & 0xFF01;
  v4 = *(result + 144) & 1;
  v5 = *(result + 160) & 1;
  v6 = *(result + 176) & 1;
  v7 = *(result + 192) & 1;
  v8 = *(result + 208) & 1;
  v9 = *(result + 224) & 1;
  v10 = *(result + 240) & 1;
  v11 = *(result + 256) & 1;
  v12 = *(result + 272) & 1;
  v13 = *(result + 288) & 0xFF01;
  v14 = *(result + 304) & 1;
  v15 = *(result + 320) & 1;
  v16 = *(result + 376) | 0xE000000000000000;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 176) = v6;
  *(result + 192) = v7;
  *(result + 208) = v8;
  *(result + 224) = v9;
  *(result + 240) = v10;
  *(result + 256) = v11;
  *(result + 272) = v12;
  *(result + 288) = v13;
  *(result + 304) = v14;
  *(result + 320) = v15;
  *(result + 376) = v16;
  return result;
}

uint64_t sub_1AB3227A8(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 1;
  v3 = *(result + 128) & 0xFF01;
  v4 = *(result + 144) & 1;
  v5 = *(result + 160) & 1;
  v6 = *(result + 176) & 1;
  v7 = *(result + 192) & 1;
  v8 = *(result + 208) & 1;
  v9 = *(result + 224) & 1;
  v10 = *(result + 240) & 1;
  v11 = *(result + 256) & 1;
  v12 = *(result + 272) & 1;
  v13 = *(result + 288) & 0xFF01;
  v14 = *(result + 304) & 1;
  v15 = *(result + 320) & 1;
  v16 = *(result + 376) | 0x4000000000000000;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 176) = v6;
  *(result + 192) = v7;
  *(result + 208) = v8;
  *(result + 224) = v9;
  *(result + 240) = v10;
  *(result + 256) = v11;
  *(result + 272) = v12;
  *(result + 288) = v13;
  *(result + 304) = v14;
  *(result + 320) = v15;
  *(result + 376) = v16;
  return result;
}

uint64_t sub_1AB3228A4(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 1;
  v3 = *(result + 128) & 0xFF01;
  v4 = *(result + 144) & 1;
  v5 = *(result + 160) & 1;
  v6 = *(result + 176) & 1;
  v7 = *(result + 192) & 1;
  v8 = *(result + 208) & 1;
  v9 = *(result + 224) & 1;
  v10 = *(result + 240) & 1;
  v11 = *(result + 256) & 1;
  v12 = *(result + 272) & 1;
  v13 = *(result + 288) & 0xFF01;
  v14 = *(result + 304) & 1;
  v15 = *(result + 320) & 1;
  v16 = *(result + 376) | 0x6000000000000000;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 176) = v6;
  *(result + 192) = v7;
  *(result + 208) = v8;
  *(result + 224) = v9;
  *(result + 240) = v10;
  *(result + 256) = v11;
  *(result + 272) = v12;
  *(result + 288) = v13;
  *(result + 304) = v14;
  *(result + 320) = v15;
  *(result + 376) = v16;
  return result;
}

uint64_t sub_1AB322980(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 1;
  v3 = *(result + 128) & 0xFF01;
  v4 = *(result + 144) & 1;
  v5 = *(result + 160) & 1;
  v6 = *(result + 176) & 1;
  v7 = *(result + 192) & 1;
  v8 = *(result + 208) & 1;
  v9 = *(result + 224) & 1;
  v10 = *(result + 240) & 1;
  v11 = *(result + 256) & 1;
  v12 = *(result + 272) & 1;
  v13 = *(result + 288) & 0xFF01;
  v14 = *(result + 304) & 1;
  v15 = *(result + 320) & 1;
  v16 = *(result + 376) | 0x8000000000000000;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 176) = v6;
  *(result + 192) = v7;
  *(result + 208) = v8;
  *(result + 224) = v9;
  *(result + 240) = v10;
  *(result + 256) = v11;
  *(result + 272) = v12;
  *(result + 288) = v13;
  *(result + 304) = v14;
  *(result + 320) = v15;
  *(result + 376) = v16;
  return result;
}

uint64_t sub_1AB322A5C(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 1;
  v3 = *(result + 128) & 0xFF01;
  v4 = *(result + 144) & 1;
  v5 = *(result + 160) & 1;
  v6 = *(result + 176) & 1;
  v7 = *(result + 192) & 1;
  v8 = *(result + 208) & 1;
  v9 = *(result + 224) & 1;
  v10 = *(result + 240) & 1;
  v11 = *(result + 256) & 1;
  v12 = *(result + 272) & 1;
  v13 = *(result + 288) & 0xFF01;
  v14 = *(result + 304) & 1;
  v15 = *(result + 320) & 1;
  v16 = *(result + 376) | 0xC000000000000000;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 176) = v6;
  *(result + 192) = v7;
  *(result + 208) = v8;
  *(result + 224) = v9;
  *(result + 240) = v10;
  *(result + 256) = v11;
  *(result + 272) = v12;
  *(result + 288) = v13;
  *(result + 304) = v14;
  *(result + 320) = v15;
  *(result + 376) = v16;
  return result;
}

unint64_t sub_1AB322B3C()
{
  result = qword_1EB43AEE8;
  if (!qword_1EB43AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43AEE8);
  }

  return result;
}

uint64_t sub_1AB322B90(uint64_t a1, int a2)
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

uint64_t sub_1AB322BB0(uint64_t result, int a2, int a3)
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

uint64_t sub_1AB322C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AB45EFB4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1AB45EFC4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a2 || a1 == 42 && a2 == 0xE100000000000000)
  {
    return 10798;
  }

  v10 = v7;
  if ((sub_1AB461DA4() & 1) != 0 || !a1 && a2 == 0xE000000000000000)
  {
    return 10798;
  }

  if (sub_1AB461DA4())
  {
    return 10798;
  }

  if (sub_1AB460784() & 1) != 0 || (sub_1AB460794())
  {
    if ((sub_1AB460784() & 1) == 0 || (sub_1AB460794() & 1) == 0)
    {
      sub_1AB45EF74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78, &unk_1AB4D6AC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AB4D47F0;
      *(inited + 32) = sub_1AB460544();
      *(inited + 40) = v13;
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1AB4615D4();

      v25 = 0x206E726574746150;
      v26 = 0xE800000000000000;
      MEMORY[0x1AC59BA20](a1, a2);
      MEMORY[0x1AC59BA20](0xD00000000000001BLL, 0x80000001AB50A0D0);
      v14 = v25;
      v15 = v26;
      v16 = MEMORY[0x1E69E6158];
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v14;
      *(inited + 56) = v15;
      *(inited + 80) = sub_1AB460544();
      *(inited + 88) = v17;
      *(inited + 120) = v16;
      *(inited + 96) = a1;
      *(inited + 104) = a2;
      sub_1AB01B220(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0, &qword_1AB4DA4B0);
      swift_arrayDestroy();
      sub_1AB2CEA10();
      sub_1AB45F574();
      sub_1AB45EF64();
      (*(v6 + 8))(v9, v10);
      return swift_willThrow();
    }

    v25 = 94;
    v26 = 0xE100000000000000;
    MEMORY[0x1AC59BA20](a1, a2);
  }

  else
  {

    v25 = 94;
    v26 = 0xE100000000000000;
    v18 = objc_opt_self();
    v19 = sub_1AB460514();
    v20 = [v18 escapedPatternForString_];

    v21 = sub_1AB460544();
    v23 = v22;

    MEMORY[0x1AC59BA20](v21, v23);
  }

  MEMORY[0x1AC59BA20](36, 0xE100000000000000);
  return v25;
}

uint64_t sub_1AB323010()
{
  if (qword_1ED4D19D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED4D19E0;
  v0 = *algn_1ED4D19E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90, &qword_1AB4D6A80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AB4D47F0;
  *(v2 + 32) = v1;
  *(v2 + 40) = v0;
  *(v2 + 48) = 0xD00000000000001ALL;
  *(v2 + 56) = 0x80000001AB50A0F0;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590, &unk_1AB4DCFD0);
  sub_1AB027E20();
  v3 = sub_1AB460484();
  v5 = v4;

  qword_1EB434650 = v3;
  *algn_1EB434658 = v5;
}

uint64_t sub_1AB323144()
{
  if (qword_1EB434648 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB434650;
  v0 = *algn_1EB434658;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90, &qword_1AB4D6A80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AB4D47F0;
  *(v2 + 32) = v1;
  *(v2 + 40) = v0;
  strcpy((v2 + 48), "isAllowedStub");
  *(v2 + 62) = -4864;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590, &unk_1AB4DCFD0);
  sub_1AB027E20();
  v3 = sub_1AB460484();
  v5 = v4;

  qword_1EB434638 = v3;
  unk_1EB434640 = v5;
  return result;
}

uint64_t static MetricsDiagnosticsAndUsage.diagnosticsSubmissionAllowed.getter()
{
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v0 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v0[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v0 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
LABEL_12:
    v2 = [objc_opt_self() diagnosticsSubmissionAllowed];
    return v2 & 1;
  }

  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  if (qword_1EB434630 != -1)
  {
    swift_once();
  }

  v2 = sub_1AB026D00(qword_1EB434638, unk_1EB434640);
  if (v2 == 2)
  {
    goto LABEL_12;
  }

  return v2 & 1;
}

uint64_t getEnumTagSinglePayload for MetricsDiagnosticsAndUsage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

BOOL sub_1AB32343C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

uint64_t sub_1AB323478(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = v2[4];
    v18 = v2[3];
    v17 = __swift_project_boxed_opaque_existential_1Tm(v2, v18);
    v13 = v2[6];
    v12 = v2[7];
    (*(v6 + 16))(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
    v14 = (*(v6 + 80) + 56) & ~*(v6 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = *(a2 + 16);
    *(v15 + 3) = v5;
    *(v15 + 4) = v13;
    *(v15 + 5) = v12;
    *(v15 + 6) = v10;
    (*(v6 + 32))(&v15[v14], v8, v5);
    v16 = *(v11 + 8);

    swift_unknownObjectRetain();
    v16(sub_1AB323628, v15, v18, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1AB323628()
{
  v1 = (*(*(*(v0 + 24) - 8) + 80) + 56) & ~*(*(*(v0 + 24) - 8) + 80);
  v2 = (*(v0 + 32))(*(v0 + 48));
  v2(v0 + v1);

  return result;
}

double DispatchConfiguration.init(cachePolicy:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  *(a2 + 40) = v2;
  return result;
}

uint64_t sub_1AB3236D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1AB027554;

  return IntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(a1, a2, a3, v16, a7, a5, a8, a6);
}

uint64_t IntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[15] = a8;
  v9[16] = v8;
  v9[13] = a6;
  v9[14] = a7;
  v9[11] = a3;
  v9[12] = a5;
  v9[9] = a1;
  v9[10] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB3237DC, 0, 0);
}

{
  v9[15] = a8;
  v9[16] = v8;
  v9[13] = a6;
  v9[14] = a7;
  v9[11] = a3;
  v9[12] = a5;
  v9[9] = a1;
  v9[10] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB323D68, 0, 0);
}

uint64_t sub_1AB3237DC()
{
  if (qword_1EB435660 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB435668;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4720;
  v4 = MEMORY[0x1E69E6158];
  v0[5] = MEMORY[0x1E69E6158];
  v0[2] = 0xD0000000000000ADLL;
  v0[3] = 0x80000001AB50A110;
  *(v3 + 48) = 0u;
  *(v3 + 32) = 0u;
  sub_1AB0169C4((v0 + 2), v3 + 32);
  *(v3 + 64) = 0;
  *(v2 + 32) = v3;
  v5 = sub_1AB461094();
  if (os_log_type_enabled(v1, v5))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v6 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v6[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v6 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v8 = swift_allocObject();
    *(v8 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    v0[6] = v2;
    v0[7] = sub_1AB01A8D8;
    v0[8] = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
    sub_1AB016A34();
    v9 = sub_1AB460484();
    v11 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AB4D4720;
    *(v12 + 56) = v4;
    *(v12 + 64) = sub_1AB016854();
    *(v12 + 32) = v9;
    *(v12 + 40) = v11;
    sub_1AB45FF14("%{public}@", 10, 2, &dword_1AB012000, v1, v5, v12);
  }

  v22 = (*(v0[14] + 16) + **(v0[14] + 16));
  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_1AB323B68;
  v14 = v0[15];
  v15 = v0[13];
  v16 = v0[14];
  v17 = v0[11];
  v18 = v0[12];
  v19 = v0[9];
  v20 = v0[10];

  return v22(v19, v20, v17, v15, v14, v18, v16);
}

uint64_t sub_1AB323B68()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AB323C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1AB027554;

  return IntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(a1, a2, a3, v16, a7, a5, a8, a6);
}

uint64_t sub_1AB323D68()
{
  if (qword_1EB435660 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB435668;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4720;
  v4 = MEMORY[0x1E69E6158];
  v0[5] = MEMORY[0x1E69E6158];
  v0[2] = 0xD0000000000000ADLL;
  v0[3] = 0x80000001AB50A110;
  *(v3 + 48) = 0u;
  *(v3 + 32) = 0u;
  sub_1AB0169C4((v0 + 2), v3 + 32);
  *(v3 + 64) = 0;
  *(v2 + 32) = v3;
  v5 = sub_1AB461094();
  if (os_log_type_enabled(v1, v5))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v6 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v6[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v6 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v8 = swift_allocObject();
    *(v8 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    v0[6] = v2;
    v0[7] = sub_1AB0223E4;
    v0[8] = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
    sub_1AB016A34();
    v9 = sub_1AB460484();
    v11 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AB4D4720;
    *(v12 + 56) = v4;
    *(v12 + 64) = sub_1AB016854();
    *(v12 + 32) = v9;
    *(v12 + 40) = v11;
    sub_1AB45FF14("%{public}@", 10, 2, &dword_1AB012000, v1, v5, v12);
  }

  v22 = (*(v0[14] + 16) + **(v0[14] + 16));
  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_1AB325CCC;
  v14 = v0[15];
  v15 = v0[13];
  v16 = v0[14];
  v17 = v0[11];
  v18 = v0[12];
  v19 = v0[9];
  v20 = v0[10];

  return v22(v19, v20, v17, v15, v14, v18, v16);
}

char *IntentDispatcher.dispatch<A>(intent:jsonContext:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a5;
  v51 = a3;
  v55 = *(a3 - 8);
  v52 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for _IntentAsJSIntentModel(0, v11, v12, v11);
  v13 = *(v50 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v18 = *a2;
  v46 = a6;
  v47 = &v45 - v16;
  v45 = a4;
  sub_1AB17E8D8(a4, &v45 - v16);
  v48 = 0x80000001AB50A1C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439A20, &qword_1AB4D41C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 64) = &type metadata for JSONContext;
  *(inited + 40) = v18;
  *(inited + 32) = &type metadata for JSONContext;
  v20 = sub_1AB014B20();

  v56 = MEMORY[0x1AC59B670](1, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v20);
  sub_1AB014B88(inited);
  swift_setDeallocating();
  sub_1AB01667C(inited + 32);
  v21 = v56;
  type metadata accessor for BaseObjectGraph();
  v22 = swift_allocObject();
  v23 = v48;
  v22[3] = 0xD00000000000001DLL;
  v22[4] = v23;
  v22[2] = v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = type metadata accessor for Promise(0, AssociatedTypeWitness, v25, v26);
  v27 = v55;
  v28 = v10;
  v29 = v10;
  v30 = v51;
  (*(v55 + 16))(v29, v53, v51);
  v31 = v13;
  v32 = *(v13 + 16);
  v33 = v49;
  v34 = v17;
  v35 = v50;
  v32(v49, v34, v50);
  v36 = (*(v27 + 80) + 48) & ~*(v27 + 80);
  v37 = (v52 + *(v31 + 80) + v36) & ~*(v31 + 80);
  v38 = (v14 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = v45;
  *(v39 + 2) = v30;
  *(v39 + 3) = v40;
  v41 = v55;
  v42 = v46;
  *(v39 + 4) = v54;
  *(v39 + 5) = v42;
  (*(v41 + 32))(&v39[v36], v28, v30);
  (*(v31 + 32))(&v39[v37], v33, v35);
  *&v39[v38] = v22;
  v43 = sub_1AB0247F4(&unk_1AB4EB120, v39);

  (*(v31 + 8))(v47, v35);
  return v43;
}

uint64_t sub_1AB3244E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1AB027460;

  return IntentDispatcher.dispatcher<A, B>(for:asPartOf:)(a1, v12, v13, a7, v14, v15, a8);
}

uint64_t IntentDispatcher.dispatcher<A, B>(for:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[4] = a7;
  v8[5] = v7;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AB3245BC, 0, 0);
}

uint64_t sub_1AB3245BC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v2 + 24) = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1AB324664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1AB027554;

  return IntentDispatcher.dispatch<A>(_:objectGraph:)(a1, a2, a3, a6, a4, a7, a5);
}

uint64_t IntentDispatcher.dispatch<A>(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[18] = a7;
  v8[19] = v7;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB324770, 0, 0);
}

uint64_t sub_1AB324770()
{
  v11 = v0[17];
  (*(v0[18] + 40))(v0[16], v0[18]);
  v2 = v0[5];
  v1 = v0[6];
  v3 = __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v2);
  v10 = (*(v11 + 8) + **(v11 + 8));
  v4 = swift_task_alloc();
  v0[20] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v4 = v0;
  v4[1] = sub_1AB324910;
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[15];

  return v10(v0 + 7, v3, v7, AssociatedTypeWitness, v2, v1, v8, v6);
}

uint64_t sub_1AB324910()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1AB324CDC;
  }

  else
  {
    v2 = sub_1AB324A24;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB324A24()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 7, v1);
  v10 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_1AB324B5C;
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[12];

  return v10(v8, v6, v7, v5, v4, v1, v2);
}

uint64_t sub_1AB324B5C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1AB324D40;
  }

  else
  {
    v2 = sub_1AB324C70;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB324C70()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB324CDC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB324D40()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t IntentCacheUsePolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t DispatchConfiguration.withCacheKey(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB325774(v2, a2);

  return sub_1AB2C74A0(a1, a2);
}

uint64_t IntentDispatcher.dispatch<A>(intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  v10 = (*(a4 + 40))(a1, &v12, a3, a5, a2, a4);

  return v10;
}

uint64_t sub_1AB324F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a6;
  v8[4] = a8;
  v8[2] = a1;
  type metadata accessor for _UncheckedSendableIntentReturnType(0, a6, a8, a4);
  v15 = swift_task_alloc();
  v8[5] = v15;
  v21 = (*(a7 + 16) + **(a7 + 16));
  v16 = swift_task_alloc();
  v8[6] = v16;
  v18 = type metadata accessor for _IntentAsJSIntentModel(0, a6, a8, v17);
  WitnessTable = swift_getWitnessTable();
  *v16 = v8;
  v16[1] = sub_1AB325114;

  return v21(v15, a3, a4, v18, WitnessTable, a5, a7);
}

uint64_t sub_1AB325114()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1AB3252E0;
  }

  else
  {
    v2 = sub_1AB325228;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB325228()
{
  v1 = v0[5];
  v2 = v0[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v2, v1, AssociatedTypeWitness);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB3252E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB325344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = v4[2];
  v8 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v12 = *(*(v9 - 8) + 64);
  v13 = (*(*(v9 - 8) + 80) + 48) & ~*(*(v9 - 8) + 80);
  v14 = *(type metadata accessor for _IntentAsJSIntentModel(0, v8, v11, a4) - 8);
  v15 = (v13 + v12 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = *(v4 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v6 + 16) = v17;
  *v17 = v6;
  v17[1] = sub_1AB027554;

  return sub_1AB324F48(a1, v4 + v13, v4 + v15, v16, v9, v8, v10, v11);
}

uint64_t _s9JetEngine21DispatchConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40))
  {
    sub_1AB014A58(a1, v8, &qword_1EB4389F8, &unk_1AB4DEB50);
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AF88, &qword_1AB4EB358);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v18 = 0;
        v16 = 0u;
        v17 = 0u;
      }
    }

    else
    {
      sub_1AB014AC0(v8, &qword_1EB4389F8, &unk_1AB4DEB50);
      v16 = 0u;
      v17 = 0u;
      v18 = 0;
    }

    sub_1AB014A58(a2, v8, &qword_1EB4389F8, &unk_1AB4DEB50);
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AF88, &qword_1AB4EB358);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v15 = 0;
        v13 = 0u;
        v14 = 0u;
      }
    }

    else
    {
      sub_1AB014AC0(v8, &qword_1EB4389F8, &unk_1AB4DEB50);
      v13 = 0u;
      v14 = 0u;
      v15 = 0;
    }

    sub_1AB014A58(&v16, v8, &qword_1EB43AF78, &unk_1AB4FB650);
    sub_1AB014A58(&v13, &v10, &qword_1EB43AF78, &unk_1AB4FB650);
    if (v9)
    {
      sub_1AB014A58(v8, v7, &qword_1EB43AF78, &unk_1AB4FB650);
      if (*(&v11 + 1))
      {
        v5[0] = v10;
        v5[1] = v11;
        v6 = v12;
        v2 = MEMORY[0x1AC59C870](v7, v5);
        sub_1AB02B2E4(v5);
        sub_1AB02B2E4(v7);
        sub_1AB014AC0(v8, &qword_1EB43AF78, &unk_1AB4FB650);
LABEL_18:
        sub_1AB014AC0(&v13, &qword_1EB43AF78, &unk_1AB4FB650);
        sub_1AB014AC0(&v16, &qword_1EB43AF78, &unk_1AB4FB650);
        return v2 & 1;
      }

      sub_1AB02B2E4(v7);
    }

    else if (!*(&v11 + 1))
    {
      sub_1AB014AC0(v8, &qword_1EB43AF78, &unk_1AB4FB650);
      v2 = 1;
      goto LABEL_18;
    }

    sub_1AB014AC0(v8, &qword_1EB43AF80, &qword_1AB4EB350);
    v2 = 0;
    goto LABEL_18;
  }

  v2 = 0;
  return v2 & 1;
}

unint64_t sub_1AB3257B0()
{
  result = qword_1EB43AEF0[0];
  if (!qword_1EB43AEF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB43AEF0);
  }

  return result;
}

uint64_t dispatch thunk of IntentDispatcher.dispatcher<A, B>(for:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 8) + **(a8 + 8));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1AB027460;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 24) + **(a8 + 24));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1AB027554;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  v19 = (*(a8 + 32) + **(a8 + 32));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1AB027554;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1AB325C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB325CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB325CF8, 0, 0);
}

uint64_t sub_1AB325CF8()
{
  if (qword_1EB434948 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1AB033054(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1AB033054((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1AB325E90;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v8, v0 + 24, v6, v7, 0, 0, 0xD000000000000024, 0x80000001AB503F50);
}

uint64_t sub_1AB325E90()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB343AB4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AB325FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB326008, 0, 0);
}

uint64_t sub_1AB326008()
{
  if (qword_1EB434948 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1AB033054(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1AB033054((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1AB325E90;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v8, v0 + 24, v6, v7, 0, 0, 0xD000000000000024, 0x80000001AB503F50);
}

uint64_t sub_1AB3261A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB3261C4, 0, 0);
}

uint64_t sub_1AB3261C4()
{
  if (qword_1EB434948 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v1 = *(v0 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1AB033054(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1AB033054((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  sub_1AB016760(0, &unk_1ED4D1398, 0x1E698CAC8);
  *v5 = v0;
  v5[1] = sub_1AB32636C;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 32, v6, v7, 0, 0, 0xD000000000000024, 0x80000001AB503F50);
}

uint64_t sub_1AB32636C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1AB343AB4;
  }

  else
  {
    v2 = sub_1AB343AFC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB32649C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB3264C0, 0, 0);
}

uint64_t sub_1AB3264C0()
{
  if (qword_1EB434948 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v1 = *(v0 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1AB033054(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1AB033054((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  type metadata accessor for StartUpPerformanceEvent();
  *v5 = v0;
  v5[1] = sub_1AB32636C;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 32, v6, v7, 0, 0, 0xD000000000000024, 0x80000001AB503F50);
}

uint64_t sub_1AB326658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB326680, 0, 0);
}

uint64_t sub_1AB326680()
{
  if (qword_1EB434948 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1AB033054(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1AB033054((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436690, &qword_1AB4D43D8);
  *v5 = v0;
  v5[1] = sub_1AB325E90;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v8, v0 + 24, v6, v7, 0, 0, 0xD000000000000024, 0x80000001AB503F50);
}

uint64_t sub_1AB326828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB326850, 0, 0);
}

uint64_t sub_1AB326850()
{
  if (qword_1EB434948 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1AB033054(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1AB033054((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1AB325E90;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v8, v0 + 24, v6, v7, 0, 0, 0xD000000000000024, 0x80000001AB503F50);
}

uint64_t sub_1AB3269E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB326A10, 0, 0);
}

uint64_t sub_1AB326A10()
{
  if (qword_1EB434948 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1AB033054(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1AB033054((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  type metadata accessor for PageIntentInstrumentation(0);
  *v5 = v0;
  v5[1] = sub_1AB325E90;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v8, v0 + 24, v6, v7, 0, 0, 0xD000000000000024, 0x80000001AB503F50);
}

uint64_t sub_1AB326BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB326BD4, 0, 0);
}

uint64_t sub_1AB326BD4()
{
  if (qword_1EB434948 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1AB033054(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1AB033054((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436660, &qword_1AB4D43A8);
  *v5 = v0;
  v5[1] = sub_1AB325E90;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v8, v0 + 24, v6, v7, 0, 0, 0xD000000000000024, 0x80000001AB503F50);
}

uint64_t sub_1AB326D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB326DA4, 0, 0);
}

uint64_t sub_1AB326DA4()
{
  if (qword_1EB434948 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1AB033054(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1AB033054((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1AB325E90;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v8, v0 + 24, v6, v7, 0, 0, 0xD000000000000024, 0x80000001AB503F50);
}

uint64_t sub_1AB326F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB326F64, 0, 0);
}

uint64_t sub_1AB326F64()
{
  if (qword_1EB434948 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1AB033054(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1AB033054((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436730, &qword_1AB4D4468);
  *v5 = v0;
  v5[1] = sub_1AB325E90;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v8, v0 + 24, v6, v7, 0, 0, 0xD000000000000024, 0x80000001AB503F50);
}

uint64_t sub_1AB32710C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB327130, 0, 0);
}

uint64_t sub_1AB327130()
{
  if (qword_1EB434948 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v1 = *(v0 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1AB033054(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1AB033054((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  sub_1AB016760(0, &qword_1EB435620, 0x1E696AF80);
  *v5 = v0;
  v5[1] = sub_1AB32636C;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 32, v6, v7, 0, 0, 0xD000000000000024, 0x80000001AB503F50);
}

uint64_t sub_1AB3272D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB3272FC, 0, 0);
}

uint64_t sub_1AB3272FC()
{
  if (qword_1EB434948 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v1 = *(v0 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1AB033054(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1AB033054((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  type metadata accessor for JetPackAssetSession();
  *v5 = v0;
  v5[1] = sub_1AB327494;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 32, v6, v7, 0, 0, 0xD000000000000024, 0x80000001AB503F50);
}

uint64_t sub_1AB327494()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1AB3275E0;
  }

  else
  {
    v2 = sub_1AB3275C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB3275F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB327620, 0, 0);
}

uint64_t sub_1AB327620()
{
  if (qword_1EB434948 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1AB033054(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1AB033054((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  type metadata accessor for JetPackAsset(0);
  *v5 = v0;
  v5[1] = sub_1AB325E90;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v8, v0 + 24, v6, v7, 0, 0, 0xD000000000000024, 0x80000001AB503F50);
}

uint64_t sub_1AB3277BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB3277E4, 0, 0);
}

uint64_t sub_1AB3277E4()
{
  if (qword_1EB434948 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1AB033054(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1AB033054((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1AB32797C;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v8, v0 + 24, v6, v7, 0, 0, 0xD000000000000024, 0x80000001AB503F50);
}

uint64_t sub_1AB32797C()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB3275E0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AB327ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB327AF4, 0, 0);
}

uint64_t sub_1AB327AF4()
{
  if (qword_1EB434948 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1AB033054(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1AB033054((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1AB325E90;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v8, v0 + 24, v6, v7, 0, 0, 0xD000000000000024, 0x80000001AB503F50);
}

uint64_t sub_1AB327C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[46] = a3;
  v4[47] = v3;
  v4[44] = a1;
  v4[45] = a2;
  type metadata accessor for JSIntentResult(0);
  v4[48] = swift_task_alloc();
  v4[49] = type metadata accessor for JSResponse(0);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = type metadata accessor for PageRenderEvent(0);
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = type metadata accessor for JSStack.DecoratedIntent(0);
  v4[56] = swift_task_alloc();
  v4[57] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43D2B0, &qword_1AB4DEFD0);
  v4[58] = swift_task_alloc();
  v5 = type metadata accessor for PageIntentInstrumentation(0);
  v4[59] = v5;
  v4[60] = *(v5 - 8);
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB327E78, 0, 0);
}

uint64_t sub_1AB327E78()
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v1 = v0[46];
  v0[64] = qword_1EB4359A0;
  v0[41] = v1;
  v2 = swift_task_alloc();
  v0[65] = v2;
  *v2 = v0;
  v2[1] = sub_1AB327F9C;
  v3 = v0[58];
  v4 = v0[46];

  return MEMORY[0x1EEE6DE98](v3, v0 + 41, &unk_1AB4DEFD8, v4, 0, 0, 0xD00000000000001FLL, 0x80000001AB4FEE90);
}

uint64_t sub_1AB327F9C()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_1AB328258;
  }

  else
  {
    v2 = sub_1AB3280B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB3280B0()
{
  v1 = v0[59];
  v2 = v0[58];
  v3 = *(v0[60] + 48);
  if (v3(v2, 1, v1) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v3(v2, 1, v1) != 1)
    {
      sub_1AB014AC0(v0[58], qword_1EB43D2B0, &qword_1AB4DEFD0);
    }
  }

  else
  {
    sub_1AB342038(v2, v0[63], type metadata accessor for PageIntentInstrumentation);
  }

  v4 = v0[46];
  sub_1AB34173C(v0[45], (v0 + 20));
  v0[42] = v4;
  v5 = swift_task_alloc();
  v0[67] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438A38, &qword_1AB4DEFE8);
  *v5 = v0;
  v5[1] = sub_1AB328344;
  v6 = v0[46];

  return MEMORY[0x1EEE6DE98](v0 + 39, v0 + 42, &unk_1AB4DEFE0, v6, 0, 0, 0xD00000000000001FLL, 0x80000001AB4FEE90);
}

uint64_t sub_1AB328258()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB328344()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_1AB3286F4;
  }

  else
  {
    v2 = sub_1AB328458;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB328458()
{
  if ((*(v0 + 321) & 1) == 0 && (*(v0 + 320) & 1) == 0)
  {
    *(v0 + 208) = *(v0 + 312);
    *(v0 + 216) = 0;
  }

  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v3 = *(v0 + 440);
  v4 = *(v0 + 448);
  sub_1AB0CDB28(v0 + 160, v0 + 224);
  sub_1AB0C7764(v2, v4 + *(v3 + 24));
  v21 = *(v0 + 248);
  v5 = *(v0 + 248);
  v6 = __swift_project_boxed_opaque_existential_1Tm((v0 + 224), v5);
  *(v4 + 24) = v21;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v6, v5);
  v8 = *(v0 + 248);
  v9 = *(v0 + 264);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 224), v8);
  *(v4 + 40) = (*(v9 + 32))(v8, v9);
  *(v4 + 48) = v10;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 224));
  sub_1AB0C7764(v2, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *(v0 + 496);
  if (EnumCaseMultiPayload)
  {
    sub_1AB3422B0(v12, type metadata accessor for PageIntentInstrumentation);
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v15 = *(v0 + 432);
    v16 = *(v0 + 416);
    sub_1AB342038(v12, v15, type metadata accessor for PageRenderEvent);
    v17 = (v15 + *(v16 + 24));
    v13 = *v17;
    v14 = v17[1];

    sub_1AB3422B0(v15, type metadata accessor for PageRenderEvent);
  }

  *(v0 + 560) = v14;
  *(v0 + 552) = v13;
  *(v0 + 344) = *(v0 + 368);
  v18 = swift_task_alloc();
  *(v0 + 568) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4389E0, &qword_1AB4DEB18);
  *v18 = v0;
  v18[1] = sub_1AB328804;
  v19 = *(v0 + 368);

  return MEMORY[0x1EEE6DE98](v0 + 272, v0 + 344, &unk_1AB4DEFF0, v19, 0, 0, 0xD00000000000001FLL, 0x80000001AB4FEE90);
}

uint64_t sub_1AB3286F4()
{
  sub_1AB3422B0(*(v0 + 504), type metadata accessor for PageIntentInstrumentation);
  sub_1AB0C6B34(v0 + 160);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB328804()
{
  *(*v1 + 576) = v0;

  if (v0)
  {

    v2 = sub_1AB328A60;
  }

  else
  {
    v2 = sub_1AB328920;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB328920()
{
  *(v0 + 584) = *(v0 + 576);
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 448);
  v4 = *(v0 + 376);
  v5 = *(v0 + 184);
  v6 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 160), v5);
  v7 = (*(v6 + 32))(v5, v6);
  *(v0 + 592) = sub_1AB21EAD4(0x656D69746E757224, 0xE800000000000000, 0x6863746170736964, 0xE800000000000000, v7, v8, *(v0 + 208), *(v0 + 216), v3, v2, v1, v0 + 272, 0, v4);

  swift_bridgeObjectRelease_n();

  return MEMORY[0x1EEE6DFA0](sub_1AB328BA8, 0, 0);
}

uint64_t sub_1AB328A60()
{
  *(v0 + 304) = 0;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 584) = 0;
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 448);
  v4 = *(v0 + 376);
  v5 = *(v0 + 184);
  v6 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 160), v5);
  v7 = (*(v6 + 32))(v5, v6);
  *(v0 + 592) = sub_1AB21EAD4(0x656D69746E757224, 0xE800000000000000, 0x6863746170736964, 0xE800000000000000, v7, v8, *(v0 + 208), *(v0 + 216), v3, v2, v1, v0 + 272, 0, v4);

  swift_bridgeObjectRelease_n();

  return MEMORY[0x1EEE6DFA0](sub_1AB328BA8, 0, 0);
}

uint64_t sub_1AB328BA8()
{
  v1 = v0 + 2;
  v2 = v0[50];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1AB328C74;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1AB0CFD84(v3);
  sub_1AB014AC0(v3, &unk_1EB4397D0, &qword_1AB4D8D60);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB328C74(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 600) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1AB3291F0;
  }

  else
  {
    v5 = *(v2 + 400);
    v6 = *(v2 + 408);

    sub_1AB342038(v5, v6, type metadata accessor for JSResponse);
    v4 = sub_1AB328DBC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1AB328DBC()
{
  v25 = v0;
  v1 = v0[73];
  v2 = v0[51];
  v3 = v0[48];
  v4 = v0[46];
  sub_1AB0C741C(*(v2 + *(v0[49] + 32)));
  sub_1AB329344(v2, v4, v3);
  v5 = v0[63];
  if (v1)
  {
    v6 = v0[56];
    v7 = v0[51];
    sub_1AB014AC0((v0 + 34), &qword_1EB4389E0, &qword_1AB4DEB18);
    sub_1AB3422B0(v5, type metadata accessor for PageIntentInstrumentation);
    sub_1AB3422B0(v6, type metadata accessor for JSStack.DecoratedIntent);
    sub_1AB3422B0(v7, type metadata accessor for JSResponse);
    sub_1AB0C6B34((v0 + 20));

    v8 = v0[1];
  }

  else
  {
    sub_1AB0C7764(v0[63], v0[61]);
    if (swift_getEnumCaseMultiPayload())
    {
      v9 = v0[63];
      v10 = v0[61];
      v11 = v0[56];
      v12 = v0[51];
      sub_1AB014AC0((v0 + 34), &qword_1EB4389E0, &qword_1AB4DEB18);
      sub_1AB3422B0(v9, type metadata accessor for PageIntentInstrumentation);
      sub_1AB3422B0(v11, type metadata accessor for JSStack.DecoratedIntent);
      sub_1AB3422B0(v12, type metadata accessor for JSResponse);
      v13 = v10;
      v14 = type metadata accessor for PageIntentInstrumentation;
    }

    else
    {
      sub_1AB342038(v0[61], v0[53], type metadata accessor for PageRenderEvent);
      if (qword_1EB433928 != -1)
      {
        swift_once();
      }

      v15 = v0[63];
      v16 = v0[56];
      v17 = v0[53];
      v18 = v0[51];
      v19 = (v17 + *(v0[52] + 24));
      v20 = *v19;
      v21 = v19[1];
      static MonotonicTime.now.getter(&v23);
      v24 = v23;
      PageRenderField<>.endTime(for:at:)(v20, v21, &v24);
      sub_1AB014AC0((v0 + 34), &qword_1EB4389E0, &qword_1AB4DEB18);
      sub_1AB3422B0(v15, type metadata accessor for PageIntentInstrumentation);
      sub_1AB3422B0(v16, type metadata accessor for JSStack.DecoratedIntent);
      sub_1AB3422B0(v17, type metadata accessor for PageRenderEvent);
      v14 = type metadata accessor for JSResponse;
      v13 = v18;
    }

    sub_1AB3422B0(v13, v14);
    sub_1AB342038(v0[48], v0[44], type metadata accessor for JSIntentResult);
    sub_1AB0C6B34((v0 + 20));

    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_1AB3291F0()
{
  v1 = v0[63];
  v2 = v0[56];

  sub_1AB014AC0((v0 + 34), &qword_1EB4389E0, &qword_1AB4DEB18);
  sub_1AB3422B0(v1, type metadata accessor for PageIntentInstrumentation);
  sub_1AB3422B0(v2, type metadata accessor for JSStack.DecoratedIntent);
  sub_1AB0C6B34((v0 + 20));

  v3 = v0[1];

  return v3();
}

uint64_t sub_1AB329344@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v38 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437770, &qword_1AB4DEFB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - v6;
  v8 = sub_1AB45F244();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for JSIntentResult(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v40[0] = a2;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1AB0C7EF4(a2[2], v40);
  swift_task_localValuePop();
  v15 = v40[0];
  if (!v40[0])
  {
    v15 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  }

  v16 = swift_conformsToProtocol2();
  if (!v16)
  {
    v22 = swift_conformsToProtocol2();
    if (!v22)
    {

      v25 = type metadata accessor for JSResponse(0);
      v26 = *(v25 + 20);
      v35 = v8;
      v36 = v9;
      v27 = *(v9 + 16);
      v28 = v8;
      v29 = v38;
      v27(v11, v38 + v26, v28);
      sub_1AB08C08C(v29 + *(v25 + 24), v7);
      v30 = v35;
      v27(v14, v11, v35);
      sub_1AB08C08C(v7, &v14[v12[5]]);
      v31 = MEMORY[0x1E69E7CC0];
      v40[0] = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
      v32 = sub_1AB07CA28(v7, v40);

      *&v14[v12[6]] = v32;
      JSONObject.subscript.getter(0xD000000000000013, 0x80000001AB5043D0, v40);
      v33 = sub_1AB01B220(v31);
      v34 = sub_1AB07C9F8(v40, v33);
      sub_1AB014AC0(v7, &unk_1EB437770, &qword_1AB4DEFB0);
      (*(v36 + 8))(v11, v30);
      *&v14[v12[7]] = v34;
      return sub_1AB342038(v14, v37, type metadata accessor for JSIntentResult);
    }

    v23 = v22;
    type metadata accessor for JSResponse(0);
    v39[0] = v15;
    v41 = v12;
    v42 = v23;
    __swift_allocate_boxed_opaque_existential_0(v40);
    JSONObject.decode<A>(_:using:)(v12, v39, v12, v23);

    if (!v3)
    {
      sub_1AB01494C(v40, v39);
      v20 = &unk_1EB438A40;
      v21 = &unk_1AB4DEFF8;
      goto LABEL_13;
    }

    return __swift_deallocate_boxed_opaque_existential_2(v40);
  }

  v17 = v16;
  v18 = type metadata accessor for JSResponse(0);
  sub_1AB0B9254(v38 + *(v18 + 24), v39);
  v43 = v15;
  v19 = *(v17 + 8);
  v41 = v12;
  v42 = v17;
  __swift_allocate_boxed_opaque_existential_0(v40);
  v19(v39, &v43, v12, v17);
  if (v3)
  {
    return __swift_deallocate_boxed_opaque_existential_2(v40);
  }

  sub_1AB01494C(v40, v39);
  v20 = &unk_1EB438A48;
  v21 = &unk_1AB4DF000;
LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  swift_dynamicCast();
  return __swift_destroy_boxed_opaque_existential_1Tm(v40);
}

char *JSStack.dispatch<A>(intent:jsonContext:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v31 = type metadata accessor for _IntentAsJSIntentModel(0, a3, a4, a4);
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v30 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v29 = v28 - v10;
  v11 = *a2;
  sub_1AB17E8D8(a3, v28 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439A20, &qword_1AB4D41C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 64) = &type metadata for JSONContext;
  *(inited + 40) = v11;
  *(inited + 32) = &type metadata for JSONContext;
  v13 = sub_1AB014B20();

  v33 = MEMORY[0x1AC59B670](1, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v13);
  sub_1AB014B88(inited);
  swift_setDeallocating();
  sub_1AB01667C(inited + 32);
  v14 = v33;
  type metadata accessor for BaseObjectGraph();
  v15 = swift_allocObject();
  v15[3] = 0xD00000000000001DLL;
  v15[4] = 0x80000001AB50A1C0;
  v15[2] = v14;
  v16 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28[1] = type metadata accessor for Promise(0, AssociatedTypeWitness, v18, v19);
  v20 = v29;
  v21 = v30;
  v22 = v31;
  (*(v7 + 16))(v30, v29, v31);
  v23 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 2) = a3;
  *(v25 + 3) = v16;
  *(v25 + 4) = v32;
  (*(v7 + 32))(&v25[v23], v21, v22);
  *&v25[v24] = v15;

  v26 = sub_1AB0247F4(&unk_1AB4EB368, v25);

  (*(v7 + 8))(v20, v22);
  return v26;
}

uint64_t sub_1AB329AF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AB329BE8()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1AB329D70;
  }

  else
  {
    v2 = sub_1AB329CFC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB329CFC()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB329D70()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB329DE4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AB329ED8()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1AB32A060;
  }

  else
  {
    v2 = sub_1AB329FEC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB329FEC()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB32A060()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB32A0D4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = sub_1AB343AA8;
  }

  else
  {
    *(v4 + 264) = a1;
    *(v4 + 176) = a1;
    v5 = sub_1AB343AD4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AB32A200()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1AB343ACC;
  }

  else
  {
    v2 = sub_1AB343AAC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB32A314()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AB32A408()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_1AB32A598;
  }

  else
  {
    v2 = sub_1AB32A51C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB32A51C()
{
  v1 = v0[27];

  *(v1 + 9) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1AB32A598()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB32A60C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1AB343AF8;
  }

  else
  {
    v2 = sub_1AB343AC0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB32A720(uint64_t a1, uint64_t a2)
{
  v2[30] = a1;
  v2[31] = a2;
  v2[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436660, &qword_1AB4D43A8);

  return MEMORY[0x1EEE6DFA0](sub_1AB32A79C, 0, 0);
}

uint64_t sub_1AB32A79C()
{
  if (!*(*(v0 + 248) + 16) || (v1 = sub_1AB016558(*(v0 + 256)), (v2 & 1) == 0))
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v3 = off_1ED4D19F8;
    v4 = *(off_1ED4D19F8 + 2);

    if (!v4)
    {
      goto LABEL_15;
    }

    v5 = 0;
    while (1)
    {
      *(v0 + 168) = v3[v5 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590, &qword_1AB4D42A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436668, &qword_1AB4D43B0);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 152))
        {
          break;
        }
      }

      if (v4 == ++v5)
      {
        v5 = v4;
        break;
      }
    }

    v7 = *(v3 + 2);
    if (v5 == v7)
    {
LABEL_15:
      v8 = *(v0 + 240);

      *(v8 + 32) = 0;
      *v8 = 0u;
      *(v8 + 16) = 0u;
LABEL_25:
      v15 = *(v0 + 8);

      return v15();
    }

    if (v5 >= v7)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 200) = v3[v5 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590, &qword_1AB4D42A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436668, &qword_1AB4D43B0);
      result = swift_dynamicCast();
      if (result)
      {
        v9 = *(v0 + 184);
        if (v9)
        {
          v10 = *(v0 + 192);

          v11 = swift_task_alloc();
          *(v0 + 264) = v11;
          *v11 = v0;
          v11[1] = sub_1AB343AA0;
          v12 = *(v0 + 248);
          v13 = *(v0 + 256);
          v14 = *(v0 + 240);

          return sub_1AB0AB648(v14, v9, v12, v13, v9, v10);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1AB0165C4(*(*(v0 + 248) + 56) + 32 * v1, v0 + 88);
  sub_1AB014B78((v0 + 88), (v0 + 56));
  sub_1AB0165C4(v0 + 56, v0 + 120);
  if (swift_dynamicCast())
  {
    sub_1AB0149B0((v0 + 16), *(v0 + 240));
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436670, &qword_1AB4D43B8);
  if (swift_dynamicCast())
  {
    sub_1AB131FBC();

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436678, &qword_1AB4D43C0);
  if (swift_dynamicCast())
  {
    sub_1AB1339F0();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B0D0, &qword_1AB4EB7B8);
  if (swift_dynamicCast())
  {
    *(v0 + 272) = *(v0 + 232);
    v16 = swift_task_alloc();
    *(v0 + 280) = v16;
    *v16 = v0;
    v16[1] = sub_1AB32A200;
    v17 = *(v0 + 240);

    return sub_1AB33EA04(v17);
  }

  else
  {
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 56), *(v0 + 80));
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000010, 0x80000001AB4FF070);
    MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
    return sub_1AB461884();
  }
}

uint64_t sub_1AB32AD18(uint64_t a1, uint64_t a2)
{
  *(v2 + 280) = a1;
  *(v2 + 288) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB32AD38, 0, 0);
}

uint64_t sub_1AB32AD38()
{
  if (!*(*(v0 + 288) + 16) || (v1 = sub_1AB016558(&type metadata for JetPackAssetSession.Configuration), (v2 & 1) == 0))
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v7 = off_1ED4D19F8;
    v8 = *(off_1ED4D19F8 + 2);

    if (!v8)
    {
      goto LABEL_15;
    }

    v9 = 0;
    while (1)
    {
      *(v0 + 208) = v7[v9 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590, &qword_1AB4D42A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B080, &qword_1AB4EB6E8);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 192))
        {
          break;
        }
      }

      if (v8 == ++v9)
      {
        v9 = v8;
        break;
      }
    }

    v11 = *(v7 + 2);
    if (v9 == v11)
    {
LABEL_15:
      v12 = *(v0 + 280);

      *v12 = 0;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      *(v12 + 24) = 1;
      *(v12 + 32) = 0u;
      *(v12 + 48) = 0u;
      *(v12 + 64) = 0u;
LABEL_25:
      v18 = *(v0 + 8);

      return v18();
    }

    if (v9 >= v11)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 240) = v7[v9 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590, &qword_1AB4D42A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B080, &qword_1AB4EB6E8);
      result = swift_dynamicCast();
      if (result)
      {
        v13 = *(v0 + 224);
        if (v13)
        {
          v14 = *(v0 + 232);

          v15 = swift_task_alloc();
          *(v0 + 296) = v15;
          *v15 = v0;
          v15[1] = sub_1AB32B2E0;
          v16 = *(v0 + 280);
          v17 = *(v0 + 288);

          return sub_1AB0AB648(v16, v13, v17, &type metadata for JetPackAssetSession.Configuration, v13, v14);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1AB0165C4(*(*(v0 + 288) + 56) + 32 * v1, v0 + 128);
  sub_1AB014B78((v0 + 128), (v0 + 96));
  sub_1AB0165C4(v0 + 96, v0 + 160);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 280);
    *v3 = *(v0 + 16);
    v4 = *(v0 + 32);
    v5 = *(v0 + 48);
    v6 = *(v0 + 80);
    v3[3] = *(v0 + 64);
    v3[4] = v6;
    v3[1] = v4;
    v3[2] = v5;
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B088, &qword_1AB4EB6F0);
  if (swift_dynamicCast())
  {
    sub_1AB131FE4(*(v0 + 280));

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B090, &qword_1AB4EB6F8);
  if (swift_dynamicCast())
  {
    sub_1AB133A2C(*(v0 + 280));

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B098, &qword_1AB4EB700);
  if (swift_dynamicCast())
  {
    *(v0 + 304) = *(v0 + 272);
    v19 = swift_task_alloc();
    *(v0 + 312) = v19;
    *v19 = v0;
    v19[1] = sub_1AB32B3D4;
    v20 = *(v0 + 280);

    return sub_1AB33EBC8(v20);
  }

  else
  {
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 96), *(v0 + 120));
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0x72756769666E6F43, 0xED00006E6F697461);
    MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
    return sub_1AB461884();
  }
}

uint64_t sub_1AB32B2E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AB32B3D4()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_1AB32B55C;
  }

  else
  {
    v2 = sub_1AB32B4E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB32B4E8()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB32B55C()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB32B5D0(uint64_t a1, uint64_t a2)
{
  v2[30] = a1;
  v2[31] = a2;
  v2[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436730, &qword_1AB4D4468);

  return MEMORY[0x1EEE6DFA0](sub_1AB32B64C, 0, 0);
}

uint64_t sub_1AB32B64C()
{
  if (!*(*(v0 + 248) + 16) || (v1 = sub_1AB016558(*(v0 + 256)), (v2 & 1) == 0))
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v3 = off_1ED4D19F8;
    v4 = *(off_1ED4D19F8 + 2);

    if (!v4)
    {
      goto LABEL_15;
    }

    v5 = 0;
    while (1)
    {
      *(v0 + 168) = v3[v5 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590, &qword_1AB4D42A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B0A8, &qword_1AB4EB750);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 152))
        {
          break;
        }
      }

      if (v4 == ++v5)
      {
        v5 = v4;
        break;
      }
    }

    v7 = *(v3 + 2);
    if (v5 == v7)
    {
LABEL_15:
      v8 = *(v0 + 240);

      *(v8 + 32) = 0;
      *v8 = 0u;
      *(v8 + 16) = 0u;
LABEL_25:
      v15 = *(v0 + 8);

      return v15();
    }

    if (v5 >= v7)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 200) = v3[v5 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590, &qword_1AB4D42A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B0A8, &qword_1AB4EB750);
      result = swift_dynamicCast();
      if (result)
      {
        v9 = *(v0 + 184);
        if (v9)
        {
          v10 = *(v0 + 192);

          v11 = swift_task_alloc();
          *(v0 + 264) = v11;
          *v11 = v0;
          v11[1] = sub_1AB32BBC8;
          v12 = *(v0 + 248);
          v13 = *(v0 + 256);
          v14 = *(v0 + 240);

          return sub_1AB0AB648(v14, v9, v12, v13, v9, v10);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1AB0165C4(*(*(v0 + 248) + 56) + 32 * v1, v0 + 88);
  sub_1AB014B78((v0 + 88), (v0 + 56));
  sub_1AB0165C4(v0 + 56, v0 + 120);
  if (swift_dynamicCast())
  {
    sub_1AB0149B0((v0 + 16), *(v0 + 240));
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B0B0, &qword_1AB4EB758);
  if (swift_dynamicCast())
  {
    sub_1AB132178();

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B0B8, &qword_1AB4EB760);
  if (swift_dynamicCast())
  {
    sub_1AB133BB0();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B0C0, &qword_1AB4EB768);
  if (swift_dynamicCast())
  {
    *(v0 + 272) = *(v0 + 232);
    v16 = swift_task_alloc();
    *(v0 + 280) = v16;
    *v16 = v0;
    v16[1] = sub_1AB32BCBC;
    v17 = *(v0 + 240);

    return sub_1AB33ED80(v17);
  }

  else
  {
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 56), *(v0 + 80));
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB4FF200);
    MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
    return sub_1AB461884();
  }
}

uint64_t sub_1AB32BBC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AB32BCBC()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1AB32BE44;
  }

  else
  {
    v2 = sub_1AB32BDD0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB32BDD0()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB32BE44()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB32BEB8(uint64_t a1)
{
  *(v1 + 216) = a1;
  *(v1 + 224) = sub_1AB016760(0, &qword_1EB435620, 0x1E696AF80);

  return MEMORY[0x1EEE6DFA0](sub_1AB32BF38, 0, 0);
}

uint64_t sub_1AB32BF38()
{
  if (!*(*(v0 + 216) + 16) || (v1 = sub_1AB016558(*(v0 + 224)), (v2 & 1) == 0))
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v5 = off_1ED4D19F8;
    v6 = *(off_1ED4D19F8 + 2);

    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = 0;
    while (1)
    {
      *(v0 + 128) = v5[v7 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590, &qword_1AB4D42A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B040, &qword_1AB4EB5E0);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 112))
        {
          break;
        }
      }

      if (v6 == ++v7)
      {
        v7 = v6;
        break;
      }
    }

    v9 = *(v5 + 2);
    if (v7 == v9)
    {
LABEL_16:

      v4 = 0;
      goto LABEL_17;
    }

    if (v7 >= v9)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 160) = v5[v7 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590, &qword_1AB4D42A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B040, &qword_1AB4EB5E0);
      result = swift_dynamicCast();
      if (result)
      {
        v11 = *(v0 + 144);
        if (v11)
        {
          v12 = *(v0 + 152);

          v13 = swift_task_alloc();
          *(v0 + 232) = v13;
          *v13 = v0;
          v13[1] = sub_1AB343AC4;
          v14 = *(v0 + 216);
          v15 = *(v0 + 224);

          return sub_1AB0AB648(v0 + 176, v11, v14, v15, v11, v12);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1AB0165C4(*(*(v0 + 216) + 56) + 32 * v1, v0 + 48);
  sub_1AB014B78((v0 + 48), (v0 + 16));
  sub_1AB0165C4(v0 + 16, v0 + 80);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 184);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v4 = v3;
LABEL_17:
    v10 = *(v0 + 8);

    return v10(v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B048, &qword_1AB4EB5E8);
  if (swift_dynamicCast())
  {
    v16 = sub_1AB132340();

    *(v0 + 176) = v16;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v4 = v16;
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B050, &qword_1AB4EB5F0);
  if (swift_dynamicCast())
  {
    v3 = sub_1AB133D88();

    *(v0 + 176) = v3;
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B058, &qword_1AB4EB5F8);
  if (swift_dynamicCast())
  {
    *(v0 + 240) = *(v0 + 208);
    v17 = swift_task_alloc();
    *(v0 + 248) = v17;
    *v17 = v0;
    v17[1] = sub_1AB32A0D4;

    return sub_1AB33EF44();
  }

  else
  {
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    v18 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v18);

    MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
    return sub_1AB461884();
  }
}

uint64_t sub_1AB32C4F4(uint64_t a1)
{
  *(v1 + 216) = a1;
  *(v1 + 224) = type metadata accessor for JetPackAssetSession();

  return MEMORY[0x1EEE6DFA0](sub_1AB32C564, 0, 0);
}

uint64_t sub_1AB32C564()
{
  if (!*(*(v0 + 216) + 16) || (v1 = sub_1AB016558(*(v0 + 224)), (v2 & 1) == 0))
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v5 = off_1ED4D19F8;
    v6 = *(off_1ED4D19F8 + 2);

    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = 0;
    while (1)
    {
      *(v0 + 128) = v5[v7 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590, &qword_1AB4D42A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B070, &qword_1AB4EB690);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 112))
        {
          break;
        }
      }

      if (v6 == ++v7)
      {
        v7 = v6;
        break;
      }
    }

    v9 = *(v5 + 2);
    if (v7 == v9)
    {
LABEL_16:

      v4 = 0;
      goto LABEL_17;
    }

    if (v7 >= v9)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 160) = v5[v7 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590, &qword_1AB4D42A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B070, &qword_1AB4EB690);
      result = swift_dynamicCast();
      if (result)
      {
        v11 = *(v0 + 144);
        if (v11)
        {
          v12 = *(v0 + 152);

          v13 = swift_task_alloc();
          *(v0 + 232) = v13;
          *v13 = v0;
          v13[1] = sub_1AB32CB20;
          v14 = *(v0 + 216);
          v15 = *(v0 + 224);

          return sub_1AB0AB648(v0 + 176, v11, v14, v15, v11, v12);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1AB0165C4(*(*(v0 + 216) + 56) + 32 * v1, v0 + 48);
  sub_1AB014B78((v0 + 48), (v0 + 16));
  sub_1AB0165C4(v0 + 16, v0 + 80);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 184);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v4 = v3;
LABEL_17:
    v10 = *(v0 + 8);

    return v10(v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436710, &qword_1AB4D4448);
  if (swift_dynamicCast())
  {
    v16 = sub_1AB132368();

    *(v0 + 176) = v16;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v4 = v16;
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436718, &qword_1AB4D4450);
  if (swift_dynamicCast())
  {
    v3 = sub_1AB133DC4();

    *(v0 + 176) = v3;
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439500, &qword_1AB4E35F0);
  if (swift_dynamicCast())
  {
    *(v0 + 240) = *(v0 + 208);
    v17 = swift_task_alloc();
    *(v0 + 248) = v17;
    *v17 = v0;
    v17[1] = sub_1AB32CC60;

    return sub_1AB33F10C();
  }

  else
  {
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB4FF1E0);
    MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
    return sub_1AB461884();
  }
}

uint64_t sub_1AB32CB20()
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
    v6 = *(v2 + 176);
    v7 = *(v3 + 8);

    return v7(v6);
  }
}

uint64_t sub_1AB32CC60(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = sub_1AB32A598;
  }

  else
  {
    *(v4 + 264) = a1;
    *(v4 + 176) = a1;
    v5 = sub_1AB32CD8C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AB32CD8C()
{
  v1 = v0[33];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1AB32CE08(uint64_t a1, uint64_t a2)
{
  v2[25] = a1;
  v2[26] = a2;
  v3 = type metadata accessor for JetPackAsset(0);
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB32CEC8, 0, 0);
}

uint64_t sub_1AB32CEC8()
{
  if (!*(*(v0 + 208) + 16) || (v1 = sub_1AB016558(*(v0 + 216)), (v2 & 1) == 0))
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v6 = off_1ED4D19F8;
    v7 = *(off_1ED4D19F8 + 2);

    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = 0;
    while (1)
    {
      *(v0 + 128) = v6[v8 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590, &qword_1AB4D42A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AFE0, &qword_1AB4EB4C8);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 112))
        {
          break;
        }
      }

      if (v7 == ++v8)
      {
        v8 = v7;
        break;
      }
    }

    v10 = *(v6 + 2);
    if (v8 == v10)
    {
LABEL_15:
      v11 = *(v0 + 216);
      v12 = *(v0 + 224);
      v13 = *(v0 + 200);

      (*(v12 + 56))(v13, 1, 1, v11);
LABEL_25:

      v23 = *(v0 + 8);

      return v23();
    }

    if (v8 >= v10)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 160) = v6[v8 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590, &qword_1AB4D42A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AFE0, &qword_1AB4EB4C8);
      result = swift_dynamicCast();
      if (result)
      {
        v14 = *(v0 + 144);
        if (v14)
        {
          v15 = *(v0 + 152);

          v16 = swift_task_alloc();
          *(v0 + 240) = v16;
          *v16 = v0;
          v16[1] = sub_1AB32D500;
          v17 = *(v0 + 208);
          v18 = *(v0 + 216);
          v19 = *(v0 + 200);

          return sub_1AB0AB648(v19, v14, v17, v18, v14, v15);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1AB0165C4(*(*(v0 + 208) + 56) + 32 * v1, v0 + 48);
  sub_1AB014B78((v0 + 48), (v0 + 16));
  sub_1AB0165C4(v0 + 16, v0 + 80);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 224);
    v4 = *(v0 + 216);
    v5 = *(v0 + 200);
    sub_1AB342038(*(v0 + 232), v5, type metadata accessor for JetPackAsset);
    (*(v3 + 56))(v5, 0, 1, v4);
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366D0, &qword_1AB4D4408);
  if (swift_dynamicCast())
  {
    v20 = *(v0 + 216);
    v21 = *(v0 + 224);
    v22 = *(v0 + 200);
    sub_1AB132394();

    (*(v21 + 56))(v22, 0, 1, v20);
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366D8, &qword_1AB4D4410);
  if (swift_dynamicCast())
  {
    sub_1AB133E04(v24);
    (*(*(v0 + 224) + 56))(*(v0 + 200), 0, 1, *(v0 + 216));

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439508, &unk_1AB4E3608);
  if (swift_dynamicCast())
  {
    *(v0 + 248) = *(v0 + 192);
    v25 = swift_task_alloc();
    *(v0 + 256) = v25;
    *v25 = v0;
    v25[1] = sub_1AB32D618;
    v26 = *(v0 + 200);

    return sub_1AB33F47C(v26);
  }

  else
  {
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0x416B63615074654ALL, 0xEC00000074657373);
    MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
    return sub_1AB461884();
  }
}

uint64_t sub_1AB32D500()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AB32D618()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1AB32D7D8;
  }

  else
  {
    v2 = sub_1AB32D72C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB32D72C()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[25];

  (*(v2 + 56))(v3, 0, 1, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB32D7D8()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB32D854(uint64_t a1, uint64_t a2)
{
  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB32D874, 0, 0);
}

uint64_t sub_1AB32D874()
{
  if (!*(*(v0 + 264) + 16) || (v1 = sub_1AB016558(&type metadata for DiskJetPackLoader), (v2 & 1) == 0))
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v7 = off_1ED4D19F8;
    v8 = *(off_1ED4D19F8 + 2);

    if (!v8)
    {
      goto LABEL_15;
    }

    v9 = 0;
    while (1)
    {
      *(v0 + 184) = v7[v9 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590, &qword_1AB4D42A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B018, &qword_1AB4EB580);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 168))
        {
          break;
        }
      }

      if (v8 == ++v9)
      {
        v9 = v8;
        break;
      }
    }

    v11 = *(v7 + 2);
    if (v9 == v11)
    {
LABEL_15:
      v12 = *(v0 + 256);

      *(v12 + 32) = 0;
      *v12 = 0u;
      *(v12 + 16) = 0u;
      *(v12 + 40) = xmmword_1AB4CE300;
LABEL_25:
      v18 = *(v0 + 8);

      return v18();
    }

    if (v9 >= v11)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 216) = v7[v9 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590, &qword_1AB4D42A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B018, &qword_1AB4EB580);
      result = swift_dynamicCast();
      if (result)
      {
        v13 = *(v0 + 200);
        if (v13)
        {
          v14 = *(v0 + 208);

          v15 = swift_task_alloc();
          *(v0 + 272) = v15;
          *v15 = v0;
          v15[1] = sub_1AB32DE18;
          v16 = *(v0 + 256);
          v17 = *(v0 + 264);

          return sub_1AB0AB648(v16, v13, v17, &type metadata for DiskJetPackLoader, v13, v14);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1AB0165C4(*(*(v0 + 264) + 56) + 32 * v1, v0 + 104);
  sub_1AB014B78((v0 + 104), (v0 + 72));
  sub_1AB0165C4(v0 + 72, v0 + 136);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 256);
    v4 = *(v0 + 16);
    v5 = *(v0 + 32);
    v6 = *(v0 + 48);
    *(v3 + 48) = *(v0 + 64);
    *(v3 + 16) = v5;
    *(v3 + 32) = v6;
    *v3 = v4;
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B020, &qword_1AB4EB588);
  if (swift_dynamicCast())
  {
    sub_1AB1325BC();

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B028, &qword_1AB4EB590);
  if (swift_dynamicCast())
  {
    sub_1AB134038();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B030, &qword_1AB4EB598);
  if (swift_dynamicCast())
  {
    *(v0 + 280) = *(v0 + 248);
    v19 = swift_task_alloc();
    *(v0 + 288) = v19;
    *v19 = v0;
    v19[1] = sub_1AB32DF0C;
    v20 = *(v0 + 256);

    return sub_1AB33F634(v20);
  }

  else
  {
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 72), *(v0 + 96));
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB4FF180);
    MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
    return sub_1AB461884();
  }
}

uint64_t sub_1AB32DE18()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AB32DF0C()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1AB32E094;
  }

  else
  {
    v2 = sub_1AB32E020;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB32E020()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB32E094()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB32E108(uint64_t a1, uint64_t a2)
{
  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB32E128, 0, 0);
}

uint64_t sub_1AB32E128()
{
  if (!*(*(v0 + 264) + 16) || (v1 = sub_1AB016558(&type metadata for InMemoryJetPackLoader), (v2 & 1) == 0))
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v7 = off_1ED4D19F8;
    v8 = *(off_1ED4D19F8 + 2);

    if (!v8)
    {
      goto LABEL_15;
    }

    v9 = 0;
    while (1)
    {
      *(v0 + 184) = v7[v9 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590, &qword_1AB4D42A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AFF0, &qword_1AB4EB518);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 168))
        {
          break;
        }
      }

      if (v8 == ++v9)
      {
        v9 = v8;
        break;
      }
    }

    v11 = *(v7 + 2);
    if (v9 == v11)
    {
LABEL_15:
      v12 = *(v0 + 256);

      *(v12 + 32) = 0;
      *v12 = 0u;
      *(v12 + 16) = 0u;
      *(v12 + 40) = xmmword_1AB4CE300;
LABEL_25:
      v18 = *(v0 + 8);

      return v18();
    }

    if (v9 >= v11)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 216) = v7[v9 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590, &qword_1AB4D42A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AFF0, &qword_1AB4EB518);
      result = swift_dynamicCast();
      if (result)
      {
        v13 = *(v0 + 200);
        if (v13)
        {
          v14 = *(v0 + 208);

          v15 = swift_task_alloc();
          *(v0 + 272) = v15;
          *v15 = v0;
          v15[1] = sub_1AB343AA4;
          v16 = *(v0 + 256);
          v17 = *(v0 + 264);

          return sub_1AB0AB648(v16, v13, v17, &type metadata for InMemoryJetPackLoader, v13, v14);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1AB0165C4(*(*(v0 + 264) + 56) + 32 * v1, v0 + 104);
  sub_1AB014B78((v0 + 104), (v0 + 72));
  sub_1AB0165C4(v0 + 72, v0 + 136);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 256);
    v4 = *(v0 + 16);
    v5 = *(v0 + 32);
    v6 = *(v0 + 48);
    *(v3 + 48) = *(v0 + 64);
    *(v3 + 16) = v5;
    *(v3 + 32) = v6;
    *v3 = v4;
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AFF8, &qword_1AB4EB520);
  if (swift_dynamicCast())
  {
    sub_1AB1325DC();

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B000, &qword_1AB4EB528);
  if (swift_dynamicCast())
  {
    sub_1AB13406C();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B008, &qword_1AB4EB530);
  if (swift_dynamicCast())
  {
    *(v0 + 280) = *(v0 + 248);
    v19 = swift_task_alloc();
    *(v0 + 288) = v19;
    *v19 = v0;
    v19[1] = sub_1AB32E6CC;
    v20 = *(v0 + 256);

    return sub_1AB33F93C(v20);
  }

  else
  {
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 72), *(v0 + 96));
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000015, 0x80000001AB4FF160);
    MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
    return sub_1AB461884();
  }
}

uint64_t sub_1AB32E6CC()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1AB343AD0;
  }

  else
  {
    v2 = sub_1AB343AB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB32E7E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0, &qword_1AB4D8DD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &tv_nsec - v3;
  v5 = sub_1AB45FF84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &tv_nsec - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &tv_nsec - v10;
  v12 = *(v1 + 16);
  os_unfair_lock_lock(v12 + 4);
  v13 = *(v1 + 24);
  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v12 + 4);
    return v13;
  }

  else
  {
    v50 = v4;
    v15 = *(v1 + 32);
    v16 = qword_1EB434BA8;
    v47 = v12;
    v48 = v15;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1AB45FFC4();
    __swift_project_value_buffer(v17, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v18 = sub_1AB45FFA4();
    v19 = sub_1AB461234();
    v20 = sub_1AB461314();
    v49 = v13;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v51.tv_sec = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1AB030D2C(0xD000000000000012, 0x80000001AB50A200, &v51.tv_sec);
      v23 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v18, v19, v23, "MakeDependency", "object=%s,type=async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1AC59F020](v22, -1, -1);
      MEMORY[0x1AC59F020](v21, -1, -1);
    }

    (*(v6 + 16))(v8, v11, v5);
    sub_1AB460014();
    swift_allocObject();
    v46 = sub_1AB460004();
    (*(v6 + 8))(v11, v5);
    static MonotonicTime.now.getter(&v51);
    tv_sec = v51.tv_sec;
    tv_nsec = v51.tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v25 = v51.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v26 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v51.tv_sec = v26;

    swift_task_localValuePush();
    v27 = sub_1AB01DBA0(*(v26 + 16));
    swift_task_localValuePop();

    if (v27 && (v28 = swift_conformsToProtocol2()) != 0)
    {
      v29 = *(v28 + 8);

      v29();
      sub_1AB0318FC();
      sub_1AB460184();
      v30 = sub_1AB460154();
      v31 = *(v27 + 48);

      os_unfair_lock_lock((v31 + 20));
      v32 = *(v31 + 16);
      os_unfair_lock_unlock((v31 + 20));

      if (v32 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v30);

      sub_1AB460164();
    }

    else
    {
      v30 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B0F8, &qword_1AB4EB868);
    v33 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    v35 = MEMORY[0x1E69E7CC0];
    *(v33 + 16) = v34;
    *(v33 + 24) = v35;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 32) = 0;
    *(v33 + 56) = 0;
    v36 = *(v1 + 24);
    v37 = *(v1 + 32);
    v38 = *(v1 + 40);
    *(v1 + 24) = v33;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1AB057304(v36, v37, v38);
    os_unfair_lock_unlock(v47 + 4);
    v39 = sub_1AB460BE4();
    v40 = v50;
    (*(*(v39 - 8) + 56))(v50, 1, 1, v39);
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v43 = v48;
    v42[4] = v49;
    v42[5] = v43;
    v42[6] = v1;
    v42[7] = &type metadata for JetEngineBootstrap.URLProtocolHandler;
    v42[8] = tv_sec;
    v44 = v46;
    v42[9] = tv_nsec;
    v42[10] = v44;
    v42[11] = v25;
    v42[12] = v30;
    v42[13] = v27;
    v42[14] = v33;
    v42[15] = v41;

    sub_1AB2313A4(0, 0, v40, &unk_1AB4EB878, v42);

    return v33;
  }
}

uint64_t sub_1AB32EE34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0, &qword_1AB4D8DD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &tv_nsec - v3;
  v5 = sub_1AB45FF84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &tv_nsec - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &tv_nsec - v10;
  v12 = *(v1 + 16);
  os_unfair_lock_lock(v12 + 4);
  v13 = *(v1 + 24);
  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v12 + 4);
    return v13;
  }

  else
  {
    v50 = v4;
    v15 = *(v1 + 32);
    v16 = qword_1EB434BA8;
    v47 = v12;
    v48 = v15;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1AB45FFC4();
    __swift_project_value_buffer(v17, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v18 = sub_1AB45FFA4();
    v19 = sub_1AB461234();
    v20 = sub_1AB461314();
    v49 = v13;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v51.tv_sec = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1AB030D2C(6775106, 0xE300000000000000, &v51.tv_sec);
      v23 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v18, v19, v23, "MakeDependency", "object=%s,type=async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1AC59F020](v22, -1, -1);
      MEMORY[0x1AC59F020](v21, -1, -1);
    }

    (*(v6 + 16))(v8, v11, v5);
    sub_1AB460014();
    swift_allocObject();
    v46 = sub_1AB460004();
    (*(v6 + 8))(v11, v5);
    static MonotonicTime.now.getter(&v51);
    tv_sec = v51.tv_sec;
    tv_nsec = v51.tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v25 = v51.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v26 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v51.tv_sec = v26;

    swift_task_localValuePush();
    v27 = sub_1AB01DBA0(*(v26 + 16));
    swift_task_localValuePop();

    if (v27 && (v28 = swift_conformsToProtocol2()) != 0)
    {
      v29 = *(v28 + 8);

      v29();
      sub_1AB0318FC();
      sub_1AB460184();
      v30 = sub_1AB460154();
      v31 = *(v27 + 48);

      os_unfair_lock_lock((v31 + 20));
      v32 = *(v31 + 16);
      os_unfair_lock_unlock((v31 + 20));

      if (v32 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v30);

      sub_1AB460164();
    }

    else
    {
      v30 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BC80, &qword_1AB4DA6C0);
    v33 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    v35 = MEMORY[0x1E69E7CC0];
    *(v33 + 16) = v34;
    *(v33 + 24) = v35;
    *(v33 + 32) = 0;
    v36 = *(v1 + 24);
    v37 = *(v1 + 32);
    v38 = *(v1 + 40);
    *(v1 + 24) = v33;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1AB057304(v36, v37, v38);
    os_unfair_lock_unlock(v47 + 4);
    v39 = sub_1AB460BE4();
    v40 = v50;
    (*(*(v39 - 8) + 56))(v50, 1, 1, v39);
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v43 = v48;
    v42[4] = v49;
    v42[5] = v43;
    v42[6] = v1;
    v42[7] = &type metadata for Bag;
    v42[8] = tv_sec;
    v44 = v46;
    v42[9] = tv_nsec;
    v42[10] = v44;
    v42[11] = v25;
    v42[12] = v30;
    v42[13] = v27;
    v42[14] = v33;
    v42[15] = v41;

    sub_1AB2313A4(0, 0, v40, &unk_1AB4EB668, v42);

    return v33;
  }
}

uint64_t sub_1AB32F474()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0, &qword_1AB4D8DD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &tv_nsec - v3;
  v5 = sub_1AB45FF84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &tv_nsec - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &tv_nsec - v10;
  v12 = *(v0 + 16);
  os_unfair_lock_lock(v12 + 4);
  v13 = *(v0 + 24);
  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v12 + 4);
  }

  else
  {
    v53 = v13;
    v54 = v4;
    v14 = *(v1 + 32);
    v15 = qword_1EB434BA8;
    v51 = v12;
    v52 = v14;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_1AB45FFC4();
    __swift_project_value_buffer(v16, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v17 = sub_1AB45FFA4();
    v18 = sub_1AB461234();
    if (sub_1AB461314())
    {
      v19 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55.tv_sec = v50;
      *v19 = 136315138;
      sub_1AB016760(0, &unk_1ED4D1398, 0x1E698CAC8);
      v20 = sub_1AB462314();
      v22 = sub_1AB030D2C(v20, v21, &v55.tv_sec);

      *(v19 + 4) = v22;
      v23 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v17, v18, v23, "MakeDependency", "object=%s,type=async", v19, 0xCu);
      v24 = v50;
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x1AC59F020](v24, -1, -1);
      MEMORY[0x1AC59F020](v19, -1, -1);
    }

    (*(v6 + 16))(v8, v11, v5);
    sub_1AB460014();
    swift_allocObject();
    v50 = sub_1AB460004();
    (*(v6 + 8))(v11, v5);
    static MonotonicTime.now.getter(&v55);
    tv_sec = v55.tv_sec;
    tv_nsec = v55.tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v26 = v55.tv_sec;
    v27 = sub_1AB016760(0, &unk_1ED4D1398, 0x1E698CAC8);
    type metadata accessor for BaseObjectGraph();
    v28 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v55.tv_sec = v28;

    swift_task_localValuePush();
    v29 = sub_1AB01DBA0(*(v28 + 16));
    swift_task_localValuePop();

    if (v29)
    {
      v30 = swift_conformsToProtocol2();
      v31 = 0;
      if (v30 && v27)
      {
        v32 = *(v30 + 8);
        v33 = v30;

        v32(v27, v33);
        sub_1AB0318FC();
        sub_1AB460184();
        v31 = sub_1AB460154();
        v34 = *(v29 + 48);

        os_unfair_lock_lock((v34 + 20));
        v35 = *(v34 + 16);
        os_unfair_lock_unlock((v34 + 20));

        if (v35 == 1)
        {

          sub_1AB460124();
        }

        sub_1AB3858E0(v31);

        sub_1AB460164();
      }
    }

    else
    {
      v31 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B108, &qword_1AB4EB8B0);
    v13 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    v37 = MEMORY[0x1E69E7CC0];
    *(v13 + 16) = v36;
    *(v13 + 24) = v37;
    *(v13 + 32) = 0;
    v38 = *(v1 + 24);
    v39 = *(v1 + 32);
    v40 = *(v1 + 40);
    *(v1 + 24) = v13;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1AB057304(v38, v39, v40);
    os_unfair_lock_unlock(v51 + 4);
    v41 = sub_1AB460BE4();
    v42 = v54;
    (*(*(v41 - 8) + 56))(v54, 1, 1, v41);
    v43 = swift_allocObject();
    swift_weakInit();
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v45 = v52;
    v44[4] = v53;
    v44[5] = v45;
    v44[6] = v1;
    v44[7] = v27;
    v47 = tv_nsec;
    v46 = v50;
    v44[8] = tv_sec;
    v44[9] = v47;
    v44[10] = v46;
    v44[11] = v26;
    v44[12] = v31;
    v44[13] = v29;
    v44[14] = v13;
    v44[15] = v43;

    sub_1AB2313A4(0, 0, v42, &unk_1AB4EB8C0, v44);
  }

  return v13;
}

uint64_t sub_1AB32FAE4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0, &qword_1AB4D8DD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v40 - v3;
  v5 = sub_1AB45FF84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = *(v1 + 16);
  os_unfair_lock_lock(v12 + 4);
  v13 = *(v1 + 24);
  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v12 + 4);
    return v13;
  }

  else
  {
    v43 = v4;
    v15 = *(v1 + 32);
    v16 = qword_1EB434BA8;
    v40 = v12;
    v41 = v15;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1AB45FFC4();
    __swift_project_value_buffer(v17, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v18 = sub_1AB45FFA4();
    v19 = sub_1AB461234();
    v20 = sub_1AB461314();
    v42 = v13;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44.tv_sec = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1AB030D2C(0xD000000000000017, 0x80000001AB4FEF80, &v44.tv_sec);
      v23 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v18, v19, v23, "MakeDependency", "object=%s,type=async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1AC59F020](v22, -1, -1);
      MEMORY[0x1AC59F020](v21, -1, -1);
    }

    (*(v6 + 16))(v8, v11, v5);
    sub_1AB460014();
    swift_allocObject();
    v24 = sub_1AB460004();
    (*(v6 + 8))(v11, v5);
    static MonotonicTime.now.getter(&v44);
    tv_sec = v44.tv_sec;
    tv_nsec = v44.tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v27 = v44.tv_sec;
    started = type metadata accessor for StartUpPerformanceEvent();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B0E8, &qword_1AB4EB810);
    v29 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    v31 = MEMORY[0x1E69E7CC0];
    *(v29 + 16) = v30;
    *(v29 + 24) = v31;
    *(v29 + 32) = 0;
    v32 = *(v1 + 24);
    v33 = *(v1 + 32);
    v34 = *(v1 + 40);
    *(v1 + 24) = v29;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1AB057304(v32, v33, v34);
    os_unfair_lock_unlock(v40 + 4);
    v35 = sub_1AB460BE4();
    v36 = v43;
    (*(*(v35 - 8) + 56))(v43, 1, 1, v35);
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v39 = v41;
    v38[4] = v42;
    v38[5] = v39;
    v38[6] = v1;
    v38[7] = started;
    v38[8] = tv_sec;
    v38[9] = tv_nsec;
    v38[10] = v24;
    v38[11] = v27;
    v38[12] = 0;
    v38[13] = 0;
    v38[14] = v29;
    v38[15] = v37;

    sub_1AB2313A4(0, 0, v36, &unk_1AB4EB820, v38);

    return v29;
  }
}

uint64_t sub_1AB32FFB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0, &qword_1AB4D8DD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v41 - v3;
  v5 = sub_1AB45FF84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = *(v1 + 16);
  os_unfair_lock_lock(v12 + 4);
  v13 = *(v1 + 24);
  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v12 + 4);
    return v13;
  }

  else
  {
    v46 = v4;
    v15 = *(v1 + 32);
    v16 = qword_1EB434BA8;
    v43 = v12;
    v44 = v15;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1AB45FFC4();
    __swift_project_value_buffer(v17, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v18 = sub_1AB45FFA4();
    v19 = sub_1AB461234();
    v20 = sub_1AB461314();
    v45 = v13;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v47.tv_sec = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1AB030D2C(0xD000000000000021, 0x80000001AB4FF090, &v47.tv_sec);
      v23 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v18, v19, v23, "MakeDependency", "object=%s,type=async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1AC59F020](v22, -1, -1);
      MEMORY[0x1AC59F020](v21, -1, -1);
    }

    (*(v6 + 16))(v8, v11, v5);
    sub_1AB460014();
    swift_allocObject();
    v42 = sub_1AB460004();
    (*(v6 + 8))(v11, v5);
    static MonotonicTime.now.getter(&v47);
    tv_sec = v47.tv_sec;
    tv_nsec = v47.tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v26 = v47.tv_sec;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436690, &qword_1AB4D43D8);
    if (v27 == type metadata accessor for StartUpPerformanceEvent())
    {
      v29 = 0;
    }

    else
    {
      type metadata accessor for BaseObjectGraph();
      v28 = static BaseObjectGraph.current.getter();
      if (qword_1EB4359B0 != -1)
      {
        swift_once();
      }

      v47.tv_sec = v28;

      swift_task_localValuePush();
      v29 = sub_1AB01DBA0(*(v28 + 16));
      swift_task_localValuePop();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AFB8, &qword_1AB4EB3F8);
    v30 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    v32 = MEMORY[0x1E69E7CC0];
    *(v30 + 16) = v31;
    *(v30 + 24) = v32;
    *(v30 + 64) = 0;
    v33 = *(v1 + 24);
    v34 = *(v1 + 32);
    v35 = *(v1 + 40);
    *(v1 + 24) = v30;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1AB057304(v33, v34, v35);
    os_unfair_lock_unlock(v43 + 4);
    v36 = sub_1AB460BE4();
    v37 = v46;
    (*(*(v36 - 8) + 56))(v46, 1, 1, v36);
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v40 = v44;
    v39[4] = v45;
    v39[5] = v40;
    v39[6] = v1;
    v39[7] = v27;
    v39[8] = tv_sec;
    v39[9] = tv_nsec;
    v39[10] = v42;
    v39[11] = v26;
    v39[12] = 0;
    v39[13] = v29;
    v39[14] = v30;
    v39[15] = v38;

    sub_1AB2313A4(0, 0, v37, &unk_1AB4EB408, v39);

    return v30;
  }
}

uint64_t sub_1AB33052C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0, &qword_1AB4D8DD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &tv_nsec - v3;
  v5 = sub_1AB45FF84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &tv_nsec - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &tv_nsec - v10;
  v12 = *(v1 + 16);
  os_unfair_lock_lock(v12 + 4);
  v13 = *(v1 + 24);
  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v12 + 4);
    return v13;
  }

  else
  {
    v50 = v4;
    v15 = *(v1 + 32);
    v16 = qword_1EB434BA8;
    v47 = v12;
    v48 = v15;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1AB45FFC4();
    __swift_project_value_buffer(v17, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v18 = sub_1AB45FFA4();
    v19 = sub_1AB461234();
    v20 = sub_1AB461314();
    v49 = v13;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v51.tv_sec = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1AB030D2C(0xD000000000000015, 0x80000001AB4FF050, &v51.tv_sec);
      v23 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v18, v19, v23, "MakeDependency", "object=%s,type=async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1AC59F020](v22, -1, -1);
      MEMORY[0x1AC59F020](v21, -1, -1);
    }

    (*(v6 + 16))(v8, v11, v5);
    sub_1AB460014();
    swift_allocObject();
    v46 = sub_1AB460004();
    (*(v6 + 8))(v11, v5);
    static MonotonicTime.now.getter(&v51);
    tv_sec = v51.tv_sec;
    tv_nsec = v51.tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v25 = v51.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v26 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v51.tv_sec = v26;

    swift_task_localValuePush();
    v27 = sub_1AB01DBA0(*(v26 + 16));
    swift_task_localValuePop();

    if (v27 && (v28 = swift_conformsToProtocol2()) != 0)
    {
      v29 = *(v28 + 8);

      v29();
      sub_1AB0318FC();
      sub_1AB460184();
      v30 = sub_1AB460154();
      v31 = *(v27 + 48);

      os_unfair_lock_lock((v31 + 20));
      v32 = *(v31 + 16);
      os_unfair_lock_unlock((v31 + 20));

      if (v32 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v30);

      sub_1AB460164();
    }

    else
    {
      v30 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AFC8, &qword_1AB4EB440);
    v33 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    v35 = MEMORY[0x1E69E7CC0];
    *(v33 + 16) = v34;
    *(v33 + 24) = v35;
    *(v33 + 32) = 0;
    v36 = *(v1 + 24);
    v37 = *(v1 + 32);
    v38 = *(v1 + 40);
    *(v1 + 24) = v33;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1AB057304(v36, v37, v38);
    os_unfair_lock_unlock(v47 + 4);
    v39 = sub_1AB460BE4();
    v40 = v50;
    (*(*(v39 - 8) + 56))(v50, 1, 1, v39);
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v43 = v48;
    v42[4] = v49;
    v42[5] = v43;
    v42[6] = v1;
    v42[7] = &type metadata for IntentDispatchTimeout;
    v42[8] = tv_sec;
    v44 = v46;
    v42[9] = tv_nsec;
    v42[10] = v44;
    v42[11] = v25;
    v42[12] = v30;
    v42[13] = v27;
    v42[14] = v33;
    v42[15] = v41;

    sub_1AB2313A4(0, 0, v40, &unk_1AB4EB450, v42);

    return v33;
  }
}

void *sub_1AB330B78()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0, &qword_1AB4D8DD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &tv_nsec - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377A0, &qword_1AB4D8C18);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &tv_nsec - v6;
  v8 = sub_1AB45FF84();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &tv_nsec - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &tv_nsec - v13;
  v15 = *(v0 + 16);
  os_unfair_lock_lock(v15 + 4);
  v16 = *(v0 + 24);
  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v15 + 4);
  }

  else
  {
    v52 = v15;
    v55 = v16;
    v56 = v4;
    v17 = qword_1EB434BA8;
    v54 = *(v1 + 32);

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_1AB45FFC4();
    __swift_project_value_buffer(v18, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v19 = sub_1AB45FFA4();
    v20 = sub_1AB461234();
    v21 = sub_1AB461314();
    v53 = v7;
    v51 = v5;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v57.tv_sec = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1AB030D2C(0xD000000000000019, 0x80000001AB4FF030, &v57.tv_sec);
      v24 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v19, v20, v24, "MakeDependency", "object=%s,type=async", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1AC59F020](v23, -1, -1);
      MEMORY[0x1AC59F020](v22, -1, -1);
    }

    (*(v9 + 16))(v11, v14, v8);
    sub_1AB460014();
    swift_allocObject();
    v50 = sub_1AB460004();
    (*(v9 + 8))(v14, v8);
    static MonotonicTime.now.getter(&v57);
    tv_sec = v57.tv_sec;
    tv_nsec = v57.tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v26 = v57.tv_sec;
    v27 = type metadata accessor for PageIntentInstrumentation(0);
    type metadata accessor for BaseObjectGraph();
    v28 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v57.tv_sec = v28;

    swift_task_localValuePush();
    v29 = sub_1AB01DBA0(*(v28 + 16));
    swift_task_localValuePop();

    if (v29)
    {
      v30 = swift_conformsToProtocol2();
      v31 = 0;
      if (v30 && v27)
      {
        v32 = *(v30 + 8);
        v33 = v30;

        v32(v27, v33);
        sub_1AB0318FC();
        sub_1AB460184();
        v31 = sub_1AB460154();
        v34 = *(v29 + 48);

        os_unfair_lock_lock((v34 + 20));
        v35 = *(v34 + 16);
        os_unfair_lock_unlock((v34 + 20));

        if (v35 == 1)
        {

          sub_1AB460124();
        }

        sub_1AB3858E0(v31);

        sub_1AB460164();
      }
    }

    else
    {
      v31 = 0;
    }

    v36 = v53;
    *v53 = MEMORY[0x1E69E7CC0];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AFD8, &qword_1AB4EB488);
    v16 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    v16[2] = v37;
    sub_1AB017FB8(v36, v16 + *(*v16 + 96), &unk_1EB4377A0, &qword_1AB4D8C18);
    v38 = *(v1 + 24);
    v39 = *(v1 + 32);
    v40 = *(v1 + 40);
    *(v1 + 24) = v16;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1AB057304(v38, v39, v40);
    os_unfair_lock_unlock(v52 + 4);
    v41 = sub_1AB460BE4();
    v42 = v56;
    (*(*(v41 - 8) + 56))(v56, 1, 1, v41);
    v43 = swift_allocObject();
    swift_weakInit();
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v45 = v54;
    v44[4] = v55;
    v44[5] = v45;
    v44[6] = v1;
    v44[7] = v27;
    v47 = tv_nsec;
    v46 = v50;
    v44[8] = tv_sec;
    v44[9] = v47;
    v44[10] = v46;
    v44[11] = v26;
    v44[12] = v31;
    v44[13] = v29;
    v44[14] = v16;
    v44[15] = v43;

    sub_1AB2313A4(0, 0, v42, &unk_1AB4EB498, v44);
  }

  return v16;
}

uint64_t sub_1AB331260()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0, &qword_1AB4D8DD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v41 - v3;
  v5 = sub_1AB45FF84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = *(v1 + 16);
  os_unfair_lock_lock(v12 + 4);
  v13 = *(v1 + 24);
  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v12 + 4);
    return v13;
  }

  else
  {
    v46 = v4;
    v15 = *(v1 + 32);
    v16 = qword_1EB434BA8;
    v43 = v12;
    v44 = v15;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1AB45FFC4();
    __swift_project_value_buffer(v17, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v18 = sub_1AB45FFA4();
    v19 = sub_1AB461234();
    v20 = sub_1AB461314();
    v45 = v13;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v47.tv_sec = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1AB030D2C(0xD000000000000010, 0x80000001AB4FF070, &v47.tv_sec);
      v23 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v18, v19, v23, "MakeDependency", "object=%s,type=async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1AC59F020](v22, -1, -1);
      MEMORY[0x1AC59F020](v21, -1, -1);
    }

    (*(v6 + 16))(v8, v11, v5);
    sub_1AB460014();
    swift_allocObject();
    v42 = sub_1AB460004();
    (*(v6 + 8))(v11, v5);
    static MonotonicTime.now.getter(&v47);
    tv_sec = v47.tv_sec;
    tv_nsec = v47.tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v26 = v47.tv_sec;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436660, &qword_1AB4D43A8);
    if (v27 == type metadata accessor for StartUpPerformanceEvent())
    {
      v29 = 0;
    }

    else
    {
      type metadata accessor for BaseObjectGraph();
      v28 = static BaseObjectGraph.current.getter();
      if (qword_1EB4359B0 != -1)
      {
        swift_once();
      }

      v47.tv_sec = v28;

      swift_task_localValuePush();
      v29 = sub_1AB01DBA0(*(v28 + 16));
      swift_task_localValuePop();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B0D8, &qword_1AB4EB7C8);
    v30 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    v32 = MEMORY[0x1E69E7CC0];
    *(v30 + 16) = v31;
    *(v30 + 24) = v32;
    *(v30 + 64) = 0;
    v33 = *(v1 + 24);
    v34 = *(v1 + 32);
    v35 = *(v1 + 40);
    *(v1 + 24) = v30;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1AB057304(v33, v34, v35);
    os_unfair_lock_unlock(v43 + 4);
    v36 = sub_1AB460BE4();
    v37 = v46;
    (*(*(v36 - 8) + 56))(v46, 1, 1, v36);
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v40 = v44;
    v39[4] = v45;
    v39[5] = v40;
    v39[6] = v1;
    v39[7] = v27;
    v39[8] = tv_sec;
    v39[9] = tv_nsec;
    v39[10] = v42;
    v39[11] = v26;
    v39[12] = 0;
    v39[13] = v29;
    v39[14] = v30;
    v39[15] = v38;

    sub_1AB2313A4(0, 0, v37, &unk_1AB4EB7D8, v39);

    return v30;
  }
}

uint64_t sub_1AB3317D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0, &qword_1AB4D8DD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &tv_nsec - v3;
  v5 = sub_1AB45FF84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &tv_nsec - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &tv_nsec - v10;
  v12 = *(v1 + 16);
  os_unfair_lock_lock(v12 + 4);
  v13 = *(v1 + 24);
  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v12 + 4);
    return v13;
  }

  else
  {
    v50 = v4;
    v15 = *(v1 + 32);
    v16 = qword_1EB434BA8;
    v47 = v12;
    v48 = v15;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1AB45FFC4();
    __swift_project_value_buffer(v17, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v18 = sub_1AB45FFA4();
    v19 = sub_1AB461234();
    v20 = sub_1AB461314();
    v49 = v13;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v51.tv_sec = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1AB030D2C(0x72756769666E6F43, 0xED00006E6F697461, &v51.tv_sec);
      v23 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v18, v19, v23, "MakeDependency", "object=%s,type=async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1AC59F020](v22, -1, -1);
      MEMORY[0x1AC59F020](v21, -1, -1);
    }

    (*(v6 + 16))(v8, v11, v5);
    sub_1AB460014();
    swift_allocObject();
    v46 = sub_1AB460004();
    (*(v6 + 8))(v11, v5);
    static MonotonicTime.now.getter(&v51);
    tv_sec = v51.tv_sec;
    tv_nsec = v51.tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v25 = v51.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v26 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v51.tv_sec = v26;

    swift_task_localValuePush();
    v27 = sub_1AB01DBA0(*(v26 + 16));
    swift_task_localValuePop();

    if (v27 && (v28 = swift_conformsToProtocol2()) != 0)
    {
      v29 = *(v28 + 8);

      v29();
      sub_1AB0318FC();
      sub_1AB460184();
      v30 = sub_1AB460154();
      v31 = *(v27 + 48);

      os_unfair_lock_lock((v31 + 20));
      v32 = *(v31 + 16);
      os_unfair_lock_unlock((v31 + 20));

      if (v32 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v30);

      sub_1AB460164();
    }

    else
    {
      v30 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B0A0, &qword_1AB4EB710);
    v33 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    v35 = MEMORY[0x1E69E7CC0];
    *(v33 + 16) = v34;
    *(v33 + 24) = v35;
    *(v33 + 104) = 0;
    v36 = *(v1 + 24);
    v37 = *(v1 + 32);
    v38 = *(v1 + 40);
    *(v1 + 24) = v33;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1AB057304(v36, v37, v38);
    os_unfair_lock_unlock(v47 + 4);
    v39 = sub_1AB460BE4();
    v40 = v50;
    (*(*(v39 - 8) + 56))(v50, 1, 1, v39);
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v43 = v48;
    v42[4] = v49;
    v42[5] = v43;
    v42[6] = v1;
    v42[7] = &type metadata for JetPackAssetSession.Configuration;
    v42[8] = tv_sec;
    v44 = v46;
    v42[9] = tv_nsec;
    v42[10] = v44;
    v42[11] = v25;
    v42[12] = v30;
    v42[13] = v27;
    v42[14] = v33;
    v42[15] = v41;

    sub_1AB2313A4(0, 0, v40, &unk_1AB4EB720, v42);

    return v33;
  }
}