char *PendingReminderTracker.init(eventStore:)(void *a1)
{
  v3 = OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_trackedEvents;
  *&v1[v3] = sub_2429A0180(MEMORY[0x277D84F90]);
  *&v1[OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_eventStore] = a1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for PendingReminderTracker();
  v4 = a1;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 defaultCenter];
  [v8 addObserver:v7 selector:sel_eventStoreDidChange_ name:*MEMORY[0x277CC5948] object:*&v7[OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_eventStore]];

  return v7;
}

unint64_t sub_2429A0180(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71F0, &qword_2429B8688);
    v3 = sub_2429B76D0();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 4);
      v11 = *(i - 1);
      v10 = *i;

      v12 = v7;
      v13 = v8;
      v14 = v11;
      result = sub_2429AE360(v5, v6);
      if (v16)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v3[6] + 16 * result);
      *v17 = v5;
      v17[1] = v6;
      v18 = v3[7] + 40 * result;
      *v18 = v12;
      *(v18 + 8) = v13;
      *(v18 + 16) = v9;
      *(v18 + 24) = v11;
      *(v18 + 32) = v10;
      v19 = v3[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v3[2] = v21;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_2429A0360(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer] = 0;
  swift_unknownObjectWeakAssign();
  v8 = [a4 impl];
  sub_2429B74E0();
  swift_unknownObjectRelease();
  type metadata accessor for PendingReminderTracker();
  swift_dynamicCast();
  *&v4[OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_changeTracker] = v12;
  *&v4[OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_eventStore] = a1;
  *&v4[OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_alertDisplayer] = a2;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for CUIKIReminderEditorImplementation();
  v9 = a1;
  swift_unknownObjectRetain();
  return objc_msgSendSuper2(&v11, sel_init);
}

void *CUIKITriggerReminderSync(uint64_t a1)
{
  result = [MEMORY[0x277CC5990] isReminderAppLocked];
  if ((result & 1) == 0)
  {

    return [_TtC21CalendarUIKitInternal24CUIKIReminderSyncTrigger triggerSyncWithWhy:a1];
  }

  return result;
}

uint64_t _s21CalendarUIKitInternal24CUIKIReminderSyncTriggerC07triggerE03whyySo0dE6ReasonV_tFZ_0(uint64_t a1)
{
  if (qword_28118FA48 != -1)
  {
    swift_once();
  }

  v2 = sub_2429B72D0();
  __swift_project_value_buffer(v2, qword_28118FA50);
  v3 = sub_2429B72B0();
  v4 = sub_2429B7490();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136446210;
    v7 = 0xEF64657461766974;
    v8 = 0x6361654420707041;
    v9 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E55;
    if (a1 == 1)
    {
      v10 = 0x6974634120707041;
      v9 = 0xED00006465746176;
    }

    if (a1 != 2)
    {
      v8 = v10;
      v7 = v9;
    }

    if (a1)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0x6E75614C20707041;
    }

    if (a1)
    {
      v12 = v7;
    }

    else
    {
      v12 = 0xEC00000064656863;
    }

    v13 = sub_2429A091C(v11, v12, &v21);

    *(v5 + 4) = v13;
    _os_log_impl(&dword_24299E000, v3, v4, "Requesting a reminders sync with reason %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x245D1DF70](v6, -1, -1);
    MEMORY[0x245D1DF70](v5, -1, -1);
  }

  v14 = sub_2429B7010();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 == 2)
  {
    v18 = MEMORY[0x277D45AE8];
  }

  else if (a1 == 1)
  {
    v18 = MEMORY[0x277D45AE0];
  }

  else if (a1)
  {
    *v17 = 0x6E776F6E6B6E75;
    v17[1] = 0xE700000000000000;
    v18 = MEMORY[0x277D45AF0];
  }

  else
  {
    v18 = MEMORY[0x277D45AD8];
  }

  (*(v15 + 104))(v17, *v18, v14);
  sub_2429B6F90();
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_2429A0808(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2429B72D0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2429B72C0();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2429A091C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2429A09E8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2429A0DD4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2429A09E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2429A0B68(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2429B7600();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2429A0AF4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD72A8, &qword_2429B8880);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_2429A0B68(uint64_t a1, unint64_t a2)
{
  v3 = sub_2429A0BB4(a1, a2);
  sub_2429A0CE8(&unk_2855313A0);
  return v3;
}

void *sub_2429A0BB4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2429A0AF4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2429B7600();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2429B7350();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2429A0AF4(v10, 0);
        result = sub_2429B75D0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2429A0CE8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2429B50BC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2429A0DD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

id sub_2429A0F00()
{
  v1 = [*v0 objectID];

  return v1;
}

uint64_t sub_2429A0F38()
{
  v1 = sub_2429B6DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, (v5 + 11) & 0xFFFFFFFFFFFFFFF8 | 4, v3 | 7);
}

uint64_t sub_2429A1040()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2429A1078()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2429A10D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_alertDisplayer;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_2429A1130()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD71D8, &qword_2429B8680);
  v2 = sub_2429B7410();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  (*(v3 + 8))(v0 + v5, v2);
  (*(v6 + 8))(v0 + v8, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_2429A1258()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD71D8, &qword_2429B8680);
  v1 = sub_2429B7410();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2429A1308()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2429A1340()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t static ReminderDragProvider.itemProviderWriter(for:)(void *a1)
{
  v2 = sub_2429B7000();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7010, &unk_2429B8350);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_2429A1DB0(a1, &v11 - v7);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_2429A234C(v8, &unk_27ECD7010, &unk_2429B8350);
    return 0;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v10 = sub_2429B7020();
    (*(v3 + 8))(v5, v2);
    return v10;
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2429A1DB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7080, &qword_2429B84F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7260, &unk_2429B83B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_2429B6E20();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 uniqueID];
  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = v14;
  sub_2429B7320();

  sub_2429B6E10();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2429A234C(v9, &qword_27ECD7260, &unk_2429B83B0);
LABEL_7:
    v18 = 1;
    goto LABEL_8;
  }

  (*(v11 + 32))(v13, v9, v10);
  v16 = sub_2429B6DF0();
  v17 = [objc_opt_self() objectIDWithURL_];

  if (!v17)
  {
    (*(v11 + 8))(v13, v10);
    goto LABEL_7;
  }

  EKEvent.recurrentReminderOccurrenceDate.getter(v6);
  sub_2429B6FF0();
  (*(v11 + 8))(v13, v10);
  v18 = 0;
LABEL_8:
  v19 = sub_2429B7000();
  return (*(*(v19 - 8) + 56))(a2, v18, 1, v19);
}

id ReminderDragProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReminderDragProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReminderDragProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ReminderDragProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReminderDragProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2429A234C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static ReminderColorDeserializer.deserialize(from:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2429B71F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2429A24D4(a1, a2);
  sub_2429B71D0();
  if (!v2)
  {
    v3 = sub_2429B71B0();
    (*(v7 + 8))(v9, v6);
  }

  return v3;
}

void sub_2429A24D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

id ReminderColorDeserializer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReminderColorDeserializer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReminderColorDeserializer();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ReminderColorDeserializer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReminderColorDeserializer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2429A27AC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void RemindersInCalendarEditingReminderProperties.init(event:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7260, &unk_2429B83B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7080, &qword_2429B84F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  sub_2429B7240();
  v8 = a1;
  v9 = [v8 title];
  if (v9)
  {
    v10 = v9;
    sub_2429B7320();
  }

  sub_2429B7230();
  v11 = [v8 notes];
  if (v11)
  {
    v12 = v11;
    sub_2429B7320();
  }

  sub_2429B7220();
  v13 = [v8 startDateComponents];
  if (v13)
  {
    v14 = v13;
    sub_2429B6D80();

    v15 = sub_2429B6DB0();
    (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  }

  else
  {
    v16 = sub_2429B6DB0();
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  }

  sub_2429B7200();
  v17 = [v8 URL];

  if (v17)
  {
    sub_2429B6E00();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = sub_2429B6E20();
  (*(*(v19 - 8) + 56))(v4, v18, 1, v19);
  sub_2429B7210();
}

id REMReminderChangeItem.cuiki_list.getter()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = [v0 listID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2429B74A0();
  v9[0] = 0;
  v4 = [v3 fetchListWithObjectID:v2 error:v9];

  v5 = v9[0];
  if (!v4)
  {
    v6 = v5;
    v7 = sub_2429B6DD0();

    swift_willThrow();
    return 0;
  }

  return v4;
}

id REMReminder.cuiki_list.getter()
{
  v1 = [v0 list];

  return v1;
}

uint64_t sub_2429A2BE8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_2429B7320();

  return v6;
}

uint64_t sub_2429A2C4C@<X0>(SEL *a1@<X2>, void (*a2)(void)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v8 = [*v4 *a1];
  if (v8)
  {
    v9 = v8;
    a2();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

uint64_t sub_2429A2D04()
{
  v1 = [*v0 recurrenceRules];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2429A565C(0, &qword_27ECD7108, 0x277D44738);
  v3 = sub_2429B7380();

  return v3;
}

id sub_2429A2D78()
{
  v1 = [*v0 list];

  return v1;
}

void EKEvent.update(from:updateDates:forSavingIntegrationEvent:)(void *a1, int a2, int a3)
{
  v4 = v3;
  v145 = a3;
  LODWORD(v146) = a2;
  v6 = sub_2429B6E20();
  v7 = *(v6 - 8);
  v147 = v6;
  v148 = v7;
  MEMORY[0x28223BE20](v6);
  v140 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_2429B6EF0();
  v129 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v125 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD70F0, &qword_2429B8410);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v126 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v134 = &v122 - v13;
  v141 = sub_2429B6E80();
  v138 = *(v141 - 8);
  v14 = MEMORY[0x28223BE20](v141);
  v122 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v130 = &v122 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v132 = &v122 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v124 = &v122 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v128 = &v122 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v127 = &v122 - v25;
  MEMORY[0x28223BE20](v24);
  v131 = &v122 - v26;
  v27 = sub_2429B6F20();
  MEMORY[0x28223BE20](v27 - 8);
  v28 = sub_2429B6E90();
  v137 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v122 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2429B6F00();
  v135 = *(v31 - 8);
  v136 = v31;
  MEMORY[0x28223BE20](v31);
  v144 = &v122 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7080, &qword_2429B84F0);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v122 - v34;
  v36 = sub_2429B6DB0();
  v37 = *(v36 - 8);
  v142 = v36;
  v143 = v37;
  v38 = MEMORY[0x28223BE20](v36);
  v123 = &v122 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v139 = &v122 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7260, &unk_2429B83B0);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v122 - v42;
  v44 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  (*(v45 + 8))(v44, v45);
  if (v46)
  {
    v47 = sub_2429B7310();

    [v3 setTitle_];
  }

  v48 = a1[3];
  v49 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v48);
  (*(v49 + 16))(v48, v49);
  if (v50)
  {
    v51 = sub_2429B7310();
  }

  else
  {
    v51 = 0;
  }

  [v4 setNotes_];

  v52 = a1[3];
  v53 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v52);
  (*(v53 + 24))(v52, v53);
  v55 = v147;
  v54 = v148;
  if ((*(v148 + 48))(v43, 1, v147) == 1)
  {
    v56 = 0;
  }

  else
  {
    v56 = sub_2429B6DF0();
    (*(v54 + 8))(v43, v55);
  }

  [v4 setURL_];

  if ((v146 & 1) == 0)
  {
    goto LABEL_37;
  }

  v57 = a1[3];
  v58 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v57);
  (*(v58 + 32))(v57, v58);
  v60 = v142;
  v59 = v143;
  if ((*(v143 + 48))(v35, 1, v142) != 1)
  {
    v61 = v139;
    (*(v59 + 32))(v139, v35, v60);
    v62 = v137;
    (*(v137 + 13))(v30, *MEMORY[0x277CC9830], v28);
    sub_2429B6EA0();
    (*(v62 + 1))(v30, v28);
    v63 = [v4 effectiveTimeZone];
    if (!v63)
    {
      __break(1u);
      return;
    }

    v64 = v63;
    sub_2429B6F10();

    sub_2429B6EE0();
    v65 = [v4 isAllDay];
    sub_2429B6DA0();
    v67 = v66;
    v68 = v138;
    if (v66)
    {
      v69 = [v4 startDate];
      if (v69)
      {
        LODWORD(v137) = v67;
        v70 = v127;
        v71 = v69;
        sub_2429B6E70();

        v72 = v68[4];
        v73 = v131;
        v74 = v141;
        (v72)(v131, v70, v141);
        v75 = [v4 endDateUnadjustedForLegacyClients];
        if (v75)
        {
          v76 = v75;
          sub_2429B6E70();

          v72();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7100, &qword_2429B8418);
          v77 = v129;
          v78 = (*(v129 + 80) + 32) & ~*(v129 + 80);
          v79 = swift_allocObject();
          *(v79 + 16) = xmmword_2429B8400;
          v80 = v133;
          (*(v77 + 104))(v79 + v78, *MEMORY[0x277CC9968], v133);
          sub_2429A4300(v79);
          swift_setDeallocating();
          (*(v77 + 8))(v79 + v78, v80);
          swift_deallocClassInstance();
          v81 = v132;
          sub_2429B6E50();
          v82 = v123;
          v83 = v131;
          sub_2429B6EB0();

          v84 = v68[1];
          v85 = v81;
          v86 = v141;
          v60 = v142;
          v84(v85, v141);
          v87 = sub_2429B6D90();
          LODWORD(v146) = v88;
          (*(v143 + 8))(v82, v60);
          v84(v128, v86);
          v84(v83, v86);
          if (v87 <= 1)
          {
            v89 = 1;
          }

          else
          {
            v89 = v87;
          }

          if (v146)
          {
            v89 = 1;
          }
        }

        else
        {
          (v68[1])(v73, v74);
          v89 = 1;
        }

        v146 = v89;
        v61 = v139;
        LOBYTE(v67) = v137;
      }

      else
      {
        v146 = 1;
      }
    }

    else
    {
      if ((v65 & 1) == 0)
      {
        [v4 duration];
      }

      v146 = 0;
    }

    [v4 setAllDay_];
    v90 = v134;
    sub_2429B6EC0();
    v91 = v68[6];
    v92 = v141;
    if (v91(v90, 1, v141) == 1)
    {
      (*(v135 + 8))(v144, v136);
      (*(v143 + 8))(v61, v60);
      sub_2429A234C(v90, &qword_27ECD70F0, &qword_2429B8410);
LABEL_36:
      v55 = v147;
      goto LABEL_37;
    }

    v93 = v68[4];
    v94 = v130;
    v93(v130, v90, v92);
    v95 = sub_2429B6E60();
    [v4 setStartDate_];

    if (v67)
    {
      v137 = v93;
      v96 = v129;
      v97 = v125;
      (*(v129 + 104))(v125, *MEMORY[0x277CC9968], v133);
      v98 = v126;
      sub_2429B6ED0();
      (*(v96 + 8))(v97, v133);
      v99 = v141;
      if (v91(v98, 1, v141) == 1)
      {
        (*(v138 + 8))(v94, v99);
        (*(v135 + 8))(v144, v136);
        (*(v143 + 8))(v139, v142);
        sub_2429A234C(v98, &qword_27ECD70F0, &qword_2429B8410);
        goto LABEL_36;
      }

      v105 = v122;
      v137(v122, v98, v99);
      v106 = v132;
      v107 = v99;
      sub_2429B6E50();
      v108 = sub_2429B6E60();
      v109 = *(v138 + 8);
      v109(v106, v107);
      [v4 setEndDateUnadjustedForLegacyClients_];

      v109(v105, v107);
      v109(v94, v107);
    }

    else
    {
      v100 = v132;
      sub_2429B6E50();
      v101 = sub_2429B6E60();
      v102 = v68[1];
      v103 = v100;
      v104 = v141;
      v102(v103, v141);
      [v4 setEndDateUnadjustedForLegacyClients_];

      v102(v94, v104);
    }

    (*(v135 + 8))(v144, v136);
    (*(v143 + 8))(v139, v142);
    goto LABEL_36;
  }

  sub_2429A234C(v35, &unk_27ECD7080, &qword_2429B84F0);
LABEL_37:
  v110 = a1[3];
  v111 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v110);
  v112 = (*(v111 + 40))(v110, v111);
  v113 = _sSo16EKRecurrenceRuleC21CalendarUIKitInternalE7convertySayABGSgSaySo013REMRecurrenceB0CGSgFZ_0(v112);

  if (v113)
  {
    sub_2429A565C(0, &qword_27ECD70F8, 0x277CC5AA8);
    v114 = sub_2429B7370();
  }

  else
  {
    v114 = 0;
  }

  [v4 setRecurrenceRules_];

  if (v145)
  {
    v115 = sub_2429A3DCC(a1);
    [v4 setColor_];

    v116 = a1[3];
    v117 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v116);
    v118 = (*(v117 + 56))(v116, v117);
    v119 = [v118 urlRepresentation];

    v120 = v140;
    sub_2429B6E00();

    sub_2429B6DE0();
    (*(v148 + 8))(v120, v55);
    v121 = sub_2429B7310();

    [v4 setUniqueID_];
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_2429A3DCC(void *a1)
{
  v2 = v1;
  v4 = sub_2429B6E20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = (*(v9 + 48))(v8, v9);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = [v10 objectID];
  v13 = [v12 urlRepresentation];

  sub_2429B6E00();
  sub_2429B6DE0();
  (*(v5 + 8))(v7, v4);
  result = [v2 eventStore];
  if (result)
  {
    v15 = result;
    v16 = *MEMORY[0x277CF7AA0];
    v17 = sub_2429B7310();
    v18 = [v15 colorWithProviderIdentifier:v16 externalIdentifier:v17];

    if (v18)
    {
    }

    else
    {
      v19 = sub_2429B71F0();
      v20 = *(v19 - 8);
      MEMORY[0x28223BE20](v19);
      v22 = v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = [v11 color];
      sub_2429B71E0();
      v24 = sub_2429B71C0();
      v30[0] = v30;
      v25 = v24;
      v27 = v26;
      v18 = [objc_allocWithZone(MEMORY[0x277CC5A00]) init];
      [v18 setProviderIdentifier_];
      v28 = sub_2429B7310();

      [v18 setExternalID_];

      v29 = sub_2429B6E30();
      [v18 setData_];

      sub_2429A27AC(v25, v27);
      (*(v20 + 8))(v22, v19);
    }

    return v18;
  }

  __break(1u);
  return result;
}

unint64_t static REMRecurrenceRule.convert(_:account:reminder:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v15 = MEMORY[0x277D84F90];
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v6 = sub_2429B7530();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (v6 != v7)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x245D1D8C0](v7, a1);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_21;
      }

      v9 = *(a1 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v12 = _sSo17REMRecurrenceRuleC21CalendarUIKitInternalE7convert_7account8reminderABSgSo012EKRecurrenceB0C_So11REMObjectIDCAKtFZ_0(v9, a2, a3);

    ++v7;
    if (v12)
    {
      MEMORY[0x245D1D630]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2429B73A0();
      }

      sub_2429B73C0();
      v8 = v15;
      v7 = v11;
    }
  }

  if (v8 >> 62)
  {
    if (sub_2429B7530())
    {
      return v8;
    }

    goto LABEL_17;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:

    return 0;
  }

  return v8;
}

