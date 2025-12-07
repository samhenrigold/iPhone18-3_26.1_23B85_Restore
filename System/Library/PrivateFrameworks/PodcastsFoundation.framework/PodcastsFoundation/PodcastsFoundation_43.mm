unint64_t sub_1D911B7D4()
{
  result = qword_1ECABABE8;
  if (!qword_1ECABABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABABE8);
  }

  return result;
}

unint64_t sub_1D911B82C()
{
  result = qword_1ECABABF0;
  if (!qword_1ECABABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABABF0);
  }

  return result;
}

unint64_t sub_1D911B884()
{
  result = qword_1ECABABF8;
  if (!qword_1ECABABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABABF8);
  }

  return result;
}

unint64_t sub_1D911B8DC()
{
  result = qword_1ECABAC00;
  if (!qword_1ECABAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABAC00);
  }

  return result;
}

unint64_t sub_1D911B934()
{
  result = qword_1ECABAC08;
  if (!qword_1ECABAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABAC08);
  }

  return result;
}

unint64_t sub_1D911B98C()
{
  result = qword_1ECABAC10;
  if (!qword_1ECABAC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABAC10);
  }

  return result;
}

uint64_t sub_1D911B9E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496D616461 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t PodcastState.init(isFollowed:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 0x64696C61766E69;
  if ((result & 1) == 0)
  {
    v2 = 0;
  }

  *a2 = result & 1;
  a2[1] = v2;
  a2[3] = 0;
  a2[4] = 0;
  if (result)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v3 = 0;
  }

  a2[2] = v3;
  return result;
}

uint64_t sub_1D911BB94@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D911C708;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D8D1F93C(v4, v5);
}

uint64_t sub_1D911BC28(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D911C6D0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_1D8D1F93C(v3, v4);
  return sub_1D8D15664(v8, v9);
}

uint64_t InMemoryEpisodeStateDataSource.refreshControllerStates.getter()
{
  v0 = sub_1D911C5C8();
  sub_1D8D1F93C(v0, v1);
  return v0;
}

uint64_t InMemoryEpisodeStateDataSource.refreshControllerStates.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1D8D15664(v5, v6);
}

void *InMemoryEpisodeStateDataSource.__allocating_init(inMemoryStateStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = a1;
  v2[5] = 0;

  InMemoryEpisodeStateDataSource.startObservingChanges()();

  return v2;
}

void *InMemoryEpisodeStateDataSource.init(inMemoryStateStore:)(uint64_t a1)
{
  v1 = sub_1D911C5FC(a1);

  return v1;
}

Swift::Void __swiftcall InMemoryEpisodeStateDataSource.startObservingChanges()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAC18, &unk_1D91B9CF0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  InMemoryStateStore.stateUpdates.getter(&v11);
  v10 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAA88, &qword_1D91B9EB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAC20, &qword_1D91B9D00);
  sub_1D8CF48EC(&qword_1ECABAA90, &qword_1ECABAA88, &qword_1D91B9EB0, MEMORY[0x1E695BF88]);
  sub_1D9177B9C();

  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = *(v2 + 80);
  v8[3] = *(v2 + 88);
  v8[4] = v7;
  sub_1D8CF48EC(qword_1ECABAC28, &qword_1ECABAC18, &unk_1D91B9CF0, MEMORY[0x1E695BD60]);
  v9 = sub_1D9177D9C();

  (*(v4 + 8))(v6, v3);
  v1[5] = v9;
}

char *sub_1D911C0B0@<X0>(char *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v14 = MEMORY[0x1E69E7CC0];
    result = sub_1D8E31964(0, v4, 0);
    v5 = v14;
    v6 = (v3 + 32);
    v7 = *(v14 + 16);
    v8 = 24 * v7;
    do
    {
      v10 = *v6++;
      v9 = v10;
      v15 = v5;
      v11 = *(v5 + 24);
      v12 = v7 + 1;
      if (v7 >= v11 >> 1)
      {
        result = sub_1D8E31964((v11 > 1), v7 + 1, 1);
        v5 = v15;
      }

      *(v5 + 16) = v12;
      v13 = v5 + v8;
      *(v13 + 32) = v9;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      v8 += 24;
      v7 = v12;
      --v4;
    }

    while (v4);
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1D911C190(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = *(v4 + 24);
      sub_1D8D1F93C(*(v4 + 16), v6);

      v5(v2);
      return sub_1D8D15664(v5, v6);
    }

    else
    {
    }
  }

  return result;
}

void InMemoryEpisodeStateDataSource.state(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3)
  {
    v8 = *v5;
    if (qword_1ECAB34E8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D917744C();
    __swift_project_value_buffer(v10, qword_1ECAB77F8);

    v11 = sub_1D917741C();
    v12 = sub_1D9178CFC();
    sub_1D8DB5FC8(a1, a2, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;

      v15 = sub_1D917826C();
      v17 = sub_1D8CFA924(v15, v16, &v18);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1D8CEC000, v11, v12, "Episode ID not supported on thin clients: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1DA72CB90](v14, -1, -1);
      MEMORY[0x1DA72CB90](v13, -1, -1);
    }

    (*(*(*(v8 + 80) - 8) + 56))(a5, 1, 1);
  }

  else
  {
    InMemoryStateStore.state(for:)(a1, a2, a3, a4);
  }
}

uint64_t InMemoryEpisodeStateDataSource.deinit()
{
  sub_1D8D15664(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t InMemoryEpisodeStateDataSource.__deallocating_deinit()
{
  InMemoryEpisodeStateDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D911C4D0()
{
  v0 = sub_1D911C5C8();
  sub_1D8D1F93C(v0, v1);
  return v0;
}

void (*sub_1D911C52C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = InMemoryEpisodeStateDataSource.refreshControllerStates.modify(v2);
  return sub_1D90FEF80;
}

void *sub_1D911C5FC(uint64_t a1)
{
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = a1;
  v1[5] = 0;

  InMemoryEpisodeStateDataSource.startObservingChanges()();
  return v1;
}

uint64_t sub_1D911C6D0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t InMemoryEpisodeStateModel.init(playState:bookmarkState:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1D911C7A0(a1, a3);
  result = type metadata accessor for InMemoryEpisodeStateModel(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1D911C7A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AE0, &qword_1D91B7E20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL _s18PodcastsFoundation25InMemoryEpisodeStateModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodePlayState(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AE0, &qword_1D91B7E20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAAD0, &unk_1D91B98B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v15 = *(v14 + 56);
  sub_1D9117A4C(a1, &v22 - v12);
  sub_1D9117A4C(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D8D08A50(v13, &qword_1ECAB7AE0, &qword_1D91B7E20);
      goto LABEL_9;
    }

LABEL_6:
    sub_1D8D08A50(v13, &qword_1ECABAAD0, &unk_1D91B98B0);
    return 0;
  }

  sub_1D9117A4C(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1D8D23A60(v10);
    goto LABEL_6;
  }

  sub_1D91179E8(&v13[v15], v7);
  v18 = static EpisodePlayState.== infix(_:_:)();
  sub_1D8D23A60(v7);
  sub_1D8D23A60(v10);
  sub_1D8D08A50(v13, &qword_1ECAB7AE0, &qword_1D91B7E20);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v19 = *(type metadata accessor for InMemoryEpisodeStateModel(0) + 20);
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  if (v20 != 2)
  {
    return v21 != 2 && ((v21 ^ v20) & 1) == 0;
  }

  return v21 == 2;
}

uint64_t OnScreenEpisodesStateTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = sub_1D8E27CFC(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACB0, &qword_1D91B9E40);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t OnScreenEpisodesStateTracker.init()()
{
  v1 = sub_1D8E27CFC(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACB0, &qword_1D91B9E40);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

void OnScreenEpisodesStateTracker.pageWillStartTrackingState(for:pageID:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1D911D0F4((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_1D911CBF8(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = sub_1D9176EAC();
  v6 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *a1;
  v10 = v20;
  v12 = sub_1D8D93AB0(a2);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v11;
  if (v10[3] >= v15)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_1D8F864A8();
    v10 = v20;
    goto LABEL_6;
  }

  sub_1D900AFBC(v15, isUniquelyReferenced_nonNull_native);
  v10 = v20;
  v16 = sub_1D8D93AB0(a2);
  if ((v3 & 1) != (v17 & 1))
  {
    sub_1D9179CFC();
    __break(1u);
    return;
  }

  v12 = v16;
LABEL_6:
  *a1 = v10;
  if ((v3 & 1) == 0)
  {
    (*(v6 + 16))(v8, a2, v19);
    sub_1D8D940B8(v12, v8, MEMORY[0x1E69E7CC0], v10);
  }

  sub_1D8E30A08(v18);
}

void OnScreenEpisodesStateTracker.pageDidStopTrackingState(withID:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1D911D110((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_1D911CE08(uint64_t *a1, uint64_t a2)
{
  v3 = sub_1D8D93AB0(a2);
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *a1;
    v10 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8F864A8();
      v7 = v10;
    }

    v8 = *(v7 + 48);
    v9 = sub_1D9176EAC();
    (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);

    sub_1D8F7F950(v5, v7);
    *a1 = v7;
  }
}

void OnScreenEpisodesStateTracker.allDisplayedEpisodes.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (v5)
  {
LABEL_10:
    v10 = *(*(v2 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
    v11 = *(v10 + 16);
    v12 = *(v8 + 2);
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      goto LABEL_24;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v13 > *(v8 + 3) >> 1)
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      v8 = sub_1D8ECC958(isUniquelyReferenced_nonNull_native, v15, 1, v8);
    }

    v5 &= v5 - 1;
    if (*(v10 + 16))
    {
      v16 = *(v8 + 2);
      if ((*(v8 + 3) >> 1) - v16 < v11)
      {
        goto LABEL_26;
      }

      memcpy(&v8[8 * v16 + 32], (v10 + 32), 8 * v11);

      if (v11)
      {
        v17 = *(v8 + 2);
        v18 = __OFADD__(v17, v11);
        v19 = v17 + v11;
        if (v18)
        {
          goto LABEL_27;
        }

        *(v8 + 2) = v19;
      }
    }

    else
    {

      if (v11)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      sub_1D8FC0E84(v8);

      return;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_10;
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
  __break(1u);
}

uint64_t OnScreenEpisodesStateTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1D911D17C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACB8, &qword_1D91B9F30);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v59 - v10;
  if (!*(a3 + 16) || (v12 = sub_1D8D1AC44(a1), (v13 & 1) == 0) || (v14 = *(*(a3 + 56) + 8 * v12), (v15 = *(v14 + 16)) == 0))
  {
    if (qword_1ECAB34E8 != -1)
    {
      swift_once();
    }

    v36 = sub_1D917744C();
    __swift_project_value_buffer(v36, qword_1ECAB77F8);

    v37 = sub_1D917741C();
    v38 = sub_1D9178D1C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v68 = v61;
      *v39 = 136315394;
      v63 = a1;
      sub_1D8E40A10();
      v40 = sub_1D9179A4C();
      v42 = sub_1D8CFA924(v40, v41, &v68);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2080;
      v43 = *(a2 + 16);
      v62 = a1;
      if (v43 && (v44 = sub_1D8D1AC44(a1), (v45 & 1) != 0))
      {
        v46 = (*(a2 + 56) + 40 * v44);
        v47 = *v46;
        v48 = v46[1];
        v49 = v46[2];
        v50 = v46[3];
        v51 = v46[4];
        sub_1D8D1C3BC(*v46, v48, v49);
      }

      else
      {
        v47 = 0;
        v48 = 0;
        v50 = 0;
        v51 = 0;
        v49 = 3;
      }

      v63 = v47;
      v64 = v48;
      v65 = v49;
      v66 = v50;
      v67 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACC0, qword_1D91B9F38);
      v52 = sub_1D917826C();
      v54 = sub_1D8CFA924(v52, v53, &v68);

      *(v39 + 14) = v54;
      _os_log_impl(&dword_1D8CEC000, v37, v38, "[StateCache] state for %s (consolidated) -> %s", v39, 0x16u);
      v55 = v61;
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v55, -1, -1);
      MEMORY[0x1DA72CB90](v39, -1, -1);

      a1 = v62;
      if (!*(a2 + 16))
      {
        goto LABEL_20;
      }
    }

    else
    {

      if (!*(a2 + 16))
      {
        goto LABEL_20;
      }
    }

    v56 = sub_1D8D1AC44(a1);
    if (v57)
    {
      v58 = (*(a2 + 56) + 40 * v56);
      v17 = *v58;
      v18 = v58[1];
      v20 = v58[2];
      v19 = v58[3];
      v21 = v58[4];
      sub_1D8D1C3BC(*v58, v18, v20);
      goto LABEL_23;
    }

LABEL_20:
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v21 = 0;
    v20 = 3;
    goto LABEL_23;
  }

  sub_1D911DFC4(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * (v15 - 1), v11);
  v16 = &v11[*(v8 + 48)];
  v17 = *v16;
  v18 = v16[1];
  v20 = v16[2];
  v19 = v16[3];
  v21 = v16[4];
  v22 = sub_1D9176EAC();
  (*(*(v22 - 8) + 8))(v11, v22);
  if (qword_1ECAB34E8 != -1)
  {
    swift_once();
  }

  v23 = sub_1D917744C();
  __swift_project_value_buffer(v23, qword_1ECAB77F8);
  sub_1D8D1C3BC(v17, v18, v20);
  sub_1D8D1C3BC(v17, v18, v20);
  v24 = sub_1D917741C();
  v25 = sub_1D9178D1C();
  sub_1D8D1D59C(v17, v18, v20);
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v60 = v25;
    v27 = a1;
    v28 = v26;
    v61 = swift_slowAlloc();
    v68 = v61;
    *v28 = 136315394;
    v63 = v27;
    sub_1D8E40A10();
    v29 = sub_1D9179A4C();
    v31 = sub_1D8CFA924(v29, v30, &v68);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2080;
    v63 = v17;
    v64 = v18;
    v65 = v20;
    v66 = v19;
    v67 = v21;
    v32 = sub_1D917826C();
    v34 = sub_1D8CFA924(v32, v33, &v68);

    *(v28 + 14) = v34;
    _os_log_impl(&dword_1D8CEC000, v24, v60, "[StateCache] state for %s (in-flight) -> %s", v28, 0x16u);
    v35 = v61;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v35, -1, -1);
    MEMORY[0x1DA72CB90](v28, -1, -1);
  }

  else
  {
    sub_1D8D1D59C(v17, v18, v20);
  }

LABEL_23:
  *a4 = v17;
  a4[1] = v18;
  a4[2] = v20;
  a4[3] = v19;
  a4[4] = v21;
}

uint64_t InMemoryPodcastStateDataSource.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*InMemoryPodcastStateDataSource.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D910B660;
}

void *InMemoryPodcastStateDataSource.__allocating_init(inMemoryFollowStateStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[3] = 0;
  swift_unknownObjectWeakInit();
  v2[4] = a1;
  v2[5] = 0;

  InMemoryPodcastStateDataSource.startObservingChanges()();

  return v2;
}

void *InMemoryPodcastStateDataSource.init(inMemoryFollowStateStore:)(uint64_t a1)
{
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  v1[4] = a1;
  v1[5] = 0;

  InMemoryPodcastStateDataSource.startObservingChanges()();

  return v1;
}

Swift::Void __swiftcall InMemoryPodcastStateDataSource.startObservingChanges()()
{
  v1 = v0;
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAA88, &qword_1D91B9EB0);
  sub_1D911DADC();
  v2 = sub_1D9177D9C();

  *(v1 + 40) = v2;
}

uint64_t sub_1D911DA0C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 24);

      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v2, ObjectType, v5);
      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

unint64_t sub_1D911DADC()
{
  result = qword_1ECABAA90;
  if (!qword_1ECABAA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECABAA88, &qword_1D91B9EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABAA90);
  }

  return result;
}

double InMemoryPodcastStateDataSource.state(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(v2 + 32) + 16);
  os_unfair_lock_lock((v5 + 32));
  sub_1D911D17C(a1, *(v5 + 16), *(v5 + 24), v8);
  os_unfair_lock_unlock((v5 + 32));
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v9;
  return result;
}

double InMemoryPodcastStateDataSource.state(for:)@<D0>(uint64_t a1@<X8>)
{
  sub_1D911DDB4(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t InMemoryPodcastStateDataSource.deinit()
{
  sub_1D8EB07F4(v0 + 16);

  return v0;
}

uint64_t InMemoryPodcastStateDataSource.__deallocating_deinit()
{
  sub_1D8EB07F4(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t (*sub_1D911DC6C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D910B8D8;
}

double sub_1D911DD00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(v2 + 32) + 16);
  os_unfair_lock_lock((v5 + 32));
  sub_1D911D17C(a1, *(v5 + 16), *(v5 + 24), v8);
  os_unfair_lock_unlock((v5 + 32));
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v9;
  return result;
}

double sub_1D911DD70@<D0>(uint64_t a1@<X8>)
{
  sub_1D911DDB4(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1D911DDB4@<X0>(void *a1@<X8>)
{
  v2 = sub_1D917744C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAAFC40 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_1ECAAFC48);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_1D917741C();
  v8 = sub_1D9178D0C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D8CEC000, v7, v8, "We should never be handling UUIDs on a thin client", v9, 2u);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  result = (*(v3 + 8))(v5, v2);
  *a1 = 0;
  a1[1] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 3;
  return result;
}

uint64_t sub_1D911DFC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACB8, &qword_1D91B9F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static AlbumStringBuilder.albumString(podcastTitle:episodeNumber:seasonNumber:isSerialType:pubDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  if (a5)
  {
    if (a4 > 0)
    {
      if (a3 >= 1)
      {
        if (qword_1EDCD5F00 != -1)
        {
          swift_once();
        }

        sub_1D917693C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1D918A530;
        v14 = MEMORY[0x1E69E7360];
        v15 = MEMORY[0x1E69E73D8];
        *(v13 + 56) = MEMORY[0x1E69E7360];
        *(v13 + 64) = v15;
        *(v13 + 32) = a4;
        *(v13 + 96) = v14;
        *(v13 + 104) = v15;
        *(v13 + 72) = a3;
        v16 = sub_1D91781DC();

        goto LABEL_18;
      }

      if (qword_1EDCD5F00 != -1)
      {
        swift_once();
      }

      sub_1D917693C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v24 = swift_allocObject();
      v25 = MEMORY[0x1E69E7360];
      *(v24 + 16) = xmmword_1D9189080;
      v26 = MEMORY[0x1E69E73D8];
      *(v24 + 56) = v25;
      *(v24 + 64) = v26;
      *(v24 + 32) = a4;
LABEL_17:
      v16 = sub_1D91781DC();

LABEL_18:

      return v16;
    }

    if (a3 > 0)
    {
      if (qword_1EDCD5F00 != -1)
      {
        swift_once();
      }

      sub_1D917693C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v17 = swift_allocObject();
      v18 = MEMORY[0x1E69E7360];
      *(v17 + 16) = xmmword_1D9189080;
      v19 = MEMORY[0x1E69E73D8];
      *(v17 + 56) = v18;
      *(v17 + 64) = v19;
      *(v17 + 32) = a3;
      goto LABEL_17;
    }
  }

  sub_1D8CF6B1C(a6, &v28 - v11);
  v20 = sub_1D9176E3C();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v12, 1, v20) == 1)
  {
    sub_1D8CF5EF8(v12);
    return 0;
  }

  else
  {
    v22 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    v23 = [v22 verboseDisplayStringWithoutTime];

    v16 = sub_1D917820C();
    (*(v21 + 8))(v12, v20);
  }

  return v16;
}

uint64_t sub_1D911E490(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  if (![objc_opt_self() isRunningOnHomepod])
  {
    if (a3)
    {
      if (a2 > 0)
      {
        if (a1 >= 1)
        {
          if (qword_1EDCD5F00 != -1)
          {
            swift_once();
          }

          sub_1D917693C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_1D918A530;
          v19 = MEMORY[0x1E69E7360];
          v20 = MEMORY[0x1E69E73D8];
          *(v18 + 56) = MEMORY[0x1E69E7360];
          *(v18 + 64) = v20;
          *(v18 + 32) = a2;
          *(v18 + 96) = v19;
          *(v18 + 104) = v20;
          *(v18 + 72) = a1;
          v21 = sub_1D91781DC();

          goto LABEL_32;
        }

        if (qword_1EDCD5F00 != -1)
        {
          swift_once();
        }

        sub_1D917693C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v40 = swift_allocObject();
        v41 = MEMORY[0x1E69E7360];
        *(v40 + 16) = xmmword_1D9189080;
        v42 = MEMORY[0x1E69E73D8];
        *(v40 + 56) = v41;
        *(v40 + 64) = v42;
        *(v40 + 32) = a2;
LABEL_31:
        v21 = sub_1D91781DC();

LABEL_32:

        return v21;
      }

      if (a1 > 0)
      {
        if (qword_1EDCD5F00 != -1)
        {
          swift_once();
        }

        sub_1D917693C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v31 = swift_allocObject();
        v32 = MEMORY[0x1E69E7360];
        *(v31 + 16) = xmmword_1D9189080;
        v33 = MEMORY[0x1E69E73D8];
        *(v31 + 56) = v32;
        *(v31 + 64) = v33;
        *(v31 + 32) = a1;
        goto LABEL_31;
      }
    }

    sub_1D8CF6B1C(a4, v10);
    v34 = sub_1D9176E3C();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v10, 1, v34) == 1)
    {
      v27 = v10;
      goto LABEL_24;
    }

    v36 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    v37 = [v36 verboseDisplayStringWithoutTime];

    v30 = sub_1D917820C();
    (*(v35 + 8))(v10, v34);
    return v30;
  }

  if ((a3 & 1) == 0)
  {
LABEL_15:
    sub_1D8CF6B1C(a4, v13);
    v25 = sub_1D9176E3C();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v13, 1, v25) == 1)
    {
      v27 = v13;
LABEL_24:
      sub_1D8CF5EF8(v27);
      return 0;
    }

    v28 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    v29 = [v28 verboseDisplayStringWithoutTime];

    v30 = sub_1D917820C();
    (*(v26 + 8))(v13, v25);
    return v30;
  }

  if (a2 <= 0)
  {
    if (a1 > 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v22 = swift_allocObject();
      v23 = MEMORY[0x1E69E7360];
      *(v22 + 16) = xmmword_1D9189080;
      v24 = MEMORY[0x1E69E73D8];
      *(v22 + 56) = v23;
      *(v22 + 64) = v24;
      *(v22 + 32) = a1;
      return sub_1D917823C();
    }

    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v14 = swift_allocObject();
  if (a1 < 1)
  {
    v38 = MEMORY[0x1E69E7360];
    *(v14 + 16) = xmmword_1D9189080;
    v39 = MEMORY[0x1E69E73D8];
    *(v14 + 56) = v38;
    *(v14 + 64) = v39;
    *(v14 + 32) = a2;
  }

  else
  {
    *(v14 + 16) = xmmword_1D918A530;
    v15 = MEMORY[0x1E69E7360];
    v16 = MEMORY[0x1E69E73D8];
    *(v14 + 56) = MEMORY[0x1E69E7360];
    *(v14 + 64) = v16;
    *(v14 + 32) = a2;
    *(v14 + 96) = v15;
    *(v14 + 104) = v16;
    *(v14 + 72) = a1;
  }

  return sub_1D917823C();
}

