id MPContactSearchManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_1CFB76708(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [v2 contactStore];
  v4 = sub_1CFB8FA80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC810, &qword_1CFB92180);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1CFB920F0;
  *(v5 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC7B0, &unk_1CFB921D0);
  v6 = sub_1CFB8FB20();

  v16[0] = 0;
  v7 = [v3 unifiedContactWithIdentifier:v4 keysToFetch:v6 error:v16];

  v8 = v16[0];
  if (!v7)
  {
    v9 = v8;
    v10 = sub_1CFB8F640();

    swift_willThrow();
    if (qword_1EE04BDB0 != -1)
    {
      swift_once();
    }

    v11 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v11, qword_1EE04C210);
    v12 = sub_1CFB8F7A0();
    v13 = sub_1CFB8FC90();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1CFB5B000, v12, v13, "Error fetching contact for ContactViewController", v14, 2u);
      MEMORY[0x1D386E190](v14, -1, -1);
    }

    return 0;
  }

  return v7;
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1CFB76974()
{
  v1 = *(v0 + 16);
  v2 = sub_1CFB8FA80();
  [v1 set:v2 searchString:?];
}

unint64_t sub_1CFB769E8()
{
  result = qword_1EC4EC7B8;
  if (!qword_1EC4EC7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EC7B8);
  }

  return result;
}

uint64_t objectdestroy_61Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1CFB76AAC()
{
  result = qword_1EC4EC808;
  if (!qword_1EC4EC808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EC808);
  }

  return result;
}

uint64_t sub_1CFB76B5C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_1CFB76C24(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1CFB90010() & 1;
  }
}

uint64_t sub_1CFB76C7C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1CFB77444;

  return sub_1CFB75B5C(v2, v3, v5, v4);
}

uint64_t sub_1CFB76D40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CFB77444;

  return sub_1CFB8BF1C(v2, v3, v4);
}

uint64_t objectdestroy_103Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CFB76E40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFB66AE0;

  return sub_1CFB8C004(a1, v4, v5, v6);
}

id sub_1CFB76F14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = a3;
  v25 = a4;
  v22 = a1;
  v23 = a2;
  v21 = sub_1CFB8FD70();
  v6 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFB8FD20();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1CFB8F9E0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = OBJC_IVAR___MPContactSearchManager_featureFlags;
  v20 = OBJC_IVAR___MPContactSearchManager_featureFlags;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v19 = OBJC_IVAR___MPContactSearchManager_accessQueue;
  sub_1CFB5D38C(0, &unk_1EE04BD10, 0x1E69E9610);
  sub_1CFB8F9C0();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1CFB77258();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC5D8, &qword_1CFB922D0);
  sub_1CFB772B0();
  sub_1CFB8FE50();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8090], v21);
  *&v4[v19] = sub_1CFB8FDC0();
  v12 = &v4[OBJC_IVAR___MPContactSearchManager__searchString];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  *&v4[OBJC_IVAR___MPContactSearchManager__contactSearchResults] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR___MPContactSearchManager_contactSearchType] = v22;
  v13 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
  if ([*&v5[v20] junkFilteringEnabled])
  {
    [v13 setIncludeAcceptedIntroductions_];
  }

  if (v23)
  {
    v14 = v23;
  }

  else
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
  }

  v15 = v14;

  *&v5[OBJC_IVAR___MPContactSearchManager_contactStore] = v15;
  v16 = &v5[OBJC_IVAR___MPContactSearchManager_ranker];
  v17 = v25;
  *v16 = v24;
  v16[1] = v17;
  v26.receiver = v5;
  v26.super_class = MPContactSearchManager;
  return objc_msgSendSuper2(&v26, sel_init);
}

unint64_t sub_1CFB77258()
{
  result = qword_1EE04BD30;
  if (!qword_1EE04BD30)
  {
    sub_1CFB8FD20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04BD30);
  }

  return result;
}

unint64_t sub_1CFB772B0()
{
  result = qword_1EE04BD60;
  if (!qword_1EE04BD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EC5D8, &qword_1CFB922D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04BD60);
  }

  return result;
}

uint64_t sub_1CFB7731C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC810, &qword_1CFB92180);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CFB920E0;
  v1 = *MEMORY[0x1E695C1F8];
  v2 = *MEMORY[0x1E695C2C8];
  *(v0 + 32) = *MEMORY[0x1E695C1F8];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E695C320];
  v4 = *MEMORY[0x1E695C360];
  *(v0 + 48) = *MEMORY[0x1E695C320];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E695C418];
  v6 = *MEMORY[0x1E695C3A8];
  *(v0 + 64) = *MEMORY[0x1E695C418];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E695C3D0];
  v8 = *MEMORY[0x1E695C2B0];
  *(v0 + 80) = *MEMORY[0x1E695C3D0];
  *(v0 + 88) = v8;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  return v0;
}

uint64_t sub_1CFB7749C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1CFB8FF50();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1CFB7759C, 0, 0);
}

uint64_t sub_1CFB7759C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1CFB8FF70();
  v5 = sub_1CFB7AF48(&qword_1EE04BCD8, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1CFB90060();
  sub_1CFB7AF48(&qword_1EE04BCE0, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1CFB8FF80();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1CFB7772C;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1CFB7772C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1CFB778E8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1CFB778E8()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1CFB77954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1CFB8F770();
  v7 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllersWithResults;
  swift_beginAccess();
  v8 = *(a4 + v7);
  if (v8 >> 62)
  {
    if (v6 < sub_1CFB8FFB0())
    {
      goto LABEL_3;
    }

LABEL_9:
    v14 = sub_1CFB8F7A0();
    v15 = sub_1CFB8FC90();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1CFB5B000, v14, v15, "SearchTableDataSource: Asked to provide cell for section we don't have!", v16, 2u);
      MEMORY[0x1D386E190](v16, -1, -1);
    }

    return 0;
  }

  if (v6 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_3:
  result = sub_1CFB8F770();
  v10 = *(a4 + v7);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v17 = result;

    v11 = MEMORY[0x1D386D910](v17, v10);

    goto LABEL_7;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 8 * result + 32);
    swift_unknownObjectRetain();
LABEL_7:
    v12 = sub_1CFB8F740();
    v13 = [v11 tableView:a1 cellForRowAt:v12];
    swift_unknownObjectRelease();

    return v13;
  }

  __break(1u);
  return result;
}

void sub_1CFB77B0C(uint64_t a1)
{
  v2 = sub_1CFB8F7A0();
  v3 = sub_1CFB8FCB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1CFB5B000, v2, v3, "SearchTableDataSource: Cancelling old search task", v4, 2u);
    MEMORY[0x1D386E190](v4, -1, -1);
  }

  if (a1)
  {

    sub_1CFB8FC00();
  }
}

uint64_t sub_1CFB77BF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllers);
  if (v1 >> 62)
  {
LABEL_17:
    v2 = sub_1CFB8FFB0();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1D386D910](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v4 = *(v1 + 8 * v3 + 32);
        swift_unknownObjectRetain();
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_12;
        }
      }

      [v4 setDelegate_];
      [v4 setSectionIndex_];
      swift_unknownObjectRelease();
      ++v3;
    }

    while (v5 != v2);
  }
}

void sub_1CFB77D14(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = &v3[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_text];
  v12 = *&v3[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_text + 8];
  if (a2)
  {
    if (!v12)
    {
      goto LABEL_16;
    }

    v13 = *v11 == a1 && v12 == a2;
    if (!v13 && (sub_1CFB90010() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v12)
  {
LABEL_16:
    *v11 = a1;
    *(v11 + 1) = a2;

    *&v3[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchTokens] = a3;

    v19 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchCompleteControllerSet;
    swift_beginAccess();
    *&v3[v19] = MEMORY[0x1E69E7CD0];

    v20 = sub_1CFB8F7A0();
    v21 = sub_1CFB8FCB0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1CFB5B000, v20, v21, "SearchTableDataSource: Setting new search task", v22, 2u);
      MEMORY[0x1D386E190](v22, -1, -1);
    }

    v23 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
    v24 = *&v4[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_lastSearchStartTime];
    *&v4[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_lastSearchStartTime] = v23;

    sub_1CFB8FBD0();
    v25 = sub_1CFB8FBF0();
    (*(*(v25 - 8) + 56))(v10, 0, 1, v25);
    sub_1CFB8FBC0();

    v26 = v4;
    v27 = sub_1CFB8FBB0();
    v28 = swift_allocObject();
    v29 = MEMORY[0x1E69E85E0];
    v28[2] = v27;
    v28[3] = v29;
    v28[4] = v26;
    v28[5] = a1;
    v28[6] = a2;
    v28[7] = a3;
    v30 = sub_1CFB80934(0, 0, v10, &unk_1CFB923A8, v28);
    v31 = *&v26[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchTask];
    *&v26[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchTask] = v30;

    sub_1CFB77B0C(v31);

    return;
  }

  v15 = sub_1CFB843A0(v14, a3);

  if ((v15 & 1) == 0)
  {
    goto LABEL_16;
  }

  v32 = sub_1CFB8F7A0();
  v16 = sub_1CFB8FCB0();
  if (os_log_type_enabled(v32, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1CFB5B000, v32, v16, "SearchTableDataSource: Aborting new search as text and tokens unchanged", v17, 2u);
    MEMORY[0x1D386E190](v17, -1, -1);
  }

  v18 = v32;
}

uint64_t sub_1CFB780CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v7[7] = sub_1CFB8FBC0();
  v7[8] = sub_1CFB8FBB0();
  v9 = sub_1CFB8FB80();
  v7[9] = v9;
  v7[10] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1CFB78170, v9, v8);
}

uint64_t sub_1CFB78170(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v13 = *(v1 + 24);
  v4 = sub_1CFB8FBB0();
  *(v1 + 88) = v4;
  v5 = swift_task_alloc();
  *(v1 + 96) = v5;
  *(v5 + 16) = v13;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  v6 = swift_task_alloc();
  *(v1 + 104) = v6;
  *v6 = v1;
  v6[1] = sub_1CFB78290;
  v7 = *(v1 + 16);
  v8 = MEMORY[0x1E69E7CA8] + 8;
  v9 = MEMORY[0x1E69E85E0];
  v10 = MEMORY[0x1E69E7CA8] + 8;
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v7, v8, v10, v4, v9, &unk_1CFB923B8, v5, v11);
}

uint64_t sub_1CFB78290()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1CFB783F0, v3, v2);
}

uint64_t sub_1CFB783F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CFB78450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  sub_1CFB8FBC0();
  v6[16] = sub_1CFB8FBB0();
  v8 = sub_1CFB8FB80();

  return MEMORY[0x1EEE6DFA0](sub_1CFB78534, v8, v7);
}

uint64_t sub_1CFB78534()
{
  v1 = *(v0 + 80);

  v3 = *(v1 + OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllers);
  if (v3 >> 62)
  {
    v24 = *(v1 + OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllers);
    result = sub_1CFB8FFB0();
    v3 = v24;
    v4 = result;
    if (!result)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_19;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return result;
  }

  v26 = **(v0 + 72);
  v25 = v3 & 0xC000000000000001;
  v5 = v3;

  v6 = v5;
  v7 = 0;
  v27 = v5;
  do
  {
    v29 = v7;
    if (v25)
    {
      v10 = MEMORY[0x1D386D910](v7, v6);
    }

    else
    {
      v10 = *(v6 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    v13 = *(v0 + 104);
    v28 = *(v0 + 96);
    v14 = *(v0 + 88);
    v15 = sub_1CFB8FBF0();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v11, 1, 1, v15);
    v17 = swift_allocObject();
    *(v17 + 16) = 0u;
    *(v17 + 32) = v10;
    *(v17 + 40) = v14;
    *(v17 + 48) = v28;
    *(v17 + 56) = v13;
    sub_1CFB7AE70(v11, v12);
    LODWORD(v11) = (*(v16 + 48))(v12, 1, v15);
    swift_unknownObjectRetain();

    v18 = *(v0 + 112);
    if (v11 == 1)
    {
      sub_1CFB7AEE0(*(v0 + 112));
    }

    else
    {
      sub_1CFB8FBE0();
      (*(v16 + 8))(v18, v15);
    }

    if (*(v17 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v19 = sub_1CFB8FB80();
      v21 = v20;
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v22 = swift_allocObject();
    *(v22 + 16) = &unk_1CFB923D0;
    *(v22 + 24) = v17;

    if (v21 | v19)
    {
      v8 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v19;
      *(v0 + 40) = v21;
    }

    else
    {
      v8 = 0;
    }

    v7 = v29 + 1;
    v9 = *(v0 + 120);
    *(v0 + 48) = 1;
    *(v0 + 56) = v8;
    *(v0 + 64) = v26;
    swift_task_create();

    swift_unknownObjectRelease();

    sub_1CFB7AEE0(v9);
    v6 = v27;
  }

  while (v4 != v29 + 1);

LABEL_19:

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1CFB788BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1CFB788E0, 0, 0);
}

uint64_t sub_1CFB788E0()
{
  sub_1CFB8FBC0();
  *(v0 + 176) = sub_1CFB8FBB0();
  v2 = sub_1CFB8FB80();

  return MEMORY[0x1EEE6DFA0](sub_1CFB78974, v2, v1);
}

uint64_t sub_1CFB78974()
{
  v1 = *(v0 + 144);

  [v1 cancelPreviousSearchRequests];

  return MEMORY[0x1EEE6DFA0](sub_1CFB789F0, 0, 0);
}

uint64_t sub_1CFB789F0()
{
  if (v0[20])
  {
    v1 = sub_1CFB8FA80();
  }

  else
  {
    v1 = 0;
  }

  v0[23] = v1;
  v2 = v0[18];
  sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);
  v3 = sub_1CFB8FB20();
  v0[24] = v3;
  v0[2] = v0;
  v0[3] = sub_1CFB78B60;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC8B0, &qword_1CFB923E0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1CFB78CA4;
  v0[13] = &block_descriptor_4;
  v0[14] = v4;
  [v2 searchWith:v1 searchTokens:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CFB78B60()
{

  return MEMORY[0x1EEE6DFA0](sub_1CFB78C40, 0, 0);
}

uint64_t sub_1CFB78C40()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CFB78CA4(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

uint64_t sub_1CFB78CD8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC890, &unk_1CFB92370);
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - v7;
  v9 = [a1 sectionTitle];
  v10 = sub_1CFB8FA90();
  v12 = v11;

  v13 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_logger;

  v50 = v13;
  v14 = sub_1CFB8F7A0();
  v15 = sub_1CFB8FCB0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v51[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1CFB8C3D8(v10, v12, v51);
    _os_log_impl(&dword_1CFB5B000, v14, v15, "SearchTableDataSource: Search completed for controller of section: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1D386E190](v17, -1, -1);
    MEMORY[0x1D386E190](v16, -1, -1);
  }

  v18 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchCompleteControllerSet;
  swift_beginAccess();
  sub_1CFB7DEC0(v52, v10, v12);
  swift_endAccess();

  v19 = [objc_opt_self() shared];
  v20 = [a1 sectionType];
  v21 = *(v2 + OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_lastSearchStartTime);
  if (*(v2 + OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_text + 8))
  {
    v22 = v21;

    v23 = sub_1CFB8FAD0();
  }

  else
  {
    v22 = v21;
    v23 = -1;
  }

  v24 = [a1 results];
  v25 = sub_1CFB8FB30();

  v26 = *(v25 + 16);

  [v19 searchFinishedForController:v20 startTime:v22 searchLength:v23 resultsCount:v26];

  v27 = *(*(v2 + v18) + 16);
  v28 = *(v2 + OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllers);
  if (v28 >> 62)
  {
    if (v27 == sub_1CFB8FFB0())
    {
      goto LABEL_14;
    }
  }

  else if (v27 == *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  v29 = sub_1CFB5F084();
  sub_1CFB8F8E0();

  v30 = v49;
  v31 = sub_1CFB8F890();
  result = (*(v48 + 8))(v8, v30);
  if (v31)
  {
    v33 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_tableViewReloadTask;
    if (!*(v2 + OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_tableViewReloadTask))
    {
      v34 = sub_1CFB8F7A0();
      v35 = sub_1CFB8FCB0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1CFB5B000, v34, v35, "SearchTableDataSource: Not all controllers completed search. Delaying tableView reload", v36, 2u);
        MEMORY[0x1D386E190](v36, -1, -1);
      }

      v37 = sub_1CFB8FBF0();
      v38 = v47;
      (*(*(v37 - 8) + 56))(v47, 1, 1, v37);
      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1CFB8FBC0();

      v40 = sub_1CFB8FBB0();
      v41 = swift_allocObject();
      v42 = MEMORY[0x1E69E85E0];
      v41[2] = v40;
      v41[3] = v42;
      v41[4] = v39;

      *(v2 + v33) = sub_1CFB79748(0, 0, v38, &unk_1CFB92390, v41);
    }

    return result;
  }

LABEL_14:
  v43 = sub_1CFB8F7A0();
  v44 = sub_1CFB8FCB0();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1CFB5B000, v43, v44, "SearchTableDataSource: All controllers completed search. Reloading tableView", v45, 2u);
    MEMORY[0x1D386E190](v45, -1, -1);
  }

  return sub_1CFB5E3F4();
}