uint64_t sub_2429A4300(uint64_t a1)
{
  v2 = sub_2429B6EF0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7128, &qword_2429B8488);
    v9 = sub_2429B75C0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_2429A56A4(&qword_27ECD7130, MEMORY[0x277CC99D8]);
      v16 = sub_2429B72F0();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_2429A56A4(&qword_27ECD7138, MEMORY[0x277CC99E0]);
          v23 = sub_2429B7300();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t _sSo16EKRecurrenceRuleC21CalendarUIKitInternalE7convertyABSgSo013REMRecurrenceB0CFZ_0(void *a1)
{
  v2 = sub_2429B6E80();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v44 - v7;
  v9 = [a1 frequency];
  result = 0;
  if (v9 <= 3)
  {
    v47 = v9;
    v46 = [a1 interval];
    v11 = [a1 daysOfTheWeek];
    if (v11)
    {
      v12 = v11;
      sub_2429A565C(0, &qword_27ECD7118, 0x277D44720);
      v13 = sub_2429B7380();
    }

    else
    {
      v13 = 0;
    }

    v44 = sub_2429A4DD0(v13, 0x277CC5A88);

    v14 = [a1 daysOfTheMonth];
    if (v14)
    {
      v15 = v14;
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v45 = sub_2429B7380();
    }

    else
    {
      v45 = 0;
    }

    v16 = [a1 monthsOfTheYear];
    if (v16)
    {
      v17 = v16;
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v18 = sub_2429B7380();
    }

    else
    {
      v18 = 0;
    }

    v19 = [a1 weeksOfTheYear];
    if (v19)
    {
      v20 = v19;
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v21 = sub_2429B7380();
    }

    else
    {
      v21 = 0;
    }

    v22 = [a1 daysOfTheYear];
    if (v22)
    {
      v23 = v22;
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v24 = sub_2429B7380();
    }

    else
    {
      v24 = 0;
    }

    v25 = [a1 setPositions];
    if (v25)
    {
      v26 = v25;
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v27 = sub_2429B7380();
    }

    else
    {
      v27 = 0;
    }

    v28 = [a1 recurrenceEnd];
    if (v28)
    {
      v29 = v28;
      v30 = [v29 endDate];
      if (v30)
      {
        v31 = v30;
        sub_2429B6E70();

        (*(v3 + 32))(v8, v6, v2);
        v32 = objc_allocWithZone(MEMORY[0x277CC5A90]);
        v33 = sub_2429B6E60();
        v34 = [v32 initWithEndDate_];

        (*(v3 + 8))(v8, v2);
        v35 = objc_allocWithZone(MEMORY[0x277CC5AA8]);
        if (v44)
        {
          v36 = v45;
LABEL_28:
          sub_2429A565C(0, &qword_27ECD7120, 0x277CC5A88);
          v37 = sub_2429B7370();

          goto LABEL_29;
        }

        v37 = 0;
        v36 = v45;
      }

      else
      {
        result = [v29 occurrenceCount];
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
          return result;
        }

        v34 = [objc_allocWithZone(MEMORY[0x277CC5A90]) initWithOccurrenceCount_];

        v35 = objc_allocWithZone(MEMORY[0x277CC5AA8]);
        v36 = v45;
        if (v44)
        {
          goto LABEL_28;
        }

        v37 = 0;
      }
    }

    else
    {
      v35 = objc_allocWithZone(MEMORY[0x277CC5AA8]);
      v34 = 0;
      v37 = 0;
      v36 = v45;
      if (v44)
      {
        goto LABEL_28;
      }
    }

LABEL_29:
    if (v36)
    {
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v38 = sub_2429B7370();

      if (v18)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v38 = 0;
      if (v18)
      {
LABEL_31:
        sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
        v39 = sub_2429B7370();

        if (v21)
        {
          goto LABEL_32;
        }

        goto LABEL_37;
      }
    }

    v39 = 0;
    if (v21)
    {
LABEL_32:
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v40 = sub_2429B7370();

      if (v24)
      {
        goto LABEL_33;
      }

      goto LABEL_38;
    }

LABEL_37:
    v40 = 0;
    if (v24)
    {
LABEL_33:
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v41 = sub_2429B7370();

      if (v27)
      {
LABEL_34:
        sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
        v42 = sub_2429B7370();

LABEL_40:
        v43 = [v35 initRecurrenceWithFrequency:v47 interval:v46 daysOfTheWeek:v37 daysOfTheMonth:v38 monthsOfTheYear:v39 weeksOfTheYear:v40 daysOfTheYear:v41 setPositions:v42 end:v34];

        return v43;
      }

LABEL_39:
      v42 = 0;
      goto LABEL_40;
    }

LABEL_38:
    v41 = 0;
    if (v27)
    {
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  return result;
}

unint64_t _sSo16EKRecurrenceRuleC21CalendarUIKitInternalE7convertySayABGSgSaySo013REMRecurrenceB0CGSgFZ_0(unint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v11 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v3 = sub_2429B7530();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x245D1D8C0](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_21;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v9 = _sSo16EKRecurrenceRuleC21CalendarUIKitInternalE7convertyABSgSo013REMRecurrenceB0CFZ_0(v6);

    ++v4;
    if (v9)
    {
      MEMORY[0x245D1D630]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2429B73A0();
      }

      sub_2429B73C0();
      v5 = v11;
      v4 = v8;
    }
  }

  if (v5 >> 62)
  {
    if (sub_2429B7530())
    {
      return v5;
    }

    goto LABEL_17;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:

    return 0;
  }

  return v5;
}

unint64_t sub_2429A4DD0(unint64_t result, Class *a2)
{
  if (result)
  {
    v3 = result;
    v4 = result >> 62 ? sub_2429B7530() : *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    result = MEMORY[0x277D84F90];
    if (v4)
    {
      v10 = MEMORY[0x277D84F90];
      result = sub_2429B7630();
      if (v4 < 0)
      {
        __break(1u);
      }

      else
      {
        v5 = 0;
        do
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x245D1D8C0](v5, v3);
          }

          else
          {
            v6 = *(v3 + 8 * v5 + 32);
          }

          v7 = v6;
          v8 = [v6 dayOfTheWeek];
          if ((v8 - 1) >= 7)
          {
            v9 = 7;
          }

          else
          {
            v9 = v8;
          }

          ++v5;
          [objc_allocWithZone(*a2) initWithDayOfTheWeek:v9 weekNumber:{objc_msgSend(v7, sel_weekNumber)}];

          sub_2429B7610();
          sub_2429B7640();
          sub_2429B7650();
          sub_2429B7620();
        }

        while (v4 != v5);
        return v10;
      }
    }
  }

  return result;
}

unint64_t _sSo17REMRecurrenceRuleC21CalendarUIKitInternalE7convert_7account8reminderABSgSo012EKRecurrenceB0C_So11REMObjectIDCAKtFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2429B6E80();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v48 - v11;
  v13 = [a1 frequency];
  result = 0;
  if (v13 <= 3)
  {
    v53 = v13;
    v54 = a2;
    v55 = a3;
    v52 = [objc_opt_self() newObjectID];
    v51 = [a1 interval];
    v50 = [a1 firstDayOfTheWeek];
    v15 = [a1 daysOfTheWeek];
    if (v15)
    {
      v16 = v15;
      sub_2429A565C(0, &qword_27ECD7120, 0x277CC5A88);
      v17 = sub_2429B7380();
    }

    else
    {
      v17 = 0;
    }

    v48 = sub_2429A4DD0(v17, 0x277D44720);

    v18 = [a1 daysOfTheMonth];
    if (v18)
    {
      v19 = v18;
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v49 = sub_2429B7380();
    }

    else
    {
      v49 = 0;
    }

    v20 = [a1 monthsOfTheYear];
    if (v20)
    {
      v21 = v20;
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v22 = sub_2429B7380();
    }

    else
    {
      v22 = 0;
    }

    v23 = [a1 weeksOfTheYear];
    if (v23)
    {
      v24 = v23;
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v25 = sub_2429B7380();
    }

    else
    {
      v25 = 0;
    }

    v26 = [a1 daysOfTheYear];
    if (v26)
    {
      v27 = v26;
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v28 = sub_2429B7380();
    }

    else
    {
      v28 = 0;
    }

    v29 = [a1 setPositions];
    if (v29)
    {
      v30 = v29;
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v31 = sub_2429B7380();
    }

    else
    {
      v31 = 0;
    }

    v32 = [a1 recurrenceEnd];
    if (v32)
    {
      v33 = v32;
      v34 = [v33 endDate];
      if (v34)
      {
        v35 = v34;
        sub_2429B6E70();

        (*(v7 + 32))(v12, v10, v6);
        v36 = sub_2429B6E60();
        v37 = [objc_opt_self() recurrenceEndWithEndDate_];

        (*(v7 + 8))(v12, v6);
        v38 = objc_allocWithZone(MEMORY[0x277D44738]);
        if (v48)
        {
          v39 = v49;
LABEL_28:
          sub_2429A565C(0, &qword_27ECD7118, 0x277D44720);
          v40 = sub_2429B7370();

          goto LABEL_29;
        }

        v40 = 0;
        v39 = v49;
      }

      else
      {
        result = [v33 occurrenceCount];
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
          return result;
        }

        v37 = [objc_opt_self() recurrenceEndWithOccurrenceCount_];

        v38 = objc_allocWithZone(MEMORY[0x277D44738]);
        v39 = v49;
        if (v48)
        {
          goto LABEL_28;
        }

        v40 = 0;
      }
    }

    else
    {
      v38 = objc_allocWithZone(MEMORY[0x277D44738]);
      v37 = 0;
      v40 = 0;
      v39 = v49;
      if (v48)
      {
        goto LABEL_28;
      }
    }

LABEL_29:
    if (v39)
    {
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v41 = sub_2429B7370();

      if (v22)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v41 = 0;
      if (v22)
      {
LABEL_31:
        sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
        v42 = sub_2429B7370();

        if (v25)
        {
          goto LABEL_32;
        }

        goto LABEL_37;
      }
    }

    v42 = 0;
    if (v25)
    {
LABEL_32:
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v43 = sub_2429B7370();

      if (v28)
      {
        goto LABEL_33;
      }

      goto LABEL_38;
    }

LABEL_37:
    v43 = 0;
    if (v28)
    {
LABEL_33:
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v44 = sub_2429B7370();

      if (v31)
      {
LABEL_34:
        sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
        v45 = sub_2429B7370();

LABEL_40:
        v46 = v52;
        v47 = [v38 initRecurrenceRuleWithObjectID:v52 accountID:v54 reminderID:v55 frequency:v53 interval:v51 firstDayOfTheWeek:v50 daysOfTheWeek:v40 daysOfTheMonth:v41 monthsOfTheYear:v42 weeksOfTheYear:v43 daysOfTheYear:v44 setPositions:v45 end:v37];

        return v47;
      }

LABEL_39:
      v45 = 0;
      goto LABEL_40;
    }

LABEL_38:
    v44 = 0;
    if (v31)
    {
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  return result;
}

uint64_t sub_2429A565C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2429A56A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2429B6EF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t EKEvent.recurrentReminderOccurrenceDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7080, &qword_2429B84F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  if ([v2 hasRecurrenceRules])
  {
LABEL_4:
    v8 = [v2 startDateComponents];
    if (v8)
    {
      v9 = v8;
      sub_2429B6D80();

      v10 = sub_2429B6DB0();
      (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    }

    else
    {
      v11 = sub_2429B6DB0();
      (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    }

    return sub_2429A58B4(v6, a1);
  }

  v7 = [v2 masterEvent];
  if (v7)
  {

    goto LABEL_4;
  }

  v13 = sub_2429B6DB0();
  v14 = *(*(v13 - 8) + 56);

  return v14(a1, 1, 1, v13);
}

uint64_t sub_2429A58B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7080, &qword_2429B84F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2429A5924(void *a1)
{
  v2 = sub_2429B6D40();
  MEMORY[0x28223BE20](v2);
  v3 = sub_2429B7270();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7140, &qword_2429B84A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v13 - v8;
  sub_2429A5BE4(a1, v13 - v8);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_2429A234C(v9, &qword_27ECD7140, &qword_2429B84A0);
    return 0;
  }

  else
  {
    v11 = (*(v4 + 32))(v13 - v6, v9, v3);
    MEMORY[0x28223BE20](v11);
    (*(v4 + 16))(v13 - v6, v13 - v6, v3);
    v13[1] = MEMORY[0x277D84F90];
    sub_2429A5F3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7150, &qword_2429B84A8);
    sub_2429A5F94();
    sub_2429B74F0();
    sub_2429B7280();
    objc_allocWithZone(sub_2429B6F40());
    sub_2429A6040();
    v12 = sub_2429B6F30();
    (*(v4 + 8))(v13 - v6, v3);
    return v12;
  }
}

uint64_t sub_2429A5BE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7260, &unk_2429B83B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_2429B6E20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 uniqueID];
  if (v11)
  {
    v12 = v11;
    sub_2429B7320();

    sub_2429B6E10();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_2429A234C(v6, &qword_27ECD7260, &unk_2429B83B0);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      v13 = sub_2429B6DF0();
      v14 = [objc_opt_self() objectIDWithURL_];

      (*(v8 + 8))(v10, v7);
      if (v14)
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7168, &qword_2429B84E8);
        v16 = *(*(v15 - 8) + 64);
        MEMORY[0x28223BE20](v15 - 8);
        v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
        v18 = sub_2429A645C(a1, &v22 - v17);
        MEMORY[0x28223BE20](v18);
        sub_2429A67CC(&v22 - v17, &v22 - v17);
        sub_2429B7250();
        sub_2429A234C(&v22 - v17, &qword_27ECD7168, &qword_2429B84E8);
        v19 = sub_2429B7270();
        return (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
      }
    }
  }

  v21 = sub_2429B7270();
  return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
}

unint64_t sub_2429A5F3C()
{
  result = qword_27ECD7148;
  if (!qword_27ECD7148)
  {
    sub_2429B6D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD7148);
  }

  return result;
}

unint64_t sub_2429A5F94()
{
  result = qword_27ECD7158;
  if (!qword_27ECD7158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD7150, &qword_2429B84A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD7158);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2429A6040()
{
  result = qword_27ECD7160;
  if (!qword_27ECD7160)
  {
    sub_2429B7280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD7160);
  }

  return result;
}

uint64_t sub_2429A60DC(void *a1)
{
  v2 = sub_2429B7270();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7140, &qword_2429B84A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_2429A5BE4(a1, &v11 - v7);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_2429A234C(v8, &qword_27ECD7140, &qword_2429B84A0);
    return 0;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v10 = sub_2429B7260();
    (*(v3 + 8))(v5, v2);
    return v10;
  }
}

uint64_t sub_2429A645C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7080, &qword_2429B84F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_2429B6DB0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  EKEvent.recurrentReminderOccurrenceDate.getter(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2429A234C(v6, &unk_27ECD7080, &qword_2429B84F0);
    v14 = 1;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v11, v13, v7);
    [a1 CUIK_reminderShouldBeEditable];
    sub_2429B7290();
    (*(v8 + 8))(v13, v7);
    v14 = 0;
  }

  v15 = sub_2429B72A0();
  return (*(*(v15 - 8) + 56))(a2, v14, 1, v15);
}

id ReminderEntityAnnotation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReminderEntityAnnotation.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReminderEntityAnnotation();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ReminderEntityAnnotation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReminderEntityAnnotation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2429A67CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7168, &qword_2429B84E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id CUIKIReminderSyncTrigger.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CUIKIReminderSyncTrigger.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CUIKIReminderSyncTrigger();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CUIKIReminderSyncTrigger.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CUIKIReminderSyncTrigger();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2429A6940(uint64_t a1)
{
  v2 = sub_2429B7120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  (*(v3 + 16))(&v8 - v4, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (!MEMORY[0x277D45B28] || v6 != *MEMORY[0x277D45B28])
  {
    if (MEMORY[0x277D45B20] && v6 == *MEMORY[0x277D45B20])
    {
      return 1;
    }

    if (MEMORY[0x277D45B18] && v6 == *MEMORY[0x277D45B18])
    {
      return 2;
    }

    (*(v3 + 8))(v5, v2);
  }

  return 0;
}

uint64_t sub_2429A6A90()
{
  result = sub_2429B7310();
  qword_27ECD7170 = result;
  return result;
}

uint64_t sub_2429A6AEC()
{
  result = sub_2429B7310();
  qword_27ECD7178 = result;
  return result;
}

id sub_2429A6B48(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

id CUIKIReminderEditorImplementation.__allocating_init(eventStore:alertDisplayer:undoManager:changeTracker:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  *&v10[OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer] = 0;
  swift_unknownObjectWeakAssign();
  v11 = [a4 impl];
  sub_2429B74E0();
  swift_unknownObjectRelease();
  type metadata accessor for PendingReminderTracker();
  swift_dynamicCast();
  *&v10[OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_changeTracker] = v16;
  *&v10[OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_eventStore] = a1;
  *&v10[OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_alertDisplayer] = a2;
  v15.receiver = v10;
  v15.super_class = v5;
  v12 = a1;
  swift_unknownObjectRetain();
  v13 = objc_msgSendSuper2(&v15, sel_init);

  swift_unknownObjectRelease();
  return v13;
}

id CUIKIReminderEditorImplementation.init(eventStore:alertDisplayer:undoManager:changeTracker:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_2429A0360(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_2429A6E7C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_alertDisplayer;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRelease();
  *(v1 + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer) = 0;
}

uint64_t sub_2429A6EE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_alertDisplayer;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v3 + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer) = 0;
}

uint64_t (*sub_2429A6F64(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2429A6FC8;
}

uint64_t sub_2429A6FC8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(*(a1 + 24) + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer) = 0;
  }

  return result;
}

uint64_t sub_2429A7024()
{
  v1 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer;
  if (*(v0 + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer);
  }

  else
  {
    v3 = sub_2429B7110();
    v4 = *(v3 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x28223BE20](v3);
    v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
    sub_2429B7100();
    v7 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_alertDisplayer;
    swift_beginAccess();
    v8 = *(v0 + v7);
    v14 = &type metadata for CUIKIReminderEditorImplementation.AlertDisplayerAdapter;
    v15 = sub_2429B1038();
    v13 = v8;
    swift_unknownObjectRetain();
    v9 = v0;
    v10 = sub_2429B70F0();
    MEMORY[0x28223BE20](v10);
    (*(v4 + 16))(&v12[-v6], &v12[-v6], v3);
    sub_2429B6FE0();
    swift_allocObject();
    v2 = sub_2429B6FA0();
    (*(v4 + 8))(&v12[-v6], v3);
    *(v9 + v1) = v2;
  }

  return v2;
}