uint64_t EyebrowBuilder.__allocating_init(episode:context:style:explicitSymbol:showsSubscriptionBadge:hostingViewHasLimitedSpace:suppressPubDate:)(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v17 = a1[3];
  v16 = a1[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a1, v17);
  v19 = sub_1D8DB48F4(v18, a2, a3, a4, a5, a6, a7, a8, v8, v17, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v19;
}

PodcastsFoundation::EyebrowBuilder::Style_optional __swiftcall EyebrowBuilder.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EyebrowBuilder.Style.rawValue.getter()
{
  v1 = 0x74726F6873;
  if (*v0 != 1)
  {
    v1 = 0x6D756964656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1D911ECB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x74726F6873;
  if (v2 != 1)
  {
    v4 = 0x6D756964656DLL;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x74726F6873;
  if (*a2 != 1)
  {
    v8 = 0x6D756964656DLL;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D911EDAC()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D911EE48(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D911EED0(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D911EF74(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x74726F6873;
  if (v2 != 1)
  {
    v5 = 0x6D756964656DLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D911EFCC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v36 = a1;
  v38 = a2;
  v37 = type metadata accessor for EpisodePlayState(0);
  v4 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - v20;
  v22 = type metadata accessor for EyebrowBuilder.ListContext(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D423B4(v3, v24, type metadata accessor for EyebrowBuilder.ListContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v32 = v38;
      sub_1D8D423B4(v36, v38, type metadata accessor for EpisodePlayState);
      (*(v4 + 56))(v32, 0, 1, v37);
      swift_storeEnumTagMultiPayload();
      return sub_1D8D08A50(v24, &qword_1ECAB7AE0, &qword_1D91B7E20);
    }

    if (EnumCaseMultiPayload != 4)
    {
LABEL_11:
      sub_1D8D423B4(v3, v38, type metadata accessor for EyebrowBuilder.ListContext);
      return sub_1D8D41C00(v24, type metadata accessor for EyebrowBuilder.ListContext);
    }

    v29 = v36;
    sub_1D8D423B4(v36, v12, type metadata accessor for EpisodePlayState);
    if (swift_getEnumCaseMultiPayload() == 3 && (sub_1D8D423B4(v12, v9, type metadata accessor for EpisodePlayState), (v9[16] & 1) == 0))
    {
      sub_1D8D41C00(v12, type metadata accessor for EpisodePlayState);
    }

    else
    {
      sub_1D8D41C00(v12, type metadata accessor for EpisodePlayState);
      sub_1D8D423B4(v29, v6, type metadata accessor for EpisodePlayState);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1D8D41C00(v6, type metadata accessor for EpisodePlayState);
        v33 = 0;
LABEL_21:
        *v38 = v33;
        return swift_storeEnumTagMultiPayload();
      }

      sub_1D8D08A50(v6, &qword_1ECAB75C0, &unk_1D9188A50);
    }

    v33 = 1;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v31 = v36;
    sub_1D8D423B4(v36, v21, type metadata accessor for EpisodePlayState);
    if (swift_getEnumCaseMultiPayload() == 3 && (sub_1D8D423B4(v21, v18, type metadata accessor for EpisodePlayState), (v18[16] & 1) == 0))
    {
      sub_1D8D41C00(v21, type metadata accessor for EpisodePlayState);
    }

    else
    {
      sub_1D8D41C00(v21, type metadata accessor for EpisodePlayState);
      sub_1D8D423B4(v31, v15, type metadata accessor for EpisodePlayState);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1D8D41C00(v15, type metadata accessor for EpisodePlayState);
        v34 = 0;
LABEL_24:
        *v38 = v34;
        return swift_storeEnumTagMultiPayload();
      }

      sub_1D8D08A50(v15, &qword_1ECAB75C0, &unk_1D9188A50);
    }

    v34 = 1;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 2)
  {
    goto LABEL_11;
  }

  v26 = v24[1];
  v27 = v24[2];
  v28 = v38;
  *v38 = *v24;
  v28[1] = v26;
  v28[2] = v27;
  return swift_storeEnumTagMultiPayload();
}

PodcastsFoundation::EyebrowBuilder::EpisodeHeaderSubtitleConfiguration __swiftcall EyebrowBuilder.EpisodeHeaderSubtitleConfiguration.init(viewIsRTL:showsDuration:showsEntitlement:)(Swift::Bool viewIsRTL, Swift::Bool showsDuration, Swift::Bool showsEntitlement)
{
  *v3 = viewIsRTL;
  v3[1] = showsDuration;
  v3[2] = showsEntitlement;
  result.viewIsRTL = viewIsRTL;
  return result;
}

uint64_t EyebrowBuilder.smartPlay.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t EyebrowBuilder.episodeNumber.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t EyebrowBuilder.seasonNumber.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);

  return v1;
}

uint64_t EyebrowBuilder.pubDate.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);

  return v1;
}

uint64_t EyebrowBuilder.listenNowReason.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);

  return v1;
}

uint64_t EyebrowBuilder.remainingTime.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 128);

  return v1;
}

uint64_t EyebrowBuilder.explicitSymbol.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 144);

  return v1;
}

uint64_t EyebrowBuilder.captionPublisher.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v29 = _s26SynchronizedEventPublisherVMa(0);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_1D9176E3C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACC8, &qword_1D91B9FA8);
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v30 = &v29 - v12;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACD0, &qword_1D91B9FB0);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v14 = &v29 - v13;
  v15 = v1[24];
  v16 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v15);
  (*(v16 + 104))(v15, v16);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1D9176E2C();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1D8D08A50(v7, &qword_1ECAB75C0, &unk_1D9188A50);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  (*(v9 + 16))(v4, v11, v8);
  sub_1D8D5D644(&qword_1EDCD0918, _s26SynchronizedEventPublisherVMa, &unk_1D9196C04);
  v18 = sub_1D9177B1C();
  sub_1D8D41C00(v4, _s26SynchronizedEventPublisherVMa);
  (*(v9 + 8))(v11, v8);
  v36[0] = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACD8, &qword_1D91B9FB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
  v19 = MEMORY[0x1E695BED8];
  sub_1D8CF48EC(&qword_1EDCD0BC0, &qword_1ECABACD8, &qword_1D91B9FB8, MEMORY[0x1E695BED8]);
  v20 = v30;
  sub_1D9177B9C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB44F0, &qword_1D9189F90);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D9189080;
  swift_beginAccess();
  v22 = v1[3];
  *(v21 + 32) = v2[2];
  *(v21 + 40) = v22;
  sub_1D8CF48EC(&unk_1EDCD0CD0, &qword_1ECABACC8, &qword_1D91B9FA8, MEMORY[0x1E695BD60]);

  v23 = v34;
  sub_1D9177CCC();

  (*(v32 + 8))(v20, v23);
  sub_1D8CF48EC(&qword_1EDCD0E98, &qword_1ECABACD0, &qword_1D91B9FB0, MEMORY[0x1E695BCA8]);
  v24 = v33;
  v25 = sub_1D9177B1C();
  (*(v31 + 8))(v14, v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F28, &qword_1D91B9FC0);
  v27 = v35;
  v35[3] = v26;
  result = sub_1D8CF48EC(&qword_1EDCD0B98, &qword_1ECAB6F28, &qword_1D91B9FC0, v19);
  v27[4] = result;
  *v27 = v25;
  return result;
}

void sub_1D911FDF8(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1D8D2EF54();
  v4 = sub_1D8D3C1DC();
  v6 = v5;
  swift_beginAccess();
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t EyebrowBuilder.captionPublisher<A>(playStatePublisher:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v50 = a2;
  v48 = type metadata accessor for EpisodePlayState(255);
  v53 = a3;
  v7 = sub_1D917768C();
  v57 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v44 - v8;
  WitnessTable = swift_getWitnessTable();
  v58 = v7;
  v47 = WitnessTable;
  v10 = sub_1D917765C();
  v54 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB6F28, &qword_1D91B9FC0);
  v13 = swift_getWitnessTable();
  v55 = v12;
  v56 = v10;
  v46 = v13;
  v14 = sub_1D917768C();
  v60 = *(v14 - 8);
  v61 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v44 - v15;
  v16 = type metadata accessor for EyebrowBuilder.ListContext(0);
  v45 = *(v16 - 8);
  v17 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACE0, &unk_1D91B9FC8);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v44 - v20;
  v22 = OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context;
  v23 = v5[24];
  v24 = v5[25];
  __swift_project_boxed_opaque_existential_1(v5 + 21, v23);
  (*(v24 + 40))(&v63, v23, v24);
  v25 = v63;
  v26 = v64;
  v27 = BYTE1(v64);
  v28 = &v21[*(v19 + 56)];
  sub_1D8D423B4(v5 + v22, v21, type metadata accessor for EyebrowBuilder.ListContext);
  *v28 = v25;
  v28[8] = v26;
  v28[9] = v27;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1D8D423B4(v21, &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EyebrowBuilder.ListContext);
    sub_1D8D08A50(&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ECAB7AE0, &qword_1D91B7E20);
  }

  else if (EnumCaseMultiPayload != 2 && (EnumCaseMultiPayload != 1 || (v27 & 1) != 0 || (v26 & 1) == 0 || v25))
  {
    EyebrowBuilder.captionPublisher.getter(v62);
    return sub_1D8D08A50(v21, &qword_1ECABACE0, &unk_1D91B9FC8);
  }

  sub_1D8D41C00(v21, type metadata accessor for EyebrowBuilder.ListContext);
  sub_1D8D423B4(v5 + v22, &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EyebrowBuilder.ListContext);
  v31 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v32 = swift_allocObject();
  sub_1D9121C68(&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
  v33 = v51;
  sub_1D9177B9C();

  sub_1D8D5D644(&qword_1EDCD5120, type metadata accessor for EpisodePlayState, &protocol conformance descriptor for EpisodePlayState);
  v34 = v49;
  v35 = v58;
  sub_1D9177D6C();
  (*(v57 + 8))(v33, v35);

  v36 = v59;
  v38 = v55;
  v37 = v56;
  sub_1D9177B9C();

  (*(v54 + 8))(v34, v37);
  v39 = sub_1D8CF48EC(&qword_1EDCD0B98, &qword_1ECAB6F28, &qword_1D91B9FC0, MEMORY[0x1E695BED8]);
  v40 = v61;
  v41 = swift_getWitnessTable();
  v63 = v38;
  v64 = v40;
  v65 = v39;
  v66 = v41;
  v42 = sub_1D917763C();
  v43 = v62;
  v62[3] = v42;
  v43[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_0(v43);
  MEMORY[0x1DA729340](v40, v41, v39);
  return (*(v60 + 8))(v36, v40);
}

uint64_t sub_1D91204E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EpisodePlayState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = type metadata accessor for EyebrowBuilder.ListContext(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D423B4(a2, v17, type metadata accessor for EyebrowBuilder.ListContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D8D423B4(a1, v14, type metadata accessor for EpisodePlayState);
    if (swift_getEnumCaseMultiPayload() == 3 && (sub_1D8D423B4(v14, v11, type metadata accessor for EpisodePlayState), (v11[16] & 1) == 0))
    {
      sub_1D8D41C00(v14, type metadata accessor for EpisodePlayState);
      *a3 = xmmword_1D91B9F90;
      *(a3 + 16) = 0;
      *(a3 + 18) = 0;
    }

    else
    {
      sub_1D8D41C00(v14, type metadata accessor for EpisodePlayState);
      sub_1D8D423B4(a1, v8, type metadata accessor for EpisodePlayState);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_1D8D08A50(v8, &qword_1ECAB75C0, &unk_1D9188A50);
        v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA858, &qword_1D91B8020) + 48);
        v19 = sub_1D9176E3C();
        (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
        *(a3 + v18) = 0;
      }

      else
      {
        sub_1D8D41C00(v8, type metadata accessor for EpisodePlayState);
      }
    }

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1D8D423B4(a1, a3, type metadata accessor for EpisodePlayState);
    return sub_1D8D41C00(v17, type metadata accessor for EyebrowBuilder.ListContext);
  }
}

uint64_t sub_1D912081C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v17 = a3;
  v5 = *a2;
  v6 = type metadata accessor for EyebrowBuilder.ListContext(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CFD9D8((v3 + 21), v19);
  sub_1D911EFCC(a1, v8);
  v18 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style);
  swift_beginAccess();
  v9 = v3[18];
  v10 = v3[19];
  v11 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_showsSubscriptionBadge);
  v12 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_hostingViewHasLimitedSpace);
  LODWORD(v3) = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_suppressPubDate);
  v14 = v20;
  v13 = v21;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);

  sub_1D8DB48F4(v15, v8, &v18, v9, v10, v11, v12, v3, v5, v14, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  EyebrowBuilder.captionPublisher.getter(v19);

  __swift_project_boxed_opaque_existential_1(v19, v20);
  *v17 = sub_1D9177B1C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v19);
}

uint64_t sub_1D91209E8()
{
  v1 = v0[24];
  v2 = v0[25];
  __swift_project_boxed_opaque_existential_1(v0 + 21, v1);
  v3 = (*(v2 + 56))(v1, v2);
  if (v3 == 1)
  {
  }

  else
  {
    v4 = sub_1D9179ACC();

    if ((v4 & 1) == 0)
    {
      return v3;
    }
  }

  if ([objc_opt_self() isThinJetApp])
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D9120AD4(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  sub_1D8CFD9D8(a1, v54);
  v8 = v55;
  v9 = v56;
  __swift_project_boxed_opaque_existential_1(v54, v55);
  v10 = (*(v9 + 72))(v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  if ((v10 & 1) == 0)
  {
    swift_beginAccess();
    v17 = v3[13];
    if (v17)
    {
      v16 = v3[12];

      goto LABEL_13;
    }

LABEL_16:
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  *(v3 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) = 0;
  v11 = v3[24];
  v12 = v3[25];
  __swift_project_boxed_opaque_existential_1(v3 + 21, v11);
  v13 = (*(v12 + 48))(v11, v12);
  if (!v13)
  {
    v18 = sub_1D9121090();
    goto LABEL_12;
  }

  if (v13 != 1)
  {
    v18 = sub_1D9120EE0();
    goto LABEL_12;
  }

  v14 = sub_1D8D55D60(0, 1);
  if (!v15)
  {
    v14 = sub_1D8D3A0AC(0, 0);
    if (!v15)
    {
      v14 = sub_1D8D3A558(0);
      if (!v15)
      {
        v18 = sub_1D8D3C774(0);
LABEL_12:
        v16 = v18;
        v17 = v19;
        if (v19)
        {
          goto LABEL_13;
        }

        goto LABEL_16;
      }
    }
  }

  v16 = v14;
  v17 = v15;
LABEL_13:
  v20 = sub_1D8D4241C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = sub_1D8D4241C((v21 > 1), v22 + 1, 1, v20);
  }

  *(v20 + 2) = v22 + 1;
  v23 = &v20[16 * v22];
  *(v23 + 4) = v16;
  *(v23 + 5) = v17;
LABEL_17:
  v53[0] = v5;
  v53[1] = v6;
  v53[2] = v7;
  v24 = sub_1D9121AF0(a1, v53);
  if (v25)
  {
    v26 = v24;
    v27 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1D8D4241C(0, *(v20 + 2) + 1, 1, v20);
    }

    v29 = *(v20 + 2);
    v28 = *(v20 + 3);
    if (v29 >= v28 >> 1)
    {
      v20 = sub_1D8D4241C((v28 > 1), v29 + 1, 1, v20);
    }

    *(v20 + 2) = v29 + 1;
    v30 = &v20[16 * v29];
    *(v30 + 4) = v26;
    *(v30 + 5) = v27;
  }

  if (v7)
  {
    v31 = a1[3];
    v32 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v31);
    v33 = sub_1D8D3BB98(0, v31, v32);
    if (v34)
    {
      v35 = v33;
      v36 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1D8D4241C(0, *(v20 + 2) + 1, 1, v20);
      }

      v38 = *(v20 + 2);
      v37 = *(v20 + 3);
      if (v38 >= v37 >> 1)
      {
        v20 = sub_1D8D4241C((v37 > 1), v38 + 1, 1, v20);
      }

      *(v20 + 2) = v38 + 1;
      v39 = &v20[16 * v38];
      *(v39 + 4) = v35;
      *(v39 + 5) = v36;
    }
  }

  v40 = a1[3];
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v40);
  if ((*(v41 + 64))(v40, v41))
  {
    swift_beginAccess();
    v45 = v3[19];
    if (v45)
    {
      v46 = v3[18];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1D8D4241C(0, *(v20 + 2) + 1, 1, v20);
      }

      v48 = *(v20 + 2);
      v47 = *(v20 + 3);
      if (v48 >= v47 >> 1)
      {
        v20 = sub_1D8D4241C((v47 > 1), v48 + 1, 1, v20);
      }

      *(v20 + 2) = v48 + 1;
      v49 = &v20[16 * v48];
      *(v49 + 4) = v46;
      *(v49 + 5) = v45;
    }
  }

  if (v5)
  {
    sub_1D8F29EFC(v20);
    v20 = v50;
  }

  v51 = sub_1D8D42528(v20, v42, v43, v44);

  return v51;
}

uint64_t sub_1D9120EE0()
{
  v1 = type metadata accessor for EyebrowBuilder.ListContext(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D423B4(v0 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context, v3, type metadata accessor for EyebrowBuilder.ListContext);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1D8D41C00(v3, type metadata accessor for EyebrowBuilder.ListContext);
LABEL_4:
    result = sub_1D8D55D60(0, 0);
    if (!v6)
    {
      result = sub_1D8D3A0AC(0, 0);
      if (!v7)
      {
        result = sub_1D8D3A558(0);
        if (!v8)
        {
LABEL_16:
          v13 = 0;
          return sub_1D8D3C774(v13);
        }
      }
    }

    return result;
  }

  v4 = *v3;
  if (v4 == 2)
  {
    goto LABEL_4;
  }

  if (v4)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v9 = sub_1D9179ACC();

    if ((v9 & 1) == 0)
    {
      swift_bridgeObjectRelease_n();
      result = sub_1D8D3A0AC(0, 0);
      if (v14)
      {
        return result;
      }

      goto LABEL_16;
    }
  }

  result = sub_1D8D55D60(1, 0);
  if (!v10)
  {
    result = sub_1D8D3A0AC(1, 0);
    if (!v11)
    {
      result = sub_1D8D3A558(1);
      if (!v12)
      {
        v13 = 1;
        return sub_1D8D3C774(v13);
      }
    }
  }

  return result;
}

uint64_t sub_1D9121090()
{
  v1 = type metadata accessor for EyebrowBuilder.ListContext(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0[24];
  v5 = v0[25];
  __swift_project_boxed_opaque_existential_1(v0 + 21, v4);
  if ((*(v5 + 72))(v4, v5))
  {
    sub_1D8D423B4(v0 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context, v3, type metadata accessor for EyebrowBuilder.ListContext);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1D8D41C00(v3, type metadata accessor for EyebrowBuilder.ListContext);
    }

    else
    {
      v7 = *v3;
      if (v7 != 2)
      {
        if (v7)
        {
          v9 = sub_1D9179ACC();

          if ((v9 & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        v8 = 1;
        return sub_1D9121290(v8);
      }
    }

LABEL_8:
    v8 = 0;
    return sub_1D9121290(v8);
  }

  return sub_1D8D3C774(0);
}

Swift::String_optional __swiftcall EyebrowBuilder.episodeSerialCaption(separateByOnlyWhiteSpace:)(Swift::Bool separateByOnlyWhiteSpace)
{
  v1 = sub_1D8D55D60(0, separateByOnlyWhiteSpace);
  if (!v2)
  {
    v1 = sub_1D8D3A0AC(0, 0);
    if (!v2)
    {
      v1 = sub_1D8D3A558(0);
      if (!v2)
      {
        v1 = sub_1D8D3C774(0);
      }
    }
  }

  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_1D9121290(char a1)
{
  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917693C();
  if (a1)
  {
    v3 = sub_1D8D3A0AC(0, 0);
    if (!v4)
    {
      return v2;
    }

    goto LABEL_9;
  }

  v3 = sub_1D8D55D60(0, 0);
  if (v5 || (v3 = sub_1D8D3A0AC(0, 0), v6) || (v3 = sub_1D8D3A558(0), v7))
  {
LABEL_9:
    v2 = v3;
  }

  return v2;
}

uint64_t Double.resumeString.getter(double a1)
{
  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917693C();
  v4 = v3;
  v8 = sub_1D8D4241C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1D8D4241C((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[16 * v10];
  *(v11 + 4) = v2;
  *(v11 + 5) = v4;
  if (a1 > 0.0)
  {
    v12 = [objc_opt_self() prettyShortStringWithDuration:1 includeTimeRemainingPhrase:0 abbreviated:{a1, 0xE000000000000000}];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1D917820C();
      v16 = v15;

      v18 = *(v8 + 2);
      v17 = *(v8 + 3);
      if (v18 >= v17 >> 1)
      {
        v8 = sub_1D8D4241C((v17 > 1), v18 + 1, 1, v8);
      }

      *(v8 + 2) = v18 + 1;
      v19 = &v8[16 * v18];
      *(v19 + 4) = v14;
      *(v19 + 5) = v16;
    }
  }

  v20 = sub_1D8D42528(v8, v5, v6, v7);

  return v20;
}

Swift::String_optional __swiftcall Double.shortLowercaseResumeString(prefix:isRTL:isExplicit:explicitSymbol:)(Swift::String_optional prefix, Swift::Bool isRTL, Swift::Bool isExplicit, Swift::String_optional explicitSymbol)
{
  v5 = v4;
  object = explicitSymbol.value._object;
  countAndFlagsBits = explicitSymbol.value._countAndFlagsBits;
  if (!prefix.value._object)
  {
    v12 = MEMORY[0x1E69E7CC0];
    if (v4 <= 0.0)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v10 = prefix.value._object;
  v11 = prefix.value._countAndFlagsBits;

  v12 = sub_1D8D4241C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = *(v12 + 16);
  v13 = *(v12 + 24);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1D8D4241C((v13 > 1), v14 + 1, 1, v12);
  }

  *(v12 + 16) = v14 + 1;
  v15 = v12 + 16 * v14;
  *(v15 + 32) = v11;
  *(v15 + 40) = v10;
  if (v5 > 0.0)
  {
LABEL_7:
    prefix.value._countAndFlagsBits = [objc_opt_self() prettyShortStringWithDuration:1 includeTimeRemainingPhrase:1 abbreviated:v5];
    if (prefix.value._countAndFlagsBits)
    {
      v16 = prefix.value._countAndFlagsBits;
      v17 = sub_1D917820C();
      v19 = v18;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1D8D4241C(0, *(v12 + 16) + 1, 1, v12);
      }

      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        v12 = sub_1D8D4241C((v20 > 1), v21 + 1, 1, v12);
      }

      *(v12 + 16) = v21 + 1;
      v22 = v12 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
    }
  }

LABEL_13:
  if (isRTL)
  {
    sub_1D8F29EFC(v12);
    v12 = prefix.value._countAndFlagsBits;
  }

  v23 = sub_1D8D42528(v12, prefix.value._object, isRTL, isExplicit);
  v25 = v24;

  if (v25)
  {
    if (isExplicit && object)
    {

      MEMORY[0x1DA7298F0](0x8480E2B7C28480E2, 0xA800000000000000);

      MEMORY[0x1DA7298F0](countAndFlagsBits, object);

      countAndFlagsBits = v23;
      object = v25;
    }

    else
    {
      countAndFlagsBits = v23;
      object = v25;
    }
  }

  else if (isExplicit)
  {
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  v26 = countAndFlagsBits;
  v27 = object;
  result.value._object = v27;
  result.value._countAndFlagsBits = v26;
  return result;
}

uint64_t Double.playingString.getter(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 > 0.0 && (v5 = [objc_opt_self() prettyShortStringWithDuration:1 includeTimeRemainingPhrase:0 abbreviated:a1]) != 0)
  {
    v6 = v5;
    v7 = sub_1D917820C();
    v9 = v8;

    v10 = sub_1D8D4241C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1D8D4241C((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[16 * v12];
    *(v13 + 4) = v7;
    *(v13 + 5) = v9;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1D8D42528(v10, a3, a4, a5);

  return v14;
}

Swift::String_optional __swiftcall Double.durationString(prefix:isExplicit:explicitSymbol:isRTL:abbreviated:)(Swift::String_optional prefix, Swift::Bool isExplicit, Swift::String_optional explicitSymbol, Swift::Bool isRTL, Swift::Bool abbreviated)
{
  v6 = v5;
  object = explicitSymbol.value._object;
  countAndFlagsBits = explicitSymbol.value._countAndFlagsBits;
  if (!prefix.value._object)
  {
    v14 = MEMORY[0x1E69E7CC0];
    if (v5 <= 0.0)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v12 = prefix.value._object;
  v13 = prefix.value._countAndFlagsBits;

  v14 = sub_1D8D4241C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1D8D4241C((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 16) = v16 + 1;
  v17 = v14 + 16 * v16;
  *(v17 + 32) = v13;
  *(v17 + 40) = v12;
  if (v6 > 0.0)
  {
LABEL_7:
    prefix.value._countAndFlagsBits = [objc_opt_self() prettyShortStringWithDuration:0 includeTimeRemainingPhrase:abbreviated abbreviated:v6];
    if (prefix.value._countAndFlagsBits)
    {
      v18 = prefix.value._countAndFlagsBits;
      v19 = sub_1D917820C();
      v21 = v20;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1D8D4241C(0, *(v14 + 16) + 1, 1, v14);
      }

      v23 = *(v14 + 16);
      v22 = *(v14 + 24);
      if (v23 >= v22 >> 1)
      {
        v14 = sub_1D8D4241C((v22 > 1), v23 + 1, 1, v14);
      }

      *(v14 + 16) = v23 + 1;
      v24 = v14 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
    }
  }

LABEL_13:
  if (isRTL)
  {
    sub_1D8F29EFC(v14);
    v14 = prefix.value._countAndFlagsBits;
  }

  v25 = sub_1D8D42528(v14, prefix.value._object, isExplicit, explicitSymbol.value._countAndFlagsBits);
  v27 = v26;

  if (v27 && isExplicit && object)
  {

    MEMORY[0x1DA7298F0](0x8480E2B7C28480E2, 0xA800000000000000);

    MEMORY[0x1DA7298F0](countAndFlagsBits, object);
  }

  v28 = v25;
  v29 = v27;
  result.value._object = v29;
  result.value._countAndFlagsBits = v28;
  return result;
}

uint64_t sub_1D9121AF0(void *a1, uint64_t a2)
{
  if (*(a2 + 1) != 1)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = COERCE_DOUBLE((*(v3 + 80))(v2, v3));
  if (v5)
  {
    return 0;
  }

  if (v4 > 0.0 && (v9 = [objc_opt_self() prettyShortStringWithDuration:0 includeTimeRemainingPhrase:0 abbreviated:v4]) != 0)
  {
    v10 = v9;
    v11 = sub_1D917820C();
    v13 = v12;

    v14 = sub_1D8D4241C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v15 = *(v14 + 2);
    v16 = *(v14 + 3);
    v17 = v15 + 1;
    if (v15 >= v16 >> 1)
    {
      v23 = v15 + 1;
      v20 = v14;
      v21 = *(v14 + 2);
      v22 = sub_1D8D4241C((v16 > 1), v15 + 1, 1, v20);
      v15 = v21;
      v17 = v23;
      v14 = v22;
    }

    *(v14 + 2) = v17;
    v18 = &v14[16 * v15];
    *(v18 + 4) = v11;
    *(v18 + 5) = v13;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v19 = sub_1D8D42528(v14, v5, v6, v7);

  return v19;
}

uint64_t sub_1D9121C68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EyebrowBuilder.ListContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9121CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for EyebrowBuilder.ListContext(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D91204E8(a1, v6, a2);
}

unint64_t sub_1D9121D58()
{
  result = qword_1ECABACE8;
  if (!qword_1ECABACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABACE8);
  }

  return result;
}

void sub_1D9121F88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 != 1)
    {
      return;
    }

    v8 = 168;
    v9 = 160;
  }

  else
  {
    v8 = 152;
    v9 = 144;
  }

  sub_1D9176E2C();
  sub_1D9176CCC();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  *(v2 + v9) = v11;
  *(v2 + v8) = 0;
}

uint64_t sub_1D9122090()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D9122154(uint64_t a1)
{
  v2 = *v1;
  if (a1 == 1)
  {
    return *(v2 + 17);
  }

  if (a1)
  {
    return 0;
  }

  return *(v2 + 16);
}

uint64_t sub_1D912217C(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  if (a2 == 1)
  {
    *(v3 + 17) = result & 1;
  }

  else if (!a2)
  {
    *(v3 + 16) = result & 1;
  }

  return result;
}

uint64_t sub_1D91221A4(uint64_t a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      return 0;
    }

    v2 = 40;
  }

  else
  {
    v2 = 24;
  }

  v3 = *(*v1 + v2);

  return v3;
}

double sub_1D9122208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  if (a1)
  {
    if (a1 != 1)
    {
      return result;
    }

    v5 = 48;
    v6 = 40;
  }

  else
  {
    v5 = 32;
    v6 = 24;
  }

  *(v4 + v6) = a2;
  *(v4 + v5) = a3;

  return result;
}

double sub_1D912227C(uint64_t a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      return result;
    }

    v2 = 40;
  }

  else
  {
    v2 = 24;
  }

  v3 = (*v1 + v2);
  *v3 = 0;
  v3[1] = 0;

  return result;
}

