uint64_t sub_2267B7CCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1CB0, &unk_226874170);
  v37 = v4;
  result = sub_226836AA8();
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_226836C08();
      sub_226836498();
      result = sub_226836C48();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
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

void *sub_2267B7F8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2267B7FAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2267B7FAC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1D40, &qword_226873F50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1D48, &qword_226873F58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2267B80E0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2267B818C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1DA8, qword_226873F70);
    v3 = sub_226836948();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_226836C08();
      MEMORY[0x22AA80040](v10);
      result = sub_226836C48();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

id sub_2267B82EC()
{
  if (qword_27D7A3850 != -1)
  {
    swift_once();
  }

  v0 = qword_27D7A3858;
  v1 = sub_2268363F8();
  v2 = [v0 dataForKey_];

  if (v2)
  {
    v3 = sub_226835148();
    v5 = v4;

    sub_2263B5030(0, &unk_27D7A1D50, 0x277CCAAC8);
    sub_226835CA8();
    v2 = sub_2268366F8();
    sub_2267A1D24(v3, v5);
  }

  return v2;
}

unint64_t sub_2267B8438()
{
  result = qword_27D7A1CB8;
  if (!qword_27D7A1CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7A1CC0, qword_226873D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A1CB8);
  }

  return result;
}

uint64_t sub_2267B84B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_2267B850C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2267B858C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2267B85AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_2267B8630()
{
  result = qword_27D7A1D80;
  if (!qword_27D7A1D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A1D80);
  }

  return result;
}

unint64_t sub_2267B8684()
{
  result = qword_27D7A1D88;
  if (!qword_27D7A1D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A1D88);
  }

  return result;
}

uint64_t sub_2267B86F4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_226836B58() & 1;
  }
}

uint64_t RelevantShortcutCandidate.donationBundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXRelevantShortcutCandidate_donationBundleIdentifier);

  return v1;
}

void *RelevantShortcutCandidate.intent.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXRelevantShortcutCandidate_intent);
  v2 = v1;
  return v1;
}

id RelevantShortcutCandidate.__allocating_init(widgetDescriptor:donationBundleIdentifier:intent:relevantContexts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR___ATXRelevantShortcutCandidate_widgetDescriptor] = a1;
  v12 = &v11[OBJC_IVAR___ATXRelevantShortcutCandidate_donationBundleIdentifier];
  *v12 = a2;
  *(v12 + 1) = a3;
  *&v11[OBJC_IVAR___ATXRelevantShortcutCandidate_intent] = a4;
  *&v11[OBJC_IVAR___ATXRelevantShortcutCandidate_relevantContexts] = a5;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, sel_init);
}

id RelevantShortcutCandidate.init(widgetDescriptor:donationBundleIdentifier:intent:relevantContexts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR___ATXRelevantShortcutCandidate_widgetDescriptor] = a1;
  v6 = &v5[OBJC_IVAR___ATXRelevantShortcutCandidate_donationBundleIdentifier];
  *v6 = a2;
  *(v6 + 1) = a3;
  *&v5[OBJC_IVAR___ATXRelevantShortcutCandidate_intent] = a4;
  *&v5[OBJC_IVAR___ATXRelevantShortcutCandidate_relevantContexts] = a5;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for RelevantShortcutCandidate();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_2267B8AD4@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for RelevantShortcutCandidate();
  *a1 = v3;

  return v3;
}

uint64_t sub_2267B8B8C()
{
  v1 = v0;
  sub_226836968();
  MEMORY[0x22AA7F8E0](0xD000000000000026, 0x80000002268CE580);
  MEMORY[0x22AA7F8E0](*(v1 + OBJC_IVAR___ATXRelevantShortcutCandidate_donationBundleIdentifier), *(v1 + OBJC_IVAR___ATXRelevantShortcutCandidate_donationBundleIdentifier + 8));
  MEMORY[0x22AA7F8E0](0x746567646977203BLL, 0xEA0000000000203ALL);
  v2 = *(v0 + OBJC_IVAR___ATXRelevantShortcutCandidate_widgetDescriptor);
  v3 = [v2 extensionBundleIdentifier];
  v4 = sub_226836408();
  v6 = v5;

  MEMORY[0x22AA7F8E0](v4, v6);

  MEMORY[0x22AA7F8E0](0x203A646E696B203BLL, 0xE800000000000000);
  v7 = [v2 kind];
  v8 = sub_226836408();
  v10 = v9;

  MEMORY[0x22AA7F8E0](v8, v10);

  MEMORY[0x22AA7F8E0](0xD000000000000015, 0x80000002268CE5B0);
  v11 = *(v1 + OBJC_IVAR___ATXRelevantShortcutCandidate_relevantContexts);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1E40, qword_226873F88);
  v13 = MEMORY[0x22AA7F9A0](v11, v12);
  MEMORY[0x22AA7F8E0](v13);

  MEMORY[0x22AA7F8E0](62, 0xE100000000000000);
  return 0;
}

id RelevantShortcutCandidate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RelevantShortcutCandidate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RelevantShortcutCandidate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2267B8EF8()
{
  v1 = OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer____lazy_storage___xpcListener;
  v2 = *(v0 + OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer____lazy_storage___xpcListener);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer____lazy_storage___xpcListener);
  }

  else
  {
    sub_226835EF8();
    v4 = objc_allocWithZone(MEMORY[0x277CCAE98]);
    v5 = sub_2268363F8();

    v6 = [v4 initWithMachServiceName_];

    [v6 setDelegate_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_2267B9010(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2267B907C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_2267B5950;
}

id sub_2267B9160(void *a1)
{
  v3 = sub_226836068();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer____lazy_storage___xpcListener] = 0;
  *&v1[OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer_suggestionStore] = a1;
  v7 = type metadata accessor for ContextualEngineInternalServer();
  v16.receiver = v1;
  v16.super_class = v7;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v16, sel_init);
  v10 = sub_2263B7458();
  (*(v4 + 16))(v6, v10, v3);
  v11 = sub_226836038();
  v12 = sub_2268366E8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2263AA000, v11, v12, "ContextualEngineInternalServer init", v13, 2u);
    MEMORY[0x22AA821D0](v13, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v14 = sub_2267B8EF8();
  [v14 resume];

  return v9;
}

uint64_t sub_2267B93B4(uint64_t (*a1)(void), const char *a2)
{
  v4 = sub_226836068();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2263B7458();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_226836038();
  v10 = a1();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2263AA000, v9, v10, a2, v11, 2u);
    MEMORY[0x22AA821D0](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2267B9594()
{
  v1 = (*((*MEMORY[0x277D85000] & **(*(v0 + 16) + OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer_suggestionStore)) + 0xB0))();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2267B97A8(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_2267B9820, 0, 0);
}

uint64_t sub_2267B9820()
{
  v2 = v0[2];
  v1 = v0[3];
  (*((*MEMORY[0x277D85000] & **&v2[OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer_suggestionStore]) + 0xB0))();

  sub_226835CA8();
  v3 = sub_226836348();

  (v1)[2](v1, v3, 0);

  _Block_release(v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_2267B9940()
{
  v1 = *((*MEMORY[0x277D85000] & **(*(v0 + 16) + OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer_suggestionStore)) + 0xF8);
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_2267B9A70;

  return v4();
}

uint64_t sub_2267B9A70(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2267B9CE4(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_2267B9D5C, 0, 0);
}

uint64_t sub_2267B9D5C()
{
  v1 = *((*MEMORY[0x277D85000] & **(*(v0 + 16) + OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer_suggestionStore)) + 0xF8);
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_2267B9E8C;

  return v4();
}

uint64_t sub_2267B9E8C(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v3)[2](v3, a1, 0);
  _Block_release(v3);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2267B9FDC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2267B9FFC, 0, 0);
}

uint64_t sub_2267B9FFC()
{
  v1 = *((*MEMORY[0x277D85000] & **(v0[3] + OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer_suggestionStore)) + 0x100);
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_2267BA13C;
  v3 = v0[2];

  return v5(v3);
}

uint64_t sub_2267BA13C()
{

  return MEMORY[0x2822009F8](sub_2267BA238, 0, 0);
}

uint64_t sub_2267BA238()
{
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x80))();
  *(v0 + 40) = v2;
  if (v2)
  {
    v3 = v1;
    ObjectType = swift_getObjectType();
    v8 = (*(v3 + 8) + **(v3 + 8));
    v5 = swift_task_alloc();
    *(v0 + 48) = v5;
    *v5 = v0;
    v5[1] = sub_2267BA3D0;

    return v8(ObjectType, v3);
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2267BA3D0()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2267BA50C, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2267BA50C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2267BA6F8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2267BA7BC;

  return sub_2267B9FDC(v6);
}

uint64_t sub_2267BA7BC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = sub_226835018();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_2267BA958()
{
  v1[2] = v0;
  v2 = sub_226836068();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267BAA18, 0, 0);
}

uint64_t sub_2267BAA18()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_2263B7458();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_226836038();
  v6 = sub_2268366E8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2263AA000, v5, v6, "ContextualEngineInternalServer: update()", v7, 2u);
    MEMORY[0x22AA821D0](v7, -1, -1);
  }

  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[2];
  v11 = v0[3];

  v12 = (*(v9 + 8))(v8, v11);
  v14 = (*((*MEMORY[0x277D85000] & *v10) + 0x80))(v12);
  v0[6] = v14;
  if (v14)
  {
    v15 = v13;
    ObjectType = swift_getObjectType();
    v20 = (*(v15 + 8) + **(v15 + 8));
    v17 = swift_task_alloc();
    v0[7] = v17;
    *v17 = v0;
    v17[1] = sub_2267BAC74;

    return v20(ObjectType, v15);
  }

  else
  {

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_2267BAC74()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2267BADB8, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2267BADB8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2267BAF98(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2267BB040;

  return sub_2267BA958();
}

uint64_t sub_2267BB040()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_226835018();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

id sub_2267BB224()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextualEngineInternalServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2267BB2B4(void *a1)
{
  v2 = v1;
  v4 = sub_226836068();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2263B7458();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_226836038();
  v10 = sub_2268366E8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2263AA000, v9, v10, "ContextualEngineInternalServer: incoming connection", v11, 2u);
    MEMORY[0x22AA821D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v12 = sub_226835E88();
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  v20 = sub_2267B9374;
  v21 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_22679BFD8;
  v19 = &block_descriptor_3;
  v13 = _Block_copy(&aBlock);
  [a1 setInterruptionHandler_];
  _Block_release(v13);
  v20 = sub_2267B9394;
  v21 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_22679BFD8;
  v19 = &block_descriptor_79;
  v14 = _Block_copy(&aBlock);
  [a1 setInvalidationHandler_];
  _Block_release(v14);
  [a1 resume];
  return 1;
}

uint64_t sub_2267BB558(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2263BA0A4;

  return v7(a1, a2);
}

uint64_t sub_2267BB670()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2267A1ED0;

  return sub_2267BAF98(v2, v3);
}

uint64_t sub_2267BB71C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2267A1ED0;

  return sub_2267BA6F8(v2, v3, v4);
}

uint64_t sub_2267BB7D0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2267A1ED0;

  return sub_2267B9CE4(v2, v3);
}

uint64_t objectdestroyTm_0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2267BB8BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2263BA0A4;

  return sub_2267B97A8(v2, v3);
}

id ATXCompanionBundleIdMapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ATXCompanionBundleIdMapper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ATXCompanionBundleIdMapper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ATXCompanionBundleIdMapper.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ATXCompanionBundleIdMapper();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2267BBAD4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2268368A8() + 1) & ~v5;
    do
    {
      sub_226836C08();

      sub_226836498();
      v9 = sub_226836C48();

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
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
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

void *_s21AppPredictionInternal26ATXCompanionBundleIdMapperC15generateMapping3forSDyS2SGSaySSG_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  v3 = objc_opt_self();
  v4 = (a1 + 40);
  v5 = MEMORY[0x277D84F98];
  while (1)
  {
    v9 = *(v4 - 1);
    v8 = *v4;

    v10 = sub_2268363F8();
    v11 = [v3 companionBundleIdForBundleId_];

    if (!v11)
    {
      v24 = sub_2263B9740(v9, v8);
      v26 = v25;

      if (v26)
      {
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_2267B78B0();
        }

        sub_2267BBAD4(v24, v5);
      }

      goto LABEL_4;
    }

    v12 = sub_226836408();
    v14 = v13;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_2263B9740(v9, v8);
    v18 = v5[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (v5[3] < v21)
    {
      sub_2267B7CCC(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_2263B9740(v9, v8);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_24;
      }

LABEL_15:
      if (v22)
      {
        goto LABEL_3;
      }

      goto LABEL_16;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v31 = v16;
    sub_2267B78B0();
    v16 = v31;
    if (v22)
    {
LABEL_3:
      v6 = v16;

      v7 = (v5[7] + 16 * v6);
      *v7 = v12;
      v7[1] = v14;

      goto LABEL_4;
    }

LABEL_16:
    v5[(v16 >> 6) + 8] |= 1 << v16;
    v27 = (v5[6] + 16 * v16);
    *v27 = v9;
    v27[1] = v8;
    v28 = (v5[7] + 16 * v16);
    *v28 = v12;
    v28[1] = v14;
    v29 = v5[2];
    v20 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v20)
    {
      goto LABEL_23;
    }

    v5[2] = v30;
LABEL_4:
    v4 += 2;
    if (!--v1)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_226836BA8();
  __break(1u);
  return result;
}

uint64_t sub_2267BBF1C@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR___ATXAppEntityContext_uiContextClient;
  swift_beginAccess();
  sub_2267A1AF8(v1 + v3, &v6, &qword_27D7A1A60, &unk_2268732B0);
  if (v7)
  {
    return sub_2267A1ED8(&v6, a1);
  }

  v5 = sub_2268359D8();
  swift_allocObject();
  result = sub_2268359C8();
  a1[3] = v5;
  a1[4] = &off_2839962C8;
  *a1 = result;
  if (v7)
  {
    return sub_2267A1DC0(&v6, &qword_27D7A1A60, &unk_2268732B0);
  }

  return result;
}

char *sub_2267BBFEC(__int128 *a1)
{
  v3 = [objc_allocWithZone(v1) init];
  sub_2267A1ED8(a1, v7);
  v4 = OBJC_IVAR___ATXAppEntityContext_uiContextClient;
  swift_beginAccess();
  v5 = v3;
  sub_22679CE58(v7, v3 + v4);
  swift_endAccess();

  return v5;
}

uint64_t AppEntityContext.SelectedHydratedAppEntity.entityIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXSelectedHydratedAppEntity_entityIdentifier);

  return v1;
}

uint64_t AppEntityContext.SelectedHydratedAppEntity.entityType.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXSelectedHydratedAppEntity_entityType);

  return v1;
}

uint64_t AppEntityContext.SelectedHydratedAppEntity.displayRepresentation.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXSelectedHydratedAppEntity_displayRepresentation);

  return v1;
}

id sub_2267BC154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = objc_allocWithZone(v7);
  v14 = OBJC_IVAR___ATXSelectedHydratedAppEntity_entityValue;
  v15 = sub_2268361B8();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v13[v14], a1, v15);
  v17 = &v13[OBJC_IVAR___ATXSelectedHydratedAppEntity_entityIdentifier];
  *v17 = a2;
  *(v17 + 1) = a3;
  v18 = &v13[OBJC_IVAR___ATXSelectedHydratedAppEntity_entityType];
  *v18 = a4;
  *(v18 + 1) = a5;
  v19 = &v13[OBJC_IVAR___ATXSelectedHydratedAppEntity_displayRepresentation];
  *v19 = a6;
  *(v19 + 1) = a7;
  v24.receiver = v13;
  v24.super_class = v7;
  v20 = objc_msgSendSuper2(&v24, sel_init);
  (*(v16 + 8))(a1, v15);
  return v20;
}

id sub_2267BC280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = OBJC_IVAR___ATXSelectedHydratedAppEntity_entityValue;
  v15 = sub_2268361B8();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v7[v14], a1, v15);
  v17 = &v7[OBJC_IVAR___ATXSelectedHydratedAppEntity_entityIdentifier];
  *v17 = a2;
  *(v17 + 1) = a3;
  v18 = &v7[OBJC_IVAR___ATXSelectedHydratedAppEntity_entityType];
  *v18 = a4;
  *(v18 + 1) = a5;
  v19 = &v7[OBJC_IVAR___ATXSelectedHydratedAppEntity_displayRepresentation];
  *v19 = a6;
  *(v19 + 1) = a7;
  v23.receiver = v7;
  v23.super_class = type metadata accessor for AppEntityContext.SelectedHydratedAppEntity(0);
  v20 = objc_msgSendSuper2(&v23, sel_init);
  (*(v16 + 8))(a1, v15);
  return v20;
}

id AppEntityContext.SelectedHydratedAppEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t AppEntityContext.OnScreenSelectedContent.selectedText.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXOnScreenSelectedContent_selectedText);

  return v1;
}

id AppEntityContext.OnScreenSelectedContent.__allocating_init(selectedText:selectedAppEntities:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___ATXOnScreenSelectedContent_selectedText];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR___ATXOnScreenSelectedContent_selectedAppEntities] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id AppEntityContext.OnScreenSelectedContent.init(selectedText:selectedAppEntities:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR___ATXOnScreenSelectedContent_selectedText];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR___ATXOnScreenSelectedContent_selectedAppEntities] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for AppEntityContext.OnScreenSelectedContent();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_2267BC6E4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t AppEntityContext.AppEntity.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXAppEntity_bundleID);

  return v1;
}

uint64_t AppEntityContext.AppEntity.type.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXAppEntity_type);

  return v1;
}

uint64_t AppEntityContext.AppEntity.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXAppEntity_identifier);

  return v1;
}

uint64_t AppEntityContext.AppEntity.displayRepresentationTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXAppEntity_displayRepresentationTitle);

  return v1;
}

uint64_t AppEntityContext.AppEntity.displayRepresentationSubtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXAppEntity_displayRepresentationSubtitle);

  return v1;
}

uint64_t AppEntityContext.AppEntity.displayRepresentationAltText.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXAppEntity_displayRepresentationAltText);

  return v1;
}

uint64_t sub_2267BC904@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

id sub_2267BC98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v22 = objc_allocWithZone(v15);
  v23 = &v22[OBJC_IVAR___ATXAppEntity_bundleID];
  *v23 = a1;
  v23[1] = a2;
  v24 = &v22[OBJC_IVAR___ATXAppEntity_type];
  *v24 = a3;
  v24[1] = a4;
  v25 = &v22[OBJC_IVAR___ATXAppEntity_identifier];
  *v25 = a5;
  v25[1] = a6;
  v26 = &v22[OBJC_IVAR___ATXAppEntity_displayRepresentationTitle];
  *v26 = a7;
  v26[1] = a8;
  v27 = &v22[OBJC_IVAR___ATXAppEntity_displayRepresentationSubtitle];
  *v27 = a9;
  v27[1] = a10;
  v28 = &v22[OBJC_IVAR___ATXAppEntity_displayRepresentationAltText];
  *v28 = a11;
  v28[1] = a12;
  *&v22[OBJC_IVAR___ATXAppEntity_displayRepresentationSynonyms] = a13;
  v29 = OBJC_IVAR___ATXAppEntity_appEntityValue;
  v30 = sub_226836168();
  v31 = *(v30 - 8);
  (*(v31 + 16))(&v22[v29], a14, v30);
  v22[OBJC_IVAR___ATXAppEntity_isSelected] = a15;
  v37.receiver = v22;
  v37.super_class = v36;
  v32 = objc_msgSendSuper2(&v37, sel_init);
  (*(v31 + 8))(a14, v30);
  return v32;
}