uint64_t sub_1CFB792B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1CFB8FF70();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1CFB8FBC0();
  v4[9] = sub_1CFB8FBB0();
  v7 = sub_1CFB8FB80();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1CFB793A4, v7, v6);
}

uint64_t sub_1CFB793A4()
{
  sub_1CFB8FF60();
  v1 = sub_1CFB90100();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_1CFB7947C;

  return sub_1CFB7749C(v1, v3, 0, 0, 1);
}

uint64_t sub_1CFB7947C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_1CFB796DC;
  }

  else
  {
    v8 = sub_1CFB79614;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1CFB79614()
{
  v1 = *(v0 + 104);

  sub_1CFB8FC20();
  if (!v1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_1CFB5E3F4();
    }
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1CFB796DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CFB79748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1CFB7AE70(a3, v22 - v9);
  v11 = sub_1CFB8FBF0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1CFB7AEE0(v10);
  }

  else
  {
    sub_1CFB8FBE0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1CFB8FB80();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1CFB8FAB0() + 32;

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

      sub_1CFB7AEE0(a3);

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

  sub_1CFB7AEE0(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_1CFB79A64(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchCompleteControllerSet;
  swift_beginAccess();
  v7 = *(a2 + v6);

  v8 = [v5 sectionTitle];
  v9 = sub_1CFB8FA90();
  v11 = v10;

  LOBYTE(v8) = sub_1CFB79E40(v9, v11, v7);

  if ((v8 & 1) == 0)
  {
    swift_unknownObjectRetain();
    v15 = sub_1CFB8F7A0();
    v16 = sub_1CFB8FCB0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v15, v16))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136315138;
      v27 = [v5 sectionTitle];
      v28 = sub_1CFB8FA90();
      v30 = v29;

      v31 = sub_1CFB8C3D8(v28, v30, &v38);

      *(v25 + 4) = v31;
      v32 = "SearchTableDataSource: %s has not completed";
LABEL_10:
      _os_log_impl(&dword_1CFB5B000, v15, v16, v32, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1D386E190](v26, -1, -1);
      MEMORY[0x1D386E190](v25, -1, -1);
    }

LABEL_11:

    *a3 = 0;
    return;
  }

  v12 = [v5 results];
  v13 = sub_1CFB8FB30();

  v14 = *(v13 + 16);

  swift_unknownObjectRetain();
  v15 = sub_1CFB8F7A0();
  v16 = sub_1CFB8FCB0();
  swift_unknownObjectRelease();
  v17 = os_log_type_enabled(v15, v16);
  if (!v14)
  {
    if (v17)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136315138;
      v33 = [v5 sectionTitle];
      v34 = sub_1CFB8FA90();
      v36 = v35;

      v37 = sub_1CFB8C3D8(v34, v36, &v38);

      *(v25 + 4) = v37;
      v32 = "SearchTableDataSource: %s has no results";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 136315138;
    v20 = [v5 sectionTitle];
    v21 = sub_1CFB8FA90();
    v23 = v22;

    v24 = sub_1CFB8C3D8(v21, v23, &v38);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_1CFB5B000, v15, v16, "SearchTableDataSource: adding %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1D386E190](v19, -1, -1);
    MEMORY[0x1D386E190](v18, -1, -1);
  }

  *a3 = v5;
  swift_unknownObjectRetain();
}

uint64_t sub_1CFB79E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1CFB900D0();
  sub_1CFB8FAC0();
  v6 = sub_1CFB900F0();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1CFB90010() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id sub_1CFB79F68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchTableViewDiffableDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CFB7A0C8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1CFB7A1C0;

  return v6(a1);
}

uint64_t sub_1CFB7A1C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1CFB7A2B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v15 = v7;
    v16 = v6;
    while (1)
    {
      v9 = *v6;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v10 = [v8 sectionIndex];
      v11 = [v9 sectionIndex];
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v10 >= v11)
      {
LABEL_4:
        ++v4;
        v6 = v16 + 8;
        v7 = v15 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v12 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v12;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CFB7A3B8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v99 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v7 = *v99;
    if (!*v99)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1CFB7ADA8(v8);
      v8 = result;
    }

    v87 = *(v8 + 2);
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = v8;
        v8 = (v87 - 1);
        v89 = *&v88[16 * v87];
        v90 = *&v88[16 * v87 + 24];
        sub_1CFB7AA38((*a3 + 8 * v89), (*a3 + 8 * *&v88[16 * v87 + 16]), (*a3 + 8 * v90), v7);
        if (v5)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_1CFB7ADA8(v88);
        }

        if (v87 - 2 >= *(v88 + 2))
        {
          goto LABEL_116;
        }

        v91 = &v88[16 * v87];
        *v91 = v89;
        *(v91 + 1) = v90;
        result = sub_1CFB7AD1C(v87 - 1);
        v8 = v88;
        v87 = *(v88 + 2);
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v97 = v5;
      v10 = *(*a3 + 8 * v7);
      v93 = 8 * v9;
      v11 = (*a3 + 8 * v9);
      v13 = *v11;
      v12 = v11 + 2;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v102 = [v10 sectionIndex];
      v100 = [v13 sectionIndex];
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v95 = v9;
      v14 = v9 + 2;
      while (v6 != v14)
      {
        v16 = *(v12 - 1);
        v15 = *v12;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v17 = v8;
        v18 = [v15 sectionIndex];
        v7 = [v16 sectionIndex];
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        v19 = v18 < v7;
        v8 = v17;
        v20 = !v19;
        ++v14;
        ++v12;
        if ((((v102 < v100) ^ v20) & 1) == 0)
        {
          v6 = v14 - 1;
          break;
        }
      }

      v9 = v95;
      v5 = v97;
      v21 = v93;
      if (v102 < v100)
      {
        if (v6 < v95)
        {
          goto LABEL_119;
        }

        if (v95 < v6)
        {
          v22 = 8 * v6 - 8;
          v23 = v6;
          v24 = v95;
          do
          {
            if (v24 != --v23)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v25 = *(v26 + v21);
              *(v26 + v21) = *(v26 + v22);
              *(v26 + v22) = v25;
            }

            ++v24;
            v22 -= 8;
            v21 += 8;
          }

          while (v24 < v23);
        }
      }

      v7 = v6;
    }

    v27 = a3[1];
    if (v7 < v27)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v28 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v28 >= v27)
        {
          v28 = a3[1];
        }

        if (v28 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v28)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1CFB65908(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v41 = *(v8 + 2);
    v40 = *(v8 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      result = sub_1CFB65908((v40 > 1), v41 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v42;
    v43 = &v8[16 * v41];
    *(v43 + 4) = v9;
    *(v43 + 5) = v7;
    v44 = *v99;
    if (!*v99)
    {
      goto LABEL_127;
    }

    if (v41)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v8 + 4);
          v47 = *(v8 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_59:
          if (v49)
          {
            goto LABEL_106;
          }

          v62 = &v8[16 * v42];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_109;
          }

          v68 = &v8[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_113;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v72 = &v8[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_73:
        if (v67)
        {
          goto LABEL_108;
        }

        v75 = &v8[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_111;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_80:
        v83 = v45 - 1;
        if (v45 - 1 >= v42)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v84 = *&v8[16 * v83 + 32];
        v85 = *&v8[16 * v45 + 40];
        sub_1CFB7AA38((*a3 + 8 * v84), (*a3 + 8 * *&v8[16 * v45 + 32]), (*a3 + 8 * v85), v44);
        if (v5)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1CFB7ADA8(v8);
        }

        if (v83 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v86 = &v8[16 * v83];
        *(v86 + 4) = v84;
        *(v86 + 5) = v85;
        result = sub_1CFB7AD1C(v45);
        v42 = *(v8 + 2);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v8[16 * v42 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_104;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_105;
      }

      v57 = &v8[16 * v42];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_107;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_110;
      }

      if (v61 >= v53)
      {
        v79 = &v8[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_114;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v94 = v8;
  v96 = v9;
  v98 = v5;
  v29 = *a3;
  v30 = *a3 + 8 * v7 - 8;
  v31 = v9 - v7;
  v101 = v28;
LABEL_32:
  v103 = v7;
  v32 = *(v29 + 8 * v7);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    v35 = *v34;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v36 = [v32 sectionIndex];
    v37 = [v35 sectionIndex];
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if (v36 >= v37)
    {
LABEL_31:
      v7 = v103 + 1;
      v30 += 8;
      --v31;
      if ((v103 + 1) != v101)
      {
        goto LABEL_32;
      }

      v7 = v101;
      v9 = v96;
      v5 = v98;
      v8 = v94;
      goto LABEL_39;
    }

    if (!v29)
    {
      break;
    }

    v38 = *v34;
    v32 = *(v34 + 8);
    *v34 = v32;
    *(v34 + 8) = v38;
    v34 -= 8;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1CFB7AA38(void **__dst, void **a2, void **a3, void **__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v22 = a2;
      v23 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v23;
      a2 = v22;
    }

    v37 = __src;
    v14 = &__src[v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v35 = v5;
LABEL_27:
        v36 = a2;
        v24 = a2 - 1;
        --v4;
        v25 = v14;
        v26 = v14;
        do
        {
          v27 = v4 + 1;
          v28 = *(v26 - 1);
          v26 -= 8;
          v29 = v24;
          v30 = *v24;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v31 = [v28 sectionIndex];
          v32 = [v30 sectionIndex];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v31 < v32)
          {
            v33 = v29;
            if (v27 != v36)
            {
              *v4 = *v29;
            }

            v13 = v37;
            v14 = v25;
            if (v25 <= v37 || (a2 = v33, v33 <= v35))
            {
              a2 = v33;
              goto LABEL_39;
            }

            goto LABEL_27;
          }

          if (v27 != v25)
          {
            *v4 = *v26;
          }

          --v4;
          v25 = v26;
          v13 = v37;
          v24 = v29;
        }

        while (v26 > v37);
        v14 = v26;
        a2 = v36;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 >= 8 && v12 < v4)
    {
      v15 = v12;
      while (1)
      {
        v16 = *v15;
        v17 = *v13;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v18 = [v16 sectionIndex];
        v19 = [v17 sectionIndex];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v18 >= v19)
        {
          break;
        }

        v20 = v15;
        v21 = v5 == v15++;
        if (!v21)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++v5;
        if (v13 >= v14 || v15 >= v4)
        {
          goto LABEL_20;
        }
      }

      v20 = v13;
      v21 = v5 == v13++;
      if (v21)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v5 = *v20;
      goto LABEL_18;
    }

LABEL_20:
    a2 = v5;
  }

LABEL_39:
  if (a2 != v13 || a2 >= (v13 + ((v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * ((v14 - v13) / 8));
  }

  return 1;
}

uint64_t sub_1CFB7AD1C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1CFB7ADA8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1CFB7ADBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFB66AE0;

  return sub_1CFB792B0(a1, v4, v5, v6);
}

uint64_t sub_1CFB7AE70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFB7AEE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFB7AF48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFB7AF90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1CFB66AE0;

  return sub_1CFB780CC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1CFB7B064(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1CFB77444;

  return sub_1CFB78450(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1CFB7B12C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1CFB77444;

  return sub_1CFB788BC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1CFB7B200(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CFB77444;

  return sub_1CFB7A0C8(a1, v4);
}

MPAnalyticsLogger __swiftcall MPAnalyticsLogger.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

Swift::Void __swiftcall MPAnalyticsLogger.logEvent(_:)(Swift::String a1)
{
  sub_1CFB5D38C(0, &qword_1EE04C150, 0x1E69E9BF8);
  v1 = sub_1CFB8FE10();
  v2 = sub_1CFB8FCB0();
  sub_1CFB8F790("MPAnalyticsLogger: logging core analytics view %@", 49, 2, &dword_1CFB5B000, v1, v2, MEMORY[0x1E69E7CC0]);

  v3 = sub_1CFB8FA80();
  v5[4] = sub_1CFB7B410;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1CFB5DF28;
  v5[3] = &block_descriptor_5;
  v4 = _Block_copy(v5);
  AnalyticsSendEventLazy();
  _Block_release(v4);
}

Swift::Void __swiftcall MPAnalyticsLogger.logCustomGreetingUpdated()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC578, &qword_1CFB92040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFB91E60;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x80000001CFB93CB0;
  sub_1CFB5D38C(0, &qword_1EC4EC8C8, 0x1E696AD98);
  *(inited + 48) = sub_1CFB8FDF0();
  v3 = sub_1CFB6AEF4(inited);
  swift_setDeallocating();
  sub_1CFB7B8B4(inited + 32);
  v4 = sub_1CFB8FA80();
  sub_1CFB690A4(v3);

  sub_1CFB5D38C(0, &qword_1EE04C158, 0x1E69E58C0);
  v5 = sub_1CFB8FA30();

  [v1 logEvent:v4 withCoreAnalyticsDictionary:v5];
}

Swift::Void __swiftcall MPAnalyticsLogger.logSIMLineSelection(_:)(Swift::Bool a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC578, &qword_1CFB92040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFB91E60;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001CFB93D00;
  sub_1CFB5D38C(0, &qword_1EC4EC8C8, 0x1E696AD98);
  *(inited + 48) = sub_1CFB8FDF0();
  v4 = sub_1CFB6AEF4(inited);
  swift_setDeallocating();
  sub_1CFB7B8B4(inited + 32);
  v5 = sub_1CFB8FA80();
  sub_1CFB690A4(v4);

  sub_1CFB5D38C(0, &qword_1EE04C158, 0x1E69E58C0);
  v6 = sub_1CFB8FA30();

  [v2 logEvent:v5 withCoreAnalyticsDictionary:v6];
}

uint64_t sub_1CFB7B8B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC580, &qword_1CFB92048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1CFB7B938()
{
  v1 = OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController____lazy_storage___contactAvatarCardController;
  v2 = *&v0[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController____lazy_storage___contactAvatarCardController];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController____lazy_storage___contactAvatarCardController];
  }

  else
  {
    v4 = sub_1CFB7BAF0();
    v5 = objc_allocWithZone(type metadata accessor for ContactAvatarCardController());
    v6 = sub_1CFB67C98(v0, v4, v5);
    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_1CFB7B9BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactSearchResults);
  if (v1 >> 62)
  {
    v2 = sub_1CFB8FFB0();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];

    result = sub_1CFB8FF20();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1D386D910](v4, v1);
        }

        else
        {
          v5 = *(v1 + 8 * v4 + 32);
        }

        v6 = v5;
        ++v4;
        v7 = [v5 contact];

        sub_1CFB8FF00();
        sub_1CFB8FF30();
        sub_1CFB8FF40();
        sub_1CFB8FF10();
      }

      while (v2 != v4);

      return v8;
    }
  }

  return result;
}

