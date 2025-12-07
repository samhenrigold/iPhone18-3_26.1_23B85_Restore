char *sub_195F44EF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_195FA0778();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_195FA07D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = *&result[OBJC_IVAR___CHSWidgetRelevanceService_queue];
    v12 = result;
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a1;
    aBlock[4] = sub_195F49BF0;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195EBDBE8;
    aBlock[3] = &block_descriptor_113_0;
    v14 = _Block_copy(aBlock);
    v18 = v7;
    v15 = v14;
    v17 = v12;

    sub_195FA0798();
    v20 = MEMORY[0x1E69E7CC0];
    sub_195EBDBA0(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
    sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
    sub_195FA0E38();
    MEMORY[0x19A8C42F0](0, v10, v6, v15);
    _Block_release(v15);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v18);
  }

  return result;
}

uint64_t sub_195F4520C(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR___CHSWidgetRelevanceService_queue_timelineEntryRelevances) = a2;

  return sub_195F47D10(&unk_1F0A532C8, sub_195F49B54, &block_descriptor_101);
}

char *sub_195F45274(void *a1, uint64_t a2)
{
  v3 = sub_195FA0778();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_195FA07D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = *&result[OBJC_IVAR___CHSWidgetRelevanceService_queue];
    v12 = result;
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a1;
    aBlock[4] = sub_195F49B78;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195EBDBE8;
    aBlock[3] = &block_descriptor_107;
    v14 = _Block_copy(aBlock);
    v19 = v7;
    v15 = v14;
    v18 = v12;
    v16 = a1;
    sub_195FA0798();
    v21 = MEMORY[0x1E69E7CC0];
    sub_195EBDBA0(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
    sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
    sub_195FA0E38();
    MEMORY[0x19A8C42F0](0, v10, v6, v15);
    _Block_release(v15);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v19);
  }

  return result;
}

uint64_t sub_195F45588(void *a1)
{
  v2 = v1;
  v4 = [a1 eventType];
  if (v4 < 2)
  {
    v5 = OBJC_IVAR___CHSWidgetRelevanceService_queue_cachedWidgetRelevanceProperties;
    swift_beginAccess();
    *(v2 + v5) = 0;

    sub_195F48144();
    return sub_195F47D10(&unk_1F0A53278, sub_195F49AF0, &block_descriptor_95);
  }

  if (v4 == 2)
  {
    v6 = OBJC_IVAR___CHSWidgetRelevanceService_queue_cachedWidgetRelevanceProperties;
    swift_beginAccess();
    if (!*(v2 + v6))
    {
LABEL_8:
      swift_endAccess();
      return sub_195F47D10(&unk_1F0A53278, sub_195F49AF0, &block_descriptor_95);
    }

    v7 = a1;
    v8 = sub_195F494C8((v2 + v6), v7);

    v9 = *(v2 + v6);
    if (v9 >> 62)
    {
      v10 = sub_195FA0E88();
      if (v10 >= v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10 >= v8)
      {
LABEL_7:
        sub_195F49A04(v8, v10);
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  type metadata accessor for CHSWidgetRelevanceServiceEventType(0);
  sub_195FA1318();
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

void sub_195F45708()
{
  v13[1] = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssert();
  v1 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_options);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_connection);
    v13[0] = 0;
    v3 = [v2 subscribeToWidgetRelevanceEvents_];
    v4 = v13[0];
    *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_queue_widgetRelevanceAssertion) = v3;
    v5 = v4;
    swift_unknownObjectRelease();
    sub_195F47D10(&unk_1F0A53278, sub_195F49AF0, &block_descriptor_95);
  }

  if ((v1 & 2) != 0)
  {
    v6 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_connection);
    v12 = 0;
    v13[0] = 0;
    v7 = [v6 subscribeToTimelineEntryRelevance:v13 outTimelineEntryRelevance:&v12];
    v9 = v12;
    v8 = v13[0];
    *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_queue_timelineEntryRelevanceAssertion) = v7;
    v10 = v8;
    v11 = v9;
    swift_unknownObjectRelease();
    if (v11)
    {
      v13[0] = 0;
      sub_195EB4B30(0, &qword_1EAEEDD50, off_1E74527C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDD58, &unk_195FACFC8);
      sub_195F48E88(&unk_1EAEEDD60, &qword_1EAEEDD50, off_1E74527C8, MEMORY[0x1E69E81B8]);
      sub_195FA07F8();

      if (v13[0])
      {
        *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_queue_timelineEntryRelevances) = v13[0];

        sub_195F47D10(&unk_1F0A532C8, sub_195F49B54, &block_descriptor_101);
      }
    }

    else
    {
      v11 = v10;
    }
  }
}

void sub_195F45940(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v2)
    {
      v4 = Strong;
      if (qword_1EAEEBBA8 != -1)
      {
        swift_once();
      }

      v5 = sub_195FA0678();
      __swift_project_value_buffer(v5, qword_1EAEF7238);
      v6 = sub_195FA0658();
      v7 = sub_195FA0CC8();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_195EB2000, v6, v7, "First unlock event received so do a reload. Observers will be notified afterward", v8, 2u);
        MEMORY[0x19A8C5B70](v8, -1, -1);
      }

      v9 = [objc_opt_self() reloadEvent];
      sub_195F45588(v9);

      Strong = v9;
    }
  }
}

id sub_195F45B2C()
{
  v1 = *&v0[OBJC_IVAR___CHSWidgetRelevanceService_queue_widgetRelevanceAssertion];
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = *&v0[OBJC_IVAR___CHSWidgetRelevanceService_queue_timelineEntryRelevanceAssertion];
  if (v2)
  {
    [v2 invalidate];
  }

  v4.receiver = v0;
  v4.super_class = CHSWidgetRelevanceService;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_195F45CB8()
{
  v0 = sub_195FA0CD8();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_195FA07D8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_195FA0CF8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195EB4B30(0, &qword_1EAEEC590, 0x1E69E9610);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8098], v2);
  sub_195FA0798();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_195EBDBA0(&qword_1EAEEC5A0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE3A0, &unk_195FAC790);
  sub_195EB5F38(&qword_1EAEEC5B0, &unk_1EAEEE3A0, &unk_195FAC790, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  result = sub_195FA0D38();
  qword_1EAEF7230 = result;
  return result;
}

Swift::Void __swiftcall CHSWidgetRelevanceService.invalidate()()
{
  v1 = sub_195FA0778();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_195FA07D8();
  v5 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = *&v0[OBJC_IVAR___CHSWidgetRelevanceService_queue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_195F461FC;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_7;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  sub_195FA0798();
  v13 = MEMORY[0x1E69E7CC0];
  sub_195EBDBA0(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v7, v4, v9);
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v12);
}

uint64_t sub_195F46230()
{
  BSDispatchQueueAssert();
  v1 = OBJC_IVAR___CHSWidgetRelevanceService_queue_timelineEntryRelevanceAssertion;
  v2 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_queue_timelineEntryRelevanceAssertion);
  if (v2)
  {
    [v2 invalidate];
  }

  *(v0 + v1) = 0;
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR___CHSWidgetRelevanceService_queue_widgetRelevanceAssertion;
  v4 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_queue_widgetRelevanceAssertion);
  if (v4)
  {
    [v4 invalidate];
  }

  *(v0 + v3) = 0;

  return swift_unknownObjectRelease();
}

unint64_t CHSWidgetRelevanceService.timelineEntryRelevances.getter()
{
  v10 = sub_195F2DB60(MEMORY[0x1E69E7CC0]);
  v1 = *&v0[OBJC_IVAR___CHSWidgetRelevanceService_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v10;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_195F48D88;
  *(v3 + 24) = v2;
  aBlock[4] = sub_195EC7340;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EC7454;
  aBlock[3] = &block_descriptor_9;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t CHSWidgetRelevanceService.widgetRelevanceProperties.getter()
{
  v10 = MEMORY[0x1E69E7CC0];
  v1 = *&v0[OBJC_IVAR___CHSWidgetRelevanceService_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v10;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_195F48DD4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_195EC74B8;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EC7454;
  aBlock[3] = &block_descriptor_19;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t sub_195F4672C(uint64_t *a1, uint64_t a2)
{
  BSDispatchQueueAssert();
  v4 = OBJC_IVAR___CHSWidgetRelevanceService_queue_cachedWidgetRelevanceProperties;
  swift_beginAccess();
  if (*(a2 + v4))
  {
    v5 = *(a2 + v4);
  }

  else
  {
    v5 = sub_195F48ACC();
    *(a2 + v4) = v5;
  }

  *a1 = v5;
}

uint64_t sub_195F46840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_195FA0778();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_195FA07D8();
  v12 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v4[OBJC_IVAR___CHSWidgetRelevanceService_queue];
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);
  v17 = v4;
  swift_unknownObjectRetain();
  sub_195FA0798();
  v21 = MEMORY[0x1E69E7CC0];
  sub_195EBDBA0(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v14, v11, v16);
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);
}

void sub_195F46B24(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t CHSWidgetRelevanceService.reloadWidgetRelevance(for:kind:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_195FA0778();
  v24 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_195FA07D8();
  v14 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *&v5[OBJC_IVAR___CHSWidgetRelevanceService_queue];
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  aBlock[4] = sub_195F48E28;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_37;
  v18 = _Block_copy(aBlock);

  v19 = v5;

  v20 = a1;
  sub_195FA0798();
  v25 = MEMORY[0x1E69E7CC0];
  sub_195EBDBA0(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v16, v13, v18);
  _Block_release(v18);
  (*(v24 + 8))(v13, v11);
  (*(v14 + 8))(v16, v23);
}

void sub_195F46EA0(uint64_t a1, void (*a2)(id), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + OBJC_IVAR___CHSWidgetRelevanceService_queue_invalidated))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDC0, &qword_195FAD008);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_195FAC070;
    *(inited + 32) = sub_195FA08B8();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v9;
    *(inited + 48) = 0xD00000000000002ELL;
    *(inited + 56) = 0x8000000195FC0FA0;
    sub_195F2DD54(inited);
    swift_setDeallocating();
    sub_195F2DB00(inited + 32, &qword_1EAEED640, &qword_195FAD010);
    v10 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v11 = sub_195FA0888();
    v12 = sub_195FA07E8();

    v13 = [v10 initWithDomain:v11 code:1 userInfo:v12];

    v14 = v13;
    a2(v13);
  }

  else
  {
    v16 = *(a1 + OBJC_IVAR___CHSWidgetRelevanceService_connection);
    if (a6)
    {
      v14 = sub_195FA0888();
    }

    else
    {
      v14 = 0;
    }

    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F9B590;
    aBlock[3] = &block_descriptor_122;
    v17 = _Block_copy(aBlock);

    [v16 reloadWidgetRelevanceForExtensionIdentity:a4 kind:v14 completion:v17];
    _Block_release(v17);
  }
}

uint64_t CHSWidgetRelevanceService.acquireLifetimeAssertion(for:metrics:prewarm:timeout:completion:)(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  v13 = sub_195FA0778();
  v27 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_195FA07D8();
  v16 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *&v6[OBJC_IVAR___CHSWidgetRelevanceService_queue];
  v19 = swift_allocObject();
  *(v19 + 16) = v6;
  *(v19 + 24) = a4;
  *(v19 + 32) = a5;
  *(v19 + 40) = a1;
  *(v19 + 48) = a2;
  *(v19 + 56) = a3;
  *(v19 + 64) = a6;
  aBlock[4] = sub_195F48E38;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_43_0;
  v20 = _Block_copy(aBlock);
  v21 = v6;

  v22 = a1;
  v23 = a2;
  sub_195FA0798();
  v28 = MEMORY[0x1E69E7CC0];
  sub_195EBDBA0(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v18, v15, v20);
  _Block_release(v20);
  (*(v27 + 8))(v15, v13);
  (*(v16 + 8))(v18, v26);
}

void sub_195F474D4(uint64_t a1, void (*a2)(void, id), uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7)
{
  if (*(a1 + OBJC_IVAR___CHSWidgetRelevanceService_queue_invalidated))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDC0, &qword_195FAD008);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_195FAC070;
    *(inited + 32) = sub_195FA08B8();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v10;
    *(inited + 48) = 0xD000000000000042;
    *(inited + 56) = 0x8000000195FC0F30;
    sub_195F2DD54(inited);
    swift_setDeallocating();
    sub_195F2DB00(inited + 32, &qword_1EAEED640, &qword_195FAD010);
    v11 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v12 = sub_195FA0888();
    v13 = sub_195FA07E8();

    v14 = [v11 initWithDomain:v12 code:1 userInfo:v13];

    v15 = v14;
    a2(0, v14);
    v16 = v15;
  }

  else
  {
    v19 = *(a1 + OBJC_IVAR___CHSWidgetRelevanceService_connection);
    v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    aBlock[4] = sub_195F49BF8;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F47808;
    aBlock[3] = &block_descriptor_119;
    v22 = _Block_copy(aBlock);

    [v19 acquireLifetimeAssertionForWidget:a4 metrics:a5 prewarm:v15 timeout:v16 completion:v22];
    _Block_release(v22);
  }
}

void sub_195F47790(uint64_t a1, id a2, void (*a3)(void))
{
  if (a2)
  {
    v5 = a2;
    (a3)(0, a2);
  }

  else
  {
    (a3)(a1);
  }
}

void sub_195F47808(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_195F47968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_195FA0318();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void CHSWidgetRelevanceService.acquireWidgetLifetimeAssertion(for:metrics:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[4] = a3;
  v8[5] = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_195F47AAC;
  v8[3] = &block_descriptor_46;
  v7 = _Block_copy(v8);

  [v4 acquireLifetimeAssertionForWidget:a1 metrics:a2 prewarm:0 timeout:v7 completion:30.0];
  _Block_release(v7);
}

uint64_t sub_195F47AAC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void __swiftcall CHSWidgetRelevanceService.init()(CHSWidgetRelevanceService *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_195F47D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_195FA0778();
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_195FA07D8();
  v9 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  v12 = [*&v3[OBJC_IVAR___CHSWidgetRelevanceService_queue_observers] allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDDB0, &qword_195FAD000);
  v13 = sub_195FA0B38();

  if (qword_1EAEEBAF8 != -1)
  {
    swift_once();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v3;
  aBlock[4] = a2;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = a3;
  v15 = _Block_copy(aBlock);
  v16 = v3;
  sub_195FA0798();
  v21 = MEMORY[0x1E69E7CC0];
  sub_195EBDBA0(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v11, v8, v15);
  _Block_release(v15);
  (*(v20 + 8))(v8, v6);
  (*(v9 + 8))(v11, v19);
}

unint64_t sub_195F48058(unint64_t result, uint64_t a2, SEL *a3)
{
  v5 = result;
  if (result >> 62)
  {
    result = sub_195FA0E88();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x19A8C4520](i, v5);
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v8 respondsToSelector_])
      {
        [v8 *a3];
      }

      result = swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_195F48144()
{
  v1 = OBJC_IVAR___CHSWidgetRelevanceService_queue_widgetRelevanceCache;
  if (*(v0 + OBJC_IVAR___CHSWidgetRelevanceService_queue_widgetRelevanceCache))
  {

    sub_195F65098();
    if (qword_1EAEEBBA8 != -1)
    {
      swift_once();
    }

    v2 = sub_195FA0678();
    __swift_project_value_buffer(v2, qword_1EAEF7238);
    oslog = sub_195FA0658();
    v3 = sub_195FA0CC8();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_195EB2000, oslog, v3, "Reloaded RelevanceCache", v4, 2u);
      MEMORY[0x19A8C5B70](v4, -1, -1);
    }
  }

  else
  {
    v5 = v0;
    v7 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_cachePath);
    v6 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_cachePath + 8);
    type metadata accessor for RelevanceCache();
    v8 = swift_allocObject();

    v9 = MEMORY[0x1E69E7CC0];
    v8[2] = sub_195F2DC58(MEMORY[0x1E69E7CC0]);
    v8[3] = v9;
    v8[4] = 0;
    v8[5] = v7;
    v8[6] = v6;
    sub_195F65098();
    *(v5 + v1) = v8;

    if (qword_1EAEEBBA8 != -1)
    {
      swift_once();
    }

    v10 = sub_195FA0678();
    __swift_project_value_buffer(v10, qword_1EAEF7238);
    oslog = sub_195FA0658();
    v11 = sub_195FA0CC8();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_195EB2000, oslog, v11, "Loaded RelevanceCache", v12, 2u);
      MEMORY[0x19A8C5B70](v12, -1, -1);
    }
  }
}