id sub_2267BCB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v16 = &v15[OBJC_IVAR___ATXAppEntity_bundleID];
  *v16 = a1;
  v16[1] = a2;
  v17 = &v15[OBJC_IVAR___ATXAppEntity_type];
  *v17 = a3;
  v17[1] = a4;
  v18 = &v15[OBJC_IVAR___ATXAppEntity_identifier];
  *v18 = a5;
  v18[1] = a6;
  v19 = &v15[OBJC_IVAR___ATXAppEntity_displayRepresentationTitle];
  *v19 = a7;
  v19[1] = a8;
  v20 = &v15[OBJC_IVAR___ATXAppEntity_displayRepresentationSubtitle];
  *v20 = a9;
  v20[1] = a10;
  v21 = &v15[OBJC_IVAR___ATXAppEntity_displayRepresentationAltText];
  *v21 = a11;
  v21[1] = a12;
  *&v15[OBJC_IVAR___ATXAppEntity_displayRepresentationSynonyms] = a13;
  v22 = OBJC_IVAR___ATXAppEntity_appEntityValue;
  v23 = sub_226836168();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v15[v22], a14, v23);
  v15[OBJC_IVAR___ATXAppEntity_isSelected] = a15;
  v27.receiver = v15;
  v27.super_class = type metadata accessor for AppEntityContext.AppEntity(0);
  v25 = objc_msgSendSuper2(&v27, sel_init);
  (*(v24 + 8))(a14, v23);
  return v25;
}

uint64_t sub_2267BCCC0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2267BCCF8(uint64_t a1)
{
  sub_2267A1AF8(a1, v8, &qword_27D7A1AA0, &qword_2268732C0);
  if (!v9)
  {
    sub_2267A1DC0(v8, &qword_27D7A1AA0, &qword_2268732C0);
    goto LABEL_20;
  }

  type metadata accessor for AppEntityContext.AppEntity(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v5 = 0;
    return v5 & 1;
  }

  v2 = *(v1 + OBJC_IVAR___ATXAppEntity_identifier) == *&v7[OBJC_IVAR___ATXAppEntity_identifier] && *(v1 + OBJC_IVAR___ATXAppEntity_identifier + 8) == *&v7[OBJC_IVAR___ATXAppEntity_identifier + 8];
  if (!v2 && (sub_226836B58() & 1) == 0 || (*(v1 + OBJC_IVAR___ATXAppEntity_bundleID) == *&v7[OBJC_IVAR___ATXAppEntity_bundleID] ? (v3 = *(v1 + OBJC_IVAR___ATXAppEntity_bundleID + 8) == *&v7[OBJC_IVAR___ATXAppEntity_bundleID + 8]) : (v3 = 0), !v3 && (sub_226836B58() & 1) == 0))
  {

    goto LABEL_20;
  }

  if (*(v1 + OBJC_IVAR___ATXAppEntity_type) == *&v7[OBJC_IVAR___ATXAppEntity_type] && *(v1 + OBJC_IVAR___ATXAppEntity_type + 8) == *&v7[OBJC_IVAR___ATXAppEntity_type + 8])
  {

    v5 = 1;
  }

  else
  {
    v5 = sub_226836B58();
  }

  return v5 & 1;
}

uint64_t sub_2267BCF6C(uint64_t a1, uint64_t a2)
{
  sub_226836C58();
  sub_226836498();
  sub_226836498();
  sub_226836498();
  return sub_226836C38();
}

uint64_t sub_2267BD088()
{
  v1 = v0;
  sub_226836968();
  MEMORY[0x22AA7F8E0](0xD000000000000017, 0x80000002268CE980);
  MEMORY[0x22AA7F8E0](*(v1 + OBJC_IVAR___ATXAppEntity_bundleID), *(v1 + OBJC_IVAR___ATXAppEntity_bundleID + 8));
  MEMORY[0x22AA7F8E0](0x203A65707974202CLL, 0xE800000000000000);
  MEMORY[0x22AA7F8E0](*(v1 + OBJC_IVAR___ATXAppEntity_type), *(v1 + OBJC_IVAR___ATXAppEntity_type + 8));
  MEMORY[0x22AA7F8E0](0x656C74697420202CLL, 0xEA0000000000203ALL);
  v2 = *(v0 + OBJC_IVAR___ATXAppEntity_displayRepresentationTitle + 8);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ATXAppEntity_displayRepresentationTitle);
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR___ATXAppEntity_displayRepresentationTitle + 8);
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x22AA7F8E0](v3, v4);

  MEMORY[0x22AA7F8E0](0x746974627573202CLL, 0xEC000000203A656CLL);
  v5 = *(v0 + OBJC_IVAR___ATXAppEntity_displayRepresentationSubtitle + 8);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR___ATXAppEntity_displayRepresentationSubtitle);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = *(v0 + OBJC_IVAR___ATXAppEntity_displayRepresentationSubtitle + 8);
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  MEMORY[0x22AA7F8E0](v6, v7);

  MEMORY[0x22AA7F8E0](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x22AA7F8E0](*(v0 + OBJC_IVAR___ATXAppEntity_identifier), *(v0 + OBJC_IVAR___ATXAppEntity_identifier + 8));
  return 0;
}

uint64_t sub_2267BD3B4(uint64_t a1, uint64_t a2, double a3)
{
  v4[4] = a2;
  v4[5] = v3;
  v4[3] = a1;
  v5 = sub_226835FB8();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267BD478, 0, 0);
}

uint64_t sub_2267BD478()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v12 = *(v0 + 32);
  v5 = objc_opt_self();
  *(v0 + 72) = v5;
  MEMORY[0x22AA7F8E0](v4, v12);
  v6 = sub_2268363F8();

  [v5 logCurrentMemoryFootprint_];

  v8 = sub_2267991D0(v7);
  (*(v2 + 16))(v1, v8, v3);
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v12;
  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  type metadata accessor for AppEntityContext.OnScreenSelectedContent();
  *v10 = v0;
  v10[1] = sub_2267BD620;

  return sub_226798CF8(v0 + 16, "AppEntityContext.fetchOnScreenContext", 37, 2, &unk_2268741A0, v9);
}

uint64_t sub_2267BD620()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_2267BD88C;
  }

  else
  {
    v5 = sub_2267BD7B4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2267BD7B4()
{
  v1 = v0[9];
  v2 = v0[2];
  MEMORY[0x22AA7F8E0](v0[3], v0[4]);
  v3 = sub_2268363F8();

  [v1 logCurrentMemoryFootprint_];

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_2267BD88C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2267BD8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267BD990, 0, 0);
}

uint64_t sub_2267BD990()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_226836608();
  v5 = sub_226836628();
  (*(*(v5 - 8) + 56))(v1, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v2;

  v7 = v2;
  v8 = sub_2267C0858(0, 0, v1, &unk_226874400, v6);
  v0[7] = v8;
  v9 = swift_task_alloc();
  v0[8] = v9;
  v10 = type metadata accessor for AppEntityContext.OnScreenSelectedContent();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1D38, &unk_226874A70);
  *v9 = v0;
  v9[1] = sub_2267BDB18;
  v12 = v0[2];
  v13 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v12, v8, v10, v11, v13);
}

uint64_t sub_2267BDB18()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2267BDC98;
  }

  else
  {
    v2 = sub_2267BDC2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2267BDC2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2267BDC98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2267BDD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a1;
  v6[25] = a4;
  v7 = sub_2268361D8();
  v6[28] = v7;
  v6[29] = *(v7 - 8);
  v6[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2010, &qword_2268743A8);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v8 = sub_226836168();
  v6[34] = v8;
  v6[35] = *(v8 - 8);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v9 = sub_2268361A8();
  v6[38] = v9;
  v6[39] = *(v9 - 8);
  v6[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2070, &qword_226874410);
  v6[41] = swift_task_alloc();
  v10 = sub_2268361B8();
  v6[42] = v10;
  v6[43] = *(v10 - 8);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2078, qword_226874418);
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v11 = sub_226836068();
  v6[53] = v11;
  v6[54] = *(v11 - 8);
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v12 = sub_226835618();
  v6[58] = v12;
  v6[59] = *(v12 - 8);
  v6[60] = swift_task_alloc();
  v13 = sub_226835638();
  v6[61] = v13;
  v6[62] = *(v13 - 8);
  v6[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1F90, &qword_2268741B0);
  v6[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1F98, &qword_2268741B8);
  v6[65] = swift_task_alloc();
  v14 = sub_226835668();
  v6[66] = v14;
  v6[67] = *(v14 - 8);
  v6[68] = swift_task_alloc();
  v15 = sub_226835568();
  v6[69] = v15;
  v6[70] = *(v15 - 8);
  v6[71] = swift_task_alloc();
  v6[72] = swift_task_alloc();
  v6[73] = swift_task_alloc();
  v6[74] = swift_task_alloc();
  v6[75] = swift_task_alloc();
  v16 = sub_2268355F8();
  v6[76] = v16;
  v6[77] = *(v16 - 8);
  v6[78] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267BE2DC, 0, 0);
}

uint64_t sub_2267BE2DC()
{
  v1 = *(v0 + 560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FA0, &qword_2268741C0);
  v2 = *(v1 + 72);
  *(v0 + 632) = v2;
  v3 = *(v1 + 80);
  *(v0 + 752) = v3;
  v4 = (v3 + 32) & ~v3;
  v5 = swift_allocObject();
  *(v0 + 640) = v5;
  *(v5 + 16) = xmmword_226874180;
  v6 = v5 + v4;
  *(v0 + 756) = *MEMORY[0x277D1EA88];
  v7 = *(v1 + 104);
  *(v0 + 648) = v7;
  *(v0 + 656) = (v1 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v6);
  *(v0 + 760) = *MEMORY[0x277D1EB18];
  v7(v6 + v2);
  *(v0 + 176) = MEMORY[0x277D84F90];
  sub_226835818();
  swift_allocObject();
  *(v0 + 664) = sub_226835808();

  v8 = swift_task_alloc();
  *(v0 + 672) = v8;
  *v8 = v0;
  v8[1] = sub_2267BE474;

  return MEMORY[0x2821761F0](v5);
}