id sub_1CFB7BAF0()
{
  v1 = OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController____lazy_storage___tableView;
  v2 = *&v0[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController____lazy_storage___tableView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController____lazy_storage___tableView];
  }

  else
  {
    v4 = sub_1CFB7BB54(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1CFB7BB54(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = result;
  [result addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC810, &qword_1CFB92180);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1CFB920D0;
  v6 = [v2 widthAnchor];
  result = [a1 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = result;
  v8 = [result widthAnchor];

  v9 = [v6 constraintEqualToAnchor_];
  *(v5 + 32) = v9;
  v10 = [v2 heightAnchor];
  result = [a1 view];
  if (result)
  {
    v11 = result;
    v12 = objc_opt_self();
    v13 = [v11 heightAnchor];

    v14 = [v10 constraintEqualToAnchor_];
    *(v5 + 40) = v14;
    sub_1CFB5D38C(0, &qword_1EE04BD00, 0x1E696ACD8);
    v15 = sub_1CFB8FB20();

    [v12 activateConstraints_];

    type metadata accessor for ContactSearchViewCell(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = sub_1CFB8FA80();
    [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v17];

    v18 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    [v2 setSeparatorInsetReference_];
    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_1CFB7BE40()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ContactSearchTableViewController(0);
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    v4 = sub_1CFB7BAF0();
    [v4 setDataSource_];

    return [*&v0[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController____lazy_storage___tableView] setDelegate_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CFB7BF6C(char a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for ContactSearchTableViewController(0);
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  v4 = sub_1CFB7B938();
  v5 = ContactAvatarCardController.cardController.getter();

  v6 = [v2 view];
  [v5 setSourceView_];

  v7 = OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_dataSourceNeedsReload;
  if (*(v2 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_dataSourceNeedsReload) == 1)
  {
    v8 = sub_1CFB7BAF0();
    [v8 reloadData];

    *(v2 + v7) = 0;
  }
}

unint64_t sub_1CFB7C12C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFB8FA80();
  v11 = sub_1CFB8F740();
  v12 = [a1 dequeueReusableCellWithIdentifier:v10 forIndexPath:v11];

  type metadata accessor for ContactSearchViewCell(0);
  v13 = swift_dynamicCastClassUnconditional();
  [*&v13[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_callButton] addTarget:v3 action:sel_callButtonTapped forControlEvents:64];
  [*&v13[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_videoButton] addTarget:v3 action:sel_callButtonTapped forControlEvents:64];
  v14 = v12;
  v15 = [v3 traitCollection];
  v16 = [v15 preferredContentSizeCategory];

  LOBYTE(v15) = sub_1CFB8FDE0();
  v17 = 0.0;
  if ((v15 & 1) == 0)
  {
    v17 = 55.0;
  }

  [v13 setSeparatorInset_];
  v18 = sub_1CFB8F760();
  v19 = sub_1CFB7B9BC();
  if (v19 >> 62)
  {
    v20 = sub_1CFB8FFB0();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18 >= v20)
  {
    (*(v7 + 16))(v9, a2, v6);
    v40 = sub_1CFB8F7A0();
    v41 = sub_1CFB8FC90();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      v43 = sub_1CFB8F760();
      (*(v7 + 8))(v9, v6);
      *(v42 + 4) = v43;
      _os_log_impl(&dword_1CFB5B000, v40, v41, "ContactSearchTableViewController: Failed to get the contact at index: %ld", v42, 0xCu);
      MEMORY[0x1D386E190](v42, -1, -1);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    goto LABEL_15;
  }

  result = sub_1CFB8F760();
  v22 = *&v3[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactSearchResults];
  v45[0] = v14;
  if ((v22 & 0xC000000000000001) != 0)
  {
    v44 = result;

    v23 = MEMORY[0x1D386D910](v44, v22);

    goto LABEL_10;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v22 + 8 * result + 32);
LABEL_10:
    v24 = &v3[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_searchText];
    v25 = *&v3[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_searchText];
    v26 = *&v3[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_searchText + 8];
    v45[1] = *&v3[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactIDSQuerySubject];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC940, &qword_1CFB92070);
    sub_1CFB7E98C(&qword_1EE04BD80, MEMORY[0x1E695BF88]);
    v27 = sub_1CFB8F970();
    v28 = *&v3[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactSearchType];
    sub_1CFB6F954(v23, v25, v26, v27, v28);

    v29 = *&v3[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_callProviderManagerProvider + 8];
    v30 = &v13[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_callProviderManager];
    v31 = *&v13[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_callProviderManager];
    v32 = *&v13[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_callProviderManager + 8];
    *v30 = *&v3[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_callProviderManagerProvider];
    *(v30 + 1) = v29;

    sub_1CFB5F258(v31, v32);
    v33 = *&v3[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_senderIdentityProvider + 8];
    v34 = &v13[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_senderIdentityProvider];
    v35 = *&v13[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_senderIdentityProvider];
    v36 = *&v13[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_senderIdentityProvider + 8];
    *v34 = *&v3[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_senderIdentityProvider];
    *(v34 + 1) = v33;

    sub_1CFB5F258(v35, v36);
    v37 = sub_1CFB8F760();
    sub_1CFB7CF0C(v37);
    v38 = v24[1];
    v14 = v45[0];
    if (!v38)
    {
LABEL_16:

      return v13;
    }

    v39 = *v24;
    v40 = v45[0];

    sub_1CFB70600(v39, v38, v28);

LABEL_15:

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1CFB7C780(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1CFB8F780();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v55 - v12;
  v14 = sub_1CFB8F760();
  v15 = sub_1CFB7B9BC();
  if (v15 >> 62)
  {
    v3 = v15;
    v16 = sub_1CFB8FFB0();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14 >= v16)
  {
    (*(v8 + 16))(v11, a2, v7);
    v32 = sub_1CFB8F7A0();
    v33 = sub_1CFB8FC90();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      v35 = sub_1CFB8F760();
      (*(v8 + 8))(v11, v7);
      *(v34 + 4) = v35;
      _os_log_impl(&dword_1CFB5B000, v32, v33, "ContactSearchTableViewController: Cannot find contact at index: %ld", v34, 0xCu);
      MEMORY[0x1D386E190](v34, -1, -1);
    }

    else
    {
      (*(v8 + 8))(v11, v7);
    }

LABEL_32:

    return;
  }

  v17 = *&v4[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_delegate];
  v57 = a1;
  if (!v17)
  {
    goto LABEL_14;
  }

  v18 = v17;
  v19 = sub_1CFB7B9BC();
  v20 = sub_1CFB8F760();
  if ((v19 & 0xC000000000000001) == 0)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v20 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(v19 + 8 * v20 + 32);
      goto LABEL_9;
    }

    __break(1u);
LABEL_37:
    v40 = MEMORY[0x1D386D910]();
    goto LABEL_19;
  }

  v21 = MEMORY[0x1D386D910](v20, v19);
LABEL_9:
  v22 = v21;

  v23 = [v22 identifier];

  v24 = sub_1CFB8FA90();
  v26 = v25;

  v27 = [v18 searchManager];
  v28 = sub_1CFB76708(v24, v26);

  a1 = v57;
  if (v28)
  {
    v29 = (*&v4[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactViewControllerProvider])(v28);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v31 = Strong;
      [Strong pushViewController:v29 animated:1];
    }

    else
    {
      v48 = sub_1CFB8F7A0();
      v49 = sub_1CFB8FC90();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_1CFB5B000, v48, v49, "ContactSearchTableViewController: missing navigation controller", v50, 2u);
        MEMORY[0x1D386E190](v50, -1, -1);
      }
    }

    goto LABEL_26;
  }

LABEL_14:
  (*(v8 + 16))(v13, a2, v7);
  v36 = v4;
  v11 = sub_1CFB8F7A0();
  v37 = sub_1CFB8FC90();

  if (!os_log_type_enabled(v11, v37))
  {

    (*(v8 + 8))(v13, v7);
    goto LABEL_26;
  }

  v56 = v37;
  v3 = swift_slowAlloc();
  v55 = swift_slowAlloc();
  v58 = v55;
  *v3 = 136315138;
  v38 = sub_1CFB7B9BC();
  v39 = sub_1CFB8F760();
  if ((v38 & 0xC000000000000001) != 0)
  {
    goto LABEL_37;
  }

  if ((v39 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v39 < *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v40 = *(v38 + 8 * v39 + 32);
LABEL_19:
    v41 = v40;

    v42 = [v41 identifier];

    v43 = sub_1CFB8FA90();
    v45 = v44;

    (*(v8 + 8))(v13, v7);
    v46 = sub_1CFB8C3D8(v43, v45, &v58);

    *(v3 + 4) = v46;
    _os_log_impl(&dword_1CFB5B000, v11, v56, "ContactSearchTableViewController: Cannot find contact for identifier: %s", v3, 0xCu);
    v47 = v55;
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x1D386E190](v47, -1, -1);
    MEMORY[0x1D386E190](v3, -1, -1);

    a1 = v57;
LABEL_26:
    v51 = sub_1CFB8F740();
    [a1 deselectRowAtIndexPath:v51 animated:0];

    v52 = 0;
    v53 = *&v4[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactSearchType];
    if (v53 <= 3)
    {
      v52 = dword_1CFB92100[v53];
    }

    v32 = [objc_opt_self() shared];
    if (*&v4[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_searchText + 8])
    {

      v54 = sub_1CFB8FAD0();
    }

    else
    {
      v54 = -1;
    }

    [v32 logSearchResultInteraction:1 cellType:v52 searchLength:v54];
    goto LABEL_32;
  }

  __break(1u);
}

unint64_t sub_1CFB7CF0C(unint64_t result)
{
  v8 = OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_currentIDSStatusPage;
  v9 = *(v2 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_currentIDSStatusPage);
  v10 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_49;
  }

  v3 = 20 * v10;
  if ((v10 * 20) >> 64 != (20 * v10) >> 63)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (__OFSUB__(v3, result))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if ((v3 - result) > 4)
  {
    return result;
  }

  v1 = v2;
  result = sub_1CFB7B9BC();
  if (!(result >> 62))
  {
    v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_7;
  }

LABEL_51:
  v4 = result;
  v11 = sub_1CFB8FFB0();
LABEL_7:

  v12 = 20 * (v10 + 1);
  if (((v10 + 1) * 20) >> 64 != v12 >> 63)
  {
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v12 >= v11)
  {
    v5 = v11;
  }

  else
  {
    v5 = 20 * (v10 + 1);
  }

  v4 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    goto LABEL_53;
  }

  if (v3 >= v4)
  {
    return result;
  }

  v11 = v1;
  v13 = sub_1CFB7B9BC();
  v6 = v5;
  if (__OFADD__(v4, 1))
  {
    goto LABEL_54;
  }

  v11 = v13;
  v7 = v13 >> 62;
  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v3)
    {
      goto LABEL_16;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_55:
  if (sub_1CFB8FFB0() < v3)
  {
    goto LABEL_56;
  }

LABEL_16:
  if (v3 < 0)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v7)
  {
    result = sub_1CFB8FFB0();
  }

  else
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v6)
  {
    goto LABEL_58;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if ((v11 & 0xC000000000000001) == 0)
  {
LABEL_26:

    goto LABEL_30;
  }

  if (v6 < v3)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v3 == v6)
  {
    goto LABEL_26;
  }

  if (v3 >= v6)
  {
    __break(1u);
    return result;
  }

  sub_1CFB5D38C(0, &qword_1EC4EC820, 0x1E695CD58);

  v14 = v3;
  do
  {
    v15 = v14 + 1;
    sub_1CFB8FEB0();
    v14 = v15;
  }

  while (v5 != v15);
LABEL_30:

  if (v7)
  {
    v4 = sub_1CFB8FFC0();
    v5 = v16;
    v3 = v17;
    v6 = v18;
  }

  else
  {
    v4 = v11 & 0xFFFFFFFFFFFFFF8;
    v5 = (v11 & 0xFFFFFFFFFFFFFF8) + 32;
    v6 = (2 * v6) | 1;
  }

  *(v1 + v8) = v10;
  v19 = sub_1CFB8F7A0();
  v20 = sub_1CFB8FCB0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = v10;
    _os_log_impl(&dword_1CFB5B000, v19, v20, "ContactSearchTableViewController: Fetching FaceTime status from IDS for page %ld", v21, 0xCu);
    MEMORY[0x1D386E190](v21, -1, -1);
  }

  if ((v6 & 1) == 0)
  {
    swift_unknownObjectRetain();
LABEL_37:
    sub_1CFB7DDCC(v4, v5, v3, v6);
    v23 = v22;
LABEL_44:
    swift_unknownObjectRelease();
    goto LABEL_45;
  }

  sub_1CFB90020();
  swift_unknownObjectRetain_n();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x1E69E7CC0];
  }

  v25 = *(v24 + 16);

  if (__OFSUB__(v6 >> 1, v3))
  {
    goto LABEL_61;
  }

  if (v25 != (v6 >> 1) - v3)
  {
LABEL_62:
    swift_unknownObjectRelease();
    goto LABEL_37;
  }

  v23 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v23)
  {
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_44;
  }

LABEL_45:
  sub_1CFB7D2CC(v23);
  swift_unknownObjectRelease();
}

void sub_1CFB7D2CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    if (v3 < 1)
    {
      __break(1u);
      return;
    }

    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v6 = (a1 & 0xC000000000000001) != 0 ? MEMORY[0x1D386D910](v4, a1) : *(a1 + 8 * v4 + 32);
      v7 = v6;
      v8 = [v6 idsCanonicalDestinations];
      v9 = sub_1CFB8FB30();

      v10 = *(v9 + 16);
      v1 = *(v5 + 2);
      v11 = &v1[v10];
      if (__OFADD__(v1, v10))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && (v13 = *(v5 + 3) >> 1, v13 >= v11))
      {
        if (*(v9 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v1 <= v11)
        {
          v14 = &v1[v10];
        }

        else
        {
          v14 = v1;
        }

        v5 = sub_1CFB65A0C(isUniquelyReferenced_nonNull_native, v14, 1, v5);
        v13 = *(v5 + 3) >> 1;
        if (*(v9 + 16))
        {
LABEL_19:
          if (v13 - *(v5 + 2) < v10)
          {
            goto LABEL_25;
          }

          swift_arrayInitWithCopy();

          if (v10)
          {
            v15 = *(v5 + 2);
            v16 = __OFADD__(v15, v10);
            v17 = v15 + v10;
            if (v16)
            {
              goto LABEL_26;
            }

            *(v5 + 2) = v17;
          }

          goto LABEL_6;
        }
      }

      if (v10)
      {
        goto LABEL_24;
      }

LABEL_6:
      ++v4;

      if (v3 == v4)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v3 = sub_1CFB8FFB0();
    v29 = v1;
  }

LABEL_28:
  v18 = sub_1CFB8F7A0();
  v19 = sub_1CFB8FCB0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31 = v21;
    *v20 = 136642819;

    v23 = MEMORY[0x1D386D590](v22, MEMORY[0x1E69E6158]);
    v25 = v24;

    v26 = sub_1CFB8C3D8(v23, v25, &v31);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_1CFB5B000, v18, v19, "ContactSearchTableViewController: Fetching FaceTime status from IDS for destinations %{sensitive}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1D386E190](v21, -1, -1);
    MEMORY[0x1D386E190](v20, -1, -1);
  }

  v27 = [objc_opt_self() sharedManager];

  sub_1CFB7E8F4(v28);

  v30 = sub_1CFB8FC30();

  [v27 beginQueryWithDestinations:v30 services:2];
}

uint64_t sub_1CFB7D624(uint64_t a1)
{
  v1 = sub_1CFB8F7A0();
  v2 = sub_1CFB8FCB0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1CFB5B000, v1, v2, "ContactSearchTableViewController: Handling TUIDSLookupManagerStatusChanged Notification", v3, 2u);
    MEMORY[0x1D386E190](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC940, &qword_1CFB92070);
  sub_1CFB7E98C(&unk_1EE04BD88, MEMORY[0x1E695BF80]);
  return sub_1CFB8F960();
}

unint64_t sub_1CFB7D75C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_delegate);
  if (!v2)
  {
    return 2;
  }

  v4 = v2;
  v5 = sub_1CFB7B9BC();
  result = sub_1CFB8F760();
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1D386D910](result, v5);
LABEL_6:
    v8 = v7;

    v9 = [v8 identifier];

    v10 = sub_1CFB8FA90();
    v12 = v11;

    v13 = [v4 searchManager];
    v14 = sub_1CFB76708(v10, v12);

    if (v14)
    {
      v15 = v14;
      [a1 setContact_];
      [a1 setMessage_];

      return 0;
    }

    return 2;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 8 * result + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_1CFB7D9C0()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if ((v1 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = [Strong presentingViewController];

      if (v4)
      {
        v5 = [v4 presentingViewController];

        if (v5)
        {
          [v5 dismissViewControllerAnimated:1 completion:0];
        }
      }
    }
  }
}

id sub_1CFB7DB2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactSearchTableViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ContactSearchTableViewController(uint64_t a1)
{
  result = qword_1EE04C040;
  if (!qword_1EE04C040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFB7DCD4(uint64_t a1)
{
  result = sub_1CFB8F7C0();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1CFB7DDCC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1CFB5D38C(0, &qword_1EC4EC820, 0x1E695CD58);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC810, &qword_1CFB92180);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1CFB7DEC0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1CFB900D0();
  sub_1CFB8FAC0();
  v8 = sub_1CFB900F0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1CFB90010() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1CFB7E270(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1CFB7E010(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC950, &unk_1CFB924A0);
  result = sub_1CFB8FE80();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1CFB900D0();
      sub_1CFB8FAC0();
      result = sub_1CFB900F0();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1CFB7E270(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1CFB7E010(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1CFB7E3F0();
      goto LABEL_16;
    }

    sub_1CFB7E54C(v8 + 1);
  }

  v10 = *v4;
  sub_1CFB900D0();
  sub_1CFB8FAC0();
  result = sub_1CFB900F0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1CFB90010();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1CFB90040();
  __break(1u);
  return result;
}

void *sub_1CFB7E3F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC950, &unk_1CFB924A0);
  v2 = *v0;
  v3 = sub_1CFB8FE70();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_1CFB7E54C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC950, &unk_1CFB924A0);
  result = sub_1CFB8FE80();
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1CFB900D0();

      sub_1CFB8FAC0();
      result = sub_1CFB900F0();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

void sub_1CFB7E788()
{
  sub_1CFB8F7B0();
  *(v0 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_idsQueryPageSize) = 20;
  *(v0 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_currentIDSStatusPage) = -1;
  v1 = OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactIDSQuerySubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC940, &qword_1CFB92070);
  swift_allocObject();
  *(v0 + v1) = sub_1CFB8F950();
  *(v0 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController____lazy_storage___contactAvatarCardController) = 0;
  *(v0 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactSearchResults) = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_delegate) = 0;
  v2 = (v0 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_searchText);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_dataSourceNeedsReload) = 1;
  *(v0 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController____lazy_storage___tableView) = 0;
  sub_1CFB8FFA0();
  __break(1u);
}

uint64_t sub_1CFB7E8F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D386D690](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1CFB7DEC0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1CFB7E98C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4EC940, &qword_1CFB92070);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFB7E9DC(void *a1)
{
  v2 = v1;
  v4 = sub_1CFB8F610();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1CFB7F024(a1);
  v6 = *(v2 + OBJC_IVAR____TtC11CallsSearch25SuggestionsSearchViewCell_suggestionImage);
  *(v2 + OBJC_IVAR____TtC11CallsSearch25SuggestionsSearchViewCell_suggestionImage) = v5;

  sub_1CFB7F148();
  sub_1CFB8FC80();
  v7 = sub_1CFB8FDD0();
  v8 = [v7 string];

  v9 = sub_1CFB8FA90();
  v11 = v10;

  v12 = (v2 + OBJC_IVAR____TtC11CallsSearch25SuggestionsSearchViewCell_suggestionText);
  *v12 = v9;
  v12[1] = v11;
}