uint64_t sub_2429A7200(unint64_t a1)
{
  v130 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71A8, &qword_2429B8570);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v110 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v122 = &v94 - v5;
  v121 = sub_2429B6DB0();
  v111 = *(v121 - 8);
  v6 = *(v111 + 64);
  v7 = MEMORY[0x28223BE20](v121);
  v118 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v123 = &v94 - v8;
  v9 = MEMORY[0x277D84F90];
  v129[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2429B7530())
  {
    v117 = v6;
    v11 = 0;
    v12 = a1 & 0xC000000000000001;
    v13 = a1 & 0xFFFFFFFFFFFFFF8;
    v124 = *MEMORY[0x277CF7228];
    v14 = &selRef_setData_;
    v119 = a1;
    do
    {
      if (v12)
      {
        v15 = MEMORY[0x245D1D8C0](v11, a1);
      }

      else
      {
        if (v11 >= *(v13 + 16))
        {
          goto LABEL_40;
        }

        v15 = *(a1 + 8 * v11 + 32);
      }

      v6 = v15;
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v17 = sub_2429B0B00(v15);
      if (v17 && (v17, ([v6 v14[5]] & 1) != 0) && (objc_msgSend(v6, sel_completed) & 1) != 0)
      {
        sub_2429B7610();
        sub_2429B7640();
        v14 = &selRef_setData_;
        sub_2429B7650();
        sub_2429B7620();
        a1 = v119;
      }

      else
      {
      }

      ++v11;
    }

    while (v16 != i);
    v18 = 0;
    v95 = v129[0];
    v129[0] = v9;
    while (1)
    {
      if (v12)
      {
        v19 = MEMORY[0x245D1D8C0](v18, a1);
      }

      else
      {
        if (v18 >= *(v13 + 16))
        {
          goto LABEL_42;
        }

        v19 = *(a1 + 8 * v18 + 32);
      }

      v6 = v19;
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v21 = sub_2429B0B00(v19);
      if (v21 && (v21, ([v6 v14[5]] & 1) != 0) && !objc_msgSend(v6, sel_completed))
      {
        sub_2429B7610();
        sub_2429B7640();
        v14 = &selRef_setData_;
        sub_2429B7650();
        sub_2429B7620();
        a1 = v119;
      }

      else
      {
      }

      ++v18;
      if (v20 == i)
      {
        v6 = 0;
        v94 = v129[0];
        v129[0] = v9;
        v22 = *MEMORY[0x277CF7288];
        while (1)
        {
          if (v12)
          {
            v23 = MEMORY[0x245D1D8C0](v6, a1);
          }

          else
          {
            if (v6 >= *(v13 + 16))
            {
              goto LABEL_44;
            }

            v23 = *(a1 + 8 * v6 + 32);
          }

          v24 = v23;
          v9 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
            goto LABEL_43;
          }

          if ([v23 v14[5]])
          {
            sub_2429B7610();
            sub_2429B7640();
            v14 = &selRef_setData_;
            sub_2429B7650();
            sub_2429B7620();
            a1 = v119;
          }

          else
          {
          }

          ++v6;
          if (v9 == i)
          {
            v25 = v129[0];
            v6 = v117;
            if ((v129[0] & 0x8000000000000000) == 0)
            {
              goto LABEL_47;
            }

            goto LABEL_87;
          }
        }
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  v25 = MEMORY[0x277D84F90];
  v95 = MEMORY[0x277D84F90];
  v94 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
  {
LABEL_47:
    if ((v25 & 0x4000000000000000) == 0)
    {
      v26 = *(v25 + 16);
      if (v26)
      {
        goto LABEL_49;
      }

      goto LABEL_88;
    }
  }

LABEL_87:
  while (1)
  {
    v26 = sub_2429B7530();
    if (!v26)
    {
      break;
    }

LABEL_49:
    v109 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_eventStore;
    v99 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_changeTracker;
    v107 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer;
    v27 = v25 & 0xC000000000000001;
    v97 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_alertDisplayer;
    swift_beginAccess();
    v28 = 0;
    v106 = v111 + 16;
    v105 = (v6 + 7);
    v104 = v111 + 32;
    v103 = (v111 + 8);
    *(&v29 + 1) = 3;
    v98 = xmmword_2429B8550;
    *&v29 = 138412290;
    v96 = v29;
    v102 = v25;
    v101 = v25 & 0xC000000000000001;
    v108 = v26;
    while (1)
    {
      if (v27)
      {
        v30 = MEMORY[0x245D1D8C0](v28, v25);
      }

      else
      {
        if (v28 >= *(v25 + 16))
        {
          goto LABEL_86;
        }

        v30 = *(v25 + 8 * v28 + 32);
      }

      v31 = v30;
      v32 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v33 = sub_2429B0B00(v30);
      if (v33)
      {
        v34 = v33;
        v35 = [v31 startDateComponents];
        if (v35)
        {
          v36 = v35;
          sub_2429B6D80();

          v37 = [v31 sequenceNumber];
          v38 = v120;
          v39 = *&v120[v109];
          v40 = sub_2429B74B0();
          v129[0] = 0;
          v41 = [v39 saveEvent:v31 span:v40 commit:0 error:v129];
          v119 = v28 + 1;
          v124 = v34;
          LODWORD(v117) = v37;
          if (v41)
          {
            v42 = *&v38[v99];
            v43 = v129[0];
            sub_2429B2AC8(v31, v37, 1, v42);
            v44 = [v31 objectID];
            if (!v44)
            {
              __break(1u);
            }

            v45 = v44;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71C0, &qword_2429B85A0);
            v46 = swift_allocObject();
            *(v46 + 16) = v98;
            *(v46 + 32) = v45;
            v47 = v45;
            sub_2429B3FB8(v46);

            v48 = v107;
          }

          else
          {
            v54 = v129[0];
            v55 = sub_2429B6DD0();

            swift_willThrow();
            if (qword_28118FA48 != -1)
            {
              swift_once();
            }

            v100 = 0;
            v56 = sub_2429B72D0();
            __swift_project_value_buffer(v56, qword_28118FA50);
            v57 = v55;
            v58 = sub_2429B72B0();
            v59 = sub_2429B7480();

            if (os_log_type_enabled(v58, v59))
            {
              v60 = swift_slowAlloc();
              v61 = v28;
              v62 = swift_slowAlloc();
              *v60 = v96;
              v63 = v55;
              v64 = _swift_stdlib_bridgeErrorToNSError();
              *(v60 + 4) = v64;
              *v62 = v64;
              _os_log_impl(&dword_24299E000, v58, v59, "Error saving integration event: %@", v60, 0xCu);
              sub_2429A234C(v62, &qword_27ECD71B8, &qword_2429B8598);
              v65 = v62;
              v28 = v61;
              MEMORY[0x245D1DF70](v65, -1, -1);
              MEMORY[0x245D1DF70](v60, -1, -1);
            }

            else
            {
            }

            v48 = v107;
            v38 = v120;
          }

          v116 = v28;
          if (*&v38[v48])
          {
            v66 = *&v38[v48];
          }

          else
          {
            v67 = sub_2429B7110();
            v115 = &v94;
            v68 = *(v67 - 8);
            v69 = *(v68 + 64);
            MEMORY[0x28223BE20](v67);
            v70 = &v94 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_2429B7100();
            v71 = *&v120[v97];
            v129[3] = &type metadata for CUIKIReminderEditorImplementation.AlertDisplayerAdapter;
            v129[4] = sub_2429B1038();
            v129[0] = v71;
            swift_unknownObjectRetain();
            v72 = sub_2429B70F0();
            MEMORY[0x28223BE20](v72);
            v38 = v120;
            (*(v68 + 16))(v70, v70, v67);
            sub_2429B6FE0();
            swift_allocObject();
            v73 = sub_2429B6FA0();
            (*(v68 + 8))(v70, v67);
            *&v38[v48] = v73;
            v66 = v73;
          }

          v114 = sub_2429B7450();
          v115 = *(v114 - 8);
          (v115[7])(v122, 1, 1, v114);
          v74 = v111;
          (*(v111 + 16))(v118, v123, v121);
          sub_2429B7430();

          v113 = v38;
          v75 = v124;

          v112 = v31;
          v76 = sub_2429B7420();
          v77 = (*(v74 + 80) + 48) & ~*(v74 + 80);
          v78 = &v105[v77] & 0xFFFFFFFFFFFFFFF8;
          v79 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
          v80 = (v79 + 11) & 0xFFFFFFFFFFFFFFF8;
          v81 = swift_allocObject();
          *(v81 + 2) = v76;
          v82 = v113;
          *(v81 + 3) = MEMORY[0x277D85700];
          *(v81 + 4) = v82;
          v124 = v75;
          *(v81 + 5) = v75;
          v83 = v115;
          (*(v74 + 32))(&v81[v77], v118, v121);
          *&v81[v78] = v66;
          v84 = v112;
          *&v81[v79] = v112;
          v85 = v114;
          *&v81[v80] = v117;
          v86 = v110;
          sub_2429B1D18(v122, v110, &qword_27ECD71A8, &qword_2429B8570);
          v87 = (v83[6])(v86, 1, v85);

          if (v87 == 1)
          {
            sub_2429A234C(v86, &qword_27ECD71A8, &qword_2429B8570);
          }

          else
          {
            sub_2429B7440();
            (v83[1])(v86, v85);
          }

          v25 = v102;
          v27 = v101;
          v88 = *(v81 + 2);
          swift_unknownObjectRetain();

          if (v88)
          {
            swift_getObjectType();
            v89 = sub_2429B73E0();
            v91 = v90;
            swift_unknownObjectRelease();
          }

          else
          {
            v89 = 0;
            v91 = 0;
          }

          sub_2429A234C(v122, &qword_27ECD71A8, &qword_2429B8570);
          v92 = swift_allocObject();
          *(v92 + 16) = &unk_2429B8580;
          *(v92 + 24) = v81;
          if (v91 | v89)
          {
            v125 = 0;
            v126 = 0;
            v127 = v89;
            v128 = v91;
          }

          v26 = v108;
          v28 = v116;
          v32 = v119;
          v6 = swift_task_create();

          (*v103)(v123, v121);
        }

        else
        {
          if (qword_28118FA48 != -1)
          {
            swift_once();
          }

          v49 = sub_2429B72D0();
          __swift_project_value_buffer(v49, qword_28118FA50);
          v6 = sub_2429B72B0();
          v50 = sub_2429B7480();
          if (os_log_type_enabled(v6, v50))
          {
            v51 = swift_slowAlloc();
            v124 = v34;
            v52 = v51;
            *v51 = 0;
            _os_log_impl(&dword_24299E000, v6, v50, "Not saving changes to reminder without a date", v51, 2u);
            v53 = v52;
            v32 = v28 + 1;
            MEMORY[0x245D1DF70](v53, -1, -1);
          }

          else
          {
          }
        }
      }

      else
      {
      }

      ++v28;
      if (v32 == v26)
      {
        goto LABEL_88;
      }
    }

    __break(1u);
LABEL_86:
    __break(1u);
  }

LABEL_88:

  sub_2429A8838(v95, 1);

  sub_2429A8838(v94, 0);
}

uint64_t sub_2429A80BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v15;
  *(v8 + 16) = a4;
  *(v8 + 24) = a8;
  *(v8 + 32) = sub_2429B7430();
  *(v8 + 40) = sub_2429B7420();
  v12 = swift_task_alloc();
  *(v8 + 48) = v12;
  *v12 = v8;
  v12[1] = sub_2429A81A0;

  return sub_2429AC6FC(a5, a6, a7);
}

uint64_t sub_2429A81A0(uint64_t a1)
{
  *(*v2 + 56) = a1;

  if (v1)
  {

    v3 = sub_2429B73E0();
    v5 = v4;
    v6 = sub_2429A8408;
  }

  else
  {
    v3 = sub_2429B73E0();
    v5 = v7;
    v6 = sub_2429A832C;
  }

  return MEMORY[0x2822009F8](v6, v3, v5);
}