uint64_t sub_2267BE474(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 680) = a1;
  *(v3 + 688) = v1;

  if (v1)
  {

    v4 = sub_2267C0460;
  }

  else
  {
    v4 = sub_2267BE5D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2267BE5D8()
{
  v210 = v0;
  *(v0 + 184) = MEMORY[0x277D84FA0];
  v1 = *(v0 + 680);
  v2 = *(v1 + 16);
  if (v2)
  {
    v190 = 0;
    v202 = 0;
    v3 = 0;
    v4 = *(v0 + 616);
    v5 = *(v0 + 536);
    v205 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v0 + 344);
    v207 = (*(v0 + 560) + 8);
    v192 = (v6 + 48);
    v187 = (v6 + 32);
    v7 = (v6 + 8);
    v185 = (v6 + 16);
    v182 = (v6 + 88);
    v8 = *(v0 + 280);
    v180 = (v6 + 96);
    v175 = (v8 + 16);
    v179 = (*(v0 + 232) + 8);
    v174 = (v8 + 8);
    v9 = *(v0 + 312);
    v177 = (v9 + 8);
    v178 = (v9 + 16);
    v199 = (v5 + 48);
    v196 = (v5 + 32);
    v10 = *(v0 + 432);
    v195 = (*(v0 + 496) + 8);
    v194 = (*(v0 + 472) + 8);
    v181 = *MEMORY[0x277D72A38];
    v183 = (v10 + 8);
    v184 = (v10 + 16);
    v176 = *MEMORY[0x277D729F8];
    v193 = (v5 + 8);
    v198 = (v5 + 56);
    v197 = *(v0 + 208);
    v206 = v4;
    v204 = (v4 + 8);
    v188 = MEMORY[0x277D84F90];
    v200 = *(v0 + 680);
    v201 = *(v1 + 16);
    v186 = v7;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v13 = v3;
      v14 = *(v0 + 640);
      ++v3;
      (*(v206 + 16))(*(v0 + 624), v205 + *(v206 + 72) * v13, *(v0 + 608));
      sub_2268355D8();
      v15 = 0;
      v16 = *(v14 + 16);
      do
      {
        if (v16 == v15)
        {
          v11 = *(v0 + 624);
          v12 = *(v0 + 608);
          (*v207)(*(v0 + 600), *(v0 + 552));
          (*v204)(v11, v12);
          goto LABEL_4;
        }

        v17 = v15 + 1;
        sub_2267C7E7C(&qword_27D7A2080, MEMORY[0x277D1EB58], MEMORY[0x277D1EB70]);
        v18 = sub_2268363C8();
        v15 = v17;
      }

      while ((v18 & 1) == 0);
      v203 = v3;
      v19 = *(v0 + 648);
      v20 = *(v0 + 756);
      v21 = *(v0 + 584);
      v22 = *(v0 + 552);
      v23 = *v207;
      (*v207)(*(v0 + 600), v22);
      sub_2268355D8();
      v19(v21, v20, v22);
      sub_2267C7E7C(&qword_27D7A2088, MEMORY[0x277D1EB58], MEMORY[0x277D1EB78]);
      sub_226836538();
      sub_226836538();
      v24 = *(v0 + 592);
      v25 = *(v0 + 584);
      v26 = *(v0 + 552);
      if (*(v0 + 16) == *(v0 + 32) && *(v0 + 24) == *(v0 + 40))
      {
        v23(*(v0 + 584), *(v0 + 552));
        v23(v24, v26);
      }

      else
      {
        v27 = sub_226836B58();
        v23(v25, v26);
        v23(v24, v26);

        if ((v27 & 1) == 0)
        {
          break;
        }
      }

      if (v202)
      {
        break;
      }

      v28 = *(v0 + 512);
      sub_2268355B8();
      v29 = sub_226835688();
      v30 = *(v29 - 8);
      if ((*(v30 + 48))(v28, 1, v29) == 1)
      {
        v31 = *(v0 + 528);
        v32 = *(v0 + 520);
        v33 = *(v0 + 512);
        (*v204)(*(v0 + 624), *(v0 + 608));
        sub_2267A1DC0(v33, &qword_27D7A1F90, &qword_2268741B0);
        (*v198)(v32, 1, 1, v31);
        v2 = v201;
      }

      else
      {
        v48 = *(v0 + 528);
        v49 = *(v0 + 520);
        v50 = *(v0 + 512);
        sub_226835678();
        (*(v30 + 8))(v50, v29);
        v2 = v201;
        if ((*v199)(v49, 1, v48) != 1)
        {
          v55 = *(v0 + 504);
          v57 = *(v0 + 480);
          v56 = *(v0 + 488);
          v58 = *(v0 + 464);
          (*v196)(*(v0 + 544), *(v0 + 520), *(v0 + 528));
          sub_226835658();
          sub_226835628();
          (*v195)(v55, v56);
          v59 = sub_226835608();
          v61 = v60;
          (*v194)(v57, v58);
          v3 = v203;
          if (!v61)
          {
            goto LABEL_43;
          }

          if (v59 == *(v0 + 200) && v61 == v197)
          {
          }

          else
          {
            v72 = sub_226836B58();

            if ((v72 & 1) == 0)
            {
LABEL_43:
              v76 = *(v0 + 624);
              v77 = *(v0 + 608);
              (*v193)(*(v0 + 544), *(v0 + 528));
              (*v204)(v76, v77);
              v202 = 0;
              goto LABEL_4;
            }
          }

          v73 = sub_226835648();
          if (v73[2])
          {
            v75 = v73[4];
            v74 = v73[5];
          }

          else
          {
            v75 = 0;
            v74 = 0;
          }

          v83 = sub_2267C6934(v75, v74);
          v85 = v84;

          if (!v85)
          {
            v96 = *(v0 + 624);
            v97 = *(v0 + 608);
            (*v193)(*(v0 + 544), *(v0 + 528));
            (*v204)(v96, v97);
            v202 = 0;
            v3 = v203;
            goto LABEL_4;
          }

          v86 = *(v0 + 456);
          v87 = *(v0 + 424);
          v88 = sub_2267FBA9C();
          (*v184)(v86, v88, v87);
          v89 = sub_226836038();
          v90 = sub_2268366A8();
          v91 = os_log_type_enabled(v89, v90);
          v191 = *(v0 + 624);
          v92 = *(v0 + 544);
          v169 = *(v0 + 528);
          v171 = *(v0 + 608);
          v93 = *(v0 + 456);
          v94 = *(v0 + 424);
          if (v91)
          {
            v95 = swift_slowAlloc();
            *v95 = 0;
            _os_log_impl(&dword_2263AA000, v89, v90, "Detected onscreen selected text", v95, 2u);
            MEMORY[0x22AA821D0](v95, -1, -1);
          }

          else
          {
          }

          (*v183)(v93, v94);
          (*v193)(v92, v169);
          (*v204)(v191, v171);
          v190 = v83;
          v202 = v85;
          goto LABEL_37;
        }

        (*v204)(*(v0 + 624), *(v0 + 608));
      }

      sub_2267A1DC0(*(v0 + 520), &qword_27D7A1F98, &qword_2268741B8);
      v202 = 0;
LABEL_4:
      if (v3 == v2)
      {

        v161 = v188;
        v160 = v190;
        v162 = v202;
        goto LABEL_73;
      }
    }

    v34 = *(v0 + 760);
    v35 = *(v0 + 648);
    v36 = *(v0 + 568);
    v37 = *(v0 + 552);
    sub_2268355D8();
    v35(v36, v34, v37);
    sub_226836538();
    sub_226836538();
    v38 = *(v0 + 576);
    v39 = *(v0 + 568);
    v40 = *(v0 + 552);
    if (*(v0 + 48) == *(v0 + 64) && *(v0 + 56) == *(v0 + 72))
    {
      v23(*(v0 + 568), *(v0 + 552));
      v23(v38, v40);

      v1 = v200;
    }

    else
    {
      v41 = sub_226836B58();
      v23(v39, v40);
      v23(v38, v40);

      v1 = v200;
      if ((v41 & 1) == 0)
      {
LABEL_36:
        (*v204)(*(v0 + 624), *(v0 + 608));
LABEL_37:
        v2 = v201;
        v3 = v203;
        goto LABEL_4;
      }
    }

    v42 = *(v0 + 416);
    sub_2268355E8();
    v43 = sub_2268355A8();
    v44 = *(v43 - 8);
    v45 = *(v44 + 48);
    v46 = v45(v42, 1, v43);
    v47 = *(v0 + 416);
    if (v46 == 1)
    {
      sub_2267A1DC0(*(v0 + 416), &qword_27D7A2078, qword_226874418);
      goto LABEL_36;
    }

    v51 = sub_226835588();
    v53 = v52;
    v54 = *(v44 + 8);
    v54(v47, v43);
    if (!v53)
    {
      goto LABEL_36;
    }

    if (v51 == *(v0 + 200) && v53 == v197)
    {
    }

    else
    {
      v62 = sub_226836B58();

      if ((v62 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v64 = *(v0 + 328);
    v63 = *(v0 + 336);
    sub_2268355C8();
    if ((*v192)(v64, 1, v63) == 1)
    {
      v65 = *(v0 + 328);
      (*v204)(*(v0 + 624), *(v0 + 608));
      v66 = v65;
      v67 = &qword_27D7A2070;
      v68 = &qword_226874410;
LABEL_47:
      sub_2267A1DC0(v66, v67, v68);
      goto LABEL_37;
    }

    v69 = *(v0 + 408);
    (*v187)(*(v0 + 392), *(v0 + 328), *(v0 + 336));
    sub_2268355E8();
    v70 = v45(v69, 1, v43);
    v71 = *(v0 + 408);
    if (v70 == 1)
    {
      sub_2267A1DC0(*(v0 + 408), &qword_27D7A2078, qword_226874418);
    }

    else
    {
      v78 = sub_226835578();
      v54(v71, v43);
      if (v78)
      {
        goto LABEL_54;
      }
    }

    v79 = *(v0 + 400);
    sub_2268355E8();
    if (v45(v79, 1, v43) == 1)
    {
      v80 = *(v0 + 624);
      v81 = *(v0 + 608);
      v82 = *(v0 + 400);
      (*v186)(*(v0 + 392), *(v0 + 336));
      (*v204)(v80, v81);
      v66 = v82;
      v67 = &qword_27D7A2078;
      v68 = qword_226874418;
      goto LABEL_47;
    }

    v98 = *(v0 + 400);
    v99 = sub_226835598();
    v54(v98, v43);
    if ((v99 & 1) == 0)
    {
      v129 = *(v0 + 624);
      v130 = *(v0 + 608);
      (*v186)(*(v0 + 392), *(v0 + 336));
      (*v204)(v129, v130);
      goto LABEL_37;
    }

LABEL_54:
    v100 = *(v0 + 384);
    v101 = *(v0 + 336);
    v102 = *v185;
    (*v185)(v100, *(v0 + 392), v101);
    v103 = *v182;
    if ((*v182)(v100, v101) == v181)
    {
      v189 = v102;
      v104 = *(v0 + 320);
      v105 = *(v0 + 304);
      v106 = *(v0 + 264);
      (*v180)(*(v0 + 384), *(v0 + 336));
      v107 = swift_projectBox();
      (*v178)(v104, v107, v105);

      v108 = sub_226836138();
      v110 = v109;
      sub_226836188();
      v111 = sub_226836268();
      v112 = *(v111 - 8);
      v113 = (*(v112 + 48))(v106, 1, v111);
      v114 = *(v0 + 264);
      v115 = v186;
      v172 = v110;
      if (v113 == 1)
      {
        sub_2267A1DC0(v114, &qword_27D7A2010, &qword_2268743A8);
        v168 = 0;
        v170 = 0;
      }

      else
      {
        v131 = sub_2268361E8();
        v168 = v132;
        v170 = v131;
        (*(v112 + 8))(v114, v111);
      }

      v133 = *(v0 + 320);
      v134 = *(v0 + 304);
      v135 = *(v0 + 240);
      v136 = *(v0 + 224);
      *(v0 + 160) = 0;
      *(v0 + 168) = 0xE000000000000000;
      sub_226836158();
      sub_226836A48();
      (*v179)(v135, v136);
      v166 = *(v0 + 168);
      v167 = *(v0 + 160);
      v137 = v177;
    }

    else
    {
      v116 = *(v0 + 392);
      v117 = *(v0 + 376);
      v118 = *(v0 + 336);
      v115 = v186;
      v173 = *v186;
      (*v186)(*(v0 + 384), v118);
      v102(v117, v116, v118);
      v3 = v203;
      if (v103(v117, v118) != v176)
      {
        v138 = *(v0 + 624);
        v139 = *(v0 + 608);
        v140 = *(v0 + 376);
        v141 = *(v0 + 336);
        v173(*(v0 + 392), v141);
        (*v204)(v138, v139);
        v173(v140, v141);
        v2 = v201;
        goto LABEL_4;
      }

      v189 = v102;
      v119 = *(v0 + 296);
      v120 = *(v0 + 272);
      v121 = *(v0 + 256);
      (*v180)(*(v0 + 376), *(v0 + 336));
      v122 = swift_projectBox();
      (*v175)(v119, v122, v120);

      v108 = sub_226836138();
      v124 = v123;
      sub_226836148();
      v125 = sub_226836268();
      v126 = *(v125 - 8);
      v127 = (*(v126 + 48))(v121, 1, v125);
      v128 = *(v0 + 256);
      v172 = v124;
      if (v127 == 1)
      {
        sub_2267A1DC0(v128, &qword_27D7A2010, &qword_2268743A8);
        v168 = 0;
        v170 = 0;
      }

      else
      {
        v142 = sub_2268361E8();
        v168 = v143;
        v170 = v142;
        (*(v126 + 8))(v128, v125);
      }

      v133 = *(v0 + 296);
      v134 = *(v0 + 272);
      v144 = *(v0 + 240);
      v145 = *(v0 + 224);
      *(v0 + 128) = 0;
      *(v0 + 136) = 0xE000000000000000;
      sub_226836158();
      sub_226836A48();
      (*v179)(v144, v145);
      v166 = *(v0 + 136);
      v167 = *(v0 + 128);
      v137 = v174;
    }

    (*v137)(v133, v134);
    v146 = *(v0 + 392);
    v147 = *(v0 + 368);
    v148 = *(v0 + 336);

    sub_2267A451C(v209, v108, v172);

    v189(v147, v146, v148);
    v149 = type metadata accessor for AppEntityContext.SelectedHydratedAppEntity(0);
    v150 = objc_allocWithZone(v149);
    v189(&v150[OBJC_IVAR___ATXSelectedHydratedAppEntity_entityValue], v147, v148);
    v151 = &v150[OBJC_IVAR___ATXSelectedHydratedAppEntity_entityIdentifier];
    *v151 = v108;
    v151[1] = v172;
    v152 = &v150[OBJC_IVAR___ATXSelectedHydratedAppEntity_entityType];
    *v152 = v167;
    *(v152 + 1) = v166;
    v153 = &v150[OBJC_IVAR___ATXSelectedHydratedAppEntity_displayRepresentation];
    *v153 = v170;
    v153[1] = v168;
    *(v0 + 144) = v150;
    *(v0 + 152) = v149;
    objc_msgSendSuper2((v0 + 144), sel_init);
    v154 = *v115;
    v155 = (*v115)(v147, v148);
    MEMORY[0x22AA7F970](v155);
    if (*((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_226836588();
    }

    v156 = *(v0 + 624);
    v157 = *(v0 + 608);
    v158 = *(v0 + 392);
    v159 = *(v0 + 336);
    sub_2268365A8();
    v154(v158, v159);
    (*v204)(v156, v157);
    v188 = *(v0 + 176);
    goto LABEL_37;
  }

  v160 = 0;
  v162 = 0;
  v161 = MEMORY[0x277D84F90];
LABEL_73:
  *(v0 + 720) = v161;
  *(v0 + 712) = v161;
  *(v0 + 704) = v162;
  *(v0 + 696) = v160;
  v208 = (*((*MEMORY[0x277D85000] & **(v0 + 216)) + 0x90) + **((*MEMORY[0x277D85000] & **(v0 + 216)) + 0x90));
  v163 = swift_task_alloc();
  *(v0 + 728) = v163;
  *v163 = v0;
  v163[1] = sub_2267BF9E8;
  v164 = *(v0 + 208);
  v165 = *(v0 + 200);

  v208(v165, v164);
}

uint64_t sub_2267BF9E8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 736) = a1;
  *(v3 + 744) = v1;

  if (v1)
  {

    v4 = sub_2267C0658;
  }

  else
  {
    v4 = sub_2267BFB10;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2267BFB10()
{
  v100 = v2;
  v3 = *(v2 + 736);
  v92 = *(v3 + 16);
  if (v92)
  {
    v4 = 0;
    v5 = *(v2 + 344);
    v6 = *(v2 + 280);
    v7 = *(v2 + 184);
    v90 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = v7 + 56;
    v91 = v6;
    v89 = (v6 + 8);
    v85 = *MEMORY[0x277D729F8];
    v84 = (v5 + 104);
    v96 = (v5 + 16);
    v82 = (v5 + 8);
    v83 = (*(v2 + 232) + 8);
    v9 = *(v2 + 720);
    v87 = v7;
    v88 = *(v2 + 736);
    v86 = v7 + 56;
    while (v4 < *(v3 + 16))
    {
      v97 = *(v91 + 16);
      v97(*(v2 + 288), v90 + *(v91 + 72) * v4, *(v2 + 272));
      v10 = sub_226836138();
      v12 = v11;
      if (*(v7 + 16) && (v13 = v10, sub_226836C08(), sub_226836498(), v14 = sub_226836C48(), v15 = -1 << *(v7 + 32), v1 = v14 & ~v15, ((*(v8 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) != 0))
      {
        v0 = ~v15;
        while (1)
        {
          v16 = (*(v7 + 48) + 16 * v1);
          v17 = *v16 == v13 && v16[1] == v12;
          if (v17 || (sub_226836B58() & 1) != 0)
          {
            break;
          }

          v1 = (v1 + 1) & v0;
          if (((*(v8 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        (*v89)(*(v2 + 288), *(v2 + 272));
      }

      else
      {
LABEL_15:
        v95 = v4;
        v19 = *(v2 + 352);
        v18 = *(v2 + 360);
        v20 = *(v2 + 336);
        v21 = *(v2 + 288);
        v22 = *(v2 + 272);
        v23 = *(v2 + 240);
        v24 = *(v2 + 248);
        v25 = *(v2 + 224);

        v26 = swift_allocBox();
        v97(v27, v21, v22);
        *v18 = v26;
        (*v84)(v18, v85, v20);
        v28 = *v96;
        (*v96)(v19, v18, v20);
        v98 = sub_226836138();
        v94 = v29;
        *(v2 + 96) = 0;
        *(v2 + 104) = 0xE000000000000000;
        sub_226836158();
        sub_226836A48();
        (*v83)(v23, v25);
        v30 = *(v2 + 96);
        v93 = *(v2 + 104);
        sub_226836148();
        v31 = sub_226836268();
        v32 = *(v31 - 8);
        v33 = (*(v32 + 48))(v24, 1, v31);
        v34 = *(v2 + 248);
        if (v33 == 1)
        {
          sub_2267A1DC0(*(v2 + 248), &qword_27D7A2010, &qword_2268743A8);
          v35 = 0;
          v36 = 0;
        }

        else
        {
          v35 = sub_2268361E8();
          v36 = v37;
          (*(v32 + 8))(v34, v31);
        }

        v38 = *(v2 + 352);
        v39 = *(v2 + 336);
        v40 = type metadata accessor for AppEntityContext.SelectedHydratedAppEntity(0);
        v41 = objc_allocWithZone(v40);
        v28(&v41[OBJC_IVAR___ATXSelectedHydratedAppEntity_entityValue], v38, v39);
        v42 = &v41[OBJC_IVAR___ATXSelectedHydratedAppEntity_entityIdentifier];
        *v42 = v98;
        v42[1] = v94;
        v43 = &v41[OBJC_IVAR___ATXSelectedHydratedAppEntity_entityType];
        *v43 = v30;
        *(v43 + 1) = v93;
        v44 = &v41[OBJC_IVAR___ATXSelectedHydratedAppEntity_displayRepresentation];
        *v44 = v35;
        v44[1] = v36;
        *(v2 + 112) = v41;
        *(v2 + 120) = v40;
        objc_msgSendSuper2((v2 + 112), sel_init);
        v45 = *v82;
        v46 = (*v82)(v38, v39);
        MEMORY[0x22AA7F970](v46);
        if (*((*(v2 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_226836588();
        }

        v0 = *(v2 + 360);
        v47 = *(v2 + 336);
        v48 = *(v2 + 288);
        v49 = *(v2 + 272);
        v1 = v2 + 176;
        sub_2268365A8();
        v45(v0, v47);
        (*v89)(v48, v49);
        v9 = *(v2 + 176);
        v7 = v87;
        v3 = v88;
        v4 = v95;
        v8 = v86;
      }

      if (++v4 == v92)
      {

        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  v50 = *(v2 + 448);
  v51 = *(v2 + 424);
  v52 = *(v2 + 432);

  v53 = sub_2267FBA9C();
  (*(v52 + 16))(v50, v53, v51);

  v54 = sub_226836038();
  v55 = sub_2268366A8();

  v56 = os_log_type_enabled(v54, v55);
  v57 = *(v2 + 448);
  v58 = *(v2 + 424);
  v59 = *(v2 + 432);
  if (v56)
  {
    v61 = *(v2 + 200);
    v60 = *(v2 + 208);
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v99[0] = v63;
    *v62 = 136315138;
    *(v62 + 4) = sub_2263B4D48(v61, v60, v99);
    _os_log_impl(&dword_2263AA000, v54, v55, "Did not get any on-screen documents for %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x22AA821D0](v63, -1, -1);
    MEMORY[0x22AA821D0](v62, -1, -1);
  }

  (*(v59 + 8))(v57, v58);
  v9 = *(v2 + 720);
LABEL_25:
  v65 = *(v2 + 432);
  v64 = *(v2 + 440);
  v0 = *(v2 + 424);
  v66 = sub_2267FBA9C();
  (*(v65 + 16))(v64, v66, v0);

  v1 = sub_226836038();
  LOBYTE(v0) = sub_2268366A8();
  if (os_log_type_enabled(v1, v0))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    if (!(v9 >> 62))
    {
      v67 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_28:
      v69 = *(v2 + 432);
      v68 = *(v2 + 440);
      v70 = *(v2 + 424);
      *(v3 + 4) = v67;

      _os_log_impl(&dword_2263AA000, v1, v0, "Detected total %ld selected app entities + documents", v3, 0xCu);
      MEMORY[0x22AA821D0](v3, -1, -1);

      (*(v69 + 8))(v68, v70);
      goto LABEL_30;
    }

LABEL_34:
    v67 = sub_2268368D8();
    goto LABEL_28;
  }

  v72 = *(v2 + 432);
  v71 = *(v2 + 440);
  v73 = *(v2 + 424);

  (*(v72 + 8))(v71, v73);

LABEL_30:
  v74 = *(v2 + 704);
  v75 = *(v2 + 696);
  v76 = *(v2 + 192);
  v77 = type metadata accessor for AppEntityContext.OnScreenSelectedContent();
  v78 = objc_allocWithZone(v77);
  v79 = &v78[OBJC_IVAR___ATXOnScreenSelectedContent_selectedText];
  *v79 = v75;
  *(v79 + 1) = v74;
  *&v78[OBJC_IVAR___ATXOnScreenSelectedContent_selectedAppEntities] = v9;
  *(v2 + 80) = v78;
  *(v2 + 88) = v77;
  *v76 = objc_msgSendSuper2((v2 + 80), sel_init);

  v80 = *(v2 + 8);

  return v80();
}

uint64_t sub_2267C0460()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2267C0658()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2267C0858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2267A1AF8(a3, v22 - v9, &unk_27D7A1F30, &qword_226873360);
  v11 = sub_226836628();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2267A1DC0(v10, &unk_27D7A1F30, &qword_226873360);
  }

  else
  {
    sub_226836618();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2268365D8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_226836458() + 32;
      type metadata accessor for AppEntityContext.OnScreenSelectedContent();

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

      sub_2267A1DC0(a3, &unk_27D7A1F30, &qword_226873360);

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

  sub_2267A1DC0(a3, &unk_27D7A1F30, &qword_226873360);
  type metadata accessor for AppEntityContext.OnScreenSelectedContent();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2267C0C90(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_226836408();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2267C0D64;

  return sub_2267BD3B4(v5, v7, v9);
}

uint64_t sub_2267C0D64(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_226835018();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 24), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_2267C0F20(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_226834EE8();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = sub_226835618();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v5 = sub_226835638();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1F90, &qword_2268741B0);
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1F98, &qword_2268741B8);
  v2[22] = swift_task_alloc();
  v6 = sub_226835668();
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  v7 = sub_2268355F8();
  v2[26] = v7;
  v2[27] = *(v7 - 8);
  v2[28] = swift_task_alloc();
  v8 = sub_226836068();
  v2[29] = v8;
  v2[30] = *(v8 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267C1228, 0, 0);
}

uint64_t sub_2267C1228(uint64_t a1)
{
  v25 = v1;
  v2 = v1[32];
  v3 = v1[29];
  v4 = v1[30];
  v5 = sub_2267FBA9C();
  v1[33] = v5;
  v6 = *(v4 + 16);
  v1[34] = v6;
  v1[35] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);

  v7 = sub_226836038();
  v8 = sub_2268366A8();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[32];
  v11 = v1[29];
  v12 = v1[30];
  if (v9)
  {
    v14 = v1[10];
    v13 = v1[11];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_2263B4D48(v14, v13, &v24);
    _os_log_impl(&dword_2263AA000, v7, v8, "Attempting to retrieve text bundleID: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x22AA821D0](v16, -1, -1);
    MEMORY[0x22AA821D0](v15, -1, -1);
  }

  v17 = *(v12 + 8);
  v17(v10, v11);
  v1[36] = v17;
  sub_226835818();
  swift_allocObject();
  v1[37] = sub_226835808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FA0, &qword_2268741C0);
  v18 = sub_226835568();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v1[38] = v21;
  *(v21 + 16) = xmmword_226872800;
  (*(v19 + 104))(v21 + v20, *MEMORY[0x277D1EA88], v18);
  v22 = swift_task_alloc();
  v1[39] = v22;
  *v22 = v1;
  v22[1] = sub_2267C14E4;

  return MEMORY[0x2821761F0](v21);
}

uint64_t sub_2267C14E4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {
    v4 = sub_2267C1BF4;
  }

  else
  {

    v4 = sub_2267C1608;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2267C1608()
{
  v1 = v0[40];
  v57 = *(v1 + 16);
  if (v57)
  {
    v2 = 0;
    v3 = v0[27];
    v56 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v4 = v0[24];
    v55 = (v4 + 48);
    v51 = (v0[19] + 8);
    v52 = (v4 + 32);
    v49 = v0[11];
    v50 = (v0[16] + 8);
    v47 = (v0[13] + 8);
    v53 = (v4 + 8);
    v54 = v0[40];
    v5 = (v4 + 56);
    do
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v6 = v0[28];
      v7 = v0[26];
      v8 = v0[21];
      (*(v3 + 16))(v6, v56 + *(v3 + 72) * v2, v7);
      sub_2268355B8();
      (*(v3 + 8))(v6, v7);
      v9 = sub_226835688();
      v10 = *(v9 - 8);
      v11 = (*(v10 + 48))(v8, 1, v9);
      v13 = v0[22];
      v12 = v0[23];
      v14 = v0[21];
      if (v11 == 1)
      {
        sub_2267A1DC0(v0[21], &qword_27D7A1F90, &qword_2268741B0);
        (*v5)(v13, 1, 1, v12);
      }

      else
      {
        sub_226835678();
        (*(v10 + 8))(v14, v9);
        if ((*v55)(v13, 1, v12) != 1)
        {
          v15 = v0[20];
          v17 = v0[17];
          v16 = v0[18];
          v18 = v0[15];
          (*v52)(v0[25], v0[22], v0[23]);
          sub_226835658();
          sub_226835628();
          (*v51)(v15, v16);
          v19 = sub_226835608();
          v21 = v20;
          v22 = v18;
          v1 = v54;
          (*v50)(v17, v22);
          if (v21)
          {
            if (v19 == v0[10] && v21 == v49)
            {

LABEL_14:
              v24 = sub_226835648();
              if (v24[2])
              {
                v25 = v0[14];
                v48 = v0[12];
                v26 = v24[4];
                v27 = v24[5];

                v0[2] = v26;
                v0[3] = v27;
                v0[4] = 0x43464646755CLL;
                v0[5] = 0xE600000000000000;
                v0[6] = 0;
                v0[7] = 0xE000000000000000;
                sub_22679BAA8();
                v0[8] = sub_226836858();
                v0[9] = v28;
                sub_226834ED8();
                v29 = sub_226836848();
                v31 = v30;
                (*v47)(v25, v48);

                v32 = sub_2268364A8();

                if (v32 > 0)
                {
                  v33 = v29;
                  v35 = v0[34];
                  v36 = v0[33];
                  v37 = v0[31];
                  v38 = v0[29];

                  v35(v37, v36, v38);
                  v39 = sub_226836038();
                  v40 = sub_2268366B8();
                  if (os_log_type_enabled(v39, v40))
                  {
                    v41 = swift_slowAlloc();
                    *v41 = 0;
                    _os_log_impl(&dword_2263AA000, v39, v40, "Detected onscreen selected text", v41, 2u);
                    MEMORY[0x22AA821D0](v41, -1, -1);
                  }

                  v42 = v0[36];
                  v43 = v0[31];
                  v44 = v0[29];
                  v45 = v0[25];
                  v46 = v0[23];

                  v42(v43, v44);
                  (*v53)(v45, v46);
                  goto LABEL_20;
                }

                v1 = v54;
              }

              else
              {
              }
            }

            else
            {
              v23 = sub_226836B58();

              if (v23)
              {
                goto LABEL_14;
              }
            }
          }

          (*v53)(v0[25], v0[23]);
          goto LABEL_5;
        }
      }

      sub_2267A1DC0(v0[22], &qword_27D7A1F98, &qword_2268741B8);
LABEL_5:
      ++v2;
    }

    while (v57 != v2);
  }

  v33 = 0;
  v31 = 0;
LABEL_20:

  v34 = v0[1];

  v34(v33, v31);
}

uint64_t sub_2267C1BF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2267C1CE8()
{
  v0 = sub_226835AD8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v53 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v52 = &v45 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FA8, &qword_2268741C8);
  v5 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v60 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = &v45 - v8;
  v9 = sub_2268357E8();
  v10 = *(v9 - 8);
  v56 = v9;
  v57 = v10;
  MEMORY[0x28223BE20](v9);
  v59 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FB0, &qword_2268741D0);
  v13 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_226872800;
  v15 = *MEMORY[0x277D1D430];
  v49 = *(v1 + 104);
  v50 = v1 + 104;
  v49(v14 + v13, v15, v0);
  v16 = sub_2267C6B84(v14);
  swift_setDeallocating();
  v17 = *(v1 + 8);
  v54 = v1 + 8;
  v55 = v0;
  v48 = v17;
  v17(v14 + v13, v0);
  swift_deallocClassInstance();
  v62 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FB8, &unk_2268741D8);
  v18 = *(v5 + 72);
  v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v20 = 40;
  v47 = swift_allocObject();
  v21 = v47 + v19;
  sub_226835768();
  sub_226835698();
  sub_226835768();
  sub_226835698();
  sub_226835768();
  sub_226835698();
  sub_226835768();
  sub_226835698();
  sub_226835798();
  v22 = v56;
  v24 = v57 + 56;
  v23 = *(v57 + 56);
  v23(v21 + 4 * v18, 0, 1, v56);
  sub_226835768();
  sub_226835698();
  sub_226835768();
  sub_226835698();
  sub_226835778();
  v23(v21 + 7 * v18, 0, 1, v22);
  sub_226835768();
  sub_226835698();
  sub_226835768();
  sub_226835698();
  sub_226835748();
  v23(v21 + 10 * v18, 0, 1, v22);
  sub_226835768();
  sub_226835698();
  sub_226835768();
  sub_226835698();
  sub_226835768();
  sub_226835698();
  sub_2268356C8();
  v23(v21 + 14 * v18, 0, 1, v22);
  sub_2268357A8();
  v23(v21 + 15 * v18, 0, 1, v22);
  sub_2268357B8();
  v23(v21 + 16 * v18, 0, 1, v22);
  sub_226835768();
  sub_226835698();
  sub_2268356A8();
  v23(v21 + 18 * v18, 0, 1, v22);
  sub_2268356B8();
  v23(v21 + 19 * v18, 0, 1, v22);
  v25 = v23;
  sub_226835768();
  sub_226835698();
  sub_226835768();
  sub_226835698();
  sub_226835768();
  sub_226835698();
  sub_2268357C8();
  v26 = v56;
  v58 = v25;
  v25(v21 + 23 * v18, 0, 1, v56);
  sub_226835708();
  v25(v21 + 24 * v18, 0, 1, v26);
  sub_2268356D8();
  v27 = v24;
  v28 = v58;
  v58(v21 + 25 * v18, 0, 1, v26);
  sub_2268356F8();
  v28(v21 + 26 * v18, 0, 1, v26);
  v46 = v27;
  sub_226835728();
  v28(v21 + 27 * v18, 0, 1, v26);
  sub_226835718();
  v28(v21 + 28 * v18, 0, 1, v26);
  sub_226835768();
  sub_226835698();
  sub_226835768();
  sub_226835698();
  sub_226835788();
  v28(v21 + 31 * v18, 0, 1, v26);
  sub_226835768();
  sub_226835698();
  sub_226835738();
  v28(v21 + 33 * v18, 0, 1, v26);
  sub_226835768();
  sub_226835698();
  sub_2268357D8();
  v28(v21 + 35 * v18, 0, 1, v26);
  sub_2268356E8();
  v28(v21 + 36 * v18, 0, 1, v26);
  sub_226835768();
  sub_226835698();
  sub_226835758();
  v29 = v56;
  (v58)(v21 + 38 * v18, 0, 1);
  v58 = v18;
  sub_226835768();
  sub_226835698();
  v30 = (v57 + 48);
  v31 = MEMORY[0x277D84F90];
  v32 = (v57 + 32);
  v46 = v21;
  v33 = v21;
  do
  {
    v34 = v61;
    sub_2267A1AF8(v33, v61, &qword_27D7A1FA8, &qword_2268741C8);
    v35 = v34;
    v36 = v60;
    sub_2267C6EA4(v35, v60);
    if ((*v30)(v36, 1, v29) == 1)
    {
      sub_2267A1DC0(v36, &qword_27D7A1FA8, &qword_2268741C8);
    }

    else
    {
      v37 = v36;
      v38 = *v32;
      (*v32)(v59, v37, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_2267C589C(0, *(v31 + 2) + 1, 1, v31, &qword_27D7A2050, &qword_2268743E0, MEMORY[0x277D85578]);
      }

      v40 = *(v31 + 2);
      v39 = *(v31 + 3);
      if (v40 >= v39 >> 1)
      {
        v31 = sub_2267C589C((v39 > 1), v40 + 1, 1, v31, &qword_27D7A2050, &qword_2268743E0, MEMORY[0x277D85578]);
      }

      *(v31 + 2) = v40 + 1;
      v38(&v31[((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v40], v59, v29);
    }

    v33 += v58;
    --v20;
  }

  while (v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v41 = v53;
  *v53 = v31;
  v42 = v55;
  v49(v41, *MEMORY[0x277D1D438], v55);
  v43 = v52;
  sub_2267C5A78(v52, v41);
  v48(v43, v42);
  return v62;
}

void *sub_2267C2A08(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v13 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = sub_226835B28();
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v14, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v13;
        }

        if (v14)
        {
          break;
        }

        if (v8 == v6)
        {
          return v13;
        }
      }

      MEMORY[0x22AA7F970](result);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_226836588();
      }

      sub_2268365A8();
      result = v15;
    }

    while (v8 != v6);
  }

  return result;
}

uint64_t sub_2267C2B88(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_226836068();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FC0, &qword_2268741E8);
  v3[14] = swift_task_alloc();
  v5 = sub_226836168();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v6 = sub_2268358E8();
  v3[20] = v6;
  v3[21] = *(v6 - 8);
  v3[22] = swift_task_alloc();
  v7 = sub_226835978();
  v3[23] = v7;
  v3[24] = *(v7 - 8);
  v3[25] = swift_task_alloc();
  v8 = sub_226835918();
  v3[26] = v8;
  v3[27] = *(v8 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v9 = sub_226835938();
  v3[30] = v9;
  v3[31] = *(v9 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FC8, &qword_2268741F0);
  v3[34] = swift_task_alloc();
  v10 = sub_226835988();
  v3[35] = v10;
  v3[36] = *(v10 - 8);
  v3[37] = swift_task_alloc();
  v11 = sub_226835B48();
  v3[38] = v11;
  v3[39] = *(v11 - 8);
  v3[40] = swift_task_alloc();
  v12 = sub_226835B68();
  v3[41] = v12;
  v3[42] = *(v12 - 8);
  v3[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267C2FCC, 0, 0);
}

uint64_t sub_2267C2FCC()
{
  v1 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FD0, &qword_2268741F8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_226872800;
  sub_226835B38();
  v0[7] = v2;
  sub_2267C7E7C(&qword_27D7A1FD8, MEMORY[0x277D1D4E0], MEMORY[0x277D1D4F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FE0, &qword_226874200);
  sub_2267A0610(&qword_27D7A1FE8, &qword_27D7A1FE0, &qword_226874200, MEMORY[0x277D83970]);
  v3 = sub_226836888();
  v4 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x88))(v3);
  v5 = sub_226835B58();
  (*((*v4 & *v1) + 0x70))(v5);
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v11 = (*(v7 + 24) + **(v7 + 24));
  v8 = swift_task_alloc();
  v0[44] = v8;
  *v8 = v0;
  v8[1] = sub_2267C3284;
  v9 = v0[43];

  return v11(v9, v6, v7);
}

uint64_t sub_2267C3284(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {
    v4 = sub_2267C3CD4;
  }

  else
  {
    v4 = sub_2267C3398;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2267C3398()
{
  v101 = v0;
  v1 = v0[45];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[36];
    v4 = *(v3 + 16);
    v3 += 16;
    v96 = v4;
    v5 = v0[21];
    v6 = v0[45] + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v97 = (v0[27] + 8);
    v98 = (v0[31] + 8);
    v91 = (v5 + 88);
    v95 = (v3 - 8);
    v7 = v0[24];
    v88 = (v5 + 96);
    v89 = (v5 + 8);
    v87 = (v7 + 32);
    v8 = v0[16];
    v86 = (v8 + 48);
    v85 = (v8 + 32);
    v9 = v0[12];
    v80 = (v9 + 16);
    v81 = v8;
    v83 = (v8 + 8);
    v84 = (v8 + 16);
    v79 = (v9 + 8);
    v93 = v0[9];
    v94 = *(v3 + 56);
    v90 = *MEMORY[0x277D1D368];
    v92 = MEMORY[0x277D84F90];
    v82 = (v7 + 8);
    while (1)
    {
      v99 = v2;
      v10 = v0[34];
      v11 = v0[33];
      v13 = v0[29];
      v12 = v0[30];
      v14 = v0[26];
      v96(v0[37], v6, v0[35]);
      sub_226835948();
      sub_226835928();
      v15 = *v98;
      (*v98)(v11, v12);
      sub_2268358F8();
      v16 = *v97;
      (*v97)(v13, v14);
      v17 = sub_226835558();
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v10, 1, v17) == 1)
      {
        sub_2267A1DC0(v0[34], &qword_27D7A1FC8, &qword_2268741F0);
      }

      else
      {
        v19 = v0[34];
        v20 = sub_226835548();
        v22 = v21;
        (*(v18 + 8))(v19, v17);
        if (v22)
        {
          if (v20 == v0[8] && v22 == v93)
          {
          }

          else
          {
            v23 = sub_226836B58();

            if ((v23 & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v24 = v0[32];
          v25 = v0[30];
          v26 = v0[28];
          v27 = v0[26];
          sub_226835948();
          sub_226835928();
          v15(v24, v25);
          v28 = sub_226835908();
          v16(v26, v27);
          if (v28)
          {
            v29 = v0[22];
            v30 = v0[20];
            sub_226835958();
            v31 = (*v91)(v29, v30);
            v32 = v0[22];
            v33 = v0[20];
            if (v31 == v90)
            {
              v34 = v0[25];
              v35 = v0[23];
              v37 = v0[14];
              v36 = v0[15];
              (*v88)(v0[22], v0[20]);
              (*v87)(v34, v32, v35);
              sub_226835968();
              if ((*v86)(v37, 1, v36) == 1)
              {
                v38 = v0[37];
                v39 = v0[35];
                v40 = v0[14];
                (*v82)(v0[25], v0[23]);
                (*v95)(v38, v39);
                sub_2267A1DC0(v40, &qword_27D7A1FC0, &qword_2268741E8);
              }

              else
              {
                v41 = v0[18];
                v42 = v0[19];
                v43 = v0[15];
                v44 = v0[13];
                v45 = v0[11];
                v78 = *v85;
                (*v85)(v42, v0[14], v43);
                v46 = sub_2267FBA9C();
                (*v80)(v44, v46, v45);
                v47 = *v84;
                (*v84)(v41, v42, v43);

                v48 = sub_226836038();
                v49 = sub_2268366B8();

                v50 = os_log_type_enabled(v48, v49);
                v51 = v0[18];
                v52 = v0[15];
                v53 = v0[13];
                v54 = v0[11];
                if (v50)
                {
                  v76 = v0[11];
                  v55 = v0[8];
                  v56 = v0[9];
                  log = v48;
                  v75 = v0[13];
                  v57 = swift_slowAlloc();
                  v58 = swift_slowAlloc();
                  v100[0] = v58;
                  *v57 = 136315394;
                  *(v57 + 4) = sub_2263B4D48(v55, v56, v100);
                  *(v57 + 12) = 2080;
                  v59 = sub_226836138();
                  v61 = v60;
                  v77 = *v83;
                  (*v83)(v51, v52);
                  v62 = sub_2263B4D48(v59, v61, v100);

                  *(v57 + 14) = v62;
                  _os_log_impl(&dword_2263AA000, log, v49, "Retrieved document entity for bundleID: %s with identifier: %s", v57, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x22AA821D0](v58, -1, -1);
                  MEMORY[0x22AA821D0](v57, -1, -1);

                  (*v79)(v75, v76);
                }

                else
                {

                  v77 = *v83;
                  (*v83)(v51, v52);
                  (*v79)(v53, v54);
                }

                v47(v0[17], v0[19], v0[15]);
                v63 = v92;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v63 = sub_2267C589C(0, v92[2] + 1, 1, v92, &qword_27D7A2048, &qword_2268743D8, MEMORY[0x277D728B0]);
                }

                v65 = v63[2];
                v64 = v63[3];
                if (v65 >= v64 >> 1)
                {
                  v92 = sub_2267C589C((v64 > 1), v65 + 1, 1, v63, &qword_27D7A2048, &qword_2268743D8, MEMORY[0x277D728B0]);
                }

                else
                {
                  v92 = v63;
                }

                v66 = v0[37];
                v67 = v0[35];
                v68 = v0[25];
                v69 = v0[23];
                v70 = v0[17];
                v71 = v0[15];
                v77(v0[19], v71);
                (*v82)(v68, v69);
                (*v95)(v66, v67);
                v92[2] = v65 + 1;
                v78(v92 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v65, v70, v71);
              }
            }

            else
            {
              (*v95)(v0[37], v0[35]);
              (*v89)(v32, v33);
            }

            goto LABEL_15;
          }
        }
      }

LABEL_14:
      (*v95)(v0[37], v0[35]);
LABEL_15:
      v6 += v94;
      v2 = v99 - 1;
      if (v99 == 1)
      {

        goto LABEL_28;
      }
    }
  }

  v92 = MEMORY[0x277D84F90];
LABEL_28:
  (*(v0[42] + 8))(v0[43], v0[41]);

  v72 = v0[1];

  return v72(v92);
}

uint64_t sub_2267C3CD4()
{
  (*(v0[42] + 8))(v0[43], v0[41]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2267C3E20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24 = a2;
  v25 = a1;
  v4 = sub_226835A68();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FF0, qword_226874208);
  v8 = sub_226835AE8();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v26 = xmmword_226872800;
  *(v11 + 16) = xmmword_226872800;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x277D1D468], v8);
  sub_2267C6F14(v11);
  swift_setDeallocating();
  v12 = v11 + v10;
  v13 = v24;
  (*(v9 + 8))(v12, v8);
  v14 = v25;
  swift_deallocClassInstance();
  sub_226835A88();
  swift_allocObject();
  v15 = sub_226835A38();
  (*(v5 + 104))(v7, *MEMORY[0x277D1D408], v4);
  sub_226835A78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1C60, &qword_226873D20);
  inited = swift_initStackObject();
  *(inited + 16) = v26;
  *(inited + 32) = v14;
  *(inited + 40) = v13;

  sub_2267A1368(inited);
  swift_setDeallocating();
  sub_2267A0598(inited + 32);
  v17 = sub_226835A58();
  (*((*MEMORY[0x277D85000] & *v3) + 0x70))(v27, v17);
  v18 = v28;
  v19 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v20 = v30;
  v21 = (*(v19 + 16))(v15, v18, v19);
  if (v20)
  {
  }

  else
  {
    v22 = v21;

    v14 = sub_2267C7234(v22, v14, v13);
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  return v14;
}

uint64_t sub_2267C4180@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v181 = a3;
  v184 = a2;
  v188 = a1;
  v193 = a4;
  v182 = sub_226835BA8();
  isa = v182[-1].isa;
  MEMORY[0x28223BE20](v182);
  v179 = &v155[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2008, &qword_2268743A0);
  MEMORY[0x28223BE20](v5 - 8);
  v175 = &v155[-v6];
  v166 = sub_226836208();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v164 = &v155[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2010, &qword_2268743A8);
  MEMORY[0x28223BE20](v8 - 8);
  v178 = &v155[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v177 = &v155[-v11];
  MEMORY[0x28223BE20](v12);
  v173 = &v155[-v13];
  MEMORY[0x28223BE20](v14);
  v171 = &v155[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2018, &qword_2268743B0);
  MEMORY[0x28223BE20](v16 - 8);
  v172 = &v155[-v17];
  v163 = sub_226836238();
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v161 = &v155[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v189 = sub_226836068();
  v185 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v168 = &v155[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v187 = &v155[-v21];
  v22 = sub_2268361D8();
  v23 = *(v22 - 8);
  v190 = v22;
  v191 = v23;
  MEMORY[0x28223BE20](v22);
  v174 = &v155[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v186 = &v155[-v26];
  MEMORY[0x28223BE20](v27);
  v183 = &v155[-v28];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FC0, &qword_2268741E8);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v155[-v30];
  v32 = sub_226836168();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v167 = &v155[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v35);
  v176 = &v155[-v36];
  MEMORY[0x28223BE20](v37);
  v170 = &v155[-v38];
  MEMORY[0x28223BE20](v39);
  v169 = &v155[-v40];
  MEMORY[0x28223BE20](v41);
  v192 = &v155[-v42];
  v43 = sub_226835858();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = &v155[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = sub_226835AA8();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v50 = &v155[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226835B18();
  if ((*(v44 + 88))(v46, v43) != *MEMORY[0x277D1D2E8])
  {
    result = (*(v44 + 8))(v46, v43);
    goto LABEL_5;
  }

  (*(v44 + 96))(v46, v43);
  (*(v48 + 32))(v50, v46, v47);
  sub_226835A98();
  v51 = v47;
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    (*(v48 + 8))(v50, v47);
    result = sub_2267A1DC0(v31, &qword_27D7A1FC0, &qword_2268741E8);
LABEL_5:
    v53 = 0;
    goto LABEL_6;
  }

  v54 = v33;
  v159 = v50;
  v160 = v48;
  v55 = v192;
  (*(v33 + 32))(v192, v31, v32);
  v56 = v183;
  sub_226836158();
  v57 = sub_2268361C8();
  v59 = v58;
  v60 = v190;
  v61 = v191 + 8;
  v183 = *(v191 + 8);
  (v183)(v56, v190);
  if (v57 == v188 && v59 == v184)
  {

    v62 = v185;
  }

  else
  {
    v63 = sub_226836B58();

    v62 = v185;
    if ((v63 & 1) == 0)
    {
      v130 = sub_2267FBA9C();
      (*(v62 + 16))(v168, v130, v189);
      (*(v54 + 16))(v167, v55, v32);

      v131 = sub_226836038();
      v132 = sub_2268366C8();

      LODWORD(v191) = v132;
      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v187 = swift_slowAlloc();
        v195 = v187;
        *v133 = 136315394;
        v134 = v60;
        v135 = v186;
        v182 = v131;
        v136 = v167;
        sub_226836158();
        v137 = sub_2268361C8();
        v138 = v134;
        v140 = v139;
        (v183)(v135, v138);
        v141 = *(v54 + 8);
        v141(v136, v32);
        v142 = sub_2263B4D48(v137, v140, &v195);

        *(v133 + 4) = v142;
        *(v133 + 12) = 2080;
        *(v133 + 14) = sub_2263B4D48(v188, v184, &v195);
        v143 = v182;
        _os_log_impl(&dword_2263AA000, v182, v191, "On-screen app entity for bundleID %s doesn't match provided bundleID %s", v133, 0x16u);
        v144 = v187;
        swift_arrayDestroy();
        MEMORY[0x22AA821D0](v144, -1, -1);
        MEMORY[0x22AA821D0](v133, -1, -1);

        (*(v185 + 8))(v168, v189);
        v141(v55, v32);
      }

      else
      {

        v154 = *(v54 + 8);
        v154(v167, v32);
        (*(v62 + 8))(v168, v189);
        v154(v55, v32);
      }

      result = (*(v160 + 8))(v159, v51);
      goto LABEL_5;
    }
  }

  v188 = v51;
  v191 = v61;
  v64 = sub_2267FBA9C();
  (*(v62 + 16))(v187, v64, v189);
  v65 = *(v54 + 16);
  v66 = v55;
  v67 = v169;
  (v65)(v169, v66, v32);
  v68 = v170;
  v184 = v54 + 16;
  v168 = v65;
  (v65)(v170, v66, v32);
  v69 = sub_226836038();
  v70 = sub_2268366B8();
  v71 = os_log_type_enabled(v69, v70);
  v158 = v32;
  v157 = v54;
  if (v71)
  {
    v72 = swift_slowAlloc();
    v167 = swift_slowAlloc();
    v195 = v167;
    *v72 = 136315394;
    v156 = v70;
    v73 = v186;
    sub_226836158();
    v74 = sub_2268361C8();
    v76 = v75;
    (v183)(v73, v190);
    v77 = *(v54 + 8);
    (v77)(v67, v32);
    v78 = sub_2263B4D48(v74, v76, &v195);

    *(v72 + 4) = v78;
    *(v72 + 12) = 2080;
    v79 = sub_226836138();
    v81 = v80;
    v170 = v77;
    (v77)(v68, v32);
    v82 = sub_2263B4D48(v79, v81, &v195);

    *(v72 + 14) = v82;
    _os_log_impl(&dword_2263AA000, v69, v156, "Retrieved app entity for bundleID: %s with identifier: %s", v72, 0x16u);
    v83 = v167;
    swift_arrayDestroy();
    MEMORY[0x22AA821D0](v83, -1, -1);
    MEMORY[0x22AA821D0](v72, -1, -1);
  }

  else
  {

    v84 = *(v54 + 8);
    (v84)(v68, v32);
    v170 = v84;
    (v84)(v67, v32);
  }

  (*(v62 + 8))(v187, v189);
  v85 = v171;
  sub_226836148();
  v86 = sub_226836268();
  v87 = *(v86 - 8);
  v191 = *(v87 + 48);
  v88 = (v191)(v85, 1, v86);
  v89 = v177;
  v90 = v172;
  if (v88 == 1)
  {
    sub_2267A1DC0(v85, &qword_27D7A2010, &qword_2268743A8);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2020, &qword_2268743B8);
    (*(*(v91 - 8) + 56))(v90, 1, 1, v91);
LABEL_17:
    sub_2267A1DC0(v90, &qword_27D7A2018, &qword_2268743B0);
LABEL_18:
    v189 = 0;
    v187 = 0;
    goto LABEL_19;
  }

  sub_226836248();
  (*(v87 + 8))(v85, v86);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2020, &qword_2268743B8);
  v93 = *(v92 - 8);
  if ((*(v93 + 48))(v90, 1, v92) == 1)
  {
    goto LABEL_17;
  }

  if ((*(v93 + 88))(v90, v92) != *MEMORY[0x277D731E0])
  {
    (*(v93 + 8))(v90, v92);
    goto LABEL_18;
  }

  (*(v93 + 96))(v90, v92);
  v145 = v162;
  v146 = v161;
  v147 = v163;
  (*(v162 + 32))(v161, v90, v163);
  v189 = sub_2268361F8();
  v187 = v148;
  (*(v145 + 8))(v146, v147);
LABEL_19:
  v94 = v173;
  sub_226836148();
  v95 = (v191)(v94, 1, v86);
  v96 = v175;
  if (v95 == 1)
  {
    sub_2267A1DC0(v94, &qword_27D7A2010, &qword_2268743A8);
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2028, &unk_2268743C0);
    (*(*(v97 - 8) + 56))(v96, 1, 1, v97);
LABEL_22:
    sub_2267A1DC0(v96, &qword_27D7A2008, &qword_2268743A0);
    goto LABEL_23;
  }

  sub_226836218();
  (*(v87 + 8))(v94, v86);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2028, &unk_2268743C0);
  v99 = *(v98 - 8);
  if ((*(v99 + 48))(v96, 1, v98) == 1)
  {
    goto LABEL_22;
  }

  if ((*(v99 + 88))(v96, v98) == *MEMORY[0x277D731E0])
  {
    (*(v99 + 96))(v96, v98);
    v149 = v165;
    v150 = v164;
    v151 = v96;
    v152 = v166;
    (*(v165 + 32))(v164, v151, v166);
    v185 = sub_2268361F8();
    v175 = v153;
    (*(v149 + 8))(v150, v152);
    goto LABEL_24;
  }

  (*(v99 + 8))(v96, v98);
LABEL_23:
  v185 = 0;
  v175 = 0;
LABEL_24:
  v100 = v174;
  sub_226836158();
  v173 = sub_2268361C8();
  v172 = v101;
  v102 = v190;
  v103 = v183;
  (v183)(v100, v190);
  v195 = 0;
  v196 = 0xE000000000000000;
  v104 = v186;
  sub_226836158();
  sub_226836A48();
  v103(v104, v102);
  v190 = v195;
  v186 = v196;
  v183 = sub_226836138();
  v174 = v105;
  sub_226836148();
  if ((v191)(v89, 1, v86) == 1)
  {
    sub_2267A1DC0(v89, &qword_27D7A2010, &qword_2268743A8);
    v171 = 0;
    v106 = 0;
  }

  else
  {
    v171 = sub_2268361E8();
    v106 = v107;
    (*(v87 + 8))(v89, v86);
  }

  v108 = v178;
  sub_226836148();
  if ((v191)(v108, 1, v86) == 1)
  {
    sub_2267A1DC0(v108, &qword_27D7A2010, &qword_2268743A8);
    v109 = 0;
  }

  else
  {
    v109 = sub_226836258();
    (*(v87 + 8))(v108, v86);
  }

  v110 = v176;
  v111 = v192;
  v112 = v158;
  v113 = v168;
  (v168)(v176, v192, v158);
  v114 = v179;
  sub_2268359E8();
  v115 = sub_226835B78();
  (*(isa + 1))(v114, v182);
  v116 = type metadata accessor for AppEntityContext.AppEntity(0);
  v117 = objc_allocWithZone(v116);
  v118 = &v117[OBJC_IVAR___ATXAppEntity_bundleID];
  v119 = v172;
  *v118 = v173;
  v118[1] = v119;
  v120 = &v117[OBJC_IVAR___ATXAppEntity_type];
  v121 = v186;
  *v120 = v190;
  v120[1] = v121;
  v122 = &v117[OBJC_IVAR___ATXAppEntity_identifier];
  v123 = v174;
  *v122 = v183;
  v122[1] = v123;
  v124 = &v117[OBJC_IVAR___ATXAppEntity_displayRepresentationTitle];
  *v124 = v171;
  v124[1] = v106;
  v125 = &v117[OBJC_IVAR___ATXAppEntity_displayRepresentationSubtitle];
  v126 = v187;
  *v125 = v189;
  v125[1] = v126;
  v127 = &v117[OBJC_IVAR___ATXAppEntity_displayRepresentationAltText];
  v128 = v175;
  *v127 = v185;
  v127[1] = v128;
  *&v117[OBJC_IVAR___ATXAppEntity_displayRepresentationSynonyms] = v109;
  v113(&v117[OBJC_IVAR___ATXAppEntity_appEntityValue], v110, v112);
  v117[OBJC_IVAR___ATXAppEntity_isSelected] = v115 & 1;
  v194.receiver = v117;
  v194.super_class = v116;
  v53 = objc_msgSendSuper2(&v194, sel_init);
  v129 = v170;
  (v170)(v110, v112);
  v129(v111, v112);
  result = (*(v160 + 8))(v159, v188);
LABEL_6:
  *v193 = v53;
  return result;
}

id AppEntityContext.init()()
{
  v1 = &v0[OBJC_IVAR___ATXAppEntityContext_uiContextClient];
  v2 = type metadata accessor for AppEntityContext();
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

void *sub_2267C589C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_2267C5A78(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_226835AD8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2267C7E7C(&qword_27D7A2058, MEMORY[0x277D1D440], MEMORY[0x277D1D448]);
  v33 = a2;
  v11 = sub_226836358();
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
      sub_2267C7E7C(&qword_27D7A2060, MEMORY[0x277D1D440], MEMORY[0x277D1D450]);
      v21 = sub_2268363C8();
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
    sub_2267C60B4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2267C5D58(uint64_t a1)
{
  v2 = v1;
  v36 = sub_226835AD8();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2068, &unk_2268743E8);
  result = sub_226836928();
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
      sub_2267C7E7C(&qword_27D7A2058, MEMORY[0x277D1D440], MEMORY[0x277D1D448]);
      result = sub_226836358();
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

uint64_t sub_2267C60B4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_226835AD8();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2267C5D58(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2267C6358();
      goto LABEL_12;
    }

    sub_2267C6590(v11 + 1);
  }

  v13 = *v3;
  sub_2267C7E7C(&qword_27D7A2058, MEMORY[0x277D1D440], MEMORY[0x277D1D448]);
  v14 = sub_226836358();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_2267C7E7C(&qword_27D7A2060, MEMORY[0x277D1D440], MEMORY[0x277D1D450]);
      v22 = sub_2268363C8();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_226836B98();
  __break(1u);
  return result;
}

void *sub_2267C6358()
{
  v1 = v0;
  v2 = sub_226835AD8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2068, &unk_2268743E8);
  v6 = *v0;
  v7 = sub_226836918();
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

uint64_t sub_2267C6590(uint64_t a1)
{
  v2 = v1;
  v33 = sub_226835AD8();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2068, &unk_2268743E8);
  v7 = sub_226836928();
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
      sub_2267C7E7C(&qword_27D7A2058, MEMORY[0x277D1D440], MEMORY[0x277D1D448]);
      result = sub_226836358();
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

void (*sub_2267C68AC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA7FDD0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2267C692C;
  }

  __break(1u);
  return result;
}

uint64_t sub_2267C6934(uint64_t a1, uint64_t a2)
{
  v4 = sub_226834EE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = a1;
    v12 = a2;
    v10[2] = 0x43464646755CLL;
    v10[3] = 0xE600000000000000;
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    sub_22679BAA8();
    v11 = sub_226836858();
    v12 = v8;
    sub_226834ED8();
    a1 = sub_226836848();
    (*(v5 + 8))(v7, v4);

    if (sub_2268364A8() < 1)
    {

      return 0;
    }
  }

  return a1;
}

uint64_t sub_2267C6AD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2267A1ED0;

  return sub_2267BD8F0(a1, v4, v5, v6);
}

uint64_t sub_2267C6B84(uint64_t a1)
{
  v2 = sub_226835AD8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2068, &unk_2268743E8);
    v9 = sub_226836948();
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
      sub_2267C7E7C(&qword_27D7A2058, MEMORY[0x277D1D440], MEMORY[0x277D1D448]);
      v16 = sub_226836358();
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_2267C7E7C(&qword_27D7A2060, MEMORY[0x277D1D440], MEMORY[0x277D1D450]);
          v23 = sub_2268363C8();
          v24 = *v15;
          (*v15)(v5, v2);
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

uint64_t sub_2267C6EA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FA8, &qword_2268741C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267C6F14(uint64_t a1)
{
  v2 = sub_226835AE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2030, &qword_2268743D0);
    v9 = sub_226836948();
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
      sub_2267C7E7C(&qword_27D7A2038, MEMORY[0x277D1D4B0], MEMORY[0x277D1D4B8]);
      v16 = sub_226836358();
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_2267C7E7C(&qword_27D7A2040, MEMORY[0x277D1D4B0], MEMORY[0x277D1D4C0]);
          v23 = sub_2268363C8();
          v24 = *v15;
          (*v15)(v5, v2);
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

uint64_t sub_2267C7234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a2;
  v38 = a3;
  v36 = *(a1 + 16);
  if (!v36)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = 0;
  v7 = *(sub_226835A08() - 8);
  v35 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v8 = MEMORY[0x277D84F90];
  v34 = *(v7 + 72);
  while (1)
  {
    v10 = v35 + v34 * v6;
    v11 = sub_2268359F8();
    MEMORY[0x28223BE20](v11);
    v32[2] = v37;
    v32[3] = v38;
    v32[4] = v10;
    v12 = sub_2267C2A08(sub_2267C7D98, v32, v11);

    v13 = v12 >> 62;
    if (v12 >> 62)
    {
      v14 = sub_2268368D8();
    }

    else
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v8 >> 62;
    if (v8 >> 62)
    {
      v31 = sub_2268368D8();
      v17 = v31 + v14;
      if (__OFADD__(v31, v14))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = v16 + v14;
      if (__OFADD__(v16, v14))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v15)
      {
        v18 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v17 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_2268368D8();
      goto LABEL_15;
    }

    if (v15)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_2268369B8();
    v8 = result;
    v18 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    if (v13)
    {
      break;
    }

    v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v20 >> 1) - v19) < v14)
    {
      goto LABEL_36;
    }

    v40 = v6;
    v41 = v8;
    v43 = v4;
    v23 = v18 + 8 * v19 + 32;
    v39 = v14;
    v33 = v18;
    if (v13)
    {
      if (v21 < 1)
      {
        goto LABEL_38;
      }

      sub_2267A0610(&qword_27D7A2000, &qword_27D7A1FF8, &qword_226874398, MEMORY[0x277D83988]);
      for (i = 0; i != v21; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FF8, &qword_226874398);
        v25 = sub_2267C68AC(v42, i, v12);
        v27 = *v26;
        (v25)(v42, 0);
        *(v23 + 8 * i) = v27;
      }
    }

    else
    {
      type metadata accessor for AppEntityContext.AppEntity(0);
      swift_arrayInitWithCopy();
    }

    v6 = v40;
    v4 = v43;
    v8 = v41;
    if (v39 >= 1)
    {
      v28 = *(v33 + 16);
      v29 = __OFADD__(v28, v39);
      v30 = v28 + v39;
      if (v29)
      {
        goto LABEL_37;
      }

      *(v33 + 16) = v30;
    }