uint64_t sub_1CFB7EAD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1CFB8F870();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v26[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1D386D720](v7);
  v10 = *&v2[OBJC_IVAR____TtC11CallsSearch25SuggestionsSearchViewCell_suggestionImage];
  if (v10)
  {
    if (*&v3[OBJC_IVAR____TtC11CallsSearch25SuggestionsSearchViewCell_suggestionText + 8])
    {
      v11 = a2 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v25 = v10;

      sub_1CFB8F860();
      v12 = sub_1CFB8FA80();

      v13 = sub_1CFB8FA80();
      v14 = [v12 attributedStringToHighlightText_];

      sub_1CFB8F810();
      v15 = objc_opt_self();
      [v15 labelFontSize];
      v16 = [v15 systemFontOfSize_];
      v17 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
      v18 = [v17 scaledFontForFont_];

      v19 = [objc_opt_self() configurationWithFont_];
      v20 = sub_1CFB8F840();
      sub_1CFB8F820();
      v20(v26, 0);
      v21 = [objc_opt_self() labelColor];
      v22 = sub_1CFB8F840();
      sub_1CFB8F830();
      v22(v26, 0);
      sub_1CFB8F850();
      v26[3] = v5;
      v26[4] = MEMORY[0x1E69DC110];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
      (*(v6 + 16))(boxed_opaque_existential_1, v9, v5);
      MEMORY[0x1D386D710](v26);
      [v3 setSeparatorInset_];
    }
  }

  return (*(v6 + 8))(v9, v5);
}

id sub_1CFB7EF78()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CFB7F024(void *a1)
{
  v1 = [a1 currentToken];
  if (v1)
  {
    v2 = v1;
    [v1 tokenKind];
  }

  v3 = sub_1CFB8FA80();
  v4 = [objc_opt_self() systemImageNamed_];

  return v4;
}

unint64_t sub_1CFB7F148()
{
  result = qword_1EC4EC700;
  if (!qword_1EC4EC700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4EC700);
  }

  return result;
}

char *VoicemailUnreadIndicator.init(diameter:)(double a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11CallsSearch24VoicemailUnreadIndicator_diameter] = a1;
  v4 = [objc_opt_self() telephonyUIUnreadIndicatorGlyphImage];
  v20.receiver = v1;
  v20.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v20, sel_initWithImage_, v4);

  v6 = v5;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [v6 layer];
  [v7 setMasksToBounds_];

  v8 = [v6 layer];
  [v8 setCornerRadius_];

  v9 = [objc_opt_self() systemBlueColor];
  [v6 setTintColor_];

  LODWORD(v10) = 1148846080;
  [v6 setContentHuggingPriority:0 forAxis:v10];
  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC810, &qword_1CFB92180);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1CFB920D0;
  v13 = [v6 widthAnchor];
  v14 = OBJC_IVAR____TtC11CallsSearch24VoicemailUnreadIndicator_diameter;
  v15 = [v13 constraintEqualToConstant_];

  *(v12 + 32) = v15;
  v16 = [v6 heightAnchor];
  v17 = [v16 constraintEqualToConstant_];

  *(v12 + 40) = v17;
  sub_1CFB672F0();
  v18 = sub_1CFB8FB20();

  [v11 activateConstraints_];

  return v6;
}

void VoicemailUnreadIndicator.configureBorder(borderWidth:borderColor:)(uint64_t a1, double a2)
{
  v5 = [v2 layer];
  [v5 setBorderWidth_];

  v6 = [v2 layer];
  [v6 setBorderColor_];
}

id VoicemailUnreadIndicator.__allocating_init(image:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithImage_];

  return v3;
}

id VoicemailUnreadIndicator.__allocating_init(image:highlightedImage:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithImage:a1 highlightedImage:a2];

  return v5;
}

id VoicemailUnreadIndicator.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id VoicemailUnreadIndicator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CFB7F7F8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  [v0 setOpaque_];
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_1CFB8F620();

  v3 = sub_1CFB8FA80();

  [v0 setTitle:v3 forState:{0, 0xE000000000000000}];

  v4 = [v0 titleLabel];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() preferredFontForTextStyle_];
    [v5 setFont_];
  }

  v7 = [objc_opt_self() systemBlueColor];
  [v0 setTitleColor:v7 forState:0];

  [v0 setContentHorizontalAlignment_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 sizeToFit];
  [v0 setUserInteractionEnabled_];

  return v0;
}

uint64_t sub_1CFB7FA18()
{
  v1 = OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell____lazy_storage___nonAXConstraints;
  if (*(v0 + OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell____lazy_storage___nonAXConstraints))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell____lazy_storage___nonAXConstraints);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC810, &qword_1CFB92180);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1CFB920F0;
    v3 = [*(v0 + OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_seeAllButton) lastBaselineAnchor];
    v4 = [*(v0 + OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_titleLabel) lastBaselineAnchor];
    v5 = [v3 constraintEqualToAnchor_];

    *(v2 + 32) = v5;
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1CFB7FB20(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC998, &qword_1CFB92518);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_titleStackView;
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v9 setSpacing_];
  [v9 setDistribution_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v8] = v9;
  v10 = OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_titleLabel;
  *&v2[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v11 = OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_seeAllButton;
  *&v2[v11] = sub_1CFB7F7F8();
  *&v2[OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell____lazy_storage___nonAXConstraints] = 0;
  v12 = &v2[OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_seeAllTapHandler];
  *v12 = 0;
  *(v12 + 1) = 0;
  if (a2)
  {
    v13 = sub_1CFB8FA80();
  }

  else
  {
    v13 = 0;
  }

  v18.receiver = v2;
  v18.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v18, sel_initWithReuseIdentifier_, v13);

  v15 = v14;
  [v15 setPreservesSuperviewLayoutMargins_];
  sub_1CFB7FD70();
  sub_1CFB8F7F0();
  v16 = sub_1CFB8F800();
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  MEMORY[0x1D386D6B0](v7);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1CFB8FC70();

  return v15;
}

void sub_1CFB7FD70()
{
  v1 = *&v0[OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_titleLabel];
  v2 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v1 setFont_];

  v3 = [objc_opt_self() dynamicLabelColor];
  [v1 setTextColor_];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = *&v0[OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_titleStackView];
  [v4 addArrangedSubview_];
  v5 = *&v0[OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_seeAllButton];
  [v5 addTarget:v0 action:sel_didSelectSeeAllButton forControlEvents:64];
  [v4 addArrangedSubview_];
  [v0 addSubview_];
  sub_1CFB7FF2C();

  sub_1CFB801BC();
}

void sub_1CFB7FF2C()
{
  v1 = v0;
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC810, &qword_1CFB92180);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1CFB91E70;
  v4 = *&v1[OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_titleStackView];
  v5 = [v4 topAnchor];
  v6 = [v1 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:8.0];

  *(v3 + 32) = v7;
  v8 = [v4 leadingAnchor];
  v9 = [v1 layoutMarginsGuide];
  v10 = [v9 leadingAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v3 + 40) = v11;
  v12 = [v4 trailingAnchor];
  v13 = [v1 layoutMarginsGuide];
  v14 = [v13 trailingAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v3 + 48) = v15;
  v16 = [v4 bottomAnchor];
  v17 = [v1 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-8.0];

  *(v3 + 56) = v18;
  sub_1CFB672F0();
  v19 = sub_1CFB8FB20();

  [v2 activateConstraints_];
}

void sub_1CFB801BC()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_1CFB8FDE0();
  v4 = *&v0[OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_titleStackView];
  [v4 setAxis_];
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  if (v3)
  {
    v6 = &selRef_deactivateConstraints_;
  }

  else
  {
    v6 = &selRef_activateConstraints_;
  }

  [v4 setAlignment_];
  v7 = objc_opt_self();
  sub_1CFB7FA18();
  sub_1CFB672F0();
  v8 = sub_1CFB8FB20();

  [v7 *v6];
}

void sub_1CFB802DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC998, &qword_1CFB92518);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v19 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  if (sub_1CFB8F7D0())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      MEMORY[0x1D386D6A0]();
      v14 = sub_1CFB8F800();
      if ((*(*(v14 - 8) + 48))(v11, 1, v14))
      {
        sub_1CFB808C4(v11, v9);
        MEMORY[0x1D386D6B0](v9);

        sub_1CFB5DDDC(v11, &qword_1EC4EC998, &qword_1CFB92518);
      }

      else
      {
        v18 = [objc_opt_self() effectWithStyle_];
        sub_1CFB8F7E0();
        MEMORY[0x1D386D6B0](v11);
      }
    }
  }

  else
  {
    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      MEMORY[0x1D386D6A0]();
      v17 = sub_1CFB8F800();
      if ((*(*(v17 - 8) + 48))(v6, 1, v17))
      {
        sub_1CFB808C4(v6, v9);
        MEMORY[0x1D386D6B0](v9);

        sub_1CFB5DDDC(v6, &qword_1EC4EC998, &qword_1CFB92518);
      }

      else
      {
        sub_1CFB8F7E0();
        MEMORY[0x1D386D6B0](v6);
      }
    }
  }
}

void sub_1CFB807AC()
{
  v1 = OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_titleStackView;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v2 setSpacing_];
  [v2 setDistribution_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_titleLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_seeAllButton;
  *(v0 + v4) = sub_1CFB7F7F8();
  *(v0 + OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell____lazy_storage___nonAXConstraints) = 0;
  v5 = (v0 + OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_seeAllTapHandler);
  *v5 = 0;
  v5[1] = 0;
  sub_1CFB8FFA0();
  __break(1u);
}

uint64_t sub_1CFB808C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC998, &qword_1CFB92518);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFB80934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1CFB7AE70(a3, v25 - v10);
  v12 = sub_1CFB8FBF0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1CFB5DDDC(v11, &qword_1EC4EC4B0, &qword_1CFB91F10);
  }

  else
  {
    sub_1CFB8FBE0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1CFB8FB80();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1CFB8FAB0() + 32;
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

      sub_1CFB5DDDC(a3, &qword_1EC4EC4B0, &qword_1CFB91F10);

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

  sub_1CFB5DDDC(a3, &qword_1EC4EC4B0, &qword_1CFB91F10);
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

uint64_t sub_1CFB80C30(uint64_t a1, uint64_t a2)
{
  sub_1CFB5D38C(0, &unk_1EE04BCF0, 0x1E69BDCF8);
  v3 = sub_1CFB8FB20();
  v4 = (*(a2 + 16))(a2, v3);

  v5 = sub_1CFB8FB30();
  return v5;
}

uint64_t sub_1CFB80DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(a1 + *a5) = sub_1CFB8FB30();
}

id sub_1CFB81140(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_1CFB811A8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_1CFB811F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
  v15 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v16 = [v15 junkFilteringEnabled];

  if (v16)
  {
    [v14 setIncludeAcceptedIntroductions_];
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
  v18 = objc_allocWithZone(MPContactSearchManager);
  v37 = a4;
  v38 = a5;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1CFB72F7C;
  v36 = &block_descriptor_44;
  v19 = _Block_copy(&aBlock);

  v20 = v18;
  v21 = a1;
  v28 = [v20 initWithType:a1 contactStore:v17 searchResultsRanker:v19];

  _Block_release(v19);

  v22 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v37 = a2;
  v38 = a3;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1CFB81140;
  v36 = &block_descriptor_47;
  v23 = _Block_copy(&aBlock);

  v37 = a6;
  v38 = a7;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1CFB81140;
  v36 = &block_descriptor_50;
  v24 = _Block_copy(&aBlock);

  v37 = a8;
  v38 = a9;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1CFB811A8;
  v36 = &block_descriptor_53;
  v25 = _Block_copy(&aBlock);

  v26 = [v31 initWithContactSearchType:v21 searchManager:v28 featureFlags:v22 contactViewControllerProvider:v23 senderIdentityProvider:v24 callProviderManagerProvider:v25];

  _Block_release(v25);
  _Block_release(v24);
  _Block_release(v23);

  return v26;
}

char *sub_1CFB81698(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  *&v10[OBJC_IVAR___MPContactsSearchController_sectionIndex] = 0x7FFFFFFFFFFFFFFFLL;
  v15 = MEMORY[0x1E69E7CC0];
  *&v10[OBJC_IVAR___MPContactsSearchController_resultIDs] = MEMORY[0x1E69E7CC0];
  *&v10[OBJC_IVAR___MPContactsSearchController_results] = v15;
  v16 = v15;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v17 = &v10[OBJC_IVAR___MPContactsSearchController_searchText];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v10[OBJC_IVAR___MPContactsSearchController_searchTokens] = v16;
  *&v10[OBJC_IVAR___MPContactsSearchController_searchManager] = a2;
  *&v10[OBJC_IVAR___MPContactsSearchController_featureFlags] = a3;
  *&v10[OBJC_IVAR___MPContactsSearchController_contactSearchType] = a1;
  v18 = type metadata accessor for ContactSearchTableViewController(0);
  v19 = objc_allocWithZone(v18);
  v51 = a2;
  v50 = a3;

  sub_1CFB8F7B0();
  *&v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_idsQueryPageSize] = 20;
  *&v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_currentIDSStatusPage] = -1;
  v20 = OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactIDSQuerySubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC940, &qword_1CFB92070);
  swift_allocObject();
  *&v19[v20] = sub_1CFB8F950();
  *&v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController____lazy_storage___contactAvatarCardController] = 0;
  *&v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactSearchResults] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  *&v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_delegate] = 0;
  v21 = &v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_searchText];
  *v21 = 0;
  v21[1] = 0;
  v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_dataSourceNeedsReload] = 1;
  *&v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController____lazy_storage___tableView] = 0;
  *&v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactSearchType] = a1;
  v22 = &v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactViewControllerProvider];
  *v22 = a4;
  v22[1] = a5;
  v23 = &v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_senderIdentityProvider];
  *v23 = a6;
  v23[1] = a7;
  v24 = &v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_callProviderManagerProvider];
  *v24 = a8;
  v24[1] = a9;
  v53.receiver = v19;
  v53.super_class = v18;

  v25 = objc_msgSendSuper2(&v53, sel_initWithNibName_bundle_, 0, 0);
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 defaultCenter];
  [v28 addObserver:v27 selector:sel_handleTUIDSLookupManagerStatusChanged name:*MEMORY[0x1E69D8FA0] object:0];

  *&v10[OBJC_IVAR___MPContactsSearchController_contactsTableViewController] = v27;
  if (a1 < 2)
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v30 = [objc_opt_self() bundleForClass_];
    v31 = sub_1CFB8F620();
    v33 = v32;
    v34 = 4;
LABEL_7:

    v39 = &v10[OBJC_IVAR___MPContactsSearchController_sectionTitle];
    *v39 = v31;
    v39[1] = v33;
    *&v10[OBJC_IVAR___MPContactsSearchController_sectionType] = v34;
    v52.receiver = v10;
    v52.super_class = MPContactsSearchController;
    v40 = objc_msgSendSuper2(&v52, sel_init, 0xE000000000000000);

    v41 = *&v40[OBJC_IVAR___MPContactsSearchController_contactsTableViewController];
    v42 = *(v41 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_delegate);
    *(v41 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_delegate) = v40;
    v43 = v40;

    return v43;
  }

  if (a1 == 2)
  {
    type metadata accessor for BundleClass();
    v35 = swift_getObjCClassFromMetadata();
    v30 = [objc_opt_self() bundleForClass_];
    v31 = sub_1CFB8F620();
    v33 = v36;
    v34 = 6;
    goto LABEL_7;
  }

  if (a1 == 3)
  {
    type metadata accessor for BundleClass();
    v37 = swift_getObjCClassFromMetadata();
    v30 = [objc_opt_self() bundleForClass_];
    v31 = sub_1CFB8F620();
    v33 = v38;
    v34 = 5;
    goto LABEL_7;
  }

  sub_1CFB8FEA0();
  MEMORY[0x1D386D530](0xD00000000000001ALL, 0x80000001CFB944E0);
  type metadata accessor for ContactSearchType(0);
  sub_1CFB8FF90();
  result = sub_1CFB8FFA0();
  __break(1u);
  return result;
}

uint64_t sub_1CFB81E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v15;
  v8[4] = sub_1CFB8FBC0();
  v8[5] = sub_1CFB8FBB0();
  v12 = swift_task_alloc();
  v8[6] = v12;
  *v12 = v8;
  v12[1] = sub_1CFB6BDF4;

  return sub_1CFB81F14(a5, a6, a7);
}

uint64_t sub_1CFB81F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[30] = a3;
  v4[31] = v3;
  v4[28] = a1;
  v4[29] = a2;
  sub_1CFB8F610();
  v4[32] = swift_task_alloc();
  sub_1CFB8FBC0();
  v4[33] = sub_1CFB8FBB0();
  v6 = sub_1CFB8FB80();
  v4[34] = v6;
  v4[35] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFB81FDC, v6, v5);
}