uint64_t sub_2429A832C()
{
  v1 = *(v0 + 56);

  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);
    v4 = *(*(v0 + 16) + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_changeTracker);
    v5 = *(v0 + 24);
    v6 = v2;
    sub_2429B5F4C(v5, v3, 1, v4, v5, v6);
  }

  else
  {
    sub_2429B2620(*(v0 + 24), 1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2429A8408()
{

  sub_2429B2620(*(v0 + 24), 1);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2429A8480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71A8, &qword_2429B8570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2429B1D18(a3, v25 - v10, &qword_27ECD71A8, &qword_2429B8570);
  v12 = sub_2429B7450();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2429A234C(v11, &qword_27ECD71A8, &qword_2429B8570);
  }

  else
  {
    sub_2429B7440();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2429B73E0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2429B7330() + 32;
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

      sub_2429A234C(a3, &qword_27ECD71A8, &qword_2429B8570);

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

  sub_2429A234C(a3, &qword_27ECD71A8, &qword_2429B8570);
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

uint64_t sub_2429A8838(unint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v55 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71A8, &qword_2429B8570);
  result = MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v43 - v8);
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
    do
    {
      v43 = v9;
      v44 = v4;
      v11 = objc_opt_self();
      v12 = 0;
      v51 = *&v3[OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_eventStore];
      v52 = v11;
      v53 = a1 & 0xC000000000000001;
      v49 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_changeTracker;
      v47 = a1 & 0xFFFFFFFFFFFFFF8;
      v50 = xmmword_2429B8400;
      *(&v13 + 1) = 3;
      v48 = xmmword_2429B8550;
      *&v13 = 138412290;
      v45 = v13;
      v46 = v10;
      while (1)
      {
        if (v53)
        {
          v21 = MEMORY[0x245D1D8C0](v12, a1);
        }

        else
        {
          if (v12 >= *(v47 + 16))
          {
            goto LABEL_23;
          }

          v21 = *(a1 + 8 * v12 + 32);
        }

        v9 = v21;
        v22 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v23 = [v52 defaultCenter];
        if (qword_27ECD7008 != -1)
        {
          swift_once();
        }

        v24 = qword_27ECD7178;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7240, &qword_2429B86B8);
        inited = swift_initStackObject();
        *(inited + 16) = v50;
        v54[0] = 0x746E657665;
        v54[1] = 0xE500000000000000;
        sub_2429B7580();
        *(inited + 96) = sub_2429A565C(0, &qword_27ECD7230, 0x277CC5A28);
        *(inited + 72) = v9;
        v26 = v9;
        sub_2429B12A8(inited);
        swift_setDeallocating();
        sub_2429A234C(inited + 32, &qword_27ECD7248, &qword_2429B86C0);
        v27 = sub_2429B72E0();

        [v23 postNotificationName:v24 object:0 userInfo:v27];

        v54[0] = 0;
        if ([v51 saveEvent:v26 span:0 commit:0 error:v54])
        {
          v9 = *&v3[v49];
          v28 = v54[0];
          sub_2429B2AC8(v26, [v26 sequenceNumber], 1, v9);
          v29 = [v26 objectID];
          if (!v29)
          {
            __break(1u);
          }

          v30 = v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71C0, &qword_2429B85A0);
          v31 = swift_allocObject();
          *(v31 + 16) = v48;
          *(v31 + 32) = v30;
          v4 = v30;
          sub_2429B3FB8(v31);
        }

        else
        {
          v32 = v54[0];
          v4 = sub_2429B6DD0();

          swift_willThrow();
          if (qword_28118FA48 != -1)
          {
            swift_once();
          }

          v33 = sub_2429B72D0();
          __swift_project_value_buffer(v33, qword_28118FA50);
          v34 = v4;
          v9 = sub_2429B72B0();
          v35 = sub_2429B7480();

          if (os_log_type_enabled(v9, v35))
          {
            v14 = swift_slowAlloc();
            v15 = v3;
            v16 = a1;
            v17 = swift_slowAlloc();
            *v14 = v45;
            v18 = v4;
            v19 = _swift_stdlib_bridgeErrorToNSError();
            *(v14 + 4) = v19;
            *v17 = v19;
            _os_log_impl(&dword_24299E000, v9, v35, "Error saving integration event: %@", v14, 0xCu);
            sub_2429A234C(v17, &qword_27ECD71B8, &qword_2429B8598);
            v20 = v17;
            a1 = v16;
            v3 = v15;
            v10 = v46;
            MEMORY[0x245D1DF70](v20, -1, -1);
            MEMORY[0x245D1DF70](v14, -1, -1);
          }

          else
          {
          }
        }

        ++v12;
        if (v22 == v10)
        {
          v36 = sub_2429A7024();
          v37 = sub_2429B7450();
          v38 = v43;
          (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
          sub_2429B7430();

          v39 = v3;

          v40 = sub_2429B7420();
          v41 = swift_allocObject();
          v42 = MEMORY[0x277D85700];
          *(v41 + 16) = v40;
          *(v41 + 24) = v42;
          *(v41 + 32) = a1;
          *(v41 + 40) = v39;
          *(v41 + 48) = v44 & 1;
          *(v41 + 56) = v36;
          sub_2429AA84C(0, 0, v38, &unk_2429B86D8, v41);
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      result = sub_2429B7530();
      v10 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_2429A8EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 240) = a5;
  *(v7 + 248) = a7;
  *(v7 + 456) = a6;
  *(v7 + 232) = a4;
  v8 = sub_2429B6E20();
  *(v7 + 256) = v8;
  *(v7 + 264) = *(v8 - 8);
  *(v7 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7080, &qword_2429B84F0);
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();
  sub_2429B7430();
  *(v7 + 296) = sub_2429B7420();
  v9 = sub_2429B73E0();
  *(v7 + 304) = v9;
  *(v7 + 312) = v10;

  return MEMORY[0x2822009F8](sub_2429A9024, v9, v10);
}

uint64_t sub_2429A9024()
{
  v1 = v0[29];
  if (v1 >> 62)
  {
    v2 = sub_2429B7530();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_eventStore;
  v0[40] = v2;
  v0[41] = v3;
  v4 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_undoManager;
  v0[42] = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_changeTracker;
  v0[43] = v4;
  if (v2)
  {
    v5 = v0[29];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x245D1D8C0](0);
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v6 = *(v5 + 32);
    }

    v7 = v6;
    v0[44] = v6;
    v0[45] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7210, &qword_2429B86A0);
    v8 = sub_2429B7000();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    v12 = sub_2429B0B00(v7);
    if (!v12)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v12, v13, v14);
    }

    if (([v7 hasRecurrenceRules] & 1) == 0)
    {
      v15 = [v7 masterEvent];
      if (!v15)
      {
        v28 = v0[36];
        v29 = sub_2429B6DB0();
        (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
LABEL_18:
        sub_2429B6FF0();
        v24 = sub_2429B1CC4(&qword_27ECD7218, MEMORY[0x2822294C8]);
        v30 = MEMORY[0x245D1D730](1, v8, v24);
        v25 = swift_task_alloc();
        v26 = swift_task_alloc();
        (*(v9 + 16))(v26, v11 + v10, v8);
        sub_2429AE8EC(v25, v26);
        v27 = *(v9 + 8);
        v27(v25, v8);

        swift_setDeallocating();
        v27((v11 + v10), v8);
        swift_deallocClassInstance();
        v0[46] = v30;
        v12 = sub_2429A9454;
        v13 = 0;
        v14 = 0;

        return MEMORY[0x2822009F8](v12, v13, v14);
      }
    }

    v16 = [v7 startDateComponents];
    if (v16)
    {
      v17 = v16;
      sub_2429B6D80();

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    v22 = v0[35];
    v21 = v0[36];
    v23 = sub_2429B6DB0();
    (*(*(v23 - 8) + 56))(v22, v18, 1, v23);
    sub_2429A58B4(v22, v21);
    goto LABEL_18;
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_2429A9454()
{
  v1 = sub_2429B70E0();
  v0[47] = v1;
  v0[48] = *(v1 - 8);
  v2 = swift_task_alloc();
  v0[49] = v2;

  sub_2429B70D0();
  swift_unknownObjectWeakLoadStrong();
  sub_2429B70C0();
  v3 = sub_2429B70B0();
  v0[50] = v3;
  v4 = *(v3 - 8);
  v0[51] = v4;
  v0[52] = *(v4 + 64);
  v5 = swift_task_alloc();
  v0[53] = v5;
  v6 = swift_task_alloc();
  v0[54] = v6;
  *v6 = v0;
  v6[1] = sub_2429A962C;

  return MEMORY[0x2821A7DE0](v5, v2);
}

uint64_t sub_2429A962C()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_2429A9A68;
  }

  else
  {
    v2 = sub_2429A976C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2429A976C()
{
  v1 = v0[53];
  v2 = v0[50];
  v3 = v0[51];
  v4 = MEMORY[0x277D45B08];
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v4 && v6 == *v4)
  {
    v7 = v0[53];
    v9 = v0[50];
    v8 = v0[51];
    v10 = v0[48];
    v26 = v0[47];
    v27 = v0[49];
    (*(v8 + 96))(v5, v9);
    v11 = sub_2429B70A0();
    v12 = *(v11 - 8);
    v13 = swift_task_alloc();
    (*(v12 + 32))(v13, v5, v11);
    v14 = sub_2429B7090();
    (*(v12 + 8))(v13, v11);
    (*(v8 + 8))(v7, v9);
    (*(v10 + 8))(v27, v26);
  }

  else
  {
    if (MEMORY[0x277D45B10] && v6 == *MEMORY[0x277D45B10])
    {
      v16 = v0[48];
      v15 = v0[49];
      v17 = v0[47];
      (*(v0[51] + 8))(v0[53], v0[50]);
      (*(v16 + 8))(v15, v17);
    }

    else
    {
      v18 = v0[50];
      v20 = v0[48];
      v19 = v0[49];
      v21 = v0[47];
      v22 = *(v0[51] + 8);
      v22(v0[53], v18);
      (*(v20 + 8))(v19, v21);
      v22(v5, v18);
    }

    v14 = MEMORY[0x277D84F90];
  }

  v0[56] = v14;

  v23 = v0[38];
  v24 = v0[39];

  return MEMORY[0x2822009F8](sub_2429A9F68, v23, v24);
}

uint64_t sub_2429A9A68()
{
  v1 = v0[55];
  (*(v0[48] + 8))(v0[49], v0[47]);

  v2 = v0[38];
  v3 = v0[39];

  return MEMORY[0x2822009F8](sub_2429A9B44, v2, v3);
}

uint64_t sub_2429A9B44()
{
  v1 = v0[44];
  sub_2429B2620(v1, 1);

  v2 = v0[45];
  if (v2 != v0[40])
  {
    v5 = v0[29];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x245D1D8C0](v0[45]);
    }

    else
    {
      if (v2 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v6 = *(v5 + 8 * v2 + 32);
    }

    v7 = v6;
    v0[44] = v6;
    v0[45] = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7210, &qword_2429B86A0);
      v8 = sub_2429B7000();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = sub_2429B0B00(v7);
      if (!v12)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v12, v13, v14);
      }

      if (([v7 hasRecurrenceRules] & 1) == 0)
      {
        v15 = [v7 masterEvent];
        if (!v15)
        {
          v26 = v0[36];
          v27 = sub_2429B6DB0();
          (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
          goto LABEL_17;
        }
      }

      v16 = [v7 startDateComponents];
      if (v16)
      {
        v17 = v16;
        sub_2429B6D80();

        v18 = 0;
      }

      else
      {
        v18 = 1;
      }

      v20 = v0[35];
      v19 = v0[36];
      v21 = sub_2429B6DB0();
      (*(*(v21 - 8) + 56))(v20, v18, 1, v21);
      sub_2429A58B4(v20, v19);
LABEL_17:
      sub_2429B6FF0();
      v22 = sub_2429B1CC4(&qword_27ECD7218, MEMORY[0x2822294C8]);
      v28 = MEMORY[0x245D1D730](1, v8, v22);
      v23 = swift_task_alloc();
      v24 = swift_task_alloc();
      (*(v9 + 16))(v24, v11 + v10, v8);
      sub_2429AE8EC(v23, v24);
      v25 = *(v9 + 8);
      v25(v23, v8);

      swift_setDeallocating();
      v25((v11 + v10), v8);
      swift_deallocClassInstance();
      v0[46] = v28;
      v12 = sub_2429A9454;
      v13 = 0;
      v14 = 0;

      return MEMORY[0x2822009F8](v12, v13, v14);
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_2429A9F68()
{
  v1 = v0[56];
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:

    v30 = v0[44];
    sub_2429B2620(v30, 1);
    goto LABEL_14;
  }

  if (!sub_2429B7530())
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x245D1D8C0](0, v0[56]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_37;
    }

    v2 = *(v0[56] + 32);
  }

  v3 = v0[44];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];

  v7 = v3;
  v8 = [v2 objectID];
  v9 = [v8 urlRepresentation];

  sub_2429B6E00();
  sub_2429B6DE0();
  (*(v5 + 8))(v4, v6);
  v10 = sub_2429B7310();

  [v7 setUniqueID_];

  v11 = [objc_opt_self() defaultCenter];
  if (qword_27ECD7008 != -1)
  {
    swift_once();
  }

  v12 = v0[44];
  v13 = v0[41];
  v14 = v0[30];
  v15 = qword_27ECD7178;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7240, &qword_2429B86B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2429B8560;
  v0[24] = 0x746E657665;
  v0[25] = 0xE500000000000000;
  sub_2429B7580();
  *(inited + 96) = sub_2429A565C(0, &qword_27ECD7230, 0x277CC5A28);
  *(inited + 72) = v12;
  v0[26] = 0x7265646E696D6572;
  v0[27] = 0xE800000000000000;
  v17 = v12;
  sub_2429B7580();
  *(inited + 168) = sub_2429A565C(0, &qword_27ECD7258, 0x277D44758);
  *(inited + 144) = v2;
  v18 = v2;
  sub_2429B12A8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7248, &qword_2429B86C0);
  swift_arrayDestroy();
  v19 = sub_2429B72E0();

  [v11 postNotificationName:v15 object:0 userInfo:v19];

  v20 = *(v14 + v13);
  v0[28] = 0;
  v21 = [v20 saveEvent:v17 span:0 commit:0 error:v0 + 28];
  v22 = v0[28];
  v23 = v0[44];
  if (v21)
  {
    v24 = v0[42];
    v25 = v0[30];
    v26 = v22;
    [v20 addPendingIntegrationEvent_];
    v27 = *(v25 + v24);
    v28 = [v23 sequenceNumber];
    v29 = v23;
    v30 = v18;
    sub_2429B5F4C(v29, v28, 1, v27, v29, v30);

    v31 = [v29 sequenceNumber];
    sub_2429B2AC8(v29, v31, 1, v27);
    v32 = [v29 objectID];
    if (!v32)
    {
      goto LABEL_41;
    }

    v35 = v32;
    v36 = v0[44];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71C0, &qword_2429B85A0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_2429B8550;
    *(v37 + 32) = v35;
    v38 = v35;
    sub_2429B3FB8(v37);

LABEL_14:
    v1 = v0[45];
    if (v1 == v0[40])
    {

      v40 = v0[1];
      goto LABEL_16;
    }

    v42 = v0[29];
    if ((v42 & 0xC000000000000001) == 0)
    {
      if (v1 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v43 = *(v42 + 8 * v1 + 32);
LABEL_22:
      v44 = v43;
      v0[44] = v43;
      v0[45] = v1 + 1;
      if (!__OFADD__(v1, 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7210, &qword_2429B86A0);
        v45 = sub_2429B7000();
        v46 = *(v45 - 8);
        v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v48 = swift_allocObject();
        v32 = sub_2429B0B00(v44);
        if (v32)
        {
          if (([v44 hasRecurrenceRules] & 1) == 0)
          {
            v49 = [v44 masterEvent];
            if (!v49)
            {
              v60 = v0[36];
              v61 = sub_2429B6DB0();
              (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
              goto LABEL_31;
            }
          }

          v50 = [v44 startDateComponents];
          if (v50)
          {
            v51 = v50;
            sub_2429B6D80();

            v52 = 0;
          }

          else
          {
            v52 = 1;
          }

          v54 = v0[35];
          v53 = v0[36];
          v55 = sub_2429B6DB0();
          (*(*(v55 - 8) + 56))(v54, v52, 1, v55);
          sub_2429A58B4(v54, v53);
LABEL_31:
          sub_2429B6FF0();
          v56 = sub_2429B1CC4(&qword_27ECD7218, MEMORY[0x2822294C8]);
          v62 = MEMORY[0x245D1D730](1, v45, v56);
          v57 = swift_task_alloc();
          v58 = swift_task_alloc();
          (*(v46 + 16))(v58, v48 + v47, v45);
          sub_2429AE8EC(v57, v58);
          v59 = *(v46 + 8);
          v59(v57, v45);

          swift_setDeallocating();
          v59((v48 + v47), v45);
          swift_deallocClassInstance();
          v0[46] = v62;
          v32 = sub_2429A9454;
          v33 = 0;
          v34 = 0;

          return MEMORY[0x2822009F8](v32, v33, v34);
        }

        __break(1u);
LABEL_41:
        __break(1u);
        return MEMORY[0x2822009F8](v32, v33, v34);
      }

      __break(1u);
LABEL_39:
      __break(1u);
    }

LABEL_37:
    v43 = MEMORY[0x245D1D8C0](v1);
    goto LABEL_22;
  }

  v39 = v22;

  sub_2429B6DD0();

  swift_willThrow();

  v40 = v0[1];
LABEL_16:

  return v40();
}

uint64_t sub_2429AA84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71A8, &qword_2429B8570);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2429B1D18(a3, v22 - v9, &qword_27ECD71A8, &qword_2429B8570);
  v11 = sub_2429B7450();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2429A234C(v10, &qword_27ECD71A8, &qword_2429B8570);
  }

  else
  {
    sub_2429B7440();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2429B73E0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2429B7330() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_2429A234C(a3, &qword_27ECD71A8, &qword_2429B8570);

      return v20;
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

  sub_2429A234C(a3, &qword_27ECD71A8, &qword_2429B8570);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2429AAAF8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v44 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71A8, &qword_2429B8570);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v41 - v5;
  v6 = sub_2429B1524(MEMORY[0x277D84F90]);
  if (a1 >> 62)
  {
LABEL_36:
    v7 = sub_2429B7530();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_37:
    v30 = v41;
    v31 = sub_2429A7024();
    v32 = sub_2429B7450();
    v33 = v42;
    (*(*(v32 - 8) + 56))(v42, 1, 1, v32);
    sub_2429B7430();
    v34 = v30;

    v35 = v44;

    v36 = sub_2429B7420();
    v37 = swift_allocObject();
    v38 = MEMORY[0x277D85700];
    v37[2] = v36;
    v37[3] = v38;
    v37[4] = v6;
    v37[5] = v34;
    v39 = v43;
    v37[6] = v31;
    v37[7] = v39;
    v37[8] = v35;
    sub_2429A8480(0, 0, v33, &unk_2429B85B0, v37);
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_37;
  }

LABEL_3:
  v8 = 0;
  v46 = a1;
  v47 = a1 & 0xC000000000000001;
  v45 = a1 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v47)
    {
      v9 = MEMORY[0x245D1D8C0](v8, a1);
    }

    else
    {
      if (v8 >= *(v45 + 16))
      {
        goto LABEL_34;
      }

      v9 = *(a1 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v12 = sub_2429B0B00(v9);
    if (v12)
    {
      break;
    }

LABEL_5:
    ++v8;
    if (v11 == v7)
    {
      goto LABEL_37;
    }
  }

  v13 = v12;
  if ((v6 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      a1 = v6;
    }

    else
    {
      a1 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = v10;
    v15 = sub_2429B7530();
    if (__OFADD__(v15, 1))
    {
      goto LABEL_33;
    }

    v6 = sub_2429B002C(a1, v15 + 1);
  }

  else
  {
    v16 = v10;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = v6;
  v19 = sub_2429AE41C(v13);
  v20 = *(v6 + 16);
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    goto LABEL_32;
  }

  a1 = v18;
  if (*(v6 + 24) >= v22)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v6 = v48;
      if (v18)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_2429B09A0();
      v6 = v48;
      if (a1)
      {
        goto LABEL_26;
      }
    }

LABEL_28:
    *(v6 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    *(*(v6 + 48) + 8 * v19) = v13;
    *(*(v6 + 56) + 8 * v19) = v10;

    v27 = *(v6 + 16);
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_35;
    }

    *(v6 + 16) = v29;
    goto LABEL_30;
  }

  sub_2429B0584(v22, isUniquelyReferenced_nonNull_native);
  v23 = sub_2429AE41C(v13);
  if ((a1 & 1) == (v24 & 1))
  {
    v19 = v23;
    v6 = v48;
    if ((a1 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_26:
    v25 = *(v6 + 56);
    v26 = *(v25 + 8 * v19);
    *(v25 + 8 * v19) = v10;

LABEL_30:
    a1 = v46;
    goto LABEL_5;
  }

  sub_2429A565C(0, &unk_27ECD71C8, 0x277D44708);
  result = sub_2429B7710();
  __break(1u);
  return result;
}

uint64_t sub_2429AAEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a7;
  v8[26] = a8;
  v8[23] = a5;
  v8[24] = a6;
  v8[22] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7080, &qword_2429B84F0);
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  sub_2429B7430();
  v8[29] = sub_2429B7420();
  v9 = sub_2429B73E0();
  v8[30] = v9;
  v8[31] = v10;

  return MEMORY[0x2822009F8](sub_2429AAFB8, v9, v10);
}

uint64_t sub_2429AAFB8()
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 176);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = sub_2429B7660() | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(v1 + 32);
    v3 = ~v6;
    v2 = v1 + 64;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v4 = v8 & *(v1 + 64);
    v5 = *(v0 + 176);
  }

  *(v0 + 256) = v5;
  *(v0 + 264) = v2;
  *(v0 + 336) = 1;
  *(v0 + 280) = 0;
  *(v0 + 288) = v4;
  *(v0 + 272) = v3;

  if ((v5 & 0x8000000000000000) != 0)
  {
    v11 = sub_2429B7680();
    if (!v11)
    {
      goto LABEL_27;
    }

    v13 = v12;
    *(v0 + 152) = v11;
    sub_2429A565C(0, &unk_27ECD71C8, 0x277D44708);
    swift_dynamicCast();
    v14 = *(v0 + 144);
    *(v0 + 168) = v13;
    sub_2429A565C(0, &qword_27ECD7230, 0x277CC5A28);
    swift_dynamicCast();
    v9 = 0;
    v15 = *(v0 + 160);
    v16 = v4;
  }

  else
  {
    if (!v4)
    {
      v17 = 0;
      v18 = v2 + 8;
      while (((v3 + 64) >> 6) - 1 != v17)
      {
        v9 = v17 + 1;
        v10 = *(v18 + 8 * v17++);
        if (v10)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_27;
    }

    v9 = 0;
    v10 = v4;
LABEL_15:
    v16 = (v10 - 1) & v10;
    v19 = (v9 << 9) | (8 * __clz(__rbit64(v10)));
    v20 = *(*(v5 + 56) + v19);
    v14 = *(*(v5 + 48) + v19);
    v15 = v20;
  }

  *(v0 + 312) = v9;
  *(v0 + 320) = v16;
  *(v0 + 296) = v14;
  *(v0 + 304) = v15;
  if (v14)
  {
    v21 = v15;
    v22 = v14;
    if (([v21 hasRecurrenceRules] & 1) == 0)
    {
      v23 = [v21 masterEvent];
      if (!v23)
      {
        v37 = *(v0 + 224);
        v38 = sub_2429B6DB0();
        (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
LABEL_24:
        v30 = swift_task_alloc();
        *(v0 + 328) = v30;
        *v30 = v0;
        v30[1] = sub_2429AB3C8;
        v31 = *(v0 + 224);
        v32 = *(v0 + 192);

        return sub_2429ABEA4(v22, v31, v32);
      }
    }

    v24 = [v21 startDateComponents];
    if (v24)
    {
      v25 = v24;
      sub_2429B6D80();

      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v28 = *(v0 + 216);
    v27 = *(v0 + 224);
    v29 = sub_2429B6DB0();
    (*(*(v29 - 8) + 56))(v28, v26, 1, v29);
    sub_2429A58B4(v28, v27);
    goto LABEL_24;
  }

LABEL_27:
  sub_2429B1D10(*(v0 + 256));
  v34 = *(v0 + 336);
  v35 = *(v0 + 200);

  v35(v34, 0);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_2429AB3C8(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  *(*v1 + 337) = a1;

  sub_2429A234C(v3, &unk_27ECD7080, &qword_2429B84F0);
  v4 = *(v2 + 248);
  v5 = *(v2 + 240);

  return MEMORY[0x2822009F8](sub_2429AB550, v5, v4);
}

id sub_2429AB550()
{
  v1 = *(v0 + 337);
  if (v1 != 1)
  {
    if (v1 != 2 || ([*(v0 + 304) hasEverBeenCommitted] & 1) == 0)
    {
      v3 = [objc_opt_self() defaultCenter];
      if (qword_27ECD7000 != -1)
      {
        goto LABEL_42;
      }

      goto LABEL_6;
    }

    v2 = *(v0 + 296);
    v3 = *(v0 + 304);

    v5 = *(v0 + 312);
    v4 = *(v0 + 320);
    *(v0 + 336) = 0;
    while (1)
    {
      *(v0 + 280) = v5;
      *(v0 + 288) = v4;
      v40 = *(v0 + 256);
      if (v40 < 0)
      {
        break;
      }

      v41 = v4;
      v42 = v5;
      if (v4)
      {
LABEL_22:
        v44 = (v41 - 1) & v41;
        v45 = (v42 << 9) | (8 * __clz(__rbit64(v41)));
        v46 = *(*(v40 + 56) + v45);
        v47 = *(*(v40 + 48) + v45);
        v48 = v46;
        goto LABEL_25;
      }

      v43 = v5;
      while (1)
      {
        v42 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        if (v42 >= ((*(v0 + 272) + 64) >> 6))
        {
          goto LABEL_36;
        }

        v41 = *(*(v0 + 264) + 8 * v42);
        ++v43;
        if (v41)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_42:
      swift_once();
LABEL_6:
      v6 = *(v0 + 304);
      v7 = *(v0 + 184);
      v8 = qword_27ECD7170;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7240, &qword_2429B86B8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2429B8400;
      *(v0 + 120) = 0x746E657665;
      *(v0 + 128) = 0xE500000000000000;
      sub_2429B7580();
      *(inited + 96) = sub_2429A565C(0, &qword_27ECD7230, 0x277CC5A28);
      *(inited + 72) = v6;
      v10 = v6;
      sub_2429B12A8(inited);
      swift_setDeallocating();
      sub_2429A234C(inited + 32, &qword_27ECD7248, &qword_2429B86C0);
      v11 = sub_2429B72E0();

      [v3 postNotificationName:v8 object:0 userInfo:v11];

      v12 = [v10 sequenceNumber];
      v13 = *(v7 + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_eventStore);
      *(v0 + 136) = 0;
      v14 = [v13 removeEvent:v10 span:0 commit:0 error:v0 + 136];
      v15 = *(v0 + 136);
      if (v14)
      {
        v16 = *(v0 + 304);
        v3 = *(*(v0 + 184) + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_changeTracker);
        v17 = v15;
        sub_2429B2AC8(v16, v12, 1, v3);
        result = [v16 objectID];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v19 = result;
        v21 = *(v0 + 296);
        v20 = *(v0 + 304);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71C0, &qword_2429B85A0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_2429B8550;
        *(v22 + 32) = v19;
        v23 = v19;
        sub_2429B3FB8(v22);
      }

      else
      {
        v28 = v15;
        v29 = sub_2429B6DD0();

        swift_willThrow();
        if (qword_28118FA48 != -1)
        {
          swift_once();
        }

        v30 = sub_2429B72D0();
        __swift_project_value_buffer(v30, qword_28118FA50);
        v31 = v29;
        v3 = sub_2429B72B0();
        v32 = sub_2429B7480();

        v33 = os_log_type_enabled(v3, v32);
        v35 = *(v0 + 296);
        v34 = *(v0 + 304);
        if (v33)
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v36 = 138412290;
          v38 = v29;
          v39 = _swift_stdlib_bridgeErrorToNSError();
          *(v36 + 4) = v39;
          *v37 = v39;
          _os_log_impl(&dword_24299E000, v3, v32, "Error deleting integration event: %@", v36, 0xCu);
          sub_2429A234C(v37, &qword_27ECD71B8, &qword_2429B8598);
          MEMORY[0x245D1DF70](v37, -1, -1);
          MEMORY[0x245D1DF70](v36, -1, -1);
        }

        else
        {
        }
      }

      v5 = *(v0 + 312);
      v4 = *(v0 + 320);
    }

    v49 = sub_2429B7680();
    if (!v49)
    {
      goto LABEL_36;
    }

    v51 = v50;
    *(v0 + 152) = v49;
    sub_2429A565C(0, &unk_27ECD71C8, 0x277D44708);
    swift_dynamicCast();
    v47 = *(v0 + 144);
    *(v0 + 168) = v51;
    sub_2429A565C(0, &qword_27ECD7230, 0x277CC5A28);
    swift_dynamicCast();
    v48 = *(v0 + 160);
    v42 = v5;
    v44 = v4;
LABEL_25:
    *(v0 + 312) = v42;
    *(v0 + 320) = v44;
    *(v0 + 296) = v47;
    *(v0 + 304) = v48;
    if (!v47)
    {
LABEL_36:
      sub_2429B1D10(*(v0 + 256));
      v27 = *(v0 + 336);
      goto LABEL_37;
    }

    v52 = v48;
    v53 = v47;
    if (([v52 hasRecurrenceRules] & 1) == 0)
    {
      v54 = [v52 masterEvent];
      if (!v54)
      {
        v66 = *(v0 + 224);
        v67 = sub_2429B6DB0();
        (*(*(v67 - 8) + 56))(v66, 1, 1, v67);
LABEL_33:
        v61 = swift_task_alloc();
        *(v0 + 328) = v61;
        *v61 = v0;
        v61[1] = sub_2429AB3C8;
        v62 = *(v0 + 224);
        v63 = *(v0 + 192);

        return sub_2429ABEA4(v53, v62, v63);
      }
    }

    v55 = [v52 startDateComponents];
    if (v55)
    {
      v56 = v55;
      sub_2429B6D80();

      v57 = 0;
    }

    else
    {
      v57 = 1;
    }

    v59 = *(v0 + 216);
    v58 = *(v0 + 224);
    v60 = sub_2429B6DB0();
    (*(*(v60 - 8) + 56))(v59, v57, 1, v60);
    sub_2429A58B4(v59, v58);
    goto LABEL_33;
  }

  v25 = *(v0 + 296);
  v24 = *(v0 + 304);
  v26 = *(v0 + 256);

  sub_2429B1D10(v26);
  v27 = 0;
LABEL_37:
  v64 = *(v0 + 200);

  v64(v27, 0);

  v65 = *(v0 + 8);

  return v65();
}

void sub_2429ABE34(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2429B6DC0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_2429ABEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7080, &qword_2429B84F0);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2429ABF44, 0, 0);
}

uint64_t sub_2429ABF44()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = sub_2429B7000();
  v0[7] = v4;
  v5 = *(v4 - 8);
  v6 = swift_task_alloc();
  v0[8] = v6;
  sub_2429B1D18(v2, v1, &unk_27ECD7080, &qword_2429B84F0);
  v7 = v3;
  sub_2429B6FF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7210, &qword_2429B86A0);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2429B8400;
  (*(v5 + 16))(v9 + v8, v6, v4);
  sub_2429B1B58(v9);
  swift_setDeallocating();
  v10 = *(v5 + 8);
  v0[9] = v10;
  v0[10] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v9 + v8, v4);
  swift_deallocClassInstance();
  v11 = sub_2429B6F80();
  v0[11] = v11;
  v0[12] = *(v11 - 8);
  v12 = swift_task_alloc();
  v0[13] = v12;
  sub_2429B6F70();
  swift_unknownObjectWeakLoadStrong();
  sub_2429B6F60();
  v13 = sub_2429B6F50();
  v0[14] = v13;
  v14 = *(v13 - 8);
  v0[15] = v14;
  v0[16] = *(v14 + 64);
  v15 = swift_task_alloc();
  v0[17] = v15;
  v16 = swift_task_alloc();
  v0[18] = v16;
  *v16 = v0;
  v16[1] = sub_2429AC244;

  return MEMORY[0x2821A7DD0](v15, v12);
}