LABEL_4:
    if (++v6 == v36)
    {
      return v8;
    }
  }

  v22 = v18;
  result = sub_2268368D8();
  v18 = v22;
  v21 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v14 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of AppEntityContext.fetchOnScreenContext(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x78);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2267A1644;

  return v9(a1, a2);
}

uint64_t dispatch thunk of AppEntityContext.retrieveSelectedTextContent(for:minSize:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x80);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2267C7888;

  return v11(a1, a2, a3);
}

uint64_t sub_2267C7888(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of AppEntityContext.retrieveOnScreenDocuments(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x90);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2267C7EC4;

  return v9(a1, a2);
}

uint64_t sub_2267C7B1C(uint64_t a1)
{
  result = sub_2268361B8();
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

uint64_t sub_2267C7C0C(uint64_t a1)
{
  result = sub_226836168();
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

uint64_t sub_2267C7CE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2263BA0A4;

  return sub_2267C0C90(v2, v3, v4);
}

uint64_t sub_2267C7DC8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2263BA0A4;

  return sub_2267BDD04(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_2267C7E7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2267C7ED4()
{
  v1 = *(v0 + OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_identifier);

  return v1;
}

uint64_t sub_2267C7F30()
{
  v1 = *(v0 + OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_loggingSubsystem);

  return v1;
}

uint64_t sub_2267C7F6C()
{
  v1 = *(v0 + OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_loggingCategory);

  return v1;
}

id PowerThrottlingCreditPool.Config.__allocating_init(identifier:maxCredits:secondsToReplenishOneCredit:loggingSubsystem:loggingCategory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_identifier];
  *v18 = a1;
  *(v18 + 1) = a2;
  *&v17[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_maxCredits] = a3;
  *&v17[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_secondsToReplenishOneCredit] = a4;
  v19 = &v17[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_loggingSubsystem];
  *v19 = a5;
  *(v19 + 1) = a6;
  v20 = &v17[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_loggingCategory];
  *v20 = a7;
  *(v20 + 1) = a8;
  v22.receiver = v17;
  v22.super_class = v8;
  return objc_msgSendSuper2(&v22, sel_init);
}

id PowerThrottlingCreditPool.Config.init(identifier:maxCredits:secondsToReplenishOneCredit:loggingSubsystem:loggingCategory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v10 = &v9[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_identifier];
  *v10 = a1;
  *(v10 + 1) = a2;
  *&v9[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_maxCredits] = a3;
  *&v9[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_secondsToReplenishOneCredit] = a4;
  v11 = &v9[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_loggingSubsystem];
  *v11 = a5;
  *(v11 + 1) = a6;
  v12 = &v9[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_loggingCategory];
  *v12 = a7;
  *(v12 + 1) = a8;
  v14.receiver = v9;
  v14.super_class = type metadata accessor for PowerThrottlingCreditPool.Config();
  return objc_msgSendSuper2(&v14, sel_init);
}

id PowerThrottlingCreditPool.Config.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2267C8348(void *a1)
{
  *(v1 + 24) = a1;
  sub_226836408();
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = a1;
  v5 = sub_2268363F8();

  v6 = [v3 initWithSuiteName_];

  if (v6)
  {
    *(v1 + 16) = v6;
  }

  else
  {

    type metadata accessor for PowerThrottlingCreditPool.State();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

unint64_t sub_2267C843C(uint64_t a1, uint64_t a2)
{
  sub_226836968();

  v5 = (*(v2 + 24) + OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_identifier);
  v6 = *v5;
  v7 = v5[1];

  MEMORY[0x22AA7F8E0](v6, v7);

  MEMORY[0x22AA7F8E0](95, 0xE100000000000000);
  MEMORY[0x22AA7F8E0](a1, a2);
  return 0xD000000000000020;
}

id sub_2267C850C()
{
  v1 = *(v0 + 16);
  sub_2267C843C(0x73746964657263, 0xE700000000000000);
  v2 = sub_2268363F8();

  v3 = [v1 integerForKey_];

  return v3;
}

void sub_2267C8580()
{
  v1 = *(v0 + 16);
  v2 = sub_226836698();
  sub_2267C843C(0x73746964657263, 0xE700000000000000);
  v3 = sub_2268363F8();

  [v1 setValue:v2 forKey:v3];
}

uint64_t (*sub_2267C8614(void *a1))()
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  sub_2267C843C(0x73746964657263, 0xE700000000000000);
  v4 = sub_2268363F8();

  v5 = [v3 integerForKey_];

  *a1 = v5;
  return sub_2267C86AC;
}

void sub_2267C86AC(void *a1)
{
  v1 = a1[2];
  v3 = sub_226836698();
  sub_2267C843C(0x73746964657263, 0xE700000000000000);
  v2 = sub_2268363F8();

  [v1 setValue:v3 forKey:v2];
}

double sub_2267C8744()
{
  v1 = *(v0 + 16);
  sub_2267C843C(0xD000000000000018, 0x80000002268CEDC0);
  v2 = sub_2268363F8();

  [v1 doubleForKey_];
  v4 = v3;

  return v4;
}

void sub_2267C87C4(uint64_t a1, double a2)
{
  v3 = *(v2 + 16);
  v4 = sub_226836648();
  sub_2267C843C(0xD000000000000018, 0x80000002268CEDC0);
  v5 = sub_2268363F8();

  [v3 setValue:v4 forKey:v5];
}

void (*sub_2267C885C(void *a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  sub_2267C843C(0xD000000000000018, 0x80000002268CEDC0);
  v4 = sub_2268363F8();

  [v3 doubleForKey_];
  v6 = v5;

  *a1 = v6;
  return sub_2267C8900;
}

void sub_2267C8900(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = sub_226836648();
  sub_2267C843C(0xD000000000000018, 0x80000002268CEDC0);
  v2 = sub_2268363F8();

  [v1 setValue:v3 forKey:v2];
}

uint64_t sub_2267C899C()
{
  v1 = *(v0 + 16);
  sub_2267C843C(0xD00000000000001BLL, 0x80000002268CEDE0);
  v2 = sub_2268363F8();

  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_226836878();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_2267C8A9C(v8);
  }

  return *(*(v0 + 24) + OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_secondsToReplenishOneCredit);
}

uint64_t sub_2267C8A9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1AA0, &qword_2268732C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2267C8B2C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2267C8B6C()
{
  v0 = sub_226836708();
  MEMORY[0x28223BE20](v0);
  v1 = sub_2268362B8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_226836718();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22679C4BC();
  (*(v3 + 104))(v5, *MEMORY[0x277D85268], v2);
  sub_2268362A8();
  v7[1] = MEMORY[0x277D84F90];
  sub_2267C8D64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2510, &qword_2268754C0);
  sub_2267A5AD0();
  sub_226836888();
  return sub_226836738();
}

unint64_t sub_2267C8D64()
{
  result = qword_28138FE00;
  if (!qword_28138FE00)
  {
    sub_226836708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28138FE00);
  }

  return result;
}