uint64_t sub_1CFB81FDC()
{
  v1 = [*(v0 + 248) featureFlags];
  v2 = [v1 callHistorySearchEnabled];

  if (!v2 || !*(v0 + 232))
  {

    goto LABEL_11;
  }

  v3 = [*(v0 + 248) searchText];
  if (v3)
  {
    v5 = *(v0 + 224);
    v4 = *(v0 + 232);
    v6 = v3;
    v7 = sub_1CFB8FA90();
    v9 = v8;

    if (v7 == v5 && v4 == v9)
    {
    }

    else
    {
      v11 = sub_1CFB90010();

      if ((v11 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v14 = *(v0 + 240);
    v15 = [*(v0 + 248) searchTokens];
    sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);
    v16 = sub_1CFB8FB30();

    LOBYTE(v14) = sub_1CFB843A0(v16, v14);

    if (v14)
    {
      v17 = *(v0 + 248);

      v18 = [v17 delegate];
      if (!v18)
      {
        goto LABEL_11;
      }

      goto LABEL_91;
    }
  }

LABEL_18:
  v19 = *(v0 + 248);
  v20 = *(v0 + 232);
  sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);
  v21 = sub_1CFB8FB20();
  [v19 setSearchTokens_];

  if (sub_1CFB8FAD0() <= 0)
  {
    v22 = *(v0 + 240);
    if (v22 >> 62)
    {
      goto LABEL_89;
    }

    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
LABEL_90:
      v74 = *(v0 + 248);

      v75 = sub_1CFB8FB20();
      [v74 setResults_];

      v76 = sub_1CFB8FB20();
      [v74 setResultIDs_];

      v77 = sub_1CFB8FA80();
      [v74 setSearchText_];

      v18 = [v74 delegate];
      if (v18)
      {
LABEL_91:
        [v18 didCompleteSearchFor_];
        swift_unknownObjectRelease();
      }

LABEL_11:

      v12 = *(v0 + 8);

      return v12();
    }
  }

  while (1)
  {
    v23 = [*(v0 + 248) contactSearchType];
    if ((v23 - 1) < 3)
    {
      v24 = [*(v0 + 248) featureFlags];
      v25 = [v24 phoneLargeFormatUIEnabled];

      if (v25)
      {
        v26 = *(v0 + 232);
        if ((v26 & 0x2000000000000000) != 0)
        {
          v27 = HIBYTE(v26) & 0xF;
        }

        else
        {
          v27 = *(v0 + 224) & 0xFFFFFFFFFFFFLL;
        }

        *&v78 = *(v0 + 224);
        *(&v78 + 1) = v20;
        *&v79 = 0;
        *(&v79 + 1) = v27;

        sub_1CFB8FAF0();
        if (v28)
        {
          do
          {
            if (sub_1CFB8FA60())
            {
            }

            else
            {
              v30 = sub_1CFB8FA70();

              if ((v30 & 1) == 0)
              {
                v31 = *(v0 + 248);

                goto LABEL_35;
              }
            }

            sub_1CFB8FAF0();
          }

          while (v29);
        }
      }

      v31 = *(v0 + 248);
      v33 = sub_1CFB8FA80();
      v32 = [v33 unformattedNumberInLatin];

      goto LABEL_38;
    }

    if (!v23)
    {
      v31 = *(v0 + 248);
LABEL_35:
      v32 = sub_1CFB8FA80();
LABEL_38:
      [v31 setSearchText_];
      goto LABEL_39;
    }

    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v52 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v52, qword_1EE04C228);
    v32 = sub_1CFB8F7A0();
    v53 = sub_1CFB8FCA0();
    if (os_log_type_enabled(v32, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1CFB5B000, v32, v53, "Unknown contactSearchType", v54, 2u);
      MEMORY[0x1D386E190](v54, -1, -1);
    }

LABEL_39:
    v34 = *(v0 + 240);

    if (v34 >> 62)
    {
      v35 = sub_1CFB8FFB0();
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v0 + 288) = v35;
    if (v35 < 1)
    {
      goto LABEL_83;
    }

    if ((v34 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v36 = *(*(v0 + 240) + 32);
      goto LABEL_45;
    }

    __break(1u);
LABEL_89:
    if (sub_1CFB8FFB0() < 1)
    {
      goto LABEL_90;
    }
  }

  v36 = MEMORY[0x1D386D910](0, *(v0 + 240));
LABEL_45:
  v37 = v36;
  v38 = [v36 representedObject];

  if (v38)
  {
    sub_1CFB8FE40();
    swift_unknownObjectRelease();
  }

  else
  {
    v78 = 0u;
    v79 = 0u;
  }

  *(v0 + 176) = v78;
  *(v0 + 192) = v79;
  if (!*(v0 + 200))
  {

    sub_1CFB5DDDC(v0 + 176, &unk_1EC4ECA20, &qword_1CFB91F00);
LABEL_65:
    v55 = *(v0 + 248);
    v56 = sub_1CFB8FB20();
    [v55 setResults_];

    v57 = sub_1CFB8FB20();
    [v55 setResultIDs_];

    v58 = [v55 delegate];
    if (v58)
    {
      [v58 didCompleteSearchFor_];
      swift_unknownObjectRelease();
    }

    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v59 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v59, qword_1EE04C228);
    v60 = sub_1CFB8F7A0();
    v61 = sub_1CFB8FCB0();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_1CFB5B000, v60, v61, "ContactsSearchController: Could not extract suggestion object from search token", v62, 2u);
      MEMORY[0x1D386E190](v62, -1, -1);
    }

    goto LABEL_11;
  }

  sub_1CFB5D38C(0, &unk_1EC4EC490, 0x1E6964EA8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_65;
  }

  v39 = *(v0 + 216);
  v40 = [v39 currentToken];
  if (!v40 || (v41 = v40, v42 = [v40 tokenKind], v41, v42 != 16))
  {
    v63 = *(v0 + 248);

    v64 = sub_1CFB8FB20();
    [v63 setResults_];

    v65 = sub_1CFB8FB20();
    [v63 setResultIDs_];

    v66 = [v63 delegate];
    if (v66)
    {
      [v66 didCompleteSearchFor_];
      swift_unknownObjectRelease();
    }

    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v67 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v67, qword_1EE04C228);
    v48 = sub_1CFB8F7A0();
    v49 = sub_1CFB8FCB0();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      v51 = "ContactsSearchController: Aborting contacts search because search token doesn't contain person suggestion";
LABEL_78:
      _os_log_impl(&dword_1CFB5B000, v48, v49, v51, v50, 2u);
      MEMORY[0x1D386E190](v50, -1, -1);
    }

LABEL_79:

    goto LABEL_11;
  }

  if (sub_1CFB8FAD0() >= 1)
  {
    v43 = *(v0 + 248);

    v44 = sub_1CFB8FB20();
    [v43 setResults_];

    v45 = sub_1CFB8FB20();
    [v43 setResultIDs_];

    v46 = [v43 delegate];
    if (v46)
    {
      [v46 didCompleteSearchFor_];
      swift_unknownObjectRelease();
    }

    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v47 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v47, qword_1EE04C228);
    v48 = sub_1CFB8F7A0();
    v49 = sub_1CFB8FCB0();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      v51 = "ContactsSearchController: Aborting contacts search because both searchtoken and text are present";
      goto LABEL_78;
    }

    goto LABEL_79;
  }

  sub_1CFB5D38C(0, &qword_1EC4EC700, 0x1E696AAB0);
  sub_1CFB8FC80();
  v68 = sub_1CFB8FDD0();
  v69 = [v68 string];

  if (!v69)
  {
    sub_1CFB8FA90();
    v69 = sub_1CFB8FA80();
  }

  [*(v0 + 248) setSearchText_];

LABEL_83:
  v70 = *(v0 + 248);
  v71 = [v70 searchManager];
  *(v0 + 296) = v71;
  v72 = [v70 searchText];
  *(v0 + 304) = v72;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 208;
  *(v0 + 24) = sub_1CFB82C34;
  v73 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECA18, &qword_1CFB92550);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1CFB837BC;
  *(v0 + 104) = &block_descriptor_6;
  *(v0 + 112) = v73;
  [v71 searchFor:v72 shouldRefreshResult:0 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1CFB82C34()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  v3 = *(v1 + 280);
  v4 = *(v1 + 272);
  if (v2)
  {
    v5 = sub_1CFB83414;
  }

  else
  {
    v5 = sub_1CFB82D64;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

char *sub_1CFB82D64()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];

  v66 = v0;
  v4 = v0[26];

  if (v3 >= 1)
  {
    v67 = MEMORY[0x1E69E7CC0];
    if (v4 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CFB8FFB0())
    {
      v6 = 0;
      v64 = v4 & 0xFFFFFFFFFFFFFF8;
      v65 = v4 & 0xC000000000000001;
      while (1)
      {
        if (v65)
        {
          v7 = MEMORY[0x1D386D910](v6, v4);
        }

        else
        {
          if (v6 >= *(v64 + 16))
          {
            goto LABEL_29;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v10 = [v7 contact];
        v11 = [v10 displayName];

        if (v11)
        {
          v12 = sub_1CFB8FA90();
          v14 = v13;
        }

        else
        {
          v12 = 0;
          v14 = 0;
        }

        v15 = [v66[31] searchText];
        if (v15)
        {
          v16 = v4;
          v17 = v15;
          v18 = sub_1CFB8FA90();
          v20 = v19;

          v4 = v16;
          if (v14)
          {
            if (!v20)
            {
              goto LABEL_25;
            }

            if (v12 == v18 && v14 == v20)
            {
            }

            else
            {
              v21 = sub_1CFB90010();

              if ((v21 & 1) == 0)
              {

                goto LABEL_7;
              }
            }
          }

          else if (v20)
          {
LABEL_25:

            goto LABEL_7;
          }
        }

        else if (v14)
        {
          goto LABEL_25;
        }

        sub_1CFB8FF00();
        sub_1CFB8FF30();
        sub_1CFB8FF40();
        sub_1CFB8FF10();
LABEL_7:
        ++v6;
        if (v9 == i)
        {
          v22 = v67;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }

    v22 = MEMORY[0x1E69E7CC0];
LABEL_32:

    v4 = v22;
  }

  v23 = v66;
  if (v4 >> 62)
  {
    v24 = sub_1CFB8FFB0();
    v23 = v66;
  }

  else
  {
    v24 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v24)
  {
    v68 = MEMORY[0x1E69E7CC0];
    result = sub_1CFB8E10C(0, v24 & ~(v24 >> 63), 0);
    if (v24 < 0)
    {
      __break(1u);
      return result;
    }

    v26 = 0;
    v27 = v4;
    v28 = v4 & 0xC000000000000001;
    do
    {
      if (v28)
      {
        v29 = MEMORY[0x1D386D910](v26, v27);
      }

      else
      {
        v29 = *(v27 + 8 * v26 + 32);
      }

      v30 = v29;
      v31 = [v29 contact];
      v32 = v66;
      v66[21] = sub_1CFB5D38C(0, &qword_1EC4EC820, 0x1E695CD58);

      v66[18] = v31;
      v34 = *(v68 + 16);
      v33 = *(v68 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1CFB8E10C((v33 > 1), v34 + 1, 1);
        v32 = v66;
      }

      ++v26;
      *(v68 + 16) = v34 + 1;
      sub_1CFB66A0C(v32 + 9, (v68 + 32 * v34 + 32));
    }

    while (v24 != v26);
    v35 = v66[31];
    v36 = sub_1CFB8FB20();

    [v35 setResults_];

    v69 = MEMORY[0x1E69E7CC0];
    sub_1CFB8E0EC(0, v24 & ~(v24 >> 63), 0);
    v37 = 0;
    do
    {
      if (v28)
      {
        v38 = MEMORY[0x1D386D910](v37, v27);
      }

      else
      {
        v38 = *(v27 + 8 * v37 + 32);
      }

      v39 = v38;
      v40 = [v38 contact];
      v41 = [v40 identifier];

      v42 = sub_1CFB8FA90();
      v44 = v43;

      v46 = *(v69 + 16);
      v45 = *(v69 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1CFB8E0EC((v45 > 1), v46 + 1, 1);
      }

      ++v37;
      *(v69 + 16) = v46 + 1;
      v47 = v69 + 16 * v46;
      *(v47 + 32) = v42;
      *(v47 + 40) = v44;
    }

    while (v24 != v37);
    v4 = v27;
    v48 = v66;
  }

  else
  {
    v49 = v23[31];
    v48 = v23;
    v50 = sub_1CFB8FB20();

    [v49 setResults_];
  }

  v51 = v48[31];
  v52 = sub_1CFB8FB20();

  [v51 setResultIDs_];

  v53 = [v51 contactsTableViewController];
  v54 = [v51 searchText];
  if (v54)
  {
    v55 = v54;
    v56 = sub_1CFB8FA90();
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0;
  }

  v59 = v66[31];
  v60 = &v53[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_searchText];
  *v60 = v56;
  v60[1] = v58;

  v61 = [v59 contactsTableViewController];
  *&v61[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactSearchResults] = v4;

  v61[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_dataSourceNeedsReload] = 1;
  *&v61[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_currentIDSStatusPage] = -1;

  v62 = [v59 delegate];
  if (v62)
  {
    [v62 didCompleteSearchFor_];
    swift_unknownObjectRelease();
  }

  v63 = v66[1];

  return v63();
}

uint64_t sub_1CFB83414()
{
  v1 = v0[38];
  v2 = v0[37];

  swift_willThrow();

  if (qword_1EE04BDB8 != -1)
  {
    swift_once();
  }

  v3 = v0[39];
  v4 = sub_1CFB8F7C0();
  __swift_project_value_buffer(v4, qword_1EE04C228);
  v5 = v3;
  v6 = sub_1CFB8F7A0();
  v7 = sub_1CFB8FC90();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[39];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1CFB5B000, v6, v7, "ContactsSearchController: Error searching contacts: %@", v10, 0xCu);
    sub_1CFB5DDDC(v11, &unk_1EC4EC6F0, &unk_1CFB920C0);
    MEMORY[0x1D386E190](v11, -1, -1);
    MEMORY[0x1D386E190](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1CFB837BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC8C0, &qword_1CFB923F0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_1CFB5D38C(0, &unk_1EE04BCF0, 0x1E69BDCF8);
    **(*(v4 + 64) + 40) = sub_1CFB8FB30();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

void sub_1CFB838AC()
{
  v1 = v0;
  v2 = [v0 featureFlags];
  v3 = [v2 callHistorySearchEnabled];

  if (v3)
  {
    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v4 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v4, qword_1EE04C228);
    v5 = sub_1CFB8F7A0();
    v6 = sub_1CFB8FCB0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1CFB5B000, v5, v6, "ContactsSearchController: cancelling previous search requests", v7, 2u);
      MEMORY[0x1D386E190](v7, -1, -1);
    }

    v8 = [v1 searchManager];
    [v8 cancelPreviousSearch];
  }
}

void sub_1CFB83E68(void *a1)
{
  v2 = v1;
  v4 = [v2 contactsTableViewController];
  v5 = *&v4[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_searchText + 8];
  if (v5)
  {
    v6 = *&v4[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_searchText];
    v10 = v4;
    type metadata accessor for ContactSearchViewCell(0);
    v7 = swift_dynamicCastClass();
    v4 = v10;
    if (v7)
    {
      v8 = *&v10[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactSearchType];
      v9 = a1;

      sub_1CFB70600(v6, v5, v8);

      v4 = v10;
    }
  }
}

id MPContactsSearchController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1CFB842B4(uint64_t a1)
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
  v11[1] = sub_1CFB66AE0;

  return sub_1CFB81E34(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1CFB843A0(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1D386D910](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1D386D910](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1CFB8FE00();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1CFB8FE00();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1CFB8FFB0();
  }

  result = sub_1CFB8FFB0();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1CFB845F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CFB77444;

  return sub_1CFB7A0C8(a1, v4);
}

uint64_t sub_1CFB846A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CFB66AE0;

  return sub_1CFB7A0C8(a1, v4);
}

id sub_1CFB84760()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

id sub_1CFB8479C()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CFB84820(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = MEMORY[0x1E69E7CC0];
  v6 = *(a1 + 16);
  sub_1CFB8FF20();
  if (!v6)
  {
    return v10;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1CFB6E0B0(i, v9);
    sub_1CFB5D38C(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1CFB8FF00();
    sub_1CFB8FF30();
    sub_1CFB8FF40();
    sub_1CFB8FF10();
    if (!--v6)
    {
      return v10;
    }
  }

  return 0;
}

Swift::Void __swiftcall MPSearchManager.cancelPreviousSearch()()
{
  if ([*&v0[OBJC_IVAR___MPSearchManager_featureFlags] callHistorySearchEnabled])
  {
    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v1 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v1, qword_1EE04C228);
    v2 = v0;
    v3 = sub_1CFB8F7A0();
    v4 = sub_1CFB8FCB0();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v16 = v6;
      *v5 = 136315138;
      v7 = [v2 logPrefix];
      v8 = sub_1CFB8FA90();
      v10 = v9;

      v11 = sub_1CFB8C3D8(v8, v10, &v16);

      *(v5 + 4) = v11;
      _os_log_impl(&dword_1CFB5B000, v3, v4, "%s Cancelling current search query", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1D386E190](v6, -1, -1);
      MEMORY[0x1D386E190](v5, -1, -1);
    }

    v12 = [v2 serialQueue];
    MEMORY[0x1EEE9AC00](v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECA38, &qword_1CFB92560);
    sub_1CFB8FD90();

    v13 = *&v2[OBJC_IVAR___MPSearchManager_query];
    *&v2[OBJC_IVAR___MPSearchManager_query] = 0;

    v14 = [v2 serialQueue];
    MEMORY[0x1EEE9AC00](v14);
    sub_1CFB8FD90();

    v15 = *&v2[OBJC_IVAR___MPSearchManager_userQuery];
    *&v2[OBJC_IVAR___MPSearchManager_userQuery] = 0;
  }
}