uint64_t sub_2429AC244()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_2429AC4F4;
  }

  else
  {
    v2 = sub_2429AC358;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2429AC358()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[7];
  (*(v0[12] + 8))(v0[13], v0[11]);
  v5(v4, v6);
  v7 = swift_task_alloc();
  (*(v3 + 32))(v7, v1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (MEMORY[0x277D45AA0] && v8 == *MEMORY[0x277D45AA0])
  {
    (*(v0[15] + 8))(v7, v0[14]);
    v9 = 0;
  }

  else if (MEMORY[0x277D45AA8] && v8 == *MEMORY[0x277D45AA8])
  {
    v9 = 1;
  }

  else
  {
    (*(v0[15] + 8))(v7, v0[14]);
    v9 = 2;
  }

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_2429AC4F4()
{

  if (qword_28118FA48 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = sub_2429B72D0();
  __swift_project_value_buffer(v2, qword_28118FA50);
  v3 = v1;
  v4 = sub_2429B72B0();
  v5 = sub_2429B7480();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24299E000, v4, v5, "Error deleting reminder: %@", v7, 0xCu);
    sub_2429A234C(v8, &qword_27ECD71B8, &qword_2429B8598);
    MEMORY[0x245D1DF70](v8, -1, -1);
    MEMORY[0x245D1DF70](v7, -1, -1);
  }

  v11 = v0[19];
  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[11];
  v15 = v0[8];
  v16 = v0[9];
  v17 = v0[7];

  (*(v13 + 8))(v12, v14);
  v16(v15, v17);

  v18 = v0[1];

  return v18(2);
}

uint64_t sub_2429AC6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_2429B6DB0();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2429AC7C0, 0, 0);
}

uint64_t sub_2429AC7C0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];
  v6 = sub_2429B7080();
  v0[14] = v6;
  v0[15] = *(v6 - 8);
  v7 = swift_task_alloc();
  v0[16] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71C0, &qword_2429B85A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2429B8550;
  *(inited + 32) = v5;
  v9 = v5;
  sub_2429B13E4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  (*(v2 + 16))(v1, v4, v3);
  sub_2429B7060();
  swift_unknownObjectWeakLoadStrong();
  sub_2429B7070();
  v10 = sub_2429B7050();
  v0[17] = v10;
  v11 = *(v10 - 8);
  v0[18] = v11;
  v0[19] = *(v11 + 64);
  v12 = swift_task_alloc();
  v0[20] = v12;
  v13 = swift_task_alloc();
  v0[21] = v13;
  *v13 = v0;
  v13[1] = sub_2429AC9FC;

  return MEMORY[0x2821A7DD8](v12, v7);
}

uint64_t sub_2429AC9FC()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_2429ACE58;
  }

  else
  {
    v2 = sub_2429ACB10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

unint64_t sub_2429ACB10()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v1, v2);
  v5 = (*(v3 + 88))(v4, v2);
  if (!MEMORY[0x277D45AF8] || v5 != *MEMORY[0x277D45AF8])
  {
    if (MEMORY[0x277D45B00] && v5 == *MEMORY[0x277D45B00])
    {
      v13 = v0[15];
      v12 = v0[16];
      v14 = v0[14];
      (*(v0[18] + 8))(v0[20], v0[17]);
      (*(v13 + 8))(v12, v14);
    }

    else
    {
      v15 = v0[17];
      v17 = v0[15];
      v16 = v0[16];
      v18 = v0[14];
      v19 = *(v0[18] + 8);
      v19(v0[20], v15);
      (*(v17 + 8))(v16, v18);
      v19(v4, v15);
    }

    v11 = 0;
    goto LABEL_17;
  }

  (*(v0[18] + 96))(v4, v0[17]);
  v6 = sub_2429B7040();
  v7 = *(v6 - 8);
  v8 = swift_task_alloc();
  (*(v7 + 32))(v8, v4, v6);
  result = sub_2429B7030();
  if (result >> 62)
  {
    v20 = result;
    v21 = sub_2429B7530();
    result = v20;
    v29 = v8;
    v30 = v6;
    if (v21)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v29 = v8;
    v30 = v6;
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((result & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x245D1D8C0](0);
      }

      else
      {
        if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v10 = *(result + 32);
      }

      v11 = v10;

      goto LABEL_16;
    }
  }

  v11 = 0;
LABEL_16:
  v22 = v0[20];
  v24 = v0[17];
  v23 = v0[18];
  v25 = v0[15];
  v26 = v0[16];
  v27 = v0[14];
  (*(v7 + 8))(v29, v30);
  (*(v23 + 8))(v22, v24);
  (*(v25 + 8))(v26, v27);

LABEL_17:

  v28 = v0[1];

  return v28(v11);
}

uint64_t sub_2429ACE58()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2429ACEFC()
{
  sub_2429B7760();
  MEMORY[0x245D1DA40](0);
  return sub_2429B7780();
}

uint64_t sub_2429ACF68(uint64_t a1)
{
  sub_2429B7760();
  MEMORY[0x245D1DA40](0);
  return sub_2429B7780();
}

uint64_t sub_2429ACFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = sub_2429B7430();
  v4[7] = sub_2429B7420();
  v6 = sub_2429B73E0();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_2429AD058, v6, v5);
}

uint64_t sub_2429AD058(uint64_t a1)
{
  v2 = *(v1 + 40);
  v10 = *(v1 + 24);
  v3 = sub_2429B7420();
  *(v1 + 80) = v3;
  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v10;
  v5 = swift_task_alloc();
  *(v1 + 96) = v5;
  *v5 = v1;
  v5[1] = sub_2429AD170;
  v6 = *(v1 + 40);
  v7 = *(v1 + 16);
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v7, v3, v8, 0x28746E6573657270, 0xEB00000000293A5FLL, sub_2429B184C, v4, v6);
}

uint64_t sub_2429AD170()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_2429AD2F8;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_2429AD294;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2429AD294()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2429AD2F8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2429AD370(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v69 = a3;
  v90 = a1;
  v6 = *(a4 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v85 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = v66 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD71D8, &qword_2429B8680);
  v89 = sub_2429B7410();
  v11 = *(v89 - 8);
  v12 = MEMORY[0x28223BE20](v89);
  v84 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v13;
  MEMORY[0x28223BE20](v12);
  v67 = v66 - v14;
  v101 = MEMORY[0x277D84F90];
  v66[1] = sub_2429B71A0();
  v68 = a2;
  v15 = sub_2429B7180();
  v16 = a4;
  v17 = sub_2429B7170();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v66 - v20;
  v22 = sub_2429B73D0();
  v88 = v11;
  if (!v22)
  {
LABEL_13:

    sub_2429B7130();
    v52 = v51;
    v94 = sub_2429B7190();
    v54 = v53;
    v56 = v88;
    v55 = v89;
    v57 = v67;
    (*(v88 + 16))(v67, v90, v89);
    v58 = (*(v56 + 80) + 24) & ~*(v56 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = v16;
    (*(v56 + 32))(v59 + v58, v57, v55);
    if (v52)
    {
      v60 = sub_2429B7310();

      if (v54)
      {
LABEL_15:
        v61 = sub_2429B7310();

LABEL_18:
        v62 = objc_allocWithZone(MEMORY[0x277CF7C90]);
        sub_2429A565C(0, &qword_27ECD71E0, 0x277CF7C98);
        v63 = sub_2429B7370();

        v99 = sub_2429B1958;
        v100 = v59;
        aBlock = MEMORY[0x277D85DD0];
        v96 = 1107296256;
        v97 = sub_2429AE12C;
        v98 = &block_descriptor_31;
        v64 = _Block_copy(&aBlock);
        v65 = [v62 initWithTitle:v60 message:v61 actions:v63 cancelBlock:v64];

        _Block_release(v64);

        [v69 displayIntegrationAlert_];

        return;
      }
    }

    else
    {
      v60 = 0;
      if (v54)
      {
        goto LABEL_15;
      }
    }

    v61 = 0;
    goto LABEL_18;
  }

  v66[0] = v19;
  v23 = 0;
  v83 = (v18 + 16);
  v79 = v11 + 16;
  v78 = v6 + 16;
  v77 = v11 + 32;
  v76 = v6 + 32;
  v75 = &v97;
  v82 = v6;
  v74 = (v6 + 8);
  v73 = (v18 + 8);
  v24 = v21;
  v81 = v15;
  v80 = v18;
  v72 = v21;
  v71 = v10;
  v70 = v17;
  while (1)
  {
    v25 = sub_2429B73B0();
    sub_2429B7390();
    if ((v25 & 1) == 0)
    {
      break;
    }

    (*(v18 + 16))(v24, v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v23, v17);
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_19;
    }

LABEL_5:
    v94 = v26;
    v27 = sub_2429B7150();
    v92 = v28;
    v93 = v27;
    v29 = v16;
    v30 = sub_2429B7120();
    v31 = *(v30 - 8);
    MEMORY[0x28223BE20](v30);
    v33 = v66 - v32;
    sub_2429B7140();
    v91 = sub_2429A6940(v33);
    (*(v31 + 8))(v33, v30);
    sub_2429B7160();
    v34 = v88;
    v35 = v84;
    v36 = v10;
    v37 = v89;
    (*(v88 + 16))(v84, v90, v89);
    v38 = v82;
    v39 = v85;
    (*(v82 + 16))(v85, v36, v29);
    v40 = (*(v34 + 80) + 24) & ~*(v34 + 80);
    v41 = (v87 + *(v38 + 80) + v40) & ~*(v38 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = v29;
    (*(v34 + 32))(v42 + v40, v35, v37);
    v43 = *(v38 + 32);
    v16 = v29;
    v43(v42 + v41, v39, v29);
    v44 = objc_allocWithZone(MEMORY[0x277CF7C98]);
    v45 = sub_2429B7310();

    v99 = sub_2429B1858;
    v100 = v42;
    aBlock = MEMORY[0x277D85DD0];
    v96 = 1107296256;
    v97 = sub_2429AE12C;
    v98 = &block_descriptor;
    v46 = _Block_copy(&aBlock);
    v47 = [v44 initWithTitle:v45 style:v91 handler:v46];

    _Block_release(v46);

    v48 = v47;
    MEMORY[0x245D1D630]();
    if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2429B73A0();
    }

    sub_2429B73C0();

    v10 = v71;
    (*v74)(v71, v29);
    v24 = v72;
    v17 = v70;
    (*v73)(v72, v70);
    v15 = v81;
    v49 = sub_2429B73D0();
    ++v23;
    v18 = v80;
    if (v94 == v49)
    {
      goto LABEL_13;
    }
  }

  v50 = sub_2429B75E0();
  if (v66[0] != 8)
  {
    goto LABEL_20;
  }

  aBlock = v50;
  (*v83)(v24, &aBlock, v17);
  swift_unknownObjectRelease();
  v26 = v23 + 1;
  if (!__OFADD__(v23, 1))
  {
    goto LABEL_5;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_2429ADCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD71D8, &qword_2429B8680);
  sub_2429B7410();
  return sub_2429B7400();
}

uint64_t sub_2429ADDB8(uint64_t a1, uint64_t a2)
{
  sub_2429B19EC();
  swift_allocError();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD71D8, &qword_2429B8680);
  sub_2429B7410();
  return sub_2429B73F0();
}

uint64_t sub_2429ADE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2429ADEF4;

  return sub_2429ACFB8(a1, a2, v8, a3);
}

uint64_t sub_2429ADEF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id CUIKIReminderEditorImplementation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CUIKIReminderEditorImplementation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CUIKIReminderEditorImplementation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2429AE12C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2429AE170(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2429AE268;

  return v6(a1);
}

uint64_t sub_2429AE268()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2429AE360(uint64_t a1, uint64_t a2)
{
  sub_2429B7760();
  sub_2429B7340();
  v4 = sub_2429B7780();

  return sub_2429AE460(a1, a2, v4);
}

unint64_t sub_2429AE3D8(uint64_t a1)
{
  v2 = sub_2429B7560();

  return sub_2429AE518(a1, v2);
}

unint64_t sub_2429AE41C(uint64_t a1)
{
  v2 = sub_2429B74C0();

  return sub_2429AE5E0(a1, v2);
}