id PowerThrottlingCreditPool.__allocating_init(config:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_2267C9A08(a1);

  return v4;
}

id PowerThrottlingCreditPool.init(config:)(void *a1)
{
  v2 = sub_2267C9A08(a1);

  return v2;
}

uint64_t sub_2267C8E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR___ATXPowerThrottlingCreditPool_queue];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2267C9D60;
  *(v9 + 24) = v8;
  v14[4] = sub_2267A5A70;
  v14[5] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2267A3E84;
  v14[3] = &block_descriptor_4;
  v10 = _Block_copy(v14);
  v11 = v3;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_2267C8FC8(uint64_t a1, NSObject *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = sub_226835228();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + OBJC_IVAR___ATXPowerThrottlingCreditPool_state);
  if (!v12)
  {
    v58 = sub_226836038();
    v17 = sub_2268366E8();
    if (os_log_type_enabled(v58, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2263AA000, v58, v17, "PowerThrottlingCreditPool: Failed to initialize state. Dropping request.", v18, 2u);
      MEMORY[0x22AA821D0](v18, -1, -1);
    }

    v19 = v58;

    return;
  }

  v58 = a2;
  v55 = a4;
  swift_retain_n();
  v13 = sub_226836038();
  v14 = sub_2268366E8();
  v15 = os_log_type_enabled(v13, v14);
  v56 = a3;
  if (v15)
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    *(v16 + 4) = v58;
    *(v16 + 12) = 2048;
    *(v16 + 14) = (*(*v12 + 112))();

    _os_log_impl(&dword_2263AA000, v13, v14, "PowerThrottlingCreditPool: Request to consume %ld credits. Currently at %ld before replenishing", v16, 0x16u);
    MEMORY[0x22AA821D0](v16, -1, -1);
  }

  else
  {
  }

  sub_226835208();
  sub_226835168();
  v21 = v20;
  v22 = (*(v9 + 8))(v11, v8);
  v23 = v21 - (*(*v12 + 136))(v22);
  if (COERCE__INT64(fabs(v23)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v24 = *(*(a1 + OBJC_IVAR___ATXPowerThrottlingCreditPool_config) + OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_maxCredits);
  v25 = *(*v12 + 112);
  v26 = *v12 + 112;
  v27 = v25();
  v28 = __OFSUB__(v24, v27);
  v29 = v24 - v27;
  if (v28)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v30 = (*(*v12 + 160))();
  if (!v30)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v31 = v23;
  if (v23 == 0x8000000000000000 && v30 == -1)
  {
    goto LABEL_46;
  }

  v57 = v26;
  if ((v29 & ~(v29 >> 63)) >= v31 / v30)
  {
    v33 = v31 / v30;
  }

  else
  {
    v33 = v29 & ~(v29 >> 63);
  }

  v34 = v33 & ~(v33 >> 63);
  v35 = sub_226836038();
  v36 = sub_2268366E8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134218240;
    *(v37 + 4) = v31;
    *(v37 + 12) = 2048;
    *(v37 + 14) = v34;
    _os_log_impl(&dword_2263AA000, v35, v36, "PowerThrottlingCreditPool: secondsSinceLastReplenish: %ld creditsToReplenish: %ld", v37, 0x16u);
    MEMORY[0x22AA821D0](v37, -1, -1);
  }

  if (v33 < 1)
  {
    goto LABEL_29;
  }

  v39 = sub_226836038();
  v40 = sub_2268366E8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    *(v41 + 4) = v34;
    _os_log_impl(&dword_2263AA000, v39, v40, "PowerThrottlingCreditPool: Replenishing %ld credits and setting timestampLastReplenished", v41, 0xCu);
    MEMORY[0x22AA821D0](v41, -1, -1);
  }

  v42 = (*(*v12 + 128))(v59);
  if (__OFADD__(*v43, v34))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    return;
  }

  *v43 += v34;
  v44 = v42(v59, 0);
  v38 = (*(*v12 + 144))(v44, v21);