uint64_t sub_195F4860C()
{
  v1 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_queue);
  v10 = nullsub_1;
  v11 = 0;
  v6 = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  v8 = sub_195EC7454;
  v9 = &block_descriptor_62;
  v2 = _Block_copy(&v6);

  dispatch_sync(v1, v2);
  _Block_release(v2);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else if (qword_1EAEEBAF8 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v3 = qword_1EAEF7230;
  v10 = nullsub_1;
  v11 = 0;
  v6 = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  v8 = sub_195EC7454;
  v9 = &block_descriptor_65;
  v4 = _Block_copy(&v6);

  dispatch_sync(v3, v4);
  _Block_release(v4);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

id sub_195F48A44()
{
  v2.receiver = v0;
  v2.super_class = _s16ConnectionClientCMa_0();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_195F48ACC()
{
  BSDispatchQueueAssert();
  v1 = OBJC_IVAR___CHSWidgetRelevanceService_queue_widgetRelevanceCache;
  v2 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_queue_widgetRelevanceCache);
  if (v2 || (sub_195F48144(), (v2 = *(v0 + v1)) != 0))
  {

    v3 = sub_195F64F08();

    sub_195F48F18(v3, v2);
    v5 = v4;

    if (qword_1EAEEBBA8 != -1)
    {
      swift_once();
    }

    v6 = sub_195FA0678();
    __swift_project_value_buffer(v6, qword_1EAEF7238);
    v7 = sub_195FA0658();
    v8 = sub_195FA0CC8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_195EB2000, v7, v8, "Loaded relevance properties", v9, 2u);
      MEMORY[0x19A8C5B70](v9, -1, -1);
    }
  }

  else
  {
    if (qword_1EAEEBBA8 != -1)
    {
      swift_once();
    }

    v11 = sub_195FA0678();
    __swift_project_value_buffer(v11, qword_1EAEF7238);
    v7 = sub_195FA0658();
    v12 = sub_195FA0CA8();
    if (os_log_type_enabled(v7, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_195EB2000, v7, v12, "Read from WidgetRelevanceCache while its unavailable, giving no results", v13, 2u);
      MEMORY[0x19A8C5B70](v13, -1, -1);
    }

    v5 = MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t sub_195F48CE8(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_195FA0E88();
LABEL_9:
  result = sub_195FA0F68();
  *v2 = result;
  return result;
}

uint64_t sub_195F48D88()
{
  **(v0 + 16) = *(*(v0 + 24) + OBJC_IVAR___CHSWidgetRelevanceService_queue_timelineEntryRelevances);
}

SEL *sub_195F48DF4(SEL *result)
{
  v2 = *(v1 + 16);
  if ((*(v2 + OBJC_IVAR___CHSWidgetRelevanceService_queue_invalidated) & 1) == 0)
  {
    return [*(v2 + OBJC_IVAR___CHSWidgetRelevanceService_queue_observers) *result];
  }

  return result;
}

uint64_t sub_195F48E88(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_195EB4B30(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_195F48F18(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v26 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_195FA0E78();
    sub_195EB4B30(0, &qword_1EAEEBD40, off_1E7452818);
    sub_195F48E88(&qword_1EAEEBD38, &qword_1EAEEBD40, off_1E7452818, MEMORY[0x1E69E81B8]);
    sub_195FA0C28();
    v2 = v21;
    v3 = v22;
    v5 = v23;
    v4 = v24;
    v6 = v25;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v4 = 0;
  }

  while (v2 < 0)
  {
    if (!sub_195FA0EA8() || (sub_195EB4B30(0, &qword_1EAEEBD40, off_1E7452818), swift_dynamicCast(), (v12 = v20) == 0))
    {
LABEL_25:
      sub_195EB9E70(v2);
      return;
    }

LABEL_17:
    swift_beginAccess();
    v13 = *(a2 + 16);
    if (*(v13 + 16))
    {

      v14 = sub_195F59E04(v12);
      if (v15)
      {
        v16 = *(v13 + 56) + 16 * v14;
        v17 = *(v16 + 8);
        v18 = *v16;

        if (v17)
        {
        }

        else
        {
          MEMORY[0x19A8C40E0]();
          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_195FA0B58();
          }

          sub_195FA0B78();
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v10 = v4;
  v11 = v6;
  if (v6)
  {
LABEL_13:
    v6 = (v11 - 1) & v11;
    v12 = *(*(v2 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v5 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v11 = *(v3 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t sub_195F49208(unint64_t a1, void *a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_26:
    v24 = a1;
    a1 = sub_195FA0E88();
    v4 = v24;
    v5 = a1;
  }

  else
  {
    v4 = a1;
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v30 = v4 & 0xC000000000000001;
  v25 = v4;
  v29 = v4 + 32;
  v27 = a2;
  v28 = v5;
  v26 = v3;
  while (1)
  {
    if (v6 == v5)
    {
      return 0;
    }

    if (v30)
    {
      v8 = MEMORY[0x19A8C4520](v6, v25);
    }

    else
    {
      if (v6 >= *(v3 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v8 = *(v29 + 8 * v6);
    }

    v9 = v8;
    v10 = [a2 extensionIdentities];
    if (v10)
    {
      break;
    }

LABEL_5:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_25;
    }
  }

  v11 = v10;
  type metadata accessor for CHSExtensionIdentity();
  sub_195EBDBA0(&qword_1EAEEBB08, type metadata accessor for CHSExtensionIdentity, MEMORY[0x1E69E81B8]);
  v12 = sub_195FA0BF8();

  v13 = [v9 extensionIdentity];
  v14 = v13;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v15 = v13;
    v16 = sub_195FA0EB8();

    if (v16)
    {
      return v6;
    }

    goto LABEL_5;
  }

  if (!*(v12 + 16))
  {

    goto LABEL_5;
  }

  v17 = sub_195FA0D78();
  v18 = -1 << *(v12 + 32);
  v19 = v17 & ~v18;
  if (((*(v12 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
LABEL_19:

    a2 = v27;
    v5 = v28;
    v3 = v26;
    goto LABEL_5;
  }

  v20 = ~v18;
  while (1)
  {
    v21 = *(*(v12 + 48) + 8 * v19);
    v22 = sub_195FA0D88();

    if (v22)
    {
      break;
    }

    v19 = (v19 + 1) & v20;
    if (((*(v12 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  return v6;
}

unint64_t sub_195F494C8(unint64_t *a1, void *a2)
{
  v3 = a2;
  v5 = *a1;
  result = sub_195F49208(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return sub_195FA0E88();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = a1;
  v37 = 0;
  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v42 = v3;
  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == sub_195FA0E88())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    v11 = v5 & 0xC000000000000001;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x19A8C4520](v9, v5);
      goto LABEL_15;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_54;
    }

    v12 = *(v5 + 8 * v9 + 32);
LABEL_15:
    v13 = v12;
    v14 = [v3 extensionIdentities];
    if (!v14)
    {

      if (v8 != v9)
      {
        goto LABEL_28;
      }

      goto LABEL_7;
    }

    v15 = v14;
    type metadata accessor for CHSExtensionIdentity();
    sub_195EBDBA0(&qword_1EAEEBB08, type metadata accessor for CHSExtensionIdentity, MEMORY[0x1E69E81B8]);
    v16 = sub_195FA0BF8();

    v17 = [v13 extensionIdentity];
    v18 = v17;
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = v17;
      v20 = sub_195FA0EB8();

      v3 = v42;
      if ((v20 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (!*(v16 + 16))
      {

        v3 = v42;
        if (v8 != v9)
        {
          goto LABEL_28;
        }

        goto LABEL_7;
      }

      v38 = v5 & 0xC000000000000001;
      v39 = v8;
      v40 = v5;
      v21 = sub_195FA0D78();
      v22 = -1 << *(v16 + 32);
      v23 = v21 & ~v22;
      if (((*(v16 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
LABEL_26:

        v8 = v39;
        v5 = v40;
        v3 = v42;
        v11 = v38;
LABEL_27:
        if (v8 != v9)
        {
LABEL_28:
          if (v11)
          {
            v27 = MEMORY[0x19A8C4520](v8, v5);
            v28 = MEMORY[0x19A8C4520](v9, v5);
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_58;
            }

            v29 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v29)
            {
              goto LABEL_59;
            }

            if (v9 >= v29)
            {
              goto LABEL_60;
            }

            v30 = *(v5 + 32 + 8 * v9);
            v27 = *(v5 + 32 + 8 * v8);
            v28 = v30;
          }

          v31 = v28;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
          {
            v5 = sub_195F4BB24(v5);
            v32 = (v5 >> 62) & 1;
          }

          else
          {
            LODWORD(v32) = 0;
          }

          v33 = v5 & 0xFFFFFFFFFFFFFF8;
          v34 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
          *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v31;

          if ((v5 & 0x8000000000000000) != 0 || v32)
          {
            v5 = sub_195F4BB24(v5);
            v33 = v5 & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_51:
              __break(1u);
              return v8;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          if (v9 >= *(v33 + 16))
          {
            goto LABEL_57;
          }

          v35 = v33 + 8 * v9;
          v36 = *(v35 + 32);
          *(v35 + 32) = v27;

          *v41 = v5;
          v3 = v42;
        }

LABEL_7:
        v10 = __OFADD__(v8++, 1);
        if (v10)
        {
          goto LABEL_56;
        }

        goto LABEL_8;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = *(*(v16 + 48) + 8 * v23);
        v26 = sub_195FA0D88();

        if (v26)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v16 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v8 = v39;
      v5 = v40;
      v3 = v42;
    }

LABEL_8:
    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return sub_195FA0E88();
}

uint64_t sub_195F498F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_195EB4B30(0, &qword_1EAEEBAE8, off_1E7452820);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_195FA0E88();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_195FA0E88();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_195F49A04(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_195FA0E88();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_195FA0E88();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_195F48CE8(result, 1);

  return sub_195F498F4(v5, v3, 0);
}

uint64_t sub_195F49ADC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t objectdestroy_91Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroy_21Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t CHSControlState.__allocating_init(value:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t CHSControlState.copyWithNewState(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

unint64_t CHSControlState.description.getter()
{
  sub_195FA0F38();

  v0 = sub_195FA1288();
  MEMORY[0x19A8C3F70](v0);

  MEMORY[0x19A8C3F70](62, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t sub_195F49E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_195FA12B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_195F49EB0(uint64_t a1)
{
  v2 = sub_195F4A070();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F49EEC(uint64_t a1)
{
  v2 = sub_195F4A070();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CHSControlState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDC8, &qword_195FAD018);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F4A070();
  sub_195FA1468();
  sub_195FA1228();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_195F4A070()
{
  result = qword_1EAEEC398;
  if (!qword_1EAEEC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC398);
  }

  return result;
}

uint64_t CHSControlState.hashValue.getter()
{
  sub_195FA1398();
  MEMORY[0x19A8C4970](*(v0 + 16));
  return sub_195FA13E8();
}

uint64_t CHSControlState.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  CHSControlState.init(from:)(a1);
  return v2;
}

void *CHSControlState.init(from:)(void *a1)
{
  v3 = v1;
  v11[1] = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDD0, &qword_195FAD020);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F4A070();
  sub_195FA1448();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = sub_195FA1168();
    (*(v6 + 8))(v8, v5);
    v3[2] = v9;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_195F4A2F0()
{
  v1 = *v0;
  sub_195FA1398();
  MEMORY[0x19A8C4970](*(v1 + 16));
  return sub_195FA13E8();
}

uint64_t sub_195F4A368(uint64_t a1)
{
  v2 = *v1;
  sub_195FA1398();
  MEMORY[0x19A8C4970](*(v2 + 16));
  return sub_195FA13E8();
}

unint64_t sub_195F4A3B0(uint64_t a1, uint64_t a2)
{
  result = qword_1EAEEDDD8;
  if (!qword_1EAEEDDD8)
  {
    type metadata accessor for CHSControlState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDDD8);
  }

  return result;
}

void *sub_195F4A44C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = CHSControlState.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_195F4A4A4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDC8, &qword_195FAD018);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F4A070();
  sub_195FA1468();
  sub_195FA1228();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_195F4A660()
{
  result = qword_1EAEEDDE0;
  if (!qword_1EAEEDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDDE0);
  }

  return result;
}

unint64_t sub_195F4A6B8()
{
  result = qword_1EAEEC388;
  if (!qword_1EAEEC388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC388);
  }

  return result;
}

unint64_t sub_195F4A710()
{
  result = qword_1EAEEC390;
  if (!qword_1EAEEC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC390);
  }

  return result;
}

uint64_t ConcreteImageIOPrimitives.ImageIOError.hashValue.getter()
{
  v1 = *v0;
  sub_195FA1398();
  MEMORY[0x19A8C4970](v1);
  return sub_195FA13E8();
}

void ConcreteImageIOPrimitives.makeImageDestination(at:typeIdentifier:numberOfImages:)(size_t a4@<X3>, CGImageDestinationRef *a5@<X8>)
{
  v7 = sub_195FA0398();
  v8 = sub_195FA0888();
  v9 = CGImageDestinationCreateWithURL(v7, v8, a4, 0);

  if (v9)
  {
    *a5 = v9;
  }

  else
  {
    sub_195F4A8D4();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
  }
}

unint64_t sub_195F4A8D4()
{
  result = qword_1EAEEBC00;
  if (!qword_1EAEEBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBC00);
  }

  return result;
}

void ConcreteImageIOPrimitives.addImage(_:to:options:)(CGImageRef image, CGImageDestination **a2, const __CFDictionary *a3)
{
  v4 = *a2;
  if (a3)
  {
    type metadata accessor for CFString(0);
    sub_195F4A9B8();
    a3 = sub_195FA07E8();
  }

  v5 = a3;
  CGImageDestinationAddImage(v4, image, a3);
}

unint64_t sub_195F4A9B8()
{
  result = qword_1EAEEBB58;
  if (!qword_1EAEEBB58)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBB58);
  }

  return result;
}

uint64_t ConcreteImageIOPrimitives.finalizeImageDestination(_:)(CGImageDestinationRef *a1)
{
  result = CGImageDestinationFinalize(*a1);
  if (!result)
  {
    sub_195F4A8D4();
    swift_allocError();
    *v2 = 1;
    return swift_willThrow();
  }

  return result;
}

void ConcreteImageIOPrimitives.makeImageSource(at:)(CGImageSourceRef *a2@<X8>)
{
  v3 = sub_195FA0398();
  v4 = CGImageSourceCreateWithURL(v3, 0);

  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    sub_195F4A8D4();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
  }
}

unint64_t sub_195F4AB18()
{
  result = qword_1EAEEDDE8;
  if (!qword_1EAEEDDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDDE8);
  }

  return result;
}

void sub_195F4AB6C(size_t a4@<X3>, CGImageDestinationRef *a5@<X8>)
{
  v7 = sub_195FA0398();
  v8 = sub_195FA0888();
  v9 = CGImageDestinationCreateWithURL(v7, v8, a4, 0);

  if (v9)
  {
    *a5 = v9;
  }

  else
  {
    sub_195F4A8D4();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
  }
}

void sub_195F4AC2C(CGImageRef image, CGImageDestination **a2, const __CFDictionary *a3)
{
  v4 = *a2;
  if (a3)
  {
    type metadata accessor for CFString(0);
    sub_195F4A9B8();
    a3 = sub_195FA07E8();
  }

  v5 = a3;
  CGImageDestinationAddImage(v4, image, a3);
}

uint64_t sub_195F4ACBC(CGImageDestinationRef *a1)
{
  result = CGImageDestinationFinalize(*a1);
  if (!result)
  {
    sub_195F4A8D4();
    swift_allocError();
    *v2 = 1;
    return swift_willThrow();
  }

  return result;
}

void sub_195F4AD1C(CGImageSourceRef *a2@<X8>)
{
  v3 = sub_195FA0398();
  v4 = CGImageSourceCreateWithURL(v3, 0);

  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    sub_195F4A8D4();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
  }
}

__CFString *CHSControlSize.debugDescription.getter(uint64_t a1)
{
  result = NSStringFromCHSControlSize(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_195FA08B8();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__CFString *sub_195F4AE70()
{
  result = NSStringFromCHSControlSize(*v0);
  if (result)
  {
    v2 = result;
    v3 = sub_195FA08B8();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TypedIdentifier.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_195F4AF20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t static TypedIdentifier.< infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_195FA12B8();
  }
}

uint64_t sub_195F4B054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t URL.ExtendedAttributeError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_195FA01A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL.ExtendedAttributeError(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195F4BAAC(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v8;
  v10 = *(v8 + 1);
  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(v8 + 2);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDF0, &qword_195FAD750);
    (*(v3 + 32))(v5, &v8[*(v13 + 64)], v2);
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_195FA0F38();
    MEMORY[0x19A8C3F70](0xD000000000000013, 0x8000000195FC1050);
    MEMORY[0x19A8C3F70](v11, v10);

    MEMORY[0x19A8C3F70](0xD000000000000022, 0x8000000195FC1070);
    v17[1] = v12;
    v14 = sub_195FA1288();
    MEMORY[0x19A8C3F70](v14);

    MEMORY[0x19A8C3F70](0xD000000000000018, 0x8000000195FC10A0);
    sub_195FA1008();
    v15 = v18;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_195FA0F38();

    v18 = 0xD000000000000019;
    v19 = 0x8000000195FC10C0;
    MEMORY[0x19A8C3F70](v11, v10);

    MEMORY[0x19A8C3F70](0x746F6E2073617720, 0xEF2E646E756F6620);
    return v18;
  }

  return v15;
}

uint64_t sub_195F4B3D0(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_195FA0918();
  v7 = removexattr(a1, (v6 + 32), 0);

  if (v7 < 0)
  {
    MEMORY[0x19A8C3C80](result);
    result = sub_195FA0698();
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
    }

    else
    {
      sub_195FA0188();
      v9 = sub_195FA06A8();
      result = sub_195FA06A8();
      if (v9 != result)
      {
        type metadata accessor for URL.ExtendedAttributeError(0);
        sub_195EBE9E8(&unk_1EAEEC208, type metadata accessor for URL.ExtendedAttributeError, &protocol conformance descriptor for URL.ExtendedAttributeError);
        swift_allocError();
        v11 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDF0, &qword_195FAD750);
        *v11 = a2;
        v11[1] = a3;
        v11[2] = v7;
        sub_195FA01A8();

        sub_195F4BFD8(MEMORY[0x1E69E7CC0]);
        sub_195EBE9E8(&unk_1EAEEBCD8, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        sub_195FA0308();
        swift_storeEnumTagMultiPayload();
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t URL.extendedAttributeNames()()
{
  v0 = sub_195FA08F8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195FA0448();
  v4 = sub_195FA0918();

  v5 = listxattr((v4 + 32), 0, 0, 0);

  if (v5 == -1)
  {
    type metadata accessor for URL.ExtendedAttributeError(0);
    sub_195EBE9E8(&unk_1EAEEC208, type metadata accessor for URL.ExtendedAttributeError, &protocol conformance descriptor for URL.ExtendedAttributeError);
    swift_allocError();
    *v17 = 0;
    v17[1] = 0xE000000000000000;
    v17[2] = -1;
    MEMORY[0x19A8C3C80]();
    result = sub_195FA0698();
    if ((result & 0x100000000) != 0)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v18 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDF0, &qword_195FAD750);
    v19 = sub_195FA01A8();
    v23 = v18;
    sub_195F4BFD8(MEMORY[0x1E69E7CC0]);
    sub_195EBE9E8(&unk_1EAEEBCD8, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
LABEL_12:
    v14 = v19;
    sub_195FA0308();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v14;
  }

  v6 = swift_slowAlloc();
  sub_195FA0448();
  v7 = sub_195FA0918();

  v8 = listxattr((v7 + 32), v6, v5, 0);

  if (v8 != -1)
  {
    sub_195FA08D8();
    v9 = sub_195FA08E8();
    (*(v1 + 8))(v3, v0);
    v10 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithBytes:v6 length:v5 encoding:v9];
    if (!v10)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v11 = v10;
    v12 = sub_195FA0888();
    v13 = [v11 componentsSeparatedByString_];

    v14 = sub_195FA0B38();
    if (*(v14 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v16 = *(v14 + 16);
        if (v16)
        {
LABEL_7:
          *(v14 + 16) = v16 - 1;

          return v14;
        }

        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_195F4BB88(v14);
    v14 = result;
    v16 = *(result + 16);
    if (v16)
    {
      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for URL.ExtendedAttributeError(0);
  sub_195EBE9E8(&unk_1EAEEC208, type metadata accessor for URL.ExtendedAttributeError, &protocol conformance descriptor for URL.ExtendedAttributeError);
  swift_allocError();
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v20[2] = -1;
  MEMORY[0x19A8C3C80]();
  result = sub_195FA0698();
  if ((result & 0x100000000) == 0)
  {
    v21 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDF0, &qword_195FAD750);
    v19 = sub_195FA01A8();
    v24 = v21;
    sub_195F4BFD8(MEMORY[0x1E69E7CC0]);
    sub_195EBE9E8(&unk_1EAEEBCD8, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    goto LABEL_12;
  }

LABEL_19:
  __break(1u);
  return result;
}

void *URL.extendedAttributeData(named:)(uint64_t a1, uint64_t a2)
{
  result = sub_195FA0418();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_195F4BAAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL.ExtendedAttributeError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_195F4BB24(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_195FA0E88();
  }

  return sub_195FA0F68();
}

uint64_t _s10Foundation3URLV14ChronoServicesE22ExtendedAttributeErrorO2eeoiySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_195FA01A8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - v8;
  v10 = type metadata accessor for URL.ExtendedAttributeError(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v41 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDF8, &qword_195FAD850);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v41 - v18;
  v20 = (&v41 + *(v17 + 56) - v18);
  sub_195F4BAAC(a1, &v41 - v18);
  sub_195F4BAAC(a2, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_195F4BAAC(v19, v15);
    v32 = *v15;
    v33 = v15[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v32 == *v20 && v33 == v20[1])
      {
      }

      else
      {
        v35 = sub_195FA12B8();

        if ((v35 & 1) == 0)
        {
LABEL_22:
          sub_195F4C258(v19);
          goto LABEL_23;
        }
      }

      sub_195F4C258(v19);
      v37 = 1;
      return v37 & 1;
    }

LABEL_17:

    sub_195F4C1F0(v19);
LABEL_23:
    v37 = 0;
    return v37 & 1;
  }

  v45 = v9;
  sub_195F4BAAC(v19, v13);
  v21 = *(v13 + 1);
  v44 = *v13;
  v22 = *(v13 + 2);
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDF0, &qword_195FAD750) + 64);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(&v13[v23], v4);
    goto LABEL_17;
  }

  v25 = *v20;
  v24 = v20[1];
  v41 = v20[2];
  v42 = v22;
  v43 = v5;
  v26 = *(v5 + 32);
  v26(v45, &v13[v23], v4);
  v27 = v20 + v23;
  v28 = v46;
  v26(v46, v27, v4);
  if (v44 == v25 && v21 == v24)
  {
  }

  else
  {
    v30 = sub_195FA12B8();

    if ((v30 & 1) == 0)
    {
      v31 = v43;
LABEL_21:
      v39 = *(v31 + 8);
      v39(v28, v4);
      v39(v45, v4);
      goto LABEL_22;
    }
  }

  v31 = v43;
  if (v42 != v41)
  {
    goto LABEL_21;
  }

  sub_195EBE9E8(&unk_1EAEEBCD8, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
  v36 = v45;
  v37 = sub_195FA02F8();
  v38 = *(v31 + 8);
  v38(v28, v4);
  v38(v36, v4);
  sub_195F4C258(v19);
  return v37 & 1;
}

unint64_t sub_195F4BFD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED638, &unk_195FAD840);
    v3 = sub_195FA10B8();
    v4 = a1 + 32;

    while (1)
    {
      sub_195F4C180(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_195EC7CCC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_195F2E09C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_195F4C180(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED640, &qword_195FAD010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_195F4C1F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDF8, &qword_195FAD850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_195F4C258(uint64_t a1)
{
  v2 = type metadata accessor for URL.ExtendedAttributeError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Encodable.toOPACKData()(uint64_t a1, uint64_t a2)
{
  sub_195FA05D8();
  v8[3] = a1;
  v8[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
  v6 = sub_195FA05C8();
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

void NSCoder.chsEncodeCodable(_:forKey:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = Encodable.toOPACKData()(v5, v6);
  v9 = v8;
  v10 = sub_195FA04B8();
  sub_195EC0890(v7, v9);
  v11 = v10;
  v12 = sub_195FA0888();
  [v4 encodeObject:v11 forKey:v12];
}

uint64_t NSCoder.chsDecodeCodable<A>(of:forKey:)@<X0>(uint64_t a3@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  sub_195F4CBAC();
  v9 = sub_195FA0D58();
  if (v9)
  {
    v10 = v9;
    sub_195FA04C8();
  }

  if (qword_1EAEEC170 != -1)
  {
    swift_once();
  }

  v11 = sub_195FA0678();
  __swift_project_value_buffer(v11, qword_1EAEF72E8);
  v12 = sub_195FA0658();
  v13 = sub_195FA0CA8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_195EB2000, v12, v13, "Unable to decode boxed codable = missing data", v14, 2u);
    MEMORY[0x19A8C5B70](v14, -1, -1);
  }

  v15 = [objc_opt_self() chs:8 initWithErrorCode:?];
  v16 = sub_195FA0318();

  [v6 failWithError_];
  v17 = *(*(a3 - 8) + 56);

  return v17(a5, 1, 1, a3);
}

uint64_t sub_195F4CB74(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

unint64_t sub_195F4CBAC()
{
  result = qword_1EAEEC2F0;
  if (!qword_1EAEEC2F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAEEC2F0);
  }

  return result;
}

uint64_t sub_195F4CBF8(_BYTE *a1, _BYTE *a2)
{
  v2 = 1684957547;
  v3 = *a1;
  v4 = 0xE400000000000000;
  v5 = 0x8000000195FBF8B0;
  if (v3 == 1)
  {
    v6 = 1684957547;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (v3 != 1)
  {
    v4 = 0x8000000195FBF8B0;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (v3)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0x8000000195FBF890;
  }

  if (*a2 == 1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000011;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0x8000000195FBF890;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_195FA12B8();
  }

  return v11 & 1;
}

uint64_t sub_195F4CCD0()
{
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

uint64_t sub_195F4CD70(uint64_t a1)
{
  sub_195FA0958();
}

uint64_t sub_195F4CDFC(uint64_t a1)
{
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

unint64_t sub_195F4CE98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_195F4D848(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_195F4CEC8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1684957547;
  if (v2 != 1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x8000000195FBF8B0;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v5)
  {
    v3 = 0x8000000195FBF890;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_195F4CF24()
{
  v1 = 1684957547;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

unint64_t sub_195F4CF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_195F4D848(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_195F4CFB0(uint64_t a1)
{
  v2 = sub_195F4D378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F4CFEC(uint64_t a1)
{
  v2 = sub_195F4D378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id CHSControlIdentity.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDE08, &qword_195FAD880);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F4D378();
  sub_195FA1448();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    type metadata accessor for CHSExtensionIdentity();
    v26 = 0;
    sub_195F4D69C(&qword_1EAEEC300, &protocol conformance descriptor for CHSExtensionIdentity);
    sub_195FA1178();
    v9 = v24;
    LOBYTE(v24) = 1;
    v22 = sub_195FA1138();
    v23 = v10;
    LOBYTE(v24) = 2;
    if (sub_195FA11B8())
    {
      v26 = 2;
      sub_195F3A9DC();
      sub_195FA1178();
      v14 = v24;
      v15 = v25;
      v19[1] = sub_195FA05D8();
      sub_195F411D0();
      v20 = v14;
      v21 = v15;
      v16 = sub_195FA0598();
      v18 = v21;
      v21 = v16;
      sub_195EC0890(v20, v18);
    }

    else
    {
      v21 = 0;
    }

    v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v12 = sub_195FA0888();

    v13 = v21;
    v3 = [v11 initWithExtensionIdentity:v9 kind:v12 intentReference:v21];

    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

unint64_t sub_195F4D378()
{
  result = qword_1EAEEC468;
  if (!qword_1EAEEC468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC468);
  }

  return result;
}

uint64_t CHSControlIdentity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDE10, qword_195FAD888);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F4D378();
  sub_195FA1468();
  v9 = [v3 extensionIdentity];
  v18 = v9;
  v20 = 0;
  type metadata accessor for CHSExtensionIdentity();
  sub_195F4D69C(&qword_1EAEEC308, &protocol conformance descriptor for CHSExtensionIdentity);
  sub_195FA1238();

  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11 = [v3 kind];
  sub_195FA08B8();

  LOBYTE(v18) = 1;
  sub_195FA11F8();

  v12 = [v3 intentReference];
  if (!v12)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v13 = v12;
  sub_195FA05D8();
  v18 = sub_195FA05A8();
  v19 = v14;
  v20 = 2;
  v15 = v18;
  v16 = v14;
  sub_195F3A7B0();
  sub_195FA1238();
  (*(v6 + 8))(v8, v5);

  return sub_195EC0890(v15, v16);
}

uint64_t sub_195F4D69C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CHSExtensionIdentity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_195F4D6E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = CHSControlIdentity.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_195F4D744()
{
  result = qword_1EAEEDE18;
  if (!qword_1EAEEDE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDE18);
  }

  return result;
}

unint64_t sub_195F4D79C()
{
  result = qword_1EAEEC458;
  if (!qword_1EAEEC458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC458);
  }

  return result;
}

unint64_t sub_195F4D7F4()
{
  result = qword_1EAEEC460;
  if (!qword_1EAEEC460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC460);
  }

  return result;
}

unint64_t sub_195F4D848(uint64_t a1, uint64_t a2)
{
  v2 = sub_195FA10D8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void *CHSWidgetExtensionProviderOptions.controlsPredicate.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHSWidgetExtensionProviderOptions_controlsPredicate);
  v2 = v1;
  return v1;
}

void *CHSWidgetExtensionProviderOptions.widgetsPredicate.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHSWidgetExtensionProviderOptions_widgetsPredicate);
  v2 = v1;
  return v1;
}

void sub_195F4D904()
{
  v0 = [objc_allocWithZone(CHSWidgetDescriptorsPredicate) initIncludingRelevanceBacked_];
  v1 = [objc_opt_self() all];
  v2 = [objc_allocWithZone(CHSWidgetExtensionProviderOptions) initWithWidgetsPredicate:v0 controlsPredicate:v1 includeIntents:1];

  qword_1EAEEBAE0 = v2;
}

id static CHSWidgetExtensionProviderOptions.widgets.getter()
{
  v0 = [objc_opt_self() visible];
  v1 = [objc_allocWithZone(CHSWidgetExtensionProviderOptions) initWithWidgetsPredicate:v0 controlsPredicate:0];

  return v1;
}

uint64_t CHSWidgetExtensionProviderOptions.hash.getter()
{
  v1 = v0;
  sub_195FA13F8();
  v2 = [v0 widgetsPredicate];
  if (v2)
  {
    v3 = v2;
    sub_195FA13B8();
    v4 = v3;
    sub_195FA0D98();
  }

  else
  {
    sub_195FA13B8();
  }

  v5 = [v1 controlsPredicate];
  if (v5)
  {
    v6 = v5;
    [v5 includeVisible];

    sub_195FA13B8();
  }

  sub_195FA13B8();
  v7 = [v1 controlsPredicate];
  if (v7)
  {
    v8 = v7;
    [v7 includeHidden];

    sub_195FA13B8();
  }

  sub_195FA13B8();
  [v1 includeIntents];
  sub_195FA13B8();
  return sub_195FA13D8();
}

id sub_195F4DC30(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = [objc_opt_self() *a3];
  v4 = [objc_allocWithZone(CHSWidgetExtensionProviderOptions) initWithWidgetsPredicate:0 controlsPredicate:v3];

  return v4;
}

id sub_195F4DCAC(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  v2 = [objc_allocWithZone(CHSWidgetExtensionProviderOptions) initWithWidgetsPredicate:0 controlsPredicate:v1];

  return v2;
}

CHSWidgetExtensionProviderOptions __swiftcall CHSWidgetExtensionProviderOptions.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.widgetsPredicate = v3;
  result.controlsPredicate = v2;
  result.super.isa = v1;
  result.includeIntents = v4;
  return result;
}

uint64_t CHSWidgetExtensionProviderOptions.matchesEverything.getter()
{
  if (qword_1EAEEBAD0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAEEBAE0;
  v2 = sub_195EBAC28(v0, v1);

  return v2 & 1;
}

Swift::Bool __swiftcall CHSWidgetExtensionProviderOptions.isSubset(of:)(CHSWidgetExtensionProviderOptions of)
{
  isa = of.super.isa;
  v3 = [v1 widgetsPredicate];
  if (v3)
  {

    v4 = [(objc_class *)isa widgetsPredicate];
    if (!v4)
    {
      return v4;
    }
  }

  v5 = [v1 controlsPredicate];
  if (v5)
  {

    v4 = [(objc_class *)isa controlsPredicate];
    if (!v4)
    {
      return v4;
    }
  }

  if (![v1 includeIntents] || (LODWORD(v4) = -[objc_class includeIntents](isa, sel_includeIntents), v4))
  {
    v6 = [v1 controlsPredicate];
    if (v6)
    {
      v7 = v6;
      v8 = [(objc_class *)isa controlsPredicate];
      if (v8)
      {
        v9 = v8;
        if ([v7 includeVisible] && (objc_msgSend(v9, sel_includeVisible) & 1) == 0)
        {
          goto LABEL_30;
        }

        if ([v7 includeHidden])
        {
          v10 = [v9 includeHidden];

          if ((v10 & 1) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_18;
        }
      }
    }

LABEL_18:
    v11 = [v1 widgetsPredicate];
    if (!v11)
    {
      goto LABEL_25;
    }

    v7 = v11;
    v12 = [(objc_class *)isa widgetsPredicate];
    if (!v12)
    {

      goto LABEL_25;
    }

    v9 = v12;
    if ([v7 includeRelevanceBacked] & 1) == 0 || (objc_msgSend(v9, sel_includeRelevanceBacked))
    {
      v13 = [v7 remoteWidgetInclusions];
      v14 = [v9 remoteWidgetInclusions];

      if (v14 < v13)
      {
LABEL_29:
        LOBYTE(v4) = 0;
        return v4;
      }

LABEL_25:
      v15 = [v1 controlsPredicate];
      if (!v15)
      {
        goto LABEL_33;
      }

      v16 = v15;
      v17 = [(objc_class *)isa controlsPredicate];
      if (v17)
      {
        v18 = v17;
        if ([v16 includeRemote])
        {
          v19 = [v18 includeRemote];

          if ((v19 & 1) == 0)
          {
            goto LABEL_29;
          }

LABEL_33:
          LOBYTE(v4) = 1;
          return v4;
        }
      }

      goto LABEL_33;
    }

LABEL_30:

    LOBYTE(v4) = 0;
  }

  return v4;
}

uint64_t static CHSWidgetExtensionProviderOptions.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EAEEDE28 = a1;
  return result;
}

id CHSWidgetExtensionProviderOptions.init(coder:)(void *a1)
{
  v2 = sub_195EBC828(a1);

  return v2;
}

void _sSo33CHSWidgetExtensionProviderOptionsC14ChronoServicesE33controlDescriptorIsRemoteEligibleySbSo010CHSControlH0CFZ_0(void *a1)
{
  if (![a1 requestedDataProtection])
  {
    if (qword_1EAEEBBC0 != -1)
    {
      swift_once();
    }

    v16 = sub_195FA0678();
    __swift_project_value_buffer(v16, qword_1EAEF7280);
    v5 = a1;
    v6 = sub_195FA0658();
    v7 = sub_195FA0C98();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_26;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36 = v9;
    *v8 = 136315138;
    v17 = [v5 succinctDescription];

    if (v17)
    {
      v18 = sub_195FA08B8();
      v20 = v19;

      v21 = sub_195EBD554(v18, v20, &v36);

      *(v8 + 4) = v21;
      v15 = "control descriptor from classA extension is not remote eligible:%s";
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_30;
  }

  if (([a1 supportsForwardingToRemoteDevices] & 1) == 0)
  {
    if (qword_1EAEEBBC0 != -1)
    {
      swift_once();
    }

    v22 = sub_195FA0678();
    __swift_project_value_buffer(v22, qword_1EAEF7280);
    v5 = a1;
    v6 = sub_195FA0658();
    v7 = sub_195FA0C98();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_26;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36 = v9;
    *v8 = 136315138;
    v23 = [v5 succinctDescription];

    if (v23)
    {
      v24 = sub_195FA08B8();
      v26 = v25;

      v27 = sub_195EBD554(v24, v26, &v36);

      *(v8 + 4) = v27;
      v15 = "control descriptor with supportsForwardingToRemoteDevices=false is not remote eligible:%s";
      goto LABEL_19;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return;
  }

  v2 = [a1 actionMetadata];
  v3 = [v2 isLauncher];

  if (v3)
  {
    if (qword_1EAEEBBC0 != -1)
    {
      swift_once();
    }

    v4 = sub_195FA0678();
    __swift_project_value_buffer(v4, qword_1EAEF7280);
    v5 = a1;
    v6 = sub_195FA0658();
    v7 = sub_195FA0C98();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v36 = v9;
      *v8 = 136315138;
      v10 = [v5 succinctDescription];

      if (v10)
      {
        v11 = sub_195FA08B8();
        v13 = v12;

        v14 = sub_195EBD554(v11, v13, &v36);

        *(v8 + 4) = v14;
        v15 = "control descriptor with launcher action is not remote eligible:%s";
LABEL_19:
        _os_log_impl(&dword_195EB2000, v6, v7, v15, v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        MEMORY[0x19A8C5B70](v9, -1, -1);
        MEMORY[0x19A8C5B70](v8, -1, -1);
LABEL_27:

        return;
      }

      goto LABEL_31;
    }

LABEL_26:

    goto LABEL_27;
  }

  v28 = [a1 actionMetadata];
  v29 = [v28 isCameraCapture];

  if (v29)
  {
    if (qword_1EAEEBBC0 != -1)
    {
      swift_once();
    }

    v30 = sub_195FA0678();
    __swift_project_value_buffer(v30, qword_1EAEF7280);
    v5 = a1;
    v6 = sub_195FA0658();
    v7 = sub_195FA0C98();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v36 = v9;
      *v8 = 136315138;
      v31 = [v5 succinctDescription];

      if (v31)
      {
        v32 = sub_195FA08B8();
        v34 = v33;

        v35 = sub_195EBD554(v32, v34, &v36);

        *(v8 + 4) = v35;
        v15 = "control descriptor with camera capture action is not remote eligible:%s";
        goto LABEL_19;
      }

      goto LABEL_32;
    }

    goto LABEL_26;
  }
}

uint64_t WidgetRendererSessionInfo.rendererBundleIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WidgetRendererSessionInfo.sessionIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t WidgetRendererSessionInfo.__allocating_init(rendererBundleIdentifier:sessionIdentifier:widget:isForeground:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  return result;
}

uint64_t WidgetRendererSessionInfo.init(rendererBundleIdentifier:sessionIdentifier:widget:isForeground:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  return v6;
}

uint64_t WidgetRendererSessionInfo.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  WidgetRendererSessionInfo.init(from:)(a1);
  return v2;
}

void *WidgetRendererSessionInfo.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDE48, &qword_195FADA60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F4EC60();
  sub_195FA1448();
  if (v2)
  {
    type metadata accessor for WidgetRendererSessionInfo();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v15[0]) = 0;
    v1[2] = sub_195FA1138();
    v1[3] = v9;
    LOBYTE(v15[0]) = 1;
    v1[4] = sub_195FA1138();
    v1[5] = v10;
    v16 = 2;
    sub_195F3A9DC();
    sub_195FA1178();
    v12 = v15[0];
    v11 = v15[1];
    sub_195FA05D8();
    sub_195EB4B30(0, &qword_1EAEEDE58, off_1E7452758);
    v1[6] = sub_195FA0598();
    LOBYTE(v15[0]) = 3;
    v14 = sub_195FA1148();
    (*(v6 + 8))(v8, v5);
    sub_195EC0890(v12, v11);
    *(v3 + 56) = v14 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

unint64_t sub_195F4EC60()
{
  result = qword_1EAEEDE50;
  if (!qword_1EAEEDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDE50);
  }

  return result;
}

uint64_t sub_195F4ECD8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDE60, &qword_195FADA68);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F4EC60();
  sub_195FA1468();
  LOBYTE(v12) = 0;
  sub_195FA11F8();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  LOBYTE(v12) = 1;
  sub_195FA11F8();
  LOBYTE(v12) = 3;
  sub_195FA1208();
  sub_195FA05D8();
  v12 = sub_195FA05A8();
  v13 = v7;
  v11[15] = 2;
  v8 = v12;
  v9 = v7;
  sub_195F3A7B0();
  sub_195FA1238();
  (*(v4 + 8))(v6, v3);
  return sub_195EC0890(v8, v9);
}

uint64_t sub_195F4EF34()
{
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

uint64_t sub_195F4F008(uint64_t a1)
{
  sub_195FA0958();
}

uint64_t sub_195F4F0C8(uint64_t a1)
{
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

unint64_t sub_195F4F198@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_195F4F6E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_195F4F1C8(unint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x746567646977;
  if (*v1 != 2)
  {
    v3 = 0x726765726F467369;
    v2 = 0xEC000000646E756FLL;
  }

  v4 = 0x8000000195FBF8D0;
  v5 = 0xD000000000000018;
  if (*v1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x8000000195FBF8F0;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_195F4F258()
{
  v1 = 0x746567646977;
  if (*v0 != 2)
  {
    v1 = 0x726765726F467369;
  }

  v2 = 0xD000000000000018;
  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_195F4F2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_195F4F6E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_195F4F30C(uint64_t a1)
{
  v2 = sub_195F4EC60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F4F348(uint64_t a1)
{
  v2 = sub_195F4EC60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetRendererSessionInfo.deinit()
{

  return v0;
}

uint64_t WidgetRendererSessionInfo.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_195F4F3FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for WidgetRendererSessionInfo();
  v5 = swift_allocObject();
  result = WidgetRendererSessionInfo.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t _s14ChronoServices25WidgetRendererSessionInfoC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v4 || (sub_195FA12B8()) && (*(a1 + 32) == *(a2 + 32) ? (v5 = *(a1 + 40) == *(a2 + 40)) : (v5 = 0), (v5 || (sub_195FA12B8()) && (sub_195EB4B30(0, &qword_1EAEEBE10, 0x1E69E58C0), (sub_195FA0D88())))
  {
    v6 = *(a1 + 56) ^ *(a2 + 56) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_195F4F5E0()
{
  result = qword_1EAEEDE68;
  if (!qword_1EAEEDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDE68);
  }

  return result;
}

unint64_t sub_195F4F638()
{
  result = qword_1EAEEDE70;
  if (!qword_1EAEEDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDE70);
  }

  return result;
}

unint64_t sub_195F4F690()
{
  result = qword_1EAEEDE78;
  if (!qword_1EAEEDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDE78);
  }

  return result;
}

unint64_t sub_195F4F6E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_195FA10D8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t static CHSWidgetExtension.mock(extensionBundleIdentifier:containerBundleIdentifier:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = objc_allocWithZone(CHSExtensionIdentity);

  v7 = [v6 init];
  v8 = &v7[OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier];
  swift_beginAccess();
  *v8 = v3;
  *(v8 + 1) = v2;
  v9 = v7;

  v10 = &v9[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
  swift_beginAccess();
  *v10 = v5;
  *(v10 + 1) = v4;

  v11 = &v9[OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier];
  swift_beginAccess();
  *v11 = 0;
  *(v11 + 1) = 0;

  v12 = sub_195F4F868(v9);

  return v12;
}

uint64_t sub_195F4F868(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDA90, qword_195FAC9A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_195FADCB0;
  v3 = CHSDefaultTestFamilyMaskSingle();
  v4 = objc_allocWithZone(CHSWidgetDescriptor);
  v5 = sub_195FA0888();
  v6 = [v4 initWithExtensionIdentity:a1 kind:v5 supportedFamilies:v3 intentType:0];

  *(v2 + 32) = v6;
  v7 = CHSDefaultTestFamilyMaskSingle();
  v8 = objc_allocWithZone(CHSWidgetDescriptor);
  v9 = sub_195FA0888();
  v10 = [v8 initWithExtensionIdentity:a1 kind:v9 supportedFamilies:v7 intentType:0];

  *(v2 + 40) = v10;
  v11 = CHSDefaultTestFamilyMaskSingle();
  v12 = objc_allocWithZone(CHSWidgetDescriptor);
  v13 = sub_195FA0888();
  v14 = [v12 initWithExtensionIdentity:a1 kind:v13 supportedFamilies:v11 intentType:0];

  *(v2 + 48) = v14;
  v15 = &selRef_appendString_counterpart_;
  v16 = [objc_allocWithZone(CHSMutableEntitlementCollection) init];
  [v16 setCanOpenSystemURLs_];
  [v16 setUsesEventService_];
  [v16 setCanKeepAlive_];
  [v16 setInvalidatesOnStorefrontChange_];
  v17 = [objc_allocWithZone(CHSMutableWidgetExtension) init];
  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_6;
  }

  v15 = v17;
  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_6:
    v18 = MEMORY[0x19A8C4520](0, v2);
    goto LABEL_4;
  }

  v18 = *(v2 + 32);
LABEL_4:
  v19 = v18;
  v20 = [v18 extensionIdentity];

  [v15 setIdentity_];
  v21 = sub_195FA0888();
  [v15 setLocalizedDisplayName_];

  v22 = sub_195FA0888();
  [v15 setContainerBundleLocalizedDisplayName_];

  sub_195EB4B30(0, &qword_1EAEEC138, off_1E7452768);
  v23 = sub_195FA0B28();

  [v15 setOrderedWidgetDescriptors_];

  [v15 setEntitlements_];
  [v15 copy];
  sub_195FA0E08();

  swift_unknownObjectRelease();
  sub_195EB4B30(0, &qword_1EAEEC4B8, off_1E7452788);
  swift_dynamicCast();
  return v25;
}

char *CHSExtensionIdentity.init(extensionBundleIdentifier:containerBundleIdentifier:deviceIdentifier:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  v9 = a2[1];
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = &v10[OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier];
  swift_beginAccess();
  *v11 = v6;
  *(v11 + 1) = v7;
  v12 = v10;

  v13 = &v12[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
  swift_beginAccess();
  *v13 = v8;
  *(v13 + 1) = v9;

  v14 = &v12[OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier];
  swift_beginAccess();
  *v14 = a3;
  *(v14 + 1) = a4;

  return v12;
}

uint64_t CHSExtensionIdentity.tokenString.getter()
{
  CHSExtensionIdentity.token.getter(&v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_195FAC070;
  v1 = sub_195EB5F80();
  v2 = sub_195EB6074(v1);
  v4 = v3;

  *(v0 + 32) = v2;
  *(v0 + 40) = v4;

  sub_195EB6214(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
  sub_195EB5F38(&qword_1EAEEC498, &qword_1EAEED8F0, &unk_195FACA00, MEMORY[0x1E69E6310]);
  v6 = sub_195FA0828();

  return v6;
}

uint64_t CHSExtensionIdentity.__extensionBundleIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t CHSExtensionIdentity.extensionBundleIdentifier.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t CHSExtensionIdentity.extensionBundleIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

uint64_t CHSExtensionIdentity.__containerBundleIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier);
  swift_beginAccess();
  if (!v1[1])
  {
    return 0;
  }

  v2 = *v1;

  return v2;
}

uint64_t CHSExtensionIdentity.containerBundleIdentifier.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t CHSExtensionIdentity.containerBundleIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

uint64_t CHSExtensionIdentity.__deviceIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier);
  swift_beginAccess();
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t CHSExtensionIdentity.deviceIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t CHSExtensionIdentity.deviceIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

BOOL CHSExtensionIdentity.isRemote.getter()
{
  v1 = v0 + OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier;
  swift_beginAccess();
  return *(v1 + 8) != 0;
}

uint64_t CHSExtensionIdentity.description.getter()
{
  CHSExtensionIdentity.token.getter(&v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
  sub_195EB5F38(&qword_1EAEEC498, &qword_1EAEED8F0, &unk_195FACA00, MEMORY[0x1E69E6310]);
  v0 = sub_195FA0828();
  swift_bridgeObjectRelease_n();
  return v0;
}

id CHSExtensionIdentity.copy(with:)@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for CHSExtensionIdentity();
  *a1 = v3;

  return v3;
}

uint64_t sub_195F50404(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "extensionBundleIdentifier";
  v4 = 0xD000000000000010;
  if (v2 == 1)
  {
    v5 = 0xD000000000000019;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v2 == 1)
  {
    v6 = "extensionBundleIdentifier";
  }

  else
  {
    v6 = "containerBundleIdentifier";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "r";
  }

  if (*a2 == 1)
  {
    v4 = 0xD000000000000019;
  }

  else
  {
    v3 = "containerBundleIdentifier";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000019;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "r";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_195FA12B8();
  }

  return v11 & 1;
}

uint64_t sub_195F504D8()
{
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

uint64_t sub_195F50570(uint64_t a1)
{
  sub_195FA0958();
}

uint64_t sub_195F505F4(uint64_t a1)
{
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

unint64_t sub_195F50688@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_195F50DD0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_195F506B8(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000019;
  v3 = "extensionBundleIdentifier";
  v4 = 0xD000000000000010;
  if (*v1 == 1)
  {
    v4 = 0xD000000000000019;
  }

  else
  {
    v3 = "containerBundleIdentifier";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "r";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_195F50710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_195F50DD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_195F50738(uint64_t a1)
{
  v2 = sub_195EC0D2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F50774(uint64_t a1)
{
  v2 = sub_195EC0D2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CHSExtensionIdentity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDE98, &unk_195FADCF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195EC0D2C();
  sub_195FA1468();
  v9 = (v3 + OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier);
  swift_beginAccess();
  v10 = v9[1];
  v19 = *v9;
  v20 = v10;
  LOBYTE(v17) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA70, &qword_195FAC990);
  sub_195EB5F38(&qword_1ED457A10, &qword_1EAEEDA70, &qword_195FAC990, &protocol conformance descriptor for TypedIdentifier<A>);
  sub_195FA1238();

  if (!v2)
  {
    v11 = (v3 + OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier);
    swift_beginAccess();
    v12 = v11[1];
    v17 = *v11;
    v18 = v12;
    LOBYTE(v16) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDEA0, &unk_195FADD00);
    sub_195F50C1C();
    sub_195FA1238();

    v13 = OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier;
    swift_beginAccess();
    v16 = *(v3 + v13);
    v15[15] = 2;
    sub_195F50CCC();
    sub_195FA1238();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t static CHSExtensionIdentity.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = (a2 + OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier);
  swift_beginAccess();
  if (v4 == *v6 && v5 == v6[1])
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_195FA12B8();
  }

  return v8 & 1;
}

uint64_t sub_195F50B0C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*a1 + OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = (v2 + OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier);
  swift_beginAccess();
  if (v4 == *v6 && v5 == v6[1])
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_195FA12B8();
  }

  return v8 & 1;
}

BOOL CHSExtensionIdentity.isContainerIdentifierValid.getter()
{
  v1 = (v0 + OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier);
  swift_beginAccess();
  v2 = v1[1];
  if (!v2)
  {
    return 0;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  return v3 != 0;
}

unint64_t sub_195F50C1C()
{
  result = qword_1ED457A18;
  if (!qword_1ED457A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAEEDEA0, &unk_195FADD00);
    sub_195EB5F38(&unk_1ED457A20, &qword_1EAEEDA60, &qword_195FAC980, &protocol conformance descriptor for TypedIdentifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED457A18);
  }

  return result;
}

unint64_t sub_195F50CCC()
{
  result = qword_1ED457A08;
  if (!qword_1ED457A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED457A08);
  }

  return result;
}

unint64_t sub_195F50D24()
{
  result = qword_1EAEEDEB0;
  if (!qword_1EAEEDEB0)
  {
    type metadata accessor for CHSExtensionIdentity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDEB0);
  }

  return result;
}

unint64_t sub_195F50D7C()
{
  result = qword_1EAEEDEB8;
  if (!qword_1EAEEDEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDEB8);
  }

  return result;
}

unint64_t sub_195F50DD0(uint64_t a1, uint64_t a2)
{
  v2 = sub_195FA10D8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t TaskPriority.description.getter()
{
  v1 = 0xD000000000000017;
  v2 = *v0;
  v3 = 0xD000000000000019;
  if (v2 == 2)
  {
    v3 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_195F50EA4()
{
  result = qword_1EAEEBC30;
  if (!qword_1EAEEBC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBC30);
  }

  return result;
}

unint64_t sub_195F50EF8()
{
  v1 = 0xD000000000000017;
  v2 = *v0;
  v3 = 0xD000000000000019;
  if (v2 == 2)
  {
    v3 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t static CHSRemoteDevicePredicate.deviceIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(CHSRemoteDevicePredicate) init];
  v6 = &v5[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v7 = *&v5[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v8 = *&v5[OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8];
  *v6 = a1;
  *(v6 + 1) = a2;
  LOBYTE(a1) = v6[16];
  v6[16] = 0;
  v9 = v5;

  sub_195EC5C98(v7, v8, a1);

  return MEMORY[0x1EEE6BE48](v9, v2, 0, 0, 0);
}

uint64_t static CHSRemoteDevicePredicate.deviceType(_:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(CHSRemoteDevicePredicate) init];
  v4 = &v3[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v5 = *&v3[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v6 = *&v3[OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8];
  *v4 = a1;
  *(v4 + 1) = 0;
  LOBYTE(a1) = v4[16];
  v4[16] = 1;
  v7 = v3;
  sub_195EC5C98(v5, v6, a1);

  return MEMORY[0x1EEE6BE48](v7, v1, 0, 0, 0);
}

uint64_t static CHSRemoteDevicePredicate.relationshipIdentifier(_:)()
{
  v1 = v0;
  v2 = sub_195FA0528();
  v4 = v3;
  v5 = [objc_allocWithZone(CHSRemoteDevicePredicate) init];
  v6 = &v5[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v7 = *&v5[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v8 = *&v5[OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8];
  *v6 = v2;
  *(v6 + 1) = v4;
  LOBYTE(v2) = v6[16];
  v6[16] = 2;
  v9 = v5;
  sub_195EC5C98(v7, v8, v2);

  return MEMORY[0x1EEE6BE48](v9, v1, 0, 0, 0);
}

char *static CHSRemoteDevicePredicate.none.getter()
{
  v0 = [objc_allocWithZone(CHSRemoteDevicePredicate) init];
  v1 = &v0[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v2 = *&v0[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v3 = *&v0[OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8];
  *v1 = 0;
  *(v1 + 1) = 0;
  v4 = v1[16];
  v1[16] = 3;
  v5 = v0;
  sub_195EC5C98(v2, v3, v4);

  return v5;
}

char *static CHSRemoteDevicePredicate.all.getter()
{
  v0 = [objc_allocWithZone(CHSRemoteDevicePredicate) init];
  v1 = &v0[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v2 = *&v0[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v3 = *&v0[OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8];
  *v1 = xmmword_195FAA6A0;
  v4 = v1[16];
  v1[16] = 3;
  v5 = v0;
  sub_195EC5C98(v2, v3, v4);

  return v5;
}

Swift::Bool __swiftcall CHSRemoteDevicePredicate.acceptsDevice(_:)(CHSRemoteDevice *a1)
{
  v3 = sub_195FA0548();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate);
  v9 = *(v1 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8);
  if (*(v1 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 16) > 1u)
  {
    if (*(v1 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 16) != 2)
    {
      v15 = (v8 | v9) != 0;
      return v15 & 1;
    }

    v16 = v5;

    v17 = [(CHSRemoteDevice *)a1 relationshipID];
    sub_195FA0538();

    v18 = sub_195FA0528();
    v20 = v19;
    (*(v4 + 8))(v7, v16);
    if (v18 != v8 || v9 != v20)
    {
      v15 = sub_195FA12B8();
      sub_195EC5C98(v8, v9, 2u);

      return v15 & 1;
    }

    sub_195EC5C98(v8, v9, 2u);

LABEL_18:
    v15 = 1;
    return v15 & 1;
  }

  if (*(v1 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 16))
  {
    v15 = [(CHSRemoteDevice *)a1 deviceType]== v8;
    return v15 & 1;
  }

  v10 = [(CHSRemoteDevice *)a1 deviceID];
  v11 = sub_195FA08B8();
  v13 = v12;

  if (v11 == v8 && v9 == v13)
  {

    sub_195EC5C98(v8, v9, 0);
    goto LABEL_18;
  }

  v15 = sub_195FA12B8();

  sub_195EC5C98(v8, v9, 0);
  return v15 & 1;
}

uint64_t sub_195F51768(_BOOL8 a1, uint64_t a2, unsigned __int8 a3)
{
  sub_195FA1398();
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v6 = 4;
      goto LABEL_6;
    }

    v7 = (a1 | a2) != 0;
LABEL_9:
    MEMORY[0x19A8C4970](v7);
    return sub_195FA13E8();
  }

  if (a3)
  {
    MEMORY[0x19A8C4970](3);
    v7 = a1;
    goto LABEL_9;
  }

  v6 = 2;
LABEL_6:
  MEMORY[0x19A8C4970](v6);
  sub_195FA0958();
  return sub_195FA13E8();
}

uint64_t sub_195F51820(uint64_t a1)
{
  v2 = sub_195F52D0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F5185C(uint64_t a1)
{
  v2 = sub_195F52D0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_195F518A4(uint64_t a1)
{
  v2 = sub_195EC5C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F518E0(uint64_t a1)
{
  v2 = sub_195EC5C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_195F5191C(uint64_t a1)
{
  v2 = sub_195F52CB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F51958(uint64_t a1)
{
  v2 = sub_195F52CB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_195F51994(uint64_t a1)
{
  v2 = sub_195F52C64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F519D0(uint64_t a1)
{
  v2 = sub_195F52C64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_195F51A0C(uint64_t a1)
{
  v2 = sub_195EC5D48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F51A48(uint64_t a1)
{
  v2 = sub_195EC5D48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_195F51A84(uint64_t a1)
{
  v2 = sub_195F52C10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F51AC0(uint64_t a1)
{
  v2 = sub_195F52C10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_195F51B08(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) == 2)
    {
      v3 = 4;
      goto LABEL_6;
    }

    v5 = *v1 != 0;
    return MEMORY[0x19A8C4970](v5);
  }

  if (*(v1 + 16))
  {
    MEMORY[0x19A8C4970](3);
    v5 = v2;
    return MEMORY[0x19A8C4970](v5);
  }

  v3 = 2;
LABEL_6:
  MEMORY[0x19A8C4970](v3);

  return sub_195FA0958();
}

uint64_t sub_195F51BBC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  sub_195FA1398();
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = 4;
      goto LABEL_6;
    }

    v6 = (v2 | v3) != 0;
LABEL_9:
    MEMORY[0x19A8C4970](v6);
    return sub_195FA13E8();
  }

  if (v4)
  {
    MEMORY[0x19A8C4970](3);
    v6 = v2;
    goto LABEL_9;
  }

  v5 = 2;
LABEL_6:
  MEMORY[0x19A8C4970](v5);
  sub_195FA0958();
  return sub_195FA13E8();
}

uint64_t CHSRemoteDevicePredicate.isEqual(_:)(uint64_t a1)
{
  v2 = sub_195EB773C(a1, v6);
  if (!v7)
  {
    sub_195EB7914(v6);
    goto LABEL_5;
  }

  type metadata accessor for CHSRemoteDevicePredicate(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  v3 = sub_195F52898(*(v1 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate), *(v1 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8), *(v1 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 16), *&v5[OBJC_IVAR___CHSRemoteDevicePredicate_predicate], *&v5[OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8], v5[OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 16]);

  return v3 & 1;
}

uint64_t CHSRemoteDevicePredicate.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate);
  v2 = *(v0 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8);
  v3 = *(v0 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 16);
  sub_195FA1398();
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = 4;
      goto LABEL_6;
    }

    v5 = (v1 | v2) != 0;
LABEL_9:
    MEMORY[0x19A8C4970](v5);
    goto LABEL_10;
  }

  if (v3)
  {
    MEMORY[0x19A8C4970](3);
    v5 = v1;
    goto LABEL_9;
  }

  v4 = 2;
LABEL_6:
  MEMORY[0x19A8C4970](v4);

  sub_195FA0958();
LABEL_10:
  v6 = sub_195FA13E8();
  sub_195EC5C98(v1, v2, v3);
  return v6;
}

id CHSRemoteDevicePredicate.copy(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for CHSRemoteDevicePredicate(a1);
  *a2 = v4;

  return v4;
}

uint64_t sub_195F51FE0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0xE900000000000065;
  }

  else
  {
    v2 = 0xED00006174614465;
  }

  if (*a2)
  {
    v3 = 0xE900000000000065;
  }

  else
  {
    v3 = 0xED00006174614465;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_195FA12B8();
  }

  return v4 & 1;
}

uint64_t sub_195F52080()
{
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

uint64_t sub_195F52100(uint64_t a1)
{
  sub_195FA0958();
}

uint64_t sub_195F5216C(uint64_t a1)
{
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

uint64_t sub_195F521E8@<X0>(char *a2@<X8>)
{
  v3 = sub_195FA10D8();

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

  *a2 = v5;
  return result;
}

void sub_195F52248(void *a1@<X8>)
{
  v2 = 0xED00006174614465;
  if (*v1)
  {
    v2 = 0xE900000000000065;
  }

  *a1 = 0x7461636964657270;
  a1[1] = v2;
}

uint64_t sub_195F522BC@<X0>(char *a3@<X8>)
{
  v4 = sub_195FA10D8();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_195F52320(uint64_t a1)
{
  v2 = sub_195F52968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F5235C(uint64_t a1)
{
  v2 = sub_195F52968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CHSRemoteDevicePredicate.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDEC8, &qword_195FAE078);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F52968();
  sub_195FA1468();
  v8 = *(v2 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 16);
  v11 = *(v2 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate);
  v12 = v8;
  v10[15] = 1;
  sub_195EC5AB0();
  sub_195FA1238();
  return (*(v5 + 8))(v7, v4);
}

char *CHSRemoteDevicePredicate.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDED8, &unk_195FAE080);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F52968();
  sub_195FA1448();
  if (!v1)
  {
    v19 = 1;
    sub_195EC7618();
    sub_195FA1178();
    v9 = v16[1];
    v10 = v16[2];
    v18 = v17;
    v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    (*(v4 + 8))(v6, v3);
    v12 = &v11[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
    v13 = *&v11[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
    v14 = *&v11[OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8];
    *v12 = v9;
    *(v12 + 1) = v10;
    v15 = v12[16];
    v12[16] = v18;
    v7 = v11;
    sub_195EC5C98(v13, v14, v15);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

char *sub_195F5274C@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = CHSRemoteDevicePredicate.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_195F52898(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_195FA12B8();
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 3 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 3 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (a3)
  {
    if (a6 == 1)
    {
      return a1 == a4;
    }
  }

  else if (!a6)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return sub_195FA12B8();
  }

  return 0;
}

unint64_t sub_195F52968()
{
  result = qword_1EAEEDED0;
  if (!qword_1EAEEDED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDED0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So24CHSRemoteDevicePredicateC14ChronoServicesE0C033_E1AE0057D1F63D0AFC0DF38A496B6370LLO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_195F529FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_195F52A44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_195F52A88(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_195F52AB4()
{
  result = qword_1EAEEDEE8;
  if (!qword_1EAEEDEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDEE8);
  }

  return result;
}

unint64_t sub_195F52B0C()
{
  result = qword_1EAEEDEF0;
  if (!qword_1EAEEDEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDEF0);
  }

  return result;
}

unint64_t sub_195F52B64()
{
  result = qword_1EAEEDEF8;
  if (!qword_1EAEEDEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDEF8);
  }

  return result;
}

unint64_t sub_195F52BBC()
{
  result = qword_1EAEEDF00;
  if (!qword_1EAEEDF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDF00);
  }

  return result;
}

unint64_t sub_195F52C10()
{
  result = qword_1EAEEDF48;
  if (!qword_1EAEEDF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDF48);
  }

  return result;
}

unint64_t sub_195F52C64()
{
  result = qword_1EAEEDF50;
  if (!qword_1EAEEDF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDF50);
  }

  return result;
}

unint64_t sub_195F52CB8()
{
  result = qword_1EAEEDF60;
  if (!qword_1EAEEDF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDF60);
  }

  return result;
}

unint64_t sub_195F52D0C()
{
  result = qword_1EAEEDF68;
  if (!qword_1EAEEDF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDF68);
  }

  return result;
}

uint64_t sub_195F52D60(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CHSRemoteDeviceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_195F52DA8()
{
  result = qword_1EAEEDFB8;
  if (!qword_1EAEEDFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDFB8);
  }

  return result;
}

unint64_t sub_195F52E00()
{
  result = qword_1EAEEDFC0;
  if (!qword_1EAEEDFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDFC0);
  }

  return result;
}

unint64_t sub_195F52E58()
{
  result = qword_1EAEEDFC8;
  if (!qword_1EAEEDFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDFC8);
  }

  return result;
}

unint64_t sub_195F52EB0()
{
  result = qword_1EAEEDFD0;
  if (!qword_1EAEEDFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDFD0);
  }

  return result;
}

uint64_t sub_195F52FAC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a5 + 8))(a3, a5);
  a1(v8);
  return (*(a5 + 24))(a3, a5);
}

uint64_t sub_195F53054()
{
  MEMORY[0x19A8C5B70](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t sub_195F530AC()
{
  v7 = sub_195FA0CF8();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_195FA0CD8();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_195FA07D8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_195EC6FD4();
  sub_195FA07A8();
  v8 = MEMORY[0x1E69E7CC0];
  sub_195F566D8(&qword_1EAEEC5A0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE3A0, &unk_195FAC790);
  sub_195F43EC8(&qword_1EAEEC5B0, &unk_1EAEEE3A0, &unk_195FAC790);
  sub_195FA0E38();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8098], v7);
  result = sub_195FA0D38();
  qword_1EAEEBC10 = result;
  return result;
}

uint64_t sub_195F532FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_195F5339C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 128);
  swift_beginAccess();
  v4 = sub_195FA0DB8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_195F53448@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 176);
  swift_beginAccess();
  v4 = sub_195FA0DB8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_195F534F4(uint64_t a1)
{
  v3 = *(*v1 + 176);
  swift_beginAccess();
  v4 = sub_195FA0DB8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_195F535B8(uint64_t a1)
{
  sub_195F55344(a1);
}

uint64_t sub_195F535F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    sub_195FA08B8();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v13, 0, sizeof(v13));
    v10 = a5;
    v11 = a1;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = a1;
  sub_195FA0E08();
  swift_unknownObjectRelease();
  if (a5)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_195F566D8(&qword_1EAEEBB20, type metadata accessor for NSKeyValueChangeKey, &unk_195FABA5C);
    sub_195FA0808();
  }

LABEL_7:
  sub_195F55440();

  return sub_195EB7914(v13);
}

id sub_195F53758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for UserDefault._KVOUserDefaultsObserver(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t *UserDefault.__allocating_init(domain:key:defaultValue:appleInternalOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  has_internal_ui = os_variant_has_internal_ui();
  v14 = sub_195F55E80(a1, a2, a3, a4, a5, a6, has_internal_ui);
  v15 = *(v6 + 80);
  v17 = type metadata accessor for UserDefault.AppleInternalOnlyOption(0, v15, *(v6 + 88), v16);
  (*(*(v17 - 8) + 8))(a6, v17);
  (*(*(v15 - 8) + 8))(a5, v15);
  return v14;
}

void UserDefault.deinit()
{
  v1 = *v0;
  v2 = *(*v0 + 20);
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = v0;
    v5 = v0[2];

    v6 = v3;
    v7 = sub_195FA0888();

    [v5 removeObserver:v6 forKeyPath:v7];

    v8 = *(v4 + v2);
    if (v8)
    {
      v9 = v8;
      sub_195F55344(0);

      (*(*(v1[10] - 8) + 8))(v4 + *(*v4 + 15), v1[10]);
      v10 = *(*v4 + 16);
      v11 = sub_195FA0DB8();
      v12 = *(*(v11 - 8) + 8);
      v12(v4 + v10, v11);

      v12(v4 + *(*v4 + 22), v11);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t UserDefault.__deallocating_deinit()
{
  UserDefault.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_195F53B60()
{
  v1 = *(v0 + *(*v0 + 168));
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  sub_195F53BF4(v0, &v4);
  os_unfair_lock_unlock(*(v1 + 16));

  return v4;
}

uint64_t sub_195F53BF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - v6;
  v12 = 0;
  v13 = 0xE000000000000000;
  v8 = *(v5 + 40);
  v9 = *(v5 + 48);

  MEMORY[0x19A8C3F70](v8, v9);

  MEMORY[0x19A8C3F70](2112800, 0xE300000000000000);
  sub_195F54C90(v7);
  sub_195FA1298();
  result = (*(v4 + 8))(v7, v3);
  v11 = v13;
  *a2 = v12;
  a2[1] = v11;
  return result;
}

uint64_t sub_195F53D38(uint64_t a1)
{
  v3 = *v1;
  sub_195F55F9C(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*sub_195F53DB4(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_195F54BCC();
  return sub_195F53EC8;
}

void sub_195F53EC8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_195F55F24(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_195F55F24(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_195F53FC0(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v17[-v4];
  v6 = sub_195FA0DB8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-v11];
  (*(v3 + 56))(&v17[-v11], 1, 1, v2);
  v13 = *(v1 + *(*v1 + 168));
  v14 = *(v13 + 16);

  os_unfair_lock_lock(v14);
  sub_195F54290(v1, v12);
  os_unfair_lock_unlock(*(v13 + 16));

  (*(v7 + 16))(v10, v12, v6);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    v15 = *(v7 + 8);
    v15(v10, v6);
    return (v15)(v12, v6);
  }

  else
  {
    (*(v3 + 32))(v5, v10, v2);

    sub_195FA06D8();

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v12, v6);
  }
}

uint64_t sub_195F54290(void *a1, uint64_t a2)
{
  v86 = a2;
  v79 = *a1;
  v3 = *(v79 + 80);
  v4 = sub_195FA0DB8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v80 = *(TupleTypeMetadata2 - 8);
  v5 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v7 = (&v78 - v6);
  v90 = *(v4 - 8);
  v8 = v90;
  v9 = MEMORY[0x1EEE9AC00](v5);
  v84 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v91 = &v78 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v78 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v78 - v17;
  v19 = *(v3 - 8);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v88 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v81 = &v78 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v78 - v24;
  sub_195F54C90(&v78 - v24);
  v26 = v19[2];
  v96 = v25;
  v92 = v19 + 2;
  v89 = v26;
  v26(v18, v25, v3);
  v82 = v19[7];
  v83 = v19 + 7;
  v82(v18, 0, 1, v3);
  v87 = a1;
  sub_195F53448(v15);
  v27 = *(TupleTypeMetadata2 + 48);
  v85 = v8;
  v28 = *(v8 + 16);
  v28(v7, v18, v4);
  v97 = v4;
  v28((v7 + v27), v15, v4);
  v93 = v19;
  v94 = v7;
  v29 = v19[6];
  if (v29(v7, 1, v3) == 1)
  {
    v30 = *(v90 + 8);
    v31 = v15;
    v32 = v97;
    v30(v31, v97);
    v30(v18, v32);
    v33 = v94;
    v34 = v29(v94 + v27, 1, v3) == 1;
    v35 = v33;
    if (v34)
    {
      v30(v33, v32);
      return (v93[1])(v96, v3);
    }

    v40 = v87;
    v41 = v93;
    goto LABEL_7;
  }

  v37 = v94;
  v28(v91, v94, v97);
  if (v29(v37 + v27, 1, v3) == 1)
  {
    v30 = *(v90 + 8);
    v38 = v15;
    v39 = v97;
    v30(v38, v97);
    v30(v18, v39);
    v41 = v93;
    (v93[1])(v91, v3);
    v40 = v87;
    v35 = v94;
LABEL_7:
    (*(v80 + 8))(v35, TupleTypeMetadata2);
    goto LABEL_8;
  }

  v41 = v93;
  v51 = v94;
  v52 = v81;
  (v93[4])(v81, v94 + v27, v3);
  LODWORD(TupleTypeMetadata2) = sub_195FA0868();
  v53 = v41[1];
  v53(v52, v3);
  v30 = *(v90 + 8);
  v54 = v15;
  v55 = v97;
  v30(v54, v97);
  v30(v18, v55);
  v53(v91, v3);
  v30(v51, v55);
  v40 = v87;
  if (TupleTypeMetadata2)
  {
    return (v53)(v96, v3);
  }

LABEL_8:
  if (qword_1EAEEBBD0 != -1)
  {
    swift_once();
  }

  v42 = sub_195FA0678();
  __swift_project_value_buffer(v42, qword_1EAEF7298);
  v43 = v88;
  v44 = v89;
  v89(v88, v96, v3);

  v45 = sub_195FA0658();
  v46 = sub_195FA0CC8();

  v47 = os_log_type_enabled(v45, v46);
  TupleTypeMetadata2 = v30;
  if (v47)
  {
    LODWORD(v91) = v46;
    v94 = v45;
    v48 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v98 = v90;
    *v48 = 136446978;
    if (v40[4])
    {
      v49 = v40[3];
      v50 = v40[4];
    }

    else
    {
      v56 = [objc_opt_self() mainBundle];
      v57 = [v56 bundleIdentifier];

      if (v57)
      {
        v49 = sub_195FA08B8();
        v50 = v58;
      }

      else
      {
        v50 = 0xE300000000000000;
        v49 = 7104878;
      }
    }

    v59 = sub_195EBD554(v49, v50, &v98);

    *(v48 + 4) = v59;
    *(v48 + 12) = 2082;
    v61 = v40[5];
    v60 = v40[6];

    v62 = sub_195EBD554(v61, v60, &v98);

    *(v48 + 14) = v62;
    *(v48 + 22) = 2082;
    v63 = v81;
    v64 = v88;
    v44 = v89;
    v89(v81, v88, v3);
    v65 = sub_195FA0908();
    v67 = v66;
    v41 = v93;
    (v93[1])(v64, v3);
    v68 = sub_195EBD554(v65, v67, &v98);

    *(v48 + 24) = v68;
    *(v48 + 32) = 2082;
    sub_195F532FC(v63);
    v69 = sub_195FA0908();
    v71 = sub_195EBD554(v69, v70, &v98);

    *(v48 + 34) = v71;
    v72 = v94;
    _os_log_impl(&dword_195EB2000, v94, v91, "Preferences[%{public}s]: %{public}s preference changed to %{public}s [default=%{public}s]", v48, 0x2Au);
    v73 = v90;
    swift_arrayDestroy();
    MEMORY[0x19A8C5B70](v73, -1, -1);
    MEMORY[0x19A8C5B70](v48, -1, -1);
  }

  else
  {

    (v41[1])(v43, v3);
  }

  v74 = v84;
  v75 = v96;
  v44(v84, v96, v3);
  v76 = v82;
  v82(v74, 0, 1, v3);
  sub_195F534F4(v74);
  v77 = v86;
  (TupleTypeMetadata2)(v86, v97);
  (v41[4])(v77, v75, v3);
  return v76(v77, 0, 1, v3);
}

uint64_t sub_195F54BCC()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for UnfairLock();
  v4 = *(v2 + 80);

  sub_195F52FAC(sub_195F56720, v1, v3, v4, &off_1F0A53DA0);
}

uint64_t sub_195F54C90@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 10);
  v5 = sub_195FA0DB8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v24 - v10;
  os_unfair_lock_assert_owner((*(v1 + v3[21]))[2]);
  sub_195F5339C(v11);
  v12 = *(v4 - 8);
  v13 = *(v12 + 48);
  if (v13(v11, 1, v4) != 1)
  {
    return (*(v12 + 32))(a1, v11, v4);
  }

  v24[0] = v13;
  v25 = v5;
  v26 = a1;
  v14 = *(v6 + 8);
  v24[1] = v6 + 8;
  v14(v11, v5);
  v15 = v14;
  v16 = v1[2];

  v17 = sub_195FA0888();

  v18 = [v16 valueForKey_];

  if (v18)
  {
    sub_195FA0E08();
    swift_unknownObjectRelease();
    sub_195F2E09C(&v27, v28);
  }

  else
  {
    memset(v28, 0, sizeof(v28));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
  v20 = swift_dynamicCast();
  v21 = *(v12 + 56);
  v23 = v25;
  v22 = v26;
  if (v20)
  {
    v21(v9, 0, 1, v4);
    return (*(v12 + 32))(v22, v9, v4);
  }

  else
  {
    v21(v9, 1, 1, v4);
    sub_195F532FC(v22);
    result = (v24[0])(v9, 1, v4);
    if (result != 1)
    {
      return v15(v9, v23);
    }
  }

  return result;
}

void sub_195F54FA0(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v3 = *v1;
  v4 = *(v3 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = sub_195FA0DB8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  os_unfair_lock_assert_owner(*(*(v2 + *(v3 + 168)) + 16));
  sub_195F5339C(v14);
  LODWORD(v3) = (*(v5 + 48))(v14, 1, v4);
  (*(v12 + 8))(v14, v11);
  if (v3 == 1)
  {
    sub_195F54C90(v10);
    v15 = sub_195FA0868();
    (*(v5 + 8))(v10, v4);
    if ((v15 & 1) == 0)
    {
      (*(v5 + 16))(v8, v23, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
      swift_dynamicCast();
      if (v25)
      {
        sub_195F2E09C(&v24, &v26);
        v16 = v2[2];
        __swift_project_boxed_opaque_existential_1(&v26, v27);
        v17 = v16;
        v18 = sub_195FA12A8();

        v19 = sub_195FA0888();

        [v17 setObject:v18 forKey:v19];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1Tm(&v26);
      }

      else
      {
        sub_195EB7914(&v24);
        v20 = v2[2];

        v21 = sub_195FA0888();

        [v20 removeObjectForKey_];
      }
    }
  }
}

id sub_195F55358(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  swift_weakInit();
  swift_weakAssign();
  v5 = type metadata accessor for UserDefault._KVOUserDefaultsObserver(0, *((v3 & v2) + 0x50), *((v3 & v2) + 0x58), v4);
  v7.receiver = v1;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_195F55440()
{
  v0 = sub_195FA0778();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_195FA07D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = v4;
    v13 = v1;
    if (qword_1EAEEBC08 != -1)
    {
      v10 = result;
      swift_once();
      result = v10;
    }

    v11 = qword_1EAEEBC10;
    aBlock[4] = sub_195F566D4;
    aBlock[5] = result;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195EBDBE8;
    aBlock[3] = &block_descriptor_8;
    v9 = _Block_copy(aBlock);

    sub_195FA0798();
    v14 = MEMORY[0x1E69E7CC0];
    sub_195F566D8(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
    sub_195F43EC8(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
    sub_195FA0E38();
    MEMORY[0x19A8C42F0](0, v7, v3, v9);
    _Block_release(v9);

    (*(v13 + 8))(v3, v0);
    (*(v5 + 8))(v7, v12);
  }

  return result;
}

uint64_t *sub_195F55778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = v7;
  v76 = a7;
  v75 = a6;
  v77 = a5;
  v72 = a3;
  v12 = *v8;
  v13 = *(*v8 + 80);
  v14 = sub_195FA0DB8();
  v66 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v60 - v15;
  v74 = *(v12 + 88);
  v73 = type metadata accessor for UserDefault.AppleInternalOnlyOption(0, v13, v74, v16);
  v71 = *(v73 - 8);
  v17 = MEMORY[0x1EEE9AC00](v73);
  v70 = &v60 - v18;
  v19 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v60 - v20;
  *(v8 + 3) = 0;
  *(v8 + 4) = 0;
  v21 = *(v12 + 128);
  v69 = v19;
  v22 = *(v19 + 56);
  v64 = v21;
  v22(&v8[v21], 1, 1, v13);
  *&v8[*(*v8 + 160)] = 0;
  v23 = *(*v8 + 168);
  type metadata accessor for UnfairLock();
  v24 = swift_allocObject();
  v25 = swift_slowAlloc();
  *v25 = 0;
  *(v24 + 16) = v25;
  *&v8[v23] = v24;
  v26 = &v8[*(*v8 + 176)];
  v62 = v19 + 56;
  v63 = v22;
  v22(v26, 1, 1, v13);
  v67 = v14;
  if (!a2)
  {
    goto LABEL_7;
  }

  v27 = [objc_opt_self() mainBundle];
  v28 = [v27 bundleIdentifier];

  if (v28)
  {
    v61 = a4;
    v29 = sub_195FA08B8();
    v31 = v30;

    if (v29 == a1 && v31 == a2)
    {

      a4 = v61;
LABEL_7:
      result = [objc_opt_self() standardUserDefaults];
      goto LABEL_9;
    }

    v32 = sub_195FA12B8();

    a4 = v61;
    if (v32)
    {
      goto LABEL_7;
    }
  }

  v34 = objc_allocWithZone(MEMORY[0x1E695E000]);

  v35 = sub_195FA0888();

  v36 = [v34 initWithSuiteName_];

  result = v36;
  if (!v36)
  {
    __break(1u);
    return result;
  }

LABEL_9:
  *(v8 + 2) = result;
  *(v8 + 3) = a1;
  *(v8 + 4) = a2;

  *(v8 + 5) = v72;
  *(v8 + 6) = a4;
  v37 = *(*v8 + 120);
  v38 = v69;
  v39 = *(v69 + 16);
  v39(&v8[v37], v77, v13);
  v40 = v76;
  v8[*(*v8 + 136)] = v76 & 1;
  v42 = v70;
  v41 = v71;
  v43 = v73;
  (*(v71 + 16))(v70, v75, v73);
  if ((*(v38 + 48))(v42, 1, v13) == 1)
  {
    (*(v41 + 8))(v42, v43);
  }

  else
  {
    v44 = v68;
    (*(v38 + 32))(v68, v42, v13);
    if (v40)
    {
      swift_beginAccess();
      (*(v38 + 40))(&v8[v37], v44, v13);
    }

    else
    {
      (*(v38 + 8))(v44, v13);
      v45 = v65;
      v39(v65, v77, v13);
      v63(v45, 0, 1, v13);
      v46 = v64;
      swift_beginAccess();
      (*(v66 + 40))(&v8[v46], v45, v67);
    }

    swift_endAccess();
  }

  sub_195FA0708();
  v47 = sub_195FA06E8();
  *&v8[*(*v8 + 144)] = v47;
  v78 = v47;
  swift_getWitnessTable();
  *&v8[*(*v8 + 152)] = sub_195FA0738();
  v48 = *(*v8 + 160);
  v49 = *&v8[v48];
  *&v8[v48] = 0;

  type metadata accessor for UserDefault._KVOUserDefaultsObserver(0, v13, v74, v50);

  v55 = sub_195F55404(v51, v52, v53, v54);

  v56 = *&v8[v48];
  *&v8[v48] = v55;
  v57 = v55;

  v58 = *(v8 + 2);

  v59 = sub_195FA0888();

  [v58 addObserver:v57 forKeyPath:v59 options:0 context:0];

  return v8;
}

uint64_t *sub_195F55E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  type metadata accessor for UserDefault(0, *(v7 + 80), *(v7 + 88), a4);
  swift_allocObject();
  return sub_195F55778(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_195F55F24(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 168));
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F54FA0(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F55FC4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_195FA0DB8();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_195F561F4(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_195F56250(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_195F563D0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v8 - 1;
  if (v8)
  {
    v11 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v10 = 0;
    v11 = v9 + 1;
  }

  v12 = a3 >= v10;
  v13 = a3 - v10;
  if (v13 == 0 || !v12)
  {
    goto LABEL_16;
  }

  if (v11 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v14 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
  if (!HIWORD(v14))
  {
    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }

LABEL_16:
    if (v10 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_17:
    v16 = ~v10 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> (8 * v11)) + 1;
      if (v11)
      {
        v18 = v16 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v18;
            if (v6 > 1)
            {
LABEL_55:
              if (v6 == 2)
              {
                *&a1[v11] = v17;
              }

              else
              {
                *&a1[v11] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v6 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v6 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
      if (v6 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v6)
    {
      a1[v11] = v17;
    }

    return;
  }

LABEL_26:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v11] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v6)
  {
    goto LABEL_32;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v8 >= 2)
  {
    if (a2 >= v8)
    {
      if (v9 <= 3)
      {
        v20 = ~(-1 << (8 * v9));
      }

      else
      {
        v20 = -1;
      }

      if (v9)
      {
        v21 = v20 & (a2 - v8);
        if (v9 <= 3)
        {
          v22 = v9;
        }

        else
        {
          v22 = 4;
        }

        bzero(a1, v9);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *a1 = v21;
            a1[2] = BYTE2(v21);
          }

          else
          {
            *a1 = v21;
          }
        }

        else if (v22 == 1)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      v19 = *(v7 + 56);

      v19();
    }
  }
}

uint64_t sub_195F566D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id CHSRemoteActivityLaunchController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CHSRemoteActivityLaunchController.init()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = type metadata accessor for CHSRemoteActivityLaunchController();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC14ChronoServices33CHSRemoteActivityLaunchController_connection] = v0;
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

void sub_195F568E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAC8, &unk_195FACC70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = *(v5 + OBJC_IVAR____TtC14ChronoServices33CHSRemoteActivityLaunchController_connection);
  v11 = sub_195FA0888();
  v12 = sub_195FA0888();
  sub_195F3ED30(a5, v9);
  v13 = sub_195FA0478();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v9, 1, v13) != 1)
  {
    v15 = sub_195FA0398();
    (*(v14 + 8))(v9, v13);
  }

  [v10 launchLiveActivityWithID:v11 deviceID:v12 url:v15];
}

id CHSRemoteActivityLaunchController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CHSRemoteActivityLaunchController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CHSWidgetIcon.size.setter(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR___CHSWidgetIcon_size);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

double CHSWidgetIcon.scale.getter()
{
  v1 = OBJC_IVAR___CHSWidgetIcon_scale;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CHSWidgetIcon.scale.setter(double a1)
{
  v3 = OBJC_IVAR___CHSWidgetIcon_scale;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_195F56CB8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  return *v3;
}

double sub_195F56D08(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_195F56D58(uint64_t a1, double a2, double a3, uint64_t a4, void *a5)
{
  v7 = (a1 + *a5);
  result = swift_beginAccess();
  *v7 = a2;
  v7[1] = a3;
  return result;
}

uint64_t CHSWidgetIcon.pixelSize.setter(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR___CHSWidgetIcon_pixelSize);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

id CHSWidgetIcon.image.getter()
{
  v1 = OBJC_IVAR___CHSWidgetIcon_image;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CHSWidgetIcon.image.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CHSWidgetIcon_image;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CHSWidgetIcon.init(image:size:scale:pixelSize:)(void *a1, double a2, double a3, double a4, double a5, double a6)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:a1 size:a2 scale:a3 pixelSize:{a4, a5, a6}];

  return v7;
}

id CHSWidgetIcon.init(image:size:scale:pixelSize:)(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  *(v6 + OBJC_IVAR___CHSWidgetIcon_image) = a1;
  v7 = (v6 + OBJC_IVAR___CHSWidgetIcon_size);
  *v7 = a2;
  v7[1] = a3;
  *(v6 + OBJC_IVAR___CHSWidgetIcon_scale) = a4;
  v8 = (v6 + OBJC_IVAR___CHSWidgetIcon_pixelSize);
  *v8 = a5;
  v8[1] = a6;
  v10.super_class = CHSWidgetIcon;
  return objc_msgSendSuper2(&v10, sel_init);
}

void __swiftcall CHSWidgetIcon.init()(CHSWidgetIcon *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id keypath_getTm@<X0>(id *a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  result = [*a1 *a2];
  *a3 = v5;
  a3[1] = v6;
  return result;
}

unint64_t type metadata accessor for CHSWidgetIcon()
{
  result = qword_1EAEEE008;
  if (!qword_1EAEEE008)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAEEE008);
  }

  return result;
}

uint64_t sub_195F57238(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t sub_195F572D0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t ControlSessionSubscriptionResponse.__allocating_init(archiveSandboxExtension:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  swift_beginAccess();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t ControlSessionSubscriptionResponse.init(archiveSandboxExtension:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_195F57440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x8000000195FC18A0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_195FA12B8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_195F574D4(uint64_t a1)
{
  v2 = sub_195F57728();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F57510(uint64_t a1)
{
  v2 = sub_195F57728();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlSessionSubscriptionResponse.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_195F575A4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE010, &qword_195FAEC80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F57728();
  sub_195FA1468();
  swift_beginAccess();
  v9 = *(v2 + 16);
  type metadata accessor for SandboxExtension();
  sub_195F579B8(&qword_1EAEEBC20, &protocol conformance descriptor for SandboxExtension);
  sub_195FA11E8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_195F57728()
{
  result = qword_1EAEEBEE0;
  if (!qword_1EAEEBEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBEE0);
  }

  return result;
}

uint64_t ControlSessionSubscriptionResponse.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ControlSessionSubscriptionResponse.init(from:)(a1);
  return v2;
}

uint64_t ControlSessionSubscriptionResponse.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE018, &qword_195FAEC88);
  v12[0] = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v12 - v6;
  *(v1 + 16) = 0;
  v8 = (v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F57728();
  sub_195FA1448();
  if (!v2)
  {
    v9 = v12[0];
    type metadata accessor for SandboxExtension();
    sub_195F579B8(&qword_1EAEEBDC0, &protocol conformance descriptor for SandboxExtension);
    sub_195FA1128();
    (*(v9 + 8))(v7, v5);
    v11 = v12[5];
    swift_beginAccess();
    *v8 = v11;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_195F579B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SandboxExtension();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_195F579FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ControlSessionSubscriptionResponse();
  v5 = swift_allocObject();
  result = ControlSessionSubscriptionResponse.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_195F57BA8()
{
  result = qword_1EAEEE020;
  if (!qword_1EAEEE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE020);
  }

  return result;
}

unint64_t sub_195F57C00()
{
  result = qword_1EAEEBED0;
  if (!qword_1EAEEBED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBED0);
  }

  return result;
}

unint64_t sub_195F57C58()
{
  result = qword_1EAEEBED8;
  if (!qword_1EAEEBED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBED8);
  }

  return result;
}

void sub_195F57CAC()
{
  if ((*(v0 + OBJC_IVAR____TtC14ChronoServices23StateCaptureInvalidator_invalidated) & 1) == 0)
  {
    v1 = OBJC_IVAR____TtC14ChronoServices23StateCaptureInvalidator_handle;
    if (*(v0 + OBJC_IVAR____TtC14ChronoServices23StateCaptureInvalidator_handle))
    {
      os_state_remove_handler();
      if (qword_1EAEEBF18 != -1)
      {
        swift_once();
      }

      v2 = off_1EAEEBF28;
      os_unfair_lock_lock(*(off_1EAEEBF28 + 2));
      if (qword_1EAEEBF00 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + v1);
      swift_beginAccess();
      v4 = sub_195F5A044(v3);
      swift_endAccess();

      os_unfair_lock_unlock(v2[2]);
    }
  }
}

char *sub_195F57EC4(uint64_t a1, void (*a2)(void *__return_ptr), uint64_t a3, uint64_t a4, unint64_t a5)
{
  (a2)(v33, a1);
  v7 = 0;
  result = sub_195F58494(v33);
  v10 = result;
  v11 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v11)
    {
      v12 = BYTE6(v9);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v11 != 2)
  {
    v12 = 0;
    goto LABEL_11;
  }

  v14 = *(result + 2);
  v13 = *(result + 3);
  v15 = __OFSUB__(v13, v14);
  v12 = v13 - v14;
  if (v15)
  {
    __break(1u);
LABEL_8:
    LODWORD(v12) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_60:
      __break(1u);
LABEL_61:
      swift_once();
LABEL_32:
      v27 = sub_195FA0678();
      __swift_project_value_buffer(v27, qword_1EAEF72D0);

      v19 = sub_195FA0658();
      v20 = sub_195FA0CA8();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v32[0] = v22;
        *v21 = 136446210;
        *(v21 + 4) = sub_195EBD554(a4, a5, v32);
        v23 = "[state-capture][%{public}s] cannot allocate memory for state data";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    v12 = v12;
  }

LABEL_11:
  v15 = __OFADD__(v12, 200);
  v16 = v12 + 200;
  if (v15)
  {
    __break(1u);
LABEL_57:
    swift_once();
LABEL_17:
    v18 = sub_195FA0678();
    __swift_project_value_buffer(v18, qword_1EAEF72D0);

    v19 = sub_195FA0658();
    v20 = sub_195FA0CA8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32[0] = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_195EBD554(a4, a5, v32);
      v23 = "[state-capture][%{public}s] cannot capture state data larger than 32KB";
LABEL_34:
      _os_log_impl(&dword_195EB2000, v19, v20, v23, v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x19A8C5B70](v22, -1, -1);
      MEMORY[0x19A8C5B70](v21, -1, -1);

      sub_195EC0890(v10, v7);
LABEL_36:
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      return 0;
    }

LABEL_35:
    sub_195EC0890(v10, v7);

    goto LABEL_36;
  }

  v7 = v9;
  if (v16 >= 0x8000)
  {
    if (qword_1EAEEBEC8 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

  if (v11 <= 1)
  {
    if (!v11)
    {
      v17 = BYTE6(v9);
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v11 != 2)
  {
    v17 = 0;
    goto LABEL_26;
  }

  v25 = *(result + 2);
  v24 = *(result + 3);
  v15 = __OFSUB__(v24, v25);
  v17 = v24 - v25;
  if (v15)
  {
    __break(1u);
LABEL_23:
    LODWORD(v17) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_63;
    }

    v17 = v17;
  }

LABEL_26:
  if (__OFADD__(v17, 200))
  {
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  result = calloc(v17 + 200, 1uLL);
  if (!result)
  {
    if (qword_1EAEEBEC8 == -1)
    {
      goto LABEL_32;
    }

    goto LABEL_61;
  }

  *result = 1;
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_46;
    }

    v29 = *(v10 + 2);
    v28 = *(v10 + 3);
    v15 = __OFSUB__(v28, v29);
    v26 = v28 - v29;
    if (!v15)
    {
      goto LABEL_43;
    }

    __break(1u);
LABEL_41:
    LODWORD(v26) = HIDWORD(v10) - v10;
    if (!__OFSUB__(HIDWORD(v10), v10))
    {
      v26 = v26;
LABEL_43:
      if ((v26 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(v26))
        {
          goto LABEL_47;
        }

        __break(1u);
LABEL_46:
        LODWORD(v26) = 0;
        goto LABEL_47;
      }

      goto LABEL_59;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v11)
  {
    goto LABEL_41;
  }

  LODWORD(v26) = BYTE6(v7);
LABEL_47:
  *(result + 1) = v26;
  v30 = result;
  v31 = sub_195FA0918();
  strlcpy(v30 + 136, (v31 + 32), 0x40uLL);

  if (v11 > 1)
  {
    if (v11 != 2 || !__OFSUB__(*(v10 + 3), *(v10 + 2)))
    {
      goto LABEL_55;
    }

    __break(1u);
  }

  else if (!v11)
  {
    goto LABEL_55;
  }

  if (!__OFSUB__(HIDWORD(v10), v10))
  {
LABEL_55:
    sub_195FA0508();
    sub_195EC0890(v10, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    return v30;
  }

LABEL_64:
  __break(1u);
  return result;
}

void *sub_195F58494(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7[0] = 0;
  v3 = [v2 dataWithPropertyList:sub_195FA12A8() format:200 options:0 error:v7];
  swift_unknownObjectRelease();
  v4 = v7[0];
  if (v3)
  {
    v5 = sub_195FA04D8();
  }

  else
  {
    v5 = v4;
    sub_195FA0328();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_195F585A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

uint64_t StateCaptureItem.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ChronoServices16StateCaptureItem_title);

  return v1;
}

uint64_t StateCaptureItem.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ChronoServices16StateCaptureItem_identifier);

  return v1;
}

uint64_t sub_195F58668(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC14ChronoServices16StateCaptureItem_captureHandler);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_195F586D4()
{
  v1 = (v0 + OBJC_IVAR____TtC14ChronoServices16StateCaptureItem_captureHandler);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_195F5872C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14ChronoServices16StateCaptureItem_captureHandler);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id StateCaptureItem.__deallocating_deinit()
{
  sub_195F588A4(v0 + OBJC_IVAR____TtC14ChronoServices16StateCaptureItem__invalidatable, v5);
  v1 = v6;
  if (v6)
  {
    v2 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v2 + 8))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    sub_195F2DB00(v5, &qword_1EAEEE048, &unk_195FAEE60);
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for StateCaptureItem();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_195F588A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE048, &unk_195FAEE60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_195F58AB8()
{
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v0 = off_1EAEEBF60;
  os_unfair_lock_lock(*(off_1EAEEBF60 + 2));
  swift_beginAccess();

  v2 = sub_195F370E0(v1);
  os_unfair_lock_unlock(v0[2]);
  return v2;
}

void sub_195F58B6C(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v9 = off_1EAEEBF60;
  os_unfair_lock_lock(*(off_1EAEEBF60 + 2));
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_195F5F4EC(v12, a2, a3, a4 & 1, v4, v10, v11);
  v13 = *(v9 + 2);

  os_unfair_lock_unlock(v13);
}

void sub_195F58C30(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v6 = off_1EAEEBF60;
  os_unfair_lock_lock(*(off_1EAEEBF60 + 2));
  sub_195F58F50(a1, a2, a3);
  v7 = *(v6 + 2);

  os_unfair_lock_unlock(v7);
}

void sub_195F58CCC(uint64_t a1, uint64_t a2)
{
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v4 = off_1EAEEBF60;
  os_unfair_lock_lock(*(off_1EAEEBF60 + 2));
  sub_195F5929C(a1, a2);
  v5 = *(v4 + 2);

  os_unfair_lock_unlock(v5);
}

uint64_t sub_195F58D58(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for UnfairLock();

  sub_195F52FAC(a1, a2, v6, a3, &off_1F0A53DA0);
}

uint64_t sub_195F58E28(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);

  return sub_195EC966C(v8, a2, a3, v3, v6, v7);
}

void sub_195F58E8C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v4 = off_1EAEEBF60;
  a2[3] = MEMORY[0x1E69E6158];
  os_unfair_lock_lock(v4[2]);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v9 = v8;
  os_unfair_lock_unlock(v4[2]);
  *a2 = v7;
  a2[1] = v9;
}

uint64_t sub_195F58F50(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (qword_1EAEEBF50 != -1)
  {
LABEL_20:
    swift_once();
  }

  os_unfair_lock_assert_owner(*(off_1EAEEBF60 + 2));
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_195EC966C(v10, a2, a3, v4, v8, *(v9 + 8));
  v11 = OBJC_IVAR____TtC14ChronoServices19StateCaptureService_subitemsByIdentifier;
  swift_beginAccess();
  v33 = v11;
  v12 = *(v4 + v11);
  if (*(v12 + 16))
  {

    v13 = sub_195EC7CCC(a2, a3);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = (*(v17 + 16))(v16, v17);
  v19 = 0;
  a1 = *(v18 + 16);
  v34 = v18 + 32;
  v35 = v18;
  while (1)
  {
    v20 = 0uLL;
    v21 = a1;
    v22 = 0uLL;
    v23 = 0uLL;
    if (v19 != a1)
    {
      if (v19 >= *(v35 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      v21 = (v19 + 1);
      *&v36 = v19;
      sub_195EC97E0(v34 + 40 * v19, &v36 + 8);
      v20 = v36;
      v22 = v37;
      v23 = v38;
    }

    v39[0] = v20;
    v39[1] = v22;
    v39[2] = v23;
    if (!v23)
    {
      break;
    }

    sub_195EB9104((v39 + 8), &v36);

    MEMORY[0x19A8C3F70](45, 0xE100000000000000);
    v24 = sub_195FA1288();
    MEMORY[0x19A8C3F70](v24);

    v26 = *(&v37 + 1);
    v25 = v38;
    v27 = __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
    sub_195EC966C(v27, a2, a3, v4, v26, v25);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_195EB6418(0, *(v15 + 2) + 1, 1, v15);
    }

    v29 = *(v15 + 2);
    v28 = *(v15 + 3);
    if (v29 >= v28 >> 1)
    {
      v15 = sub_195EB6418((v28 > 1), v29 + 1, 1, v15);
    }

    *(v15 + 2) = v29 + 1;
    v30 = &v15[16 * v29];
    *(v30 + 4) = a2;
    *(v30 + 5) = a3;
    __swift_destroy_boxed_opaque_existential_1Tm(&v36);
    v19 = v21;
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v36 = *(v4 + v33);
  *(v4 + v33) = 0x8000000000000000;
  sub_195F5D0C8(v15, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v33) = v36;
  return swift_endAccess();
}

uint64_t sub_195F5929C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  os_unfair_lock_assert_owner(*(off_1EAEEBF60 + 2));
  v6 = OBJC_IVAR____TtC14ChronoServices19StateCaptureService_itemsByIdentifier;
  swift_beginAccess();

  v7 = sub_195F5A0CC(a1, a2);
  swift_endAccess();

  v8 = OBJC_IVAR____TtC14ChronoServices19StateCaptureService_subitemsByIdentifier;
  result = swift_beginAccess();
  v10 = *(v3 + v8);
  if (*(v10 + 16))
  {

    v11 = sub_195EC7CCC(a1, a2);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = (v13 + 40);
        do
        {
          v17 = *(v15 - 1);
          v16 = *v15;
          swift_beginAccess();

          v18 = sub_195EC7CCC(v17, v16);
          if (v19)
          {
            v20 = v18;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v22 = *(v3 + v6);
            *(v3 + v6) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_195F5EB5C();
            }

            sub_195F5C218(v20, v22);
            *(v3 + v6) = v22;
          }

          swift_endAccess();

          v15 += 2;
          --v14;
        }

        while (v14);
      }

      swift_beginAccess();
      sub_195F5A164(a1, a2);
      swift_endAccess();
    }
  }

  return result;
}

void *sub_195F594E0(uint64_t a1, uint64_t a2)
{
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v5 = off_1EAEEBF60;
  os_unfair_lock_lock(*(off_1EAEEBF60 + 2));
  v6 = OBJC_IVAR____TtC14ChronoServices19StateCaptureService_itemsByIdentifier;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_195EC7CCC(a1, a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);
      v11 = v10;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock(v5[2]);
  return v10;
}

id sub_195F595CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v6 = off_1EAEEBF60;
  os_unfair_lock_lock(*(off_1EAEEBF60 + 2));
  v7 = OBJC_IVAR____TtC14ChronoServices19StateCaptureService_itemsByIdentifier;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (!*(v8 + 16))
  {
    goto LABEL_19;
  }

  v9 = sub_195EC7CCC(a1, a2);
  if ((v10 & 1) == 0)
  {

LABEL_19:
    v11 = 0;
    goto LABEL_20;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  v12 = OBJC_IVAR____TtC14ChronoServices19StateCaptureService_subitemsByIdentifier;
  swift_beginAccess();
  v13 = *(v3 + v12);
  if (!*(v13 + 16))
  {
LABEL_18:

    goto LABEL_19;
  }

  v14 = sub_195EC7CCC(a1, a2);
  if ((v15 & 1) == 0)
  {

    goto LABEL_18;
  }

  v16 = *(*(v13 + 56) + 8 * v14);

  v29 = MEMORY[0x1E69E7CC0];
  v17 = *(v16 + 16);
  if (v17)
  {
    v28 = v6;
    v18 = (v16 + 40);
    do
    {
      v19 = *(v3 + v7);
      if (*(v19 + 16))
      {
        v20 = *(v18 - 1);
        v21 = *v18;

        v22 = sub_195EC7CCC(v20, v21);
        v24 = v23;

        if (v24)
        {
          v25 = *(*(v19 + 56) + 8 * v22);

          v26 = v25;
          MEMORY[0x19A8C40E0]();
          if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_195FA0B58();
          }

          sub_195FA0B78();
        }

        else
        {
        }
      }

      v18 += 2;
      --v17;
    }

    while (v17);

    v6 = v28;
  }

  else
  {
  }

LABEL_20:
  os_unfair_lock_unlock(v6[2]);
  return v11;
}

id sub_195F59870(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_195F59904()
{
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v0 = off_1EAEEBF60;
  os_unfair_lock_lock(*(off_1EAEEBF60 + 2));
  swift_beginAccess();

  v2 = sub_195F370E0(v1);
  os_unfair_lock_unlock(v0[2]);
  return v2;
}

void sub_195F599B4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = *v6;
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v12 = off_1EAEEBF60;
  os_unfair_lock_lock(*(off_1EAEEBF60 + 2));
  v13 = a1[3];
  v14 = a1[4];
  v15 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_195F5F4EC(v15, a2, a3, a6 & 1, v11, v13, v14);
  v16 = *(v12 + 2);

  os_unfair_lock_unlock(v16);
}

void sub_195F59A7C(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v6 = off_1EAEEBF60;
  os_unfair_lock_lock(*(off_1EAEEBF60 + 2));
  sub_195F58F50(a1, a2, a3);
  v7 = *(v6 + 2);

  os_unfair_lock_unlock(v7);
}

void sub_195F59B1C(uint64_t a1, uint64_t a2)
{
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v4 = off_1EAEEBF60;
  os_unfair_lock_lock(*(off_1EAEEBF60 + 2));
  sub_195F5929C(a1, a2);
  v5 = *(v4 + 2);

  os_unfair_lock_unlock(v5);
}

uint64_t sub_195F59C0C(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);

  return sub_195EC966C(v9, a2, a3, v6, v7, v8);
}

unint64_t sub_195F59CBC(uint64_t a1)
{
  sub_195FA1398();
  type metadata accessor for CFString(0);
  sub_195EC6848(&qword_1EAEEBB68, type metadata accessor for CFString, &unk_195FAB318);
  sub_195FA0578();
  v2 = sub_195FA13E8();

  return sub_195F5DB80(a1, v2);
}

unint64_t sub_195F59D70(uint64_t a1)
{
  v2 = sub_195FA0D78();

  return sub_195F5DC8C(a1, v2);
}

unint64_t sub_195F59E54(uint64_t a1)
{
  sub_195FA08B8();
  sub_195FA1398();
  sub_195FA0958();
  v2 = sub_195FA13E8();

  return sub_195F5DE1C(a1, v2);
}

unint64_t sub_195F59EE8(uint64_t a1)
{
  sub_195FA1398();
  swift_beginAccess();
  sub_195FA0958();
  swift_beginAccess();
  v2 = *(a1 + 32);
  sub_195FA0D98();

  v3 = sub_195FA13E8();
  return sub_195F5DF20(a1, v3);
}

unint64_t sub_195F59F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_195FA1398();
  sub_195F37930(a1, a2, a3, a4);
  sub_195FA0958();

  v8 = sub_195FA13E8();

  return sub_195F5E0A8(a1, a2, a3, a4, v8);
}

uint64_t sub_195F5A044(uint64_t a1)
{
  v2 = v1;
  v3 = sub_195ECA0D8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_195F5EA00();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_195F5C0A8(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_195F5A0CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_195EC7CCC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_195F5EB5C();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_195F5C218(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_195F5A164(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_195EC7CCC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_195F5ECC8();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_195F5C218(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_195F5A24C(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = v4;
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) == 0)
  {
    v13 = a2;
    v12 = a3;
    v17 = sub_195F59EE8(a1);
    if (v18)
    {
      v7 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v5;
      v22 = *v5;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v16 = *(*(v20 + 56) + 8 * v7);
        sub_195F5C3C8(v7, v20);
        *v5 = v20;
        return v16;
      }

LABEL_14:
      sub_195F5EF94(v13, v12);
      v20 = v22;
      goto LABEL_10;
    }

    return 0;
  }

  if (v7 < 0)
  {
    v9 = *v5;
  }

  else
  {
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  v10 = sub_195FA1038();

  if (!v10)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v11 = sub_195FA0E88();
  v12 = a4(v9, v11);

  v13 = sub_195F59EE8(a1);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = *(v12[7] + 8 * v13);
  sub_195F5C3C8(v13, v12);

  *v5 = v12;
  return v16;
}

uint64_t sub_195F5A3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = sub_195EC7CCC(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_195F5F0E8();
      v10 = v14;
    }

    v11 = *(v10 + 56) + 32 * v8;
    v12 = *v11;
    v13 = *(v11 + 16);
    LOBYTE(v11) = *(v11 + 24);
    *a3 = v12;
    *(a3 + 16) = v13;
    *(a3 + 24) = v11;
    result = sub_195F5C5B8(v8, v10);
    *v4 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 24) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t sub_195F5A478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v8 = sub_195F59F90(a1, a2, a3, a4);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v5;
    v22 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_195F5F284(type metadata accessor for IconStore.FileVersionUpdateMigration, &unk_1EAEEE0D8, &qword_195FAEFF8, type metadata accessor for IconStore.FileVersionUpdateMigration);
      v12 = v22;
    }

    v13 = *(v12 + 56);
    updated = type metadata accessor for IconStore.FileVersionUpdateMigration(0);
    v21 = *(updated - 8);
    sub_195F5FE40(v13 + *(v21 + 72) * v10, a5, type metadata accessor for IconStore.FileVersionUpdateMigration);
    sub_195F5C774(v10, v12, type metadata accessor for IconStore.FileVersionUpdateMigration);
    *v6 = v12;
    v15 = *(v21 + 56);
    v16 = a5;
    v17 = 0;
    v18 = updated;
  }

  else
  {
    v19 = type metadata accessor for IconStore.FileVersionUpdateMigration(0);
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a5;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_195F5A63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v8 = sub_195F59F90(a1, a2, a3, a4);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v5;
    v22 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_195F5F284(type metadata accessor for IconStore.FileRenameMigration, &qword_1EAEEE0D0, &qword_195FAEFF0, type metadata accessor for IconStore.FileRenameMigration);
      v12 = v22;
    }

    v13 = *(v12 + 56);
    v14 = type metadata accessor for IconStore.FileRenameMigration(0);
    v21 = *(v14 - 8);
    sub_195F5FE40(v13 + *(v21 + 72) * v10, a5, type metadata accessor for IconStore.FileRenameMigration);
    sub_195F5C774(v10, v12, type metadata accessor for IconStore.FileRenameMigration);
    *v6 = v12;
    v15 = *(v21 + 56);
    v16 = a5;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = type metadata accessor for IconStore.FileRenameMigration(0);
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a5;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_195F5A800(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE110, &qword_195FAF040);
  result = sub_195FA1098();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_195F2E09C(v21, v31);
      }

      else
      {
        sub_195EBDAFC(v21, v31);
        v22 = v20;
      }

      sub_195FA1398();
      type metadata accessor for CFString(0);
      sub_195EC6848(&qword_1EAEEBB68, type metadata accessor for CFString, &unk_195FAB318);
      sub_195FA0578();
      result = sub_195FA13E8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_195F2E09C(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_195F5AAE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE0C8, &unk_195FAEFE0);
  result = sub_195FA1098();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        swift_unknownObjectRetain();
      }

      result = sub_195FA0D78();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_195F5AD64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED630, &qword_195FAC388);
  v36 = v4;
  result = sub_195FA1098();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      if ((v36 & 1) == 0)
      {
        v25 = v23;
        v26 = v21;
      }

      result = sub_195FA0D78();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v36)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_195F5AFE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE0F0, &unk_195FAF010);
  v37 = v4;
  result = sub_195FA1098();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 24 * v21);
      v25 = v24[1];
      v38 = *v24;
      v39 = *v22;
      v26 = v24[2];
      if ((v37 & 1) == 0)
      {
      }

      sub_195FA1398();
      sub_195FA0958();
      result = sub_195FA13E8();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v39;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v38;
      v17[1] = v25;
      v17[2] = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_195F5B2C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_195FA1098();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_195FA1398();
      sub_195FA0958();
      result = sub_195FA13E8();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_195F5B588(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v34 = v6;
  result = sub_195FA1098();
  v9 = result;
  if (*(v7 + 16))
  {
    v33 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v34 & 1) == 0)
      {
      }

      sub_195FA1398();
      swift_beginAccess();
      sub_195FA0958();
      swift_beginAccess();
      v24 = *(v22 + 32);
      sub_195FA0D98();

      result = sub_195FA13E8();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v5 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_195F5B858(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE0E8, &qword_195FAF008);
  v37 = v4;
  result = sub_195FA1098();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = *(v5 + 56) + 32 * v21;
      v25 = *(v24 + 8);
      v39 = *v24;
      v40 = *v22;
      v26 = *(v24 + 16);
      v38 = *(v24 + 24);
      if ((v37 & 1) == 0)
      {
        v27 = v26;
      }

      sub_195FA1398();
      sub_195FA0958();
      result = sub_195FA13E8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v39;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(v17 + 24) = v38;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_195F5BB30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v10 = v6;
  v11 = a2;
  v12 = a3(0);
  v67 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v60 - v13;
  v15 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v68 = v11;
  result = sub_195FA1098();
  v17 = result;
  if (*(v15 + 16))
  {
    v60 = v10;
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v15 + 64);
    v23 = (v20 + 63) >> 6;
    v24 = result + 64;
    v63 = xmmword_195FAC280;
    v62 = xmmword_195FAC070;
    v66 = a6;
    v64 = v14;
    v61 = v15;
    v65 = result;
    while (v22)
    {
      v30 = a6;
      v31 = __clz(__rbit64(v22));
      v71 = (v22 - 1) & v22;
LABEL_15:
      v34 = v31 | (v18 << 6);
      v35 = *(v15 + 56);
      v36 = (*(v15 + 48) + 32 * v34);
      v38 = *v36;
      v37 = v36[1];
      v39 = v36[2];
      v40 = v36[3];
      v70 = *(v67 + 72);
      v41 = v35 + v70 * v34;
      if (v68)
      {
        sub_195F5FE40(v41, v14, v30);
      }

      else
      {
        sub_195F5FEA8(v41, v14, v30);
      }

      sub_195FA1398();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
      inited = swift_initStackObject();
      v43 = inited;
      *(inited + 16) = v63;
      v72 = v38;
      v73 = v39;
      if (v40)
      {
        v44 = v39;
      }

      else
      {
        v44 = 0;
      }

      *(inited + 32) = v44;
      *(inited + 40) = v40;
      *(inited + 48) = v38;
      *(inited + 56) = v37;

      v69 = v37;

      sub_195EB6308(v43, &v75);
      v45 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
      v46 = swift_allocObject();
      *(v46 + 16) = v62;
      v74 = v45;
      v47 = sub_195EB5F80();
      v48 = sub_195EB6074(v47);
      v50 = v49;

      *(v46 + 32) = v48;
      *(v46 + 40) = v50;
      v74 = v46;

      sub_195EB6214(v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
      sub_195EB5F38(&qword_1EAEEC498, &qword_1EAEED8F0, &unk_195FACA00, MEMORY[0x1E69E6310]);
      sub_195FA0828();

      sub_195FA0958();

      result = sub_195FA13E8();
      v17 = v65;
      v52 = -1 << *(v65 + 32);
      v53 = result & ~v52;
      v54 = v53 >> 6;
      if (((-1 << v53) & ~*(v24 + 8 * (v53 >> 6))) == 0)
      {
        v55 = 0;
        v56 = (63 - v52) >> 6;
        a6 = v66;
        v14 = v64;
        v27 = v72;
        v26 = v73;
        while (++v54 != v56 || (v55 & 1) == 0)
        {
          v57 = v54 == v56;
          if (v54 == v56)
          {
            v54 = 0;
          }

          v55 |= v57;
          v58 = *(v24 + 8 * v54);
          if (v58 != -1)
          {
            v25 = __clz(__rbit64(~v58)) + (v54 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v53) & ~*(v24 + 8 * (v53 >> 6)))) | v53 & 0x7FFFFFFFFFFFFFC0;
      a6 = v66;
      v14 = v64;
      v27 = v72;
      v26 = v73;
LABEL_7:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v28 = (v17[6] + 32 * v25);
      v29 = v69;
      *v28 = v27;
      v28[1] = v29;
      v28[2] = v26;
      v28[3] = v40;
      result = sub_195F5FE40(v14, v17[7] + v70 * v25, a6);
      ++v17[2];
      v15 = v61;
      v22 = v71;
    }

    v32 = v18;
    while (1)
    {
      v18 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v18 >= v23)
      {
        break;
      }

      v33 = v19[v18];
      ++v32;
      if (v33)
      {
        v30 = a6;
        v31 = __clz(__rbit64(v33));
        v71 = (v33 - 1) & v33;
        goto LABEL_15;
      }
    }

    if ((v68 & 1) == 0)
    {

      v10 = v60;
      goto LABEL_37;
    }

    v59 = 1 << *(v15 + 32);
    v10 = v60;
    if (v59 >= 64)
    {
      bzero(v19, ((v59 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v59;
    }

    *(v15 + 16) = 0;
  }

LABEL_37:
  *v10 = v17;
  return result;
}

uint64_t sub_195F5C0A8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_195FA0E58() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_195FA1388();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_195F5C218(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_195FA0E58() + 1) & ~v5;
    do
    {
      sub_195FA1398();

      sub_195FA0958();
      v9 = sub_195FA13E8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_195F5C3C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_195FA0E58() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_195FA1398();
      swift_beginAccess();

      sub_195FA0958();
      swift_beginAccess();
      v10 = *(v9 + 32);
      sub_195FA0D98();

      v11 = sub_195FA13E8();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_195F5C5B8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_195FA0E58() + 1) & ~v5;
    do
    {
      sub_195FA1398();

      sub_195FA0958();
      v10 = sub_195FA13E8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (32 * v3 != 32 * v6 || (v3 = v6, v16 >= v17 + 2))
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}