uint64_t sub_1D91222B4(uint64_t a1)
{
  v2 = *v1;
  if (a1 == 1)
  {
    return *(v2 + 60);
  }

  if (a1)
  {
    return 0;
  }

  return *(v2 + 59);
}

uint64_t sub_1D91222DC(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  if (a2 == 1)
  {
    *(v3 + 60) = result & 1;
  }

  else if (!a2)
  {
    *(v3 + 59) = result & 1;
  }

  return result;
}

uint64_t sub_1D912232C(uint64_t result, char a2)
{
  v3 = *v2;
  *(v3 + 64) = result;
  *(v3 + 72) = a2 & 1;
  return result;
}

double sub_1D9122340(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;

  return result;
}

uint64_t sub_1D9122354()
{
  v1 = *(*v0 + 128);

  return v1;
}

double sub_1D9122388(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = a2;

  return result;
}

uint64_t sub_1D912239C()
{
  v1 = *(*v0 + 112);

  return v1;
}

double sub_1D91223D0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;

  return result;
}

uint64_t sub_1D91223F4(uint64_t result, char a2)
{
  v3 = *v2;
  *(v3 + 96) = result;
  *(v3 + 104) = a2 & 1;
  return result;
}

uint64_t sub_1D9122408(uint64_t a1)
{
  if (!a1)
  {
    v2 = 144;
    return *(*v1 + v2);
  }

  if (a1 == 1)
  {
    v2 = 160;
    return *(*v1 + v2);
  }

  return 0;
}

uint64_t sub_1D9122468(uint64_t result)
{
  v2 = *v1;
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v3 = 168;
    v4 = 160;
  }

  else
  {
    v3 = 152;
    v4 = 144;
  }

  *(v2 + v4) = 0;
  *(v2 + v3) = 1;
  return result;
}

Swift::Void __swiftcall SyncKeysRepository.markInterestSyncDirty(_:)(Swift::Bool a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(v1 + v3, v6);
  v4 = v7;
  v5 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v5 + 280))(v2, v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t SyncKeysRepository.isSubscriptionSyncDirty(for:)(uint64_t a1, uint64_t a2)
{
  if (isRunningUnitTests(a1, a2) & 1) == 0 && [objc_opt_self() isRunningOnHomepod] && (v11 = &type metadata for Podcasts, v12 = sub_1D8CF0F2C(), LOBYTE(v10[0]) = 13, v4 = sub_1D917710C(), __swift_destroy_boxed_opaque_existential_1Tm(v10), (v4))
  {
    v5 = 0;
  }

  else
  {
    v6 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
    swift_beginAccess();
    sub_1D8CFD9D8(v2 + v6, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v5 = (*(v8 + 80))(a1, v7, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  return v5 & 1;
}

uint64_t SyncKeysRepository.markSubscriptionSyncDirty(_:for:)(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  if ((isRunningUnitTests(a1, a2) & 1) != 0 || ![objc_opt_self() isRunningOnHomepod] || (v11 = &type metadata for Podcasts, v12 = sub_1D8CF0F2C(), LOBYTE(v10[0]) = 13, v5 = sub_1D917710C(), result = __swift_destroy_boxed_opaque_existential_1Tm(v10), (v5 & 1) == 0))
  {
    v7 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
    swift_beginAccess();
    sub_1D8CFD9D8(v2 + v7, v10);
    v8 = v11;
    v9 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v9 + 88))(v4 & 1, a2, v8, v9);
    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  return result;
}

id SyncKeysRepository.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SyncKeysRepository.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SyncKeysRepository.isNonFollowedShowsSyncDirty.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  LOBYTE(v1) = (*(v3 + 8))(v2, v3);
  swift_endAccess();
  return v1 & 1;
}

uint64_t SyncKeysRepository.isNonFollowedShowsSyncDirty.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 16))(a1, v4, v5);
  return swift_endAccess();
}

uint64_t sub_1D9122A70@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_project_boxed_opaque_existential_1(v3, v4);
  LOBYTE(v3) = (*(v5 + 8))(v4, v5);
  result = swift_endAccess();
  *a2 = v3 & 1;
  return result;
}

uint64_t sub_1D9122B08(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 16))(v2, v4, v5);
  return swift_endAccess();
}

uint64_t (*SyncKeysRepository.isNonFollowedShowsSyncDirty.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  LOBYTE(v6) = (*(v8 + 8))(v7, v8);
  swift_endAccess();
  *(v4 + 40) = v6 & 1;
  return sub_1D9122C74;
}

void sub_1D9122C74(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 24) + *(*a1 + 32);
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 16))(v2, v4, v5);
  swift_endAccess();

  free(v1);
}

uint64_t SyncKeysRepository.isInterestSyncDirty.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  LOBYTE(v1) = (*(v3 + 32))(v2, v3);
  swift_endAccess();
  return v1 & 1;
}

uint64_t SyncKeysRepository.isInterestSyncDirty.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 40))(a1, v4, v5);
  return swift_endAccess();
}

uint64_t sub_1D9122F84@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_project_boxed_opaque_existential_1(v3, v4);
  LOBYTE(v3) = (*(v5 + 32))(v4, v5);
  result = swift_endAccess();
  *a2 = v3 & 1;
  return result;
}

uint64_t sub_1D912301C(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 40))(v2, v4, v5);
  return swift_endAccess();
}

uint64_t (*SyncKeysRepository.isInterestSyncDirty.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  LOBYTE(v6) = (*(v8 + 32))(v7, v8);
  swift_endAccess();
  *(v4 + 40) = v6 & 1;
  return sub_1D9123188;
}

void sub_1D9123188(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 24) + *(*a1 + 32);
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 40))(v2, v4, v5);
  swift_endAccess();

  free(v1);
}

uint64_t SyncKeysRepository.isPlaylistSyncDirty.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  LOBYTE(v1) = (*(v3 + 56))(v2, v3);
  swift_endAccess();
  return v1 & 1;
}

uint64_t SyncKeysRepository.isPlaylistSyncDirty.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 64))(a1, v4, v5);
  return swift_endAccess();
}

uint64_t sub_1D9123498@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_project_boxed_opaque_existential_1(v3, v4);
  LOBYTE(v3) = (*(v5 + 56))(v4, v5);
  result = swift_endAccess();
  *a2 = v3 & 1;
  return result;
}

uint64_t sub_1D9123530(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 64))(v2, v4, v5);
  return swift_endAccess();
}

uint64_t (*SyncKeysRepository.isPlaylistSyncDirty.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  LOBYTE(v6) = (*(v8 + 56))(v7, v8);
  swift_endAccess();
  *(v4 + 40) = v6 & 1;
  return sub_1D912369C;
}

void sub_1D912369C(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 24) + *(*a1 + 32);
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 64))(v2, v4, v5);
  swift_endAccess();

  free(v1);
}

uint64_t static SyncKeysRepository.shouldSyncInReadOnlyMode.getter(uint64_t a1, uint64_t a2)
{
  if ((isRunningUnitTests(a1, a2) & 1) != 0 || ![objc_opt_self() isRunningOnHomepod])
  {
    v2 = 0;
  }

  else
  {
    v4[3] = &type metadata for Podcasts;
    v4[4] = sub_1D8CF0F2C();
    LOBYTE(v4[0]) = 13;
    v2 = sub_1D917710C();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  return v2 & 1;
}

uint64_t SyncKeysRepository.subscriptionsSyncVersion(for:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(v1 + v3, v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = (*(v5 + 96))(a1, v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t SyncKeysRepository.updateSubscriptionsSyncVersion(for:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(v3 + v7, v11);
  v8 = v12;
  v9 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v9 + 104))(a1, a2, a3, v8, v9);
  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t SyncKeysRepository.resetSubscriptionsSyncVersion(for:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(v1 + v3, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 112))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t SyncKeysRepository.isBookmarksSyncDirty(for:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(v1 + v3, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  LOBYTE(a1) = (*(v5 + 120))(a1, v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return a1 & 1;
}

uint64_t SyncKeysRepository.markBookmarksSyncDirty(_:for:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(v2 + v5, v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 128))(a1, a2, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t SyncKeysRepository.nonFollowedShowsSyncVersion.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 184))(v2, v3);
  swift_endAccess();
  return v4;
}

uint64_t SyncKeysRepository.nonFollowedShowsSyncVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 192))(a1, a2, v6, v7);
  return swift_endAccess();
}

uint64_t sub_1D91241C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(v5 + 184))(v4, v5);
  v8 = v7;
  result = swift_endAccess();
  *a2 = v6;
  a2[1] = v8;
  return result;
}

uint64_t sub_1D9124260(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  v7 = *(v6 + 192);

  v7(v2, v3, v5, v6);
  return swift_endAccess();
}

uint64_t (*SyncKeysRepository.nonFollowedShowsSyncVersion.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = (*(v8 + 184))(v7, v8);
  v11 = v10;
  swift_endAccess();
  *(v4 + 24) = v9;
  *(v4 + 32) = v11;
  return sub_1D91243EC;
}

void sub_1D91243EC(void *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40) + *(*a1 + 48);
  swift_beginAccess();
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  v9 = *(v8 + 192);
  if (a2)
  {

    v9(v4, v5, v7, v8);
    swift_endAccess();
  }

  else
  {
    v9(v4, v5, v7, v8);
    swift_endAccess();
  }

  free(v3);
}

uint64_t SyncKeysRepository.interestSyncVersion.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 232))(v2, v3);
  swift_endAccess();
  return v4;
}

uint64_t SyncKeysRepository.interestSyncVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 240))(a1, a2, v6, v7);
  return swift_endAccess();
}

uint64_t sub_1D91247D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(v5 + 232))(v4, v5);
  v8 = v7;
  result = swift_endAccess();
  *a2 = v6;
  a2[1] = v8;
  return result;
}

uint64_t sub_1D912486C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  v7 = *(v6 + 240);

  v7(v2, v3, v5, v6);
  return swift_endAccess();
}

uint64_t (*SyncKeysRepository.interestSyncVersion.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = (*(v8 + 232))(v7, v8);
  v11 = v10;
  swift_endAccess();
  *(v4 + 24) = v9;
  *(v4 + 32) = v11;
  return sub_1D91249F8;
}

void sub_1D91249F8(void *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40) + *(*a1 + 48);
  swift_beginAccess();
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  v9 = *(v8 + 240);
  if (a2)
  {

    v9(v4, v5, v7, v8);
    swift_endAccess();
  }

  else
  {
    v9(v4, v5, v7, v8);
    swift_endAccess();
  }

  free(v3);
}

uint64_t SyncKeysRepository.podcastsDomainVersion.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 208))(v2, v3);
  swift_endAccess();
  return v4;
}

uint64_t SyncKeysRepository.podcastsDomainVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 216))(a1, a2, v6, v7);
  return swift_endAccess();
}

uint64_t sub_1D9124DE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(v5 + 208))(v4, v5);
  v8 = v7;
  result = swift_endAccess();
  *a2 = v6;
  a2[1] = v8;
  return result;
}

uint64_t sub_1D9124E78(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  v7 = *(v6 + 216);

  v7(v2, v3, v5, v6);
  return swift_endAccess();
}

uint64_t (*SyncKeysRepository.podcastsDomainVersion.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = (*(v8 + 208))(v7, v8);
  v11 = v10;
  swift_endAccess();
  *(v4 + 24) = v9;
  *(v4 + 32) = v11;
  return sub_1D9125004;
}

void sub_1D9125004(void *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40) + *(*a1 + 48);
  swift_beginAccess();
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  v9 = *(v8 + 216);
  if (a2)
  {

    v9(v4, v5, v7, v8);
    swift_endAccess();
  }

  else
  {
    v9(v4, v5, v7, v8);
    swift_endAccess();
  }

  free(v3);
}

uint64_t SyncKeysRepository.isLibrarySyncEnabled.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  LOBYTE(v1) = (*(v3 + 136))(v2, v3);
  swift_endAccess();
  return v1 & 1;
}

uint64_t SyncKeysRepository.isLibrarySyncEnabled.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 144))(a1, v4, v5);
  return swift_endAccess();
}

uint64_t sub_1D9125374@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_project_boxed_opaque_existential_1(v3, v4);
  LOBYTE(v3) = (*(v5 + 136))(v4, v5);
  result = swift_endAccess();
  *a2 = v3 & 1;
  return result;
}

uint64_t sub_1D912540C(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 144))(v2, v4, v5);
  return swift_endAccess();
}

uint64_t (*SyncKeysRepository.isLibrarySyncEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  LOBYTE(v6) = (*(v8 + 136))(v7, v8);
  swift_endAccess();
  *(v4 + 40) = v6 & 1;
  return sub_1D9125578;
}

void sub_1D9125578(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 24) + *(*a1 + 32);
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 144))(v2, v4, v5);
  swift_endAccess();

  free(v1);
}

uint64_t SyncKeysRepository.nonFollowedShowsLastSyncTimestamp.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 160))(v2, v3);
  swift_endAccess();
  return v4;
}

uint64_t sub_1D91256B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(v5 + 160))(v4, v5);
  LOBYTE(v4) = v7;
  result = swift_endAccess();
  *a2 = v6;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D9125750(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 168))(v2, v3, v5, v6);
  return swift_endAccess();
}

uint64_t SyncKeysRepository.nonFollowedShowsLastSyncTimestamp.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 168))(a1, a2 & 1, v6, v7);
  return swift_endAccess();
}

uint64_t (*SyncKeysRepository.nonFollowedShowsLastSyncTimestamp.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = (*(v8 + 160))(v7, v8);
  LOBYTE(v7) = v10;
  swift_endAccess();
  *(v4 + 24) = v9;
  *(v4 + 32) = v7 & 1;
  return sub_1D9125974;
}

void sub_1D9125974(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40) + *(*a1 + 48);
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 168))(v2, v3, v5, v6);
  swift_endAccess();

  free(v1);
}

uint64_t SyncKeysRepository.interestLastSyncTimestamp.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 256))(v2, v3);
  swift_endAccess();
  return v4;
}

uint64_t sub_1D9125AB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(v5 + 256))(v4, v5);
  LOBYTE(v4) = v7;
  result = swift_endAccess();
  *a2 = v6;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D9125B54(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 264))(v2, v3, v5, v6);
  return swift_endAccess();
}

uint64_t SyncKeysRepository.interestLastSyncTimestamp.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 264))(a1, a2 & 1, v6, v7);
  return swift_endAccess();
}

uint64_t (*SyncKeysRepository.interestLastSyncTimestamp.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = (*(v8 + 256))(v7, v8);
  LOBYTE(v7) = v10;
  swift_endAccess();
  *(v4 + 24) = v9;
  *(v4 + 32) = v7 & 1;
  return sub_1D9125D78;
}

void sub_1D9125D78(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40) + *(*a1 + 48);
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 264))(v2, v3, v5, v6);
  swift_endAccess();

  free(v1);
}

double SyncKeysRepository.subscriptionsLastSyncTimestamp(for:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(v1 + v3, v10);
  v4 = v11;
  v5 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v6 = COERCE_DOUBLE((*(v5 + 336))(a1, v4, v5));
  if (v7)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v6;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v8;
}

uint64_t SyncKeysRepository.updateSubscriptionsLastSyncTimestamp(for:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(v1 + v3, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 344))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t SyncKeysRepository.resetSubscriptionsLastSyncTimestamp(for:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(v1 + v3, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 352))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_1D912669C(char a1)
{
  v2 = *(v1 + 48);
  v3 = v2[6];
  v4 = v2[7];
  v11 = MEMORY[0x1E69E6370];
  v10[0] = a1;
  v5 = v2[5];
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(v4 + 16);

  v8(v10, v5, v6, v7, v3, v4);

  return sub_1D8D64450(v10);
}

uint64_t sub_1D912673C(char a1)
{
  v2 = *(v1 + 56);
  v3 = v2[6];
  v4 = v2[7];
  v11 = MEMORY[0x1E69E6370];
  v10[0] = a1;
  v5 = v2[5];
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(v4 + 16);

  v8(v10, v5, v6, v7, v3, v4);

  return sub_1D8D64450(v10);
}

uint64_t sub_1D91267DC(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v3 = 24;
  }

  else
  {
    v3 = 16;
  }

  v4 = *(v2 + v3);
  v5 = v4[6];
  v6 = v4[7];
  v12 = MEMORY[0x1E69E6370];
  v11[0] = result & 1;
  v7 = v4[5];
  v8 = v4[2];
  v9 = v4[3];
  v10 = *(v6 + 16);

  v10(v11, v7, v8, v9, v5, v6);

  return sub_1D8D64450(v11);
}

uint64_t sub_1D9126898(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v6 = 40;
  }

  else
  {
    v6 = 32;
  }

  v7 = *(v3 + v6);
  v8 = v7[7];
  v9 = v7[8];
  v14[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
  v14[0] = a2;
  v14[1] = a3;
  v10 = v7[6];
  v11 = v7[2];
  v12 = v7[3];
  v13 = *(v9 + 16);

  v13(v14, v10, v11, v12, v8, v9);

  return sub_1D8D64450(v14);
}

uint64_t sub_1D9126974(uint64_t result)
{
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v2 = 40;
  }

  else
  {
    v2 = 32;
  }

  v3 = *(v1 + v2);
  v4 = v3[7];
  v5 = v3[8];
  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
  v10[0] = 0;
  v10[1] = 0;
  v6 = v3[6];
  v7 = v3[2];
  v8 = v3[3];
  v9 = *(v5 + 16);

  v9(v10, v6, v7, v8, v4, v5);

  return sub_1D8D64450(v10);
}

uint64_t sub_1D9126A38(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v3 = 72;
  }

  else
  {
    v3 = 64;
  }

  v4 = *(v2 + v3);
  v5 = v4[6];
  v6 = v4[7];
  v12 = MEMORY[0x1E69E6370];
  v11[0] = result & 1;
  v7 = v4[5];
  v8 = v4[2];
  v9 = v4[3];
  v10 = *(v6 + 16);

  v10(v11, v7, v8, v9, v5, v6);

  return sub_1D8D64450(v11);
}

uint64_t sub_1D9126AF4(uint64_t a1, char a2)
{
  v5 = *(v2 + 80);
  v6 = v5[7];
  v7 = v5[8];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7E0, &qword_1D91A3E10);
  v13 = a1;
  v14 = a2 & 1;
  v8 = v5[6];
  v9 = v5[2];
  v10 = v5[3];
  v11 = *(v7 + 16);

  v11(&v13, v8, v9, v10, v6, v7);

  return sub_1D8D64450(&v13);
}

uint64_t sub_1D9126BB0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);
  v6 = v5[7];
  v7 = v5[8];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
  v13[0] = a1;
  v13[1] = a2;
  v8 = v5[6];
  v9 = v5[2];
  v10 = v5[3];
  v11 = *(v7 + 16);

  v11(v13, v8, v9, v10, v6, v7);

  return sub_1D8D64450(v13);
}

uint64_t sub_1D9126C64(uint64_t a1, char a2)
{
  v5 = *(v2 + 96);
  v6 = v5[7];
  v7 = v5[8];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7E0, &qword_1D91A3E10);
  v13 = a1;
  v14 = a2 & 1;
  v8 = v5[6];
  v9 = v5[2];
  v10 = v5[3];
  v11 = *(v7 + 16);

  v11(&v13, v8, v9, v10, v6, v7);

  return sub_1D8D64450(&v13);
}