unint64_t sub_2429AE460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2429B76E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2429AE518(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2429B1A40(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245D1D840](v9, a1);
      sub_2429B1A9C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2429AE5E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2429A565C(0, &unk_27ECD71C8, 0x277D44708);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2429B74D0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_2429AE6B4(uint64_t *a1, void *a2)
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

    v9 = sub_2429B7540();

    if (v9)
    {

      sub_2429A565C(0, &unk_27ECD71C8, 0x277D44708);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_2429B7530();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_2429AEBD4(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2429AEDC4(v20 + 1);
    }

    v18 = v8;
    sub_2429AF31C(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_2429A565C(0, &unk_27ECD71C8, 0x277D44708);
  v11 = sub_2429B74C0();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_2429AF3A0(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2429B74D0();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_2429AE8EC(char *a1, char *a2)
{
  v28 = a1;
  v4 = sub_2429B7000();
  v27 = v2;
  v5 = *v2;
  sub_2429B1CC4(&qword_27ECD7218, MEMORY[0x2822294C8]);
  v34 = a2;
  v6 = sub_2429B72F0();
  v33 = v5;
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  v31 = v5 + 56;
  v9 = *(v4 - 8);
  v10 = *(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8;
  v25 = v9;
  v26 = v4 - 8;
  if (v10)
  {
    v29 = ~v7;
    v32 = v9[2];
    v11 = v9[8];
    v30 = v9[9];
    v12 = (v9 + 1);
    while (1)
    {
      MEMORY[0x28223BE20](v6);
      v13 = v30 * v8;
      v32(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), *(v33 + 48) + v30 * v8, v4);
      sub_2429B1CC4(&qword_27ECD7220, MEMORY[0x2822294D0]);
      v14 = sub_2429B7300();
      v15 = *v12;
      v6 = (*v12)(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if (v14)
      {
        break;
      }

      v8 = (v8 + 1) & v29;
      if (((*(v31 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v15(v34, v4);
    v32(v28, *(v33 + 48) + v13, v4);
    return 0;
  }

  else
  {
LABEL_5:
    v16 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = isUniquelyReferenced_nonNull_native;
    v19 = v25;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    v21 = &v24 - v20;
    v22 = v34;
    (v19[2])(&v24 - v20, v34, v4);
    v35 = *v16;
    sub_2429AF510(v21, v8, v18);
    *v16 = v35;
    (v19[4])(v28, v22, v4);
    return 1;
  }
}

uint64_t sub_2429AEBD4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7200, &unk_2429B8690);
    v2 = sub_2429B75B0();
    v15 = v2;
    sub_2429B7520();
    if (sub_2429B7550())
    {
      sub_2429A565C(0, &unk_27ECD71C8, 0x277D44708);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_2429AEDC4(v9 + 1);
        }

        v2 = v15;
        result = sub_2429B74C0();
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

      while (sub_2429B7550());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2429AEDC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7200, &unk_2429B8690);
  result = sub_2429B75A0();
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
      result = sub_2429B74C0();
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

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2429AEFEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7228, &qword_2429B86A8);
  result = sub_2429B75A0();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v1;
    v33 = v3;
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
    v34 = result;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v37 = (v10 - 1) & v10;
LABEL_15:
      v17 = v14 | (v6 << 6);
      v18 = sub_2429B7000();
      v36 = &v32;
      v19 = *(v18 - 8);
      MEMORY[0x28223BE20](v18);
      v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = *(v19 + 72);
      v23 = *(v3 + 48) + v22 * v17;
      v35 = *(v19 + 32);
      v35(v21, v23, v18);
      v5 = v34;
      sub_2429B1CC4(&qword_27ECD7218, MEMORY[0x2822294C8]);
      result = sub_2429B72F0();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      result = (v35)(*(v5 + 48) + v13 * v22, v21, v18);
      ++*(v5 + 16);
      v10 = v37;
      v3 = v33;
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
        v37 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2429AF31C(uint64_t a1, uint64_t a2)
{
  sub_2429B74C0();
  result = sub_2429B7510();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_2429AF3A0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2429AEDC4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2429AF774();
      goto LABEL_12;
    }

    sub_2429AFB08(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_2429B74C0();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_2429A565C(0, &unk_27ECD71C8, 0x277D44708);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_2429B74D0();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2429B7700();
  __break(1u);
}

uint64_t sub_2429AF510(uint64_t a1, unint64_t a2, char a3)
{
  v29 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2429AEFEC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_2429AF8C4();
      goto LABEL_12;
    }

    sub_2429AFD1C(v5 + 1);
  }

  v7 = *v3;
  v8 = sub_2429B7000();
  sub_2429B1CC4(&qword_27ECD7218, MEMORY[0x2822294C8]);
  v9 = sub_2429B72F0();
  v27 = v7 + 56;
  v28 = v7;
  v10 = -1 << *(v7 + 32);
  a2 = v9 & ~v10;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v26 = ~v10;
    v11 = *(v8 - 8);
    v12 = v11[2];
    v13 = v11[8];
    v14 = v11[9];
    v15 = (v11 + 1);
    do
    {
      MEMORY[0x28223BE20](v9);
      v12(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), *(v28 + 48) + v14 * a2, v8);
      sub_2429B1CC4(&qword_27ECD7220, MEMORY[0x2822294D0]);
      v16 = sub_2429B7300();
      v9 = (*v15)(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
      if (v16)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v26;
    }

    while (((*(v27 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v17 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v18 = *(v17 + 48);
  v19 = sub_2429B7000();
  result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * a2, v29, v19);
  v21 = *(v17 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v17 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2429B7700();
  __break(1u);
  return result;
}

id sub_2429AF774()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7200, &unk_2429B8690);
  v2 = *v0;
  v3 = sub_2429B7590();
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

void *sub_2429AF8C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7228, &qword_2429B86A8);
  v2 = *v0;
  v3 = sub_2429B7590();
  v4 = v3;
  if (*(v2 + 16))
  {
    v25 = v1;
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    v9 = *(v2 + 16);
    v26 = v4;
    *(v4 + 16) = v9;
    v10 = 1 << *(v2 + 32);
    v11 = *(v2 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v8 << 6);
        v19 = sub_2429B7000();
        v20 = *(v19 - 8);
        MEMORY[0x28223BE20](v19);
        v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        v24 = *(v23 + 72) * v18;
        (*(v20 + 16))(v22, *(v2 + 48) + v24, v19);
        result = (*(v20 + 32))(*(v26 + 48) + v24, v22, v19);
      }

      while (v13);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v14)
      {

        v1 = v25;
        v4 = v26;
        goto LABEL_21;
      }

      v17 = *(v2 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_2429AFB08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7200, &unk_2429B8690);
  result = sub_2429B75A0();
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_2429B74C0();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t sub_2429AFD1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7228, &qword_2429B86A8);
  result = sub_2429B75A0();
  v5 = result;
  if (*(v3 + 16))
  {
    v34 = v1;
    v35 = v3;
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
    v36 = result;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_15:
      v17 = v14 | (v6 << 6);
      v18 = sub_2429B7000();
      v37 = &v33;
      v19 = *(v18 - 8);
      MEMORY[0x28223BE20](v18);
      v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = v22;
      v24 = *(v3 + 48);
      v25 = *(v23 + 72);
      (*(v19 + 16))(v21, v24 + v25 * v17, v18);
      v5 = v36;
      sub_2429B1CC4(&qword_27ECD7218, MEMORY[0x2822294C8]);
      result = sub_2429B72F0();
      v26 = -1 << *(v5 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      result = (*(v19 + 32))(*(v5 + 48) + v13 * v25, v21, v18);
      ++*(v5 + 16);
      v10 = v38;
      v3 = v35;
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

        v2 = v34;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v38 = (v16 - 1) & v16;
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

uint64_t sub_2429B002C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7238, &qword_2429B86B0);
    v2 = sub_2429B76C0();
    v19 = v2;
    sub_2429B7660();
    v3 = sub_2429B7680();
    if (v3)
    {
      v4 = v3;
      sub_2429A565C(0, &unk_27ECD71C8, 0x277D44708);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_2429A565C(0, &qword_27ECD7230, 0x277CC5A28);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_2429B0584(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_2429B74C0();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_2429B7680();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_2429B0278(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71F0, &qword_2429B8688);
  v45 = v4;
  result = sub_2429B76B0();
  v7 = result;
  if (*(v5 + 16))
  {
    v42 = v2;
    v43 = v5;
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
    v44 = result;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v46 = (v12 - 1) & v12;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = v24[1];
      v48 = *v24;
      v26 = *(v5 + 56) + 40 * v23;
      v28 = *v26;
      v27 = *(v26 + 8);
      v47 = *(v26 + 16);
      v30 = *(v26 + 24);
      v29 = *(v26 + 32);
      if ((v45 & 1) == 0)
      {

        v31 = v28;
        v32 = v27;
        v33 = v30;
      }

      v7 = v44;
      sub_2429B7760();
      sub_2429B7340();
      result = sub_2429B7780();
      v34 = -1 << *(v44 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v16 = v27;
        v17 = v30;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v16 = v27;
      v17 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = (*(v44 + 48) + 16 * v15);
      *v18 = v48;
      v18[1] = v25;
      v19 = *(v44 + 56) + 40 * v15;
      *v19 = v28;
      *(v19 + 8) = v16;
      *(v19 + 16) = v47;
      *(v19 + 24) = v17;
      *(v19 + 32) = v29;
      ++*(v44 + 16);
      v5 = v43;
      v12 = v46;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v46 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_33;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v9, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2429B0584(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7238, &qword_2429B86B0);
  result = sub_2429B76B0();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
        v23 = v21;
      }

      result = sub_2429B74C0();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

id sub_2429B07EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71F0, &qword_2429B8688);
  v31 = v0;
  v1 = *v0;
  v2 = sub_2429B76A0();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = (*(v1 + 48) + 16 * v16);
        v19 = *v18;
        v20 = v18[1];
        v16 *= 40;
        v21 = *(v1 + 56) + v16;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 16);
        v26 = *(v21 + 24);
        v25 = *(v21 + 32);
        v27 = (*(v3 + 48) + v17);
        *v27 = v19;
        v27[1] = v20;
        v28 = *(v3 + 56) + v16;
        *v28 = v22;
        *(v28 + 8) = v23;
        *(v28 + 16) = v24;
        *(v28 + 24) = v26;
        *(v28 + 32) = v25;

        v29 = v22;
        v30 = v23;
        result = v26;
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v31 = v3;
  }

  return result;
}

id sub_2429B09A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7238, &qword_2429B86B0);
  v2 = *v0;
  v3 = sub_2429B76A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_2429B0B00(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7260, &unk_2429B83B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - v3;
  v5 = sub_2429B6E20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 uniqueID];
  if (v9)
  {
    v10 = v9;
    v11 = sub_2429B7320();
    v13 = v12;

    sub_2429B6E10();
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_2429A234C(v4, &qword_27ECD7260, &unk_2429B83B0);
      if (qword_28118FA48 != -1)
      {
        swift_once();
      }

      v14 = sub_2429B72D0();
      __swift_project_value_buffer(v14, qword_28118FA50);

      v15 = sub_2429B72B0();
      v16 = sub_2429B7480();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v34 = v18;
        *v17 = 136315138;
        v19 = sub_2429A091C(v11, v13, &v34);

        *(v17 + 4) = v19;
        _os_log_impl(&dword_24299E000, v15, v16, "event ID %s is not a valid reminder ID", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x245D1DF70](v18, -1, -1);
        MEMORY[0x245D1DF70](v17, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      v24 = sub_2429B6DF0();
      v25 = [objc_opt_self() objectIDWithURL_];

      if (v25)
      {
        (*(v6 + 8))(v8, v5);

        return v25;
      }

      if (qword_28118FA48 != -1)
      {
        swift_once();
      }

      v27 = sub_2429B72D0();
      __swift_project_value_buffer(v27, qword_28118FA50);

      v28 = sub_2429B72B0();
      v29 = sub_2429B7480();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v34 = v31;
        *v30 = 136315138;
        v32 = sub_2429A091C(v11, v13, &v34);

        *(v30 + 4) = v32;
        _os_log_impl(&dword_24299E000, v28, v29, "event ID %s is not a valid reminder ID", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x245D1DF70](v31, -1, -1);
        MEMORY[0x245D1DF70](v30, -1, -1);
      }

      else
      {
      }

      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    if (qword_28118FA48 != -1)
    {
      swift_once();
    }

    v20 = sub_2429B72D0();
    __swift_project_value_buffer(v20, qword_28118FA50);
    v21 = sub_2429B72B0();
    v22 = sub_2429B7480();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_24299E000, v21, v22, "skipping event with nil uniqueID", v23, 2u);
      MEMORY[0x245D1DF70](v23, -1, -1);
    }
  }

  return 0;
}

unint64_t sub_2429B1038()
{
  result = qword_27ECD71B0;
  if (!qword_27ECD71B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD71B0);
  }

  return result;
}

uint64_t sub_2429B108C(uint64_t a1)
{
  v3 = *(sub_2429B6DB0() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = *(v1 + v5);
  v11 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_2429ADEF4;

  return sub_2429A80BC(a1, v6, v7, v8, v9, v1 + v4, v10, v11);
}

uint64_t sub_2429B11F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2429B1FB4;

  return sub_2429AE170(a1, v4);
}