LABEL_29:
  if ((v25)(v38) > 0)
  {
    v45 = (*(*v12 + 128))(v59);
    v47 = v58;
    if (!__OFSUB__(*v46, v58))
    {
      *v46 -= v58;
      v45(v59, 0);

      v48 = sub_226836038();
      v49 = sub_2268366E8();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 134218240;
        *(v50 + 4) = v47;
        *(v50 + 12) = 2048;
        *(v50 + 14) = v25();

        _os_log_impl(&dword_2263AA000, v48, v49, "PowerThrottlingCreditPool: Running block and consuming %ld credits, remaining credits: %ld", v50, 0x16u);
        MEMORY[0x22AA821D0](v50, -1, -1);
      }

      else
      {
      }

      v56(v51);
      goto LABEL_37;
    }

    goto LABEL_45;
  }

  v52 = sub_226836038();
  v53 = sub_2268366E8();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 134217984;
    *(v54 + 4) = v25();

    _os_log_impl(&dword_2263AA000, v52, v53, "PowerThrottlingCreditPool: Not enought credits to run block. Dropping request. credits: %ld", v54, 0xCu);
    MEMORY[0x22AA821D0](v54, -1, -1);

LABEL_37:

    return;
  }
}

id sub_2267C9934(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_2267C9A08(void *a1)
{
  v17 = a1;
  v2 = sub_226836068();
  v19 = *(v2 - 8);
  v20 = v2;
  MEMORY[0x28223BE20](v2);
  v18 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226836708();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2268362B8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_226836718();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___ATXPowerThrottlingCreditPool_queue;
  sub_22679C4BC();
  (*(v7 + 104))(v9, *MEMORY[0x277D85268], v6);
  sub_2268362A8();
  v22 = MEMORY[0x277D84F90];
  sub_2267C8D64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2510, &qword_2268754C0);
  sub_2267A5AD0();
  sub_226836888();
  *&v1[v10] = sub_226836738();
  type metadata accessor for PowerThrottlingCreditPool.State();
  swift_allocObject();
  v11 = v17;
  *&v1[OBJC_IVAR___ATXPowerThrottlingCreditPool_state] = sub_2267C8348(v11);
  *&v1[OBJC_IVAR___ATXPowerThrottlingCreditPool_config] = v11;
  v12 = v11;

  v13 = v18;
  sub_226836048();
  (*(v19 + 32))(&v1[OBJC_IVAR___ATXPowerThrottlingCreditPool_logger], v13, v20);
  v14 = type metadata accessor for PowerThrottlingCreditPool(0);
  v21.receiver = v1;
  v21.super_class = v14;
  return objc_msgSendSuper2(&v21, sel_init);
}

uint64_t type metadata accessor for PowerThrottlingCreditPool(uint64_t a1)
{
  result = qword_281390480;
  if (!qword_281390480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2267C9DC0(uint64_t a1)
{
  result = sub_226836068();
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

id sub_2267C9F18()
{
  v0 = sub_226836068();
  MEMORY[0x28223BE20](v0);
  return sub_2267CA3B0();
}

id sub_2267CA0F8()
{
  result = sub_2267CA118();
  qword_27D7A51B0 = result;
  return result;
}

id sub_2267CA118()
{
  v0 = sub_226836068();
  MEMORY[0x28223BE20](v0);
  return sub_2267CA99C();
}

uint64_t *sub_2267CA304()
{
  if (qword_27D7A3980 != -1)
  {
    swift_once();
  }

  return &qword_27D7A51B0;
}

uint64_t sub_2267CA354()
{
  if (qword_27D7A3980 != -1)
  {
    swift_once();
  }
}

id sub_2267CA3B0()
{
  v33[4] = *MEMORY[0x277D85DE8];
  v30 = sub_226835068();
  v0 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1A10, &qword_226873060);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_2268350D8();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = sub_2268363F8();
  v11 = sub_2268363F8();
  v12 = [v9 pathForResource:v10 ofType:v11 isDirectory:0];

  if (!v12)
  {
    sub_2267CAE68();
    swift_allocError();
    swift_willThrow();
    return v12;
  }

  sub_226836408();

  v13 = v29;
  (*(v29 + 56))(v5, 1, 1, v6);
  (*(v0 + 104))(v2, *MEMORY[0x277CC91D8], v30);
  sub_2268350C8();
  v12 = objc_autoreleasePoolPush();
  v14 = v31;
  v15 = sub_2268350F8();
  v17 = v13;
  v18 = v8;
  if (v14)
  {
    goto LABEL_3;
  }

  v20 = v15;
  v21 = v16;
  v22 = v12;
  v23 = objc_opt_self();
  v24 = sub_226835138();
  v33[0] = 0;
  v25 = [v23 propertyListWithData:v24 options:0 format:0 error:v33];

  if (!v25)
  {
    v27 = v33[0];
    sub_226835028();

    swift_willThrow();
    sub_2267A1D24(v20, v21);
    v12 = v22;
LABEL_3:
    objc_autoreleasePoolPop(v12);
    (*(v17 + 8))(v18, v6);
    return v12;
  }

  v26 = v33[0];
  sub_226836878();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1CC0, qword_226873D50);
  if (swift_dynamicCast())
  {
    v12 = v32;
    sub_2267A1D24(v20, v21);
  }

  else
  {
    sub_2267A1D24(v20, v21);
    v12 = MEMORY[0x277D84F90];
  }

  objc_autoreleasePoolPop(v22);
  (*(v17 + 8))(v18, v6);
  return v12;
}

unint64_t sub_2267CA804()
{
  result = qword_27D7A20C8;
  if (!qword_27D7A20C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A20C8);
  }

  return result;
}

unint64_t sub_2267CA88C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A20D0, &qword_2268745D0);
    v3 = sub_226836AB8();
    v4 = a1 + 32;

    while (1)
    {
      sub_2267CADE8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2263B9740(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2267CAE58(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_2267CA99C()
{
  v33[4] = *MEMORY[0x277D85DE8];
  v30 = sub_226835068();
  v0 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1A10, &qword_226873060);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_2268350D8();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = sub_2268363F8();
  v11 = sub_2268363F8();
  v12 = [v9 pathForResource:v10 ofType:v11 isDirectory:0];

  if (!v12)
  {
    sub_2267CAE68();
    swift_allocError();
    swift_willThrow();
    return v12;
  }

  sub_226836408();

  v13 = v29;
  (*(v29 + 56))(v5, 1, 1, v6);
  (*(v0 + 104))(v2, *MEMORY[0x277CC91D8], v30);
  sub_2268350C8();
  v12 = objc_autoreleasePoolPush();
  v14 = v31;
  v15 = sub_2268350F8();
  v17 = v13;
  v18 = v8;
  if (v14)
  {
    goto LABEL_3;
  }

  v20 = v15;
  v21 = v16;
  v22 = v12;
  v23 = objc_opt_self();
  v24 = sub_226835138();
  v33[0] = 0;
  v25 = [v23 propertyListWithData:v24 options:0 format:0 error:v33];

  if (!v25)
  {
    v27 = v33[0];
    sub_226835028();

    swift_willThrow();
    sub_2267A1D24(v20, v21);
    v12 = v22;
LABEL_3:
    objc_autoreleasePoolPop(v12);
    (*(v17 + 8))(v18, v6);
    return v12;
  }

  v26 = v33[0];
  sub_226836878();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A20E8, &qword_2268745E8);
  if (swift_dynamicCast())
  {
    v12 = v32;
  }

  else
  {
    v12 = sub_2267CA88C(MEMORY[0x277D84F90]);
  }

  sub_2267A1D24(v20, v21);
  objc_autoreleasePoolPop(v22);
  (*(v17 + 8))(v18, v6);
  return v12;
}

uint64_t sub_2267CADE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A20D8, &unk_2268745D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_2267CAE58(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2267CAE68()
{
  result = qword_27D7A20E0;
  if (!qword_27D7A20E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A20E0);
  }

  return result;
}

uint64_t sub_2267CAEBC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_226835228();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_226836068();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267CAFFC, 0, 0);
}

uint64_t sub_2267CAFFC()
{
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[8];
  v4 = sub_226799540();
  v0[13] = v4;
  v5 = *(v3 + 16);
  v0[14] = v5;
  v0[15] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_226836038();
  v7 = sub_2268366E8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2263AA000, v6, v7, "createSuggestions", v8, 2u);
    MEMORY[0x22AA821D0](v8, -1, -1);
  }

  v9 = v0[12];
  v10 = v0[7];
  v11 = v0[8];

  v12 = *(v11 + 8);
  v0[16] = v12;
  v12(v9, v10);
  sub_226835198();
  type metadata accessor for SportsContextProducer();
  v0[17] = sub_2263B91B8();
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_2267CB1A8;
  v14 = v0[6];
  v15 = v0[2];

  return sub_2267E8D18(v15, v14);
}

uint64_t sub_2267CB1A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_2267CB59C;
  }

  else
  {

    v4 = sub_2267CB2C4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2267CB2C4()
{
  (*(v0 + 112))(*(v0 + 88), *(v0 + 104), *(v0 + 56));

  v1 = sub_226836038();
  v2 = sub_2268366E8();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 152);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_2263AA000, v1, v2, "Contexts created %ld", v5, 0xCu);
    MEMORY[0x22AA821D0](v5, -1, -1);
  }

  else
  {
  }

  v6 = *(v0 + 152);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  v9 = *(v0 + 80);
  v10 = *(v0 + 56);
  (*(v0 + 128))(*(v0 + 88), v10);
  type metadata accessor for SportsSuggestionProducer();
  sub_2263B91B8();
  v11 = sub_2267CC354(v6);

  v7(v9, v8, v10);

  v12 = sub_226836038();
  v13 = sub_2268366E8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    if (v11 >> 62)
    {
      v15 = sub_2268368D8();
    }

    else
    {
      v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 4) = v15;

    _os_log_impl(&dword_2263AA000, v12, v13, "Created total suggestions %ld", v14, 0xCu);
    MEMORY[0x22AA821D0](v14, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 128);
  v17 = *(v0 + 80);
  v18 = *(v0 + 56);

  v16(v17, v18);
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));

  v19 = *(v0 + 8);

  return v19(v11);
}

uint64_t sub_2267CB59C()
{
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[13];
  v4 = v0[9];
  v5 = v0[7];

  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_226836038();
  v8 = sub_2268366C8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[20];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2263AA000, v7, v8, "Context producer error: %@", v10, 0xCu);
    sub_2267A1DC0(v11, &unk_27D7A1D90, &unk_226873270);
    MEMORY[0x22AA821D0](v11, -1, -1);
    MEMORY[0x22AA821D0](v10, -1, -1);
  }

  v14 = v0[20];
  v15 = v0[16];
  v16 = v0[9];
  v17 = v0[7];

  v15(v16, v17);
  (*(v0[5] + 8))(v0[6], v0[4]);

  v18 = v0[1];
  v19 = MEMORY[0x277D84F90];

  return v18(v19);
}

uint64_t sub_2267CB790@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_226836068();
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x28223BE20](v5);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SportsContextEntry(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  v14 = *a1;
  v15 = *(*a1 + 16);
  if (v15)
  {
    if (v15 == 2)
    {
      v16 = v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      sub_2267CC79C(v16, &v55 - v12, type metadata accessor for SportsContextEntry);
      v17 = sub_2267CC79C(v16 + *(v8 + 72), v10, type metadata accessor for SportsContextEntry);
      v19 = sub_2267D0490(v17, v18);
      v21 = v20;
      v22 = *(v7 + 24);
      v61[3] = type metadata accessor for SportsDependencies(0);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v61);
      sub_2267CC79C(&v13[v22], boxed_opaque_existential_0, type metadata accessor for SportsDependencies);
      v24 = sub_2267DF6CC(v19, v21, v61);

      v25 = __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x28223BE20](v25);
      *(&v55 - 2) = v13;
      *(&v55 - 1) = v10;
      v26 = sub_2267CC214(sub_2267CC804, (&v55 - 4), v24);

      *a2 = v26;
      sub_2267CC6DC(v10, v27);
      return sub_2267CC6DC(v13, v28);
    }

    v56 = a2;
    v57 = v2;
    v61[0] = MEMORY[0x277D84F90];
    v45 = v14;
    sub_2267A0578(0, v15, 0);
    v30 = v61[0];
    v46 = *(v8 + 80);
    v55 = v45;
    v47 = v45 + ((v46 + 32) & ~v46);
    v62 = *(v8 + 72);
    do
    {
      sub_2267CC79C(v47, v10, type metadata accessor for SportsContextEntry);
      sub_226835228();
      sub_2267CC684();
      v48 = sub_226836B48();
      v50 = v49;
      sub_2267CC6DC(v10, v51);
      v61[0] = v30;
      v53 = *(v30 + 16);
      v52 = *(v30 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_2267A0578((v52 > 1), v53 + 1, 1);
        v30 = v61[0];
      }

      *(v30 + 16) = v53 + 1;
      v54 = v30 + 16 * v53;
      *(v54 + 32) = v48;
      *(v54 + 40) = v50;
      v47 += v62;
      --v15;
    }

    while (v15);
  }

  else
  {
    v55 = *a1;
    v56 = a2;
    v57 = v2;
    v30 = MEMORY[0x277D84F90];
  }

  v61[0] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1CC0, qword_226873D50);
  sub_2267A0610(&qword_27D7A1A90, &unk_27D7A1CC0, qword_226873D50, MEMORY[0x277D83958]);
  v31 = sub_226836388();
  v33 = v32;

  v34 = sub_226799540();
  v36 = v58;
  v35 = v59;
  v37 = v60;
  (*(v58 + 16))(v60, v34, v59);
  v38 = v55;

  v39 = sub_226836038();
  v40 = sub_2268366C8();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v61[0] = v42;
    *v41 = 134218242;
    *(v41 + 4) = *(v38 + 16);

    *(v41 + 12) = 2080;
    v43 = sub_2263B4D48(v31, v33, v61);

    *(v41 + 14) = v43;
    v44 = v56;
    _os_log_impl(&dword_2263AA000, v39, v40, "Context pair error %ld: %s", v41, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x22AA821D0](v42, -1, -1);
    MEMORY[0x22AA821D0](v41, -1, -1);

    result = (*(v36 + 8))(v60, v35);
  }

  else
  {

    result = (*(v36 + 8))(v37, v35);
    v44 = v56;
  }

  *v44 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_2267CBD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v50 = a3;
  v51 = a4;
  v6 = sub_226836068();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6);
  v47 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = sub_226835228();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v46 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v44 - v21;
  v23 = *(a1 + 16);
  v24 = v50;
  sub_2267CF450(v23, a2, v50, &v44 - v21);
  sub_2267CF74C(v23, a2, v24, v19);
  v25 = v15[2];
  v52 = v22;
  v25(v13, v22, v14);
  v26 = v15[7];
  v26(v13, 0, 1, v14);
  v25(v10, v19, v14);
  v26(v10, 0, 1, v14);
  sub_22679C634(a1 + 24, v13, v10);
  v28 = v27;
  sub_2267A1DC0(v10, &qword_27D7A2530, qword_2268738A0);
  sub_2267A1DC0(v13, &qword_27D7A2530, qword_2268738A0);
  if (v28)
  {
    v29 = v15[1];
    v29(v19, v14);
    result = (v29)(v52, v14);
  }

  else
  {
    v50 = v19;
    v31 = sub_226799540();
    (*(v48 + 16))(v47, v31, v49);
    v32 = v52;
    v25(v46, v52, v14);
    v33 = sub_226836038();
    v34 = sub_2268366C8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v53 = v45;
      *v35 = 136315138;
      sub_2267CC684();
      v36 = v46;
      v37 = sub_226836B48();
      v39 = v38;
      v40 = v15[1];
      v40(v36, v14);
      v41 = sub_2263B4D48(v37, v39, &v53);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_2263AA000, v33, v34, "Unable to create suggestion %s", v35, 0xCu);
      v42 = v45;
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x22AA821D0](v42, -1, -1);
      MEMORY[0x22AA821D0](v35, -1, -1);

      (*(v48 + 8))(v47, v49);
      v40(v50, v14);
      result = (v40)(v52, v14);
    }

    else
    {

      v43 = v15[1];
      v43(v46, v14);
      (*(v48 + 8))(v47, v49);
      v43(v50, v14);
      result = (v43)(v32, v14);
    }
  }

  *v51 = v28;
  return result;
}