uint64_t sub_1D9126D24(char a1)
{
  v2 = *(v1 + 104);
  v3 = v2[6];
  v4 = v2[7];
  v11 = MEMORY[0x1E69E6370];
  v10[0] = a1;
  v5 = v2[5];
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(v4 + 16);

  v8(v10, v5, v6, v7, v3, v4);

  return sub_1D8D64450(v10);
}

uint64_t sub_1D9126DC4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);
  v6 = v5[7];
  v7 = v5[8];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
  v13[0] = a1;
  v13[1] = a2;
  v8 = v5[6];
  v9 = v5[2];
  v10 = v5[3];
  v11 = *(v7 + 16);

  v11(v13, v8, v9, v10, v6, v7);

  return sub_1D8D64450(v13);
}

void sub_1D9126E78(uint64_t a1)
{
  v3 = sub_1D9176E3C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 != 1)
    {
      return;
    }

    v7 = 128;
  }

  else
  {
    v7 = 120;
  }

  v8 = *(v1 + v7);

  sub_1D9176E2C();
  sub_1D9176CCC();
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  v12 = v8[7];
  v11 = v8[8];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7E0, &qword_1D91A3E10);
  v13 = v10;
  v14 = 0;
  (*(v11 + 16))(&v13, v8[6], v8[2], v8[3], v12, v11);

  sub_1D8D64450(&v13);
}

uint64_t sub_1D9126FDC(uint64_t result)
{
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v2 = 128;
  }

  else
  {
    v2 = 120;
  }

  v3 = *(v1 + v2);
  v4 = v3[7];
  v5 = v3[8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7E0, &qword_1D91A3E10);
  v10 = 0;
  v11 = 1;
  v6 = v3[6];
  v7 = v3[2];
  v8 = v3[3];
  v9 = *(v5 + 16);

  v9(&v10, v6, v7, v8, v4, v5);

  return sub_1D8D64450(&v10);
}

uint64_t sub_1D91270A8()
{

  return v0;
}

uint64_t sub_1D9127138()
{
  sub_1D91270A8();

  return swift_deallocClassInstance();
}

uint64_t sub_1D912716C()
{

  v0 = sub_1D90F6D4C();

  return v0 & 1;
}

uint64_t sub_1D91271D0()
{

  v0 = sub_1D90F6D4C();

  return v0 & 1;
}

uint64_t sub_1D9127234()
{

  v0 = sub_1D90F6D4C();

  return v0 & 1;
}

uint64_t sub_1D9127298(unint64_t a1)
{
  if (a1 > 1)
  {
    return 0;
  }

  v1 = sub_1D90F6D4C();

  return v1 & 1;
}

uint64_t sub_1D9127364(unint64_t a1)
{
  if (a1 > 1)
  {
    return 0;
  }

  v1 = sub_1D90F6D4C();

  return v1 & 1;
}

id sub_1D91273E8()
{
  v0 = [objc_opt_self() _applePodcastsFoundationSettingsUserDefaults];
  if (qword_1ECAB0118 != -1)
  {
    swift_once();
  }

  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_1D9127498(char a1)
{
  v2 = [objc_opt_self() _applePodcastsFoundationSettingsUserDefaults];
  if (qword_1ECAB0118 != -1)
  {
    swift_once();
  }

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v2 setBool:a1 & 1 forKey:v3];
}

uint64_t sub_1D9127558()
{

  v0 = sub_1D90F6DE4();

  return v0;
}

uint64_t sub_1D91275D0()
{

  v0 = sub_1D8D0ED94();

  return v0;
}

uint64_t sub_1D912764C()
{

  v0 = sub_1D8D0ED94();

  return v0;
}

uint64_t sub_1D91276C0()
{

  v0 = sub_1D90F6DE4();

  return v0;
}

uint64_t sub_1D9127738(unint64_t a1)
{
  if (a1 > 1)
  {
    return 0;
  }

  v1 = sub_1D90F6DE4();

  return v1;
}

uint64_t sub_1D91277F8()
{
  v0 = [objc_opt_self() isPodcastsApp];
  v1 = objc_opt_self();
  if (v0)
  {
    v2 = [v1 standardUserDefaults];
  }

  else
  {
    v2 = [v1 _applePodcastsFoundationSharedUserDefaults];
  }

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v4 = [v2 stringForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1D917820C();

  return v5;
}

void sub_1D912791C(uint64_t a1, uint64_t a2)
{
  if ([objc_opt_self() isPodcastsApp])
  {
    v3 = [objc_opt_self() standardUserDefaults];
    if (a2)
    {
      v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    }

    else
    {
      v4 = 0;
    }

    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v3 setObject:v4 forKey:v5];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1D9127A54()
{
  result = sub_1D917820C();
  qword_1ECAB0120 = result;
  *algn_1ECAB0128 = v1;
  return result;
}

uint64_t sub_1D9127CEC()
{
  sub_1D917946C();

  result = MEMORY[0x1DA7298F0](0xD000000000000011, 0x80000001D91D8060);
  qword_1ECAAFFD8 = 0xD000000000000033;
  qword_1ECAAFFE0 = 0x80000001D91D7E30;
  return result;
}

uint64_t sub_1D9127DC4()
{
  sub_1D917946C();

  result = MEMORY[0x1DA7298F0](0xD000000000000011, 0x80000001D91D8060);
  qword_1ECAAFFF0 = 0xD000000000000033;
  *algn_1ECAAFFF8 = 0x80000001D91D7E70;
  return result;
}

uint64_t sub_1D9127ECC()
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](0x706F505F73706954, 0xEC0000007265766FLL);
  result = MEMORY[0x1DA7298F0](0xD000000000000012, 0x80000001D91D8040);
  qword_1ECAB0008 = 0x5F6775626544;
  qword_1ECAB0010 = 0xE600000000000000;
  return result;
}

uint64_t sub_1D9127FDC(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  if (qword_1ECAB0030 != -1)
  {
    swift_once();
  }

  v8 = qword_1ECAB0038;
  v9 = qword_1ECAB0040;

  result = MEMORY[0x1DA7298F0](a2, 0xEA00000000006465);
  *a3 = v8;
  *a4 = v9;
  return result;
}

uint64_t sub_1D9128150(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = MEMORY[0x1DA7298F0](a2, 0xEA00000000006465);
  *a3 = 0xD000000000000014;
  *a4 = 0x80000001D91D8000;
  return result;
}

uint64_t sub_1D91281E8()
{
  result = MEMORY[0x1DA7298F0](0x7373696D7369645FLL, 0xEA00000000006465);
  qword_1ECAB00A0 = 0xD000000000000017;
  *algn_1ECAB00A8 = 0x80000001D91D7FE0;
  return result;
}

void *WrappedUserDefaults.__allocating_init<A>(defaultValue:key:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1D9128B2C(a1, a2, a3, a4, &qword_1ECAB4EA0, &qword_1D918DB70, &type metadata for Int64Transform, &off_1F5485EB0);
}

{
  return sub_1D9128B2C(a1, a2, a3, a4, &qword_1ECABAD30, &qword_1D91BA5E0, &type metadata for IntegerTransform, &off_1F5485E50);
}

uint64_t sub_1D91283F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = v4[10];
  v6 = sub_1D91791BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v18 - v12;
  (*(*&v2[v4[14] + 8] + 8))(v18, *&v2[v4[13]], *(v2 + 2), *(v2 + 3), v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB57F0, &unk_1D9190AA0);
  v14 = swift_dynamicCast();
  v15 = *(v5 - 8);
  (*(v15 + 56))(v13, v14 ^ 1u, 1, v5);
  (*(v7 + 16))(v9, v13, v6);
  v16 = *(v15 + 48);
  if (v16(v9, 1, v5) == 1)
  {
    (*(v15 + 16))(a1, &v2[*(*v2 + 96)], v5);
    if (v16(v9, 1, v5) != 1)
    {
      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    (*(v15 + 32))(a1, v9, v5);
  }

  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_1D91286B4(uint64_t a1)
{
  v3 = *v1;
  sub_1D9129740(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*sub_1D9128730(void *a1))(uint64_t a1, char a2)
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
  sub_1D91283F8(v9);
  return sub_1D9128844;
}

void sub_1D9128844(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1D9129740(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1D9129740(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t *WrappedUserDefaults.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

uint64_t WrappedUserDefaults.__deallocating_deinit()
{
  WrappedUserDefaults.deinit();

  return swift_deallocClassInstance();
}

uint64_t WrappedUserDefaults.__allocating_init<A>(defaultValue:key:store:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD00, &qword_1D91BA5D0);
  result = swift_allocObject();
  *(result + 32) = a1;
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 40) = a4;
  *(result + 48) = &type metadata for BoolTransform;
  *(result + 56) = &off_1F5485E80;
  return result;
}

void *WrappedUserDefaults.__allocating_init<A>(defaultValue:key:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD28, &qword_1D91BA5D8);
  result = swift_allocObject();
  result[4] = a1;
  result[5] = a2;
  result[2] = a3;
  result[3] = a4;
  result[6] = a5;
  result[7] = &type metadata for StringTransform;
  result[8] = &off_1F5485E68;
  return result;
}

void *sub_1D9128B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a1;
  result[5] = a4;
  result[6] = a7;
  result[7] = a8;
  return result;
}

char *WrappedUserDefaults.__allocating_init<A>(defaultValue:key:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD38, qword_1D91BA5E8);
  v8 = swift_allocObject();
  v9 = *(*v8 + 96);
  v10 = sub_1D9176C2C();
  (*(*(v10 - 8) + 32))(&v8[v9], a1, v10);
  *(v8 + 2) = a2;
  *(v8 + 3) = a3;
  *&v8[*(*v8 + 104)] = a4;
  v11 = &v8[*(*v8 + 112)];
  *v11 = &type metadata for URLTransform;
  *(v11 + 1) = &off_1F5485E38;
  return v8;
}

uint64_t WrappedUserDefaults.__allocating_init<A>(defaultValue:key:store:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA7A0, qword_1D91B7610);
  result = swift_allocObject();
  *(result + 32) = a4;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 40) = a3;
  *(result + 48) = &type metadata for DoubleTransform;
  *(result + 56) = &off_1F5485E98;
  return result;
}

void sub_1D9128D0C(void *a1@<X0>, uint64_t a4@<X8>)
{
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  LOBYTE(a1) = [a1 BOOLForKey_];

  *(a4 + 24) = MEMORY[0x1E69E6370];
  *a4 = a1;
}

void sub_1D9128D98(void *a1@<X0>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v9 = [a1 integerForKey_];

  a5[3] = a4;
  *a5 = v9;
}

uint64_t sub_1D9128E00@<X0>(void *a1@<X0>, uint64_t a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v13 = [a1 URLForKey_];

  if (v13)
  {
    sub_1D9176B9C();

    v14 = sub_1D9176C2C();
    (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  }

  else
  {
    v14 = sub_1D9176C2C();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  sub_1D8D5DE80(v8, v11);
  sub_1D9176C2C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v11, 1, v14) == 1)
  {
    result = sub_1D8D08A50(v11, &unk_1ECAB5910, &qword_1D9188C90);
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    *(a4 + 24) = v14;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
    return (*(v15 + 32))(boxed_opaque_existential_0, v11, v14);
  }

  return result;
}

void sub_1D912902C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17[-v7];
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D8FE89F4(a1, v17);
  if (v18)
  {
    v13 = swift_dynamicCast();
    (*(v10 + 56))(v8, v13 ^ 1u, 1, v9);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v12, v8, v9);
      v14 = sub_1D9176B1C();
      v15 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      [a2 setURL:v14 forKey:v15];

      (*(v10 + 8))(v12, v9);
      return;
    }
  }

  else
  {
    sub_1D8D08A50(v17, &qword_1ECAB57F0, &unk_1D9190AA0);
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  sub_1D8D08A50(v8, &unk_1ECAB5910, &qword_1D9188C90);
  v16 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [a2 removeObjectForKey_];
}

void sub_1D91292AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1D8FE89F4(a1, v7);
  if (!v8)
  {
    sub_1D8D08A50(v7, &qword_1ECAB57F0, &unk_1D9190AA0);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [a2 removeObjectForKey_];
    goto LABEL_6;
  }

  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [a2 setBool:v6 forKey:v5];
LABEL_6:
}

void sub_1D912938C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1D8FE89F4(a1, v7);
  if (!v8)
  {
    sub_1D8D08A50(v7, &qword_1ECAB57F0, &unk_1D9190AA0);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [a2 removeObjectForKey_];
    goto LABEL_6;
  }

  v5 = sub_1D9179D9C();
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [a2 setObject:v5 forKey:v6];

LABEL_6:
}

void sub_1D9129478(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1D8FE89F4(a1, v7);
  if (!v8)
  {
    sub_1D8D08A50(v7, &qword_1ECAB57F0, &unk_1D9190AA0);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [a2 removeObjectForKey_];
    goto LABEL_6;
  }

  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [a2 setDouble:v5 forKey:v6];
LABEL_6:
}

void sub_1D9129560(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1D8FE89F4(a1, v7);
  if (!v8)
  {
    sub_1D8D08A50(v7, &qword_1ECAB57F0, &unk_1D9190AA0);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [a2 removeObjectForKey_];
    goto LABEL_6;
  }

  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [a2 setObject:v5 forKey:v6];

LABEL_6:
}

void sub_1D9129660(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1D8FE89F4(a1, v7);
  if (!v8)
  {
    sub_1D8D08A50(v7, &qword_1ECAB57F0, &unk_1D9190AA0);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [a2 removeObjectForKey_];
    goto LABEL_6;
  }

  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [a2 setInteger:v6 forKey:v5];
LABEL_6:
}

uint64_t sub_1D9129740(uint64_t a1)
{
  v3 = (v1 + *(*v1 + 112));
  v4 = *v3;
  v5 = v3[1];
  v10 = *(*v1 + 80);
  v6 = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, a1, v6);
  (*(v5 + 16))(v9, *(v1 + *(*v1 + 104)), v1[2], v1[3], v4, v5);
  return sub_1D8D08A50(v9, &qword_1ECAB57F0, &unk_1D9190AA0);
}

unint64_t get_enum_tag_for_layout_string_18PodcastsFoundation25AlignmentCoordinatorErrorO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1D9129940(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D912999C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1D91299FC(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t dispatch thunk of AlignmentCoordinator.fetchPlayerTimestamp(for:)(uint64_t a1, uint64_t a2, double a3)
{
  v10 = (*(a2 + 16) + **(a2 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D9129B88;
  v8.n128_f64[0] = a3;

  return v10(a1, a2, v8);
}

uint64_t sub_1D9129B88(double a1)
{
  v6 = *v1;

  v3 = *(v6 + 8);
  v4.n128_f64[0] = a1;

  return v3(v4);
}

uint64_t dispatch thunk of ScoutingAligner.align(at:within:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v16 = (*(a2 + 8) + **(a2 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D9129B88;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v16(a1, a2, v12, v13, v14);
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation22TimelineAlignmentErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9129E38(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

void AlignmentRequest.init(url:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v17 = 0x80000001D91CCA60;
  v4 = 0;
  v18 = URL.md5()();
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v6 = &v17 + 2 * v4;
  while (++v4 != 3)
  {
    v7 = v6 + 2;
    v8 = *v6;
    v6 += 2;
    if (v8)
    {
      v9 = *(v7 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1D8D4241C(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_1D8D4241C((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v9;
      *(v12 + 5) = v8;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  sub_1D8D72B0C();
  v13 = sub_1D917817C();
  v15 = v14;
  v16 = sub_1D9176C2C();
  (*(*(v16 - 8) + 8))(a1, v16);

  *a2 = v13;
  a2[1] = v15;
}

uint64_t AlignmentRequest.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AlignmentRequest.inMemorySize.getter()
{
  result = sub_1D8E62904(*v0, v0[1]);
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 32;
    do
    {
      v5 = *(result + v4);
      v6 = __OFADD__(v3, v5);
      v3 += v5;
      if (v6)
      {
        __break(1u);
        return result;
      }

      v4 += 8;
      --v2;
    }

    while (v2);

    if ((v3 & 0x8000000000000000) == 0)
    {
      return v3;
    }

    __break(1u);
  }

  return 0;
}

uint64_t AlignmentRequest.encode(_:)(uint64_t a1)
{
  sub_1D91769EC();
  swift_allocObject();
  sub_1D91769DC();
  type metadata accessor for AssetReaderTimelineAlignment(0);
  sub_1D912A4C4(&qword_1ECABAD40, &protocol conformance descriptor for AssetReaderTimelineAlignment);
  v1 = sub_1D91769CC();

  return v1;
}

uint64_t AlignmentRequest.decode(_:)(uint64_t a1, uint64_t a2)
{
  sub_1D91769AC();
  swift_allocObject();
  sub_1D917699C();
  type metadata accessor for AssetReaderTimelineAlignment(0);
  sub_1D912A4C4(&qword_1ECABAD48, &protocol conformance descriptor for AssetReaderTimelineAlignment);
  sub_1D917698C();

  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1D912A340(uint64_t *a1)
{
  sub_1D91769EC();
  swift_allocObject();
  sub_1D91769DC();
  type metadata accessor for AssetReaderTimelineAlignment(0);
  sub_1D912A4C4(&qword_1ECABAD40, &protocol conformance descriptor for AssetReaderTimelineAlignment);
  v1 = sub_1D91769CC();

  return v1;
}

uint64_t sub_1D912A3F8@<X0>(void *a3@<X8>)
{
  sub_1D91769AC();
  swift_allocObject();
  sub_1D917699C();
  type metadata accessor for AssetReaderTimelineAlignment(0);
  sub_1D912A4C4(&qword_1ECABAD48, &protocol conformance descriptor for AssetReaderTimelineAlignment);
  sub_1D917698C();

  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1D912A4C4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AssetReaderTimelineAlignment(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_1D912A50C(_BYTE *result)
{
  if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

_BYTE *sub_1D912A520(_BYTE *result)
{
  if (!*result)
  {
    *result = 1;
  }

  return result;
}

_BYTE *sub_1D912A538(_BYTE *result)
{
  if (*result <= 1u)
  {
    *result = 2;
  }

  return result;
}

uint64_t sub_1D912A550(void *a1, _OWORD *a2)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD60, &qword_1D91BAB50);
  v33 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD68, &qword_1D91BAB58);
  v7 = *(v6 - 8);
  v31 = v6;
  v32 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD70, &qword_1D91BAB60);
  v39 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v34 = &v30 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD78, &qword_1D91BAB68);
  v12 = *(v11 - 8);
  v37 = v11;
  v38 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v30 - v13;
  *(swift_allocObject() + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD80, &qword_1D91BAB70);
  swift_allocObject();
  v14 = a1;
  v40 = sub_1D9177A5C();
  sub_1D8CF2154(0, &qword_1ECABAD88, 0x1E6987E80);
  sub_1D8CF48EC(&qword_1ECABAD90, &qword_1ECABAD80, &qword_1D91BAB70, MEMORY[0x1E695C038]);
  sub_1D9177B2C();

  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = a2[1];
  *(v15 + 24) = *a2;
  *(v15 + 40) = v16;
  *(v15 + 56) = a2[2];
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD98, &qword_1D91BAB78);
  sub_1D8CF48EC(&qword_1ECABADA0, &qword_1ECABAD60, &qword_1D91BAB50, MEMORY[0x1E695BC80]);
  v18 = v30;
  sub_1D9177C6C();

  (*(v33 + 8))(v5, v18);
  sub_1D8CF48EC(&qword_1ECABADA8, &qword_1ECABAD68, &qword_1D91BAB58, MEMORY[0x1E695BE28]);
  v19 = v31;
  v20 = sub_1D9177B1C();
  v33 = v20;
  (*(v32 + 8))(v9, v19);
  v40 = v20;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1D912D20C;
  *(v22 + 24) = v21;
  v32 = sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABADB0, &qword_1D91BAB80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABADB8, &qword_1D91BAB88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABADC0, &qword_1D91BAB90);
  sub_1D8CF48EC(&qword_1ECABADC8, &qword_1ECABADB0, &qword_1D91BAB80, MEMORY[0x1E695BED8]);
  v23 = MEMORY[0x1E695BCC0];
  sub_1D8CF48EC(&qword_1ECABADD0, &qword_1ECABADC0, &qword_1D91BAB90, MEMORY[0x1E695BCC0]);
  v24 = v34;
  sub_1D9177CBC();

  sub_1D8CF48EC(&qword_1ECABADD8, &qword_1ECABAD70, &qword_1D91BAB60, MEMORY[0x1E695BE40]);
  swift_retain_n();
  v25 = v36;
  v26 = v35;
  sub_1D9177B3C();

  (*(v39 + 8))(v24, v25);
  sub_1D8CF48EC(&qword_1ECABADE0, &qword_1ECABAD78, &qword_1D91BAB68, v23);
  v27 = v37;
  v28 = sub_1D9177B1C();
  (*(v38 + 8))(v26, v27);
  return v28;
}

uint64_t sub_1D912AC58(void *a1, void *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABADE8, &qword_1D91BAB98);
  swift_allocObject();
  v10 = sub_1D91778DC();
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = v10;
  sub_1D8CF48EC(&qword_1ECABADF0, &qword_1ECABADE8, &qword_1D91BAB98, MEMORY[0x1E695BF88]);

  v7 = a1;
  v8 = a2;

  sub_1D9177B3C();
}

uint64_t sub_1D912ADA0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D912AE1C(a3, a4, a5);
  }

  return result;
}

uint64_t sub_1D912AE1C(void *a1, void *a2, uint64_t a3)
{
  v25 = sub_1D9177E0C();
  v27 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D9177E9C();
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 16);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  v15 = *(v11 + 24);
  v14 = *(v11 + 32);
  *(v11 + 24) = sub_1D912D260;
  *(v11 + 32) = v13;

  v16 = a1;
  v17 = a2;

  sub_1D8D15664(v15, v14);

  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v3;
  aBlock[4] = sub_1D912D26C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_95;
  v19 = _Block_copy(aBlock);
  v20 = v16;

  sub_1D9177E4C();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBF58(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  v21 = v25;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v10, v8, v19);
  _Block_release(v19);
  (*(v27 + 8))(v8, v21);
  (*(v24 + 8))(v10, v26);
}

void sub_1D912B18C(uint64_t a1, void *a2)
{
  v3 = a2[2];
  os_unfair_lock_lock((v3 + 20));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = 0;
  os_unfair_lock_unlock((v3 + 20));
  v5 = a2[3];
  if (v5)
  {
    v6 = a2[4];

    os_unfair_lock_lock((v3 + 20));
    v7 = *(v3 + 16);
    os_unfair_lock_unlock((v3 + 20));
    v5(v4, v7);

    sub_1D8D15664(v5, v6);
  }
}

void sub_1D912B24C(void *a1)
{
  v2 = a1[2];
  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  os_unfair_lock_lock((v2 + 20));
  *(v2 + 16) = 2;
  os_unfair_lock_unlock((v2 + 20));
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[4];

    os_unfair_lock_lock((v2 + 20));
    v6 = *(v2 + 16);
    os_unfair_lock_unlock((v2 + 20));
    v4(v3, v6);

    sub_1D8D15664(v4, v5);
  }
}

uint64_t sub_1D912B310(uint64_t result, char a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  if (result != 1 && a2 == 1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1D912B3A4(a4, a5, a6);
    }
  }

  return result;
}

uint64_t sub_1D912B3A4(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D9177E0C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D9177E9C();
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v4 + 24);
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_1D912D484;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_35_2;
  v16 = _Block_copy(aBlock);

  v17 = a1;
  v18 = a2;

  sub_1D9177E4C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBF58(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v14, v11, v16);
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v21);
}

void sub_1D912B694(void *a1, uint64_t a2)
{
  if ([a1 status] != 1)
  {
    sub_1D9178CCC();
    v3 = *(a2 + 16);
    v4 = v3[2];
    os_unfair_lock_lock((v4 + 20));
    v5 = *(v4 + 16);
    os_unfair_lock_unlock((v4 + 20));
    os_unfair_lock_lock((v4 + 20));
    *(v4 + 16) = 1;
    os_unfair_lock_unlock((v4 + 20));
    v6 = v3[3];
    if (v6)
    {
      v7 = v3[4];

      os_unfair_lock_lock((v4 + 20));
      v8 = *(v4 + 16);
      os_unfair_lock_unlock((v4 + 20));
      v6(v5, v8);

      sub_1D8D15664(v6, v7);
    }
  }
}

void sub_1D912B794(uint64_t a1, id a2, void *a3, uint64_t a4)
{
  v76 = a3;
  v77 = a4;
  v6 = sub_1D9178D4C();
  v7 = *(v6 - 8);
  v74 = v6;
  v75 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  v9 = *(a1 + 16);
  v10 = v9[2];
  os_unfair_lock_lock((v10 + 20));
  v11 = *(v10 + 16);
  os_unfair_lock_unlock((v10 + 20));
  v12 = &selRef_redirectURLForStoreCollectionId_;
  if (v11 == 1)
  {
    v13 = 0;
    v69 = *MEMORY[0x1E695E480];
    v70 = (v75 + 8);
    v68 = xmmword_1D9189080;
    v71 = v9;
    v72 = a2;
    do
    {
      if ([a2 v12[440]] != 1)
      {
        break;
      }

      v14 = [v76 copyNextSampleBuffer];
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v16 = objc_autoreleasePoolPush();
      if (qword_1ECAB3730 != -1)
      {
        swift_once();
      }

      v17 = qword_1ECABAD50;
      if (qword_1ECABAD50)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAE00, &qword_1D91BABA0);
        v18 = swift_allocObject();
        *(v18 + 16) = v68;
        v19 = v17;
        sub_1D9178D3C();
        *&v78 = v18;
        sub_1D8CFBF58(&qword_1ECABAE08, MEMORY[0x1E69E7ED0], MEMORY[0x1E69E7ED8]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAE10, &qword_1D91BABA8);
        sub_1D8CF48EC(&qword_1ECABAE18, &qword_1ECABAE10, &qword_1D91BABA8, MEMORY[0x1E69E6328]);
        v20 = v74;
        v21 = v73;
        v22 = sub_1D91792CC();
        MEMORY[0x1EEE9AC00](v22);
        *(&v57 - 2) = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAE20, &unk_1D91BABB0);
        sub_1D9178D2C();
        if (v13)
        {

          (*v70)(v21, v20);
          v13 = 0;
        }

        else
        {
          (*v70)(v21, v20);
          if (v82)
          {
            v65 = v82;
            [v82 setFrameLength_];
            CMSampleBufferGetPresentationTimeStamp(&v82, v15);
            v27 = v82;
            v63 = v82;
            v64 = 0;
            v28 = DWORD2(v82);
            v29 = HIDWORD(v82);
            v61 = HIDWORD(v82);
            v62 = DWORD2(v82);
            v30 = v83;
            v60 = v83;
            CMSampleBufferGetDuration(&v82, v15);
            v66 = v16;
            v31 = v82;
            v33 = DWORD2(v82);
            v32 = HIDWORD(v82);
            v59 = HIDWORD(v82);
            v58 = v83;

            v87 = v27;
            v88 = v28;
            v89 = v29;
            v90 = v30;
            v91 = v31;
            v92 = v33;
            v93 = v32;
            v34 = v58;
            v94 = v58;
            sub_1D9178C6C();
            a2 = v72;
            [v72 timeRange];
            sub_1D9178C6C();
            v13 = v64;
            sub_1D9178C7C();
            v35 = v86[1];
            v36 = v86[2];
            v37 = v67;
            *(v67 + 32) = v86[0];
            *(v37 + 48) = v35;
            *(v37 + 64) = v36;
            *(v37 + 80) = 0;
            *&v78 = v65;
            *(&v78 + 1) = v63;
            *&v79 = __PAIR64__(v61, v62);
            *(&v79 + 1) = v60;
            *&v80 = v31;
            v16 = v66;
            *(&v80 + 1) = __PAIR64__(v59, v33);
            v81 = v34;
            v38 = v65;
            sub_1D91778BC();

            v82 = v78;
            v83 = v79;
            v84 = v80;
            v85 = v81;
            sub_1D8D08A50(&v82, &qword_1ECABADB8, &qword_1D91BAB88);
            v9 = v71;
            v12 = &selRef_redirectURLForStoreCollectionId_;
            goto LABEL_12;
          }
        }

        v9 = v71;
        a2 = v72;
        v12 = &selRef_redirectURLForStoreCollectionId_;
      }

      [a2 cancelReading];
      sub_1D912D490();
      v23 = swift_allocError();
      *v24 = 0;
      *(v24 + 8) = 2;
      *&v82 = v23;
      sub_1D91778AC();

LABEL_12:
      objc_autoreleasePoolPop(v16);

      v25 = v9[2];
      os_unfair_lock_lock((v25 + 20));
      v26 = *(v25 + 16);
      os_unfair_lock_unlock((v25 + 20));
    }

    while (v26 == 1);
  }

  v39 = v9[2];
  os_unfair_lock_lock((v39 + 20));
  v40 = *(v39 + 16);
  os_unfair_lock_unlock((v39 + 20));
  if (v40 == 2)
  {
    [a2 cancelReading];
  }

  if ([a2 v12[440]] == 2)
  {
    v41 = v9[2];
    os_unfair_lock_lock((v41 + 20));
    v42 = *(v41 + 16);
    os_unfair_lock_unlock((v41 + 20));
    os_unfair_lock_lock((v41 + 20));
    *(v41 + 16) = 3;
    os_unfair_lock_unlock((v41 + 20));
    v43 = v9[3];
    if (v43)
    {
      v44 = v9[4];

      os_unfair_lock_lock((v41 + 20));
      v45 = *(v41 + 16);
      os_unfair_lock_unlock((v41 + 20));
      v43(v42, v45);
      sub_1D8D15664(v43, v44);
    }

    *&v82 = 0;
    sub_1D91778AC();
  }

  else
  {
    if ([a2 v12[440]] == 3)
    {
      v46 = [a2 error];
      if (v46)
      {
        *&v82 = v46;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
        sub_1D8CF2154(0, &qword_1ECAAFC88, 0x1E696ABC0);
        if (swift_dynamicCast())
        {
          v47 = v78;
          v48 = [v78 code];

          if (v48 == -11847)
          {
            v49 = [a2 asset];
            sub_1D912BF58(v49, v77);

            return;
          }
        }
      }

      v56 = [a2 error];
      sub_1D912D490();
      v52 = swift_allocError();
      v54 = v52;
      *v53 = v56;
      v55 = 1;
    }

    else
    {
      v50 = v9[2];
      os_unfair_lock_lock((v50 + 20));
      v51 = *(v50 + 16);
      os_unfair_lock_unlock((v50 + 20));
      if (!v51)
      {
        return;
      }

      sub_1D912D490();
      v52 = swift_allocError();
      v54 = v52;
      *v53 = 1;
      v55 = 2;
    }

    *(v53 + 8) = v55;
    *&v82 = v52;
    sub_1D91778AC();
  }
}