unint64_t sub_2429B12A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7250, &qword_2429B86C8);
    v3 = sub_2429B76D0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2429B1D18(v4, v13, &qword_27ECD7248, &qword_2429B86C0);
      result = sub_2429AE3D8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2429B1D80(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2429B13E4(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2429B7530())
  {
    v4 = sub_2429A565C(0, &unk_27ECD71C8, 0x277D44708);
    v5 = sub_2429B1AF0();
    result = MEMORY[0x245D1D730](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x245D1D8C0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_2429AE6B4(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_2429B7530();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_2429B1524(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7238, &qword_2429B86B0);
    v3 = sub_2429B76D0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_2429AE41C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2429B161C(uint64_t a1)
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
  v11[1] = sub_2429B1FB4;

  return sub_2429AAEA0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2429B1858()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD71D8, &qword_2429B8680);
  v2 = *(sub_2429B7410() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_2429ADCD0(v0 + v3, v4, v1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2429B1958()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD71D8, &qword_2429B8680);
  v2 = *(sub_2429B7410() - 8);
  v3 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_2429ADDB8(v3, v1);
}

unint64_t sub_2429B19EC()
{
  result = qword_27ECD71E8;
  if (!qword_27ECD71E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD71E8);
  }

  return result;
}

unint64_t sub_2429B1AF0()
{
  result = qword_27ECD71F8;
  if (!qword_27ECD71F8)
  {
    sub_2429A565C(255, &unk_27ECD71C8, 0x277D44708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD71F8);
  }

  return result;
}

uint64_t sub_2429B1B58(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2429B7000();
  v4 = sub_2429B1CC4(&qword_27ECD7218, MEMORY[0x2822294C8]);
  result = MEMORY[0x245D1D730](v2, v3, v4);
  v17 = result;
  if (v2)
  {
    v6 = *(v3 - 8);
    v7 = *(v6 + 16);
    v15[1] = v6 + 16;
    v16 = v7;
    v8 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v9 = *(v6 + 64);
    v15[0] = *(v6 + 72);
    v10 = (v6 + 8);
    do
    {
      v11 = MEMORY[0x28223BE20](result);
      v12 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      MEMORY[0x28223BE20](v11);
      v14 = v15 - v13;
      v16(v15 - v13, v8, v3);
      sub_2429AE8EC(v12, v14);
      result = (*v10)(v12, v3);
      v8 += v15[0];
      --v2;
    }

    while (v2);
    return v17;
  }

  return result;
}

uint64_t sub_2429B1CC4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2429B7000();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2429B1D18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_2429B1D80(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2429B1D90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2429ADEF4;

  return sub_2429A8EB0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t getEnumTagSinglePayload for CUIKIReminderEditorImplementation.AlertDisplayerAdapter.CUIKReminderEditorAlertErrors(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CUIKIReminderEditorImplementation.AlertDisplayerAdapter.CUIKReminderEditorAlertErrors(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_2429B1F5C()
{
  result = qword_27ECD7268;
  if (!qword_27ECD7268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD7268);
  }

  return result;
}

char *PendingReminderTracker.__allocating_init(eventStore:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_trackedEvents;
  *&v3[v4] = sub_2429A0180(MEMORY[0x277D84F90]);
  *&v3[OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_eventStore] = a1;
  v11.receiver = v3;
  v11.super_class = v1;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v11, sel_init);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 defaultCenter];
  [v9 addObserver:v8 selector:sel_eventStoreDidChange_ name:*MEMORY[0x277CC5948] object:*&v8[OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_eventStore]];

  return v8;
}

id sub_2429B20B0(void *a1, uint64_t a2)
{
  sub_2429B2AC8(a1, a2, 1, v2);
  result = [a1 objectID];
  if (result)
  {
    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71C0, &qword_2429B85A0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2429B8550;
    *(v6 + 32) = v5;
    v7 = v5;
    sub_2429B3FB8(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2429B224C(void *a1, uint64_t a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  v7 = a3;
  sub_2429B5F4C(v6, v5, 1, v3, v6, v7);
}

void sub_2429B22C4(uint64_t a1, void *a2, void *a3)
{
  if (qword_28118FA48 != -1)
  {
    swift_once();
  }

  v6 = sub_2429B72D0();
  __swift_project_value_buffer(v6, qword_28118FA50);
  v7 = a2;
  v8 = sub_2429B72B0();
  v9 = sub_2429B7470();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    v12 = [v7 uniqueID];
    if (v12)
    {
      v13 = v12;
      v14 = sub_2429B7320();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0xE000000000000000;
    }

    v17 = sub_2429A091C(v14, v16, &v20);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_24299E000, v8, v9, "Saving optimistic result for %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x245D1DF70](v11, -1, -1);
    MEMORY[0x245D1DF70](v10, -1, -1);
  }

  v18 = *(a1 + 24);
  v19 = a3;

  *(a1 + 24) = a3;
}

uint64_t sub_2429B2500(void *a1)
{
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  sub_2429B3518(a1, 0, 0, v1, &v5);
  v2 = v5;
  if (!v5)
  {
    return 0;
  }

  v3 = *(&v6 + 1);

  return v3;
}

void sub_2429B2620(void *a1, char a2)
{
  v5 = [a1 originalItem];
  if (!v5)
  {
    v12 = [a1 uniqueID];
    if (v12)
    {
      v6 = v12;
      v9 = sub_2429B7320();
      v11 = v13;
      goto LABEL_6;
    }

LABEL_10:
    if (qword_28118FA48 != -1)
    {
      swift_once();
    }

    v25 = sub_2429B72D0();
    __swift_project_value_buffer(v25, qword_28118FA50);
    v26 = a1;
    oslog = sub_2429B72B0();
    v27 = sub_2429B7480();

    if (os_log_type_enabled(oslog, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v26;
      *v29 = v26;
      v30 = v26;
      _os_log_impl(&dword_24299E000, oslog, v27, "Ignoring attempt to reset event with no uniqueID (%@)", v28, 0xCu);
      sub_2429A234C(v29, &qword_27ECD71B8, &qword_2429B8598);
      MEMORY[0x245D1DF70](v29, -1, -1);
      MEMORY[0x245D1DF70](v28, -1, -1);
    }

    return;
  }

  v6 = v5;
  v7 = [v5 uniqueID];
  if (!v7)
  {

    goto LABEL_10;
  }

  v8 = v7;
  v9 = sub_2429B7320();
  v11 = v10;

LABEL_6:
  v14 = OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_trackedEvents;
  swift_beginAccess();
  v15 = *(v2 + v14);
  if (*(v15 + 16))
  {

    v16 = sub_2429AE360(v9, v11);
    if (v17)
    {
      v18 = *(v15 + 56) + 40 * v16;
      v19 = *v18;
      v20 = *(v18 + 8);
      v37 = a2;
      v21 = *(v18 + 24);
      v22 = *(v18 + 32);

      v23 = v19;
      osloga = v20;
      v24 = v21;

      swift_beginAccess();
      sub_2429B51B0(v9, v11, v40);
      swift_endAccess();
      sub_2429A234C(v40, &qword_27ECD7290, &unk_2429B87F0);

      sub_2429B58FC(v23, v22, v37 & 1);

      return;
    }
  }

  if (qword_27ECD6FF0 != -1)
  {
    swift_once();
  }

  v31 = sub_2429B72D0();
  __swift_project_value_buffer(v31, qword_27ECD72C8);

  v32 = sub_2429B72B0();
  v33 = sub_2429B7490();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40[0] = v35;
    *v34 = 136446210;
    v36 = sub_2429A091C(v9, v11, v40);

    *(v34 + 4) = v36;
    _os_log_impl(&dword_24299E000, v32, v33, "Ignoring attempt to reset event not tracked with id %{public}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x245D1DF70](v35, -1, -1);
    MEMORY[0x245D1DF70](v34, -1, -1);
  }

  else
  {
  }
}

void sub_2429B2AC8(void *a1, int a2, char a3, uint64_t a4)
{
  v8 = [a1 originalItem];
  v9 = v8;
  if (!v8)
  {
    v16 = [a1 uniqueID];
    if (v16)
    {
      v15 = v16;
      v12 = sub_2429B7320();
      v14 = v17;
      goto LABEL_6;
    }

LABEL_11:
    if (qword_28118FA48 != -1)
    {
      swift_once();
    }

    v32 = sub_2429B72D0();
    __swift_project_value_buffer(v32, qword_28118FA50);
    v33 = a1;
    v85 = sub_2429B72B0();
    v34 = sub_2429B7480();

    if (os_log_type_enabled(v85, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v33;
      *v36 = v33;
      v37 = v33;
      _os_log_impl(&dword_24299E000, v85, v34, "Ignoring pending event with no uniqueID (%@)", v35, 0xCu);
      sub_2429A234C(v36, &qword_27ECD71B8, &qword_2429B8598);
      MEMORY[0x245D1DF70](v36, -1, -1);
      MEMORY[0x245D1DF70](v35, -1, -1);
    }

    return;
  }

  v10 = [v8 uniqueID];
  if (!v10)
  {

    goto LABEL_11;
  }

  v11 = v10;
  v12 = sub_2429B7320();
  v14 = v13;

  v15 = v9;
LABEL_6:

  v18 = OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_trackedEvents;
  swift_beginAccess();
  v19 = *(&v18->isa + a4);
  if (*(v19 + 16))
  {

    v20 = sub_2429AE360(v12, v14);
    if (v21)
    {
      v84 = a2;
      v79 = v18;
      v80 = a4;
      v81 = v14;
      v82 = v12;
      v22 = *(v19 + 56) + 40 * v20;
      v24 = *v22;
      v23 = *(v22 + 8);
      v25 = *(v22 + 16);
      v27 = *(v22 + 24);
      v26 = *(v22 + 32);

      v28 = v24;
      v29 = v23;
      v30 = v27;

      *&v87 = v28;
      *(&v87 + 1) = v29;
      LODWORD(v88) = v25;
      v85 = v27;
      *(&v88 + 1) = v27;
      v89 = v26;
      if (a3)
      {
        v83 = v29;
        v31 = v28;
        v14 = v81;
        a4 = v80;
        v18 = v79;
        a2 = v84;
        goto LABEL_22;
      }

LABEL_27:

      return;
    }
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_27;
  }

  v38 = a1;
  sub_2429B5720(v38, &v90);
  v31 = v90;
  if (v90)
  {
    v82 = v12;
    v26 = v93;
    v25 = v91;
    v87 = v90;
    v83 = *(&v90 + 1);
    LODWORD(v88) = v91;
    v85 = v92;
    *(&v88 + 1) = v92;
    v89 = v93;
LABEL_22:
    v81 = v31;
    v84 = a2;
    if (v25)
    {
      if (v25 == a2)
      {
        v39 = v14;

        v40 = v31;
        v41 = v83;
        v42 = v85;
LABEL_46:
        v70 = swift_beginAccess();
        LODWORD(v88) = v84;
        if (v9)
        {
          if (v26)
          {
            *&v94[0] = a1;
            MEMORY[0x28223BE20](v70);
            v78[2] = v94;

            if ((sub_2429B55F8(sub_2429B6D24, v78, v26) & 1) == 0)
            {
              *&v94[0] = v26;
              v71 = a1;
              MEMORY[0x245D1D630]();
              if (*((*&v94[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v94[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_2429B73A0();
              }

              sub_2429B73C0();
              v89 = *&v94[0];
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71C0, &qword_2429B85A0);
            v72 = swift_allocObject();
            *(v72 + 16) = xmmword_2429B8550;
            *(v72 + 32) = a1;
            v89 = v72;
            v73 = a1;
          }
        }

        v94[0] = v87;
        v94[1] = v88;
        v95 = v89;
        v74 = v87;
        v96 = v89;
        v97 = *(&v88 + 1);
        swift_beginAccess();
        v75 = v74;
        v76 = *(&v74 + 1);
        sub_2429B1D18(&v97, &v86, &qword_27ECD72B0, &qword_2429B8888);
        sub_2429B1D18(&v96, &v86, &qword_27ECD72B8, &unk_2429B8890);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86 = *(&v18->isa + a4);
        *(&v18->isa + a4) = 0x8000000000000000;
        sub_2429B5444(v94, v82, v39, isUniquelyReferenced_nonNull_native);

        *(&v18->isa + a4) = v86;
        swift_endAccess();

        sub_2429A234C(&v97, &qword_27ECD72B0, &qword_2429B8888);
        sub_2429A234C(&v96, &qword_27ECD72B8, &unk_2429B8890);
        return;
      }

      v60 = qword_28118FA48;
      v61 = v31;
      v62 = v83;
      v63 = v85;
      v80 = v26;

      if (v60 != -1)
      {
        swift_once();
      }

      v64 = sub_2429B72D0();
      __swift_project_value_buffer(v64, qword_28118FA50);

      v65 = sub_2429B72B0();
      v66 = sub_2429B7470();

      v79 = v65;
      v67 = v14;
      if (os_log_type_enabled(v65, v66))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *&v94[0] = v69;
        *v68 = 67109634;
        *(v68 + 4) = v25;
        *(v68 + 8) = 1024;
        *(v68 + 10) = a2;
        *(v68 + 14) = 2080;
        v39 = v67;
        *(v68 + 16) = sub_2429A091C(v82, v67, v94);
        _os_log_impl(&dword_24299E000, v79, v66, "Updating tracked sequence number (%d->%d) for %s", v68, 0x18u);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x245D1DF70](v69, -1, -1);
        MEMORY[0x245D1DF70](v68, -1, -1);
      }

      else
      {
        v39 = v14;
      }
    }

    else
    {
      v43 = qword_28118FA48;
      v44 = v31;
      v45 = v83;
      v46 = v85;
      v80 = v26;

      if (v43 != -1)
      {
        swift_once();
      }

      v47 = sub_2429B72D0();
      __swift_project_value_buffer(v47, qword_28118FA50);

      v48 = sub_2429B72B0();
      v49 = sub_2429B7470();

      v50 = v14;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *&v94[0] = v52;
        *v51 = 136446210;
        v39 = v50;
        *(v51 + 4) = sub_2429A091C(v82, v50, v94);
        _os_log_impl(&dword_24299E000, v48, v49, "Now tracking pending reminder with id %{public}s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x245D1DF70](v52, -1, -1);
        MEMORY[0x245D1DF70](v51, -1, -1);
      }

      else
      {
        v39 = v14;
      }
    }

    v26 = v80;
    goto LABEL_46;
  }

  if (qword_28118FA48 != -1)
  {
    swift_once();
  }

  v53 = sub_2429B72D0();
  __swift_project_value_buffer(v53, qword_28118FA50);
  v54 = v38;
  v55 = sub_2429B72B0();
  v56 = sub_2429B7480();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v57 = 138412290;
    *(v57 + 4) = v54;
    *v58 = v54;
    v59 = v54;
    _os_log_impl(&dword_24299E000, v55, v56, "Couldn't create tracked event info for event %@", v57, 0xCu);
    sub_2429A234C(v58, &qword_27ECD71B8, &qword_2429B8598);
    MEMORY[0x245D1DF70](v58, -1, -1);
    MEMORY[0x245D1DF70](v57, -1, -1);
  }
}

void sub_2429B3518(void *a1, int a2, int a3, NSObject *a4, uint64_t *a5)
{
  v10 = [a1 originalItem];
  v11 = v10;
  if (!v10)
  {
    v18 = [a1 uniqueID];
    if (v18)
    {
      v17 = v18;
      LODWORD(v107) = a2;
      v14 = sub_2429B7320();
      v16 = v19;
      goto LABEL_6;
    }

LABEL_11:
    if (qword_28118FA48 != -1)
    {
      swift_once();
    }

    v34 = sub_2429B72D0();
    __swift_project_value_buffer(v34, qword_28118FA50);
    v35 = a1;
    v107 = sub_2429B72B0();
    v36 = sub_2429B7480();

    if (os_log_type_enabled(v107, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v35;
      *v38 = v35;
      v39 = v35;
      _os_log_impl(&dword_24299E000, v107, v36, "Ignoring pending event with no uniqueID (%@)", v37, 0xCu);
      sub_2429A234C(v38, &qword_27ECD71B8, &qword_2429B8598);
      MEMORY[0x245D1DF70](v38, -1, -1);
      MEMORY[0x245D1DF70](v37, -1, -1);
    }

    return;
  }

  v12 = [v10 uniqueID];
  if (!v12)
  {

    goto LABEL_11;
  }

  LODWORD(v107) = a2;
  v13 = v12;
  v14 = sub_2429B7320();
  v16 = v15;

  v17 = v11;
LABEL_6:

  v20 = OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_trackedEvents;
  swift_beginAccess();
  v21 = *(&a4->isa + v20);
  if (*(v21 + 16))
  {

    v22 = sub_2429AE360(v14, v16);
    if (v23)
    {
      v98 = v14;
      v99 = a1;
      v101 = a5;
      v96 = a4;
      v97 = v20;
      v104 = v16;
      v24 = *(v21 + 56) + 40 * v22;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = a3;
      v28 = *(v24 + 16);
      v29 = *(v24 + 24);
      v30 = *(v24 + 32);

      v31 = v25;
      v32 = v26;
      v33 = v29;

      *&v110 = v31;
      *(&v110 + 1) = v32;
      LODWORD(v111) = v28;
      v106 = v29;
      *(&v111 + 1) = v29;
      v112 = v30;
      v103 = v27;
      if ((v27 & 1) == 0)
      {
        v102 = v31;
        v100 = v32;
        v46 = v33;
        v105 = v30;

        a4 = v96;
        v44 = v101;
LABEL_52:
        swift_beginAccess();
        v117[0] = v110;
        v117[1] = v111;
        v80 = *(&v111 + 1);
        v79 = v112;
        v118 = v112;
        v119 = v112;
        v81 = *(&v110 + 1);
        v82 = v111;
        v83 = v110;
        v120[0] = *(&v111 + 1);
        v84 = *v44;
        v85 = v44[1];
        v86 = v44[2];
        v87 = v44[3];
        v88 = v44[4];
        *v44 = v110;
        v44[1] = v81;
        v44[2] = v82;
        v44[3] = v80;
        v44[4] = v79;
        v89 = v83;
        v90 = *(&v83 + 1);
        sub_2429B1D18(v120, v109, &qword_27ECD72B0, &qword_2429B8888);
        sub_2429B1D18(&v119, v109, &qword_27ECD72B8, &unk_2429B8890);
        sub_2429B6C48(v84, v85, v86, v87, v88);
        if (v103)
        {
          v91 = v97;
          swift_beginAccess();
          v92 = v89;
          v93 = v90;
          sub_2429B1D18(v120, &v108, &qword_27ECD72B0, &qword_2429B8888);
          sub_2429B1D18(&v119, &v108, &qword_27ECD72B8, &unk_2429B8890);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v108 = *(&a4->isa + v91);
          *(&a4->isa + v91) = 0x8000000000000000;
          sub_2429B5444(v117, v98, v104, isUniquelyReferenced_nonNull_native);

          *(&a4->isa + v91) = v108;
          swift_endAccess();
        }

        else
        {
        }

        sub_2429A234C(v120, &qword_27ECD72B0, &qword_2429B8888);
        sub_2429A234C(&v119, &qword_27ECD72B8, &unk_2429B8890);
        return;
      }

      v16 = v104;
      a4 = v96;
LABEL_22:
      v104 = v16;
      v105 = v30;
      v100 = v32;
      v102 = v31;
      if (v28)
      {
        if (v28 == v107)
        {

          v41 = v31;
          v42 = v32;
          v43 = v106;
          v44 = v101;
          v45 = v99;
LABEL_43:
          v74 = v107;
LABEL_44:
          v75 = swift_beginAccess();
          LODWORD(v111) = v74;
          if (v11)
          {
            if (v30)
            {
              *&v117[0] = v45;
              MEMORY[0x28223BE20](v75);
              v95[2] = v117;

              if ((sub_2429B55F8(sub_2429B6CA0, v95, v30) & 1) == 0)
              {
                *&v117[0] = v30;
                v76 = v45;
                MEMORY[0x245D1D630]();
                if (*((*&v117[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v117[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_2429B73A0();
                }

                sub_2429B73C0();
                v112 = *&v117[0];
              }
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71C0, &qword_2429B85A0);
              v77 = swift_allocObject();
              *(v77 + 16) = xmmword_2429B8550;
              *(v77 + 32) = v45;
              v112 = v77;
              v78 = v45;
              v105 = 0;
            }
          }

          goto LABEL_52;
        }

        v64 = qword_28118FA48;
        v65 = v31;
        v66 = v32;
        v67 = v106;

        if (v64 != -1)
        {
          swift_once();
        }

        v68 = sub_2429B72D0();
        __swift_project_value_buffer(v68, qword_28118FA50);

        v69 = sub_2429B72B0();
        v70 = sub_2429B7470();

        v44 = v101;
        v45 = v99;
        if (os_log_type_enabled(v69, v70))
        {
          v71 = v16;
          v72 = swift_slowAlloc();
          v96 = v69;
          v73 = swift_slowAlloc();
          *&v117[0] = v73;
          *v72 = 67109634;
          *(v72 + 4) = v28;
          *(v72 + 8) = 1024;
          v74 = v107;
          *(v72 + 10) = v107;
          *(v72 + 14) = 2080;
          *(v72 + 16) = sub_2429A091C(v98, v71, v117);
          _os_log_impl(&dword_24299E000, v96, v70, "Updating tracked sequence number (%d->%d) for %s", v72, 0x18u);
          __swift_destroy_boxed_opaque_existential_0(v73);
          MEMORY[0x245D1DF70](v73, -1, -1);
          MEMORY[0x245D1DF70](v72, -1, -1);

          v30 = v105;
          goto LABEL_44;
        }
      }

      else
      {
        v47 = qword_28118FA48;
        v48 = v31;
        v49 = v32;
        v50 = v106;

        if (v47 != -1)
        {
          swift_once();
        }

        v51 = sub_2429B72D0();
        __swift_project_value_buffer(v51, qword_28118FA50);

        v52 = sub_2429B72B0();
        v53 = sub_2429B7470();

        v44 = v101;
        v45 = v99;
        if (os_log_type_enabled(v52, v53))
        {
          v54 = v16;
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *&v117[0] = v56;
          *v55 = 136446210;
          *(v55 + 4) = sub_2429A091C(v98, v54, v117);
          _os_log_impl(&dword_24299E000, v52, v53, "Now tracking pending reminder with id %{public}s", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v56);
          MEMORY[0x245D1DF70](v56, -1, -1);
          MEMORY[0x245D1DF70](v55, -1, -1);
        }
      }

      v30 = v105;
      goto LABEL_43;
    }
  }

  if ((a3 & 1) == 0)
  {

    return;
  }

  v99 = a1;
  v40 = a1;
  sub_2429B5720(v40, &v113);
  v31 = v113;
  if (v113)
  {
    v101 = a5;
    v97 = v20;
    v98 = v14;
    v103 = a3;
    v30 = v116;
    v28 = v114;
    v32 = *(&v113 + 1);
    v110 = v113;
    LODWORD(v111) = v114;
    v106 = v115;
    *(&v111 + 1) = v115;
    v112 = v116;
    goto LABEL_22;
  }

  if (qword_28118FA48 != -1)
  {
    swift_once();
  }

  v57 = sub_2429B72D0();
  __swift_project_value_buffer(v57, qword_28118FA50);
  v58 = v40;
  v59 = sub_2429B72B0();
  v60 = sub_2429B7480();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v61 = 138412290;
    *(v61 + 4) = v58;
    *v62 = v58;
    v63 = v58;
    _os_log_impl(&dword_24299E000, v59, v60, "Couldn't create tracked event info for event %@", v61, 0xCu);
    sub_2429A234C(v62, &qword_27ECD71B8, &qword_2429B8598);
    MEMORY[0x245D1DF70](v62, -1, -1);
    MEMORY[0x245D1DF70](v61, -1, -1);
  }
}

void sub_2429B3FB8(uint64_t a1)
{
  sub_2429B12A8(MEMORY[0x277D84F90]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7240, &qword_2429B86B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2429B87D0;
  sub_2429B7320();
  sub_2429B7580();
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD72C0, &unk_2429B88A0);
  *(inited + 72) = a1;
  sub_2429B7320();

  sub_2429B7580();
  *(inited + 168) = MEMORY[0x277D83E88];
  *(inited + 144) = 1;
  sub_2429B7320();
  sub_2429B7580();
  v4 = MEMORY[0x277D839B0];
  *(inited + 240) = MEMORY[0x277D839B0];
  *(inited + 216) = 1;
  sub_2429B7320();
  sub_2429B7580();
  *(inited + 312) = v4;
  *(inited + 288) = 0;

  sub_2429B7580();
  *(inited + 384) = v4;
  *(inited + 360) = 1;
  sub_2429B12A8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7248, &qword_2429B86C0);
  swift_arrayDestroy();
  v5 = [objc_opt_self() defaultCenter];
  v6 = *MEMORY[0x277CC5948];
  v7 = *(v1 + OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_eventStore);
  v8 = sub_2429B72E0();

  [v5 postNotificationName:v6 object:v7 userInfo:v8];
}

void sub_2429B4238()
{
  v1 = v0;
  v2 = sub_2429B6D60();
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  v117[0] = qword_27ECD7270;
  v117[1] = off_27ECD7278;

  sub_2429B7580();
  if (!*(v3 + 16) || (v4 = sub_2429AE3D8(v120), (v5 & 1) == 0))
  {

    sub_2429B1A9C(v120);
LABEL_9:
    v118 = 0u;
    v119 = 0u;
    goto LABEL_10;
  }

  sub_2429A0DD4(*(v3 + 56) + 32 * v4, &v118);
  sub_2429B1A9C(v120);

  if (*(&v119 + 1))
  {
    if (swift_dynamicCast() && (v120[0] & 1) != 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_10:
  sub_2429A234C(&v118, &qword_27ECD7298, "F\a");
LABEL_11:
  v6 = OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_trackedEvents;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v10 = *(v7 + 64);
  v9 = v7 + 64;
  v8 = v10;
  v11 = 1 << *(*(v1 + v6) + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v100 = OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_eventStore;
  v105 = *(v1 + v6);
  v106 = (v11 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v14 = 0;
  v99 = v1;
  v103 = v6;
  v104 = v9;
  while (v13)
  {
    v16 = v1;
LABEL_22:
    v18 = __clz(__rbit64(v13)) | (v14 << 6);
    v19 = (*(v105 + 48) + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    v22 = *(v105 + 56) + 40 * v18;
    v23 = *v22;
    v24 = *(v22 + 8);
    v113 = *(v22 + 16);
    v25 = *(v22 + 24);
    v111 = v13;
    v112 = *(v22 + 32);
    swift_bridgeObjectRetain_n();

    v26 = v23;
    v27 = v24;
    v28 = v25;
    v29 = v26;

    v30 = v29;
    v114 = v27;
    v107 = v28;
    v31 = [v30 isTemporary];
    v32 = *(v16 + v100);
    if (v31)
    {
      v1 = v16;
      v33 = v32;
      v34 = sub_2429B7310();
      v35 = [v33 allEventsWithUniqueId:v34 occurrenceDate:0];

      if (v35)
      {
        v101 = v21;
        v109 = v20;
        sub_2429A565C(0, &qword_27ECD7230, 0x277CC5A28);
        v36 = sub_2429B7380();

        if (v36 >> 62)
        {
          v37 = sub_2429B7530();
          if (v37)
          {
LABEL_26:
            v38 = 0;
            do
            {
              if ((v36 & 0xC000000000000001) != 0)
              {
                v39 = MEMORY[0x245D1D8C0](v38, v36);
              }

              else
              {
                if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_73;
                }

                v39 = *(v36 + 8 * v38 + 32);
              }

              v40 = v39;
              v41 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
                goto LABEL_72;
              }

              v42 = [v39 calendar];
              if (!v42)
              {
                goto LABEL_74;
              }

              v43 = v42;
              v44 = [v42 objectID];

              if (v44)
              {
                sub_2429A565C(0, &qword_27ECD72A0, 0x277CC5A60);
                v45 = v114;
                v46 = sub_2429B74D0();

                if (v46)
                {

                  if (qword_28118FA48 != -1)
                  {
                    swift_once();
                  }

                  v81 = sub_2429B72D0();
                  __swift_project_value_buffer(v81, qword_28118FA50);

                  v82 = sub_2429B72B0();
                  v83 = sub_2429B7470();

                  if (os_log_type_enabled(v82, v83))
                  {
                    v84 = swift_slowAlloc();
                    v85 = swift_slowAlloc();
                    v117[0] = v85;
                    *v84 = 136315138;
                    v86 = v101;
                    *(v84 + 4) = sub_2429A091C(v101, v109, v117);
                    _os_log_impl(&dword_24299E000, v82, v83, "Clearing pending state for %s because it now exists", v84, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v85);
                    MEMORY[0x245D1DF70](v85, -1, -1);
                    MEMORY[0x245D1DF70](v84, -1, -1);

                    v15 = v111;
                  }

                  else
                  {

                    v15 = v111;
                    v86 = v101;
                  }

                  sub_2429B58FC(v30, v112, 1);
                  swift_beginAccess();
                  sub_2429B51B0(v86, v109, v120);
                  swift_endAccess();
                  sub_2429A234C(v120, &qword_27ECD7290, &unk_2429B87F0);

                  v1 = v99;
                  swift_bridgeObjectRelease_n();

                  v9 = v104;
                  goto LABEL_15;
                }
              }

              ++v38;
            }

            while (v41 != v37);
          }
        }

        else
        {
          v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v37)
          {
            goto LABEL_26;
          }
        }

        swift_bridgeObjectRelease_n();

        v1 = v99;
        v9 = v104;
        v15 = v111;
      }

      else
      {
        swift_bridgeObjectRelease_n();

        v9 = v104;
        v15 = v111;
      }
    }

    else
    {
      v102 = v21;
      v110 = v20;
      v47 = [v32 publicObjectWithObjectID_];
      v15 = v111;
      if (v47)
      {
        v48 = v47;
        objc_opt_self();
        v49 = swift_dynamicCastObjCClass();
        if (v49)
        {
          v50 = [v49 sequenceNumber];
          if (v113 == v50)
          {

            swift_bridgeObjectRelease_n();
            v9 = v104;
            v1 = v99;
          }

          else
          {
            v67 = v50;
            v68 = v30;
            v9 = v104;
            if (qword_28118FA48 != -1)
            {
              swift_once();
            }

            v69 = sub_2429B72D0();
            __swift_project_value_buffer(v69, qword_28118FA50);
            v98 = v68;

            v70 = v114;
            v71 = v107;

            v72 = sub_2429B72B0();
            v73 = sub_2429B7470();

            v74 = v72;
            v115 = v70;
            v108 = v71;
            if (os_log_type_enabled(v72, v73))
            {
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              v117[0] = v76;
              *v75 = 136315650;
              v77 = v102;
              *(v75 + 4) = sub_2429A091C(v102, v110, v117);
              *(v75 + 12) = 1024;
              *(v75 + 14) = v113;

              v78 = v98;
              *(v75 + 18) = 1024;
              *(v75 + 20) = v67;
              _os_log_impl(&dword_24299E000, v74, v73, "Clearing pending state for %s because it has been updated (%d->%d)", v75, 0x18u);
              __swift_destroy_boxed_opaque_existential_0(v76);
              MEMORY[0x245D1DF70](v76, -1, -1);
              v79 = v75;
              v70 = v115;
              v80 = v99;
              MEMORY[0x245D1DF70](v79, -1, -1);

              v15 = v111;
            }

            else
            {

              v78 = v98;

              v15 = v111;
              v77 = v102;
              v80 = v99;
            }

            sub_2429B58FC(v78, v112, 1);
            swift_beginAccess();
            v87 = v80;
            v88 = sub_2429AE360(v77, v110);
            if (v89)
            {
              v90 = v88;
              v91 = v80;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v93 = *(v80 + v103);
              v116 = *(v87 + v103);
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_2429B07EC();
                v93 = v116;
              }

              v94 = *(v93 + 56) + 40 * v90;
              v95 = *v94;
              v96 = *(v94 + 8);
              v97 = *(v94 + 24);
              sub_2429B5288(v90, v93);
              *(v91 + v103) = v93;

              v87 = v91;
              v9 = v104;
              v15 = v111;
              v70 = v115;
            }

            swift_endAccess();

            swift_bridgeObjectRelease_n();
            v1 = v87;
          }

          goto LABEL_15;
        }
      }

      v51 = v30;
      if (qword_28118FA48 != -1)
      {
        swift_once();
      }

      v52 = sub_2429B72D0();
      __swift_project_value_buffer(v52, qword_28118FA50);

      v53 = sub_2429B72B0();
      v54 = sub_2429B7470();

      v9 = v104;
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v117[0] = v56;
        *v55 = 136315138;
        *(v55 + 4) = sub_2429A091C(v21, v20, v117);
        _os_log_impl(&dword_24299E000, v53, v54, "Clearing pending state for %s because it has been deleted", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x245D1DF70](v56, -1, -1);
        v57 = v55;
        v15 = v111;
        MEMORY[0x245D1DF70](v57, -1, -1);
      }

      v1 = v99;
      sub_2429B58FC(v51, v112, 1);
      swift_beginAccess();
      v58 = sub_2429AE360(v21, v20);
      if (v59)
      {
        v60 = v58;
        v61 = swift_isUniquelyReferenced_nonNull_native();
        v62 = *(v99 + v6);
        if (!v61)
        {
          sub_2429B07EC();
        }

        v63 = *(v62 + 56) + 40 * v60;
        v64 = *v63;
        v65 = *(v63 + 8);
        v66 = *(v63 + 24);
        sub_2429B5288(v60, v62);
        *(v99 + v6) = v62;

        v9 = v104;
        v15 = v111;
        v1 = v99;
      }

      swift_endAccess();
      swift_bridgeObjectRelease_n();
    }

LABEL_15:
    v13 = (v15 - 1) & v15;

    v6 = v103;
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v17 >= v106)
    {

      return;
    }

    v13 = *(v9 + 8 * v17);
    ++v14;
    if (v13)
    {
      v16 = v1;
      v14 = v17;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
}

id PendingReminderTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PendingReminderTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PendingReminderTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2429B50BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD72A8, &qword_2429B8880);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2429B51B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = sub_2429AE360(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2429B07EC();
      v10 = v17;
    }

    v11 = *(v10 + 56) + 40 * v8;
    v16 = *v11;
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    v14 = *(v11 + 32);
    result = sub_2429B5288(v8, v10);
    v15 = v16;
    *v4 = v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0uLL;
  }

  *a3 = v15;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
  return result;
}

uint64_t sub_2429B5288(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2429B7500() + 1) & ~v5;
    do
    {
      sub_2429B7760();

      sub_2429B7340();
      v11 = sub_2429B7780();

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
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
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

uint64_t sub_2429B5444(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2429AE360(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2429B0278(v16, a4 & 1);
      v11 = sub_2429AE360(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_2429B7710();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2429B07EC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;
    v24 = *v22;
    v23 = *(v22 + 8);
    v25 = *(v22 + 24);
    v26 = *(a1 + 16);
    *v22 = *a1;
    *(v22 + 16) = v26;
    *(v22 + 32) = *(a1 + 32);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v28 = (v21[6] + 16 * v11);
  *v28 = a2;
  v28[1] = a3;
  v29 = v21[7] + 40 * v11;
  v30 = *(a1 + 16);
  *v29 = *a1;
  *(v29 + 16) = v30;
  *(v29 + 32) = *(a1 + 32);
  v31 = v21[2];
  v15 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v32;
}

uint64_t sub_2429B55F8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x245D1D8C0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_2429B7530();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void sub_2429B5720(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  v4 = [v3 originalItem];
  if (!v4)
  {
    v6 = [v3 objectID];
    if (v6)
    {
      v13 = [v3 calendar];

      if (v13)
      {
        v9 = [v13 objectID];

        if (v9)
        {
LABEL_18:
          v10 = 0;
          goto LABEL_19;
        }

LABEL_14:
        v6 = 0;
        goto LABEL_18;
      }

      goto LABEL_16;
    }

LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  v5 = v4;

  v6 = [v5 objectID];
  if (!v6)
  {

    goto LABEL_17;
  }

  v7 = [v5 calendar];
  if (!v7)
  {

LABEL_16:
    v6 = 0;
    goto LABEL_17;
  }

  v8 = v7;
  v9 = [v7 objectID];

  if (!v9)
  {

    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71C0, &qword_2429B85A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2429B8550;
  *(v10 + 32) = v3;
  v11 = v6;
  v12 = v9;

LABEL_19:
  *a2 = v6;
  a2[1] = v9;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = v10;
}

uint64_t sub_2429B58FC(void *a1, unint64_t a2, char a3)
{
  v6 = v3;
  v61 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D84F90];
  v60 = MEMORY[0x277D84F90];
  v54 = a1;
  if (a2)
  {
    v8 = a2;
    if (a2 >> 62)
    {
      v9 = sub_2429B7530();
      if (v9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_4:
        if (v9 >= 1)
        {
          v10 = 0;
          v11 = OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_eventStore;
          v12 = v8 & 0xC000000000000001;
          v56 = v9;
          v57 = v8;
          v58 = v8 & 0xC000000000000001;
          while (1)
          {
            if (v12)
            {
              v14 = MEMORY[0x245D1D8C0](v10, v8);
            }

            else
            {
              v14 = *(v8 + 8 * v10 + 32);
            }

            v15 = v14;
            v16 = [v14 objectID];
            if (!v16)
            {
              goto LABEL_16;
            }

            v17 = v16;
            if ([v16 isTemporary])
            {
              break;
            }

LABEL_7:
            if (v9 == ++v10)
            {
              goto LABEL_25;
            }
          }

          v18 = v17;
          MEMORY[0x245D1D630]();
          if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2429B73A0();
          }

          sub_2429B73C0();

          v7 = v60;
LABEL_16:
          v19 = *(v6 + v11);
          v59 = 0;
          if ([v19 removeEvent:v15 span:0 commit:0 error:&v59])
          {
            v13 = v59;
          }

          else
          {
            v20 = v59;
            v21 = sub_2429B6DD0();

            swift_willThrow();
            if (qword_28118FA48 != -1)
            {
              swift_once();
            }

            v22 = sub_2429B72D0();
            __swift_project_value_buffer(v22, qword_28118FA50);
            v23 = v21;
            v24 = sub_2429B72B0();
            v25 = sub_2429B7480();

            if (os_log_type_enabled(v24, v25))
            {
              v26 = v6;
              v27 = swift_slowAlloc();
              v28 = v11;
              v29 = v7;
              v30 = swift_slowAlloc();
              *v27 = 138412290;
              v31 = v21;
              v32 = _swift_stdlib_bridgeErrorToNSError();
              *(v27 + 4) = v32;
              *v30 = v32;
              _os_log_impl(&dword_24299E000, v24, v25, "Couldn't remove temporary event: %@", v27, 0xCu);
              sub_2429A234C(v30, &qword_27ECD71B8, &qword_2429B8598);
              v33 = v30;
              v7 = v29;
              v11 = v28;
              MEMORY[0x245D1DF70](v33, -1, -1);
              v34 = v27;
              v6 = v26;
              v9 = v56;
              v8 = v57;
              MEMORY[0x245D1DF70](v34, -1, -1);
            }

            else
            {
            }

            v12 = v58;
          }

          goto LABEL_7;
        }

        __break(1u);
LABEL_50:
        sub_2429B73A0();
        goto LABEL_28;
      }
    }
  }

LABEL_25:
  v9 = OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_eventStore;
  v35 = *(v6 + OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_eventStore);
  v36 = v54;
  v37 = [v35 publicObjectWithObjectID_];
  if (!v37)
  {

    if ((a3 & 1) == 0)
    {
    }

    goto LABEL_36;
  }

  v4 = v37;
  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  if (!v38)
  {

    goto LABEL_35;
  }

  v5 = v38;
  MEMORY[0x245D1D630]();
  if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_50;
  }

LABEL_28:
  sub_2429B73C0();
  v7 = v60;
  if ([v5 hasEverBeenCommitted])
  {
    [v5 reset];
    goto LABEL_35;
  }

  v39 = *(v6 + v9);
  v59 = 0;
  if ([v39 removeEvent:v5 span:0 commit:0 error:&v59])
  {
    v40 = v59;
LABEL_35:

    if ((a3 & 1) == 0)
    {
    }

    goto LABEL_36;
  }

  v42 = v59;
  v43 = sub_2429B6DD0();

  swift_willThrow();
  if (qword_28118FA48 != -1)
  {
    swift_once();
  }

  v44 = sub_2429B72D0();
  __swift_project_value_buffer(v44, qword_28118FA50);
  v45 = v43;
  v46 = sub_2429B72B0();
  v47 = sub_2429B7480();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = v7;
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412290;
    v51 = v43;
    v52 = _swift_stdlib_bridgeErrorToNSError();
    *(v49 + 4) = v52;
    *v50 = v52;
    _os_log_impl(&dword_24299E000, v46, v47, "Couldn't remove temporary event: %@", v49, 0xCu);
    sub_2429A234C(v50, &qword_27ECD71B8, &qword_2429B8598);
    MEMORY[0x245D1DF70](v50, -1, -1);
    v53 = v49;
    v7 = v48;
    MEMORY[0x245D1DF70](v53, -1, -1);

    if ((a3 & 1) == 0)
    {
    }
  }

  else
  {

    if ((a3 & 1) == 0)
    {
    }
  }

LABEL_36:
  if (v7 >> 62)
  {
    if (sub_2429B7530() < 1)
    {
    }

    goto LABEL_38;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_38:
    sub_2429B3FB8(v7);
  }
}

void sub_2429B5F4C(void *a1, int a2, int a3, NSObject *a4, void *a5, void *a6)
{
  v101 = a4;
  v11 = [a1 originalItem];
  v12 = v11;
  if (!v11)
  {
    v19 = [a1 uniqueID];
    if (v19)
    {
      v18 = v19;
      v100 = a2;
      v15 = sub_2429B7320();
      v17 = v20;
      goto LABEL_6;
    }

LABEL_11:
    if (qword_28118FA48 != -1)
    {
      swift_once();
    }

    v37 = sub_2429B72D0();
    __swift_project_value_buffer(v37, qword_28118FA50);
    v38 = a1;
    v101 = sub_2429B72B0();
    v39 = sub_2429B7480();

    if (os_log_type_enabled(v101, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v38;
      *v41 = v38;
      v42 = v38;
      _os_log_impl(&dword_24299E000, v101, v39, "Ignoring pending event with no uniqueID (%@)", v40, 0xCu);
      sub_2429A234C(v41, &qword_27ECD71B8, &qword_2429B8598);
      MEMORY[0x245D1DF70](v41, -1, -1);
      MEMORY[0x245D1DF70](v40, -1, -1);
    }

    return;
  }

  v13 = [v11 uniqueID];
  if (!v13)
  {

    goto LABEL_11;
  }

  v100 = a2;
  v14 = v13;
  v15 = sub_2429B7320();
  v17 = v16;

  v18 = v12;
LABEL_6:

  v21 = OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_trackedEvents;
  swift_beginAccess();
  v22 = *(&v101->isa + v21);
  if (*(v22 + 16))
  {

    v23 = sub_2429AE360(v15, v17);
    if (v24)
    {
      v92 = v21;
      v95 = a5;
      v96 = a6;
      v97 = v17;
      v93 = v15;
      v25 = *(v22 + 56) + 40 * v23;
      v27 = *v25;
      v26 = *(v25 + 8);
      v28 = *(v25 + 16);
      v30 = *(v25 + 24);
      v29 = *(v25 + 32);

      v31 = v27;
      v32 = v26;
      v33 = v30;

      *&v103 = v31;
      *(&v103 + 1) = v32;
      LODWORD(v104) = v28;
      v99 = v30;
      *(&v104 + 1) = v30;
      v105 = v29;
      v98 = a3;
      if ((a3 & 1) == 0)
      {
        v94 = v31;
        v36 = v32;
        v49 = v33;

        v47 = v98;
        v48 = v97;
        v21 = v92;
LABEL_52:
        swift_beginAccess();
        sub_2429B22C4(&v103, v95, v96);
        swift_endAccess();
        if (v47)
        {
          v110[0] = v103;
          v110[1] = v104;
          v111 = v105;
          v85 = v103;
          v112 = v105;
          v113 = *(&v104 + 1);
          v86 = v101;
          swift_beginAccess();
          v87 = v85;
          v88 = *(&v85 + 1);
          sub_2429B1D18(&v113, &v102, &qword_27ECD72B0, &qword_2429B8888);
          sub_2429B1D18(&v112, &v102, &qword_27ECD72B8, &unk_2429B8890);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v102 = *(&v86->isa + v21);
          *(&v86->isa + v21) = 0x8000000000000000;
          sub_2429B5444(v110, v93, v48, isUniquelyReferenced_nonNull_native);

          *(&v86->isa + v21) = v102;
          swift_endAccess();

          sub_2429A234C(&v113, &qword_27ECD72B0, &qword_2429B8888);
          sub_2429A234C(&v112, &qword_27ECD72B8, &unk_2429B8890);
          return;
        }

        v90 = v94;

        goto LABEL_55;
      }

      v34 = v99;
      v35 = v31;
      v21 = v92;
      v36 = v32;
LABEL_22:
      v99 = v34;
      v94 = v35;
      if (v28)
      {
        if (v28 == v100)
        {

          v44 = v35;
          v45 = v36;
          v46 = v34;
          v47 = v98;
          v48 = v97;
        }

        else
        {
          v68 = qword_28118FA48;
          v69 = v35;
          v92 = v36;
          v70 = v36;
          v71 = v34;
          v72 = v29;

          if (v68 != -1)
          {
            swift_once();
          }

          v73 = sub_2429B72D0();
          __swift_project_value_buffer(v73, qword_28118FA50);
          v74 = v97;

          v75 = sub_2429B72B0();
          v76 = sub_2429B7470();

          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            *&v110[0] = v78;
            *v77 = 67109634;
            *(v77 + 4) = v28;
            *(v77 + 8) = 1024;
            v79 = v100;
            *(v77 + 10) = v100;
            *(v77 + 14) = 2080;
            *(v77 + 16) = sub_2429A091C(v93, v74, v110);
            _os_log_impl(&dword_24299E000, v75, v76, "Updating tracked sequence number (%d->%d) for %s", v77, 0x18u);
            __swift_destroy_boxed_opaque_existential_0(v78);
            MEMORY[0x245D1DF70](v78, -1, -1);
            v80 = v79;
            MEMORY[0x245D1DF70](v77, -1, -1);

            v47 = v98;
            v48 = v74;
            v29 = v72;
            v36 = v92;
            goto LABEL_43;
          }

          v47 = v98;
          v48 = v97;
          v29 = v72;
          v36 = v92;
        }
      }

      else
      {
        v50 = qword_28118FA48;
        v51 = v35;
        v52 = v36;
        v53 = v36;
        v54 = v34;
        v55 = v29;

        if (v50 != -1)
        {
          swift_once();
        }

        v56 = sub_2429B72D0();
        __swift_project_value_buffer(v56, qword_28118FA50);
        v48 = v97;

        v57 = sub_2429B72B0();
        v58 = sub_2429B7470();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          *&v110[0] = v60;
          *v59 = 136446210;
          *(v59 + 4) = sub_2429A091C(v93, v48, v110);
          _os_log_impl(&dword_24299E000, v57, v58, "Now tracking pending reminder with id %{public}s", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v60);
          MEMORY[0x245D1DF70](v60, -1, -1);
          MEMORY[0x245D1DF70](v59, -1, -1);
        }

        v47 = v98;
        v29 = v55;
        v36 = v52;
      }

      v80 = v100;
LABEL_43:
      v81 = swift_beginAccess();
      LODWORD(v104) = v80;
      if (v12)
      {
        if (v29)
        {
          *&v110[0] = a1;
          MEMORY[0x28223BE20](v81);
          v91[2] = v110;

          if (sub_2429B55F8(sub_2429B6D24, v91, v29))
          {
          }

          else
          {
            *&v110[0] = v29;
            v84 = a1;
            MEMORY[0x245D1D630]();
            if (*((*&v110[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v110[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_2429B73A0();
            }

            sub_2429B73C0();
            v105 = *&v110[0];
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71C0, &qword_2429B85A0);
          v82 = swift_allocObject();
          *(v82 + 16) = xmmword_2429B8550;
          *(v82 + 32) = a1;
          v105 = v82;
          v83 = a1;
        }
      }

      goto LABEL_52;
    }
  }

  if ((a3 & 1) == 0)
  {
LABEL_55:

    return;
  }

  v43 = a1;
  sub_2429B5720(v43, &v106);
  if (v106)
  {
    v95 = a5;
    v96 = a6;
    v97 = v17;
    v98 = a3;
    v93 = v15;
    v34 = v108;
    v29 = v109;
    v28 = v107;
    v36 = *(&v106 + 1);
    v103 = v106;
    LODWORD(v104) = v107;
    *(&v104 + 1) = v108;
    v105 = v109;
    v35 = v106;
    goto LABEL_22;
  }

  if (qword_28118FA48 != -1)
  {
    swift_once();
  }

  v61 = sub_2429B72D0();
  __swift_project_value_buffer(v61, qword_28118FA50);
  v62 = v43;
  v63 = sub_2429B72B0();
  v64 = sub_2429B7480();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v65 = 138412290;
    *(v65 + 4) = v62;
    *v66 = v62;
    v67 = v62;
    _os_log_impl(&dword_24299E000, v63, v64, "Couldn't create tracked event info for event %@", v65, 0xCu);
    sub_2429A234C(v66, &qword_27ECD71B8, &qword_2429B8598);
    MEMORY[0x245D1DF70](v66, -1, -1);
    MEMORY[0x245D1DF70](v65, -1, -1);
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2429B6BA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2429B6BF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_2429B6C48(void *result, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}