void *sub_2267CC214(void *result, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v11 = a3 + 32;
    do
    {
      v9 = v8 + (v7 << 6);
      for (i = v7; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = (v6)(&v12, v9);
        if (v3)
        {

          return v4;
        }

        if (v12)
        {
          break;
        }

        v9 += 64;
        if (v7 == v5)
        {
          return v4;
        }
      }

      MEMORY[0x22AA7F970](result);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_226836588();
      }

      result = sub_2268365A8();
      v4 = v13;
      v8 = v11;
    }

    while (v7 != v5);
  }

  return v4;
}

uint64_t sub_2267CC354(uint64_t a1)
{
  v2 = v1;
  v30 = *(a1 + 16);
  if (!v30)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  v29 = a1 + 32;
  while (1)
  {
    v34 = *(v29 + 8 * v3);

    v6 = v2;
    sub_2267CB790(&v34, &v33);
    if (v2)
    {

      return v4;
    }

    v7 = v33;
    v8 = v33 >> 62;
    if (v33 >> 62)
    {
      v9 = sub_2268368D8();
    }

    else
    {
      v9 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v4 >> 62;
    if (v4 >> 62)
    {
      v27 = sub_2268368D8();
      v12 = v27 + v9;
      if (__OFADD__(v27, v9))
      {
LABEL_34:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v11 + v9;
      if (__OFADD__(v11, v9))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (!v10)
      {
        goto LABEL_17;
      }

LABEL_16:
      sub_2268368D8();
      goto LABEL_17;
    }

    if (v10)
    {
      goto LABEL_16;
    }

    v13 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v12 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v14 = v9;
      goto LABEL_18;
    }

LABEL_17:
    v14 = v9;
    result = sub_2268369B8();
    v4 = result;
    v13 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v15 = *(v13 + 16);
    v16 = *(v13 + 24);
    if (v8)
    {
      break;
    }

    v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v16 >> 1) - v15) < v14)
    {
      goto LABEL_39;
    }

    v31 = v4;
    v19 = v13 + 8 * v15 + 32;
    v28 = v13;
    if (v8)
    {
      if (v17 < 1)
      {
        goto LABEL_41;
      }

      sub_2267A0610(&qword_27D7A20F8, &qword_27D7A20F0, "Rw\n", MEMORY[0x277D83988]);
      for (i = 0; i != v17; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A20F0, "Rw\n");
        v21 = sub_2267C68AC(v32, i, v7);
        v23 = *v22;
        (v21)(v32, 0);
        *(v19 + 8 * i) = v23;
      }
    }

    else
    {
      sub_2263B51C8();
      swift_arrayInitWithCopy();
    }

    v2 = v6;
    v4 = v31;
    if (v14 >= 1)
    {
      v24 = *(v28 + 16);
      v25 = __OFADD__(v24, v14);
      v26 = v24 + v14;
      if (v25)
      {
        goto LABEL_40;
      }

      *(v28 + 16) = v26;
    }

LABEL_4:
    if (++v3 == v30)
    {
      return v4;
    }
  }

  v18 = v13;
  result = sub_2268368D8();
  v13 = v18;
  v17 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v14 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_2267CC684()
{
  result = qword_28138FE40;
  if (!qword_28138FE40)
  {
    sub_226835228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28138FE40);
  }

  return result;
}

uint64_t sub_2267CC6DC(uint64_t a1, double a2)
{
  v3 = type metadata accessor for SportsContextEntry(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2267CC79C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_2267CC830()
{
  v1 = v0;
  v2 = sub_226836708();
  MEMORY[0x28223BE20](v2);
  v3 = sub_2268362B8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_226836718();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___ATXContextHeuristicsScheduler____lazy_storage___queue;
  v9 = *(v0 + OBJC_IVAR___ATXContextHeuristicsScheduler____lazy_storage___queue);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR___ATXContextHeuristicsScheduler____lazy_storage___queue);
  }

  else
  {
    v11 = sub_2263B5030(0, &qword_28138FDF0, 0x277D85C78);
    v16[1] = "pertd.updateSportsSuggestions";
    v16[2] = v11;
    (*(v5 + 104))(v7, *MEMORY[0x277D85268], v4);
    sub_2268362A8();
    v16[3] = MEMORY[0x277D84F90];
    sub_2267CE9C8(&qword_28138FE00, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2510, &qword_2268754C0);
    sub_2267CEA10(&qword_28138FE20, &unk_27D7A2510, &qword_2268754C0);
    sub_226836888();
    v12 = sub_226836738();
    v13 = *(v0 + v8);
    *(v1 + v8) = v12;
    v10 = v12;

    v9 = 0;
  }

  v14 = v9;
  return v10;
}

uint64_t sub_2267CCAC4()
{
  v1 = OBJC_IVAR___ATXContextHeuristicsScheduler_repeatInterval;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2267CCB08(uint64_t a1)
{
  v3 = OBJC_IVAR___ATXContextHeuristicsScheduler_repeatInterval;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ContextHeuristicsScheduler.__allocating_init(contextHeuristics:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___ATXContextHeuristicsScheduler_debugRerunSportsNotificationToken] = 0;
  *&v3[OBJC_IVAR___ATXContextHeuristicsScheduler_favoritesChangedToken] = 0;
  *&v3[OBJC_IVAR___ATXContextHeuristicsScheduler_syncSportsChangedToken] = 0;
  *&v3[OBJC_IVAR___ATXContextHeuristicsScheduler____lazy_storage___queue] = 0;
  *&v3[OBJC_IVAR___ATXContextHeuristicsScheduler_timer] = 0;
  *&v3[OBJC_IVAR___ATXContextHeuristicsScheduler_contextHeuristics] = a1;
  *&v3[OBJC_IVAR___ATXContextHeuristicsScheduler_repeatInterval] = 7200;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ContextHeuristicsScheduler.init(contextHeuristics:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___ATXContextHeuristicsScheduler_debugRerunSportsNotificationToken] = 0;
  *&v1[OBJC_IVAR___ATXContextHeuristicsScheduler_favoritesChangedToken] = 0;
  *&v1[OBJC_IVAR___ATXContextHeuristicsScheduler_syncSportsChangedToken] = 0;
  *&v1[OBJC_IVAR___ATXContextHeuristicsScheduler____lazy_storage___queue] = 0;
  *&v1[OBJC_IVAR___ATXContextHeuristicsScheduler_timer] = 0;
  *&v1[OBJC_IVAR___ATXContextHeuristicsScheduler_contextHeuristics] = a1;
  *&v1[OBJC_IVAR___ATXContextHeuristicsScheduler_repeatInterval] = 7200;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Void __swiftcall ContextHeuristicsScheduler.start()()
{
  v0 = sub_226836298();
  v67 = *(v0 - 8);
  v68 = v0;
  MEMORY[0x28223BE20](v0);
  v66 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_226836278();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = (&v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v61 = (&v58 - v4);
  v62 = sub_2268362D8();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226836288();
  v73 = *(v6 - 8);
  ObjectType = v6;
  MEMORY[0x28223BE20](v6);
  v71 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_2268362B8();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226836758();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226836068();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2267F78F4();
  (*(v14 + 16))(v16, v17, v13);
  v18 = sub_226836038();
  v19 = sub_2268366E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2263AA000, v18, v19, "Starting ContextHeuristicsScheduler", v20, 2u);
    MEMORY[0x22AA821D0](v20, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  v21 = v75;
  sub_2267CD83C();
  sub_2263B5030(0, &qword_28138FDD8, 0x277D85CA0);
  v22 = sub_2267CC830();
  aBlock = MEMORY[0x277D84F90];
  sub_2267CE9C8(&unk_28138FDE0, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2138, qword_226874650);
  sub_2267CEA10(&unk_28138FE10, &unk_27D7A2138, qword_226874650);
  v23 = v21;
  sub_226836888();
  v24 = sub_226836768();

  (*(v10 + 8))(v12, v9);
  v25 = OBJC_IVAR___ATXContextHeuristicsScheduler_timer;
  *(v23 + OBJC_IVAR___ATXContextHeuristicsScheduler_timer) = v24;
  swift_unknownObjectRelease();
  if (*(v23 + v25))
  {
    swift_getObjectType();
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v80 = sub_2267CD8E0;
    v81 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v77 = 1107296256;
    v78 = sub_22679BFD8;
    v79 = &block_descriptor_5;
    v27 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v28 = v69;
    sub_2268362A8();
    v29 = v71;
    sub_2267CDB98();
    sub_226836778();
    _Block_release(v27);
    swift_unknownObjectRelease();
    (*(v73 + 8))(v29, ObjectType);
    (*(v70 + 8))(v28, v72);

    if (*(v23 + v25))
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v30 = v59;
      sub_2268362C8();
      v31 = OBJC_IVAR___ATXContextHeuristicsScheduler_repeatInterval;
      swift_beginAccess();
      v32 = v61;
      *v61 = *(v23 + v31);
      v33 = *MEMORY[0x277D85188];
      v34 = v64;
      v35 = *(v64 + 104);
      v36 = v65;
      v35(v32, v33, v65);
      v37 = v63;
      *v63 = 10;
      v35(v37, v33, v36);
      MEMORY[0x22AA7FBF0](v30, v32, v37, ObjectType);
      swift_unknownObjectRelease();
      v38 = *(v34 + 8);
      v39 = v37;
      v23 = v75;
      v38(v39, v36);
      v38(v32, v36);
      (*(v60 + 8))(v30, v62);
      if (*(v23 + v25))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_226836798();
        swift_unknownObjectRelease();
      }
    }
  }

  if ([objc_opt_self() isInternalBuild])
  {
    sub_2263B5030(0, &qword_28138FDF0, 0x277D85C78);
    v41 = v66;
    v40 = v67;
    v42 = v68;
    (*(v67 + 104))(v66, *MEMORY[0x277D851B8], v68);
    v43 = sub_226836748();
    (*(v40 + 8))(v41, v42);
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v80 = sub_2267CDF8C;
    v81 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v77 = 1107296256;
    v78 = sub_2267CDC70;
    v79 = &block_descriptor_12;
    v45 = _Block_copy(&aBlock);

    v46 = OBJC_IVAR___ATXContextHeuristicsScheduler_debugRerunSportsNotificationToken;
    swift_beginAccess();
    notify_register_dispatch("com.apple.duetexpertd.contextheuristics.donateSports", (v23 + v46), v43, v45);
    swift_endAccess();
    _Block_release(v45);
  }

  v47 = objc_opt_self();
  v48 = [v47 defaultCenter];
  v49 = *MEMORY[0x277D7A998];
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = sub_2267CDCC4;
  v81 = v50;
  aBlock = MEMORY[0x277D85DD0];
  v77 = 1107296256;
  v78 = sub_2267CDCE8;
  v79 = &block_descriptor_4;
  v51 = _Block_copy(&aBlock);

  v52 = [v48 addObserverForName:v49 object:0 queue:0 usingBlock:v51];
  _Block_release(v51);

  *(v23 + OBJC_IVAR___ATXContextHeuristicsScheduler_favoritesChangedToken) = v52;
  swift_unknownObjectRelease();
  v53 = [v47 defaultCenter];
  v54 = *MEMORY[0x277D7A9A0];
  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = sub_2267CDF68;
  v81 = v55;
  aBlock = MEMORY[0x277D85DD0];
  v77 = 1107296256;
  v78 = sub_2267CDCE8;
  v79 = &block_descriptor_8_0;
  v56 = _Block_copy(&aBlock);

  v57 = [v53 addObserverForName:v54 object:0 queue:0 usingBlock:v56];
  _Block_release(v56);

  *(v23 + OBJC_IVAR___ATXContextHeuristicsScheduler_syncSportsChangedToken) = v57;
  swift_unknownObjectRelease();
}

uint64_t sub_2267CD83C()
{
  v1 = v0;
  v2 = OBJC_IVAR___ATXContextHeuristicsScheduler_timer;
  if (*(v0 + OBJC_IVAR___ATXContextHeuristicsScheduler_timer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_226836788();
    swift_unknownObjectRelease();
  }

  *(v0 + v2) = 0;
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR___ATXContextHeuristicsScheduler_debugRerunSportsNotificationToken;
  swift_beginAccess();
  result = *(v1 + v3);
  if (result)
  {
    result = notify_cancel(result);
    *(v1 + v3) = 0;
  }

  return result;
}

uint64_t sub_2267CD904()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_226836068();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2267F78F4();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_226836038();
  v11 = sub_2268366E8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2263AA000, v10, v11, "Running ContextHeuristicsScheduler", v12, 2u);
    MEMORY[0x22AA821D0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v13 = *(v1 + OBJC_IVAR___ATXContextHeuristicsScheduler_contextHeuristics);
  v14 = OBJC_IVAR___ATXContextHeuristicsScheduler_repeatInterval;
  swift_beginAccess();
  v15 = *(v1 + v14);
  v16 = v13;
  v17 = os_transaction_create();
  v18 = sub_226836628();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v15;
  v19[5] = v16;
  v19[6] = v17;
  v20 = v16;
  sub_2267AEA94(0, 0, v4, &unk_2268746D8, v19);
}

uint64_t sub_2267CDB98()
{
  sub_226836288();
  sub_2267CE9C8(&qword_28138FE38, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2210, &unk_226874700);
  sub_2267CEA10(&qword_28138FE30, &unk_27D7A2210, &unk_226874700);
  return sub_226836888();
}

uint64_t sub_2267CDC70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_2267CDCE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_226834F48();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_226834F38();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_2267CDDDC(uint64_t a1, const char *a2)
{
  v3 = sub_226836068();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226799540();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_226836038();
  v9 = sub_2268366E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2263AA000, v8, v9, a2, v10, 2u);
    MEMORY[0x22AA821D0](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_2267CD904();
  }
}

id ContextHeuristicsScheduler.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  sub_2267CD83C();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2267CE114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_226836068();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v7 = sub_226835228();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267CE248, 0, 0);
}

uint64_t sub_2267CE248(uint64_t a1)
{
  v37 = v1;
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[7];
  v7 = v1[4];
  v8 = v1[5];
  sub_226835208();
  v9 = sub_226799540();
  v1[12] = v9;
  v10 = *(v8 + 16);
  v1[13] = v10;
  v1[14] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v6, v9, v7);
  (*(v5 + 16))(v2, v3, v4);
  v11 = sub_226836038();
  v12 = sub_2268366E8();
  v13 = os_log_type_enabled(v11, v12);
  v15 = v1[9];
  v14 = v1[10];
  v16 = v1[7];
  v17 = v1[8];
  v19 = v1[4];
  v18 = v1[5];
  if (v13)
  {
    v34 = v1[2];
    v35 = v1[4];
    v20 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36 = v33;
    *v20 = 136315394;
    sub_2267CE9C8(&qword_28138FE40, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v21 = sub_226836B48();
    v32 = v16;
    v23 = v22;
    v31 = v12;
    v24 = *(v15 + 8);
    v24(v14, v17);
    v25 = sub_2263B4D48(v21, v23, &v36);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2048;
    *(v20 + 14) = v34;
    _os_log_impl(&dword_2263AA000, v11, v31, "Generating sports suggestions: %s, %ld", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x22AA821D0](v33, -1, -1);
    MEMORY[0x22AA821D0](v20, -1, -1);

    v26 = *(v18 + 8);
    v26(v32, v35);
  }

  else
  {

    v24 = *(v15 + 8);
    v24(v14, v17);
    v26 = *(v18 + 8);
    v26(v16, v19);
  }

  v1[15] = v24;
  v1[16] = v26;
  v27 = swift_task_alloc();
  v1[17] = v27;
  *v27 = v1;
  v27[1] = sub_2267CE50C;
  v28 = v1[11];
  v29 = v1[2];

  return sub_2267CAEBC(v28, v29);
}

uint64_t sub_2267CE50C(uint64_t a1)
{
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](sub_2267CE60C, 0, 0);
}

uint64_t sub_2267CE60C()
{
  (*(v0 + 104))(*(v0 + 48), *(v0 + 96), *(v0 + 32));

  v1 = sub_226836038();
  v2 = sub_2268366E8();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 144);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    if (v4 >> 62)
    {
      v16 = v5;
      v6 = sub_2268368D8();
      v5 = v16;
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 4) = v6;
    v7 = v5;

    _os_log_impl(&dword_2263AA000, v1, v2, "Donating sports suggestions: %ld", v7, 0xCu);
    MEMORY[0x22AA821D0](v7, -1, -1);
  }

  else
  {
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 88);
  v10 = *(v0 + 64);
  v11 = *(v0 + 24);
  (*(v0 + 128))(*(v0 + 48), *(v0 + 32));
  sub_2263B5030(0, &qword_28138F9A0, 0x277D42068);
  v12 = sub_226836558();

  v13 = sub_2268363F8();
  [v11 donateSuggestions:v12 forHeuristic:v13];

  v8(v9, v10);

  v14 = *(v0 + 8);

  return v14();
}

id ContextHeuristicsScheduler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2267CE930()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2263BA0A4;

  return sub_2267CE114(v4, v5, v6, v2, v3);
}