uint64_t sub_1D912BF58(void *a1, uint64_t a2)
{
  v3 = v2;
  v60 = a2;
  v5 = *v2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD60, &qword_1D91BAB50);
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v7 = &v48 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD68, &qword_1D91BAB58);
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v54 = &v48 - v8;
  if (qword_1ECAB0CA0 != -1)
  {
    swift_once();
  }

  v9 = sub_1D917744C();
  __swift_project_value_buffer(v9, qword_1ECAB0CA8);
  v10 = sub_1D917741C();
  v11 = sub_1D9178D1C();
  v12 = os_log_type_enabled(v10, v11);
  v59 = v5;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v61 = v14;
    *v13 = 136315138;
    v15 = sub_1D9179FEC();
    v17 = sub_1D8CFA924(v15, v16, &v61);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1D8CEC000, v10, v11, "[%s]: Reader was invalidated. Attempting to rebuild the asset reader.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1DA72CB90](v14, -1, -1);
    MEMORY[0x1DA72CB90](v13, -1, -1);
  }

  v18 = v3[2];
  v19 = v18[2];
  os_unfair_lock_lock((v19 + 20));
  v20 = *(v19 + 16);
  os_unfair_lock_unlock((v19 + 20));
  os_unfair_lock_lock((v19 + 20));
  *(v19 + 16) = 0;
  os_unfair_lock_unlock((v19 + 20));
  v21 = v18[3];
  if (v21)
  {
    v22 = v18[4];

    os_unfair_lock_lock((v19 + 20));
    v23 = *(v19 + 16);
    os_unfair_lock_unlock((v19 + 20));
    v21(v20, v23);
    sub_1D8D15664(v21, v22);
  }

  if (v3[10])
  {
    v24 = MEMORY[0x1E6960CA8];
    v25 = (MEMORY[0x1E6960CA8] + 40);
    v26 = (MEMORY[0x1E6960CA8] + 32);
    v27 = (MEMORY[0x1E6960CA8] + 24);
    v28 = (MEMORY[0x1E6960CA8] + 16);
    v29 = (MEMORY[0x1E6960CA8] + 8);
  }

  else
  {
    v24 = v3 + 4;
    v25 = v3 + 9;
    v26 = v3 + 8;
    v27 = v3 + 7;
    v28 = v3 + 6;
    v29 = v3 + 5;
  }

  v53 = *v25;
  v52 = *v26;
  v30 = *v27;
  v50 = *v28;
  v51 = v30;
  v49 = *v29;
  v31 = *v24;
  *(swift_allocObject() + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD80, &qword_1D91BAB70);
  swift_allocObject();
  v32 = a1;
  v61 = sub_1D9177A5C();
  sub_1D8CF2154(0, &qword_1ECABAD88, 0x1E6987E80);
  sub_1D8CF48EC(&qword_1ECABAD90, &qword_1ECABAD80, &qword_1D91BAB70, MEMORY[0x1E695C038]);
  sub_1D9177B2C();

  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = v31;
  v34 = v50;
  v33[4] = v49;
  v33[5] = v34;
  v35 = v52;
  v33[6] = v51;
  v33[7] = v35;
  v33[8] = v53;
  v36 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD98, &qword_1D91BAB78);
  sub_1D8CF48EC(&qword_1ECABADA0, &qword_1ECABAD60, &qword_1D91BAB50, MEMORY[0x1E695BC80]);
  v37 = v54;
  v38 = v57;
  sub_1D9177C6C();

  (*(v55 + 8))(v7, v38);
  sub_1D8CF48EC(&qword_1ECABADA8, &qword_1ECABAD68, &qword_1D91BAB58, MEMORY[0x1E695BE28]);
  v39 = v58;
  v40 = sub_1D9177B1C();
  (*(v56 + 8))(v37, v39);
  v61 = v40;
  v41 = swift_allocObject();
  v42 = v59;
  *(v41 + 16) = v59;
  v43 = swift_allocObject();
  swift_weakInit();
  v44 = swift_allocObject();
  v44[2] = v43;
  v44[3] = v60;
  v44[4] = v42;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_1D912D54C;
  *(v45 + 24) = v44;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABADB0, &qword_1D91BAB80);
  sub_1D8CF48EC(&qword_1ECABADC8, &qword_1ECABADB0, &qword_1D91BAB80, MEMORY[0x1E695BED8]);
  v46 = sub_1D9177BCC();

  v3[11] = v46;
}

void sub_1D912C65C(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2;
    if (qword_1ECAB0CA0 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1ECAB0CA8);
    v5 = v2;
    v6 = sub_1D917741C();
    v7 = sub_1D9178CFC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v8 = 136315394;
      v11 = sub_1D9179FEC();
      v13 = sub_1D8CFA924(v11, v12, &v16);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2112;
      v14 = v2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v15;
      *v9 = v15;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "[%s]: Failed to rebuild the asset reader with error: %@", v8, 0x16u);
      sub_1D8D08A50(v9, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1DA72CB90](v10, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1D912C860(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ECAB0CA0 != -1)
  {
    swift_once();
  }

  v8 = sub_1D917744C();
  __swift_project_value_buffer(v8, qword_1ECAB0CA8);
  v9 = a1;
  v10 = sub_1D917741C();
  v11 = sub_1D9178D1C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315650;
    v14 = sub_1D9179FEC();
    v16 = sub_1D8CFA924(v14, v15, &v20);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2048;
    [v9 timeRange];
    sub_1D917910C();
    *(v12 + 14) = v17;
    *(v12 + 22) = 2048;
    [v9 timeRange];
    sub_1D917910C();
    *(v12 + 24) = v18;
    _os_log_impl(&dword_1D8CEC000, v10, v11, "[%s]: Resuming asset reader from (start: %f, duration: %f).", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1DA72CB90](v13, -1, -1);
    MEMORY[0x1DA72CB90](v12, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D912AE1C(v9, a2, a4);
  }

  return result;
}

void sub_1D912CA64(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *MEMORY[0x1E69875A0];
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D8D419F0;
  *(v8 + 24) = v6;
  v10[4] = sub_1D912D588;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D912CC64;
  v10[3] = &block_descriptor_68_2;
  v9 = _Block_copy(v10);

  [a3 loadTracksWithMediaType:v7 completionHandler:v9];
  _Block_release(v9);
}

void sub_1D912CB8C(unint64_t a1, void *a2, void (*a3)(void *, uint64_t))
{
  if (a1)
  {
    if (a1 >> 62)
    {
      if (sub_1D917935C())
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      (a3)();
      return;
    }
  }

  sub_1D912D490();
  v5 = swift_allocError();
  *v6 = a2;
  *(v6 + 8) = 0;
  v7 = a2;
  a3(v5, 1);
}

double sub_1D912CC64(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1D8CF2154(0, &qword_1ECABAE28, 0x1E6987EC8);
    v4 = sub_1D91785FC();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

void sub_1D912CD08(void *a2@<X8>)
{
  if (qword_1ECAB3730 != -1)
  {
    swift_once();
  }

  if (qword_1ECABAD50)
  {
    v3 = qword_1ECABAD50;
    v4 = [v3 settings];
    sub_1D917805C();

    v5 = objc_allocWithZone(MEMORY[0x1E6987E80]);
    sub_1D8CF2154(0, &qword_1ECABAE28, 0x1E6987EC8);
    v6 = sub_1D91785DC();
    v7 = sub_1D917802C();

    v8 = [v5 initWithAudioTracks:v6 audioSettings:v7];

    [v8 setAlwaysCopiesSampleData_];
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
}

id sub_1D912CE78@<X0>(void **a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3[1];
  v18 = *a3;
  v19 = v6;
  v20 = a3[2];
  v7 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5C00, &qword_1D91913F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  sub_1D917820C();
  *(&v17[0] + 1) = v9;
  sub_1D91793EC();
  *(inited + 96) = MEMORY[0x1E69E6370];
  *(inited + 72) = 1;
  sub_1D8D653BC(inited);
  swift_setDeallocating();
  sub_1D8D08A50(inited + 32, &unk_1ECAB6C80, &unk_1D91949C0);
  v10 = objc_allocWithZone(MEMORY[0x1E6987E78]);
  v11 = sub_1D917802C();

  *&v17[0] = 0;
  v12 = [v10 initWithAsset:a2 options:v11 error:v17];

  if (v12)
  {
    v13 = *(MEMORY[0x1E6960CA8] + 16);
    v17[3] = *MEMORY[0x1E6960CA8];
    v17[4] = v13;
    v17[5] = *(MEMORY[0x1E6960CA8] + 32);
    v14 = *&v17[0];
    if (sub_1D9178C5C())
    {
      v17[0] = v18;
      v17[1] = v19;
      v17[2] = v20;
      [v12 setTimeRange_];
    }

    [v12 addOutput_];
    *a4 = v12;
    a4[1] = v7;
    return v7;
  }

  else
  {
    v16 = *&v17[0];
    sub_1D9176A6C();

    return swift_willThrow();
  }
}

uint64_t sub_1D912D0AC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D912D118()
{

  sub_1D8D15664(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t sub_1D912D190()
{
  result = qword_1ECABAD58;
  if (!qword_1ECABAD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABAD58);
  }

  return result;
}

id sub_1D912D274()
{
  result = [objc_allocWithZone(MEMORY[0x1E6958418]) initStandardFormatWithSampleRate:1 channels:16000.0];
  qword_1ECABAD50 = result;
  return result;
}

void sub_1D912D2B8(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = sub_1D9177F5C();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = objc_allocWithZone(MEMORY[0x1E6958440]);
  v12[4] = sub_1D912D500;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D912D3E0;
  v12[3] = &block_descriptor_41_4;
  v9 = _Block_copy(v12);
  v10 = a1;

  v11 = [v8 initWithPCMFormat:a2 bufferListNoCopy:v6 deallocator:v9];
  _Block_release(v9);
  *a3 = v11;
}

uint64_t sub_1D912D3E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t objectdestroy_21Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1D912D490()
{
  result = qword_1ECABADF8;
  if (!qword_1ECABADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABADF8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation11AssetReaderC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

char *AssetReaderScoutingAligner.__allocating_init(asset:catalog:logger:)(void *a1, void *a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1D9131A80(a1, a2, a3);

  return v6;
}

char *AssetReaderScoutingAligner.init(asset:catalog:logger:)(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_1D9131A80(a1, a2, a3);

  return v5;
}

uint64_t sub_1D912D688(double a1, double a2, double a3)
{
  *(v4 + 40) = v3;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = sub_1D917734C();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D912D75C, 0, 0);
}

uint64_t sub_1D912D75C()
{
  if (qword_1ECAB3558 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917739C();
  __swift_project_value_buffer(v1, qword_1ECAB78E8);
  sub_1D917737C();
  sub_1D917731C();
  v2 = sub_1D917737C();
  v3 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v2, v3, v5, "ScoutingAlignment", "", v4, 2u);
    MEMORY[0x1DA72CB90](v4, -1, -1);
  }

  v6 = *(v0 + 8);
  v7 = *(v0 + 9);
  v8 = *(v0 + 6);
  v9 = *(v0 + 7);

  (*(v9 + 16))(v6, v7, v8);
  sub_1D91773FC();
  swift_allocObject();
  *(v0 + 10) = sub_1D91773EC();
  (*(v9 + 8))(v7, v8);
  v10 = swift_task_alloc();
  *(v0 + 11) = v10;
  *v10 = v0;
  v10[1] = sub_1D912D944;
  v11 = v0[3];
  v12 = v0[4];
  v13 = v0[2];

  return sub_1D912DB94(v13, v11, v12);
}

uint64_t sub_1D912D944(double a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_1D912DB00;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_1D912DA68;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D912DA68()
{
  sub_1D91317F0(v0[10], "ScoutingAlignment");

  v1 = v0[1];
  v2.n128_u64[0] = v0[13];

  return v1(v2);
}

uint64_t sub_1D912DB00()
{
  sub_1D91317F0(*(v0 + 80), "ScoutingAlignment");

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D912DB94(double a1, double a2, double a3)
{
  *(v4 + 112) = v3;
  *(v4 + 96) = a2;
  *(v4 + 104) = a3;
  *(v4 + 88) = a1;
  v5 = sub_1D91773AC();
  *(v4 + 120) = v5;
  *(v4 + 128) = *(v5 - 8);
  *(v4 + 136) = swift_task_alloc();
  v6 = sub_1D917734C();
  *(v4 + 144) = v6;
  *(v4 + 152) = *(v6 - 8);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D912DD08, 0, 0);
}

uint64_t sub_1D912DD08(uint64_t a1)
{
  v55 = v1;
  v54[10] = *MEMORY[0x1E69E9840];
  *(v1 + 192) = OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderScoutingAligner_logger;
  v2 = sub_1D917741C();
  v3 = sub_1D9178D1C();
  v4 = &off_1D9187000;
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v1 + 88);
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v5;
    _os_log_impl(&dword_1D8CEC000, v2, v3, "Scouting: Beginning with initial guess for %f", v6, 0xCu);
    MEMORY[0x1DA72CB90](v6, -1, -1);
  }

  if (qword_1ECAB3558 != -1)
  {
LABEL_43:
    swift_once();
  }

  v7 = sub_1D917739C();
  *(v1 + 200) = __swift_project_value_buffer(v7, qword_1ECAB78E8);
  sub_1D917737C();
  sub_1D917731C();
  v8 = sub_1D917737C();
  v9 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v8, v9, v11, "ScoutingAlignmentResolve", "", v10, 2u);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  v12 = *(v1 + 176);
  v13 = *(v1 + 184);
  v14 = *(v1 + 144);
  v15 = *(v1 + 152);
  v16 = *(v1 + 88);

  v17 = *(v15 + 16);
  *(v1 + 208) = v17;
  *(v1 + 216) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v12, v13, v14);
  *(v1 + 224) = sub_1D91773FC();
  swift_allocObject();
  *(v1 + 232) = sub_1D91773EC();
  v18 = *(v15 + 8);
  *(v1 + 240) = v18;
  *(v1 + 248) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v13, v14);
  *(v1 + 64) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6030, &qword_1D9191FE0);
  inited = swift_initStackObject();
  *(v1 + 256) = inited;
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = 0;
  *(inited + 40) = v16;
  v20 = MEMORY[0x1E69E7CD0];
  v21 = MEMORY[0x1E69E93E8];
  *(v1 + 72) = inited;
  *(v1 + 80) = v20;
  *(v1 + 328) = *v21;
  *(v1 + 264) = 0;
  *(v1 + 272) = 0;
  v22 = *(inited + 16);
  if (!v22)
  {
LABEL_37:

    sub_1D9131F00();
    swift_allocError();
    *v51 = 1;
    swift_willThrow();
    sub_1D912F4E0(*(v1 + 88), *(v1 + 112), *(v1 + 232), (v1 + 64));

    v52 = *(v1 + 8);

    return v52();
  }

  v53 = *(v4 + 115);
  v4 = 0xC3E0000000000001;
  while (1)
  {
    *(v1 + 332) = *(inited + 32);
    v24 = *(inited + 40);
    *(v1 + 280) = v24;
    if ((v22 - 1) > *(inited + 24) >> 1)
    {
      inited = sub_1D8ECE180(1, v22, 1, inited);
    }

    *(v1 + 288) = inited;
    v25 = *(inited + 16);
    memmove((inited + 32), (inited + 48), 16 * v25 - 16);
    *(inited + 16) = v25 - 1;
    if (v24 >= *(v1 + 96) && v24 < *(v1 + 104))
    {
      break;
    }

    v27 = sub_1D917741C();
    v28 = sub_1D9178D1C();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_10;
    }

    v23 = swift_slowAlloc();
    *v23 = v53;
    *(v23 + 4) = v24;
    _os_log_impl(&dword_1D8CEC000, v27, v28, "Scouting: Skipping out of bounds %f", v23, 0xCu);
LABEL_9:
    MEMORY[0x1DA72CB90](v23, -1, -1);