uint64_t sub_1CFB84BDC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1CFB8FFB0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1CFB8FFB0();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1CFB8E348(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1CFB8E3E8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_1CFB84CCC(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1CFB65A0C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1CFB84DC0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1CFB8FFB0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1CFB8FFB0();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1CFB8E348(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1CFB8E598(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1CFB84EC8()
{
  v1 = *v0;
  sub_1CFB900D0();
  MEMORY[0x1D386DB30](v1);
  return sub_1CFB900F0();
}

uint64_t sub_1CFB84F3C(uint64_t a1)
{
  v2 = *v1;
  sub_1CFB900D0();
  MEMORY[0x1D386DB30](v2);
  return sub_1CFB900F0();
}

id sub_1CFB85014()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECB30, &qword_1CFB91EF0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CFB91E60;
  *(v1 + 32) = sub_1CFB8FA90();
  *(v1 + 40) = v2;
  v3 = sub_1CFB8FB20();

  [v0 setBundleIDs_];

  v4 = sub_1CFB8FA90();
  v6 = v5;
  v11 = sub_1CFB8FA90();
  v12 = v7;
  MEMORY[0x1D386D530](540884256, 0xE400000000000000);
  MEMORY[0x1D386D530](v4, v6);

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CFB91E60;
  *(v8 + 32) = v11;
  *(v8 + 40) = v12;
  v9 = sub_1CFB8FB20();

  [v0 setFilterQueries_];

  return v0;
}

char *sub_1CFB85338(uint64_t a1, void *a2)
{
  v25 = a1;
  v26 = a2;
  v24 = sub_1CFB8FD70();
  v3 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFB8FD20();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1CFB8F9E0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v23 = OBJC_IVAR___MPSearchManager_serialQueue;
  v8 = sub_1CFB5D38C(0, &unk_1EE04BD10, 0x1E69E9610);
  v22[1] = "search(withQueryString:)";
  v22[2] = v8;
  sub_1CFB8F9D0();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1CFB6B23C(&qword_1EE04BD30, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC5D8, &qword_1CFB922D0);
  sub_1CFB5DD2C(&qword_1EE04BD60, &qword_1EC4EC5D8, &qword_1CFB922D0, MEMORY[0x1E69E6328]);
  sub_1CFB8FE50();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v24);
  *&v2[v23] = sub_1CFB8FDC0();
  v9 = &v2[OBJC_IVAR___MPSearchManager_kCSQueryFlags];
  *v9 = 1952741219;
  *(v9 + 1) = 0xE400000000000000;
  *&v2[OBJC_IVAR___MPSearchManager_query] = 0;
  *&v2[OBJC_IVAR___MPSearchManager_userQuery] = 0;
  v10 = OBJC_IVAR___MPSearchManager_featureFlags;
  *&v2[v10] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v11 = OBJC_IVAR___MPSearchManager_userQueryContext;
  *&v2[v11] = [objc_allocWithZone(MEMORY[0x1E6964ED0]) init];
  v12 = &v2[OBJC_IVAR___MPSearchManager_text];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = OBJC_IVAR___MPSearchManager_subscriptionsLabelIDByLabel;
  *&v2[v13] = sub_1CFB6B128(MEMORY[0x1E69E7CC0]);
  v14 = OBJC_IVAR___MPSearchManager_suggestion;
  *&v2[v14] = [objc_opt_self() emptySuggestion];
  v15 = v26;
  *&v2[OBJC_IVAR___MPSearchManager_searchItemType] = v25;
  *&v2[OBJC_IVAR___MPSearchManager_callProviderManager] = v15;
  v27.receiver = v2;
  v27.super_class = MPSearchManager;
  v16 = v15;
  v17 = objc_msgSendSuper2(&v27, sel_init);
  v18 = [v17 fetchSubscriptionsInUseMap];
  v19 = sub_1CFB8FA40();

  *&v17[OBJC_IVAR___MPSearchManager_subscriptionsLabelIDByLabel] = v19;

  v20 = sub_1CFB8FD80();
  [v16 addDelegate:v17 queue:v20];

  return v17;
}

uint64_t sub_1CFB8578C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = sub_1CFB8FBC0();
  v3[7] = sub_1CFB8FBB0();
  v5 = sub_1CFB8FB80();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1CFB8582C, v5, v4);
}

uint64_t sub_1CFB8582C()
{
  if ([*(v0[5] + OBJC_IVAR___MPSearchManager_featureFlags) callHistorySearchEnabled])
  {
    v1 = v0[5];
    v3 = v0[3];
    v2 = v0[4];
    v4 = [v1 queryContext];
    v5 = objc_allocWithZone(MEMORY[0x1E6964E68]);
    v6 = sub_1CFB8FA80();
    v7 = [v5 initWithQueryString:v6 queryContext:v4];
    v0[10] = v7;

    v8 = v7;
    v9 = [v1 serialQueue];
    *(swift_task_alloc() + 16) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECA38, &qword_1CFB92560);
    sub_1CFB8FD90();

    v10 = *&v1[OBJC_IVAR___MPSearchManager_query];
    *&v1[OBJC_IVAR___MPSearchManager_query] = v7;

    v11 = sub_1CFB8FBB0();
    v0[11] = v11;
    v12 = swift_task_alloc();
    v0[12] = v12;
    v12[2] = v8;
    v12[3] = v1;
    v12[4] = v3;
    v12[5] = v2;
    v13 = swift_task_alloc();
    v0[13] = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECB80, &qword_1CFB92610);
    *v13 = v0;
    v13[1] = sub_1CFB85AD0;
    v15 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DE38](v0 + 2, v11, v15, 0xD000000000000018, 0x80000001CFB94860, sub_1CFB8F17C, v12, v14);
  }

  else
  {

    v16 = v0[1];
    v17 = MEMORY[0x1E69E7CC0];

    return v16(v17);
  }
}

uint64_t sub_1CFB85AD0()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1CFB85C68;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1CFB85BF4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1CFB85BF4()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1CFB85C68()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CFB85CF0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v47 = a3;
  v48 = a5;
  v8 = sub_1CFB8F9A0();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1CFB8F9E0();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECB88, &qword_1CFB92618);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x1E69E7CC0];
  v61 = sub_1CFB8F188;
  v62 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v49 = &v59;
  v59 = sub_1CFB863F4;
  v60 = &block_descriptor_121;
  v17 = _Block_copy(&aBlock);

  [a2 setFoundItemsHandler_];
  _Block_release(v17);
  (*(v12 + 16))(v15, a1, v11);
  v18 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v19 = (v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  v21 = a2;
  v22 = v47;
  *(v20 + 3) = v47;
  *(v20 + 4) = a4;
  v46 = a4;
  v23 = v48;
  *(v20 + 5) = v48;
  (*(v12 + 32))(&v20[v18], v15, v11);
  *&v20[v19] = v16;
  v61 = sub_1CFB8F2B0;
  v62 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = sub_1CFB86408;
  v60 = &block_descriptor_127;
  v24 = _Block_copy(&aBlock);
  v49 = v16;

  v25 = v21;
  v26 = v22;

  [v25 setCompletionHandler_];
  _Block_release(v24);
  if (qword_1EE04BDB8 != -1)
  {
    swift_once();
  }

  v27 = sub_1CFB8F7C0();
  __swift_project_value_buffer(v27, qword_1EE04C228);
  v28 = v26;

  v29 = sub_1CFB8F7A0();
  v30 = sub_1CFB8FCB0();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock = v32;
    *v31 = 136315394;
    v33 = [v28 logPrefix];
    v34 = sub_1CFB8FA90();
    v36 = v35;

    v37 = sub_1CFB8C3D8(v34, v36, &aBlock);

    *(v31 + 4) = v37;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_1CFB8C3D8(v46, v23, &aBlock);
    _os_log_impl(&dword_1CFB5B000, v29, v30, "%s Beginning search query for queryString %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386E190](v32, -1, -1);
    MEMORY[0x1D386E190](v31, -1, -1);
  }

  v38 = [v28 serialQueue];
  v39 = swift_allocObject();
  *(v39 + 16) = v25;
  v61 = sub_1CFB8F578;
  v62 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = sub_1CFB623CC;
  v60 = &block_descriptor_133;
  v40 = _Block_copy(&aBlock);
  v41 = v25;
  v42 = v50;
  sub_1CFB8F9B0();
  v56 = MEMORY[0x1E69E7CC0];
  sub_1CFB6B23C(&qword_1EE04BD78, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC290, &qword_1CFB91EA8);
  sub_1CFB5DD2C(&unk_1EE04BD68, &unk_1EC4EC290, &qword_1CFB91EA8, MEMORY[0x1E69E6328]);
  v43 = v52;
  v44 = v55;
  sub_1CFB8FE50();
  MEMORY[0x1D386D7F0](0, v42, v43, v40);
  _Block_release(v40);

  (*(v54 + 8))(v43, v44);
  (*(v51 + 8))(v42, v53);
}

void sub_1CFB86408(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1CFB865FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1CFB8FBC0();
  v3[5] = sub_1CFB8FBB0();
  v5 = sub_1CFB8FB80();

  return MEMORY[0x1EEE6DFA0](sub_1CFB86698, v5, v4);
}

uint64_t sub_1CFB86698()
{
  v1 = v0[4];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v3 = sub_1CFB8FA90();
  v5 = v4;
  v0[7] = v4;
  v6 = v1;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1CFB86774;

  return sub_1CFB8578C(v3, v5);
}

uint64_t sub_1CFB86774(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 32);
  v7 = *v2;

  if (v1)
  {
    if (v5)
    {
      v8 = *(v4 + 48);
      v9 = sub_1CFB8F630();

      v8[2](v8, 0, v9);
      v10 = v8;
LABEL_6:
      _Block_release(v10);

      goto LABEL_9;
    }
  }

  else
  {
    if (v5)
    {
      v11 = *(v4 + 48);
      v9 = sub_1CFB8FB20();

      v11[2](v11, v9, 0);
      v10 = v11;
      goto LABEL_6;
    }
  }

LABEL_9:
  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_1CFB86968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = a3;
  v4[33] = v3;
  v4[30] = a1;
  v4[31] = a2;
  v4[34] = sub_1CFB8FBC0();
  v4[35] = sub_1CFB8FBB0();
  v6 = sub_1CFB8FB80();
  v4[36] = v6;
  v4[37] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFB86A08, v6, v5);
}

uint64_t sub_1CFB86A08()
{
  if (![*(*(v0 + 264) + OBJC_IVAR___MPSearchManager_featureFlags) callHistorySearchEnabled])
  {

    v23 = *(v0 + 8);
    v24 = MEMORY[0x1E69E7CC0];

    return v23(v24);
  }

  v1 = MEMORY[0x1E69E7CC0];
  v2 = *(v0 + 256);
  *(v0 + 208) = MEMORY[0x1E69E7CC0];
  v66 = v2 >> 62;
  v67 = v2;
  if (v2 >> 62)
  {
LABEL_57:
    v70 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = sub_1CFB8FFB0();
    v2 = *(v0 + 256);
  }

  else
  {
    v70 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 304) = v1;
  v69 = v0;
  if (v3)
  {
    v4 = 0;
    v68 = v2 + 32;
    while (1)
    {
      if ((v67 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D386D910](v4, *(v0 + 256));
      }

      else
      {
        v2 = *(v70 + 16);
        if (v4 >= v2)
        {
          goto LABEL_56;
        }

        v5 = *(v68 + 8 * v4);
      }

      v6 = v5;
      if (__OFADD__(v4++, 1))
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v8 = [v5 representedObject];
      if (!v8)
      {
        __break(1u);
        return MEMORY[0x1EEE6DE38](v8, v9, v10, v11, v12, v13, v14, v15);
      }

      sub_1CFB8FE40();
      swift_unknownObjectRelease();
      sub_1CFB66A0C((v0 + 176), (v0 + 144));
      sub_1CFB5D38C(0, &unk_1EC4EC490, 0x1E6964EA8);
      swift_dynamicCast();
      v16 = *(v0 + 216);
      v17 = [v16 suggestionTokens];
      sub_1CFB5D38C(0, &qword_1EC4ECB40, 0x1E6964EF0);
      v1 = sub_1CFB8FB30();

      v72 = v6;
      if (v1 >> 62)
      {
        v18 = sub_1CFB8FFB0();
        if (!v18)
        {
          goto LABEL_6;
        }

LABEL_14:
        v19 = 0;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x1D386D910](v19, v1);
          }

          else
          {
            v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v19 >= v2)
            {
              goto LABEL_54;
            }

            v20 = *(v1 + 8 * v19 + 32);
          }

          v21 = v20;
          v0 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

          if ([v20 tokenKind])
          {
            break;
          }

          ++v19;
          if (v0 == v18)
          {
            goto LABEL_6;
          }
        }

        v22 = v21;
        v0 = v69;
        MEMORY[0x1D386D560]();
        if (*((*(v0 + 208) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 208) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CFB8FB50();
        }

        v1 = v69 + 208;
        sub_1CFB8FB70();

        *(v69 + 304) = *(v69 + 208);
        if (v4 == v3)
        {
          break;
        }
      }

      else
      {
        v18 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_14;
        }

LABEL_6:

        v0 = v69;
        if (v4 == v3)
        {
          break;
        }
      }
    }
  }

  v26 = *(v0 + 264);
  v28 = *(v0 + 240);
  v27 = *(v0 + 248);
  v29 = OBJC_IVAR___MPSearchManager_text;
  *(v0 + 312) = OBJC_IVAR___MPSearchManager_text;
  v30 = &v26[v29];
  *v30 = v28;
  *(v30 + 1) = v27;

  v31 = swift_allocObject();
  *(v0 + 320) = v31;
  *(v31 + 16) = MEMORY[0x1E69E7CC0];

  v32 = sub_1CFB8FA80();
  v33 = [v26 queryStringForSimSearchWithSearchText_];

  if (v33)
  {
    v34 = sub_1CFB8FA90();
    v36 = v35;

    if (v66)
    {
      if (sub_1CFB8FFB0())
      {
        goto LABEL_36;
      }
    }

    else if (*(v70 + 16))
    {
LABEL_36:
      *v30 = xmmword_1CFB922E0;

      goto LABEL_38;
    }

    v41 = *(v0 + 264);

    v42 = sub_1CFB8FA80();
    *(v0 + 328) = v42;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 232;
    *(v0 + 24) = sub_1CFB87390;
    v43 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECB10, &qword_1CFB925A8);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1CFB87B24;
    *(v0 + 104) = &block_descriptor_84;
    *(v0 + 112) = v43;
    [v41 fetchResultsForSimSearchWithSearchText:v42 completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  v34 = 0;
  v36 = 0;
LABEL_38:
  v37 = *(v0 + 264);
  v38 = &v37[*(v0 + 312)];
  v39 = [v37 suggestion];
  if (*(v38 + 1))
  {

    v40 = sub_1CFB8FA80();
  }

  else
  {
    v40 = 0;
  }

  v44 = *(v0 + 264);
  v45 = objc_opt_self();
  sub_1CFB5D38C(0, &qword_1EC4ECB40, 0x1E6964EF0);
  v46 = sub_1CFB8FB20();

  v47 = [v45 updatedSuggestionWithCurrentSuggestion:v39 userString:v40 tokens:v46];

  [v44 setSuggestion_];
  v48 = [v44 suggestion];
  v49 = [v44 userQueryContextFor_];

  [v44 setUserQueryContext_];
  if (v36)
  {
    v50 = [*(v69 + 264) userQueryContext];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECB30, &qword_1CFB91EF0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1CFB91E60;
    *(v51 + 32) = v34;
    *(v51 + 40) = v36;
    v52 = sub_1CFB8FB20();

    [v50 setFilterQueries_];
  }

  v53 = *(v69 + 264);
  v54 = *&v53[*(v69 + 312) + 8];

  v55 = [v53 userQueryContext];
  if (v54)
  {
    v56 = sub_1CFB8FA80();
  }

  else
  {
    v56 = 0;
  }

  v57 = *(v69 + 264);
  v58 = *(v69 + 240);
  v71 = *(v69 + 248);
  v73 = *(v69 + 320);
  v59 = [objc_allocWithZone(MEMORY[0x1E6964EC8]) initWithUserQueryString:v56 userQueryContext:v55];
  *(v69 + 344) = v59;

  v60 = v59;
  v61 = [v57 serialQueue];
  *(swift_task_alloc() + 16) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECA38, &qword_1CFB92560);
  sub_1CFB8FD90();

  v62 = *&v57[OBJC_IVAR___MPSearchManager_userQuery];
  *&v57[OBJC_IVAR___MPSearchManager_userQuery] = v59;

  v63 = sub_1CFB8FBB0();
  *(v69 + 352) = v63;
  v64 = swift_task_alloc();
  *(v69 + 360) = v64;
  v64[2] = v60;
  v64[3] = v73;
  v64[4] = v57;
  v64[5] = v58;
  v64[6] = v71;
  v65 = swift_task_alloc();
  *(v69 + 368) = v65;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECB80, &qword_1CFB92610);
  *v65 = v69;
  v65[1] = sub_1CFB87868;
  v10 = MEMORY[0x1E69E85E0];
  v13 = sub_1CFB8EFDC;
  v8 = (v69 + 224);
  v12 = 0x80000001CFB94840;
  v9 = v63;
  v11 = 0xD00000000000001ALL;
  v14 = v64;

  return MEMORY[0x1EEE6DE38](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1CFB87390()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  if (v2)
  {

    v3 = *(v1 + 288);
    v4 = *(v1 + 296);
    v5 = sub_1CFB87A0C;
  }

  else
  {
    v3 = *(v1 + 288);
    v4 = *(v1 + 296);
    v5 = sub_1CFB874A8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1CFB874A8()
{
  v1 = *(v0 + 328);
  sub_1CFB84CCC(*(v0 + 232));

  v2 = *(v0 + 264);
  v3 = &v2[*(v0 + 312)];
  v4 = [v2 suggestion];
  if (*(v3 + 1))
  {

    v5 = sub_1CFB8FA80();
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v0 + 264);
  v7 = objc_opt_self();
  sub_1CFB5D38C(0, &qword_1EC4ECB40, 0x1E6964EF0);
  v8 = sub_1CFB8FB20();

  v9 = [v7 updatedSuggestionWithCurrentSuggestion:v4 userString:v5 tokens:v8];

  [v6 setSuggestion_];
  v10 = [v6 suggestion];
  v11 = [v6 userQueryContextFor_];

  [v6 setUserQueryContext_];
  v12 = *(v0 + 264);
  v13 = *&v12[*(v0 + 312) + 8];

  v14 = [v12 userQueryContext];
  if (v13)
  {
    v15 = sub_1CFB8FA80();
  }

  else
  {
    v15 = 0;
  }

  v29 = *(v0 + 320);
  v16 = *(v0 + 264);
  v17 = *(v0 + 240);
  v18 = *(v0 + 248);
  v19 = [objc_allocWithZone(MEMORY[0x1E6964EC8]) initWithUserQueryString:v15 userQueryContext:v14];
  *(v0 + 344) = v19;

  v20 = v19;
  v21 = [v16 serialQueue];
  *(swift_task_alloc() + 16) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECA38, &qword_1CFB92560);
  sub_1CFB8FD90();

  v22 = *&v16[OBJC_IVAR___MPSearchManager_userQuery];
  *&v16[OBJC_IVAR___MPSearchManager_userQuery] = v19;

  v23 = sub_1CFB8FBB0();
  *(v0 + 352) = v23;
  v24 = swift_task_alloc();
  *(v0 + 360) = v24;
  v24[2] = v20;
  v24[3] = v29;
  v24[4] = v16;
  v24[5] = v17;
  v24[6] = v18;
  v25 = swift_task_alloc();
  *(v0 + 368) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECB80, &qword_1CFB92610);
  *v25 = v0;
  v25[1] = sub_1CFB87868;
  v27 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 224, v23, v27, 0xD00000000000001ALL, 0x80000001CFB94840, sub_1CFB8EFDC, v24, v26);
}