uint64_t sub_2267CE9C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2267CEA10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_2267CEA7C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_2267CEAB4()
{
  type metadata accessor for WatchSmartStackLayoutSelector();
  *&v0[OBJC_IVAR___ATXWatchSmartStacksLayoutSelector_layoutSelector] = sub_2267B7230();
  v2.receiver = v0;
  v2.super_class = ATXWatchSmartStacksLayoutSelector;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_2267CECC8()
{
  v0 = sub_226836068();
  __swift_allocate_value_buffer(v0, qword_281390C20);
  __swift_project_value_buffer(v0, qword_281390C20);
  if (qword_2813905B8 != -1)
  {
    swift_once();
  }

  v1 = qword_281390C00;
  return sub_226836078();
}

uint64_t *sub_2267CED54()
{
  if (qword_2813905B8 != -1)
  {
    swift_once();
  }

  return &qword_281390C00;
}

uint64_t sub_2267CEDA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_2813905C8 != -1)
  {
    swift_once();
  }

  v2 = sub_226836068();
  v3 = __swift_project_value_buffer(v2, qword_281390C20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2267CEE4C()
{
  sub_2267CEF14();
  result = sub_226836818();
  qword_281390C00 = result;
  return result;
}

id sub_2267CEEB8()
{
  if (qword_2813905B8 != -1)
  {
    swift_once();
  }

  v0 = qword_281390C00;

  return v0;
}

unint64_t sub_2267CEF14()
{
  result = qword_28138FDC8;
  if (!qword_28138FDC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28138FDC8);
  }

  return result;
}

uint64_t sub_2267CEF60()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2267CEF98(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_2267CEFD0(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));

  return sub_2263C0708(a1, v1 + 24);
}

BOOL sub_2267CF010(_BOOL8 result, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v4 = result;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = -result;
    if (__OFSUB__(0, result))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  if (a4)
  {
    if (a4 == 1)
    {
      v5 = a3;
    }

    else
    {
      v5 = 0;
    }

    return v4 < v5;
  }

  v5 = -a3;
  if (!__OFSUB__(0, a3))
  {
    return v4 < v5;
  }

LABEL_13:
  __break(1u);
  return result;
}

BOOL sub_2267CF05C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 != 1)
      {
        return 0;
      }

      return a1 == a3;
    }

    if (a4 == 2 && !a3)
    {
      return 1;
    }
  }

  else if (!a4)
  {
    return a1 == a3;
  }

  return 0;
}

uint64_t sub_2267CF0B0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      a2 = 1;
      return MEMORY[0x22AA80040](a2);
    }

    v4 = 2;
  }

  else
  {
    v4 = a3;
  }

  MEMORY[0x22AA80040](v4);
  return MEMORY[0x22AA80040](a2);
}

uint64_t sub_2267CF104(uint64_t a1, unsigned __int8 a2)
{
  sub_226836C08();
  if (a2)
  {
    if (a2 != 1)
    {
      a1 = 1;
      goto LABEL_7;
    }

    v4 = 2;
  }

  else
  {
    v4 = a2;
  }

  MEMORY[0x22AA80040](v4);
LABEL_7:
  MEMORY[0x22AA80040](a1);
  return sub_226836C48();
}

uint64_t sub_2267CF17C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_226836C08();
  if (v2)
  {
    if (v2 != 1)
    {
      v1 = 1;
      goto LABEL_6;
    }

    v2 = 2;
  }

  MEMORY[0x22AA80040](v2);
LABEL_6:
  MEMORY[0x22AA80040](v1);
  return sub_226836C48();
}

uint64_t sub_2267CF1F4()
{
  v1 = *v0;
  if (*(v0 + 8) && *(v0 + 8) != 1)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x22AA80040]();
  }

  return MEMORY[0x22AA80040](v1);
}

uint64_t sub_2267CF244(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_226836C08();
  if (v3)
  {
    if (v3 != 1)
    {
      v2 = 1;
      goto LABEL_6;
    }

    v3 = 2;
  }

  MEMORY[0x22AA80040](v3);
LABEL_6:
  MEMORY[0x22AA80040](v2);
  return sub_226836C48();
}

uint64_t *sub_2267CF2B8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*(result + 8))
  {
    if (*(result + 8) != 1)
    {
      v2 = 0;
    }
  }

  else
  {
    v4 = __OFSUB__(0, v2);
    v2 = -v2;
    if (v4)
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  if (*(a2 + 8))
  {
    if (*(a2 + 8) != 1)
    {
      v3 = 0;
    }

    return (v2 < v3);
  }

  v4 = __OFSUB__(0, v3);
  v3 = -v3;
  if (!v4)
  {
    return (v2 < v3);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t *sub_2267CF30C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*(a2 + 8))
  {
    if (*(a2 + 8) != 1)
    {
      v3 = 0;
    }
  }

  else
  {
    v4 = __OFSUB__(0, v3);
    v3 = -v3;
    if (v4)
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  if (*(result + 8))
  {
    if (*(result + 8) != 1)
    {
      v2 = 0;
    }

    return (v3 >= v2);
  }

  v4 = __OFSUB__(0, v2);
  v2 = -v2;
  if (!v4)
  {
    return (v3 >= v2);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t *sub_2267CF360(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*(result + 8))
  {
    if (*(result + 8) != 1)
    {
      v2 = 0;
    }
  }

  else
  {
    v4 = __OFSUB__(0, v2);
    v2 = -v2;
    if (v4)
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  if (*(a2 + 8))
  {
    if (*(a2 + 8) != 1)
    {
      v3 = 0;
    }

    return (v2 >= v3);
  }

  v4 = __OFSUB__(0, v3);
  v3 = -v3;
  if (!v4)
  {
    return (v2 >= v3);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t *sub_2267CF3B4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*(a2 + 8))
  {
    if (*(a2 + 8) != 1)
    {
      v3 = 0;
    }
  }

  else
  {
    v4 = __OFSUB__(0, v3);
    v3 = -v3;
    if (v4)
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  if (*(result + 8))
  {
    if (*(result + 8) != 1)
    {
      v2 = 0;
    }

    return (v3 < v2);
  }

  v4 = __OFSUB__(0, v2);
  v2 = -v2;
  if (!v4)
  {
    return (v3 < v2);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2267CF408(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2 == v3;
  }

  v6 = v5;
  v8 = v4 == 1 && v2 == v3;
  v10 = v4 == 2 && v3 == 0;
  if (*(a1 + 8) != 1)
  {
    v8 = v10;
  }

  if (*(a1 + 8))
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_2267CF450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_226835228();
  v17 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2267CF5F0(a1);
  if (v12 > 1u)
  {
    if (v12 == 2)
    {
      (*(v17 + 16))(v10, a2, v8);
      return (*(v17 + 32))(a4, v10, v8);
    }

    v15 = *(v17 + 16);

    return v15(a4, a2, v8);
  }

  else
  {
    if (v12)
    {
      (*(v17 + 16))(v10, a3, v8);
      return (*(v17 + 32))(a4, v10, v8);
    }

    if ((v11 & 0x8000000000000000) == 0 || (v13 = __OFSUB__(0, v11), result = -v11, !v13))
    {
      sub_226835198();
      return (*(v17 + 32))(a4, v10, v8);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2267CF5F0(uint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    do
    {
      if (v8 - 1 == v10)
      {
        return 0;
      }

      v5 = v10 + 1;
      v11 = *(a1 + 64 + 8 * v10);
      v9 -= 64;
      ++v10;
    }

    while (!v11);
    v7 = (v11 - 1) & v11;
    v6 = __clz(__rbit64(v11)) - v9;
  }

  v12 = *(a1 + 48);
  v13 = v12 + 16 * v6;
  v14 = *v13;
  LOBYTE(v15) = *(v13 + 8);
LABEL_10:
  v16 = v15;
  result = v14;
  v18 = -v14;
  v19 = __OFSUB__(0, v14);
  while (v7)
  {
LABEL_20:
    v22 = v12 + ((v5 << 10) | (16 * __clz(__rbit64(v7))));
    v14 = *v22;
    v15 = *(v22 + 8);
    if (v15)
    {
      if (v15 == 1)
      {
        v23 = v14;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = -v14;
      if (__OFSUB__(0, v14))
      {
        goto LABEL_32;
      }
    }

    v7 &= v7 - 1;
    if (!v16)
    {
      v20 = v18;
      if (v19)
      {
        goto LABEL_33;
      }

      goto LABEL_14;
    }

    v20 = result;
    if (v16 == 1)
    {
LABEL_14:
      if (v23 < v20)
      {
        goto LABEL_10;
      }
    }

    else if (v23 < 0)
    {
      goto LABEL_10;
    }
  }

  while (1)
  {
    v21 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v21 >= v8)
    {
      return result;
    }

    v7 = *(v1 + 8 * v21);
    ++v5;
    if (v7)
    {
      v5 = v21;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_2267CF74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_226835228();
  v15 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2267CF8DC(a1);
  if (v11 <= 1u)
  {
    if (v11)
    {
      sub_226835198();
    }

    else
    {
      (*(v15 + 16))(v10, a2, v8);
    }

    return (*(v15 + 32))(a4, v10, v8);
  }

  if (v11 == 2)
  {
    (*(v15 + 16))(v10, a3, v8);
    return (*(v15 + 32))(a4, v10, v8);
  }

  v13 = *(v15 + 16);

  return v13(a4, a3, v8);
}

uint64_t sub_2267CF8DC(uint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    do
    {
      if (v8 - 1 == v10)
      {
        return 0;
      }

      v5 = v10 + 1;
      v11 = *(a1 + 64 + 8 * v10);
      v9 -= 64;
      ++v10;
    }

    while (!v11);
    v7 = (v11 - 1) & v11;
    v6 = __clz(__rbit64(v11)) - v9;
  }

  v12 = *(a1 + 48);
  v13 = v12 + 16 * v6;
  v14 = *v13;
  LOBYTE(v15) = *(v13 + 8);
LABEL_10:
  v16 = v15;
  result = v14;
  v18 = -v14;
  v19 = __OFSUB__(0, v14);
  while (v7)
  {
LABEL_20:
    v22 = v12 + ((v5 << 10) | (16 * __clz(__rbit64(v7))));
    v14 = *v22;
    v15 = *(v22 + 8);
    if (v16)
    {
      if (v16 == 1)
      {
        v23 = result;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = v18;
      if (v19)
      {
        goto LABEL_32;
      }
    }

    v7 &= v7 - 1;
    if (!v15)
    {
      v20 = -v14;
      if (__OFSUB__(0, v14))
      {
        goto LABEL_33;
      }

      goto LABEL_14;
    }

    v20 = v14;
    if (v15 == 1)
    {
LABEL_14:
      if (v23 < v20)
      {
        goto LABEL_10;
      }
    }

    else if (v23 < 0)
    {
      goto LABEL_10;
    }
  }

  while (1)
  {
    v21 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v21 >= v8)
    {
      return result;
    }

    v7 = *(v1 + 8 * v21);
    ++v5;
    if (v7)
    {
      v5 = v21;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_2267CFA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  return sub_2263C0708(a4, (a5 + 3));
}

uint64_t sub_2267CFA4C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsDependencies(0) + 20);
  v4 = sub_226835228();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2267CFAE8(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsDependencies(0) + 20);
  v4 = sub_226835228();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_2267CFBAC(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_226836B58() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for SportsDependencies(0) + 20);

  return MEMORY[0x28211DA98](a1 + v5, a2 + v5);
}

uint64_t sub_2267CFC28(uint64_t a1)
{
  sub_226836498();
  type metadata accessor for SportsDependencies(0);
  sub_226835228();
  sub_2267D0624(&qword_27D7A22F0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_226836368();
}

uint64_t sub_2267CFCB8()
{
  sub_226836C08();
  sub_226836498();
  type metadata accessor for SportsDependencies(0);
  sub_226835228();
  sub_2267D0624(&qword_27D7A22F0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226836368();
  return sub_226836C48();
}

uint64_t sub_2267CFD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for SportsDependencies(0) + 20);
  v7 = sub_226835228();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_2267CFDE8()
{
  sub_226836C08();
  sub_226836498();
  sub_226835228();
  sub_2267D0624(&qword_27D7A22F0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226836368();
  return sub_226836C48();
}

uint64_t sub_2267CFE90(uint64_t a1)
{
  sub_226836498();
  sub_226835228();
  sub_2267D0624(&qword_27D7A22F0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_226836368();
}

uint64_t sub_2267CFF1C(uint64_t a1)
{
  sub_226836C08();
  sub_226836498();
  sub_226835228();
  sub_2267D0624(&qword_27D7A22F0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226836368();
  return sub_226836C48();
}

uint64_t sub_2267CFFC0(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_226836B58() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return MEMORY[0x28211DA98](a1 + v7, a2 + v7);
}

uint64_t sub_2267D006C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_226835228();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2267D00D4(uint64_t a1)
{
  v3 = sub_226835228();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2267D0180(char a1)
{
  result = type metadata accessor for SportsContextEntry(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_2267D01F8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SportsContextEntry(0) + 24);

  return sub_2267D023C(v3, a1);
}

uint64_t sub_2267D023C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDependencies(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267D02A0(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SportsContextEntry(0) + 24);

  return sub_2267D02E4(a1, v3);
}

uint64_t sub_2267D02E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDependencies(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267D0390@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_226835228();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for SportsContextEntry(0);
  *(a4 + *(v9 + 20)) = a2;
  v10 = a4 + *(v9 + 24);

  return sub_2267D042C(a3, v10);
}

uint64_t sub_2267D042C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDependencies(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267D0490(uint64_t a1, uint64_t a2)
{
  sub_226836C58();
  sub_226836498();
  type metadata accessor for SportsContextEntry(0);
  sub_226836498();
  type metadata accessor for SportsDependencies(0);
  sub_226835228();
  sub_2267D0624(&qword_27D7A22F0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226836368();
  sub_226836C38();
  return sub_226836B48();
}

unint64_t sub_2267D0588()
{
  result = qword_27D7A22F8;
  if (!qword_27D7A22F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A22F8);
  }

  return result;
}

uint64_t sub_2267D0624(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2267D0680(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2267D06C8(uint64_t result, int a2, int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SpotlightContextSuggestionEntry.ValidTimeframe(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for SpotlightContextSuggestionEntry.ValidTimeframe(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2267D07C8(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2267D07E0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_2267D0858(uint64_t a1)
{
  result = sub_226835228();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2267D08FC(uint64_t a1)
{
  result = sub_226835228();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SportsDependencies(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_2267D098C()
{
  v1 = OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer____lazy_storage___xpcListener;
  v2 = *(v0 + OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer____lazy_storage___xpcListener);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer____lazy_storage___xpcListener);
  }

  else
  {
    sub_226835BD8();
    v4 = objc_allocWithZone(MEMORY[0x277CCAE98]);
    v5 = sub_2268363F8();

    v6 = [v4 initWithMachServiceName_];

    [v6 setDelegate_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_2267D0A54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2310, &qword_226874910);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x277D84FA0];
  return result;
}

id sub_2267D0ADC(uint64_t a1, void *a2)
{
  v5 = sub_226836068();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer____lazy_storage___xpcListener] = 0;
  v9 = OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2310, &qword_226874910);
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D84FA0];
  *(v10 + 24) = 0;
  *(v10 + 16) = v11;
  *&v2[v9] = v10;
  *&v2[OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer_contextStore] = a1;
  *&v2[OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer_suggestionStore] = a2;
  v12 = type metadata accessor for ContextualSuggestionServer();
  v23.receiver = v2;
  v23.super_class = v12;

  v13 = a2;
  v14 = objc_msgSendSuper2(&v23, sel_init);
  v15 = sub_2263B7458();
  (*(v6 + 16))(v8, v15, v5);
  v16 = sub_226836038();
  v17 = sub_2268366E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2263AA000, v16, v17, "ContextualSuggestionServer init", v18, 2u);
    MEMORY[0x22AA821D0](v18, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  if (a1)
  {
    v19 = *(*a1 + 184);

    v20 = v14;
    v19(v14, &off_2839959B0);
  }

  v21 = sub_2267D098C();
  [v21 resume];

  return v14;
}

uint64_t sub_2267D0D78(void *a1)
{
  v2 = sub_226836068();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2263B7458();
  (*(v3 + 16))(v5, v6, v2);
  v7 = a1;
  v8 = sub_226836038();
  v9 = sub_2268366C8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_226836BB8();
    v14 = sub_2263B4D48(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2263AA000, v8, v9, "ContextualSuggestionServer: error grabbing remote object proxy: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x22AA821D0](v11, -1, -1);
    MEMORY[0x22AA821D0](v10, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_2267D0F60(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2267D0FC8()
{
  v1 = *(v0 + 160);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

char *sub_2267D1040(void *a1, uint64_t a2)
{
  v3 = sub_226836068();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2263B7458();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_226836038();
  v9 = sub_2268366C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2263AA000, v8, v9, "ContextualSuggestionServer: connection interrupted", v10, 2u);
    MEMORY[0x22AA821D0](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  [a1 invalidate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *&result[OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer_lock];
    v13 = result;

    MEMORY[0x28223BE20](v14);
    *(&v15 - 2) = a1;
    os_unfair_lock_lock(v12 + 6);
    sub_2267D2F68();
    os_unfair_lock_unlock(v12 + 6);
  }

  return result;
}

char *sub_2267D1240(uint64_t a1, uint64_t a2)
{
  v3 = sub_226836068();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2263B7458();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_226836038();
  v9 = sub_2268366E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2263AA000, v8, v9, "ContextualSuggestionServer: connection invalidated", v10, 2u);
    MEMORY[0x22AA821D0](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *&result[OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer_lock];
    v13 = result;

    MEMORY[0x28223BE20](v14);
    *(&v15 - 2) = a2;
    os_unfair_lock_lock(v12 + 6);
    sub_2267D3018();
    os_unfair_lock_unlock(v12 + 6);
  }

  return result;
}

void sub_2267D1528(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_226835CA8();
    v5 = sub_226836348();
  }

  if (a2)
  {
    v6 = sub_226835018();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_2267D15D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_226836068();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2263B7458();
  (*(v6 + 16))(v8, v9, v5);

  v10 = sub_226836038();
  v11 = sub_2268366E8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = *(a2 + 16);

    _os_log_impl(&dword_2263AA000, v10, v11, "contextualEngine didUpdateActiveContexts: %ld", v12, 0xCu);
    MEMORY[0x22AA821D0](v12, -1, -1);
  }

  else
  {
  }

  v13 = (*(v6 + 8))(v8, v5);
  return (*((*MEMORY[0x277D85000] & *v3) + 0x90))(v13);
}

id sub_2267D17FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextualSuggestionServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2267D18D0(uint64_t *a1, void *a2)
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

    v9 = sub_2268368E8();

    if (v9)
    {

      sub_2267D2F1C();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_2268368D8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_2267D1AE8(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2267D1CC8(v20 + 1);
    }

    v18 = v8;
    sub_2267D1EF0(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_2267D2F1C();
  v11 = sub_2268367D8();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_2267D1F74(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2268367E8();

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

uint64_t sub_2267D1AE8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A23D8, qword_226874A88);
    v2 = sub_226836938();
    v15 = v2;
    sub_2268368C8();
    if (sub_2268368F8())
    {
      sub_2267D2F1C();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_2267D1CC8(v9 + 1);
        }

        v2 = v15;
        result = sub_2268367D8();
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

      while (sub_2268368F8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2267D1CC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A23D8, qword_226874A88);
  result = sub_226836928();
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
      result = sub_2268367D8();
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

unint64_t sub_2267D1EF0(uint64_t a1, uint64_t a2)
{
  sub_2268367D8();
  result = sub_2268368B8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_2267D1F74(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2267D1CC8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2267D20D4();
      goto LABEL_12;
    }

    sub_2267D2224(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_2268367D8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_2267D2F1C();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_2268367E8();

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
  sub_226836B98();
  __break(1u);
}

id sub_2267D20D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A23D8, qword_226874A88);
  v2 = *v0;
  v3 = sub_226836918();
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

uint64_t sub_2267D2224(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A23D8, qword_226874A88);
  result = sub_226836928();
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
      result = sub_2268367D8();
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