LABEL_10:

    v22 = *(inited + 16);
    if (!v22)
    {
      goto LABEL_37;
    }
  }

  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v24 <= -9.22337204e18)
  {
    goto LABEL_41;
  }

  if (v24 >= 9.22337204e18)
  {
    goto LABEL_42;
  }

  v29 = *(v1 + 80);
  if (*(v29 + 16))
  {
    sub_1D9179DBC();
    sub_1D9179FAC();
    v30 = sub_1D9179E1C();
    v31 = -1 << *(v29 + 32);
    v32 = v30 & ~v31;
    if ((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
    {
      v33 = ~v31;
      while ((sub_1D9179F9C() & 1) == 0)
      {
        v32 = (v32 + 1) & v33;
        if (((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v27 = sub_1D917741C();
      v34 = sub_1D9178D1C();
      if (!os_log_type_enabled(v27, v34))
      {
        v4 = 0xC3E0000000000001;
        goto LABEL_10;
      }

      v23 = swift_slowAlloc();
      *v23 = v53;
      *(v23 + 4) = v24;
      _os_log_impl(&dword_1D8CEC000, v27, v34, "Scouting: Skipping already visited position %f", v23, 0xCu);
      v4 = 0xC3E0000000000001;
      goto LABEL_9;
    }
  }

LABEL_30:
  sub_1D8EFBE2C(v54, 1000000000000000000 * v24, ((v24 >> 63) & 0xF21F494C589C0000) + ((v24 * 0xDE0B6B3A7640000uLL) >> 64));
  v35 = sub_1D917741C();
  v36 = sub_1D9178D1C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134218752;
    *(v37 + 4) = 0;
    *(v37 + 12) = 2048;
    *(v37 + 14) = v24;
    *(v37 + 22) = 2048;
    *(v37 + 24) = 0;
    *(v37 + 32) = 2048;
    *(v37 + 34) = 24;
    _os_log_impl(&dword_1D8CEC000, v35, v36, "Scouting: Beginning step %ld, Position: %f, GiveUp: %ld/%ld", v37, 0x2Au);
    MEMORY[0x1DA72CB90](v37, -1, -1);
  }

  sub_1D917737C();
  sub_1D917731C();
  v38 = sub_1D917737C();
  v39 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v38, v39, v41, "ScoutingAlignmentStep", "", v40, 2u);
    MEMORY[0x1DA72CB90](v40, -1, -1);
  }

  v42 = *(v1 + 240);
  v43 = *(v1 + 208);
  v44 = *(v1 + 176);
  v45 = *(v1 + 160);
  v46 = *(v1 + 144);

  v43(v44, v45, v46);
  swift_allocObject();
  v47 = sub_1D91773EC();
  *(v1 + 296) = v47;
  v42(v45, v46);
  *(v1 + 64) = v47;
  v48 = swift_task_alloc();
  *(v1 + 304) = v48;
  *v48 = v1;
  v48[1] = sub_1D912E57C;
  v49 = *(v1 + 88);

  return sub_1D912F98C(v49, v24);
}

uint64_t sub_1D912E57C(uint64_t a1, char a2)
{
  v5 = *v3;
  *(v5 + 312) = a1;
  *(v5 + 320) = v2;

  if (v2)
  {

    v6 = sub_1D912F3D8;
  }

  else
  {
    *(v5 + 333) = a2;
    v6 = sub_1D912E6DC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D912E6DC(uint64_t a1)
{
  v102 = v2;
  v101[10] = *MEMORY[0x1E69E9840];
  if (!*(v2 + 333))
  {

    v12 = sub_1D917741C();
    v13 = sub_1D9178D1C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v2 + 280);
      v15 = *(v2 + 272);
      v16 = *(v2 + 88);
      v17 = swift_slowAlloc();
      *v17 = 134218496;
      *(v17 + 4) = v16;
      *(v17 + 12) = 2048;
      *(v17 + 14) = v14;
      *(v17 + 22) = 2048;
      *(v17 + 24) = v15;
      _os_log_impl(&dword_1D8CEC000, v12, v13, "Scouting: 🎯 Resolved from %f to %f in %ld steps", v17, 0x20u);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }

    v18 = *(v2 + 312);
    v19 = *(v2 + 232);
    v20 = *(v2 + 112);
    v21 = *(v2 + 88);

    sub_1D912F4E0(v21, v20, v19, (v2 + 64));

    v22 = *(v2 + 8);
    v23.n128_u64[0] = v18;
LABEL_68:

    return v22(v23);
  }

  if (*(v2 + 333) != 1)
  {
    v4 = *(v2 + 264);
    v5 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_85;
    }

    v24 = *(v2 + 332);
    v25 = sub_1D917741C();
    v26 = sub_1D9178D1C();
    v27 = os_log_type_enabled(v25, v26);
    if (v24)
    {
      if (v24 == 1)
      {
        if (v27)
        {
          v28 = *(v2 + 280);
          v29 = swift_slowAlloc();
          *v29 = 134217984;
          *(v29 + 4) = v28;
          _os_log_impl(&dword_1D8CEC000, v25, v26, "Scouting: ⬅️ No match found for %f", v29, 0xCu);
          MEMORY[0x1DA72CB90](v29, -1, -1);
        }

        v30 = *(v2 + 288);
        v31 = *(v2 + 280);

        v3 = v31 + -120.0;
        v33 = *(v30 + 16);
        v32 = *(v30 + 24);
        v1 = *(v2 + 288);
        if (v33 >= v32 >> 1)
        {
          v1 = sub_1D8ECE180((v32 > 1), v33 + 1, 1, *(v2 + 288));
        }

        *(v1 + 2) = v33 + 1;
        v34 = &v1[16 * v33];
        v35 = 1;
      }

      else
      {
        if (v27)
        {
          v47 = *(v2 + 280);
          v48 = swift_slowAlloc();
          *v48 = 134217984;
          *(v48 + 4) = v47;
          _os_log_impl(&dword_1D8CEC000, v25, v26, "Scouting: ➡️ No match found for %f", v48, 0xCu);
          MEMORY[0x1DA72CB90](v48, -1, -1);
        }

        v49 = *(v2 + 288);
        v50 = *(v2 + 280);

        v3 = v50 + 120.0;
        v52 = *(v49 + 16);
        v51 = *(v49 + 24);
        v1 = *(v2 + 288);
        if (v52 >= v51 >> 1)
        {
          v1 = sub_1D8ECE180((v51 > 1), v52 + 1, 1, *(v2 + 288));
        }

        *(v1 + 2) = v52 + 1;
        v34 = &v1[16 * v52];
        v35 = 2;
      }
    }

    else
    {
      if (v27)
      {
        v36 = *(v2 + 280);
        v37 = swift_slowAlloc();
        *v37 = 134217984;
        *(v37 + 4) = v36;
        _os_log_impl(&dword_1D8CEC000, v25, v26, "Scouting: ↔️ No match found for %f", v37, 0xCu);
        MEMORY[0x1DA72CB90](v37, -1, -1);
      }

      v38 = *(v2 + 288);
      v39 = *(v2 + 280);

      v40 = v39 + 120.0;
      v42 = *(v38 + 16);
      v41 = *(v38 + 24);
      v43 = v41 >> 1;
      v44 = v42 + 1;
      v1 = *(v2 + 288);
      if (v41 >> 1 <= v42)
      {
        v1 = sub_1D8ECE180((v41 > 1), v42 + 1, 1, *(v2 + 288));
        v41 = *(v1 + 3);
        v43 = v41 >> 1;
      }

      v3 = v39 + -120.0;
      *(v1 + 2) = v44;
      v45 = &v1[16 * v42];
      v45[32] = 2;
      *(v45 + 5) = v40;
      v46 = v42 + 2;
      if (v43 < v46)
      {
        v1 = sub_1D8ECE180((v41 > 1), v46, 1, v1);
      }

      *(v1 + 2) = v46;
      v34 = &v1[16 * v44];
      v35 = 1;
    }

    v34[32] = v35;
    *(v34 + 5) = v3;
    goto LABEL_32;
  }

  v4 = *(v2 + 264);
  v5 = v4 + 4;
  if (__OFADD__(v4, 4))
  {
    goto LABEL_84;
  }

  v3 = *(v2 + 312);
  v6 = sub_1D917741C();
  v7 = sub_1D9178D1C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v2 + 312);
    v9 = *(v2 + 280);
    v10 = swift_slowAlloc();
    *v10 = 134218240;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v8;
    _os_log_impl(&dword_1D8CEC000, v6, v7, "Scouting: 🔎 Refined guess from %f to %f.", v10, 0x16u);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  v11 = *(v2 + 288);

  v4 = *(v11 + 16);
  *(v2 + 72) = v11;
  v1 = *(v2 + 288);
  if (v4 >= *(v11 + 24) >> 1)
  {
    goto LABEL_86;
  }

  while (1)
  {
    sub_1D8F90608(0, 0, 1, 0, v3);
LABEL_32:
    v53 = *(v2 + 272);
    v54 = __OFADD__(v53, 1);
    v4 = v53 + 1;
    if (!v54)
    {
      break;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    v1 = sub_1D8ECE180(1, v4 + 1, 1, v1);
    *(v2 + 72) = v1;
  }

  v55 = *(v2 + 296);
  *(v2 + 264) = v5;
  *(v2 + 272) = v4;
  v56 = *(v1 + 2);
  if (!v56)
  {
LABEL_64:

    if (v5 < 24)
    {
      v79 = 1;
    }

    else
    {
      v79 = 2;
    }

LABEL_67:
    sub_1D9131F00();
    swift_allocError();
    *v80 = v79;
    swift_willThrow();
    sub_1D912F4E0(*(v2 + 88), *(v2 + 112), *(v2 + 232), (v2 + 64));

    v22 = *(v2 + 8);
    goto LABEL_68;
  }

  v99 = v4;
  while (1)
  {
    *(v2 + 332) = v1[32];
    v3 = *(v1 + 5);
    *(v2 + 280) = v3;
    if ((v56 - 1) > *(v1 + 3) >> 1)
    {
      v1 = sub_1D8ECE180(1, v56, 1, v1);
    }

    *(v2 + 288) = v1;
    v58 = *(v1 + 2);
    memmove(v1 + 32, v1 + 48, 16 * v58 - 16);
    *(v1 + 2) = v58 - 1;
    if (v5 > 23)
    {

      v79 = 2;
      goto LABEL_67;
    }

    if (v3 >= *(v2 + 96) && v3 < *(v2 + 104))
    {
      break;
    }

    v60 = sub_1D917741C();
    v61 = sub_1D9178D1C();
    if (!os_log_type_enabled(v60, v61))
    {
      goto LABEL_37;
    }

    v57 = swift_slowAlloc();
    *v57 = 134217984;
    *(v57 + 4) = v3;
    _os_log_impl(&dword_1D8CEC000, v60, v61, "Scouting: Skipping out of bounds %f", v57, 0xCu);
LABEL_36:
    MEMORY[0x1DA72CB90](v57, -1, -1);
LABEL_37:

    v56 = *(v1 + 2);
    if (!v56)
    {
      goto LABEL_64;
    }
  }

  v4 = *&v3 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_81;
  }

  if (v3 <= -9.22337204e18)
  {
    goto LABEL_82;
  }

  if (v3 >= 9.22337204e18)
  {
    goto LABEL_83;
  }

  v100 = v55;
  v62 = v5;
  v63 = *(v2 + 80);
  if (*(v63 + 16))
  {
    sub_1D9179DBC();
    sub_1D9179FAC();
    v64 = sub_1D9179E1C();
    v65 = -1 << *(v63 + 32);
    v66 = v64 & ~v65;
    if ((*(v63 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
    {
      v67 = ~v65;
      while ((sub_1D9179F9C() & 1) == 0)
      {
        v66 = (v66 + 1) & v67;
        if (((*(v63 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      v60 = sub_1D917741C();
      v68 = sub_1D9178D1C();
      if (!os_log_type_enabled(v60, v68))
      {
        v5 = v62;
        v55 = v100;
        goto LABEL_37;
      }

      v57 = swift_slowAlloc();
      *v57 = 134217984;
      *(v57 + 4) = v3;
      _os_log_impl(&dword_1D8CEC000, v60, v68, "Scouting: Skipping already visited position %f", v57, 0xCu);
      v5 = v62;
      v55 = v100;
      goto LABEL_36;
    }
  }

LABEL_58:
  sub_1D8EFBE2C(v101, 1000000000000000000 * v3, ((v3 >> 63) & 0xF21F494C589C0000) + ((v3 * 0xDE0B6B3A7640000uLL) >> 64));
  v69 = sub_1D917741C();
  v70 = sub_1D9178D1C();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 134218752;
    *(v71 + 4) = v99;
    *(v71 + 12) = 2048;
    *(v71 + 14) = v3;
    *(v71 + 22) = 2048;
    *(v71 + 24) = v62;
    *(v71 + 32) = 2048;
    *(v71 + 34) = 24;
    _os_log_impl(&dword_1D8CEC000, v69, v70, "Scouting: Beginning step %ld, Position: %f, GiveUp: %ld/%ld", v71, 0x2Au);
    MEMORY[0x1DA72CB90](v71, -1, -1);
  }

  if (v100)
  {

    v72 = sub_1D917737C();
    sub_1D91773DC();
    v73 = sub_1D9178F4C();
    if (sub_1D917918C())
    {
      v74 = *(v2 + 328);
      v76 = *(v2 + 128);
      v75 = *(v2 + 136);
      v77 = *(v2 + 120);

      sub_1D917740C();

      if ((*(v76 + 88))(v75, v77) == v74)
      {
        v78 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v2 + 128) + 8))(*(v2 + 136), *(v2 + 120));
        v78 = "";
      }

      v82 = swift_slowAlloc();
      *v82 = 0;
      v83 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v72, v73, v83, "ScoutingAlignmentStep", v78, v82, 2u);
      MEMORY[0x1DA72CB90](v82, -1, -1);
    }

    v84 = *(v2 + 240);
    v85 = *(v2 + 168);
    v86 = *(v2 + 144);

    v84(v85, v86);
  }

  sub_1D917737C();
  sub_1D917731C();
  v87 = sub_1D917737C();
  v88 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    v90 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v87, v88, v90, "ScoutingAlignmentStep", "", v89, 2u);
    MEMORY[0x1DA72CB90](v89, -1, -1);
  }

  v91 = *(v2 + 240);
  v92 = *(v2 + 208);
  v93 = *(v2 + 176);
  v94 = *(v2 + 160);
  v95 = *(v2 + 144);

  v92(v93, v94, v95);
  swift_allocObject();
  v96 = sub_1D91773EC();
  *(v2 + 296) = v96;
  v91(v94, v95);

  *(v2 + 64) = v96;
  v97 = swift_task_alloc();
  *(v2 + 304) = v97;
  *v97 = v2;
  v97[1] = sub_1D912E57C;
  v98 = *(v2 + 88);

  return sub_1D912F98C(v98, v3);
}

uint64_t sub_1D912F3D8()
{
  sub_1D912F4E0(*(v0 + 88), *(v0 + 112), *(v0 + 232), (v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D912F4E0(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  v37 = a4;
  v5 = sub_1D91773AC();
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v38 = sub_1D917734C();
  v10 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v16 = sub_1D917741C();
  v17 = sub_1D9178D1C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = a1;
    _os_log_impl(&dword_1D8CEC000, v16, v17, "Scouting: Ending task for %f", v18, 0xCu);
    MEMORY[0x1DA72CB90](v18, -1, -1);
  }

  if (qword_1ECAB3558 != -1)
  {
    swift_once();
  }

  v19 = sub_1D917739C();
  __swift_project_value_buffer(v19, qword_1ECAB78E8);
  v20 = sub_1D917737C();
  sub_1D91773DC();
  v21 = sub_1D9178F4C();
  if (sub_1D917918C())
  {

    sub_1D917740C();

    v22 = v36;
    if ((*(v36 + 88))(v9, v5) == *MEMORY[0x1E69E93E8])
    {
      v23 = "[Error] Interval already ended";
    }

    else
    {
      (*(v22 + 8))(v9, v5);
      v23 = "";
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v20, v21, v25, "ScoutingAlignmentResolve", v23, v24, 2u);
    MEMORY[0x1DA72CB90](v24, -1, -1);
  }

  v26 = *(v10 + 8);
  result = v26(v15, v38);
  if (*v37)
  {

    v28 = sub_1D917737C();
    sub_1D91773DC();
    v29 = sub_1D9178F4C();
    if (sub_1D917918C())
    {

      v30 = v35;
      sub_1D917740C();

      v31 = v36;
      if ((*(v36 + 88))(v30, v5) == *MEMORY[0x1E69E93E8])
      {
        v32 = "[Error] Interval already ended";
      }

      else
      {
        (*(v31 + 8))(v30, v5);
        v32 = "";
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v28, v29, v34, "ScoutingAlignmentStep", v32, v33, 2u);
      MEMORY[0x1DA72CB90](v33, -1, -1);
    }

    return v26(v12, v38);
  }

  return result;
}

uint64_t sub_1D912F98C(double a1, double a2)
{
  *(v3 + 104) = v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;
  v4 = sub_1D91773AC();
  *(v3 + 112) = v4;
  *(v3 + 120) = *(v4 - 8);
  *(v3 + 128) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAE50, &qword_1D91BAD38);
  *(v3 + 136) = v5;
  *(v3 + 144) = *(v5 - 8);
  *(v3 + 152) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAE58, &qword_1D91BAD40);
  *(v3 + 160) = v6;
  *(v3 + 168) = *(v6 - 8);
  *(v3 + 176) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAE60, &qword_1D91BAD48);
  *(v3 + 184) = v7;
  *(v3 + 192) = *(v7 - 8);
  *(v3 + 200) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAE68, &qword_1D91BAD50);
  *(v3 + 208) = v8;
  *(v3 + 216) = *(v8 - 8);
  *(v3 + 224) = swift_task_alloc();
  v9 = sub_1D917734C();
  *(v3 + 232) = v9;
  *(v3 + 240) = *(v9 - 8);
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D912FC7C, 0, 0);
}

uint64_t sub_1D912FC7C()
{
  if (qword_1ECAB1050 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917739C();
  __swift_project_value_buffer(v1, qword_1ECAB1058);
  if (qword_1ECAB3558 != -1)
  {
    swift_once();
  }

  *(v0 + 288) = __swift_project_value_buffer(v1, qword_1ECAB78E8);
  sub_1D917737C();
  sub_1D917731C();
  v2 = sub_1D917737C();
  v3 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v2, v3, v5, "ScoutingAssetRead", "", v4, 2u);
    MEMORY[0x1DA72CB90](v4, -1, -1);
  }

  v6 = *(v0 + 272);
  v7 = *(v0 + 280);
  v9 = *(v0 + 232);
  v8 = *(v0 + 240);
  v10 = *(v0 + 200);
  v11 = *(v0 + 192);
  v22 = *(v0 + 184);
  v24 = *(v0 + 208);
  v12 = *(v0 + 152);
  v25 = *(v0 + 144);
  v23 = *(v0 + 136);
  v13 = *(v0 + 104);

  v14 = *(v8 + 16);
  *(v0 + 296) = v14;
  *(v0 + 304) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v6, v7, v9);
  *(v0 + 312) = sub_1D91773FC();
  swift_allocObject();
  *(v0 + 320) = sub_1D91773EC();
  v15 = *(v8 + 8);
  *(v0 + 328) = v15;
  *(v0 + 336) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v7, v9);
  v16 = *(v13 + 24);
  sub_1D9179F5C();
  sub_1D91790FC();
  sub_1D91790FC();
  sub_1D9178C7C();
  *(v0 + 72) = sub_1D912A550(v16, (v0 + 448));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAE70, &qword_1D91BAD58);
  sub_1D8CF48EC(&qword_1ECABAE78, &qword_1ECABAE70, &qword_1D91BAD58, MEMORY[0x1E695BED8]);
  sub_1D9177C8C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAE80, &unk_1D91BAD60);
  sub_1D8CF48EC(&qword_1ECABAE88, &qword_1ECABAE60, &qword_1D91BAD48, MEMORY[0x1E695BE38]);
  sub_1D9177C6C();

  (*(v11 + 8))(v10, v22);
  v17 = sub_1D8CF48EC(&qword_1ECABAE90, &qword_1ECABAE68, &qword_1D91BAD50, MEMORY[0x1E695BE28]);
  MEMORY[0x1DA729240](v24, v17);
  sub_1D917797C();
  (*(v25 + 8))(v12, v23);
  v18 = sub_1D8CF48EC(&qword_1ECABAE98, &qword_1ECABAE58, &qword_1D91BAD40, MEMORY[0x1E695BFC8]);
  v19 = swift_task_alloc();
  *(v0 + 344) = v19;
  *v19 = v0;
  v19[1] = sub_1D9130158;
  v20 = *(v0 + 160);

  return MEMORY[0x1EEE6D8C8](v0 + 16, v20, v18);
}

uint64_t sub_1D9130158()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1D9130574;
  }

  else
  {
    v2 = sub_1D913026C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D913026C(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 360) = v2;
  if (v2)
  {
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);
    v5 = *(v1 + 56);
    v6 = *(v1 + 64);
    *(v1 + 400) = *(v1 + 24);
    *(v1 + 408) = v3;
    *(v1 + 416) = v4;
    *(v1 + 432) = v5;
    *(v1 + 440) = v6;
    sub_1D917737C();
    sub_1D917731C();
    v7 = sub_1D917737C();
    v8 = sub_1D9178F5C();
    if (sub_1D917918C())
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v7, v8, v10, "ScoutingSignatureMatching", "", v9, 2u);
      MEMORY[0x1DA72CB90](v9, -1, -1);
    }

    v22 = *(v1 + 328);
    v11 = *(v1 + 296);
    v13 = *(v1 + 264);
    v12 = *(v1 + 272);
    v14 = *(v1 + 232);

    v11(v12, v13, v14);
    swift_allocObject();
    *(v1 + 368) = sub_1D91773EC();
    v22(v13, v14);
    v15 = swift_task_alloc();
    *(v1 + 376) = v15;
    *v15 = v1;
    v15[1] = sub_1D9130740;

    return MEMORY[0x1EEDD8DD8](v2);
  }

  else
  {
    v16 = *(v1 + 216);
    v17 = *(v1 + 224);
    v18 = *(v1 + 208);
    (*(*(v1 + 168) + 8))(*(v1 + 176), *(v1 + 160));
    sub_1D9131F00();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();

    (*(v16 + 8))(v17, v18);

    v20 = *(v1 + 8);

    return v20();
  }
}

uint64_t sub_1D9130574()
{
  *(v0 + 80) = *(v0 + 352);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1D9130608, 0, 0);
}

uint64_t sub_1D9130608()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D9130740(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  *(v4 + 384) = a1;
  *(v4 + 392) = a2;
  *(v4 + 496) = a3;

  return MEMORY[0x1EEE6DFA0](sub_1D9130844, 0, 0);
}

uint64_t sub_1D9130844(uint64_t a1)
{
  v2 = sub_1D917737C();
  sub_1D91773DC();
  v3 = sub_1D9178F4C();
  if (sub_1D917918C())
  {
    v5 = *(v1 + 120);
    v4 = *(v1 + 128);
    v6 = *(v1 + 112);

    sub_1D917740C();

    if ((*(v5 + 88))(v4, v6) == *MEMORY[0x1E69E93E8])
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v1 + 120) + 8))(*(v1 + 128), *(v1 + 112));
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v2, v3, v9, "ScoutingSignatureMatching", v7, v8, 2u);
    MEMORY[0x1DA72CB90](v8, -1, -1);
  }

  v10 = *(v1 + 496);
  v11 = *(v1 + 328);
  v12 = *(v1 + 256);
  v13 = *(v1 + 232);

  v11(v12, v13);
  if (v10)
  {
    if (v10 == 1)
    {
      v59 = 0;
      v14 = *(v1 + 360);
      v55 = 2;
LABEL_18:

      v43 = *(v1 + 216);
      v44 = *(v1 + 224);
      v45 = *(v1 + 208);
      v46 = *(v1 + 168);
      v47 = *(v1 + 176);
      v48 = *(v1 + 160);
      sub_1D9131F70(*(v1 + 384), *(v1 + 392), *(v1 + 496));

      (*(v46 + 8))(v47, v48);
      (*(v43 + 8))(v44, v45);

      v49 = *(v1 + 8);

      return v49(v59, v55);
    }

    v35 = *(v1 + 384);
    v34 = *(v1 + 392);
    v36 = *(v1 + 360);
    v37 = *(v1 + 216);
    v54 = *(v1 + 208);
    v58 = *(v1 + 224);
    v38 = *(v1 + 168);
    v52 = *(v1 + 176);
    v39 = *(v1 + 160);
    swift_willThrow();
    v40 = v35;

    sub_1D9131F70(v35, v34, 2u);

    (*(v38 + 8))(v52, v39);
    (*(v37 + 8))(v58, v54);
  }

  else
  {
    v60 = *(v1 + 384);
    sub_1D917737C();
    sub_1D917731C();
    v15 = sub_1D917737C();
    v16 = sub_1D9178F5C();
    if (sub_1D917918C())
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v15, v16, v18, "ScoutingSignatureAlignment", "", v17, 2u);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }

    v56 = *(v1 + 352);
    v19 = *(v1 + 328);
    v20 = *(v1 + 296);
    v21 = *(v1 + 272);
    v22 = *(v1 + 248);
    v23 = *(v1 + 232);
    v25 = *(v1 + 88);
    v24 = *(v1 + 96);

    v20(v21, v22, v23);
    swift_allocObject();
    v26 = sub_1D91773EC();
    v19(v22, v23);
    v27 = sub_1D9131FBC(v60, (v1 + 400), v25, v24);
    if (!v56)
    {
      v14 = *(v1 + 360);
      v55 = v28;
      v59 = v27;
      sub_1D91317F0(v26, "ScoutingSignatureAlignment");

      goto LABEL_18;
    }

    v30 = *(v1 + 384);
    v29 = *(v1 + 392);
    v31 = *(v1 + 360);
    v32 = *(v1 + 216);
    v53 = *(v1 + 208);
    v57 = *(v1 + 224);
    v33 = *(v1 + 168);
    v50 = *(v1 + 160);
    v51 = *(v1 + 176);
    sub_1D91317F0(v26, "ScoutingSignatureAlignment");

    sub_1D9131F70(v30, v29, 0);

    (*(v33 + 8))(v51, v50);
    (*(v32 + 8))(v57, v53);
  }

  v41 = *(v1 + 8);

  return v41();
}