uint64_t sub_1CFB87868()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = *(v2 + 288);
    v4 = *(v2 + 296);
    v5 = sub_1CFB87A90;
  }

  else
  {

    v3 = *(v2 + 288);
    v4 = *(v2 + 296);
    v5 = sub_1CFB8798C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1CFB8798C()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1CFB87A0C()
{
  v1 = *(v0 + 328);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CFB87A90()
{
  v1 = *(v0 + 344);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CFB87B24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC8C0, &qword_1CFB923F0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = sub_1CFB8FB30();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t sub_1CFB87C00(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v48 = a4;
  v49 = a6;
  v56 = a5;
  v9 = sub_1CFB8F9A0();
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1CFB8F9E0();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECB88, &qword_1CFB92618);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v47 - v15;
  v62 = sub_1CFB8F59C;
  v63 = a3;
  v47 = a3;
  aBlock = MEMORY[0x1E69E9820];
  v59 = 1107296256;
  v60 = sub_1CFB863F4;
  v61 = &block_descriptor_87;
  v17 = _Block_copy(&aBlock);

  [a2 setFoundItemsHandler_];
  _Block_release(v17);
  (*(v13 + 16))(v16, a1, v12);
  v18 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  v21 = a2;
  v22 = v48;
  v23 = v49;
  v24 = v56;
  *(v20 + 3) = v48;
  *(v20 + 4) = v24;
  *(v20 + 5) = v23;
  (*(v13 + 32))(&v20[v18], v16, v12);
  *&v20[v19] = v47;
  v62 = sub_1CFB8EFEC;
  v63 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v59 = 1107296256;
  v60 = sub_1CFB86408;
  v61 = &block_descriptor_93;
  v25 = _Block_copy(&aBlock);

  v26 = v21;
  v27 = v22;

  [v26 setCompletionHandler_];
  _Block_release(v25);
  if (qword_1EE04BDB8 != -1)
  {
    swift_once();
  }

  v28 = sub_1CFB8F7C0();
  __swift_project_value_buffer(v28, qword_1EE04C228);
  v29 = v27;

  v30 = sub_1CFB8F7A0();
  v31 = sub_1CFB8FCB0();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock = v33;
    *v32 = 136315394;
    v34 = [v29 logPrefix];
    v35 = sub_1CFB8FA90();
    v37 = v36;

    v38 = sub_1CFB8C3D8(v35, v37, &aBlock);

    *(v32 + 4) = v38;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_1CFB8C3D8(v56, v23, &aBlock);
    _os_log_impl(&dword_1CFB5B000, v30, v31, "%s Beginning search query for text %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386E190](v33, -1, -1);
    MEMORY[0x1D386E190](v32, -1, -1);
  }

  v39 = [v29 serialQueue];
  v40 = swift_allocObject();
  *(v40 + 16) = v29;
  v62 = sub_1CFB8F000;
  v63 = v40;
  aBlock = MEMORY[0x1E69E9820];
  v59 = 1107296256;
  v60 = sub_1CFB623CC;
  v61 = &block_descriptor_99;
  v41 = _Block_copy(&aBlock);
  v42 = v29;
  v43 = v50;
  sub_1CFB8F9B0();
  v57 = MEMORY[0x1E69E7CC0];
  sub_1CFB6B23C(&qword_1EE04BD78, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC290, &qword_1CFB91EA8);
  sub_1CFB5DD2C(&unk_1EE04BD68, &unk_1EC4EC290, &qword_1CFB91EA8, MEMORY[0x1E69E6328]);
  v44 = v52;
  v45 = v55;
  sub_1CFB8FE50();
  MEMORY[0x1D386D7F0](0, v43, v44, v41);
  _Block_release(v41);

  (*(v54 + 8))(v44, v45);
  (*(v51 + 8))(v43, v53);
}

char *sub_1CFB882D0(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1CFB8FFB0();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
LABEL_12:
    swift_beginAccess();
    sub_1CFB84CCC(v5);
    return swift_endAccess();
  }

  v18 = MEMORY[0x1E69E7CC0];
  result = sub_1CFB8E0EC(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v17 = a2;
    v7 = 0;
    v5 = v18;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D386D910](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 uniqueIdentifier];
      v11 = sub_1CFB8FA90();
      v13 = v12;

      v15 = *(v18 + 16);
      v14 = *(v18 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1CFB8E0EC((v14 > 1), v15 + 1, 1);
      }

      ++v7;
      *(v18 + 16) = v15 + 1;
      v16 = v18 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v4 != v7);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_1CFB8844C(void *a1, id a2, void *a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, char *a8, const char *a9)
{
  if ([a2 isCancelled])
  {
    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v15 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v15, qword_1EE04C228);
    v16 = a3;

    v17 = sub_1CFB8F7A0();
    v18 = sub_1CFB8FCB0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v59[0] = v20;
      *v19 = 136315394;
      v21 = [v16 logPrefix];
      v22 = sub_1CFB8FA90();
      format = a8;
      v24 = v23;

      v25 = sub_1CFB8C3D8(v22, v24, v59);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_1CFB8C3D8(a4, a5, v59);
      _os_log_impl(&dword_1CFB5B000, v17, v18, format, v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386E190](v20, -1, -1);
      MEMORY[0x1D386E190](v19, -1, -1);
    }

    sub_1CFB8EEC8();
    v26 = swift_allocError();
    *v27 = 1;
    v59[0] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECB88, &qword_1CFB92618);
    sub_1CFB8FB90();
  }

  else if (a1)
  {
    v28 = a1;
    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v29 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v29, qword_1EE04C228);
    v30 = a3;
    v31 = a1;
    v32 = sub_1CFB8F7A0();
    v33 = sub_1CFB8FC90();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v59[0] = v36;
      *v34 = 136315394;
      v37 = [v30 logPrefix];
      v38 = sub_1CFB8FA90();
      v40 = v39;

      v41 = sub_1CFB8C3D8(v38, v40, v59);

      *(v34 + 4) = v41;
      *(v34 + 12) = 2112;
      v42 = a1;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v43;
      *v35 = v43;
      _os_log_impl(&dword_1CFB5B000, v32, v33, "%s Fetching search results from Spotlight failed with error: %@", v34, 0x16u);
      sub_1CFB5DDDC(v35, &unk_1EC4EC6F0, &unk_1CFB920C0);
      MEMORY[0x1D386E190](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x1D386E190](v36, -1, -1);
      MEMORY[0x1D386E190](v34, -1, -1);
    }

    sub_1CFB8EEC8();
    v44 = swift_allocError();
    *v45 = 0;
    v59[0] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECB88, &qword_1CFB92618);
    sub_1CFB8FB90();
  }

  else
  {
    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v46 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v46, qword_1EE04C228);
    swift_retain_n();
    v47 = a3;

    v48 = sub_1CFB8F7A0();
    v49 = sub_1CFB8FCB0();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59[0] = v51;
      *v50 = 136315650;
      v52 = [v47 logPrefix];
      v53 = sub_1CFB8FA90();
      v55 = v54;

      v56 = sub_1CFB8C3D8(v53, v55, v59);

      *(v50 + 4) = v56;
      *(v50 + 12) = 2048;
      swift_beginAccess();
      v57 = *(*(a7 + 16) + 16);

      *(v50 + 14) = v57;

      *(v50 + 22) = 2080;
      *(v50 + 24) = sub_1CFB8C3D8(a4, a5, v59);
      _os_log_impl(&dword_1CFB5B000, v48, v49, a9, v50, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D386E190](v51, -1, -1);
      MEMORY[0x1D386E190](v50, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECB88, &qword_1CFB92618);
    sub_1CFB8FBA0();
  }
}

uint64_t sub_1CFB88C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1CFB8FBC0();
  v4[6] = sub_1CFB8FBB0();
  v6 = sub_1CFB8FB80();

  return MEMORY[0x1EEE6DFA0](sub_1CFB88CFC, v6, v5);
}

uint64_t sub_1CFB88CFC()
{
  v1 = v0[5];
  v2 = v0[4];

  v0[7] = _Block_copy(v2);
  v3 = sub_1CFB8FA90();
  v5 = v4;
  v0[8] = v4;
  sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);
  v6 = sub_1CFB8FB30();
  v0[9] = v6;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_1CFB88E0C;

  return sub_1CFB86968(v3, v5, v6);
}

uint64_t sub_1CFB88E0C(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 40);
  v7 = *v2;

  if (v1)
  {
    if (v5)
    {
      v8 = *(v4 + 56);
      v9 = sub_1CFB8F630();

      v8[2](v8, 0, v9);
      v10 = v8;
LABEL_6:
      _Block_release(v10);

      goto LABEL_9;
    }
  }

  else
  {
    if (v5)
    {
      v11 = *(v4 + 56);
      v9 = sub_1CFB8FB20();

      v11[2](v11, v9, 0);
      v10 = v11;
      goto LABEL_6;
    }
  }

LABEL_9:
  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_1CFB89024(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_1CFB8F7C0();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = sub_1CFB8FBC0();
  v3[10] = sub_1CFB8FBB0();
  v6 = sub_1CFB8FB80();
  v3[11] = v6;
  v3[12] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFB89120, v6, v5);
}

uint64_t sub_1CFB89120()
{
  if ([*(v0[5] + OBJC_IVAR___MPSearchManager_featureFlags) callHistorySearchEnabled])
  {
    v1 = v0[5];
    v2 = objc_opt_self();
    v3 = [v1 suggestion];
    v4 = sub_1CFB8FA80();
    sub_1CFB5D38C(0, &qword_1EC4ECB40, 0x1E6964EF0);
    v5 = sub_1CFB8FB20();
    v6 = [v2 updatedSuggestionWithCurrentSuggestion:v3 userString:v4 tokens:v5];
    v0[13] = v6;

    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v7 = v0[8];
    v8 = v0[6];
    v9 = v0[7];
    v10 = v0[5];
    v11 = __swift_project_value_buffer(v8, qword_1EE04C228);
    (*(v9 + 16))(v7, v11, v8);
    v12 = [v10 userQueryContextFor_];
    v0[14] = v12;
    v13 = objc_allocWithZone(MEMORY[0x1E6964EC8]);
    v14 = v12;
    v15 = sub_1CFB8FA80();
    v16 = [v13 initWithUserQueryString:v15 userQueryContext:v14];
    v0[15] = v16;

    v17 = sub_1CFB8FBB0();
    v0[16] = v17;
    v18 = swift_task_alloc();
    v0[17] = v18;
    v18[2] = v16;
    v18[3] = v7;
    v18[4] = v10;
    v19 = swift_task_alloc();
    v0[18] = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECB48, &qword_1CFB925D8);
    *v19 = v0;
    v19[1] = sub_1CFB89448;
    v21 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DE38](v0 + 2, v17, v21, 0xD00000000000001CLL, 0x80000001CFB947E0, sub_1CFB8ED88, v18, v20);
  }

  else
  {

    v22 = v0[1];
    v23 = MEMORY[0x1E69E7CC0];

    return v22(v23);
  }
}

uint64_t sub_1CFB89448()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1CFB89628;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1CFB8956C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1CFB8956C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);

  v6 = *(v0 + 16);
  (*(v4 + 8))(v3, v5);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_1CFB89628()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);

  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1CFB896F8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v42 = a1;
  v43 = a4;
  v41 = a3;
  v50 = a2;
  v46 = sub_1CFB8F9A0();
  v49 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CFB8F9E0();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1CFB8F7C0();
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECB50, &qword_1CFB925E0);
  v36 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  v37 = &v35 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x1E69E7CC0];
  v56 = sub_1CFB8ED94;
  v57 = v14;
  v38 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v53 = 1107296256;
  v39 = &v54;
  v54 = sub_1CFB89DB4;
  v55 = &block_descriptor_48;
  v15 = _Block_copy(&aBlock);

  v16 = v50;
  [v50 setFoundSuggestionsHandler_];
  _Block_release(v15);
  (*(v10 + 16))(v13, v42, v9);
  v17 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v40;
  (*(v7 + 16))(v17, v41, v40);
  v19 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v20 = (v11 + *(v7 + 80) + v19) & ~*(v7 + 80);
  v21 = (v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  (*(v10 + 32))(v22 + v19, v37, v36);
  (*(v7 + 32))(v22 + v20, v17, v18);
  v23 = v43;
  *(v22 + v21) = v43;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v38;
  v56 = sub_1CFB8ED9C;
  v57 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v53 = 1107296256;
  v54 = sub_1CFB86408;
  v55 = &block_descriptor_54;
  v24 = _Block_copy(&aBlock);

  v25 = v50;
  v26 = v23;

  [v25 setCompletionHandler_];
  _Block_release(v24);
  v27 = [v26 serialQueue];
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  v56 = sub_1CFB8EEB8;
  v57 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v53 = 1107296256;
  v54 = sub_1CFB623CC;
  v55 = &block_descriptor_60;
  v29 = _Block_copy(&aBlock);
  v30 = v25;
  v31 = v44;
  sub_1CFB8F9B0();
  v51 = MEMORY[0x1E69E7CC0];
  sub_1CFB6B23C(&qword_1EE04BD78, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC290, &qword_1CFB91EA8);
  sub_1CFB5DD2C(&unk_1EE04BD68, &unk_1EC4EC290, &qword_1CFB91EA8, MEMORY[0x1E69E6328]);
  v33 = v45;
  v32 = v46;
  sub_1CFB8FE50();
  MEMORY[0x1D386D7F0](0, v31, v33, v29);
  _Block_release(v29);

  (*(v49 + 8))(v33, v32);
  (*(v47 + 8))(v31, v48);
}

uint64_t sub_1CFB89D54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_1CFB84DC0(v2);
  return swift_endAccess();
}

uint64_t sub_1CFB89DC8(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v4 = *(a1 + 32);
  sub_1CFB5D38C(0, a3, a4);
  v5 = sub_1CFB8FB30();

  v4(v5);
}