uint64_t AssetReaderScoutingAligner.deinit()
{

  v1 = OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderScoutingAligner_logger;
  v2 = sub_1D917744C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AssetReaderScoutingAligner.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderScoutingAligner_logger;
  v2 = sub_1D917744C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D9130F20(double a1, double a2, double a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D9130FD0;

  return sub_1D912D688(a1, a2, a3);
}

uint64_t sub_1D9130FD0(double a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4.n128_f64[0] = a1;
  }

  return v5(v4);
}

uint64_t sub_1D91310D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v62 = a2;
  v75 = *MEMORY[0x1E69E9840];
  v63 = sub_1D91773AC();
  v64 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1D917734C();
  v5 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v60 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v60 - v11;
  v66 = *a1;
  if (qword_1ECAB3558 != -1)
  {
    swift_once();
  }

  v13 = sub_1D917739C();
  __swift_project_value_buffer(v13, qword_1ECAB78E8);
  v14 = sub_1D917737C();
  sub_1D91773DC();
  v15 = sub_1D9178F4C();
  if (sub_1D917918C())
  {

    sub_1D917740C();

    v16 = v64;
    v17 = v63;
    if ((*(v64 + 88))(v4, v63) == *MEMORY[0x1E69E93E8])
    {
      v18 = "[Error] Interval already ended";
    }

    else
    {
      (*(v16 + 8))(v4, v17);
      v18 = "";
    }

    v19 = v15;
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v14, v19, v21, "ScoutingAssetRead", v18, v20, 2u);
    MEMORY[0x1DA72CB90](v20, -1, -1);
  }

  v22 = *(v5 + 8);
  v23 = v12;
  v24 = v67;
  v22(v23, v67);
  sub_1D917737C();
  sub_1D917731C();
  v25 = sub_1D917737C();
  v26 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v25, v26, v28, "ScoutingSignatureGeneration", "", v27, 2u);
    MEMORY[0x1DA72CB90](v27, -1, -1);
  }

  (*(v5 + 16))(v65, v9, v24);
  sub_1D91773FC();
  swift_allocObject();
  v29 = sub_1D91773EC();
  v22(v9, v24);
  v30 = [objc_allocWithZone(MEMORY[0x1E697B7E0]) init];
  v31 = v66;
  v32 = *(v66 + 16);
  if (!v32)
  {
LABEL_19:
    sub_1D913246C();
    swift_allocError();
    *v54 = 1;
    swift_willThrow();
LABEL_22:

    sub_1D91317F0(v29, "ScoutingSignatureGeneration");
  }

  v33 = *(v66 + 48);
  v71 = *(v66 + 32);
  v72 = v33;
  v73 = *(v66 + 64);
  v67 = *(v66 + 80);
  v74 = v67;
  v35 = *(&v71 + 1);
  v34 = v71;
  v64 = *(&v33 + 1);
  v36 = v33;
  v38 = *(&v73 + 1);
  v37 = v73;
  sub_1D9132394(&v71, &lhs);
  lhs.value = 0;
  v39 = [v30 appendBuffer:v34 atTime:0 error:&lhs];
  value = lhs.value;
  if (!v39)
  {
LABEL_21:
    v55 = value;
    sub_1D9176A6C();

    swift_willThrow();
    sub_1D9132404(&v71);
    goto LABEL_22;
  }

  v41 = lhs.value;
  sub_1D9132404(&v71);
  if (v32 != 1)
  {
    v60 = v36;
    v61 = v35;
    v63 = v29;
    if (*(v31 + 16) >= 2uLL)
    {
      v42 = (v31 + 88);
      v65 = (2 - v32);
      v43 = 1;
      while (1)
      {
        v44 = v30;
        v45 = *(v42 + 6);
        v46 = v42[1];
        v47 = *v42;
        v73 = v42[2];
        v74 = v45;
        v71 = v47;
        v72 = v46;
        v29 = HIDWORD(v38);
        v48 = v47;
        v49 = v73;
        sub_1D9132394(&v71, &lhs);
        rhs.epoch = v45;
        lhs.value = v37;
        *&lhs.timescale = v38;
        lhs.epoch = v67;
        *&rhs.value = v49;
        v30 = v44;
        CMTimeAdd(&v68, &lhs, &rhs);
        v37 = v68.value;
        v38 = *&v68.timescale;
        epoch = v68.epoch;
        lhs.value = 0;
        v51 = [v44 appendBuffer:v48 atTime:0 error:&lhs];
        value = lhs.value;
        if (!v51)
        {
          v29 = v63;
          goto LABEL_21;
        }

        v67 = epoch;
        v52 = &v65[v43];
        v53 = lhs.value;
        sub_1D9132404(&v71);
        if (v52 == 1)
        {
          break;
        }

        ++v43;
        v42 = (v42 + 56);
        if (v43 >= *(v66 + 16))
        {
          goto LABEL_18;
        }
      }

      v29 = v63;
      v35 = v61;
      v36 = v60;
      goto LABEL_24;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_24:
  v57 = [v30 signature];

  v58 = v62;
  *v62 = v57;
  v58[1] = v35;
  v59 = v64;
  v58[2] = v36;
  v58[3] = v59;
  v58[4] = v37;
  v58[5] = v38;
  v58[6] = v67;
  sub_1D91317F0(v29, "ScoutingSignatureGeneration");
}

uint64_t sub_1D91317F0(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_1D91773AC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D917734C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB3558 != -1)
  {
    swift_once();
  }

  v10 = sub_1D917739C();
  __swift_project_value_buffer(v10, qword_1ECAB78E8);
  v11 = sub_1D917737C();
  sub_1D91773DC();
  v12 = sub_1D9178F4C();
  if (sub_1D917918C())
  {

    sub_1D917740C();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x1DA72CB90](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

char *sub_1D9131A80(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D9177E2C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  (*(v9 + 104))(v11, *MEMORY[0x1E69E7FA0], v8);
  v12 = sub_1D9178E6C();
  (*(v9 + 8))(v11, v8);
  type metadata accessor for AssetReader.StateController();
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAED0, &qword_1D91BAD90);
  v14 = swift_allocObject();
  *(v14 + 20) = 0;
  *(v14 + 16) = 0;
  v13[2] = v14;
  type metadata accessor for AssetReader();
  v13[3] = 0;
  v13[4] = 0;
  v15 = swift_allocObject();
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0u;
  *(v15 + 64) = 0u;
  *(v15 + 80) = 1;
  *(v15 + 88) = 0;
  *(v15 + 16) = v13;
  *(v15 + 24) = v12;
  *(v4 + 2) = v15;
  *(v4 + 3) = a1;
  v16 = objc_allocWithZone(MEMORY[0x1E697B7C0]);
  v17 = a1;
  *(v4 + 4) = [v16 initWithCatalog_];
  v18 = OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderScoutingAligner_logger;
  v19 = sub_1D917744C();
  (*(*(v19 - 8) + 32))(&v4[v18], a3, v19);
  return v4;
}

uint64_t type metadata accessor for AssetReaderScoutingAligner(uint64_t a1)
{
  result = qword_1ECABAE38;
  if (!qword_1ECABAE38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9131CEC(uint64_t a1)
{
  result = sub_1D917744C();
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

uint64_t dispatch thunk of AssetReaderScoutingAligner.align(at:within:)(double a1, double a2, double a3)
{
  v13 = (*(*v3 + 120) + **(*v3 + 120));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1D9129B88;
  v9.n128_f64[0] = a1;
  v10.n128_f64[0] = a2;
  v11.n128_f64[0] = a3;

  return v13(v9, v10, v11);
}

unint64_t sub_1D9131F00()
{
  result = qword_1ECABAE48;
  if (!qword_1ECABAE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABAE48);
  }

  return result;
}

void sub_1D9131F70(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return;
    }

    a1 = a2;
  }
}

uint64_t sub_1D9131FBC(void *a1, void *a2, Swift::Double a3, Swift::Double a4)
{
  v10 = sub_1D917744C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 mediaItems];
  sub_1D8CF2154(0, &qword_1ECABAEA0, 0x1E697B7A8);
  v16 = sub_1D91785FC();

  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!sub_1D917935C())
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1DA72AA90](0, v16);
    goto LABEL_6;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v16 + 32);
LABEL_6:
    v15 = v17;

    v18 = [v15 signatureAlignments];
    if (v18)
    {
      v19 = v18;
      sub_1D8CF2154(0, &qword_1ECABAEA8, 0x1E697B7D8);
      v4 = sub_1D91785FC();

      v5 = sub_1D8E27EE4(MEMORY[0x1E69E7CC0]);
      if (qword_1ECAB0CA0 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }

LABEL_16:
    sub_1D9131F00();
    swift_allocError();
    *v31 = 0;
    *&result = COERCE_DOUBLE(swift_willThrow());
    return result;
  }

  __break(1u);
LABEL_19:
  swift_once();
LABEL_8:
  v20 = __swift_project_value_buffer(v10, qword_1ECAB0CA8);
  (*(v11 + 16))(v14, v20, v10);
  type metadata accessor for AssetReaderTimelineAlignment(0);
  v21 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAEB0, &unk_1D91BAD70);
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  *(v22 + 16) = v5;
  *(v21 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAEB8, &unk_1D91BB060);
  v23 = swift_allocObject();
  *(v23 + 28) = 0;
  *(v23 + 16) = 0;
  *(v23 + 24) = 1;
  *(v21 + 32) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAEC0, &unk_1D91BAD80);
  v24 = swift_allocObject();
  *(v24 + 20) = 0;
  *(v24 + 16) = 3;
  *(v21 + 16) = v24;
  *(v21 + 40) = xmmword_1D91BAC80;
  (*(v11 + 32))(v21 + OBJC_IVAR____TtC18PodcastsFoundation28AssetReaderTimelineAlignment_logger, v14, v10);
  sub_1D9138A54(v4, a2, 0);

  v33 = AssetReaderTimelineAlignment.playerTimestamp(for:)(a3);
  if (v25)
  {
    v34 = AssetReaderTimelineAlignment.referenceTimestamp(for:)(a4);
    v26 = *&v34.is_nil;
    v28 = v27;

    if (v28)
    {
      *&result = 0.0;
    }

    else
    {
      *&result = a4 - v26 + a3;
    }
  }

  else
  {
    v30 = *&v33.is_nil;

    return v30;
  }

  return result;
}

uint64_t sub_1D9132394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABADB8, &qword_1D91BAB88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9132404(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABADB8, &qword_1D91BAB88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D913246C()
{
  result = qword_1ECABAEC8;
  if (!qword_1ECABAEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABAEC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetReaderScoutingAligner.ScoutingStep(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetReaderScoutingAligner.ScoutingStep(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1D9132568()
{
  result = qword_1ECABAED8;
  if (!qword_1ECABAED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABAED8);
  }

  return result;
}

unint64_t sub_1D91325D0()
{
  result = qword_1ECABAEE0;
  if (!qword_1ECABAEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABAEE0);
  }

  return result;
}

void sub_1D9132624(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v6 = a3;
  if (a4)
  {
    if (a4 == 1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_1D917931C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAF60, &qword_1D91BB030);
        sub_1D8CF48EC(&qword_1ECABAF68, &qword_1ECABAF60, &qword_1D91BB030, &unk_1D9195B80);
        sub_1D9178B3C();
        v6 = v19;
        v7 = v20;
        v8 = v21;
        v9 = v22;
        v10 = v23;
      }

      else
      {
        v11 = -1 << *(a3 + 32);
        v7 = a3 + 56;
        v8 = ~v11;
        v12 = -v11;
        if (v12 < 64)
        {
          v13 = ~(-1 << v12);
        }

        else
        {
          v13 = -1;
        }

        v10 = v13 & *(a3 + 56);

        v9 = 0;
      }

      if (v6 < 0)
      {
        goto LABEL_17;
      }

LABEL_11:
      v14 = v9;
      v15 = v10;
      if (v10)
      {
LABEL_15:
        v16 = (v15 - 1) & v15;
        v17 = *(*(v6 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v15)))));

        if (v17)
        {
          while (1)
          {
            a1(v17);
            if (v5)
            {
              break;
            }

            v10 = v16;
            if ((v6 & 0x8000000000000000) == 0)
            {
              goto LABEL_11;
            }

LABEL_17:
            if (sub_1D917938C())
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAF60, &qword_1D91BB030);
              swift_dynamicCast();
              v17 = v24;
              v16 = v10;
              if (v24)
              {
                continue;
              }
            }

            goto LABEL_22;
          }

          sub_1D8D1B144(v6);
        }

        else
        {
LABEL_22:
          sub_1D8D1B144(v6);
        }
      }

      else
      {
        while (1)
        {
          v9 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v9 >= ((v8 + 64) >> 6))
          {
            goto LABEL_22;
          }

          v15 = *(v7 + 8 * v9);
          ++v14;
          if (v15)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
      }
    }
  }

  else
  {
    a1(a3);
  }
}

void sub_1D913289C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  if (*(v1 + 24) == 1)
  {
    swift_beginAccess();
    v4 = *(v1 + 40);
    v5 = *(v1 + 48);
    swift_beginAccess();
    sub_1D8D546A0(v4, v5);
    sub_1D9138258(a1, v1 + 56);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    MEMORY[0x1EEE9AC00](v6);
    v7[2] = a1;
    sub_1D9132624(sub_1D8D5480C, v7, v4, v5);
    sub_1D8D54860(v4, v5);
  }

  else
  {

    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1D91329CC(void *a1)
{
  v10 = a1;
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  if (*(v1 + 24) == 1)
  {
    *(v1 + 24) = 0;
    swift_beginAccess();
    v4 = *(v1 + 32);
    v5 = a1;
    *(v1 + 32) = a1;
    sub_1D9138588(v4);
    swift_beginAccess();
    v6 = *(v1 + 40);
    *(v1 + 40) = 0;
    v7 = *(v1 + 48);
    *(v1 + 48) = 2;
    os_unfair_lock_unlock(v3 + 4);
    MEMORY[0x1EEE9AC00](v8);
    v9[2] = &v10;
    sub_1D9132624(sub_1D9138598, v9, v6, v7);
    sub_1D8D54860(v6, v7);
  }

  else
  {

    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1D9132B0C(void (*a1)(uint64_t))
{
  v3 = v1[2];
  os_unfair_lock_lock((v3 + 20));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  os_unfair_lock_lock((v3 + 20));
  a1(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  v5 = v1[3];
  if (v5)
  {
    v6 = v1[4];

    os_unfair_lock_lock((v3 + 20));
    v7 = *(v3 + 16);
    os_unfair_lock_unlock((v3 + 20));
    v5(v4, v7);
    sub_1D8D15664(v5, v6);
  }
}

uint64_t AssetReaderTimelineAligner.__allocating_init(catalog:cache:episodeID:logger:signposter:workQueue:elapsedTimeProvider:analyticsChannel:)(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = a6;
  v45 = a8;
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v11 = sub_1D917744C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = a2[1];
  v46 = *a2;
  v47 = v16;
  v17 = a2[3];
  v48 = a2[2];
  v49 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAEE8, &unk_1D91BAEF0);
  v18 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v18 + 16) = v19;
  *(v18 + 24) = 1;
  *(v18 + 32) = xmmword_1D918BEE0;
  *(v18 + 48) = 2;
  v20 = MEMORY[0x1E69E7CC0];
  *(v18 + 56) = 0u;
  *(v18 + 72) = 0u;
  *(v18 + 88) = 0;
  *(v18 + 96) = v20;
  *(v15 + 32) = v18;
  v21 = OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_started;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7C0, &unk_1D918C0E0);
  v22 = swift_allocObject();
  *(v22 + 20) = 0;
  *(v22 + 16) = 0;
  *(v15 + v21) = v22;
  *(v15 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_subscriptions) = MEMORY[0x1E69E7CD0];
  v23 = v15 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_elapsedTimeProvider;
  *(v15 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_elapsedTimeProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for AssetReader.StateController();
  v24 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAED0, &qword_1D91BAD90);
  v25 = swift_allocObject();
  *(v25 + 20) = 0;
  *(v25 + 16) = 0;
  v24[3] = 0;
  v24[4] = 0;
  v24[2] = v25;
  if (qword_1ECAB34C0 != -1)
  {
    swift_once();
  }

  v26 = qword_1ECAB71F8;
  type metadata accessor for AssetReader();
  v27 = swift_allocObject();
  *(v27 + 32) = 0u;
  *(v27 + 48) = 0u;
  *(v27 + 64) = 0u;
  *(v27 + 80) = 1;
  *(v27 + 88) = 0;
  *(v27 + 16) = v24;
  *(v27 + 24) = v26;
  *(v15 + 16) = v27;
  v28 = qword_1ECAB0CA0;
  v29 = v26;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v11, qword_1ECAB0CA8);
  (*(v12 + 16))(v14, v30, v11);
  if (qword_1ECAB34C8 != -1)
  {
    swift_once();
  }

  v31 = qword_1ECAB7200;
  type metadata accessor for ShazamMatcher();
  swift_allocObject();
  v32 = v31;
  v33 = sub_1D9141E84(a1, v14, v32);

  *(v15 + 24) = v33;
  v34 = v47;
  *(v15 + 40) = v46;
  *(v15 + 56) = v34;
  v35 = v49;
  *(v15 + 72) = v48;
  *(v15 + 88) = v35;
  v36 = v42;
  *(v15 + 104) = v41;
  (*(v12 + 32))(v15 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_logger, v36, v11);
  v37 = OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_signposter;
  v38 = sub_1D917739C();
  (*(*(v38 - 8) + 32))(v15 + v37, v43, v38);
  *(v15 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_workQueue) = v44;
  *(v23 + 8) = v45;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v15 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_analyticsChannel) = a9;
  return v15;
}

uint64_t AssetReaderTimelineAligner.init(catalog:cache:episodeID:logger:signposter:workQueue:elapsedTimeProvider:analyticsChannel:)(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v45 = a6;
  v46 = a8;
  v43 = a4;
  v44 = a5;
  v42 = a3;
  v13 = sub_1D917744C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2[1];
  v47 = *a2;
  v48 = v17;
  v18 = a2[3];
  v49 = a2[2];
  v50 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAEE8, &unk_1D91BAEF0);
  v19 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v19 + 16) = v20;
  *(v19 + 24) = 1;
  *(v19 + 32) = xmmword_1D918BEE0;
  *(v19 + 48) = 2;
  v21 = MEMORY[0x1E69E7CC0];
  *(v19 + 56) = 0u;
  *(v19 + 72) = 0u;
  *(v19 + 88) = 0;
  *(v19 + 96) = v21;
  *(v10 + 32) = v19;
  v22 = OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_started;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7C0, &unk_1D918C0E0);
  v23 = swift_allocObject();
  *(v23 + 20) = 0;
  *(v23 + 16) = 0;
  *(v10 + v22) = v23;
  *(v10 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_subscriptions) = MEMORY[0x1E69E7CD0];
  v24 = v10 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_elapsedTimeProvider;
  *(v10 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_elapsedTimeProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for AssetReader.StateController();
  v25 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAED0, &qword_1D91BAD90);
  v26 = swift_allocObject();
  *(v26 + 20) = 0;
  *(v26 + 16) = 0;
  v25[3] = 0;
  v25[4] = 0;
  v25[2] = v26;
  if (qword_1ECAB34C0 != -1)
  {
    swift_once();
  }

  v27 = qword_1ECAB71F8;
  type metadata accessor for AssetReader();
  v28 = swift_allocObject();
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0u;
  *(v28 + 64) = 0u;
  *(v28 + 80) = 1;
  *(v28 + 88) = 0;
  *(v28 + 16) = v25;
  *(v28 + 24) = v27;
  *(v10 + 16) = v28;
  v29 = qword_1ECAB0CA0;
  v30 = v27;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v13, qword_1ECAB0CA8);
  (*(v14 + 16))(v16, v31, v13);
  if (qword_1ECAB34C8 != -1)
  {
    swift_once();
  }

  v32 = qword_1ECAB7200;
  type metadata accessor for ShazamMatcher();
  swift_allocObject();
  v33 = v32;
  v34 = sub_1D9141E84(a1, v16, v33);

  *(v10 + 24) = v34;
  v35 = v48;
  *(v10 + 40) = v47;
  *(v10 + 56) = v35;
  v36 = v50;
  *(v10 + 72) = v49;
  *(v10 + 88) = v36;
  v37 = v43;
  *(v10 + 104) = v42;
  (*(v14 + 32))(v10 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_logger, v37, v13);
  v38 = OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_signposter;
  v39 = sub_1D917739C();
  (*(*(v39 - 8) + 32))(v10 + v38, v44, v39);
  *(v10 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_workQueue) = v45;
  *(v24 + 8) = v46;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v10 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_analyticsChannel) = a9;
  return v10;
}

uint64_t AssetReaderTimelineAligner.align(asset:)(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAF28, &qword_1D91BAF00);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_started);
  os_unfair_lock_lock((v7 + 20));
  v8 = *(v7 + 16);
  *(v7 + 16) = 1;
  os_unfair_lock_unlock((v7 + 20));
  if ((v8 & 1) == 0)
  {
    sub_1D9133B98(a1);
  }

  v11[1] = *(v1 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAEE8, &unk_1D91BAEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAF30, &qword_1D91BAF08);
  sub_1D8CF48EC(&qword_1ECABAF38, &qword_1ECABAEE8, &unk_1D91BAEF0, &protocol conformance descriptor for RepublishingValueSubject<A, B>);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1ECABAF40, &qword_1ECABAF28, &qword_1D91BAF00, MEMORY[0x1E695BC80]);
  v9 = sub_1D9177B1C();
  (*(v4 + 8))(v6, v3);
  return v9;
}

Swift::Void __swiftcall AssetReaderTimelineAligner.pauseReadingIfNeeded()()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = v1[2];
  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  os_unfair_lock_lock((v2 + 20));
  if (*(v2 + 16) == 1)
  {
    *(v2 + 16) = 0;
  }

  os_unfair_lock_unlock((v2 + 20));
  v4 = v1[3];
  if (v4)
  {
    v5 = v1[4];

    os_unfair_lock_lock((v2 + 20));
    v6 = *(v2 + 16);
    os_unfair_lock_unlock((v2 + 20));
    v4(v3, v6);

    sub_1D8D15664(v4, v5);
  }
}

Swift::Void __swiftcall AssetReaderTimelineAligner.resumeReadingIfNeeded()()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = v1[2];
  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  os_unfair_lock_lock((v2 + 20));
  if (!*(v2 + 16))
  {
    *(v2 + 16) = 1;
  }

  os_unfair_lock_unlock((v2 + 20));
  v4 = v1[3];
  if (v4)
  {
    v5 = v1[4];

    os_unfair_lock_lock((v2 + 20));
    v6 = *(v2 + 16);
    os_unfair_lock_unlock((v2 + 20));
    v4(v3, v6);

    sub_1D8D15664(v4, v5);
  }
}

Swift::Void __swiftcall AssetReaderTimelineAligner.cancelReading()()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = v1[2];
  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  os_unfair_lock_lock((v2 + 20));
  if (*(v2 + 16) <= 1u)
  {
    *(v2 + 16) = 2;
  }

  os_unfair_lock_unlock((v2 + 20));
  v4 = v1[3];
  if (v4)
  {
    v5 = v1[4];

    os_unfair_lock_lock((v2 + 20));
    v6 = *(v2 + 16);
    os_unfair_lock_unlock((v2 + 20));
    v4(v3, v6);

    sub_1D8D15664(v4, v5);
  }
}

uint64_t AssetReaderTimelineAligner.deinit()
{

  v1 = OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_logger;
  v2 = sub_1D917744C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_signposter;
  v4 = sub_1D917739C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_unknownObjectRelease();

  sub_1D8EB07F4(v0 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_elapsedTimeProvider);
  return v0;
}

uint64_t AssetReaderTimelineAligner.__deallocating_deinit()
{
  AssetReaderTimelineAligner.deinit();

  return swift_deallocClassInstance();
}

void sub_1D9133B98(char *a1)
{
  v93 = a1;
  v2 = sub_1D91773AC();
  v3 = *(v2 - 8);
  v91 = v2;
  v92 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v86 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v85 = &v84 - v6;
  v7 = sub_1D9176C2C();
  v89 = *(v7 - 8);
  v90 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v88 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1D917734C();
  v9 = *(v96 - 1);
  MEMORY[0x1EEE9AC00](v96);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v84 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v84 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v84 - v18;
  sub_1D917737C();
  sub_1D917731C();
  v20 = sub_1D917737C();
  v21 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v20, v21, v23, "AlignmentReadCache", "", v22, 2u);
    MEMORY[0x1DA72CB90](v22, -1, -1);
  }

  v24 = v96;
  (*(v9 + 16))(v16, v19, v96);
  sub_1D91773FC();
  swift_allocObject();
  v25 = sub_1D91773EC();
  v27 = v9 + 8;
  v26 = *(v9 + 8);
  v94 = v27;
  (v26)(v19, v24);
  v28 = v93;
  sub_1D91379B0(&v97);
  v29 = v98;
  v95 = v25;
  if (v98)
  {
    v30 = v97;
    v31 = *(v1 + 40);

    v31(&v102, &v97);

    v84 = v102;
    if (v102)
    {
      v32 = v28;
      v33 = sub_1D917741C();
      v34 = sub_1D9178D1C();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v93 = v26;
        v36 = v35;
        v86 = swift_slowAlloc();
        v97 = v86;
        *v36 = 141558275;
        *(v36 + 4) = 1752392040;
        *(v36 + 12) = 2081;
        v37 = [v32 URL];
        v38 = v88;
        sub_1D9176B9C();

        sub_1D91382C8(&qword_1ECAB2C88, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v39 = v90;
        v40 = sub_1D9179A4C();
        v42 = v41;
        (*(v89 + 8))(v38, v39);
        v43 = sub_1D8CFA924(v40, v42, &v97);

        *(v36 + 14) = v43;
        _os_log_impl(&dword_1D8CEC000, v33, v34, "Using in-memory alignment cache for asset: %{private,mask.hash}s", v36, 0x16u);
        v44 = v86;
        __swift_destroy_boxed_opaque_existential_1Tm(v86);
        MEMORY[0x1DA72CB90](v44, -1, -1);
        v45 = v36;
        v26 = v93;
        MEMORY[0x1DA72CB90](v45, -1, -1);
      }

      v46 = v87;
      v47 = v84;
      v100 = type metadata accessor for AssetReaderTimelineAlignment(0);
      v101 = &protocol witness table for AssetReaderTimelineAlignment;
      v97 = v47;

      sub_1D913289C(&v97);
      sub_1D8D08A50(&v97, &qword_1ECABAF58, &qword_1D91BB028);
      v48 = sub_1D917737C();
      sub_1D91773DC();
      v49 = sub_1D9178F4C();
      v50 = sub_1D917918C();
      v51 = v92;
      if (v50)
      {

        v52 = v85;
        sub_1D917740C();
        v53 = v52;

        v54 = v52;
        v55 = v91;
        if ((*(v51 + 88))(v54, v91) == *MEMORY[0x1E69E93E8])
        {
          v56 = "[Error] Interval already ended";
        }

        else
        {
          (*(v51 + 8))(v53, v55);
          v56 = "HIT";
        }

        v82 = swift_slowAlloc();
        *v82 = 0;
        v83 = sub_1D917732C();
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v48, v49, v83, "AlignmentReadCache", v56, v82, 2u);
        MEMORY[0x1DA72CB90](v82, -1, -1);
      }

      else
      {
      }

      (v26)(v46, v96);
      return;
    }

    v87 = v30;
  }

  else
  {
    v57 = v28;
    v87 = v28;
  }

  v58 = sub_1D917737C();
  sub_1D91773DC();
  v59 = sub_1D9178F4C();
  if (sub_1D917918C())
  {
    v60 = v26;

    v61 = v86;
    sub_1D917740C();

    v62 = v91;
    v63 = v92;
    if ((*(v92 + 88))(v61, v91) == *MEMORY[0x1E69E93E8])
    {
      v64 = "[Error] Interval already ended";
    }

    else
    {
      (*(v63 + 8))(v61, v62);
      v64 = "MISS";
    }

    v65 = swift_slowAlloc();
    *v65 = 0;
    v66 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v58, v59, v66, "AlignmentReadCache", v64, v65, 2u);
    MEMORY[0x1DA72CB90](v65, -1, -1);
    v26 = v60;
  }

  (v26)(v11, v96);
  v67 = v28;
  v68 = sub_1D917741C();
  v69 = sub_1D9178D1C();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v97 = v96;
    *v70 = 141558275;
    *(v70 + 4) = 1752392040;
    *(v70 + 12) = 2081;
    v71 = [v67 URL];
    v72 = v29;
    v73 = v88;
    sub_1D9176B9C();

    sub_1D91382C8(&qword_1ECAB2C88, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v74 = v90;
    v75 = sub_1D9179A4C();
    v77 = v76;
    v78 = v73;
    v29 = v72;
    (*(v89 + 8))(v78, v74);
    v79 = sub_1D8CFA924(v75, v77, &v97);

    *(v70 + 14) = v79;
    _os_log_impl(&dword_1D8CEC000, v68, v69, "Generating alignments for asset: %{private,mask.hash}s", v70, 0x16u);
    v80 = v96;
    __swift_destroy_boxed_opaque_existential_1Tm(v96);
    MEMORY[0x1DA72CB90](v80, -1, -1);
    MEMORY[0x1DA72CB90](v70, -1, -1);
  }

  v81 = v87;
  v97 = v87;
  v98 = v29;
  v99 = v29 == 0;
  sub_1D9134574(v67, &v97);

  sub_1D9138248(v81, v29, v29 == 0);
}

uint64_t sub_1D9134574(void *a1, void **a2)
{
  v75 = a1;
  v4 = sub_1D917744C();
  v87 = *(v4 - 8);
  v88 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v85 = v5;
  v86 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAF70, &unk_1D91BB038);
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v79 = &v69 - v9;
  v95 = sub_1D917739C();
  v10 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v74 = v11;
  v94 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAF78, &qword_1D91BB048);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAF80, &unk_1D91BB050);
  v83 = *(v13 - 8);
  v84 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v96 = &v69 - v14;
  v15 = sub_1D917734C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v69 - v20;
  v22 = *a2;
  v92 = a2[1];
  v93 = v22;
  v91 = *(a2 + 16);
  v23 = v2;
  v24 = v2 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_signposter;
  sub_1D917737C();
  sub_1D917731C();
  v90 = v24;
  v25 = sub_1D917737C();
  v26 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v25, v26, v28, "AlignmentAssetRead", "", v27, 2u);
    MEMORY[0x1DA72CB90](v27, -1, -1);
  }

  (*(v16 + 16))(v18, v21, v15);
  sub_1D91773FC();
  swift_allocObject();
  v29 = sub_1D91773EC();
  (*(v16 + 8))(v21, v15);
  v89 = v23;
  sub_1D9135080(v75);
  v97 = *(v23 + 24);
  v30 = v97;
  type metadata accessor for ShazamMatcher();
  sub_1D91382C8(&qword_1ECABAF88, type metadata accessor for ShazamMatcher, &unk_1D91BBA60);
  sub_1D917789C();

  v97 = v30;
  v31 = *(v10 + 16);
  v72 = v10 + 16;
  v73 = v31;
  v33 = v94;
  v32 = v95;
  v31(v94, v90, v95);
  v34 = *(v10 + 80);
  v75 = v34;
  v35 = (v34 + 16) & ~v34;
  v71 = v35;
  v36 = (v74 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v70 = *(v10 + 32);
  v74 = v10 + 32;
  v70(v37 + v35, v33, v32);
  v69 = v29;
  *(v37 + v36) = v29;
  v38 = v36;
  sub_1D91382C8(&qword_1ECABAF90, type metadata accessor for ShazamMatcher, &unk_1D91BB9D0);

  v39 = v76;
  sub_1D9177B3C();

  v40 = v89;
  v41 = *(v89 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_workQueue);
  v42 = sub_1D9178DBC();
  v43 = v79;
  (*(*(v42 - 8) + 56))(v79, 1, 1, v42);
  v97 = v41;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECABAF98, &qword_1ECABAF78, &qword_1D91BB048, MEMORY[0x1E695BCC0]);
  sub_1D8D02DF0();
  v44 = v80;
  v45 = v78;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECABAFA0, &qword_1ECABAF70, &unk_1D91BB038, MEMORY[0x1E695BCB8]);
  v46 = v82;
  sub_1D9177CEC();
  (*(v81 + 8))(v44, v46);
  sub_1D8D08A50(v43, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v77 + 8))(v39, v45);
  v47 = swift_allocObject();
  v48 = v40;
  swift_weakInit();
  v49 = *(v40 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_analyticsChannel);
  v81 = *(v40 + 32);
  v82 = v49;
  v50 = v94;
  v51 = v95;
  v73(v94, v90, v95);
  v52 = v38;
  v53 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
  v90 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v70(v55 + v71, v50, v51);
  *(v55 + v52) = v69;
  v56 = v81;
  *(v55 + v53) = v81;
  *(v55 + v54) = v47;
  v57 = v55 + v90;
  v58 = v92;
  *v57 = v93;
  *(v57 + 8) = v58;
  *(v57 + 16) = v91;
  *(v55 + ((v54 + 39) & 0xFFFFFFFFFFFFFFF8)) = v49;
  v60 = v86;
  v59 = v87;
  v61 = v88;
  (*(v87 + 16))(v86, v48 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_logger, v88);
  v62 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v63 = (v85 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v59 + 32))(v64 + v62, v60, v61);
  *(v64 + v63) = v56;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_1D9138470;
  *(v65 + 24) = v64;
  swift_retain_n();

  swift_unknownObjectRetain();
  sub_1D9138578(v93, v92, v91);
  sub_1D8CF48EC(&qword_1ECABAFA8, &qword_1ECABAF80, &unk_1D91BB050, MEMORY[0x1E695BE98]);
  v66 = v84;
  v67 = v96;
  sub_1D9177BCC();

  (*(v83 + 8))(v67, v66);
  swift_beginAccess();
  sub_1D917783C();
  swift_endAccess();
}

uint64_t sub_1D9135080(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAFB0, &qword_1D91BB070);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v27 - v5;
  v7 = v1 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_elapsedTimeProvider;
  if (!swift_unknownObjectWeakLoadStrong() || (v8 = *(v7 + 8), ObjectType = swift_getObjectType(), v10 = (*(v8 + 8))(a1, ObjectType, v8), v12 = v11, v14 = v13, swift_unknownObjectRelease(), (v14 & 1) != 0) || (v15.n128_u64[0] = v10, sub_1D91366F0(&v28, v15, v12), (v32 & 1) != 0))
  {
    v16 = *(MEMORY[0x1E6960CA8] + 16);
    v34 = *MEMORY[0x1E6960CA8];
    v17 = *(MEMORY[0x1E6960CA8] + 32);
    v35 = v16;
    v36 = v17;
    return sub_1D91368A0(a1, &v34, 0);
  }

  else
  {
    v19 = v31;
    v20 = v28;
    v21 = v29;
    v22 = v30;
    v23 = sub_1D91790EC();
    *&v34 = v20;
    *(&v34 + 1) = __PAIR64__(v22, v21);
    *&v35 = v19;
    *(&v35 + 1) = v23;
    *&v36 = v24;
    *(&v36 + 1) = v25;
    sub_1D9178C7C();
    v27[2] = sub_1D91368A0(a1, &v34, 2);
    v27[1] = sub_1D91368A0(a1, v33, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAFB8, &qword_1D91BB078);
    sub_1D8CF48EC(&qword_1ECABAFC0, &qword_1ECABAFB8, &qword_1D91BB078, MEMORY[0x1E695BED8]);
    sub_1D9177C3C();

    sub_1D8CF48EC(&qword_1ECABAFC8, &qword_1ECABAFB0, &qword_1D91BB070, MEMORY[0x1E695BCA8]);
    v26 = sub_1D9177B1C();
    (*(v4 + 8))(v6, v3);
    return v26;
  }
}

uint64_t sub_1D9135368()
{
  v0 = sub_1D91773AC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D917734C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D917737C();
  sub_1D91773DC();
  v9 = sub_1D9178F4C();
  if (sub_1D917918C())
  {

    sub_1D917740C();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v10 = "CANCELLED";
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v8, v9, v12, "AlignmentAssetRead", v10, v11, 2u);
    MEMORY[0x1DA72CB90](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_1D91355B0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, int a8, void *a9)
{
  v53 = a8;
  v51 = a6;
  v52 = a7;
  v57 = a4;
  v55 = a9;
  v10 = sub_1D91773AC();
  v54 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  v56 = sub_1D917734C();
  v16 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v51 - v20;
  v22 = *a1;
  if (v22)
  {
    v23 = sub_1D917737C();
    sub_1D91773DC();
    v24 = sub_1D9178F4C();
    if (sub_1D917918C())
    {

      sub_1D917740C();

      v25 = v54;
      if ((*(v54 + 88))(v12, v10) == *MEMORY[0x1E69E93E8])
      {
        v26 = "[Error] Interval already ended";
      }

      else
      {
        (*(v25 + 8))(v12, v10);
        v26 = "FAILED";
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v23, v24, v34, "AlignmentAssetRead", v26, v33, 2u);
      MEMORY[0x1DA72CB90](v33, -1, -1);
    }

    (*(v16 + 8))(v18, v56);
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_1D917946C();

    v60 = 0xD000000000000020;
    v61 = 0x80000001D91D85E0;
    v35 = sub_1D9176A5C();
    v36 = [v35 code];

    v59[0] = v36;
    v37 = sub_1D9179A4C();
    MEMORY[0x1DA7298F0](v37);

    MEMORY[0x1DA7298F0](41, 0xE100000000000000);
    v38 = _s18PodcastsFoundation14AnalyticsEventC25transcriptAlignmentFailed6reasonACSS_tFZ_0();

    [v55 sendEvent_];

    sub_1D913246C();
    v39 = swift_allocError();
    *v40 = v22;
    v41 = v22;
    v42 = v39;
    goto LABEL_20;
  }

  v27 = sub_1D917737C();
  sub_1D91773DC();
  v28 = sub_1D9178F4C();
  v29 = sub_1D917918C();
  v30 = v53;
  if (v29)
  {

    sub_1D917740C();

    v31 = v54;
    if ((*(v54 + 88))(v15, v10) == *MEMORY[0x1E69E93E8])
    {
      v32 = "[Error] Interval already ended";
    }

    else
    {
      (*(v31 + 8))(v15, v10);
      v32 = "SUCCESS";
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v27, v28, v44, "AlignmentAssetRead", v32, v43, 2u);
    MEMORY[0x1DA72CB90](v43, -1, -1);
  }

  (*(v16 + 8))(v21, v56);
  v45 = v57;
  v46 = *(v57 + 16);
  os_unfair_lock_lock(v46 + 4);
  swift_beginAccess();
  sub_1D8D088B4(v45 + 56, &v60, &qword_1ECABAF58, &qword_1D91BB028);
  os_unfair_lock_unlock(v46 + 4);
  if (!v63)
  {
    sub_1D8D08A50(&v60, &qword_1ECABAF58, &qword_1D91BB028);
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAF30, &qword_1D91BAF08);
  v47 = type metadata accessor for AssetReaderTimelineAlignment(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v49 = _s18PodcastsFoundation14AnalyticsEventC25transcriptAlignmentFailed6reasonACSS_tFZ_0();
    [v55 sendEvent_];

    sub_1D913246C();
    v42 = swift_allocError();
    v39 = v42;
    *v50 = 0;
LABEL_20:
    sub_1D91329CC(v42);

    return;
  }

  v48 = v58;
  sub_1D9139460();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v60 = v51;
    v61 = v52;
    v62 = v30 & 1;
    sub_1D9135C34(v48, &v60);
  }

  v63 = v47;
  v64 = &protocol witness table for AssetReaderTimelineAlignment;
  v60 = v48;

  sub_1D913289C(&v60);
  sub_1D8D08A50(&v60, &qword_1ECABAF58, &qword_1D91BB028);
  sub_1D91329CC(0);
}

void sub_1D9135C34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v55 = a1;
  v5 = sub_1D91773AC();
  v54 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D917734C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v57 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  v17 = *a2;
  if (*(a2 + 16))
  {
    sub_1D91379B0(&v59);
    v17 = v59;
    v18 = v60;
    if (v60)
    {
LABEL_3:
      v52 = v7;
      v53 = v5;
      v56 = v9;
      sub_1D917737C();
      sub_1D917731C();
      v19 = sub_1D917737C();
      v20 = sub_1D9178F5C();
      if (sub_1D917918C())
      {
        v21 = swift_slowAlloc();
        v51 = v8;
        v22 = v21;
        *v21 = 0;
        v23 = sub_1D917732C();
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v19, v20, v23, "AlignmentWriteCache", "", v22, 2u);
        v24 = v22;
        v8 = v51;
        MEMORY[0x1DA72CB90](v24, -1, -1);
      }

      v25 = v56;
      (*(v56 + 16))(v13, v16, v8);
      sub_1D91773FC();
      swift_allocObject();
      sub_1D91773EC();
      v28 = *(v25 + 8);
      v26 = v25 + 8;
      v27 = v28;
      v28(v16, v8);
      v29 = *(v3 + 56);
      v58 = v55;
      v59 = v17;
      v60 = v18;
      v29(&v58, &v59);

      v30 = sub_1D917737C();
      v31 = v57;
      sub_1D91773DC();
      v32 = sub_1D9178F4C();
      if (sub_1D917918C())
      {
        v56 = v26;

        v33 = v52;
        sub_1D917740C();

        v34 = v53;
        v35 = v54;
        v36 = v8;
        if ((*(v54 + 88))(v33, v53) == *MEMORY[0x1E69E93E8])
        {
          v37 = "[Error] Interval already ended";
        }

        else
        {
          (*(v35 + 8))(v33, v34);
          v37 = "SUCCESS";
        }

        v41 = swift_slowAlloc();
        *v41 = 0;
        v42 = v57;
        v43 = sub_1D917732C();
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v30, v32, v43, "AlignmentWriteCache", v37, v41, 2u);
        MEMORY[0x1DA72CB90](v41, -1, -1);
        v8 = v36;
        v31 = v42;
      }

      v27(v31, v8);

      v44 = sub_1D917741C();
      v45 = sub_1D9178D1C();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 141558275;
        *(v46 + 4) = 1752392040;
        *(v46 + 12) = 2081;
        v58 = *(v3 + 104);
        v59 = v47;
        sub_1D8E40A10();
        v48 = sub_1D9179A4C();
        v50 = sub_1D8CFA924(v48, v49, &v59);

        *(v46 + 14) = v50;
        _os_log_impl(&dword_1D8CEC000, v44, v45, "Writing alignment to disk for %{private,mask.hash}s", v46, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        MEMORY[0x1DA72CB90](v47, -1, -1);
        MEMORY[0x1DA72CB90](v46, -1, -1);
      }

      return;
    }
  }

  else
  {
    v18 = *(a2 + 8);

    if (v18)
    {
      goto LABEL_3;
    }
  }

  v57 = sub_1D917741C();
  v38 = sub_1D9178CFC();
  if (os_log_type_enabled(v57, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1D8CEC000, v57, v38, "Stream was never cached to disk. Skipping cache write.", v39, 2u);
    MEMORY[0x1DA72CB90](v39, -1, -1);
  }

  v40 = v57;
}

void sub_1D9136204(void *a1, void *a2, void *a3, unint64_t a4, uint64_t a5)
{
  v10 = sub_1D917744C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 mediaItems];
  sub_1D8CF2154(0, &qword_1ECABAEA0, 0x1E697B7A8);
  v16 = sub_1D91785FC();

  if (v16 >> 62)
  {
    if (sub_1D917935C())
    {
      goto LABEL_3;
    }

LABEL_17:

    goto LABEL_18;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1DA72AA90](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_25;
    }

    v17 = *(v16 + 32);
  }

  v15 = v17;

  v18 = [v15 signatureAlignments];
  if (v18)
  {
    v19 = v18;
    sub_1D8CF2154(0, &qword_1ECABAEA8, 0x1E697B7D8);
    a4 = sub_1D91785FC();

    v20 = *(a5 + 16);
    os_unfair_lock_lock(v20 + 4);
    swift_beginAccess();
    sub_1D8D088B4(a5 + 56, v31, &qword_1ECABAF58, &qword_1D91BB028);
    os_unfair_lock_unlock(v20 + 4);
    if (v32)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAF30, &qword_1D91BAF08);
      v21 = type metadata accessor for AssetReaderTimelineAlignment(0);
      if (swift_dynamicCast())
      {
        v22 = v30[1];
LABEL_15:
        sub_1D9138A54(a4, a2, a3);

        type metadata accessor for AssetReaderTimelineAlignment(0);
        v32 = v21;
        v33 = &protocol witness table for AssetReaderTimelineAlignment;
        v31[0] = v22;

        sub_1D913289C(v31);

        sub_1D8D08A50(v31, &qword_1ECABAF58, &qword_1D91BB028);
        return;
      }

      LODWORD(v30[0]) = a3;
    }

    else
    {
      LODWORD(v30[0]) = a3;
      sub_1D8D08A50(v31, &qword_1ECABAF58, &qword_1D91BB028);
    }

    a3 = sub_1D8E27EE4(MEMORY[0x1E69E7CC0]);
    if (qword_1ECAB0CA0 == -1)
    {
LABEL_14:
      v23 = __swift_project_value_buffer(v10, qword_1ECAB0CA8);
      (*(v11 + 16))(v14, v23, v10);
      v21 = type metadata accessor for AssetReaderTimelineAlignment(0);
      v22 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAEB0, &unk_1D91BAD70);
      v24 = swift_allocObject();
      *(v24 + 24) = 0;
      *(v24 + 16) = a3;
      v22[3].isa = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAEB8, &unk_1D91BB060);
      v25 = swift_allocObject();
      *(v25 + 28) = 0;
      *(v25 + 16) = 0;
      *(v25 + 24) = 1;
      v22[4].isa = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAEC0, &unk_1D91BAD80);
      v26 = swift_allocObject();
      *(v26 + 20) = 0;
      *(v26 + 16) = 3;
      v22[2].isa = v26;
      *&v22[5].isa = xmmword_1D91BAC80;
      (*(v11 + 32))(v22 + OBJC_IVAR____TtC18PodcastsFoundation28AssetReaderTimelineAlignment_logger, v14, v10);
      LODWORD(a3) = v30[0];
      goto LABEL_15;
    }

LABEL_25:
    swift_once();
    goto LABEL_14;
  }

LABEL_18:
  v30[0] = sub_1D917741C();
  v27 = sub_1D9178CFC();
  if (os_log_type_enabled(v30[0], v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1D8CEC000, v30[0], v27, "Expected to receive signature alignments for a match.", v28, 2u);
    MEMORY[0x1DA72CB90](v28, -1, -1);
  }

  v29 = v30[0];
}