void sub_1CFB89E44(void *a1, id a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if ([a2 isCancelled])
  {
    sub_1CFB8EEC8();
    v8 = swift_allocError();
    *v9 = 1;
    v26[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECB50, &qword_1CFB925E0);
    sub_1CFB8FB90();
  }

  else if (a1)
  {
    v10 = a1;
    v11 = a5;
    v12 = sub_1CFB8F7A0();
    v13 = sub_1CFB8FC90();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26[0] = v16;
      *v14 = 136315394;
      v17 = [v11 logPrefix];
      v18 = sub_1CFB8FA90();
      v20 = v19;

      v21 = sub_1CFB8C3D8(v18, v20, v26);

      *(v14 + 4) = v21;
      *(v14 + 12) = 2112;
      v22 = a1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v23;
      *v15 = v23;
      _os_log_impl(&dword_1CFB5B000, v12, v13, "%s Fetching suggestions failed with error: %@", v14, 0x16u);
      sub_1CFB5DDDC(v15, &unk_1EC4EC6F0, &unk_1CFB920C0);
      MEMORY[0x1D386E190](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1D386E190](v16, -1, -1);
      MEMORY[0x1D386E190](v14, -1, -1);
    }

    sub_1CFB8EEC8();
    v24 = swift_allocError();
    *v25 = 0;
    v26[0] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECB50, &qword_1CFB925E0);
    sub_1CFB8FB90();
  }

  else
  {
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECB50, &qword_1CFB925E0);
    sub_1CFB8FBA0();
  }
}

uint64_t sub_1CFB8A284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1CFB8FBC0();
  v3[5] = sub_1CFB8FBB0();
  v5 = sub_1CFB8FB80();

  return MEMORY[0x1EEE6DFA0](sub_1CFB8A320, v5, v4);
}

uint64_t sub_1CFB8A320()
{
  v1 = v0[4];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v3 = sub_1CFB8FA90();
  v5 = v4;
  v0[7] = v4;
  v6 = v1;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1CFB8A3FC;

  return sub_1CFB89024(v3, v5);
}

uint64_t sub_1CFB8A3FC(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 32);
  v7 = *v2;

  if (v1)
  {
    if (v5)
    {
      v8 = *(v4 + 48);
      v9 = sub_1CFB8F630();

      v8[2](v8, 0, v9);
      v10 = v8;
LABEL_6:
      _Block_release(v10);

      goto LABEL_9;
    }
  }

  else
  {
    if (v5)
    {
      v11 = *(v4 + 48);
      sub_1CFB5D38C(0, &unk_1EC4EC490, 0x1E6964EA8);
      v9 = sub_1CFB8FB20();

      v11[2](v11, v9, 0);
      v10 = v11;
      goto LABEL_6;
    }
  }

LABEL_9:
  v12 = *(v7 + 8);

  return v12();
}

id sub_1CFB8A604(uint64_t a1)
{
  v1 = [objc_opt_self() userQueryContextWithCurrentSuggestion_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECB30, &qword_1CFB91EF0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CFB91E60;
  *(v2 + 32) = sub_1CFB8FA90();
  *(v2 + 40) = v3;
  v4 = v1;
  v5 = sub_1CFB8FB20();

  [v4 setBundleIDs_];

  v6 = sub_1CFB8FA90();
  v8 = v7;
  v13 = sub_1CFB8FA90();
  v14 = v9;
  MEMORY[0x1D386D530](540884256, 0xE400000000000000);
  MEMORY[0x1D386D530](v6, v8);

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1CFB91E60;
  *(v10 + 32) = v13;
  *(v10 + 40) = v14;
  v11 = sub_1CFB8FB20();

  [v4 setFilterQueries_];

  [v4 setEnableSuggestionTokens_];
  return v4;
}

unint64_t sub_1CFB8A830()
{
  v1 = sub_1CFB8F730();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*&v0[OBJC_IVAR___MPSearchManager_featureFlags] callHistorySearchEnabled])
  {
    v5 = [v0 callProviderManager];
    v6 = [v5 telephonyProvider];

    v7 = [v6 prioritizedSenderIdentities];
    v8 = [v7 array];

    v9 = sub_1CFB8FB30();
    v10 = sub_1CFB84820(v9, &qword_1EC4ECB28, 0x1E69D8CD8);

    if (!v10)
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    v70 = v1;
    v67 = v4;
    if (v10 >> 62)
    {
      if (sub_1CFB8FFB0() >= 2)
      {
        v61 = sub_1CFB8FFB0();
        if (!v61)
        {

          v71 = MEMORY[0x1E69E7CC8];
LABEL_19:
          if (qword_1EE04BDB8 != -1)
          {
            swift_once();
          }

          v44 = sub_1CFB8F7C0();
          __swift_project_value_buffer(v44, qword_1EE04C228);
          v45 = v0;
          v46 = sub_1CFB8F7A0();
          v47 = sub_1CFB8FCB0();

          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            v72 = v49;
            *v48 = 136315394;
            v50 = [v45 logPrefix];
            v51 = sub_1CFB8FA90();
            v53 = v52;

            v54 = sub_1CFB8C3D8(v51, v53, &v72);

            *(v48 + 4) = v54;
            *(v48 + 12) = 2080;
            v55 = v71;

            v56 = sub_1CFB8FA50();
            v58 = v57;

            v59 = sub_1CFB8C3D8(v56, v58, &v72);

            *(v48 + 14) = v59;
            _os_log_impl(&dword_1CFB5B000, v46, v47, "%s Updating subscriptions to %s", v48, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D386E190](v49, -1, -1);
            MEMORY[0x1D386E190](v48, -1, -1);
          }

          else
          {

            return v71;
          }

          return v55;
        }

        if (v61 >= 1)
        {
          v11 = v61;
LABEL_6:
          v64 = v0;
          v12 = 0;
          v69 = v10 & 0xC000000000000001;
          v13 = (v2 + 8);
          v71 = MEMORY[0x1E69E7CC8];
          v14 = &selRef_deselectRowAtIndexPath_animated_;
          v15 = &selRef_deselectRowAtIndexPath_animated_;
          v65 = v11;
          v66 = v10;
          do
          {
            if (v69)
            {
              v16 = MEMORY[0x1D386D910](v12, v10);
            }

            else
            {
              v16 = *(v10 + 8 * v12 + 32);
            }

            v17 = v16;
            v18 = [v16 v14[190]];
            v19 = sub_1CFB8FA90();
            v21 = v20;

            v22 = HIBYTE(v21) & 0xF;
            if ((v21 & 0x2000000000000000) == 0)
            {
              v22 = v19 & 0xFFFFFFFFFFFFLL;
            }

            if (v22)
            {
              v23 = [v17 v14[190]];
              v24 = sub_1CFB8FA90();
              v26 = v25;

              v27 = [v17 v15[59]];
              v28 = v67;
              sub_1CFB8F720();

              v29 = sub_1CFB8F700();
              v31 = v30;
              v68 = *v13;
              v68(v28, v70);
              v32 = v71;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v72 = v32;
              sub_1CFB8D9C8(v29, v31, v24, v26, isUniquelyReferenced_nonNull_native);

              v34 = v72;
              sub_1CFB8FD10();
              v35 = [v17 v14[190]];
              sub_1CFB8FA90();

              v36 = sub_1CFB8FD00();
              v38 = v37;

              if (v38)
              {
                v71 = v36;
                v39 = [v17 accountUUID];
                sub_1CFB8F720();

                v40 = sub_1CFB8F700();
                v42 = v41;
                v68(v28, v70);
                v43 = swift_isUniquelyReferenced_nonNull_native();
                v72 = v34;
                sub_1CFB8D9C8(v40, v42, v71, v38, v43);

                v71 = v72;
                v11 = v65;
                v10 = v66;
                v14 = &selRef_deselectRowAtIndexPath_animated_;
                v15 = &selRef_deselectRowAtIndexPath_animated_;
              }

              else
              {
                v71 = v34;

                v11 = v65;
                v10 = v66;
                v14 = &selRef_deselectRowAtIndexPath_animated_;
                v15 = &selRef_deselectRowAtIndexPath_animated_;
              }
            }

            else
            {
            }

            ++v12;
          }

          while (v11 != v12);

          v0 = v64;
          goto LABEL_19;
        }

        __break(1u);
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11 > 1)
      {
        goto LABEL_6;
      }
    }
  }

  v62 = MEMORY[0x1E69E7CC0];

  return sub_1CFB6B128(v62);
}

uint64_t sub_1CFB8AF24(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  sub_1CFB8FBC0();
  v3[23] = sub_1CFB8FBB0();
  v5 = sub_1CFB8FB80();
  v3[24] = v5;
  v3[25] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1CFB8AFC0, v5, v4);
}

uint64_t sub_1CFB8AFC0()
{
  v0[18] = MEMORY[0x1E69E7CC0];
  v1 = v0[22];
  v2 = sub_1CFB8FA80();
  v3 = [v1 queryStringForSimSearchWithSearchText_];
  v0[26] = v3;

  if (v3)
  {
    v4 = v0[22];
    v0[2] = v0;
    v0[7] = v0 + 19;
    v0[3] = sub_1CFB8B178;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECB10, &qword_1CFB925A8);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1CFB87B24;
    v0[13] = &block_descriptor_7;
    v0[14] = v5;
    [v4 searchWithQueryString:v3 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v6 = v0[1];
    v7 = MEMORY[0x1E69E7CC0];

    return v6(v7);
  }
}

uint64_t sub_1CFB8B178()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  v3 = *(v1 + 200);
  v4 = *(v1 + 192);
  if (v2)
  {
    v5 = sub_1CFB8B324;
  }

  else
  {
    v5 = sub_1CFB8B2A8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1CFB8B2A8()
{
  v1 = *(v0 + 208);

  sub_1CFB84CCC(*(v0 + 152));

  v2 = *(v0 + 144);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1CFB8B324()
{
  v1 = *(v0 + 208);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CFB8B524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1CFB8FBC0();
  v3[5] = sub_1CFB8FBB0();
  v5 = sub_1CFB8FB80();

  return MEMORY[0x1EEE6DFA0](sub_1CFB8B5C0, v5, v4);
}

uint64_t sub_1CFB8B5C0()
{
  v1 = v0[4];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v3 = sub_1CFB8FA90();
  v5 = v4;
  v0[7] = v4;
  v6 = v1;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1CFB8B69C;

  return sub_1CFB8AF24(v3, v5);
}

uint64_t sub_1CFB8B69C(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_1CFB8F630();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = sub_1CFB8FB20();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 48);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

void sub_1CFB8B848(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1CFB8F5E0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v3 subscriptionsLabelIDByLabel];
  v11 = sub_1CFB8FA40();

  v12 = *(v11 + 16);

  if (v12 >= 2)
  {
    v35 = a1;
    v36 = a2;
    sub_1CFB8F5D0();
    sub_1CFB8E990();
    v32 = sub_1CFB8FE20();
    v14 = v13;
    (*(v7 + 8))(v9, v6);
    v31 = v3;
    v15 = [v3 subscriptionsLabelIDByLabel];
    v16 = sub_1CFB8FA40();

    v17 = 0;
    v18 = 1 << *(v16 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v16 + 64);
    v21 = (v18 + 63) >> 6;
    if (v20)
    {
      while (1)
      {
        v22 = v17;
LABEL_9:
        v23 = (v22 << 10) | (16 * __clz(__rbit64(v20)));
        v24 = (*(v16 + 48) + v23);
        v26 = *v24;
        v25 = v24[1];
        v27 = (*(v16 + 56) + v23);
        v29 = *v27;
        v28 = v27[1];
        v35 = v26;
        v36 = v25;
        v33 = v32;
        v34 = v14;

        if (!sub_1CFB8FE30())
        {
          break;
        }

        v20 &= v20 - 1;

        v17 = v22;
        if (!v20)
        {
          goto LABEL_6;
        }
      }

      v35 = sub_1CFB8FA90();
      v36 = v30;
      MEMORY[0x1D386D530](8765, 0xE200000000000000);
      MEMORY[0x1D386D530](v29, v28);

      MEMORY[0x1D386D530](34, 0xE100000000000000);
      MEMORY[0x1D386D530](*&v31[OBJC_IVAR___MPSearchManager_kCSQueryFlags], *&v31[OBJC_IVAR___MPSearchManager_kCSQueryFlags + 8]);
    }

    else
    {
LABEL_6:
      while (1)
      {
        v22 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v22 >= v21)
        {

          return;
        }

        v20 = *(v16 + 64 + 8 * v22);
        ++v17;
        if (v20)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1CFB8BCB4()
{
  v1 = *(v0 + OBJC_IVAR___MPSearchManager_searchItemType);
  if (v1 == 2)
  {
    v3 = 0x747365676775535BLL;
  }

  else if (v1 == 1)
  {
    v3 = 0x616D6563696F565BLL;
  }

  else if (v1)
  {
    v3 = 0x6E776F6E6B6E555BLL;
  }

  else
  {
    v3 = 0x205D736C6C61435BLL;
  }

  MEMORY[0x1D386D530](0x614D686372616553, 0xEE003A726567616ELL);
  return v3;
}

id MPSearchManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1CFB8BF1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1CFB77444;

  return v6();
}

uint64_t sub_1CFB8C004(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1CFB66AE0;

  return v7();
}

uint64_t sub_1CFB8C0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1CFB7AE70(a3, v23 - v10);
  v12 = sub_1CFB8FBF0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1CFB5DDDC(v11, &qword_1EC4EC4B0, &qword_1CFB91F10);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1CFB8FBE0();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1CFB8FB80();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1CFB8FAB0() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1CFB5DDDC(a3, &qword_1EC4EC4B0, &qword_1CFB91F10);

    return v21;
  }

LABEL_8:
  sub_1CFB5DDDC(a3, &qword_1EC4EC4B0, &qword_1CFB91F10);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

unint64_t sub_1CFB8C3D8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1CFB8C4A4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1CFB6E0B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1CFB8C4A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1CFB8C5B0(a5, a6);
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
    result = sub_1CFB8FEE0();
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

void *sub_1CFB8C5B0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1CFB8C5FC(a1, a2);
  sub_1CFB8C72C(&unk_1F4C63638);
  return v3;
}

void *sub_1CFB8C5FC(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1CFB8C818(v5, 0);
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

  result = sub_1CFB8FEE0();
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
        v10 = sub_1CFB8FB00();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1CFB8C818(v10, 0);
        result = sub_1CFB8FE90();
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

uint64_t sub_1CFB8C72C(uint64_t result)
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

  result = sub_1CFB8C88C(result, v11, 1, v3);
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

void *sub_1CFB8C818(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECBB0, &qword_1CFB92658);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1CFB8C88C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECBB0, &qword_1CFB92658);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1CFB8C994(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x1D386DB10](*(v1 + 40), a1, 4);

  return sub_1CFB8CA54(v2, v3);
}

unint64_t sub_1CFB8C9DC(uint64_t a1, uint64_t a2)
{
  sub_1CFB900D0();
  sub_1CFB8FAC0();
  v4 = sub_1CFB900F0();

  return sub_1CFB8CAC0(a1, a2, v4);
}

unint64_t sub_1CFB8CA54(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1CFB8CAC0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1CFB90010())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1CFB8CB78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC5F0, &qword_1CFB92090);
  v35 = v4;
  result = sub_1CFB8FFE0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1CFB900D0();
      sub_1CFB8FAC0();
      result = sub_1CFB900F0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1CFB8CE1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC5E0, &qword_1CFB92080);
  result = sub_1CFB8FFE0();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v21;
      }

      result = MEMORY[0x1D386DB10](*(v7 + 40), v20, 4);
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
      *(*(v7 + 48) + 4 * v15) = v20;
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
      v30 = 1 << *(v5 + 32);
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1CFB8D088(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECBC0, &qword_1CFB92078);
  result = sub_1CFB8FFE0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = MEMORY[0x1D386DB10](*(v7 + 40), v20, 4);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
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

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1CFB8D2FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECB20, &qword_1CFB92058);
  v37 = v4;
  result = sub_1CFB8FFE0();
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

      sub_1CFB900D0();
      sub_1CFB8FAC0();
      result = sub_1CFB900F0();
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

uint64_t sub_1CFB8D5BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CFB8C9DC(a2, a3);
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
      sub_1CFB8CB78(v16, a4 & 1);
      v11 = sub_1CFB8C9DC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1CFB90050();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1CFB8DB50();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_1CFB8D734(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1CFB8C994(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return MEMORY[0x1EEE66BB8]();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 4 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1CFB8DCBC();
    result = v17;
    goto LABEL_8;
  }

  sub_1CFB8CE1C(v14, a3 & 1);
  result = sub_1CFB8C994(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_1CFB90050();
  __break(1u);
  return MEMORY[0x1EEE66BB8]();
}

unint64_t sub_1CFB8D87C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1CFB8C994(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1CFB8D088(v14, a3 & 1);
      result = sub_1CFB8C994(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1CFB90050();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1CFB8DE18();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 4 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_1CFB8D9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1CFB8C9DC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1CFB8D2FC(v18, a5 & 1);
      v13 = sub_1CFB8C9DC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1CFB90050();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1CFB8DF74();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

id sub_1CFB8DB50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC5F0, &qword_1CFB92090);
  v2 = *v0;
  v3 = sub_1CFB8FFD0();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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