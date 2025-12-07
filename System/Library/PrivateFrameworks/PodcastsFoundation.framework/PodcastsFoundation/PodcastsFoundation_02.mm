uint64_t type metadata accessor for EpisodeStateRepository(uint64_t a1)
{
  result = qword_1EDCD33C0;
  if (!qword_1EDCD33C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8D1E2F4(uint64_t a1)
{
  sub_1D8CF1DB0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t static EpisodeStateRepository.shared.getter()
{
  if (qword_1EDCD33D8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D8D1E408()
{
  type metadata accessor for EpisodeStatePersistentHistoryTracker();
  swift_allocObject();
  v0 = EpisodeStatePersistentHistoryTracker.init()();
  type metadata accessor for EpisodeStateRepository(0);
  v1 = swift_allocObject();
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 storeContext];

  *(v1 + 16) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA958, &unk_1D91B9210);
  swift_allocObject();
  v4 = sub_1D91778DC();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 24) = v4;
  *(v1 + 48) = -1;
  v5 = OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository____lazy_storage___signpostID;
  v6 = sub_1D917734C();
  result = (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository_episodeStatePersistentHistoryTracker) = v0;
  qword_1EDCD33E0 = v1;
  return result;
}

void *EpisodeStatePersistentHistoryTracker.init()()
{
  v1 = v0;
  v2 = sub_1D9178E0C();
  v15 = *(v2 - 8);
  v16 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v14 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA8F0, &unk_1D91B90A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  sub_1D9177A1C();
  sub_1D8CF48EC(&qword_1EDCD0B08, &qword_1ECABA8F0, &unk_1D91B90A0, MEMORY[0x1E695C018]);
  v10 = sub_1D9177B1C();
  (*(v7 + 8))(v9, v6);
  v1[2] = v10;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D9177E4C();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD7B0(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  (*(v15 + 104))(v14, *MEMORY[0x1E69E8090], v16);
  v1[3] = sub_1D9178E4C();
  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 storeContext];

  v1[4] = v12;
  v1[5] = 0;
  return v1;
}

id sub_1D8D1EA3C(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = *a2;

  return v4;
}

uint64_t EpisodeStateDataSourceProtocol.eraseToAnyEpisodeStateDataSource()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for AnyEpisodeStateDataSource(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  (*(v6 + 16))(v8, v3, a1);
  v12 = swift_allocObject();
  sub_1D8D1ED18(v8, a1, a2);
  return v12;
}

unint64_t sub_1D8D1EC30(uint64_t a1)
{
  result = sub_1D8D1EC58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D8D1EC58()
{
  result = qword_1EDCD3980;
  if (!qword_1EDCD3980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD3980);
  }

  return result;
}

uint64_t *sub_1D8D1ED18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_allocBox();
  (*(*(a2 - 8) + 32))(v9, a1, a2);
  v10 = swift_allocObject();
  v11 = *(v7 + 80);
  v10[2] = v11;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = v8;
  v3[2] = sub_1D8D25D50;
  v3[3] = v10;
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = v8;
  v3[4] = sub_1D90FF140;
  v3[5] = v12;
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = v8;
  v3[6] = sub_1D8D1F88C;
  v3[7] = v13;
  v14 = swift_allocObject();
  v14[2] = v11;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = v8;
  v3[8] = sub_1D8DB6228;
  v3[9] = v14;
  swift_retain_n();
  return v3;
}

uint64_t sub_1D8D1EE78()
{

  return swift_deallocObject();
}

unint64_t sub_1D8D1EEC4()
{
  result = qword_1EDCD3400[0];
  if (!qword_1EDCD3400[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD3400);
  }

  return result;
}

unint64_t sub_1D8D1EF1C()
{
  result = qword_1EDCD33F8;
  if (!qword_1EDCD33F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD33F8);
  }

  return result;
}

uint64_t defaultEpisodeDownloadTransitionRules.getter()
{
  if (qword_1EDCD13A8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D8D1EFCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA838, &qword_1D91B7CC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D918B210;
  *(inited + 32) = 0x6E776F6E6B6E75;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_1D8E3A3FC;
  *(inited + 56) = 0;
  strcpy((inited + 64), "downloadable");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = sub_1D8E3A3FC;
  *(inited + 88) = 0;
  *(inited + 96) = 0x64616F6C6E776F64;
  *(inited + 104) = 0xEB00000000676E69;
  *(inited + 112) = sub_1D90FB428;
  *(inited + 120) = 0;
  *(inited + 128) = 0x64616F6C6E776F64;
  *(inited + 136) = 0xEA00000000006465;
  *(inited + 144) = sub_1D90FB444;
  *(inited + 152) = 0;
  v1 = sub_1D8D1F10C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA840, &unk_1D91B7CD0);
  result = swift_arrayDestroy();
  qword_1EDCD13B0 = v1;
  return result;
}

char *sub_1D8D1F120(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v5 = *v2;
  v6 = sub_1D9178E0C();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v30 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v29);
  v8 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = v5[10];
  v10 = v5[11];
  v34 = v5[12];
  type metadata accessor for EpisodeStateMachine(0, v9, v10, v34);
  sub_1D8D1EEC4();
  *(v3 + 3) = sub_1D9177FEC();
  v28[1] = sub_1D8CFD888();
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0xD000000000000017, 0x80000001D91D6660);
  v11 = sub_1D9179FEC();
  MEMORY[0x1DA7298F0](v11);

  MEMORY[0x1DA7298F0](8236, 0xE200000000000000);
  v12 = sub_1D9179FEC();
  MEMORY[0x1DA7298F0](v12);

  MEMORY[0x1DA7298F0](0xD000000000000019, 0x80000001D91D6680);
  sub_1D9177E4C();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1D8D017BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8D02D6C();
  sub_1D91792CC();
  (*(v31 + 104))(v30, *MEMORY[0x1E69E8090], v32);
  *(v3 + 5) = sub_1D9178E4C();
  v13 = qword_1EDCD3488;
  v14 = sub_1D917734C();
  (*(*(v14 - 8) + 56))(&v3[v13], 1, 1, v14);
  v15 = &v3[qword_1EDCD3490];
  *v15 = "EpisodeStateController.stateMachine(for:).fault";
  *(v15 + 1) = 47;
  v15[16] = 2;
  *(v3 + 2) = a1;
  v16 = v3;
  *(v3 + 4) = v33;
  v17 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = v9;
  type metadata accessor for AnyEpisodeStateDataSource(0, v9, AssociatedConformanceWitness, v20);

  if (sub_1D91786AC())
  {
    v21 = 4;
    do
    {
      v22 = v21 - 4;
      v23 = sub_1D917868C();
      sub_1D917862C();
      if (v23)
      {

        v24 = v21 - 3;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1D91794BC();
        v24 = v21 - 3;
        if (__OFADD__(v22, 1))
        {
LABEL_9:
          __break(1u);
          return v16;
        }
      }

      v25 = swift_allocObject();
      swift_weakInit();
      v26 = swift_allocObject();
      v26[2] = v19;
      v26[3] = v17;
      v26[4] = v34;
      v26[5] = v25;

      sub_1D8D1F7DC(sub_1D90FEAA4, v26);

      ++v21;
    }

    while (v24 != sub_1D91786AC());
  }

  return v16;
}

uint64_t sub_1D8D1F60C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8D1F644()
{

  return swift_deallocObject();
}

char *EpisodeStateController.init(dataSources:transitionRules:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D8D1F120(a1, a2);

  return v2;
}

uint64_t sub_1D8D1F6C8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D8D1F788()
{
  result = qword_1EDCD3978;
  if (!qword_1EDCD3978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD3978);
  }

  return result;
}

uint64_t sub_1D8D1F7DC(uint64_t a1, uint64_t a2)
{
  sub_1D8D1F840();
  v5 = v4;

  v5(a1, a2);
}

uint64_t sub_1D8D1F840()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1D8D1F898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_projectBox();
  swift_beginAccess();
  v10 = *(a6 + 40);
  sub_1D8D1F93C(a1, a2);
  v10(a1, a2, a5, a6);
  return swift_endAccess();
}

uint64_t sub_1D8D1F93C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *InterestObserverProvider.__allocating_init(ctx:)(void *a1)
{
  swift_allocObject();
  v2 = sub_1D8D1F9D4(a1);

  return v2;
}

void *sub_1D8D1F9D4(void *a1)
{
  v108 = sub_1D9178FBC();
  v110 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v1;
  v1[12] = MEMORY[0x1E69E7CD0];
  v109 = v1 + 12;
  v1[2] = a1;
  *&v106 = 0x80000001D91CF280;
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v4 = swift_allocObject();
  v105 = xmmword_1D9189080;
  *(v4 + 16) = xmmword_1D9189080;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1D8D34978();
  *(v4 + 64) = v5;
  strcpy((v4 + 32), "interestValue");
  *(v4 + 46) = -4864;
  v6 = a1;
  v7 = sub_1D9178C8C();
  v112 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v8 = sub_1D9178E1C();
  v9 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v11 = [v9 initWithEntityName_];

  [v11 setPredicate_];
  v114 = sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v12 = sub_1D91785DC();
  [v11 setSortDescriptors_];

  [v11 setFetchBatchSize_];
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB77C0, &qword_1D9198FC0);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;

  v13[14] = v14;
  v13[2] = 0xD000000000000032;
  v13[3] = v106;
  v13[4] = v11;
  v13[5] = v6;
  v13[6] = v8;
  v13[7] = sub_1D8F71B88;
  v13[8] = 0;
  v13[9] = sub_1D8F71B8C;
  v13[10] = 0;
  *&v106 = sub_1D8D38B78;
  v13[11] = sub_1D8D38B78;
  v13[12] = 0;
  v15 = v6;
  v16 = sub_1D8D20B08(v13);

  v17 = v115;
  v115[3] = v16;
  v104 = 0x80000001D91CF110;
  v18 = swift_allocObject();
  *(v18 + 16) = v105;
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = v5;
  strcpy((v18 + 32), "interestValue");
  *(v18 + 46) = -4864;
  v19 = sub_1D9178C8C();
  v20 = v15;
  v21 = sub_1D9178E1C();
  v22 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v23 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v24 = [v22 initWithEntityName_];

  [v24 setPredicate_];
  v25 = sub_1D91785DC();
  [v24 setSortDescriptors_];

  [v24 setFetchBatchSize_];
  [v24 setIncludesSubentities_];
  [v24 setIncludesPropertyValues_];
  [v24 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4438, &qword_1D91891A0);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;

  v26[14] = v27;
  v26[2] = 0xD000000000000020;
  v26[3] = v104;
  v26[4] = v24;
  v26[5] = v20;
  v26[6] = v21;
  v26[7] = sub_1D8D23164;
  v26[8] = 0;
  v26[9] = sub_1D8E3B050;
  v26[10] = 0;
  v26[11] = sub_1D8D38B78;
  v26[12] = 0;
  v116 = v26;
  sub_1D8D20F2C();
  v28 = sub_1D9177B1C();

  v17[4] = v28;
  v29 = sub_1D8D20F80();
  v30 = sub_1D9178E1C();
  v31 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v32 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v33 = [v31 initWithEntityName_];

  [v33 setPredicate_];
  v34 = sub_1D91785DC();
  [v33 setSortDescriptors_];

  [v33 setFetchBatchSize_];
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = 0;

  v35[14] = v36;
  v35[2] = 0xD00000000000003DLL;
  v35[3] = 0x80000001D91CF2C0;
  v35[4] = v33;
  v35[5] = v20;
  v35[6] = v30;
  v35[7] = sub_1D8F71B88;
  v35[8] = 0;
  v35[9] = sub_1D8F71B8C;
  v37 = v106;
  v35[10] = 0;
  v35[11] = v37;
  v35[12] = 0;
  v38 = v20;
  v39 = sub_1D8D20B08(v35);

  v40 = v115;
  v115[5] = v39;
  *&v105 = 0x80000001D91CF300;
  v41 = sub_1D8D20F90();
  v42 = sub_1D9178E1C();
  v43 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v44 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v45 = [v43 initWithEntityName_];

  [v45 setPredicate_];
  v46 = sub_1D91785DC();
  [v45 setSortDescriptors_];

  [v45 setFetchBatchSize_];
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = swift_allocObject();
  *(v48 + 16) = 0;

  v47[14] = v48;
  v49 = v105;
  v47[2] = 0xD00000000000003CLL;
  v47[3] = v49;
  v47[4] = v45;
  v47[5] = v38;
  v47[6] = v42;
  v47[7] = sub_1D8F71B88;
  v47[8] = 0;
  v47[9] = sub_1D8F71B8C;
  v47[10] = 0;
  v47[11] = v37;
  v47[12] = 0;
  v50 = v38;
  v51 = sub_1D8D20B08(v47);

  v40[6] = v51;
  *&v106 = 0x80000001D91CF340;
  v52 = _s18PodcastsFoundation10MTInterestC38predicateForFavoritedInterestsChannelsSo11NSPredicateCyFZ_0();
  v104 = v50;
  v53 = sub_1D9178E1C();
  v54 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v55 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v56 = [v54 initWithEntityName_];

  [v56 setPredicate_];
  v57 = sub_1D91785DC();
  [v56 setSortDescriptors_];

  [v56 setFetchBatchSize_];
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB77C8, &unk_1D9198FC8);
  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = swift_allocObject();
  *(v59 + 16) = 0;

  v58[14] = v59;
  v58[2] = 0xD00000000000003BLL;
  v58[3] = v106;
  v58[4] = v56;
  v60 = v104;
  v58[5] = v104;
  v58[6] = v53;
  v58[7] = sub_1D8F71B7C;
  v58[8] = 0;
  v58[9] = sub_1D8F71B78;
  v58[10] = 0;
  v58[11] = sub_1D8E29C9C;
  v58[12] = 0;
  v61 = sub_1D8D21134(v58);

  v40[7] = v61;
  *&v105 = 0x80000001D91CF380;
  v62 = _s18PodcastsFoundation10MTInterestC45predicateForDislikedInterestsShowsAndChannelsSo11NSPredicateCyFZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v63 = swift_allocObject();
  v106 = xmmword_1D9189070;
  *(v63 + 16) = xmmword_1D9189070;
  v64 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v65 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v66 = [v64 initWithKey:v65 ascending:0];

  *(v63 + 32) = v66;
  v67 = v60;
  v68 = sub_1D9178E1C();
  v69 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v70 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v71 = [v69 initWithEntityName_];

  [v71 setPredicate_];
  v72 = sub_1D91785DC();

  [v71 setSortDescriptors_];

  [v71 setFetchBatchSize_];
  v73 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v74 = swift_allocObject();
  *(v74 + 16) = 0;

  v73[14] = v74;
  v73[2] = 0xD00000000000003ALL;
  v73[3] = v105;
  v73[4] = v71;
  v73[5] = v67;
  v73[6] = v68;
  v73[7] = sub_1D8F71B7C;
  v73[8] = 0;
  v73[9] = sub_1D8F71B78;
  v73[10] = 0;
  v73[11] = sub_1D8E29C9C;
  v73[12] = 0;
  v75 = sub_1D8D21134(v73);

  v76 = v115;
  v115[8] = v75;
  v111 = 0x80000001D91CF3C0;
  v77 = _s18PodcastsFoundation10MTInterestC45predicateForDislikedInterestsShowsAndChannelsSo11NSPredicateCyFZ_0();
  v78 = swift_allocObject();
  *(v78 + 16) = v106;
  v79 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v80 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v81 = [v79 initWithKey:v80 ascending:0];

  *(v78 + 32) = v81;
  v82 = v67;
  v83 = sub_1D9178E1C();
  v84 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v85 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v86 = [v84 initWithEntityName_];

  [v86 setPredicate_];
  v87 = sub_1D91785DC();

  [v86 setSortDescriptors_];

  [v86 setFetchBatchSize_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB77D0, &unk_1D9198FD8);
  v88 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v89 = swift_allocObject();
  *(v89 + 16) = 0;

  v88[14] = v89;
  v90 = v111;
  v88[2] = 0xD000000000000040;
  v88[3] = v90;
  v88[4] = v86;
  v88[5] = v82;
  v88[6] = v83;
  v88[7] = sub_1D8F71420;
  v88[8] = 0;
  v88[9] = sub_1D8F71B78;
  v88[10] = 0;
  v88[11] = sub_1D8E29C9C;
  v88[12] = 0;
  v91 = sub_1D8D21568(v88);

  v76[9] = v91;
  v92 = objc_opt_self();
  v93 = [v92 _applePodcastsFoundationSharedUserDefaults];
  v94 = NSUserDefaults.BOOLPublisher(forKey:)(0xD000000000000027, 0x80000001D91CF080);

  v76[11] = v94;
  v95 = [v92 _applePodcastsFoundationSharedUserDefaults];
  v96 = sub_1D917820C();
  v98 = NSUserDefaults.integerPublisher(forKey:)(v96, v97);

  v76[10] = v98;
  v99 = [objc_opt_self() defaultCenter];
  v100 = v107;
  sub_1D9178FCC();

  swift_allocObject();
  swift_weakInit();
  sub_1D8CFBD18(&qword_1EDCD5B10, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  v101 = v108;
  sub_1D9177D9C();

  (*(v110 + 8))(v100, v101);
  swift_beginAccess();
  sub_1D917783C();
  swift_endAccess();

  return v76;
}

uint64_t sub_1D8D20A00()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t type metadata accessor for InterestModel(uint64_t a1)
{
  result = qword_1ECAB2750;
  if (!qword_1ECAB2750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8D20A84(uint64_t a1)
{
  result = sub_1D9176E3C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8D20B08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7008, &qword_1D9196470);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7010, &qword_1D9196478);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v14 - v7;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7018, &qword_1D9196480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7020, &qword_1D9196488);
  sub_1D8CF48EC(&qword_1ECAB1878, &qword_1ECAB7018, &qword_1D9196480, &protocol conformance descriptor for FetchedResultsListPublisher<A, B>);
  sub_1D9177B9C();
  v16 = 0;
  v17 = 0;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7028, &qword_1D9196490);
  swift_allocObject();
  sub_1D917795C();
  sub_1D8CF48EC(&qword_1ECAB07F0, &qword_1ECAB7008, &qword_1D9196470, MEMORY[0x1E695BD60]);
  sub_1D8CF48EC(&qword_1ECAB0310, &qword_1ECAB7028, &qword_1D9196490, MEMORY[0x1E695BFA8]);
  v9 = sub_1D9177D2C();

  (*(v3 + 8))(v5, v2);
  v16 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7030, &qword_1D9196498);
  sub_1D8CF48EC(&qword_1ECAB0508, &qword_1ECAB7030, &qword_1D9196498, MEMORY[0x1E695BE88]);
  v10 = sub_1D917796C();

  v16 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7038, &qword_1D91964A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7040, &qword_1D91964A8);
  sub_1D8CF48EC(&qword_1ECAB0AF8, &qword_1ECAB7038, &qword_1D91964A0, MEMORY[0x1E695BCA0]);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1ECAB0B60, &qword_1ECAB7010, &qword_1D9196478, MEMORY[0x1E695BC80]);
  v11 = v15;
  v12 = sub_1D9177B1C();
  (*(v6 + 8))(v8, v11);
  return v12;
}

unint64_t sub_1D8D20F2C()
{
  result = qword_1ECAB17E8;
  if (!qword_1ECAB17E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB17E8);
  }

  return result;
}

id _s18PodcastsFoundation10MTInterestC38predicateForFavoritedInterestsChannelsSo11NSPredicateCyFZ_0()
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189080;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1D8D34978();
  *(v0 + 64) = v2;
  *(v0 + 32) = 0x6C656E6E616863;
  *(v0 + 40) = 0xE700000000000000;
  v3 = sub_1D9178C8C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9189080;
  *(v4 + 56) = v1;
  *(v4 + 64) = v2;
  strcpy((v4 + 32), "interestValue");
  *(v4 + 46) = -4864;
  v5 = sub_1D9178C8C();
  v6 = [v5 AND_];

  return v6;
}

uint64_t sub_1D8D21134(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FC8, &qword_1D9196430);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FD0, &qword_1D9196438);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v14 - v7;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FD8, &qword_1D9196440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FE0, &qword_1D9196448);
  sub_1D8CF48EC(&qword_1ECAB1868, &qword_1ECAB6FD8, &qword_1D9196440, &protocol conformance descriptor for FetchedResultsListPublisher<A, B>);
  sub_1D9177B9C();
  v16 = 0;
  v17 = 0;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FE8, &qword_1D9196450);
  swift_allocObject();
  sub_1D917795C();
  sub_1D8CF48EC(&qword_1ECAB07E0, &qword_1ECAB6FC8, &qword_1D9196430, MEMORY[0x1E695BD60]);
  sub_1D8CF48EC(&qword_1ECAB0300, &qword_1ECAB6FE8, &qword_1D9196450, MEMORY[0x1E695BFA8]);
  v9 = sub_1D9177D2C();

  (*(v3 + 8))(v5, v2);
  v16 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FF0, &qword_1D9196458);
  sub_1D8CF48EC(&qword_1ECAB04F8, &qword_1ECAB6FF0, &qword_1D9196458, MEMORY[0x1E695BE88]);
  v10 = sub_1D917796C();

  v16 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FF8, &qword_1D9196460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7000, &qword_1D9196468);
  sub_1D8CF48EC(&qword_1ECAB0AE8, &qword_1ECAB6FF8, &qword_1D9196460, MEMORY[0x1E695BCA0]);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1ECAB0B50, &qword_1ECAB6FD0, &qword_1D9196438, MEMORY[0x1E695BC80]);
  v11 = v15;
  v12 = sub_1D9177B1C();
  (*(v6 + 8))(v8, v11);
  return v12;
}

uint64_t sub_1D8D21568(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F88, &qword_1D91963F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F90, &qword_1D91963F8);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v14 - v7;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F98, &qword_1D9196400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FA0, &qword_1D9196408);
  sub_1D8CF48EC(&qword_1ECAB1870, &qword_1ECAB6F98, &qword_1D9196400, &protocol conformance descriptor for FetchedResultsListPublisher<A, B>);
  sub_1D9177B9C();
  v16 = 0;
  v17 = 0;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FA8, &qword_1D9196410);
  swift_allocObject();
  sub_1D917795C();
  sub_1D8CF48EC(&qword_1ECAB07E8, &qword_1ECAB6F88, &qword_1D91963F0, MEMORY[0x1E695BD60]);
  sub_1D8CF48EC(&qword_1ECAB0308, &qword_1ECAB6FA8, &qword_1D9196410, MEMORY[0x1E695BFA8]);
  v9 = sub_1D9177D2C();

  (*(v3 + 8))(v5, v2);
  v16 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FB0, &qword_1D9196418);
  sub_1D8CF48EC(&qword_1ECAB0500, &qword_1ECAB6FB0, &qword_1D9196418, MEMORY[0x1E695BE88]);
  v10 = sub_1D917796C();

  v16 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FB8, &qword_1D9196420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FC0, &qword_1D9196428);
  sub_1D8CF48EC(&qword_1ECAB0AF0, &qword_1ECAB6FB8, &qword_1D9196420, MEMORY[0x1E695BCA0]);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1ECAB0B58, &qword_1ECAB6F90, &qword_1D91963F8, MEMORY[0x1E695BC80]);
  v11 = v15;
  v12 = sub_1D9177B1C();
  (*(v6 + 8))(v8, v11);
  return v12;
}

uint64_t NSUserDefaults.BOOLPublisher(forKey:)(void *a1, void *a2)
{
  v35[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v35 - v6;
  v8 = sub_1D9178FBC();
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EB8, &qword_1D9196340);
  v12 = *(v11 - 8);
  v38 = v11;
  v39 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v35 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EC0, &qword_1D9196348);
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v16 = v35 - v15;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EC8, &qword_1D9196350);
  v45 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v37 = v35 - v17;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6ED0, &qword_1D9196358);
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v19 = v35 - v18;
  v20 = swift_allocObject();
  v20[2] = v2;
  v20[3] = a1;
  v35[1] = a2;
  v20[4] = a2;
  v21 = objc_opt_self();

  v35[0] = v2;
  v22 = [v21 defaultCenter];
  sub_1D9178FCC();

  sub_1D8CFD888();
  v23 = sub_1D9178E1C();
  v46 = v23;
  v24 = sub_1D9178DBC();
  (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
  sub_1D8D11A5C(&qword_1EDCD5B10, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1D8D11A5C(&qword_1EDCD0980, sub_1D8CFD888, MEMORY[0x1E69E8028]);
  sub_1D9177CEC();
  sub_1D8D2210C(v7);

  (*(v36 + 8))(v10, v8);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1D8DAF944;
  *(v25 + 24) = v20;
  sub_1D8CF48EC(&qword_1EDCD0BC8, &qword_1ECAB6EB8, &qword_1D9196340, MEMORY[0x1E695BE98]);

  v26 = v38;
  sub_1D9177B9C();

  (*(v39 + 8))(v14, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4698, &qword_1D918A0C8);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D9189080;
  v28 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  LOBYTE(v26) = [v35[0] BOOLForKey_];

  *(v27 + 32) = v26;
  sub_1D8CF48EC(&qword_1EDCD0CA8, &qword_1ECAB6EC0, &qword_1D9196348, MEMORY[0x1E695BD60]);
  v29 = v37;
  v30 = v41;
  sub_1D9177CCC();

  (*(v44 + 8))(v16, v30);
  sub_1D8CF48EC(&qword_1EDCD0E90, &qword_1ECAB6EC8, &qword_1D9196350, MEMORY[0x1E695BCA8]);
  v31 = v43;
  sub_1D9177D6C();
  (*(v45 + 8))(v29, v31);
  v32 = sub_1D8D22174();
  (*(v40 + 8))(v19, v42);
  v46 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6ED8, &qword_1D9196360);
  sub_1D8CF48EC(&qword_1EDCD0B80, &qword_1ECAB6ED8, &qword_1D9196360, MEMORY[0x1E695BED8]);
  v33 = sub_1D9177B1C();

  return v33;
}

uint64_t sub_1D8D220CC()
{

  return swift_deallocObject();
}

uint64_t sub_1D8D2210C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8D22174()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB70F8, &qword_1D9196530);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7100, &qword_1D9196538);
  v4 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v6 = &v12 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6ED0, &qword_1D9196358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7108, &unk_1D919CD70);
  sub_1D8CF48EC(&qword_1EDCD0E80, &qword_1ECAB6ED0, &qword_1D9196358, MEMORY[0x1E695BD38]);
  sub_1D9177B9C();
  LOBYTE(v13) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7110, &qword_1D9196540);
  swift_allocObject();
  sub_1D917795C();
  sub_1D8CF48EC(&qword_1EDCD0CC0, &qword_1ECAB70F8, &qword_1D9196530, MEMORY[0x1E695BD60]);
  sub_1D8CF48EC(&qword_1EDCD0B30, &qword_1ECAB7110, &qword_1D9196540, MEMORY[0x1E695BFA8]);
  v7 = sub_1D9177D2C();

  (*(v1 + 8))(v3, v0);
  v13 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7118, &qword_1D9196548);
  sub_1D8CF48EC(&unk_1EDCD0BD8, &qword_1ECAB7118, &qword_1D9196548, MEMORY[0x1E695BE88]);
  v8 = sub_1D917796C();

  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7120, &qword_1D9196550);
  sub_1D8CF48EC(&qword_1EDCD0EA8, &qword_1ECAB7120, &qword_1D9196550, MEMORY[0x1E695BCA0]);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1EDCD0EC0, &qword_1ECAB7100, &qword_1D9196538, MEMORY[0x1E695BC80]);
  v9 = v12;
  v10 = sub_1D9177B1C();
  (*(v4 + 8))(v6, v9);
  return v10;
}

uint64_t NSUserDefaults.integerPublisher(forKey:)(void *a1, void *a2)
{
  v36[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v36 - v6;
  v8 = sub_1D9178FBC();
  v37 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EB8, &qword_1D9196340);
  v12 = *(v11 - 8);
  v39 = v11;
  v40 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v36 - v13;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EE0, &qword_1D9196368);
  v45 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v16 = v36 - v15;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EE8, &qword_1D9196370);
  v46 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v38 = v36 - v17;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EF0, &qword_1D9196378);
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v19 = v36 - v18;
  v20 = swift_allocObject();
  v20[2] = v2;
  v20[3] = a1;
  v36[1] = a2;
  v20[4] = a2;
  v21 = objc_opt_self();

  v36[0] = v2;
  v22 = [v21 defaultCenter];
  sub_1D9178FCC();

  sub_1D8CFD888();
  v23 = sub_1D9178E1C();
  v47 = v23;
  v24 = sub_1D9178DBC();
  (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
  sub_1D8D11A5C(&qword_1EDCD5B10, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1D8D11A5C(&qword_1EDCD0980, sub_1D8CFD888, MEMORY[0x1E69E8028]);
  sub_1D9177CEC();
  sub_1D8D2210C(v7);

  (*(v37 + 8))(v10, v8);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1D8DAF8AC;
  *(v25 + 24) = v20;
  sub_1D8CF48EC(&qword_1EDCD0BC8, &qword_1ECAB6EB8, &qword_1D9196340, MEMORY[0x1E695BE98]);

  v26 = v39;
  sub_1D9177B9C();

  (*(v40 + 8))(v14, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8680, &qword_1D9191FB0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D9189080;
  v28 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v29 = [v36[0] integerForKey_];

  *(v27 + 32) = v29;
  sub_1D8CF48EC(&qword_1EDCD0CA0, &qword_1ECAB6EE0, &qword_1D9196368, MEMORY[0x1E695BD60]);
  v30 = v38;
  v31 = v42;
  sub_1D9177CCC();

  (*(v45 + 8))(v16, v31);
  sub_1D8CF48EC(&qword_1EDCD0E88, &qword_1ECAB6EE8, &qword_1D9196370, MEMORY[0x1E695BCA8]);
  v32 = v44;
  sub_1D9177D6C();
  (*(v46 + 8))(v30, v32);
  v33 = sub_1D8D22CBC();
  (*(v41 + 8))(v19, v43);
  v47 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58A0, &qword_1D9190BC8);
  sub_1D8CF48EC(&qword_1EDCD0B70, &qword_1ECAB58A0, &qword_1D9190BC8, MEMORY[0x1E695BED8]);
  v34 = sub_1D9177B1C();

  return v34;
}

uint64_t sub_1D8D22CBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB70D0, &qword_1D9196508);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB70D8, &qword_1D9196510);
  v4 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v6 = &v12 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EF0, &qword_1D9196378);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47F8, &qword_1D918A528);
  sub_1D8CF48EC(&qword_1EDCD0E78, &qword_1ECAB6EF0, &qword_1D9196378, MEMORY[0x1E695BD38]);
  sub_1D9177B9C();
  v14 = 0;
  v15 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB70E0, &qword_1D9196518);
  swift_allocObject();
  sub_1D917795C();
  sub_1D8CF48EC(&qword_1EDCD0CB8, &qword_1ECAB70D0, &qword_1D9196508, MEMORY[0x1E695BD60]);
  sub_1D8CF48EC(&qword_1EDCD0B28, &qword_1ECAB70E0, &qword_1D9196518, MEMORY[0x1E695BFA8]);
  v7 = sub_1D9177D2C();

  (*(v1 + 8))(v3, v0);
  v14 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB70E8, &qword_1D9196520);
  sub_1D8CF48EC(&qword_1EDCD0BD0, &qword_1ECAB70E8, &qword_1D9196520, MEMORY[0x1E695BE88]);
  v8 = sub_1D917796C();

  v14 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB70F0, &qword_1D9196528);
  sub_1D8CF48EC(&qword_1EDCD0EA0, &qword_1ECAB70F0, &qword_1D9196528, MEMORY[0x1E695BCA0]);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1EDCD0EB8, &qword_1ECAB70D8, &qword_1D9196510, MEMORY[0x1E695BC80]);
  v9 = v13;
  v10 = sub_1D9177B1C();
  (*(v4 + 8))(v6, v9);
  return v10;
}

uint64_t sub_1D8D230C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D8D2310C(uint64_t a1)
{
  result = sub_1D8D230C4(&qword_1EDCD5120, type metadata accessor for EpisodePlayState, &protocol conformance descriptor for EpisodePlayState);
  *(a1 + 8) = result;
  return result;
}

uint64_t defaultEpisodePlayTransitionRules.getter()
{
  if (qword_1EDCD17C0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D8D23260()
{
  v0 = type metadata accessor for EpisodePlayState(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v56 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v56 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v56 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v56 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v56 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v56 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA878, &qword_1D91B8018);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9195F30;
  swift_storeEnumTagMultiPayload();
  sub_1D8D239FC(v26, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1D8D23A60(v26);
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v29 = v2;
      if (EnumCaseMultiPayload == 1)
      {
        v30 = 0xE700000000000000;
        v31 = 0x6C616974726170;
      }

      else
      {
        sub_1D8CF5EF8(v23);
        v30 = 0xE600000000000000;
        v31 = 0x646579616C70;
      }

      goto LABEL_13;
    }

    v30 = 0xE700000000000000;
    v32 = 1684956528;
LABEL_10:
    v31 = v32 | 0x676E6900000000;
    v29 = v2;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v30 = 0xE700000000000000;
    v32 = 2036427888;
    goto LABEL_10;
  }

  v29 = v2;
  if (EnumCaseMultiPayload == 4)
  {
    v30 = 0xE800000000000000;
    v31 = 0x646579616C706E75;
  }

  else
  {
    v30 = 0xE700000000000000;
    v31 = 0x6E776F6E6B6E75;
  }

LABEL_13:
  v33 = v57;
  v34 = v56;
  *(inited + 32) = v31;
  *(inited + 40) = v30;
  *(inited + 48) = sub_1D90FE3FC;
  *(inited + 56) = 0;
  *v20 = 0;
  v20[1] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1D8D239FC(v20, v17);
  v35 = swift_getEnumCaseMultiPayload();
  sub_1D8D23A60(v20);
  if (v35 <= 2)
  {
    if (v35)
    {
      if (v35 == 1)
      {
        v36 = 0xE700000000000000;
        v37 = 0x6C616974726170;
      }

      else
      {
        sub_1D8CF5EF8(v17);
        v36 = 0xE600000000000000;
        v37 = 0x646579616C70;
      }

      goto LABEL_25;
    }

    v36 = 0xE700000000000000;
    v38 = 1684956528;
LABEL_22:
    v37 = v38 | 0x676E6900000000;
    goto LABEL_25;
  }

  if (v35 == 3)
  {
    v36 = 0xE700000000000000;
    v38 = 2036427888;
    goto LABEL_22;
  }

  if (v35 == 4)
  {
    v36 = 0xE800000000000000;
    v37 = 0x646579616C706E75;
  }

  else
  {
    v36 = 0xE700000000000000;
    v37 = 0x6E776F6E6B6E75;
  }

LABEL_25:
  *(inited + 64) = v37;
  *(inited + 72) = v36;
  *(inited + 80) = sub_1D90FE400;
  *(inited + 88) = 0;
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA858, &qword_1D91B8020) + 48);
  v40 = sub_1D9176E3C();
  (*(*(v40 - 8) + 56))(v14, 1, 1, v40);
  v14[v39] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1D8D239FC(v14, v34);
  v41 = swift_getEnumCaseMultiPayload();
  sub_1D8D23A60(v14);
  if (v41 <= 2)
  {
    if (v41)
    {
      if (v41 == 1)
      {
        v42 = 0xE700000000000000;
        v43 = 0x6C616974726170;
      }

      else
      {
        sub_1D8CF5EF8(v34);
        v42 = 0xE600000000000000;
        v43 = 0x646579616C70;
      }

      goto LABEL_37;
    }

    v42 = 0xE700000000000000;
    v44 = 1684956528;
LABEL_34:
    v43 = v44 | 0x676E6900000000;
    goto LABEL_37;
  }

  if (v41 == 3)
  {
    v42 = 0xE700000000000000;
    v44 = 2036427888;
    goto LABEL_34;
  }

  if (v41 == 4)
  {
    v42 = 0xE800000000000000;
    v43 = 0x646579616C706E75;
  }

  else
  {
    v42 = 0xE700000000000000;
    v43 = 0x6E776F6E6B6E75;
  }

LABEL_37:
  *(inited + 96) = v43;
  *(inited + 104) = v42;
  *(inited + 112) = sub_1D90FE404;
  *(inited + 120) = 0;
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 15) = 0;
  swift_storeEnumTagMultiPayload();
  sub_1D8D239FC(v9, v33);
  v45 = swift_getEnumCaseMultiPayload();
  sub_1D8D23A60(v9);
  if (v45 <= 2)
  {
    if (v45)
    {
      if (v45 == 1)
      {
        v46 = 0xE700000000000000;
        v47 = 0x6C616974726170;
      }

      else
      {
        sub_1D8CF5EF8(v33);
        v46 = 0xE600000000000000;
        v47 = 0x646579616C70;
      }

      goto LABEL_49;
    }

    v46 = 0xE700000000000000;
    v48 = 1684956528;
LABEL_46:
    v47 = v48 | 0x676E6900000000;
    goto LABEL_49;
  }

  if (v45 == 3)
  {
    v46 = 0xE700000000000000;
    v48 = 2036427888;
    goto LABEL_46;
  }

  if (v45 == 4)
  {
    v46 = 0xE800000000000000;
    v47 = 0x646579616C706E75;
  }

  else
  {
    v46 = 0xE700000000000000;
    v47 = 0x6E776F6E6B6E75;
  }

LABEL_49:
  *(inited + 128) = v47;
  *(inited + 136) = v46;
  *(inited + 144) = sub_1D90FE408;
  *(inited + 152) = 0;
  v49 = v58;
  swift_storeEnumTagMultiPayload();
  sub_1D8D239FC(v49, v29);
  v50 = swift_getEnumCaseMultiPayload();
  sub_1D8D23A60(v49);
  if (v50 <= 2)
  {
    if (v50)
    {
      if (v50 == 1)
      {
        v51 = 0xE700000000000000;
        v52 = 0x6C616974726170;
      }

      else
      {
        sub_1D8CF5EF8(v29);
        v51 = 0xE600000000000000;
        v52 = 0x646579616C70;
      }

      goto LABEL_61;
    }

    v51 = 0xE700000000000000;
    v53 = 1684956528;
LABEL_58:
    v52 = v53 | 0x676E6900000000;
    goto LABEL_61;
  }

  if (v50 == 3)
  {
    v51 = 0xE700000000000000;
    v53 = 2036427888;
    goto LABEL_58;
  }

  if (v50 == 4)
  {
    v51 = 0xE800000000000000;
    v52 = 0x646579616C706E75;
  }

  else
  {
    v51 = 0xE700000000000000;
    v52 = 0x6E776F6E6B6E75;
  }

LABEL_61:
  *(inited + 160) = v52;
  *(inited + 168) = v51;
  *(inited + 176) = sub_1D8E3B050;
  *(inited + 184) = 0;
  v54 = sub_1D8D23ABC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA880, qword_1D91B8028);
  result = swift_arrayDestroy();
  qword_1EDCD17C8 = v54;
  return result;
}

uint64_t sub_1D8D239FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodePlayState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8D23A60(uint64_t a1)
{
  v2 = type metadata accessor for EpisodePlayState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D8D23AD8()
{
  result = qword_1EDCD5118;
  if (!qword_1EDCD5118)
  {
    type metadata accessor for EpisodePlayState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5118);
  }

  return result;
}

unint64_t sub_1D8D23B30(uint64_t a1)
{
  result = sub_1D8D23B58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D8D23B58()
{
  result = qword_1EDCD3990;
  if (!qword_1EDCD3990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD3990);
  }

  return result;
}

uint64_t sub_1D8D23BB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA808, &qword_1D91B79C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D918A530;
  strcpy((inited + 32), "notBookmarked");
  *(inited + 46) = -4864;
  *(inited + 48) = sub_1D90FA600;
  *(inited + 56) = 0;
  *(inited + 64) = 0x6B72616D6B6F6F62;
  *(inited + 72) = 0xEA00000000006465;
  *(inited + 80) = sub_1D90FA60C;
  *(inited + 88) = 0;
  v1 = sub_1D8D23D18(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA810, qword_1D91B79C8);
  result = swift_arrayDestroy();
  qword_1EDCD13C8 = v1;
  return result;
}

uint64_t defaultEpisodeBookmarkTransitionRules.getter()
{
  if (qword_1EDCD13C0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1D8D23D30()
{
  result = qword_1EDCD3988;
  if (!qword_1EDCD3988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD3988);
  }

  return result;
}

id sub_1D8D23E3C()
{
  v0 = type metadata accessor for FeedManagerLocalConfiguration();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_timeoutIntervalForResource] = 0x4072C00000000000;
  v1[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration__workQueueConcurrent] = 1;
  v1[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_useBackgroundFetchForFeedDownloads] = 0;
  v1[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_keepsFeedFileInTempDirAfterDownload] = 0;
  v1[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration__supportsBatchInsertion] = 0;
  v1[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_usesCleanEpisodeTitles] = 1;
  *&v1[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_concurrentDeltaUpdateLimit] = 3;
  *&v1[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_concurrentBootstrapUpdateLimit] = 2;
  *&v1[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_concurrentRSSUpdateLimit] = 3;
  v2 = &v1[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_deltaNumberOfEpisodesToRequestPerPage];
  *v2 = 0;
  v2[8] = 1;
  v4.receiver = v1;
  v4.super_class = v0;
  result = objc_msgSendSuper2(&v4, sel_init);
  qword_1EDCD23F0 = result;
  return result;
}

os_log_t _MTLogCategoryFeedUpdate()
{
  v0 = os_log_create("com.apple.podcasts", "FeedUpdate");

  return v0;
}

id PodcastFeedDownloader.init()()
{
  v0 = type metadata accessor for MediaRequestController();
  v1 = [objc_allocWithZone(v0) init];
  v12[3] = v0;
  v12[4] = &protocol witness table for MediaRequestController;
  v12[0] = v1;
  v2 = type metadata accessor for PodcastFeedDownloader();
  v3 = objc_allocWithZone(v2);
  v4 = v3 + OBJC_IVAR____TtC18PodcastsFoundation21PodcastFeedDownloader_mediaRequestController;
  sub_1D8CFD9D8(v12, v3 + OBJC_IVAR____TtC18PodcastsFoundation21PodcastFeedDownloader_mediaRequestController);
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  v7 = *(v6 + 16);
  v8 = v1;
  v7(1, v5, v6);
  swift_endAccess();
  v11.receiver = v3;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

uint64_t sub_1D8D24100(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_cachePolicy;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t sub_1D8D24154(uint64_t a1)
{
  sub_1D8D241C8(a1);

  return swift_unknownObjectRelease();
}

id sub_1D8D241C8(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return sub_1D8D2424C();
}

id sub_1D8D2424C()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0));
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  swift_beginAccess();
  return [v1 setDownloadManager_];
}

Swift::Void __swiftcall EpisodeStateRepository.startObservingChanges()()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository_episodeStatePersistentHistoryTracker);
  v2 = *(v1 + 24);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1D8D244B0;
  *(v3 + 24) = v1;
  v5[4] = sub_1D8D24508;
  v5[5] = v3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1D8D24488;
  v5[3] = &block_descriptor_91;
  v4 = _Block_copy(v5);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

uint64_t sub_1D8D24510(void *a1)
{
  v111 = a1;
  v1 = sub_1D917744C();
  v2 = *(v1 - 8);
  v109 = v1;
  v110 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v108 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v107 = &v86 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA8F8, &unk_1D91B9128);
  v103 = *(v6 - 8);
  v104 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v86 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v100 = &v86 - v9;
  v101 = sub_1D9178FBC();
  v99 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v98 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA900, &qword_1D91B9138);
  v105 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v86 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA908, &qword_1D91B9140);
  v106 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA910, &qword_1D91B9148);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v86 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA918, &unk_1D91B9150);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v86 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F60, &qword_1D91963C8);
  v29 = MEMORY[0x1EEE9AC00](v25);
  if (v111[5])
  {
    v30 = v111;
    if (qword_1ECAAFC40 != -1)
    {
      swift_once();
    }

    v31 = v109;
    v32 = __swift_project_value_buffer(v109, qword_1ECAAFC48);
    swift_beginAccess();
    v33 = v110;
    v34 = v108;
    (v110)[2](v108, v32, v31);

    v35 = sub_1D917741C();
    v36 = sub_1D9178CEC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 136315138;
      v112 = v30[5];
      v113[0] = v38;
      v39 = v112;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA928, &qword_1D91B9168);
      v40 = sub_1D917826C();
      v42 = sub_1D8CFA924(v40, v41, v113);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_1D8CEC000, v35, v36, "Skipping startTrackingChanges(): Already tracking changes with current token: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1DA72CB90](v38, -1, -1);
      MEMORY[0x1DA72CB90](v37, -1, -1);
    }

    return (v33[1])(v34, v31);
  }

  else
  {
    v86 = v13;
    v87 = v11;
    v88 = v16;
    v89 = v14;
    v90 = &v86 - v27;
    v91 = v20;
    v92 = v24;
    v93 = v28;
    v94 = v18;
    v95 = v17;
    v96 = v22;
    v97 = v21;
    v108 = v26;
    v44 = v111[4];
    v45 = v111;
    v46 = [v44 persistentStoreCoordinator];
    if (v46 && (v47 = v46, v48 = [v46 currentPersistentHistoryTokenFromStores_], v47, v48))
    {
      v49 = v45[5];
      v45[5] = v48;
      v50 = v48;
      v110 = v50;

      sub_1D8D2545C();
      v51 = [objc_opt_self() defaultCenter];
      v52 = v98;
      sub_1D9178FCC();

      v53 = v45[3];
      v54 = sub_1D9178DBC();
      v55 = v100;
      (*(*(v54 - 8) + 56))(v100, 1, 1, v54);
      v113[1] = v53;
      sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
      sub_1D8CFD7B0(&qword_1EDCD5B10, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
      sub_1D8CF3274(&qword_1EDCD0980, &qword_1EDCD7B70, 0x1E69E9610, MEMORY[0x1E69E8028]);
      v57 = v101;
      v56 = v102;
      sub_1D9177D3C();
      sub_1D8CF48EC(&qword_1ECAB0988, &qword_1ECABA8F8, &unk_1D91B9128, MEMORY[0x1E695BCB8]);
      v58 = v86;
      v59 = v104;
      sub_1D9177CEC();
      (*(v103 + 8))(v56, v59);
      sub_1D8D08A50(v55, &qword_1ECAB4D70, &unk_1D918BCE0);
      (*(v99 + 8))(v52, v57);
      swift_allocObject();
      swift_weakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA930, &qword_1D91B9170);
      sub_1D8CF48EC(&qword_1ECAB03A8, &qword_1ECABA900, &qword_1D91B9138, MEMORY[0x1E695BE98]);
      v60 = v88;
      v61 = v87;
      sub_1D9177B9C();

      (*(v105 + 8))(v58, v61);
      sub_1D91777FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA938, &qword_1D91B9178);
      sub_1D8CF48EC(&unk_1ECAB0720, &qword_1ECABA908, &qword_1D91B9140, MEMORY[0x1E695BD60]);
      sub_1D8CF48EC(&qword_1EDCD0BF0, &qword_1ECABA938, &qword_1D91B9178, MEMORY[0x1E695BE60]);
      v62 = v91;
      v63 = v89;
      sub_1D9177DDC();
      (*(v106 + 8))(v60, v63);
      swift_allocObject();
      swift_weakInit();
      sub_1D8CF48EC(&qword_1ECAB0548, &qword_1ECABA910, &qword_1D91B9148, MEMORY[0x1E695BE40]);
      v64 = v92;
      v65 = v95;
      sub_1D9177B2C();

      (*(v94 + 8))(v62, v65);
      swift_allocObject();
      swift_weakInit();
      v66 = v90;
      v67 = v97;
      sub_1D917757C();

      (*(v96 + 8))(v64, v67);
      v68 = sub_1D8D256B8();

      (*(v93 + 8))(v66, v108);
      v45[2] = v68;
    }

    else
    {
      if (qword_1ECAAFC40 != -1)
      {
        swift_once();
      }

      v69 = v109;
      v70 = __swift_project_value_buffer(v109, qword_1ECAAFC48);
      swift_beginAccess();
      v71 = v110;
      v72 = v107;
      (v110)[2](v107, v70, v69);

      v73 = sub_1D917741C();
      v74 = sub_1D9178CFC();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v113[0] = v76;
        *v75 = 136315394;
        v112 = [v44 persistentStoreCoordinator];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA920, &qword_1D91B9160);
        v77 = sub_1D917826C();
        v79 = sub_1D8CFA924(v77, v78, v113);

        *(v75 + 4) = v79;
        *(v75 + 12) = 2080;
        v80 = [v44 persistentStoreCoordinator];
        if (v80)
        {
          v81 = v80;
          v82 = [v80 currentPersistentHistoryTokenFromStores_];
        }

        else
        {
          v82 = 0;
        }

        v112 = v82;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA928, &qword_1D91B9168);
        v83 = sub_1D917826C();
        v85 = sub_1D8CFA924(v83, v84, v113);

        *(v75 + 14) = v85;
        _os_log_impl(&dword_1D8CEC000, v73, v74, "Unable to fetch initial Persistent History Token, we can't monitor changes from EpisodeStateRepository. persistentStoreCoordinator %s, token %s", v75, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v76, -1, -1);
        MEMORY[0x1DA72CB90](v75, -1, -1);

        return (v71[1])(v107, v69);
      }

      else
      {

        return (v71[1])(v72, v69);
      }
    }
  }
}

uint64_t sub_1D8D253A0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t Synchronized.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1D8D1665C(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t sub_1D8D2545C()
{
  v1 = v0;
  v2 = sub_1D917744C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAAFC40 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_1ECAAFC48);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);

  v7 = sub_1D917741C();
  v8 = sub_1D9178CEC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136315138;
    v17 = *(v1 + 40);
    v18 = v10;
    v11 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA928, &qword_1D91B9168);
    v12 = sub_1D917826C();
    v14 = sub_1D8CFA924(v12, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1D8CEC000, v7, v8, "New persistent history token %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1DA72CB90](v10, -1, -1);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D8D256B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F50, &qword_1D91963B8);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F58, &qword_1D91963C0);
  v4 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v6 = &v12 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F60, &qword_1D91963C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F68, &qword_1D91963D0);
  v13 = MEMORY[0x1E695BC80];
  sub_1D8CF48EC(&qword_1ECAB0B80, &qword_1ECAB6F60, &qword_1D91963C8, MEMORY[0x1E695BC80]);
  sub_1D9177B9C();
  v15 = 0;
  v16 = 0;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F70, &qword_1D91963D8);
  swift_allocObject();
  sub_1D917795C();
  sub_1D8CF48EC(&qword_1ECAB07B0, &qword_1ECAB6F50, &qword_1D91963B8, MEMORY[0x1E695BD60]);
  sub_1D8CF48EC(&qword_1EDCD0B38, &qword_1ECAB6F70, &qword_1D91963D8, MEMORY[0x1E695BFA8]);
  v7 = sub_1D9177D2C();

  (*(v1 + 8))(v3, v0);
  v15 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F78, &qword_1D91963E0);
  sub_1D8CF48EC(&qword_1ECAB04F0, &qword_1ECAB6F78, &qword_1D91963E0, MEMORY[0x1E695BE88]);
  v8 = sub_1D917796C();

  v15 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F80, &qword_1D91963E8);
  sub_1D8CF48EC(&qword_1ECAB0AE0, &qword_1ECAB6F80, &qword_1D91963E8, MEMORY[0x1E695BCA0]);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1ECAB0B38, &qword_1ECAB6F58, &qword_1D91963C0, v13);
  v9 = v14;
  v10 = sub_1D9177B1C();
  (*(v4 + 8))(v6, v9);
  return v10;
}

uint64_t sub_1D8D25AE0()
{
  v1 = *(*v0 + 80);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for AnyEpisodeStateDataSource(0, v1, AssociatedConformanceWitness, v3);

  if (sub_1D91786AC())
  {
    v4 = 4;
    do
    {
      v5 = v4 - 4;
      v6 = sub_1D917868C();
      sub_1D917862C();
      if (v6)
      {

        v7 = v4 - 3;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1D91794BC();
        v7 = v4 - 3;
        if (__OFADD__(v5, 1))
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      sub_1D8D244E0();

      ++v4;
    }

    while (v7 != sub_1D91786AC());
  }
}

uint64_t sub_1D8D25C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_projectBox();
  swift_beginAccess();
  (*(v6 + 16))(v8, v9, a3);
  (*(a4 + 24))(a3, a4);
  return (*(v6 + 8))(v8, a3);
}

uint64_t sub_1D8D25D6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8D25DDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8D25E44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t EpisodeStateRepository.publisherForChanges(in:)(unsigned __int8 *a1)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA960, &qword_1D91B9220);
  v3 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v5 = &v16[-v4];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA968, &qword_1D91B9228);
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v16[-v6];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA970, &qword_1D91B9230);
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v9 = &v16[-v8];
  v17 = *a1;
  v10 = *(*(v1 + OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository_episodeStatePersistentHistoryTracker) + 16);
  v23 = *(v1 + 24);
  v24 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA978, &qword_1D91B9238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA958, &unk_1D91B9210);
  sub_1D8CF48EC(&qword_1EDCD0BA8, &qword_1ECABA978, &qword_1D91B9238, MEMORY[0x1E695BED8]);
  sub_1D8CF48EC(&qword_1EDCD0B58, &qword_1ECABA958, &unk_1D91B9210, MEMORY[0x1E695BF88]);
  sub_1D91776BC();
  *(swift_allocObject() + 16) = v17;
  sub_1D8CF48EC(&qword_1EDCD0C90, &qword_1ECABA960, &qword_1D91B9220, MEMORY[0x1E695BDC0]);
  v11 = v18;
  sub_1D9177B9C();

  (*(v3 + 8))(v5, v11);
  sub_1D8CF48EC(&qword_1EDCD0CB0, &qword_1ECABA968, &qword_1D91B9228, MEMORY[0x1E695BD60]);
  v12 = v20;
  sub_1D9177C4C();
  (*(v22 + 8))(v7, v12);
  sub_1D8CF48EC(&qword_1EDCD0C70, &qword_1ECABA970, &qword_1D91B9230, MEMORY[0x1E695BDE0]);
  v13 = v19;
  v14 = sub_1D9177B1C();
  (*(v21 + 8))(v9, v13);
  return v14;
}

uint64_t sub_1D8D26304(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8D26344(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D8D2638C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  return sub_1D8D263A4(v3, v2, v4);
}

uint64_t sub_1D8D263A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

id static SyncKeysRepository.shared.getter()
{
  if (qword_1ECAB1F70 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECAB1F78;

  return v1;
}

uint64_t PodcastsStateCoordinatorPersistentStore.init(syncKeysRepository:)(uint64_t a1)
{
  *(v1 + 16) = [objc_allocWithZone(type metadata accessor for FeedURLComposer()) init];
  *(v1 + 24) = a1;
  return v1;
}

unint64_t sub_1D8D264F8()
{
  result = qword_1EDCD49C8;
  if (!qword_1EDCD49C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD49C8);
  }

  return result;
}

uint64_t sub_1D8D26560(char *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v6 = *(a3 + 48);
    v7 = *(a3 + 32);
    v11[0] = *(a3 + 16);
    v11[1] = v7;
    v12 = v6;
    v10 = type metadata accessor for CacheDomain.DiskCaches(0, v11);
    return (*(*(v10 - 8) + 48))(&a1[*(a3 + 60)], a2, v10);
  }
}

uint64_t sub_1D8D26634()
{
  v7 = sub_1D9178E0C();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1D8CFD888();
  sub_1D9177E5C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1D8D0EF30(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1D9178E4C();
  qword_1EDCD5B28 = result;
  return result;
}

uint64_t AssetCache.eraseToAnyAssetCache()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1, v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  return AnyAssetCache.init<A>(source:)(v9, AssociatedTypeWitness, v12, a1, a2, a3);
}

uint64_t AnyAssetCache.init<A>(source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v35 = a5;
  v36 = a1;
  v40 = a6;
  v41 = a3;
  v37 = a2;
  v9 = *(a4 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v38 = v11;
  v39 = v13;
  (v13)(v12, v10);
  v14 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  v16 = v41;
  *(v15 + 3) = v41;
  *(v15 + 4) = a4;
  *(v15 + 5) = a5;
  v17 = *(v9 + 32);
  v17(v15 + v14, v12, a4);
  v34 = v17;
  v18 = v39;
  v19 = v40;
  *v40 = sub_1D8E6B16C;
  v19[1] = v15;
  v20 = v36;
  v18(v12, v36, a4);
  v21 = swift_allocObject();
  *(v21 + 2) = v37;
  *(v21 + 3) = v16;
  v22 = v35;
  *(v21 + 4) = a4;
  *(v21 + 5) = v22;
  v17(v21 + v14, v12, a4);
  v23 = v39;
  v24 = v40;
  v40[2] = sub_1D8E6B1D4;
  v24[3] = v21;
  v23(v12, v20, a4);
  v25 = swift_allocObject();
  v26 = v37;
  v27 = v41;
  *(v25 + 2) = v37;
  *(v25 + 3) = v27;
  *(v25 + 4) = a4;
  *(v25 + 5) = v22;
  v28 = v34;
  v34(v25 + v14, v12, a4);
  v29 = v40;
  v40[4] = sub_1D8E6B23C;
  v29[5] = v25;
  v30 = v29;
  v28(v12, v36, a4);
  v31 = swift_allocObject();
  v32 = v41;
  *(v31 + 2) = v26;
  *(v31 + 3) = v32;
  *(v31 + 4) = a4;
  *(v31 + 5) = v22;
  result = (v28)(v31 + v14, v12, a4);
  v30[6] = sub_1D8E6B2A8;
  v30[7] = v31;
  return result;
}

uint64_t sub_1D8D26C78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t static UniformBucketingStrategy.uniform3000MaxStrategy.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECAB1930 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1ECAB1940;
  *a1 = qword_1ECAB1938;
  a1[1] = v2;
}

uint64_t sub_1D8D26D4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4770, &unk_1D918BAD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D918B9B0;
  *(v0 + 32) = xmmword_1D918B9C0;
  *(v0 + 48) = xmmword_1D918B9D0;
  *(v0 + 64) = xmmword_1D918B9E0;
  *(v0 + 80) = xmmword_1D918B9F0;
  *(v0 + 96) = xmmword_1D918BA00;
  *(v0 + 112) = 0x4082C00000000000;
  *(v0 + 120) = xmmword_1D918BA10;
  *(v0 + 136) = xmmword_1D918BA20;
  *(v0 + 152) = xmmword_1D918BA30;
  *(v0 + 168) = xmmword_1D918BA40;
  v2 = v0;

  sub_1D8D26E64(&v2);

  qword_1ECAB1938 = 0x40A7700000000000;
  qword_1ECAB1940 = v2;
  return result;
}

uint64_t sub_1D8D26E64(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8D2709C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1D9179A2C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_1D917867C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_1D8E59848(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

char *sub_1D8D26F98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4770, &unk_1D918BAD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

__n128 EpisodeListSettings.init(_:sort:pubDateLimit:hidePlayedEpisodes:hideTrailers:hideVideoEpisodes:hideUnentitledContent:)@<Q0>(__n128 *a1@<X0>, unsigned int a2@<W1>, unint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, __n128 *a8@<X8>)
{
  if (a2 != 17)
  {
    goto LABEL_23;
  }

  a2 = a1[4].n128_u8[0];
  if (a2 <= 4)
  {
    if (a1[4].n128_u8[0] > 1u)
    {
      if (a2 == 2)
      {
        LOBYTE(a2) = 9;
        goto LABEL_23;
      }

      goto LABEL_9;
    }

    if (!a1[4].n128_u8[0])
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (a1[4].n128_u8[0] <= 7u)
  {
    if (a2 != 5)
    {
      if (a2 == 6)
      {
        LOBYTE(a2) = 13;
      }

      goto LABEL_23;
    }

LABEL_9:
    LOBYTE(a2) = 2;
    goto LABEL_23;
  }

  if (a2 == 8 || a2 == 9)
  {
    goto LABEL_17;
  }

  v8 = a1->n128_u64[0];
  v9 = a1->n128_u64[1];
  v10 = a1[2].n128_u64[1];
  v11 = a1[3].n128_u64[0] | a1[3].n128_u64[1];
  v12 = a1[2].n128_u64[0] | a1[1].n128_u64[1] | a1[1].n128_u64[0];
  if (!(v11 | a1->n128_u64[0] | v10 | v12 | v9))
  {
    LOBYTE(a2) = 14;
    goto LABEL_23;
  }

  v13 = v11 | v10 | v12 | v9;
  if (v8 == 1 && !v13)
  {
    goto LABEL_15;
  }

  if (v8 == 2 && !v13)
  {
    LOBYTE(a2) = 15;
    goto LABEL_23;
  }

  if (v8 == 3 && !v13)
  {
LABEL_17:
    LOBYTE(a2) = 0;
    goto LABEL_23;
  }

  if (v8 == 4 && !v13)
  {
LABEL_15:
    LOBYTE(a2) = 12;
    goto LABEL_23;
  }

  if (v8 == 5 && !v13)
  {
    goto LABEL_9;
  }

  if (v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v8 == 6;
  }

  if (v16)
  {
    LOBYTE(a2) = 7;
  }

  else
  {
    LOBYTE(a2) = 16;
  }

LABEL_23:
  v14 = a1[3];
  a8[2] = a1[2];
  a8[3] = v14;
  a8[4].n128_u8[0] = a1[4].n128_u8[0];
  result = a1[1];
  *a8 = *a1;
  a8[1] = result;
  a8[4].n128_u8[1] = a2;
  a8[4].n128_u64[1] = a3;
  a8[5].n128_u8[0] = a4 & 1;
  a8[5].n128_u8[1] = a5 & 1;
  a8[5].n128_u8[2] = a6 & 1;
  *(&a8[5].n128_u16[1] + 1) = a7 & 1;
  return result;
}

uint64_t EpisodeListType.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[64];
  v6 = (*(v0 + 1) << 8) | ((*(v0 + 5) | (v0[7] << 16)) << 40) | v1;
  if (v5 <= 4)
  {
    if (v0[64] <= 1u)
    {
      if (v0[64])
      {
        return 0xD000000000000011;
      }

      else
      {
        return 0xD000000000000019;
      }
    }

    if (v5 == 2)
    {
      v20[0] = 0;
      v20[1] = 0xE000000000000000;
      sub_1D917946C();

      v12 = 0x80000001D91D0960;
      v13 = 0xD000000000000013;
LABEL_29:
      v20[0] = v13;
      v20[1] = v12;
      goto LABEL_30;
    }

    if (v5 == 3)
    {
      sub_1D917946C();

      strcpy(v20, "allAvailable(");
      HIWORD(v20[1]) = -4864;
LABEL_30:
      MEMORY[0x1DA7298F0](v6, v2);
      goto LABEL_31;
    }

    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_1D917946C();
    MEMORY[0x1DA7298F0](0xD000000000000015, 0x80000001D91D0940);
    type metadata accessor for MTEpisodeTypeFilter(0);
    sub_1D917964C();
    MEMORY[0x1DA7298F0](8236, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7108, &unk_1D919CD70);
    v7 = sub_1D917826C();
LABEL_27:
    MEMORY[0x1DA7298F0](v7, v9);

LABEL_31:
    MEMORY[0x1DA7298F0](41, 0xE100000000000000);
    return v20[0];
  }

  if (v0[64] <= 7u)
  {
    if (v5 != 5)
    {
      if (v5 == 6)
      {
        sub_1D917946C();

        v20[0] = 0xD000000000000010;
        v20[1] = 0x80000001D91D0900;
        if (v1)
        {
          v7 = 1702195828;
        }

        else
        {
          v7 = 0x65736C6166;
        }

        if (v1)
        {
          v8 = 0xE400000000000000;
        }

        else
        {
          v8 = 0xE500000000000000;
        }

        v9 = v8;
        goto LABEL_27;
      }

      v20[0] = 0;
      v20[1] = 0xE000000000000000;
      sub_1D917946C();

      v12 = 0x80000001D91D08E0;
      v13 = 0xD000000000000012;
      goto LABEL_29;
    }

    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_1D917946C();

    v10 = "stationShowEpisodes(";
    goto LABEL_24;
  }

  if (v5 == 8)
  {
    v20[0] = 0x28776F6873;
    v20[1] = 0xE500000000000000;
    MEMORY[0x1DA7298F0](v6, v2);
    MEMORY[0x1DA7298F0](8236, 0xE200000000000000);
    v7 = EpisodeUserFilter.title.getter(v3, v4);
    goto LABEL_27;
  }

  if (v5 == 9)
  {
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_1D917946C();

    v10 = "unfollowLibraryShow(";
LABEL_24:
    v12 = (v10 - 32) | 0x8000000000000000;
    v13 = 0xD000000000000014;
    goto LABEL_29;
  }

  v15 = *(v0 + 6);
  v14 = *(v0 + 7);
  v16 = *(v0 + 4);
  v17 = *(v0 + 5);
  v18 = v3 | v2 | v4;
  if (!(v18 | v14 | v15 | v17 | v6 | v16))
  {
    return 0x64616F6C6E776F64;
  }

  v19 = v18 | v14 | v15 | v17 | v16;
  if (v6 == 1 && !v19)
  {
    return 0x796C746E65636572;
  }

  if (v6 == 2 && !v19)
  {
    return 0x7079746F746F7270;
  }

  if (v6 == 3 && !v19)
  {
    return 0x6F7369704577656ELL;
  }

  if (v6 == 4 && !v19)
  {
    return 0x65756E69746E6F63;
  }

  if (v6 == 5 && !v19)
  {
    return 0x704574736574616CLL;
  }

  if (v6 == 6 && v19 == 0)
  {
    return 0x6B72616D6B6F6F62;
  }

  return 0x706F546863746177;
}

id EpisodeListSettings.predicate.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = v8[2];
  v29 = v8[3];
  v26 = *v8;
  v27 = v8[1];
  v9 = *(v8 + 9);
  v10 = *(v8 + 80);
  v11 = *(v8 + 81);
  v12 = *(v8 + 82);
  v13 = *(v8 + 83);
  v30 = *(v8 + 8);
  LOBYTE(v31) = v10;
  BYTE1(v31) = v11;
  BYTE2(v31) = v12;
  BYTE3(v31) = v13;
  BYTE4(v31) = *(v8 + 84);
  v14 = sub_1D8D27A2C();
  if (v9 == 3)
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [objc_opt_self() predicateForPubDateLimit_];
    v19 = [v14 AND_];

    v14 = v19;
    if ((v10 & 1) == 0)
    {
LABEL_3:
      if ((v11 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v20 = [objc_opt_self() predicateForVisuallyPlayed_];
  v21 = [v14 AND_];

  v14 = v21;
  if ((v11 & 1) == 0)
  {
LABEL_4:
    if ((v12 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v24 = [objc_opt_self() predicateForAudio_];
    v25 = [v14 AND_];

    v14 = v25;
    if (v13)
    {
      goto LABEL_6;
    }

    return v14;
  }

LABEL_9:
  v22 = [objc_opt_self() predicateForEpisodeTypeFilter_];
  v23 = [v14 AND_];

  v14 = v23;
  if (v12)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v13)
  {
LABEL_6:
    v15 = [objc_opt_self() predicateForEntitledEpisodes];
    v16 = [v14 AND_];

    return v16;
  }

  return v14;
}

id sub_1D8D27A2C()
{
  v1 = sub_1D9176C2C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[1];
  v83 = *v0;
  v84 = v5;
  v6 = v0[3];
  v85 = v0[2];
  v86 = v6;
  v87 = *(v0 + 64);
  v7 = v83;
  v8 = v84;
  if (v87 <= 4u)
  {
    if (v87 <= 1u)
    {
      if (v87)
      {
        v50 = *(v83 + 16);
        if (v50)
        {
          v82 = MEMORY[0x1E69E7CC0];

          sub_1D8E3151C(0, v50, 0);
          v51 = v82;
          v53 = *(v2 + 16);
          v52 = v2 + 16;
          v54 = v7 + ((*(v52 + 64) + 32) & ~*(v52 + 64));
          v78 = *(v52 + 56);
          v79 = v53;
          do
          {
            v79(v4, v54, v1);
            v55 = sub_1D9176ACC();
            v81 = MEMORY[0x1E69E6158];
            *&v80 = v55;
            *(&v80 + 1) = v56;
            (*(v52 - 8))(v4, v1);
            v82 = v51;
            v58 = *(v51 + 16);
            v57 = *(v51 + 24);
            if (v58 >= v57 >> 1)
            {
              sub_1D8E3151C((v57 > 1), v58 + 1, 1);
              v51 = v82;
            }

            *(v51 + 16) = v58 + 1;
            sub_1D8D65618(&v80, (v51 + 32 * v58 + 32));
            v54 += v78;
            --v50;
          }

          while (v50);
          sub_1D8D0D2AC(&v83);
        }

        v71 = objc_opt_self();
        v72 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
        v73 = sub_1D91785DC();

        v67 = [v72 initWithArray_];

        v74 = [objc_opt_self() sharedInstance];
        v69 = [v74 privateQueueContext];

        v70 = [v71 predicateForNewsFromYourShows:v67 ctx:v69];
      }

      else
      {
        v22 = *(v83 + 16);
        if (v22)
        {
          v82 = MEMORY[0x1E69E7CC0];

          sub_1D8E3151C(0, v22, 0);
          v23 = v82;
          v25 = *(v2 + 16);
          v24 = v2 + 16;
          v26 = v7 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
          v78 = *(v24 + 56);
          v79 = v25;
          do
          {
            v79(v4, v26, v1);
            v27 = sub_1D9176ACC();
            v81 = MEMORY[0x1E69E6158];
            *&v80 = v27;
            *(&v80 + 1) = v28;
            (*(v24 - 8))(v4, v1);
            v82 = v23;
            v30 = *(v23 + 16);
            v29 = *(v23 + 24);
            if (v30 >= v29 >> 1)
            {
              sub_1D8E3151C((v29 > 1), v30 + 1, 1);
              v23 = v82;
            }

            *(v23 + 16) = v30 + 1;
            sub_1D8D65618(&v80, (v23 + 32 * v30 + 32));
            v26 += v78;
            --v22;
          }

          while (v22);
          sub_1D8D0D2AC(&v83);
        }

        v64 = objc_opt_self();
        v65 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
        v66 = sub_1D91785DC();

        v67 = [v65 initWithArray_];

        v68 = [objc_opt_self() sharedInstance];
        v69 = [v68 privateQueueContext];

        v70 = [v64 predicateForCategoryPageFromYourShows:v67 ctx:v69];
      }

      v21 = v70;

      return v21;
    }

    if (v87 == 2)
    {
      v31 = objc_opt_self();

      v32 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      sub_1D8D0D2AC(&v83);
      v33 = [v31 predicateForAllEpisodesOnPodcastUuid:v32 includeNonAudioEpisodes:1];

      v34 = EpisodeUserFilter.basePredicate.getter(2, 2);
      v35 = [v33 AND_];
LABEL_36:
      v45 = v35;

      return v45;
    }

    if (v87 != 3)
    {
      v43 = objc_opt_self();

      v44 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      sub_1D8D0D2AC(&v83);
      v45 = [v43 predicateForAllEpisodesOnPodcastUuid:v44 includeNonAudioEpisodes:1];

      if (v8)
      {
        v46 = [v43 predicateForEpisodeTypeFilter_];
        v47 = [v45 AND_];

        v45 = v47;
      }

      if (BYTE8(v8) != 2)
      {
        v48 = [v43 predicateForVisuallyPlayed_];
        v49 = [v45 AND_];

        return v49;
      }

      return v45;
    }

    v17 = objc_opt_self();

    v18 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    sub_1D8D0D2AC(&v83);
    v19 = [v17 predicateForAllEpisodesOnPodcastUuid:v18 includeNonAudioEpisodes:1];
LABEL_13:
    v21 = v19;

    return v21;
  }

  if (v87 <= 7u)
  {
    if (v87 != 5)
    {
      if (v87 == 6)
      {
        v9 = objc_opt_self();
        v10 = [v9 predicateForVisuallyPlayed_];
        v11 = [v9 predicateForListenedAfterMarkedAsPlayed];
        v12 = [v11 NOT];

        v13 = [v10 AND_];
        v14 = [v9 predicateForListenNow];
        v15 = [v13 NOT];
        v16 = [v14 AND_];

        return v16;
      }

      v59 = objc_opt_self();

      v60 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      sub_1D8D0D2AC(&v83);
      v33 = [v59 predicateForAllEpisodesOnPodcastUuid:v60 includeNonAudioEpisodes:1];

      v34 = EpisodeUserFilter.basePredicate.getter(3, 2);
      v35 = [v33 AND_];
      goto LABEL_36;
    }

    v36 = objc_opt_self();
    v37 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v21 = [v36 predicateForEpisodesInStationShow_];

    return v21;
  }

  if (v87 == 8)
  {
    v38 = objc_opt_self();

    sub_1D8F95C9C(v8, SBYTE8(v8));
    v39 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v40 = [v38 predicateForAllEpisodesOnPodcastUuid:v39 includeNonAudioEpisodes:1];

    v41 = EpisodeUserFilter.basePredicate.getter(v8, *(&v8 + 1));
    v16 = [v40 AND_];

    sub_1D8F95794(v8, SBYTE8(v8));
    return v16;
  }

  if (v87 == 9)
  {
    v20 = objc_opt_self();

    v18 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    sub_1D8D0D2AC(&v83);
    v19 = [v20 predicateForLibraryEpisodesOnPodcastUuid_];
    goto LABEL_13;
  }

  v61 = *(&v85 + 1) | *(&v86 + 1) | v86;
  if (!(v84 | *(&v83 + 1) | v83 | *(&v84 + 1) | v61 | v85))
  {
    v63 = [objc_opt_self() predicateForDownloaded:1 excludeHidden:1];
    goto LABEL_50;
  }

  v62 = v84 | *(&v83 + 1) | *(&v84 + 1) | v61 | v85;
  if (v83 == 1 && !v62)
  {
    v63 = [objc_opt_self() predicateForPreviouslyPlayedHidingFutureTimestamps];
LABEL_50:

    return v63;
  }

  if (v83 == 2 && !v62)
  {
    v63 = [objc_opt_self() predicateForListenNow];
    goto LABEL_50;
  }

  if (v83 != 3 || v62)
  {
    if (v83 == 4 && !v62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_1D918C190;
      v76 = objc_opt_self();
      *(v75 + 32) = [v76 predicateForPartiallyPlayed];
      *(v75 + 40) = [v76 predicateForPodcastIsNotHidden];
      sub_1D8D4D430();
      v18 = sub_1D91785DC();

      v19 = [objc_opt_self() andPredicateWithSubpredicates_];
      goto LABEL_13;
    }

    if (v83 != 5 || v62)
    {
      if (v83 != 6 || v62)
      {
        v63 = [objc_opt_self() predicateForIsTopLevel];
      }

      else
      {
        v63 = [objc_opt_self() predicateForBookmarkedEpisodes];
      }
    }

    else
    {
      v63 = [objc_opt_self() predicateForListenNowLatestEpisodes];
    }

    goto LABEL_50;
  }

  return _sSo9MTEpisodeC18PodcastsFoundationE35predicateForCurrentNewEpisodesShelfSo11NSPredicateCvgZ_0();
}

uint64_t EpisodeSortType.descriptors.getter(char a1)
{
  switch(a1)
  {
    case 1:
      v1 = [objc_opt_self() sortDescriptorsForPubDateAscending_];
      goto LABEL_22;
    case 2:
      v1 = [objc_opt_self() sortDescriptorsForFirstAvailableAscending_];
      goto LABEL_22;
    case 3:
      v1 = [objc_opt_self() sortDescriptorsForFirstAvailableAscending_];
      goto LABEL_22;
    case 4:
      v1 = [objc_opt_self() seasonSortDescriptors_];
      goto LABEL_22;
    case 5:
      v1 = [objc_opt_self() seasonSortDescriptors_];
      goto LABEL_22;
    case 6:
      v1 = [objc_opt_self() seasonSortDescriptors_];
      goto LABEL_22;
    case 7:
      v1 = [objc_opt_self() sortDescriptorsForLastBookmarkedDateAscending_];
      goto LABEL_22;
    case 8:
      v1 = [objc_opt_self() sortDescriptorsForLastBookmarkedDateAscending_];
      goto LABEL_22;
    case 9:
      v1 = [objc_opt_self() sortDescriptorsForDownloadedDateAscending_];
      goto LABEL_22;
    case 10:
      v1 = [objc_opt_self() sortDescriptorsForDownloadedDateAscending_];
      goto LABEL_22;
    case 11:
      v1 = [objc_opt_self() sortDescriptorsForTitle];
      goto LABEL_22;
    case 12:
      v1 = [objc_opt_self() sortDescriptorsForRecentlyPlayed];
      goto LABEL_22;
    case 13:
      v2 = os_feature_enabled_up_next_with_modified_date_score();
      v3 = objc_opt_self();
      if (v2)
      {
        v1 = [v3 sortDescriptorsForModifiedDateUpNextScore];
      }

      else
      {
        v1 = [v3 sortDescriptorsForListenNow];
      }

      goto LABEL_22;
    case 14:
      return MEMORY[0x1E69E7CC0];
    case 15:
      v1 = [objc_opt_self() sortDescriptorsForUpNextScore];
      goto LABEL_22;
    default:
      v1 = [objc_opt_self() sortDescriptorsForPubDateAscending_];
LABEL_22:
      v5 = v1;
      sub_1D8D28BC8();
      v6 = sub_1D91785FC();

      return v6;
  }
}

unint64_t sub_1D8D28BC8()
{
  result = qword_1EDCD09F0;
  if (!qword_1EDCD09F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCD09F0);
  }

  return result;
}

void sub_1D8D28C14(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8558, &qword_1D91A1BF0);
  v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v22 = sub_1D8D28E48(a3, a4);
  [v22 setPredicate_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v23 = sub_1D91785DC();

  [v22 setSortDescriptors_];

  [v22 setFetchBatchSize_];
  v30[0] = a15;
  v30[1] = MEMORY[0x1E69E6530];
  v30[2] = a16;
  v30[3] = MEMORY[0x1E69E6550];
  type metadata accessor for FetchedResultsPublisherImplementation(0, v30);
  v24 = swift_allocObject();
  *(v24 + 16) = a15;
  *(v24 + 24) = a16;
  swift_allocObject();
  *(&v26 + 1) = sub_1D8D38B78;
  *&v26 = a14;
  v25 = sub_1D8D28EA0(a1, a2, v22, a8, a10, a11, a12, a13, v26, v24);

  *a9 = v25;
}

void FetchedResultsListPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a7 >= 100)
  {
    a7 = 100;
  }

  sub_1D8D28C14(a1, a2, a3, a4, a5, a7, a8, &v17, a10, a11, a12, a13, a14, a15, a16);
  *a9 = v17;
}

id sub_1D8D28E48(uint64_t a1, uint64_t a2)
{
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v4 = [v2 initWithEntityName_];

  return v4;
}

uint64_t sub_1D8D28EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v10 + 112) = v19;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 56) = a6;
  *(v10 + 64) = a7;
  *(v10 + 72) = a8;
  *(v10 + 80) = a9;
  *(v10 + 96) = a10;
  return v10;
}

uint64_t sub_1D8D28F64(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t PaginatedPublisher.eraseToAnyPaginatedPublisher()(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnyPaginatedPublisherPrivate(0, a1, v6, v7);
  (*(v3 + 16))(v5, v1, a1);
  return sub_1D8D29178(v5);
}

uint64_t sub_1D8D29094(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8D29178(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 144) - 8) + 32))(v2 + *(*v2 + 160), a1);
  return v2;
}

uint64_t sub_1D8D292B8()
{
  (*(*(*(*v0 + 144) - 8) + 8))(v0 + *(*v0 + 160));

  return swift_deallocClassInstance();
}

uint64_t sub_1D8D29364()
{
  sub_1D8D29394();

  return swift_deallocClassInstance();
}

id *sub_1D8D29394()
{

  MEMORY[0x1DA72CC70](v0 + 13);

  return v0;
}

uint64_t type metadata accessor for WidgetNowPlayingInfo(uint64_t a1)
{
  result = qword_1EDCD6220;
  if (!qword_1EDCD6220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8D29440(uint64_t a1)
{
  sub_1D8CEFDCC(319, &qword_1EDCD5EC8, &type metadata for ContentID);
  if (v1 <= 0x3F)
  {
    sub_1D8CF4B30(319);
    if (v2 <= 0x3F)
    {
      sub_1D8CEFDCC(319, &qword_1EDCD76F8, MEMORY[0x1E69E63B0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D8D295C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = a8;
  v55 = a6;
  v54 = a5;
  v52 = a3;
  v53 = a4;
  v60 = a1;
  v58 = sub_1D917739C();
  v49 = *(v58 - 8);
  v10 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v59 = sub_1D917734C();
  v51 = *(v59 - 8);
  v14 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v56 = a7;

  sub_1D917737C();
  v19 = v18;
  sub_1D917731C();
  v20 = sub_1D917737C();
  v21 = sub_1D9178F6C();
  if (sub_1D917918C())
  {
    v22 = v10;
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v20, v21, v24, "Task Enqueued", "", v23, 2u);
    v25 = v23;
    v10 = v22;
    MEMORY[0x1DA72CB90](v25, -1, -1);
  }

  v46 = v13;
  sub_1D8CF5C74(v60, v13);
  v27 = v49;
  v26 = v50;
  v28 = *(v49 + 16);
  v47 = a2;
  v28(v50, a2, v58);
  v29 = v51;
  v30 = *(v51 + 16);
  v48 = v19;
  v30(v15, v19, v59);
  v31 = (*(v27 + 80) + 40) & ~*(v27 + 80);
  v32 = (v10 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (*(v29 + 80) + v32 + 17) & ~*(v29 + 80);
  v34 = swift_allocObject();
  *(v34 + 2) = 0;
  *(v34 + 3) = 0;
  v35 = v57;
  *(v34 + 4) = v57;
  v36 = v26;
  v37 = v58;
  (*(v27 + 32))(&v34[v31], v36, v58);
  v38 = &v34[v32];
  v39 = v53;
  *v38 = v52;
  *(v38 + 1) = v39;
  v38[16] = v54;
  v40 = v59;
  (*(v29 + 32))(&v34[v33], v15, v59);
  v41 = &v34[(v14 + v33 + 7) & 0xFFFFFFFFFFFFFFF8];
  v42 = v56;
  *v41 = v55;
  v41[1] = v42;
  v43 = sub_1D8F4D698(0, 0, v46, &unk_1D9197098, v34, v35);
  (*(v27 + 8))(v47, v37);
  sub_1D8CF5CE4(v60);
  (*(v29 + 8))(v48, v40);
  return v43;
}

uint64_t sub_1D8D299C4()
{
  v1 = sub_1D917739C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1D917734C();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 17) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t _sScT18PodcastsFoundations5Error_pRs_rlE8priority10signposter4name5blockScTyxsAB_pGScPSg_2os12OSSignposterVs12StaticStringVxyYaKYAcntcfC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1D8D295C8(a1, a2, a3, a4, a5, a6, a7, a8);

  return v8;
}

uint64_t sub_1D8D29B6C(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1D917739C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_1D917734C() - 8);
  v8 = (v6 + *(v7 + 80) + 17) & ~*(v7 + 80);
  v9 = *(v1 + 24);
  v16 = *(v1 + 16);
  v10 = v1 + v6;
  v11 = *(v1 + v6);
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D8D58924;

  return sub_1D8D29D3C(a1, v16, v9, v1 + v5, v11, v12, v13, v1 + v8);
}

uint64_t sub_1D8D29D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 88) = v14;
  *(v8 + 96) = v15;
  *(v8 + 240) = a7;
  *(v8 + 72) = a5;
  *(v8 + 80) = a8;
  *(v8 + 56) = a1;
  *(v8 + 64) = a4;
  v9 = sub_1D917878C();
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 - 8);
  *(v8 + 120) = swift_task_alloc();
  v10 = sub_1D91773AC();
  *(v8 + 128) = v10;
  *(v8 + 136) = *(v10 - 8);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  v11 = sub_1D917734C();
  *(v8 + 168) = v11;
  *(v8 + 176) = *(v11 - 8);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8D29F0C, 0, 0);
}

uint64_t sub_1D8D29F0C(uint64_t a1)
{
  v2 = sub_1D917737C();
  v3 = sub_1D9178F5C();
  result = sub_1D917918C();
  if (result)
  {
    v5 = *(v1 + 72);
    if ((*(v1 + 240) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = sub_1D917732C();
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v2, v3, v7, v5, "", v6, 2u);
        MEMORY[0x1DA72CB90](v6, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 48);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v8 = *(v1 + 88);
  (*(*(v1 + 176) + 16))(*(v1 + 208), *(v1 + 80), *(v1 + 168));
  sub_1D91773FC();
  swift_allocObject();
  *(v1 + 216) = sub_1D91773EC();
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v1 + 224) = v9;
  *v9 = v1;
  v9[1] = sub_1D8D585CC;
  v10 = *(v1 + 56);

  return v11(v10);
}

uint64_t sub_1D8D2A140(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8D2A198();
  }

  return result;
}

void sub_1D8D2A198()
{
  v0 = objc_opt_self();
  v1 = [v0 _applePodcastsFoundationSharedUserDefaults];
  v2 = kMTUserAppSessionsUserDefaultKey;
  v3 = [v1 integerForKey_];

  if (qword_1ECAB0BF0 != -1)
  {
    swift_once();
  }

  v4 = sub_1D917744C();
  __swift_project_value_buffer(v4, qword_1ECAB0BF8);
  v5 = sub_1D917741C();
  v6 = sub_1D9178D1C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = v3;
    *(v7 + 12) = 2048;
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
LABEL_14:
      __break(1u);
      return;
    }

    *(v7 + 14) = v8;
    v9 = v7;
    _os_log_impl(&dword_1D8CEC000, v5, v6, "Increasing user app session count from: %ld to %ld.", v7, 0x16u);
    MEMORY[0x1DA72CB90](v9, -1, -1);

    v10 = 0;
  }

  else
  {

    v8 = v3 + 1;
    v10 = __OFADD__(v3, 1);
  }

  v11 = [v0 _applePodcastsFoundationSharedUserDefaults];
  if (v10)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = v11;
  [v11 setInteger:v8 forKey:v2];
}

uint64_t _s2os12OSSignposterV18PodcastsFoundationE4task8priority4name5blockxScPSg_s12StaticStringVxyYaKYAcntYaKs8SendableRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 64) = a8;
  *(v9 + 72) = v8;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7;
  *(v9 + 136) = a5;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_1D917739C();
  *(v9 + 80) = v10;
  *(v9 + 88) = *(v10 - 8);
  *(v9 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  *(v9 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8D2A484, 0, 0);
}

uint64_t sub_1D8D2A484()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v17 = *(v0 + 56);
  v18 = *(v0 + 64);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v9 = *(v0 + 136);
  sub_1D8CF5C74(*(v0 + 24), v2);
  (*(v4 + 16))(v1, v5, v3);
  v10 = sub_1D8D295C8(v2, v1, v8, v7, v9, v6, v17, v18);
  *(v0 + 112) = v10;
  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  *v11 = v0;
  v11[1] = sub_1D8D58A18;
  v13 = *(v0 + 64);
  v14 = *(v0 + 16);
  v15 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v14, v10, v13, v12, v15);
}

id sub_1D8D2A5E8()
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = (v0 + 16);
  v2 = objc_opt_self();
  aBlock[4] = sub_1D8D2A80C;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_22;
  v3 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v2 perform:v3 error:aBlock];
  _Block_release(v3);
  v4 = aBlock[0];
  if (aBlock[0])
  {
    swift_willThrow();
    v4;
  }

  swift_beginAccess();
  if (!*v1)
  {
    sub_1D8E3AFFC();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
  }

  v6 = *v1;

  return v6;
}

uint64_t sub_1D8D2A7BC()
{

  return swift_deallocObject();
}

void sub_1D8D2A814(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(a1 + 16) = v2;
}

uint64_t sub_1D8D2A8CC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_1D8D2A908(uint64_t a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = a1;
  v7[4] = a2;
  aBlock[4] = sub_1D8D2AB54;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_54;
  v8 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v6 perform:v8 error:aBlock];
  _Block_release(v8);
  v9 = aBlock[0];
  if (aBlock[0])
  {
    swift_willThrow();
    v9;
  }

  swift_beginAccess();
  if (!*v5)
  {
    sub_1D8E3AFFC();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
  }

  v11 = *v5;

  return v11;
}

uint64_t sub_1D8D2AB04()
{

  return swift_deallocObject();
}

void sub_1D8D2AB54()
{
  v1 = *(v0 + 16);
  v2 = (*(v0 + 24))();
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
}

id sub_1D8D2ABB4()
{
  v1 = [*(v0 + 24) importContext];

  return v1;
}

os_log_t _MTLogCategoryCloudSync()
{
  v0 = os_log_create("com.apple.podcasts", "CloudSync");

  return v0;
}

id sub_1D8D2AD4C()
{
  result = [objc_allocWithZone(type metadata accessor for RestrictionsController()) init];
  qword_1ECAB1CD0 = result;
  return result;
}

id sub_1D8D2ADFC()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  *&v0[OBJC_IVAR___PFRestrictionsController_observation] = 0;
  v5 = sub_1D8D2AFA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB920, &qword_1D91BED90);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  *&v0[OBJC_IVAR___PFRestrictionsController__state] = v6;
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v12, sel_init);
  v8 = sub_1D917886C();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v10 = v7;
  sub_1D8E91528(0, 0, v4, &unk_1D91BED98, v9);

  return v10;
}

uint64_t sub_1D8D2AFA0()
{
  if (qword_1ECAB1120 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECAB1130;
  v1 = [qword_1ECAB1130 isExplicitContentAllowedOutAsk_];
  v2 = [v0 isBoolSettingLockedDownByRestrictions_];
  if (qword_1ECAB0E28 != -1)
  {
    swift_once();
  }

  v3 = sub_1D917744C();
  __swift_project_value_buffer(v3, qword_1ECAB0E30);
  v4 = sub_1D917741C();
  v5 = sub_1D9178CEC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v1;
    _os_log_impl(&dword_1D8CEC000, v4, v5, "isExplicitContentAllowed: %{BOOL}d", v6, 8u);
    MEMORY[0x1DA72CB90](v6, -1, -1);
  }

  v7 = sub_1D917741C();
  v8 = sub_1D9178CEC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v2;
    _os_log_impl(&dword_1D8CEC000, v7, v8, "isSettingLockedDown: %{BOOL}d", v9, 8u);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  v10 = 3;
  if (!v2)
  {
    v10 = 1;
  }

  if (v1)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

id sub_1D8D2B18C()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    qword_1ECAB1130 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *SiriDonator.init(backgroundTaskManager:)(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v37 = sub_1D9178DFC();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D9178FBC();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v31 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA780, &unk_1D91B7600);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v31 - v6;
  v7 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1D9178E0C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v40 = OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_workQueue;
  sub_1D8CFD888();
  sub_1D9177E7C();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8098], v8);
  v44 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD768(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  *&v1[v40] = sub_1D9178E4C();
  *&v1[OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_podcastsUpdateSubscription] = 0;
  v13 = OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator__throttleInterval;
  v14 = [objc_opt_self() standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA7A0, qword_1D91B7610);
  v15 = swift_allocObject();
  v15[2] = 0xD00000000000001CLL;
  v15[3] = 0x80000001D91D62A0;
  v16 = v41;
  v15[4] = 0x4014000000000000;
  v15[5] = v14;
  v15[6] = &type metadata for DoubleTransform;
  v15[7] = &off_1F5485E98;
  *&v2[v13] = v15;
  *&v2[OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_backgroundTaskManager] = v16;
  v17 = objc_allocWithZone(type metadata accessor for MediaRequestController());
  swift_unknownObjectRetain();
  v18 = [v17 init];
  *&v2[OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_mediaRequestController] = v18;
  v19 = OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator__donationInProgress;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7C0, &unk_1D918C0E0);
  v20 = swift_allocObject();
  *(v20 + 20) = 0;
  *(v20 + 16) = 0;
  *&v2[v19] = v20;
  v21 = type metadata accessor for SiriDonator();
  v43.receiver = v2;
  v43.super_class = v21;
  v22 = objc_msgSendSuper2(&v43, sel_init);
  if ([objc_opt_self() isRunningOnHomepod])
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = [objc_opt_self() defaultCenter];
    v24 = v31;
    sub_1D9178FCC();

    sub_1D8D2BAC0();

    v25 = v33;
    sub_1D9178DDC();
    v42 = *&v22[OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_workQueue];
    sub_1D8CFD768(&qword_1EDCD5B10, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
    sub_1D8CFD768(&qword_1EDCD0980, sub_1D8CFD888, MEMORY[0x1E69E8028]);
    v26 = v36;
    v27 = v34;
    sub_1D9177D1C();
    (*(v35 + 8))(v25, v37);
    (*(v32 + 8))(v24, v27);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D8CF48EC(&qword_1EDCD0BE8, &qword_1ECABA780, &unk_1D91B7600, MEMORY[0x1E695BE68]);
    v28 = v39;
    v29 = sub_1D9177D9C();
    swift_unknownObjectRelease();

    (*(v38 + 8))(v26, v28);
    *&v22[OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_podcastsUpdateSubscription] = v29;
  }

  return v22;
}

uint64_t sub_1D8D2B99C()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

double sub_1D8D2BAC0()
{
  (*(v0[7] + 8))(v4, v0[5], v0[2], v0[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB57F0, &unk_1D9190AA0);
  v1 = swift_dynamicCast();
  if ((v1 & 1) == 0)
  {
    v5 = 0;
  }

  v2 = v0 + 4;
  if (v1)
  {
    v2 = &v5;
  }

  return *v2;
}

uint64_t sub_1D8D2BBC0(uint64_t a1)
{
  v2 = sub_1D9177F1C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_backgroundTaskManager);
  v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v6 beginBackgroundTask_];

  v8 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_workQueue);
  *v5 = v8;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v9 = v8;
  LOBYTE(v7) = sub_1D9177F4C();
  result = (*(v3 + 8))(v5, v2);
  if (v7)
  {
    if ([objc_opt_self() isRunningOnHomepod])
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    v12 = [objc_opt_self() ams_sharedAccountStore];
    v13 = [v12 ams_activeiTunesAccount];

    v23 = 0;
    v24 = 0;
    v25 = &type metadata for Persona.CurrentUserExecutionStrategy;
    v26 = &off_1F5482BB8;
    v14 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_mediaRequestController);
    v20[3] = type metadata accessor for MediaRequestController();
    v20[4] = &protocol witness table for MediaRequestController;
    v20[0] = v14;
    v21[0] = v11;
    v27 = v9;
    _s11DataFetcherCMa();
    v15 = swift_allocObject();
    *(v15 + 80) = 0;
    *(v15 + 88) = 0;
    *(v15 + 16) = v11;
    *(v15 + 24) = v13;
    sub_1D8D04E9C(v20, v15 + 32);
    *(v15 + 72) = v9;
    v22 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7F0, &qword_1D91B7700);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D9189080;
    sub_1D8D35688(v21, v16 + 32);
    v17 = v9;
    v18 = v14;
    sub_1D8D2BE64(v16);

    return sub_1D8D330B0(v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8D2BE64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (qword_1EDCD1090 != -1)
    {
      swift_once();
    }

    v3 = sub_1D917744C();
    __swift_project_value_buffer(v3, qword_1EDCD1098);

    v4 = sub_1D917741C();
    v5 = sub_1D9178D1C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v1;

      _os_log_impl(&dword_1D8CEC000, v4, v5, "Created %ld donation jobs.", v6, 0xCu);
      MEMORY[0x1DA72CB90](v6, -1, -1);
    }

    else
    {
    }

    return sub_1D8D356E4(a1);
  }

  else
  {
    if (qword_1EDCD1090 != -1)
    {
      swift_once();
    }

    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1EDCD1098);
    v8 = sub_1D917741C();
    v9 = sub_1D9178D1C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D8CEC000, v8, v9, "No donation jobs created.", v10, 2u);
      MEMORY[0x1DA72CB90](v10, -1, -1);
    }

    return sub_1D8DA9C30();
  }
}

void sub_1D8D2C044(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D9177F1C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v52[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = *(v3 + 9);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1D9177F4C();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_39:
    swift_once();
    goto LABEL_11;
  }

  if ((DonationService.supportsSiriIndexing.getter() & 1) != 0 && (*v3 > 1u || *(*(v3 + 1) + 24)))
  {
    if (qword_1EDCD1090 != -1)
    {
      swift_once();
    }

    v13 = sub_1D917744C();
    __swift_project_value_buffer(v13, qword_1EDCD1098);
    sub_1D8D35688(v3, v53);
    sub_1D8D35688(v3, v52);
    v14 = sub_1D917741C();
    v15 = sub_1D9178D1C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v51 = v17;
      *v16 = 141558531;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      v18 = *(*(&v53[0] + 1) + 24);
      if (v18)
      {
        v19 = [v18 description];
        v20 = sub_1D917820C();
        v22 = v21;
      }

      else
      {
        v20 = 0x6974636120726F66;
        v22 = 0xEF72657375206576;
      }

      sub_1D8D330B0(v53);
      v41 = sub_1D8CFA924(v20, v22, &v51);

      *(v16 + 14) = v41;
      *(v16 + 22) = 2080;
      v42 = 0xD000000000000011;
      v43 = 0x80000001D91D63B0;
      if (v52[0] != 1)
      {
        v42 = 0xD000000000000013;
        v43 = 0x80000001D91D6390;
      }

      if (v52[0])
      {
        v44 = v42;
      }

      else
      {
        v44 = 0x20646F70656D6F48;
      }

      if (v52[0])
      {
        v45 = v43;
      }

      else
      {
        v45 = 0xEF7972616D697250;
      }

      sub_1D8D330B0(v52);
      v46 = sub_1D8CFA924(v44, v45, &v51);

      *(v16 + 24) = v46;
      _os_log_impl(&dword_1D8CEC000, v14, v15, "Account %{private,mask.hash}s: Starting donation job with donation type: %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v17, -1, -1);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }

    else
    {

      sub_1D8D330B0(v52);
      sub_1D8D330B0(v53);
    }

    sub_1D8D35688(v3, v53);
    v47 = swift_allocObject();
    v48 = v53[3];
    v49 = v53[4];
    *(v47 + 48) = v53[2];
    *(v47 + 64) = v48;
    *(v47 + 80) = v49;
    v50 = v53[1];
    *(v47 + 16) = v53[0];
    *(v47 + 32) = v50;
    *(v47 + 96) = a1;
    *(v47 + 104) = a2;

    sub_1D8D35C30(sub_1D8DA88A8, v47);

    return;
  }

  if (qword_1EDCD1090 != -1)
  {
    goto LABEL_39;
  }

LABEL_11:
  v23 = sub_1D917744C();
  __swift_project_value_buffer(v23, qword_1EDCD1098);
  sub_1D8D35688(v3, v53);
  sub_1D8D35688(v3, v52);
  v24 = sub_1D917741C();
  v25 = sub_1D9178CFC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v51 = v27;
    *v26 = 141558531;
    *(v26 + 4) = 1752392040;
    *(v26 + 12) = 2081;
    v28 = *(*(&v53[0] + 1) + 24);
    if (v28)
    {
      v29 = [v28 description];
      v30 = sub_1D917820C();
      v32 = v31;
    }

    else
    {
      v30 = 0x6974636120726F66;
      v32 = 0xEF72657375206576;
    }

    sub_1D8D330B0(v53);
    v33 = sub_1D8CFA924(v30, v32, &v51);

    *(v26 + 14) = v33;
    *(v26 + 22) = 2080;
    v34 = 0xD000000000000011;
    v35 = 0x80000001D91D63B0;
    if (v52[0] != 1)
    {
      v34 = 0xD000000000000013;
      v35 = 0x80000001D91D6390;
    }

    if (v52[0])
    {
      v36 = v34;
    }

    else
    {
      v36 = 0x20646F70656D6F48;
    }

    if (v52[0])
    {
      v37 = v35;
    }

    else
    {
      v37 = 0xEF7972616D697250;
    }

    sub_1D8D330B0(v52);
    v38 = sub_1D8CFA924(v36, v37, &v51);

    *(v26 + 24) = v38;
    _os_log_impl(&dword_1D8CEC000, v24, v25, "Account %{private,mask.hash}s: Invalid configuration for donationType: %s.", v26, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v27, -1, -1);
    MEMORY[0x1DA72CB90](v26, -1, -1);
  }

  else
  {

    sub_1D8D330B0(v52);
    sub_1D8D330B0(v53);
  }

  sub_1D90F9BD8();
  v39 = swift_allocError();
  *v40 = 0;
  *(v40 + 8) = 1;
  a1();
}

uint64_t sub_1D8D2C6F8()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1D8D2C79C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1D8D5FF3C;

  return v5(v2 + 16);
}

uint64_t sub_1D8D2C890()
{
  if (qword_1ECAB0E28 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  v0[18] = __swift_project_value_buffer(v1, qword_1ECAB0E30);
  v2 = sub_1D917741C();
  v3 = sub_1D9178CEC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D8CEC000, v2, v3, "Reloading setting", v4, 2u);
    MEMORY[0x1DA72CB90](v4, -1, -1);
  }

  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v0[19] = v5;
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_1D8D5F774;

  return sub_1D8D4C3A0(v5);
}

uint64_t sub_1D8D2CA04()
{
  v1 = v0[20];
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 BOOLForKey_];
  v0[21] = v3;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D8D5F440;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41B8, qword_1D91BEDB0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D8D5F354;
  v0[13] = &block_descriptor_35_4;
  v0[14] = v4;
  [v3 valueWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t RestrictionsController.state.getter()
{
  v1 = *(v0 + OBJC_IVAR___PFRestrictionsController__state);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

void PerformanceLoadable.init(log:signpostName:startMetadata:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = a4;
  v16 = type metadata accessor for PerformanceLoadable(0, a7, a3, a4);
  (*(*(a7 - 8) + 56))(a8 + *(v16 + 40), 1, 2, a7);
  *(a8 + 24) = a1;
  *a8 = a2;
  *(a8 + 8) = a3;
  *(a8 + 16) = v11;
  v17 = a1;
  sub_1D917731C();
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  sub_1D8D2CD28(v16);
}

uint64_t sub_1D8D2CD28(uint64_t a1)
{
  v3 = sub_1D917734C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 24);
  sub_1D917731C();
  v8 = *(a1 + 36);
  (*(v4 + 40))(v1 + v8, v6, v3);
  v9 = *(v1 + 40);
  if (v9)
  {
    v10 = *(v1 + 32);

    v11 = sub_1D9178F5C();
    v12 = *v1;
    v13 = *(v1 + 8);
    v14 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D9189080;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1D8D34978();
    *(v15 + 32) = v10;
    *(v15 + 40) = v9;
    sub_1D91772EC(v11, &dword_1D8CEC000, v7, v12, v13, v14, v1 + v8, "%s", 2);
  }

  else
  {
    sub_1D9178F5C();
    return sub_1D91772FC();
  }
}

id sub_1D8D2CF84()
{
  result = [objc_allocWithZone(type metadata accessor for DeferredLaunchTaskCoordinator()) init];
  qword_1EDCD2410 = result;
  return result;
}

id static DeferredLaunchTaskCoordinator.shared.getter()
{
  if (qword_1EDCD2408 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCD2410;

  return v1;
}

uint64_t sub_1D8D2D034(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a3;
  ObjectType = swift_getObjectType();
  v8 = sub_1D9177E0C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D9177E9C();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v30 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR___PFDeferredLaunchTaskCoordinator__adminQueue;
  if (!a1)
  {
    goto LABEL_4;
  }

  v13 = a2;
  v14 = *(v3 + OBJC_IVAR___PFDeferredLaunchTaskCoordinator__adminQueue);
  sub_1D8CFD888();
  v15 = v14;
  a2 = v13;
  v16 = v15;
  v17 = a1;
  v18 = sub_1D917914C();

  if (v18)
  {
    __break(1u);
LABEL_4:
    v17 = *(v4 + OBJC_IVAR___PFDeferredLaunchTaskCoordinator__workQueue);
  }

  v19 = *(v4 + v12);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a2;
  v29 = v9;
  v21[4] = v34;
  v21[5] = v17;
  v21[6] = ObjectType;
  aBlock[4] = sub_1D8D3F324;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_10_9;
  v22 = _Block_copy(aBlock);
  swift_retain_n();
  v23 = a1;
  v24 = v19;

  v28 = v17;
  v25 = v30;
  sub_1D9177E4C();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v26 = v32;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v25, v26, v22);
  _Block_release(v22);

  (*(v29 + 8))(v26, v8);
  (*(v31 + 8))(v25, v33);
}

uint64_t sub_1D8D2D3F8()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8D2D430()
{

  return swift_deallocObject();
}

void sub_1D8D2D4B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ((*(Strong + OBJC_IVAR___PFDeferredLaunchTaskCoordinator__timeoutScheduled) & 1) == 0)
    {
      if (qword_1EDCD2400 != -1)
      {
        swift_once();
      }

      v9 = sub_1D917744C();
      __swift_project_value_buffer(v9, qword_1EDCDE818);
      v10 = sub_1D917741C();
      v11 = sub_1D9178CFC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1D8CEC000, v10, v11, "Launch task deferred without deferral timer. The task may never run.", v12, 2u);
        MEMORY[0x1DA72CB90](v12, -1, -1);
      }
    }

    if (v8[OBJC_IVAR___PFDeferredLaunchTaskCoordinator__deferring] == 1)
    {
      v13 = OBJC_IVAR___PFDeferredLaunchTaskCoordinator__tasks;
      swift_beginAccess();
      v14 = *&v8[v13];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v8[v13] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_1D8D2D7F8(0, *(v14 + 2) + 1, 1, v14);
        *&v8[v13] = v14;
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      if (v17 >= v16 >> 1)
      {
        v14 = sub_1D8D2D7F8((v16 > 1), v17 + 1, 1, v14);
      }

      *(v14 + 2) = v17 + 1;
      v18 = &v14[24 * v17];
      *(v18 + 4) = a2;
      *(v18 + 5) = a3;
      *(v18 + 6) = a4;
      *&v8[v13] = v14;
      swift_endAccess();

      v19 = a4;
    }

    else
    {
      if (qword_1EDCD2400 != -1)
      {
        swift_once();
      }

      v20 = sub_1D917744C();
      __swift_project_value_buffer(v20, qword_1EDCDE818);
      v21 = sub_1D917741C();
      v22 = sub_1D9178CDC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1D8CEC000, v21, v22, "Task deferred after launch tasks have already started. Scheduling it immediately.", v23, 2u);
        MEMORY[0x1DA72CB90](v23, -1, -1);
      }

      sub_1D8DB935C(a2, a3, a4);
    }
  }
}

uint64_t sub_1D8D2D778()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1EDCDE818);
  __swift_project_value_buffer(v0, qword_1EDCDE818);
  return sub_1D917742C();
}

char *sub_1D8D2D7F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6018, &qword_1D9191FB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t FetchedResultsCountPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[2] = a2;
  v16[3] = a3;
  v16[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8560, &qword_1D91A1BF8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8568, &qword_1D91A1C00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - v10;
  v12 = *v3;
  v13 = *(*v3 + 112);
  v16[6] = sub_1D8D40CC8;
  v16[7] = v12;
  os_unfair_lock_lock(v13 + 4);
  sub_1D8D40CF8(&v17);
  os_unfair_lock_unlock(v13 + 4);
  v14 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB8570, &qword_1D91A1C08);
  sub_1D8CF48EC(qword_1EDCD1458, qword_1ECAB8570, &qword_1D91A1C08, &unk_1D91A21BC);
  sub_1D9177B9C();

  sub_1D8CF48EC(&qword_1EDCD0CE0, &qword_1ECAB8560, &qword_1D91A1BF8, MEMORY[0x1E695BD60]);
  sub_1D9177D6C();
  (*(v5 + 8))(v7, v4);
  sub_1D917764C();
  return (*(v9 + 8))(v11, v8);
}

char *MTPodcast.standardArtworkRequests.getter()
{
  MTPodcast.artworkModel.getter(v30);
  v38 = v30[7];
  v39 = v30[8];
  v40 = v30[9];
  v41 = v30[10];
  v34 = v30[3];
  v35 = v30[4];
  v36 = v30[5];
  v37 = v30[6];
  v31 = v30[0];
  v32 = v30[1];
  v33 = v30[2];
  if (sub_1D8D2E02C(&v31) == 1)
  {
    v0 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __dst[8] = v39;
    __dst[9] = v40;
    __dst[10] = v41;
    __dst[4] = v35;
    __dst[5] = v36;
    __dst[6] = v37;
    __dst[7] = v38;
    __dst[0] = v31;
    __dst[1] = v32;
    __dst[2] = v33;
    __dst[3] = v34;
    ArtworkModel.baseRequest.getter(__src);
    sub_1D8D41320(v30);
    memcpy(__dst, __src, 0x108uLL);
    sub_1D8D41388(__dst, __src);
    v0 = sub_1D8D40948(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v2 = *(v0 + 2);
    v1 = *(v0 + 3);
    if (v2 >= v1 >> 1)
    {
      v0 = sub_1D8D40948((v1 > 1), v2 + 1, 1, v0);
    }

    *(v0 + 2) = v2 + 1;
    memcpy(&v0[264 * v2 + 32], __src, 0x108uLL);
    v3 = MTLCreateSystemDefaultDevice();
    if (v3 && (v4 = v3, v5 = [v3 hasUnifiedMemory], v6 = objc_msgSend(v4, sel_supportsFamily_, 1004), swift_unknownObjectRelease(), v5) && v6)
    {
      v7 = MTWidgetBackgroundPreferredArtworkSize();
      ArtworkRequest.resized(to:displayScale:)(1.0, 0, __src, v7, v8);

      *&__src[13] = &unk_1F5460FC0;
      sub_1D8D41388(__src, v15);
      v10 = *(v0 + 2);
      v9 = *(v0 + 3);
      if (v10 >= v9 >> 1)
      {
        v0 = sub_1D8D40948((v9 > 1), v10 + 1, 1, v0);
      }

      sub_1D8D58578(__dst);
      *(v0 + 2) = v10 + 1;
      memcpy(&v0[264 * v10 + 32], v15, 0x108uLL);
      v11 = __src;
    }

    else
    {
      v11 = __dst;
    }

    sub_1D8D58578(v11);
  }

  MTPodcast.uberBackgroundArtworkModel.getter(v16);
  v25 = v16[8];
  v26 = v16[9];
  v27 = v16[10];
  v21 = v16[4];
  v22 = v16[5];
  v23 = v16[6];
  v24 = v16[7];
  v17 = v16[0];
  v18 = v16[1];
  v19 = v16[2];
  v20 = v16[3];
  if (sub_1D8D2E02C(&v17) != 1)
  {
    __src[8] = v25;
    __src[9] = v26;
    __src[10] = v27;
    __src[4] = v21;
    __src[5] = v22;
    __src[6] = v23;
    __src[7] = v24;
    __src[0] = v17;
    __src[1] = v18;
    __src[2] = v19;
    __src[3] = v20;
    ArtworkModel.baseRequest.getter(v15);
    sub_1D8D41320(v16);
    memcpy(__src, v15, 0x108uLL);
    sub_1D8D41388(__src, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_1D8D40948(0, *(v0 + 2) + 1, 1, v0);
    }

    v13 = *(v0 + 2);
    v12 = *(v0 + 3);
    if (v13 >= v12 >> 1)
    {
      v0 = sub_1D8D40948((v12 > 1), v13 + 1, 1, v0);
    }

    sub_1D8D58578(__src);
    *(v0 + 2) = v13 + 1;
    memcpy(&v0[264 * v13 + 32], v15, 0x108uLL);
  }

  return v0;
}

uint64_t sub_1D8D2DFC8()
{
  v0 = sub_1D917662C();
  __swift_allocate_value_buffer(v0, qword_1EDCD7730);
  __swift_project_value_buffer(v0, qword_1EDCD7730);
  return sub_1D91765EC();
}

uint64_t sub_1D8D2E02C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t ArtworkModel.baseRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v37 = v1[8];
  v38 = v3;
  v39 = v1[10];
  v4 = v1[5];
  v33 = v1[4];
  v34 = v4;
  v5 = v1[7];
  v35 = v1[6];
  v36 = v5;
  v6 = v1[1];
  v29 = *v1;
  v30 = v6;
  v7 = v1[3];
  v31 = v1[2];
  v32 = v7;
  sub_1D8D36E5C(&v29, v28);
  if (qword_1EDCD5E20 != -1)
  {
    swift_once();
  }

  v8 = sub_1D917744C();
  v9 = __swift_project_value_buffer(v8, qword_1EDCD5E28);
  v10 = sub_1D9178CDC();
  SignpostAndLogTrace(domain:level:)(v9, v10, v28);
  v11 = qos_class_self();
  if (v11 > 20)
  {
    if (v11 == QOS_CLASS_DEFAULT)
    {
LABEL_10:
      v12 = 1;
      goto LABEL_11;
    }

    if (v11 != QOS_CLASS_USER_INITIATED)
    {
      if (v11 == QOS_CLASS_USER_INTERACTIVE)
      {
        v12 = 3;
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v12 = 2;
  }

  else
  {
    if (v11 != QOS_CLASS_BACKGROUND)
    {
      goto LABEL_10;
    }

    v12 = 0;
  }

LABEL_11:
  sub_1D8D728EC(v28, v27);
  *(a1 + 224) = 0u;
  *(a1 + 201) = 16;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  sub_1D8D410BC(0x5379616C70736964, 0xEC000000656C6163, 3.0);
  sub_1D8D410BC(0x6874646977, 0xE500000000000000, 600.0);
  sub_1D8D410BC(0x746867696568, 0xE600000000000000, 600.0);
  v13 = *(&v31 + 1);
  sub_1D8D410BC(0x69772E6C65646F6DLL, 0xEB00000000687464, *(&v31 + 1));
  v14 = *&v32;
  sub_1D8D410BC(0x65682E6C65646F6DLL, 0xEC00000074686769, *&v32);
  v41.width = 0.0;
  v41.height = 0.0;
  v40.width = 600.0;
  v40.height = 600.0;
  if (CGSizeEqualToSize(v40, v41))
  {
    v15 = sub_1D917741C();
    v16 = sub_1D9178CFC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D8CEC000, v15, v16, "Request has an invalid size of 0, this will be convered to the preferred size but may represent an error earlier.", v17, 2u);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }
  }

  if (v13 == 0.0 || v14 == 0.0)
  {
    v18 = sub_1D917741C();
    v19 = sub_1D9178CFC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D8CEC000, v18, v19, "Model has an invalid dimension of 0, this will be convered to the preferred size but may represent an error earlier.", v20, 2u);
      MEMORY[0x1DA72CB90](v20, -1, -1);
    }
  }

  sub_1D8D08A50(v28, &qword_1ECAB4928, &qword_1D918B380);
  v21 = v38;
  *(a1 + 128) = v37;
  *(a1 + 144) = v21;
  *(a1 + 160) = v39;
  v22 = v34;
  *(a1 + 64) = v33;
  *(a1 + 80) = v22;
  v23 = v36;
  *(a1 + 96) = v35;
  *(a1 + 112) = v23;
  v24 = v30;
  *a1 = v29;
  *(a1 + 16) = v24;
  v25 = v32;
  *(a1 + 32) = v31;
  *(a1 + 48) = v25;
  *(a1 + 176) = 0x4082C00000000000;
  *(a1 + 184) = 0x4082C00000000000;
  *(a1 + 192) = 0x4008000000000000;
  *(a1 + 200) = 4096;
  *(a1 + 202) = 0;
  *(a1 + 203) = v12;
  *(a1 + 208) = MEMORY[0x1E69E7CC0];
  *(a1 + 216) = 3;
  return sub_1D8D412B0(v27, a1 + 224);
}

uint64_t SignpostAndLogTrace(domain:level:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v41 = a2;
  v42 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v40 = &v35 - v5;
  v6 = sub_1D917734C();
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D917744C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D917739C();
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v36 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - v17;
  v19 = *(v10 + 16);
  v19(v12, a1, v9, v16);
  sub_1D917736C();
  sub_1D917737C();
  v35 = v8;
  sub_1D917731C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE8, &unk_1D9195258);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D918A530;
  (v19)(v12, a1, v9);
  v43 = 0;
  v44 = 0xE000000000000000;
  v21 = v6;
  sub_1D917964C();
  v22 = v43;
  v23 = v44;
  v24 = type metadata accessor for LoggerTrace(0);
  *(v20 + 56) = v24;
  *(v20 + 64) = &protocol witness table for LoggerTrace;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v20 + 32));
  *boxed_opaque_existential_0 = v22;
  boxed_opaque_existential_0[1] = v23;
  (*(v10 + 32))(boxed_opaque_existential_0 + *(v24 + 20), v12, v9);
  *(boxed_opaque_existential_0 + *(v24 + 24)) = v41;
  v27 = v36;
  v26 = v37;
  v28 = v38;
  (*(v37 + 16))(v36, v18, v38);
  v30 = v39;
  v29 = v40;
  v31 = v35;
  (*(v39 + 16))(v40, v35, v21);
  (*(v30 + 56))(v29, 0, 1, v21);
  *(v20 + 96) = type metadata accessor for SignpostTrace(0);
  *(v20 + 104) = &protocol witness table for SignpostTrace;
  v32 = __swift_allocate_boxed_opaque_existential_0((v20 + 72));
  SignpostTrace.init(domain:identifier:)(v27, v29, v32);
  (*(v30 + 8))(v31, v21);
  result = (*(v26 + 8))(v18, v28);
  v34 = v42;
  v42[3] = &type metadata for CombinedTrace;
  v34[4] = &protocol witness table for CombinedTrace;
  *v34 = v20;
  return result;
}

uint64_t sub_1D8D2E820(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D917662C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v14 = a1;
  v15 = a2;

  if (sub_1D917839C())
  {
    v7 = sub_1D91782EC();
    sub_1D8FAF2F4(v7);
    a1 = v14;
    a2 = v15;
  }

  if (qword_1EDCD7728 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDCD7730);
  (*(v5 + 16))(&v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v11 = sub_1D8D37264(a1, a2, sub_1D8D37400);

  if ((v11 & 1) == 0)
  {

    return 0;
  }

  return a1;
}

uint64_t sub_1D8D2EA08()
{
  v1 = sub_1D917662C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

id sub_1D8D2EA90@<X0>(SEL *a1@<X0>, SEL *a2@<X1>, SEL *a3@<X2>, SEL *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = v5;
  v10 = [v5 *a1];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1D917820C();
    v14 = v13;

    v15 = sub_1D8D3707C(v12, v14);
    v17 = v16;
    v43 = v15;
  }

  else
  {
    v43 = 0;
    v17 = -1;
  }

  v18 = [v8 *a2];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1D917820C();
    v22 = v21;

    v23 = sub_1D8D3707C(v20, v22);
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = -1;
  }

  v26 = [v8 *a3];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1D917820C();
    v30 = v29;

    v31 = sub_1D8D3707C(v28, v30);
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = -1;
  }

  result = [v8 *a4];
  if (result)
  {
    v35 = result;
    v36 = sub_1D917820C();
    v38 = v37;

    v39 = sub_1D8D3707C(v36, v38);
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = -1;
  }

  *a5 = v43;
  *(a5 + 8) = v17;
  *(a5 + 16) = v23;
  *(a5 + 24) = v25;
  *(a5 + 32) = v31;
  *(a5 + 40) = v33;
  *(a5 + 48) = v39;
  *(a5 + 56) = v41;
  return result;
}

uint64_t sub_1D8D2EF54()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACF0, &qword_1D91BA268);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v152 = &v150 - v3;
  v155 = sub_1D9176E3C();
  v157 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v151 = &v150 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v153 = &v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v154 = &v150 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AE0, &qword_1D91B7E20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v150 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v150 - v16;
  v162 = type metadata accessor for EyebrowBuilder.ListContext(0);
  MEMORY[0x1EEE9AC00](v162);
  v158 = &v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v156 = &v150 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v150 - v22;
  v159 = sub_1D917734C();
  v161 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v25 = &v150 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v150 - v27;
  if (qword_1EDCD5E90 != -1)
  {
    swift_once();
  }

  v29 = sub_1D917739C();
  __swift_project_value_buffer(v29, qword_1EDCD5E98);
  sub_1D917737C();
  sub_1D917731C();
  v30 = sub_1D917737C();
  v31 = sub_1D9178F5C();
  v32 = sub_1D917918C();
  v160 = v28;
  if (v32)
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v30, v31, v34, "resolveEyebrowElements", "", v33, 2u);
    v35 = v33;
    v28 = v160;
    MEMORY[0x1DA72CB90](v35, -1, -1);
  }

  v36 = v159;
  (*(v161 + 16))(v25, v28, v159);
  sub_1D91773FC();
  swift_allocObject();
  v37 = sub_1D91773EC();
  v38 = sub_1D8D3A0AC(1, 0);
  v40 = v39;
  swift_beginAccess();
  v1[8] = v38;
  v1[9] = v40;

  v41 = sub_1D8D3A558(1);
  v43 = v42;
  swift_beginAccess();
  v1[10] = v41;
  v1[11] = v43;

  v44 = OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context;
  sub_1D8D423B4(v1 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context, v23, type metadata accessor for EyebrowBuilder.ListContext);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v52 = v1[24];
    v53 = v1[25];
    __swift_project_boxed_opaque_existential_1(v1 + 21, v52);
    v54 = COERCE_DOUBLE((*(v53 + 112))(v52, v53));
    if (v55)
    {
      v58 = v1[24];
      v59 = v1[25];
      __swift_project_boxed_opaque_existential_1(v1 + 21, v58);
      v60 = COERCE_DOUBLE((*(v59 + 80))(v58, v59));
      if (v55)
      {
LABEL_28:
        sub_1D8D41C00(v23, type metadata accessor for EyebrowBuilder.ListContext);
        goto LABEL_39;
      }

      if (v60 <= 0.0)
      {
        goto LABEL_26;
      }

      v61 = [objc_opt_self() prettyShortStringWithDuration:0 includeTimeRemainingPhrase:0 abbreviated:v60];
      if (!v61)
      {
        goto LABEL_26;
      }
    }

    else if (v54 <= 0.0 || (v61 = [objc_opt_self() prettyShortStringWithDuration:1 includeTimeRemainingPhrase:0 abbreviated:v54]) == 0)
    {
LABEL_26:
      v82 = MEMORY[0x1E69E7CC0];
LABEL_27:
      v86 = sub_1D8D42528(v82, v55, v56, v57);
      v88 = v87;

      swift_beginAccess();
      v1[16] = v86;
      v1[17] = v88;

      goto LABEL_28;
    }

    v78 = v61;
    v79 = sub_1D917820C();
    v81 = v80;

    v82 = sub_1D8D4241C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v84 = *(v82 + 2);
    v83 = *(v82 + 3);
    if (v84 >= v83 >> 1)
    {
      v82 = sub_1D8D4241C((v83 > 1), v84 + 1, 1, v82);
    }

    *(v82 + 2) = v84 + 1;
    v85 = &v82[16 * v84];
    *(v85 + 4) = v79;
    *(v85 + 5) = v81;
    v36 = v159;
    goto LABEL_27;
  }

  sub_1D911C7A0(v23, v17);
  sub_1D9117A4C(v17, v14);
  v45 = type metadata accessor for EpisodePlayState(0);
  if ((*(*(v45 - 8) + 48))(v14, 1, v45) == 1)
  {
LABEL_7:
    v46 = v1[24];
    v47 = v1[25];
    __swift_project_boxed_opaque_existential_1(v1 + 21, v46);
    v48 = COERCE_DOUBLE((*(v47 + 80))(v46, v47));
    if (v49)
    {
      sub_1D8D08A50(v17, &qword_1ECAB7AE0, &qword_1D91B7E20);
    }

    else
    {
      if (v48 > 0.0 && (v89 = [objc_opt_self() prettyShortStringWithDuration:0 includeTimeRemainingPhrase:0 abbreviated:v48]) != 0)
      {
        v90 = v89;
        v91 = sub_1D917820C();
        v93 = v92;

        v94 = sub_1D8D4241C(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v96 = *(v94 + 2);
        v95 = *(v94 + 3);
        if (v96 >= v95 >> 1)
        {
          v94 = sub_1D8D4241C((v95 > 1), v96 + 1, 1, v94);
        }

        *(v94 + 2) = v96 + 1;
        v97 = &v94[16 * v96];
        *(v97 + 4) = v91;
        *(v97 + 5) = v93;
      }

      else
      {
        v94 = MEMORY[0x1E69E7CC0];
      }

      v101 = sub_1D8D42528(v94, v49, v50, v51);
      v103 = v102;

      sub_1D8D08A50(v17, &qword_1ECAB7AE0, &qword_1D91B7E20);
      swift_beginAccess();
      v1[16] = v101;
      v1[17] = v103;

      v36 = v159;
    }

    sub_1D8D08A50(v14, &qword_1ECAB7AE0, &qword_1D91B7E20);
    goto LABEL_39;
  }

  sub_1D9117A4C(v14, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3 || EnumCaseMultiPayload == 2)
  {
    sub_1D8D41C00(v11, type metadata accessor for EpisodePlayState);
    goto LABEL_7;
  }

  v64 = *v11;
  v63 = v11[1];
  sub_1D8D08A50(v14, &qword_1ECAB7AE0, &qword_1D91B7E20);
  v68 = v63 - v64;
  if (v68 > 0.0 && (v69 = [objc_opt_self() prettyShortStringWithDuration:1 includeTimeRemainingPhrase:0 abbreviated:v68]) != 0)
  {
    v70 = v69;
    v71 = sub_1D917820C();
    v73 = v72;

    v74 = sub_1D8D4241C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v76 = *(v74 + 2);
    v75 = *(v74 + 3);
    if (v76 >= v75 >> 1)
    {
      v74 = sub_1D8D4241C((v75 > 1), v76 + 1, 1, v74);
    }

    *(v74 + 2) = v76 + 1;
    v77 = &v74[16 * v76];
    *(v77 + 4) = v71;
    *(v77 + 5) = v73;
  }

  else
  {
    v74 = MEMORY[0x1E69E7CC0];
  }

  v98 = sub_1D8D42528(v74, v65, v66, v67);
  v100 = v99;

  sub_1D8D08A50(v17, &qword_1ECAB7AE0, &qword_1D91B7E20);
  swift_beginAccess();
  v1[16] = v98;
  v1[17] = v100;

  v36 = v159;
LABEL_39:
  v104 = v1[24];
  v105 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v104);
  (*(v105 + 40))(&v170, v104, v105);
  v167 = v170;
  v168 = v171;
  v169 = v172;
  v106 = sub_1D8D3A958(v1 + 21, &v167);
  v108 = v107;
  swift_beginAccess();
  v1[4] = v106;
  v1[5] = v108;

  if ((*(v1 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_suppressPubDate) & 1) == 0)
  {
    sub_1D8D423B4(v1 + v44, v156, type metadata accessor for EyebrowBuilder.ListContext);
    v109 = swift_getEnumCaseMultiPayload();
    v110 = v1[24];
    v111 = v1[25];
    __swift_project_boxed_opaque_existential_1(v1 + 21, v110);
    v112 = *(v111 + 104);
    v113 = (v157 + 48);
    if (v109 == 2)
    {
      v114 = v154;
      v112(v110, v111);
      v115 = v155;
      if ((*v113)(v114, 1, v155) == 1)
      {
        sub_1D8D08A50(v114, &qword_1ECAB75C0, &unk_1D9188A50);
        v116 = 0;
        v117 = 0;
      }

      else
      {
        v121 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
        v122 = [v121 lessVerboseDisplayStringWithoutTimeAndCurrentYear];

        v116 = sub_1D917820C();
        v117 = v123;

        (*(v157 + 8))(v114, v115);
      }

      swift_beginAccess();
      v1[12] = v116;
      v1[13] = v117;
    }

    else
    {
      v118 = v110;
      v119 = v153;
      v112(v118, v111);
      v120 = v155;
      if ((*v113)(v119, 1, v155) == 1)
      {
        sub_1D8D08A50(v119, &qword_1ECAB75C0, &unk_1D9188A50);
      }

      else
      {
        v124 = v157;
        v125 = v151;
        (*(v157 + 32))(v151, v119, v120);
        sub_1D9176CCC();
        v127 = v126;
        v128 = type metadata accessor for AbbreviatedTimeIntervalFormatter.Configuration(0);
        v129 = v152;
        (*(*(v128 - 8) + 56))(v152, 1, 1, v128);
        v130 = static AbbreviatedTimeIntervalFormatter.string(from:configuration:)(v129, v127);
        v132 = v131;
        sub_1D8D08A50(v129, &qword_1ECABACF0, &qword_1D91BA268);
        (*(v124 + 8))(v125, v120);
        swift_beginAccess();
        v1[12] = v130;
        v1[13] = v132;
      }

      sub_1D8D41C00(v156, type metadata accessor for EyebrowBuilder.ListContext);
    }
  }

  v133 = v1[24];
  v134 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v133);
  v135 = sub_1D8D3BB98(*(v1 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_hostingViewHasLimitedSpace), v133, v134);
  v137 = v136;
  swift_beginAccess();
  v1[6] = v135;
  v1[7] = v137;

  v138 = v158;
  sub_1D8D423B4(v1 + v44, v158, type metadata accessor for EyebrowBuilder.ListContext);
  v139 = swift_getEnumCaseMultiPayload();
  if (v139 == 4 || v139 == 1)
  {
    v140 = *v138;
    v141 = v1[24];
    v142 = v1[25];
    __swift_project_boxed_opaque_existential_1(v1 + 21, v141);
    (*(v142 + 40))(&v163, v141, v142);
    if ((v165 & 1) == 0)
    {
      v164 &= 1u;
      v166 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style);
      v143 = v1[24];
      v144 = v1[25];
      __swift_project_boxed_opaque_existential_1(v1 + 21, v143);
      v145 = (*(v144 + 72))(v143, v144);
      IsSerialSSSgAA013EpisodeListenfG0O_AC5StyleOS2btFZ_0 = _s18PodcastsFoundation14EyebrowBuilderC21listenNowReasonString6reason5style17isPlayingOrPlayed16showTypeIsSerialSSSgAA013EpisodeListenfG0O_AC5StyleOS2btFZ_0(&v163, &v166, v140, v145 & 1);
      v148 = v147;
      swift_beginAccess();
      v1[14] = IsSerialSSSgAA013EpisodeListenfG0O_AC5StyleOS2btFZ_0;
      v1[15] = v148;
    }
  }

  else
  {
    sub_1D8D41C00(v138, type metadata accessor for EyebrowBuilder.ListContext);
  }

  sub_1D8D42B20(v37, "resolveEyebrowElements");

  return (*(v161 + 8))(v160, v36);
}

uint64_t type metadata accessor for AbbreviatedTimeIntervalFormatter.Configuration(uint64_t a1)
{
  result = qword_1EDCD5FD8;
  if (!qword_1EDCD5FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8D2FF34()
{
  if (!qword_1EDCD5EF8)
  {
    v0 = sub_1D91791BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCD5EF8);
    }
  }
}

id sub_1D8D2FFB0()
{
  type metadata accessor for PodcastsFoundationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDCD5F08 = result;
  return result;
}

void sub_1D8D30028(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v5 setLocalizedDateFormatFromTemplate_];

  *a4 = v5;
}

uint64_t sub_1D8D300A0()
{
  v0 = sub_1D8D30184(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABB868, &unk_1D91BEBE8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1ECAB2B70 = result;
  return result;
}

uint64_t static PodcastsBagFeatureFlags.isEnabled(_:)()
{
  if (qword_1ECAB2B68 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECAB2B70;
  os_unfair_lock_lock((qword_1ECAB2B70 + 24));
  sub_1D8D381FC((v0 + 16), &v2);
  os_unfair_lock_unlock((v0 + 24));
  return v2;
}

unint64_t sub_1D8D30184(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4208, &unk_1D9188D50);
    v3 = sub_1D91797AC();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D8D33C70(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1D8D30280(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1D8D33C70(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_1D8F86B88();
      result = v19;
      goto LABEL_8;
    }

    sub_1D8D303B4(v16, a4 & 1);
    result = sub_1D8D33C70(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
  }

  else
  {
    sub_1D8D38330(result, a2, a3, a1 & 1, v21);
  }

  return result;
}

uint64_t sub_1D8D303B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4208, &unk_1D9188D50);
  v34 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t AssetURLSessionProtocol.eraseToAnySession()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1, v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return AnyAssetBackgroundSession.init<A>(session:)(v9, AssociatedTypeWitness, a1, a2, a3);
}

uint64_t sub_1D8D307EC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1D9177E0C();
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D9177E9C();
  v9 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = qword_1EDCD5B50;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = sub_1D8D49C44;
  v14[4] = v12;
  aBlock[4] = sub_1D8D41950;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_68_0;
  v15 = _Block_copy(aBlock);
  v16 = a3;
  sub_1D9177E4C();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v11, v8, v15);
  _Block_release(v15);
  (*(v20 + 8))(v8, v6);
  (*(v9 + 8))(v11, v19);
}

uint64_t sub_1D8D30AFC()
{

  return swift_deallocObject();
}

uint64_t sub_1D8D30B34()
{

  return swift_deallocObject();
}

uint64_t AssetSource.eraseToAnyAssetSource()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1)@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1, v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  return AnyAssetSource.init<A>(source:)(v9, AssociatedTypeWitness, v12, a1, a2, a3);
}

uint64_t sub_1D8D30C9C(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D917744C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D917739C();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, a4);
  (*(v9 + 16))(v11, v13, v8);
  return sub_1D917736C();
}

uint64_t DefaultPodcastStateDataSource.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_1D8D30E1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1D9179DBC();
  a3(v10, a1, a2);
  v7 = sub_1D9179E1C();

  return a4(a1, a2, v7);
}

uint64_t sub_1D8D30EB0(uint64_t a1)
{
  v2 = *(v1 + 24);
  os_unfair_lock_lock(v2 + 4);
  sub_1D8D04F5C(v3);
  os_unfair_lock_unlock(v2 + 4);
  return swift_unknownObjectRelease();
}

char *sub_1D8D30F88(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = qword_1ECAB8638;
  v16 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x50);
  v17 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x58);
  v51 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x60);
  v18 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x68);
  v61 = 0;
  v62 = 0;
  v63 = 0;
  aBlock = v16;
  v55 = v17;
  v56 = v51;
  v57 = v18;
  v50 = v18;
  type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Paging(0, &aBlock);
  *&v11[v15] = sub_1D8D048F0();
  v19 = qword_1ECAB8640;
  sub_1D9176EAC();
  type metadata accessor for FRPSectionInfo(255, v16, v17, v18);
  v20 = sub_1D91786FC();
  type metadata accessor for FRPOutput(255, v20, v21, v22);
  swift_getFunctionTypeMetadata1();
  sub_1D8CFBDA8(&qword_1EDCD5920, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  *&v11[v19] = sub_1D9177FEC();
  v23 = &v11[qword_1ECAB8648];
  *v23 = 0;
  *(v23 + 1) = 0;
  *(v23 + 2) = 0;
  v24 = &v11[qword_1ECAB8650];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 2) = 0u;
  *(v24 + 41) = 0u;
  v25 = qword_1EDCD15F8;
  v26 = sub_1D917734C();
  (*(*(v26 - 8) + 56))(&v11[v25], 1, 1, v26);
  *&v11[qword_1EDCD1620] = 0;
  v27 = qword_1EDCD1628;
  sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
  sub_1D91791BC();
  sub_1D8D05854(&qword_1EDCD09C8, MEMORY[0x1E69E81B8]);
  *&v11[v27] = sub_1D9177FEC();
  v28 = qword_1EDCD1600;
  sub_1D91791BC();
  *&v11[v28] = sub_1D9177FEC();
  v11[qword_1EDCD1638] = 0;
  *&v11[qword_1EDCD1610] = 0;
  v29 = &v11[qword_1ECAB85F8];
  *v29 = a1;
  *(v29 + 1) = a2;

  v30 = [a3 fetchBatchSize];
  *&v11[qword_1ECAB8600] = v30;
  *&v11[qword_1ECAB8608] = a4;
  *&v11[qword_1ECAB8610] = a5;
  v31 = &v11[qword_1ECAB8618];
  *v31 = a6;
  *(v31 + 1) = a7;
  v32 = &v11[qword_1ECAB8620];
  *v32 = a8;
  *(v32 + 1) = a9;
  v33 = &v11[qword_1ECAB8628];
  *v33 = a10;
  *(v33 + 1) = a11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8660, &unk_1D91A2208);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v35 = a4;
  v49 = a5;

  v36 = a3;
  v37 = [objc_allocWithZone(ObjCClassFromMetadata) initWithFetchRequest:v36 managedObjectContext:v35 sectionNameKeyPath:0 cacheName:0];

  *&v11[qword_1ECAB8630] = v37;
  aBlock = v16;
  v55 = v17;
  v56 = v51;
  v57 = v50;
  v38 = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher(0, &aBlock);
  v60.receiver = v11;
  v60.super_class = v38;
  v39 = objc_msgSendSuper2(&v60, sel_init);
  v40 = *&v39[qword_1ECAB8630];
  v41 = v39;
  [v40 setDelegate_];
  v42 = swift_allocObject();
  v42[2] = a1;
  v42[3] = a2;
  v42[4] = v41;
  v58 = sub_1D8FBD70C;
  v59 = v42;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1D8CF5F60;
  v57 = &block_descriptor_60_1;
  v43 = _Block_copy(&aBlock);

  [v35 performBlock_];
  _Block_release(v43);

  return v41;
}

uint64_t sub_1D8D314C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return PFProducer.receive<A>(subscriber:)(a1, a4, a2, WitnessTable, a3);
}

uint64_t PFProducer.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for ProducerInner(0, a3, AssociatedTypeWitness, a5);
  v12 = sub_1D8D05B28(v5, a2, a3, a4, a5);
  v14 = v13;
  v15 = sub_1D8D05C64(v5, a2, a3, a4, a5);
  v17 = v16;
  v18 = sub_1D8D3405C(v5, a2, a3, a4, a5);
  v20 = v19;
  swift_allocObject();
  v21 = sub_1D8D1313C(a1, v12, v14, v15, v17, v18, v20);
  v24[3] = v11;
  v24[4] = swift_getWitnessTable();
  v24[0] = v21;
  sub_1D917779C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v24);
}

void sub_1D8D316AC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v97 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v96 = &v75 - v5;
  v6 = sub_1D91791BC();
  v99 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v75 - v7;
  v9 = *(v3 + 80);
  v10 = *(v3 + 96);
  v11 = type metadata accessor for ProducerInner.State(0, v9, v4, v10);
  v101 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v95 = &v75 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v75 - v17;
  v100 = v4;
  active = type metadata accessor for ProducerInner.ActiveState(0, v9, v4, v10);
  v102 = *(active - 8);
  v103 = active;
  MEMORY[0x1EEE9AC00](active);
  v21 = &v75 - v20;
  sub_1D91777FC();
  if ((sub_1D91777DC() & 1) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (a1)
    {
      goto LABEL_4;
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_4:
  v86 = a1;
  v94 = v8;
  v92 = v13;
  v98 = v6;
  v22 = *(v1 + 2);
  os_unfair_lock_lock(v22 + 4);
  v23 = *(*v1 + 112);
  swift_beginAccess();
  v24 = v101;
  v25 = v23;
  v90 = *(v101 + 16);
  v91 = v101 + 16;
  v90(v18, &v1[v23], v11);
  v26 = v102;
  v27 = v103;
  v28 = *(v102 + 48);
  v89 = v102 + 48;
  v88 = v28;
  if (v28(v18, 1, v103) == 1)
  {
    (*(v24 + 8))(v18, v11);
    os_unfair_lock_unlock(v22 + 4);
    return;
  }

  v93 = v22;
  v87 = v11;
  (*(v26 + 32))(v21, v18, v27);
  v29 = *(v27 + 60);
  v30 = *&v21[v29];
  sub_1D91777FC();
  v31 = sub_1D91777DC();
  v32 = v25;
  v33 = v94;
  v34 = v100;
  if (v31)
  {
    goto LABEL_16;
  }

  sub_1D91777FC();
  v35 = sub_1D91777DC();
  v36 = sub_1D91777FC();
  if ((v35 & 1) == 0)
  {
    v37 = v86;
    v38 = sub_1D91777DC();
    v34 = v100;
    if (v38)
    {
      goto LABEL_13;
    }

    if (((v30 | v37) & 0x8000000000000000) == 0)
    {
      v36 = v30 + v37;
      if (!__OFADD__(v30, v37))
      {
        if ((v36 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }

LABEL_25:
        __break(1u);
        return;
      }

LABEL_13:
      v36 = sub_1D91777FC();
      goto LABEL_15;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v34 = v100;
LABEL_15:
  *&v21[v29] = v36;
LABEL_16:
  v39 = v103;
  v40 = v99;
  v41 = *(v99 + 16);
  v86 = *(v103 + 44);
  v42 = v98;
  v41(v33, &v21[v86], v98);
  v43 = v97;
  v44 = (*(v97 + 48))(v33, 1, v34);
  v46 = *(v40 + 8);
  v45 = v40 + 8;
  v81 = v46;
  v46(v33, v42);
  v47 = v102;
  v48 = *(v102 + 16);
  v49 = v95;
  v94 = (v102 + 16);
  v85 = v48;
  v48(v95, v21, v39);
  v50 = v47;
  v51 = v49;
  v52 = *(v50 + 56);
  v84 = v50 + 56;
  v52(v51, 0, 1, v39);
  swift_beginAccess();
  v53 = *(v101 + 40);
  v83 = v101 + 40;
  v82 = v53;
  v53(&v1[v32], v51, v87);
  swift_endAccess();
  os_unfair_lock_unlock(v93 + 4);
  if (v44 == 1)
  {
    v54 = v103;
    v55 = v32;
    v56 = v96;
    v57 = v1;
    (*&v21[*(v103 + 48)])();
    v58 = v86;
    v99 = v45;
    v81(&v21[v86], v98);
    v59 = *(v43 + 16);
    v60 = v56;
    v61 = v100;
    v79 = v43 + 16;
    v77 = v59;
    v59(&v21[v58], v60, v100);
    v62 = *(v43 + 56);
    v63 = v61;
    v64 = v55;
    v65 = v54;
    v78 = v43 + 56;
    v76 = v62;
    v62(&v21[v58], 0, 1, v63);
    v66 = v93;
    os_unfair_lock_lock(v93 + 4);
    v85(v51, v21, v54);
    v80 = v52;
    v52(v51, 0, 1, v54);
    swift_beginAccess();
    v67 = v87;
    v82(&v57[v55], v51, v87);
    swift_endAccess();
    os_unfair_lock_unlock(v66 + 4);
    v68 = *&v21[*(v54 + 52)];
    swift_retain_n();
    v69 = v51;
    v70 = v96;
    v68(v96, sub_1D8D4DFB4, v57, sub_1D8F25D84, v57);

    os_unfair_lock_lock(v66 + 4);
    v71 = v92;
    v90(v92, &v57[v64], v67);
    LODWORD(v66) = v88(v71, 1, v65);
    (*(v101 + 8))(v71, v67);
    if (v66 != 1)
    {
      v72 = v86;
      v81(&v21[v86], v98);
      v73 = v100;
      v77(&v21[v72], v70, v100);
      v76(&v21[v72], 0, 1, v73);
      v74 = v103;
      v85(v69, v21, v103);
      v80(v69, 0, 1, v74);
      swift_beginAccess();
      v82(&v57[v64], v69, v67);
      swift_endAccess();
    }

    os_unfair_lock_unlock(v93 + 4);
    (*(v97 + 8))(v70, v100);
  }

  (*(v102 + 8))(v21, v103);
}

uint64_t sub_1D8D31FFC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = *(v8 + 80);
  v13 = *(*(*(a3 + 24) - 8) + 64);
  if (!v9)
  {
    ++v13;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v5 - 8) + 64) + v12;
  v15 = v13 + 7;
  if (v11 < a2)
  {
    v16 = ((((((((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v17 = a2 - v11;
    v18 = v16 & 0xFFFFFFF8;
    if ((v16 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = v17 + 1;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v21)
    {
      v22 = *(a1 + v16);
      if (v22)
      {
LABEL_27:
        v23 = v22 - 1;
        if (v18)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        return v11 + (v24 | v23) + 1;
      }
    }
  }

  if (v7 == v11)
  {
    v25 = *(v6 + 48);

    return v25(a1, v7, v5);
  }

  v27 = (a1 + v14) & ~v12;
  if (v10 == v11)
  {
    if (v9 >= 2)
    {
      v29 = (*(v8 + 48))(v27);
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v28 = *((v15 + v27) & 0xFFFFFFFFFFFFFFF8);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  return (v28 + 1);
}

unint64_t sub_1D8D32440()
{
  result = qword_1EDCD5C38;
  if (!qword_1EDCD5C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5C38);
  }

  return result;
}

uint64_t sub_1D8D32494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_1EDCD06D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_1EDCD06D8;
  v10 = v4;
  sub_1D917730C();
  v11 = sub_1D9178F5C();
  v12 = qword_1EDCD06D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D9189080;
  v15 = *&v10[qword_1ECAB85F8];
  v14 = *&v10[qword_1ECAB85F8 + 8];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1D8D34978();
  *(v13 + 32) = v15;
  *(v13 + 40) = v14;
  v16 = v12;

  sub_1D91772EC(v11, &dword_1D8CEC000, v16, a1, a2, a3, a4, "id: %s", 6);
}

uint64_t sub_1D8D32638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1D8CF2AC4();
  result = sub_1D917919C();
  *a4 = result;
  return result;
}

uint64_t sub_1D8D326CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D8D3271C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 uuid];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D917820C();
    v8 = v7;

    v9 = objc_opt_self();

    v10 = [v9 isEmpty_];
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v16 = [a1 storeCollectionId];
      v11 = v16 & ~(v16 >> 63);
    }

    v19 = v10;
    v17 = [a1 isPastAutodownloadOrEpisodeLimitDark];
    v14 = [a1 episodeLimit];
    v18 = [a1 subscribed];

    v12 = v18;
    v15 = v19;
    v13 = v17;
  }

  else
  {

    v8 = 0;
    v11 = 0;
    v12 = 0;
    v6 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
  a2[2] = v11;
  a2[3] = v15;
  a2[4] = v12;
  a2[5] = v6;
  a2[6] = v8;
  a2[7] = v13;
  a2[8] = v14;
}

void sub_1D8D32880()
{
  v1 = v0;
  v2 = sub_1D9177E0C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9177E9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator__donationInProgress;
  swift_beginAccess();
  v11 = *&v1[v10];

  os_unfair_lock_lock((v11 + 20));
  if (*(v11 + 16))
  {
    os_unfair_lock_unlock((v11 + 20));

    if (qword_1EDCD1090 != -1)
    {
      swift_once();
    }

    v12 = sub_1D917744C();
    __swift_project_value_buffer(v12, qword_1EDCD1098);
    v13 = sub_1D917741C();
    v14 = sub_1D9178D1C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D8CEC000, v13, v14, "Donation already in progress. Not starting new donation.", v15, 2u);
      MEMORY[0x1DA72CB90](v15, -1, -1);
    }
  }

  else
  {
    v24 = v3;
    *(v11 + 16) = 1;
    os_unfair_lock_unlock((v11 + 20));

    if (qword_1EDCD1090 != -1)
    {
      swift_once();
    }

    v23 = v6;
    v16 = sub_1D917744C();
    __swift_project_value_buffer(v16, qword_1EDCD1098);
    v17 = sub_1D917741C();
    v18 = sub_1D9178D1C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D8CEC000, v17, v18, "Starting donation to Siri (Cascade).", v19, 2u);
      MEMORY[0x1DA72CB90](v19, -1, -1);
    }

    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    aBlock[4] = sub_1D8D2BBB8;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_85;
    v21 = _Block_copy(aBlock);
    v22 = v1;
    sub_1D9177E4C();
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D8CFD768(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v9, v5, v21);
    _Block_release(v21);
    (*(v24 + 8))(v5, v2);
    (*(v7 + 8))(v9, v23);
  }
}

uint64_t sub_1D8D32D28()
{

  return swift_deallocObject();
}

uint64_t DonationService.supportsSiriIndexing.getter()
{
  v0 = sub_1D8D40B5C(&unk_1F5462298);
  sub_1D8D3F2D0(&unk_1F54622B8);
  if (!MSVDeviceIsWatch())
  {
    goto LABEL_8;
  }

  result = MSVGetDeviceHardwarePlatform();
  if (result)
  {
    v2 = result;
    v3 = sub_1D917820C();
    v5 = v4;

    LOBYTE(v2) = sub_1D8EF0850(v3, v5, v0);

    if (v2)
    {
      if (qword_1EDCD1090 != -1)
      {
        swift_once();
      }

      v6 = sub_1D917744C();
      __swift_project_value_buffer(v6, qword_1EDCD1098);

      v7 = sub_1D917741C();
      v8 = sub_1D9178D1C();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v19 = v10;
        *v9 = 136315138;
        v11 = sub_1D9178AAC();
        v13 = v12;

        v14 = sub_1D8CFA924(v11, v13, &v19);

        *(v9 + 4) = v14;
        _os_log_impl(&dword_1D8CEC000, v7, v8, "Unsupported watch device %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x1DA72CB90](v10, -1, -1);
        MEMORY[0x1DA72CB90](v9, -1, -1);
      }

      else
      {
      }

      return 0;
    }

LABEL_8:

    if (AFDeviceSupportsSiriUOD() & 1) != 0 || (AFShouldRunAsrOnServerForUOD() & 1) != 0 || (AFOfflineDictationCapable())
    {
      return 1;
    }

    if (qword_1EDCD1090 != -1)
    {
      swift_once();
    }

    v15 = sub_1D917744C();
    __swift_project_value_buffer(v15, qword_1EDCD1098);
    v16 = sub_1D917741C();
    v17 = sub_1D9178D1C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D8CEC000, v16, v17, "Siri understanding on device or ASR is not supported", v18, 2u);
      MEMORY[0x1DA72CB90](v18, -1, -1);
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_1D8D33104(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9177F1C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 72);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1D9177F4C();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v12 = [objc_opt_self() sharedInstance];
    v13 = [v12 privateQueueContext];

    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = v13;
    v15[4] = a1;
    v15[5] = a2;
    aBlock[4] = sub_1D90F9B24;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_86;
    v16 = _Block_copy(aBlock);
    v17 = v13;

    [v17 performBlock_];
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D8D33340()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8D33378()
{

  return swift_deallocObject();
}

uint64_t sub_1D8D333C0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D8D5FE18;

  return sub_1D8D4DE18();
}

uint64_t sub_1D8D33460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void Synchronized.modify(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = a1;
  v4[4] = a2;
  sub_1D8D056BC(sub_1D8D33504, v4, a3);
}

uint64_t *sub_1D8D33534(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = sub_1D917935C();
  }

  else
  {
    v6 = *(v5 + 16);
  }

  *v4 = v6;
  v4[2] = a3;
  return result;
}

uint64_t sub_1D8D335AC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D91773AC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D917734C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D917737C();
  sub_1D91773DC();
  v11 = sub_1D9178F4C();
  if (sub_1D917918C())
  {

    sub_1D917740C();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v10, v11, v14, "FRP", v12, v13, 2u);
    MEMORY[0x1DA72CB90](v13, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_1D8D337F4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *v3;
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 16);
      swift_unknownObjectRetain();

      v6(v7, &protocol witness table for PodcastStateController, ObjectType, v4);
      (*(v4 + 32))(ObjectType, v4);
      swift_unknownObjectRelease();
      v3 += 2;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1D8D338CC()
{
  v7 = sub_1D9178E0C();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1D8CFD888();
  sub_1D9177E7C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1D8D0EF30(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1D9178E4C();
  qword_1EDCD5B58 = result;
  return result;
}

uint64_t ForegroundSessionSource.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *(swift_allocObject() + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49B8, &unk_1D9191140);
  swift_allocObject();
  result = sub_1D9177A5C();
  *a2 = result;
  return result;
}

uint64_t sub_1D8D33BAC()
{

  return swift_deallocObject();
}

uint64_t Synchronized.init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8D048F0();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

void *PodcastStateController.init(dataSources:transitionRules:)(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v14 = a2;
  v12 = sub_1D9178E0C();
  v3 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = MEMORY[0x1E69E7CC8];
  v2[3] = MEMORY[0x1E69E7CC8];
  v2[4] = v8;
  sub_1D8CFD888();
  sub_1D9177E4C();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1D8D017BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8D02D6C();
  sub_1D91792CC();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v12);
  v9 = sub_1D9178E4C();
  v10 = v14;
  v2[2] = v13;
  v2[5] = v10;
  v2[6] = v9;
  sub_1D8D337F4();
  return v2;
}

uint64_t (*sub_1D8D3405C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v11);
  v13 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  *(v14 + 5) = a5;
  (*(v9 + 32))(&v14[v13], v12, a2);
  return sub_1D8F25D88;
}

_DWORD *sub_1D8D34190(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a4 + 24) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = *(v9 + 64);
  if (v10)
  {
    v13 = v10 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v8)
  {
    v14 = *(v7 + 84);
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(*(v6 - 8) + 64) + v11;
  if (!v10)
  {
    ++v12;
  }

  v16 = v12 + 7;
  v17 = ((((((((v16 + (v15 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 < a3)
  {
    v18 = a3 - v14;
    if (((((((((v16 + (v15 & ~v11)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v5 = v20;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v14)
  {
    if (((((((((v16 + (v15 & ~v11)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = a2 - v14;
    }

    else
    {
      v21 = 1;
    }

    if (((((((((v16 + (v15 & ~v11)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v22 = ~v14 + a2;
      v23 = result;
      bzero(result, ((((((((v16 + (v15 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v23;
      *v23 = v22;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v17) = v21;
      }

      else
      {
        *(result + v17) = v21;
      }
    }

    else if (v5)
    {
      *(result + v17) = v21;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v17) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_41;
    }

    *(result + v17) = 0;
  }

  else if (v5)
  {
    *(result + v17) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return result;
  }

LABEL_41:
  if (v8 == v14)
  {
    v24 = *(v7 + 56);

    return v24();
  }

  else
  {
    result = ((result + v15) & ~v11);
    if (v13 == v14)
    {
      v25 = *(v9 + 56);
      v26 = a2 + 1;

      return v25(result, v26, v10);
    }

    else
    {
      v27 = ((result + v16) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v27 = a2 & 0x7FFFFFFF;
        v27[1] = 0;
      }

      else
      {
        *v27 = a2 - 1;
      }
    }
  }

  return result;
}

uint64_t sub_1D8D34454(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void sub_1D8D344B4(uint64_t a1)
{
  if (!qword_1EDCD5C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECAB4F30, &qword_1D918DA90);
    v1 = sub_1D9177AEC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCD5C68);
    }
  }
}

id sub_1D8D34518(uint64_t a1, uint64_t a2, char *a3)
{
  v17 = a1;
  v18 = a2;
  v4 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1D9178E0C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_workQueue;
  v15[1] = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8098], v6);
  sub_1D9177E4C();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD720(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  *&a3[v16] = sub_1D9178E4C();
  sub_1D9176CEC();
  *&a3[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_syncSession] = 0;
  v10 = &a3[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_appleMusicSegmentKey];
  *v10 = 0x746E656D676573;
  *(v10 + 1) = 0xE700000000000000;
  v11 = &a3[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_appleMusicSegmentValue];
  *v11 = 0x636973754DLL;
  *(v11 + 1) = 0xE500000000000000;
  v12 = v18;
  *&a3[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_bag] = v17;
  *&a3[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_accountStore] = v12;
  v13 = type metadata accessor for MusicSubscriptionInfoSyncUtil(0);
  v19.receiver = a3;
  v19.super_class = v13;
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t sub_1D8D34864(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1D91791BC();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

unint64_t sub_1D8D34978()
{
  result = qword_1EDCD5C40;
  if (!qword_1EDCD5C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5C40);
  }

  return result;
}

uint64_t sub_1D8D349E4@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v29 = a4;
  v28 = a1;
  v25 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v6, v19);
  v23 = 1;
  if ((*(v14 + 48))(v21, 1, v13) != 1)
  {
    (*(v14 + 32))(v17, v21, v13);
    v28(v17, v11);
    (*(v14 + 8))(v17, v13);
    if (v7)
    {
      return (*(v25 + 32))(v26, v11, a3);
    }

    v23 = 0;
  }

  return (*(*(v29 - 8) + 56))(a6, v23, 1);
}

uint64_t sub_1D8D34C8C@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a3;
  v21 = a4;
  v5 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x50);
  v6 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x58);
  sub_1D8CF2154(255, &qword_1EDCD09D0, 0x1E695D630);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v8 = sub_1D91791BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  sub_1D8D166F4(*a1, v20, &v20 - v10);
  if ((*(*(TupleTypeMetadata3 - 8) + 48))(v11, 1, TupleTypeMetadata3) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v12 = swift_getTupleTypeMetadata3();
    return (*(*(v12 - 8) + 56))(v21, 1, 1, v12);
  }

  else
  {
    v14 = *(TupleTypeMetadata3 + 48);
    v15 = *&v11[*(TupleTypeMetadata3 + 64)];
    v16 = swift_getTupleTypeMetadata3();
    v17 = *(v16 + 48);
    v18 = *(v16 + 64);
    v19 = v21;
    (*(*(v5 - 8) + 32))(v21, v11, v5);
    (*(*(v6 - 8) + 32))(v19 + v17, &v11[v14], v6);
    *(v19 + v18) = v15;
    return (*(*(v16 - 8) + 56))(v19, 0, 1, v16);
  }
}

void sub_1D8D350C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1D8D350E4(void *a1@<X0>, void *a4@<X8>)
{
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [a1 doubleForKey_];
  v8 = v7;

  a4[3] = MEMORY[0x1E69E63B0];
  *a4 = v8;
}

uint64_t sub_1D8D35608()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1EDCD1008);
  __swift_project_value_buffer(v0, qword_1EDCD1008);
  return sub_1D917742C();
}

uint64_t sub_1D8D356E4(uint64_t a1)
{
  v33 = sub_1D9177E0C();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9177E9C();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9177F1C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = v1;
  v14 = *&v1[OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_workQueue];
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9, v11);
  v15 = v14;
  v16 = sub_1D9177F4C();
  result = (*(v10 + 8))(v13, v9);
  if (v16)
  {
    v31[1] = v15;
    v32 = v3;
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    v19 = dispatch_group_create();
    v20 = *(a1 + 16);
    if (v20)
    {
      v21 = a1 + 32;
      do
      {
        dispatch_group_enter(v19);
        sub_1D8D35688(v21, &aBlock);
        v22 = swift_allocObject();
        v23 = v41;
        *(v22 + 48) = v40;
        *(v22 + 64) = v23;
        *(v22 + 80) = v42;
        v24 = v39;
        *(v22 + 16) = aBlock;
        *(v22 + 32) = v24;
        *(v22 + 96) = v18;
        *(v22 + 104) = v19;

        v25 = v19;
        sub_1D8D2C044(sub_1D8DA8CDC, v22);

        v21 += 80;
        --v20;
      }

      while (v20);
    }

    v26 = swift_allocObject();
    v27 = v34;
    v26[2] = a1;
    v26[3] = v27;
    v26[4] = v18;
    *&v40 = sub_1D8DA9C24;
    *(&v40 + 1) = v26;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v39 = sub_1D8CF5F60;
    *(&v39 + 1) = &block_descriptor_38_2;
    v28 = _Block_copy(&aBlock);

    v29 = v27;
    sub_1D9177E4C();
    v37 = MEMORY[0x1E69E7CC0];
    sub_1D8CFD768(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
    v30 = v33;
    sub_1D91792CC();
    sub_1D9178D7C();
    _Block_release(v28);

    (*(v32 + 8))(v5, v30);
    (*(v35 + 8))(v8, v36);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8D35B88()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1D8D35BE8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8D35C30(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36 - v5;
  v7 = sub_1D9177F1C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + 72);
  *v11 = v12;
  v13 = *MEMORY[0x1E69E8020];
  v14 = *(v8 + 104);
  v14(v11, v13, v7, v9);
  v15 = v12;
  LOBYTE(v12) = sub_1D9177F4C();
  v39 = *(v8 + 8);
  result = v39(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v38 = v6;
  v17 = *(v2 + 8);
  sub_1D8D35688(v2, v43);
  sub_1D8D35688(v43, v42);
  v18 = swift_allocObject();
  v37 = a1;
  *(v18 + 16) = a1;
  v19 = v40;
  *(v18 + 24) = v40;
  v20 = v43[3];
  *(v18 + 64) = v43[2];
  *(v18 + 80) = v20;
  *(v18 + 96) = v43[4];
  v21 = v43[1];
  *(v18 + 32) = v43[0];
  *(v18 + 48) = v21;
  v22 = *(v17 + 72);
  *v11 = v22;
  (v14)(v11, v13, v7);

  v23 = v22;
  LOBYTE(v22) = sub_1D9177F4C();
  result = v39(v11, v7);
  if ((v22 & 1) == 0)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v24 = *(v17 + 80);
  if (v24)
  {
    v25 = *(v17 + 88);
    v26 = sub_1D917886C();
    v27 = v38;
    (*(*(v26 - 8) + 56))(v38, 1, 1, v26);
    sub_1D8D35688(v42, v41);
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    v29 = v41[3];
    *(v28 + 64) = v41[2];
    *(v28 + 80) = v29;
    *(v28 + 96) = v41[4];
    v30 = v41[1];
    *(v28 + 32) = v41[0];
    *(v28 + 48) = v30;
    *(v28 + 112) = v24;
    *(v28 + 120) = v25;
    *(v28 + 128) = v37;
    *(v28 + 136) = v19;

    sub_1D90FA0CC(v24, v25);

    sub_1D8E91268(0, 0, v27, &unk_1D91B77D0, v28);

    sub_1D8D4F5BC(v24, v25);

    return sub_1D8D330B0(v42);
  }

  else
  {
    v31 = *(v17 + 16);
    if ([objc_opt_self() isRunningOnHomepod])
    {
      v32 = v31 == 2;
    }

    else
    {
      v32 = v31 != 1;
    }

    v33 = swift_allocObject();
    swift_weakInit();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = sub_1D8D4F780;
    v34[4] = v18;

    if (v32)
    {
      sub_1D8D33104(sub_1D8D4F1F4, v34);
    }

    else
    {
      sub_1D90F7804(sub_1D90F9FE4, v34, v35);
    }

    sub_1D8D330B0(v42);
  }
}

uint64_t sub_1D8D360F0()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D8D36148()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8D3618C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D8D5FF18;

  return sub_1D8D333C0(a1);
}

id DeferredLaunchTaskCoordinator.init()()
{
  v15 = sub_1D9178E0C();
  v0 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v2 = v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v17 = OBJC_IVAR___PFDeferredLaunchTaskCoordinator__adminQueue;
  v14[1] = sub_1D8CFD888();
  v16 = "ks";
  sub_1D9177E7C();
  v20 = MEMORY[0x1E69E7CC0];
  v14[4] = sub_1D8CFD690(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v14[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  v5 = *MEMORY[0x1E69E8090];
  v6 = v0 + 104;
  v7 = *(v0 + 104);
  v14[2] = v6;
  v8 = v15;
  v7(v2, v5, v15);
  *&v18[v17] = sub_1D9178E4C();
  v17 = OBJC_IVAR___PFDeferredLaunchTaskCoordinator__workQueue;
  sub_1D9177E7C();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D91792CC();
  v7(v2, v5, v8);
  v9 = sub_1D9178E4C();
  v10 = v18;
  *&v18[v17] = v9;
  *&v10[OBJC_IVAR___PFDeferredLaunchTaskCoordinator__tasks] = MEMORY[0x1E69E7CC0];
  v10[OBJC_IVAR___PFDeferredLaunchTaskCoordinator__deferring] = 1;
  v10[OBJC_IVAR___PFDeferredLaunchTaskCoordinator__timeoutScheduled] = 0;
  v11 = v10;
  v12 = type metadata accessor for DeferredLaunchTaskCoordinator();
  v19.receiver = v11;
  v19.super_class = v12;
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t sub_1D8D36720(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Publisher.emitSignpostEvent(log:name:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1D91775FC();
  v21 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 48) = a3;
  *(v15 + 56) = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  *(v16 + 48) = a3;
  *(v16 + 56) = a4;
  v17 = a1;
  sub_1D9177B3C();

  swift_getWitnessTable();
  v18 = sub_1D9177B1C();
  (*(v21 + 8))(v14, v12);
  return v18;
}

uint64_t sub_1D8D36978()
{

  return swift_deallocObject();
}

void MTPodcast.artworkModel.getter(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 uuid];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D917820C();
    v8 = v7;

    v9 = [v2 artworkTemplateURL];
    if (v9 || (v9 = [v2 imageURL]) != 0)
    {
      v10 = v9;
      v11 = sub_1D917820C();
      v43 = v12;
      v45 = v11;

      v13 = [v2 artworkPrimaryColor];
    }

    else
    {
      sub_1D917946C();

      MEMORY[0x1DA7298F0](v6, v8);
      v13 = [v2 artworkPrimaryColor];
    }

    v14 = v13;
    if (v14)
    {
      v15 = v14;
      v16 = sub_1D917820C();
      v18 = v17;

      v28 = sub_1D8D3707C(v16, v18);
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = -1;
    }

    MTPodcast.artworkTextColors.getter(v55);
    v31 = [v2 title];
    if (v31)
    {
      v32 = v31;
      v33 = sub_1D917820C();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    if (qword_1EDCD78A0 != -1)
    {
      swift_once();
    }

    v36 = word_1EDCD78A8;
    v37 = HIBYTE(word_1EDCD78A8);
    if (qword_1EDCD7890 != -1)
    {
      swift_once();
    }

    *&v47[39] = v56[0];
    *&v47[23] = v55[1];
    *&v47[7] = v55[0];
    *&v48 = v46;
    *(&v48 + 1) = v44;
    *&v49 = v6;
    *(&v49 + 1) = v8;
    LOBYTE(v50) = 1;
    *(&v50 + 1) = 0x4082C00000000000;
    *&v51 = 0x4082C00000000000;
    *(&v51 + 1) = v28;
    v52[0] = v30;
    *&v52[1] = *v47;
    *&v52[17] = *&v47[16];
    *&v52[33] = *&v47[32];
    *&v52[49] = *(v56 + 9);
    v52[65] = 0;
    v52[66] = v36;
    v52[67] = v37;
    *&v52[72] = v33;
    *&v53 = v35;
    BYTE8(v53) = byte_1EDCD7898;
    *(&v53 + 9) = 0;
    *&v54 = v6;
    *(&v54 + 1) = v8;
    nullsub_1();
    v38 = v53;
    a1[8] = *&v52[64];
    a1[9] = v38;
    a1[10] = v54;
    v39 = *&v52[16];
    a1[4] = *v52;
    a1[5] = v39;
    v40 = *&v52[48];
    a1[6] = *&v52[32];
    a1[7] = v40;
    v41 = v49;
    *a1 = v48;
    a1[1] = v41;
    v42 = v51;
    a1[2] = v50;
    a1[3] = v42;
  }

  else
  {
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v19 = sub_1D917744C();
    __swift_project_value_buffer(v19, qword_1EDCD0F88);
    v20 = sub_1D917741C();
    v21 = sub_1D9178CFC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1D8CEC000, v20, v21, "Critical issue: Show with nil UUID", v22, 2u);
      MEMORY[0x1DA72CB90](v22, -1, -1);
    }

    sub_1D8D39E08(&v48);
    v23 = v53;
    a1[8] = *&v52[64];
    a1[9] = v23;
    a1[10] = v54;
    v24 = *&v52[16];
    a1[4] = *v52;
    a1[5] = v24;
    v25 = *&v52[48];
    a1[6] = *&v52[32];
    a1[7] = v25;
    v26 = v49;
    *a1 = v48;
    a1[1] = v26;
    v27 = v51;
    a1[2] = v50;
    a1[3] = v27;
  }
}

void sub_1D8D36DE8()
{
  v0 = CGImageDestinationCopyTypeIdentifiers();
  v1 = *MEMORY[0x1E69874A0];
  v2 = [(__CFArray *)v0 containsObject:v1];

  if (v2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  byte_1EDCD7898 = v3;
}

uint64_t sub_1D8D3707C(uint64_t a1, unint64_t a2)
{
  v5 = a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL;
  if (v5 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D91D0DF0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D0DD0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7261656C63 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91D0DB0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else
  {
    result = sub_1D8D3E514(a1, a2);
    if (!v2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1D8D37264(uint64_t a1, unint64_t a2, unsigned int (*a3)(uint64_t))
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v8 = 0;
    v9 = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v13 = sub_1D917945C();
        v15 = v14;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v18[0] = a1;
          v18[1] = v9;
          v12 = v18 + v8;
        }

        else
        {
          v11 = v10;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v11 = sub_1D917957C();
          }

          v12 = (v11 + v8);
        }

        v13 = *v12;
        if ((*v12 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v17 = (__clz(v13 ^ 0xFF) - 24);
        if (v17 > 2)
        {
          if (v17 == 3)
          {
            v13 = ((v13 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
            v15 = 3;
          }

          else
          {
            v13 = ((v13 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
            v15 = 4;
          }

          goto LABEL_15;
        }

        if (v17 == 1)
        {
LABEL_14:
          v15 = 1;
        }

        else
        {
          v13 = v12[1] & 0x3F | ((v13 & 0x1F) << 6);
          v15 = 2;
        }
      }

LABEL_15:
      result = (v3 == 0) & a3(v13);
      if (result == 1)
      {
        v8 += v15;
        if (v8 < v4)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

void MTPodcast.uberBackgroundArtworkModel.getter(_OWORD *a1@<X8>)
{
  v3 = [v1 uuid];
  if (!v3)
  {
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v17 = sub_1D917744C();
    __swift_project_value_buffer(v17, qword_1EDCD0F88);
    v18 = sub_1D917741C();
    v19 = sub_1D9178CFC();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_16;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1D8CEC000, v18, v19, "Critical issue: Show with nil UUID", v20, 2u);
    v21 = v20;
    goto LABEL_14;
  }

  v4 = v3;
  v5 = sub_1D917820C();
  v7 = v6;

  v8 = [v1 uberBackgroundImageURL];
  if (!v8)
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v22 = sub_1D917744C();
    __swift_project_value_buffer(v22, qword_1EDCD5E28);

    v18 = sub_1D917741C();
    v23 = sub_1D9178CEC();

    if (!os_log_type_enabled(v18, v23))
    {

      goto LABEL_16;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v50 = v25;
    *v24 = 136315138;
    v26 = sub_1D8CFA924(v5, v7, &v50);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_1D8CEC000, v18, v23, "Unable to construct artwork model, show (%s) does not have required uber background image url", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x1DA72CB90](v25, -1, -1);
    v21 = v24;
LABEL_14:
    MEMORY[0x1DA72CB90](v21, -1, -1);
LABEL_16:

    sub_1D8D39E08(&v50);
    v27 = v55;
    a1[8] = *&v54[64];
    a1[9] = v27;
    a1[10] = v56;
    v28 = *&v54[16];
    a1[4] = *v54;
    a1[5] = v28;
    v29 = *&v54[48];
    a1[6] = *&v54[32];
    a1[7] = v29;
    v30 = v51;
    *a1 = v50;
    a1[1] = v30;
    v31 = v53;
    a1[2] = v52;
    a1[3] = v31;
    return;
  }

  v48 = v5;
  v9 = v8;
  v47 = sub_1D917820C();
  v11 = v10;

  v12 = [v1 uberBackgroundJoeColor];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1D917820C();
    v16 = v15;

    v32 = sub_1D8D3707C(v14, v16);
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = -1;
  }

  MTPodcast.uberBackgroundTextColors.getter(v57);
  v35 = [v1 title];
  if (v35)
  {
    v36 = v35;
    v37 = sub_1D917820C();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  if (qword_1EDCD78A0 != -1)
  {
    swift_once();
  }

  v40 = word_1EDCD78A8;
  v41 = HIBYTE(word_1EDCD78A8);
  if (qword_1EDCD7890 != -1)
  {
    swift_once();
  }

  *&v49[39] = v58[0];
  *&v49[23] = v57[1];
  *&v49[7] = v57[0];
  *&v50 = v47;
  *(&v50 + 1) = v11;
  *&v51 = v48;
  *(&v51 + 1) = v7;
  LOBYTE(v52) = 1;
  *(&v52 + 1) = 0x40A0000000000000;
  *&v53 = 0x40A5580000000000;
  *(&v53 + 1) = v32;
  v54[0] = v34;
  *&v54[1] = *v49;
  *&v54[17] = *&v49[16];
  *&v54[33] = *&v49[32];
  *&v54[49] = *(v58 + 9);
  v54[65] = 4;
  v54[66] = v40;
  v54[67] = v41;
  *&v54[72] = v37;
  *&v55 = v39;
  BYTE8(v55) = byte_1EDCD7898;
  *(&v55 + 9) = 0;
  *&v56 = v47;
  *(&v56 + 1) = v11;
  nullsub_1();
  v42 = v55;
  a1[8] = *&v54[64];
  a1[9] = v42;
  a1[10] = v56;
  v43 = *&v54[16];
  a1[4] = *v54;
  a1[5] = v43;
  v44 = *&v54[48];
  a1[6] = *&v54[32];
  a1[7] = v44;
  v45 = v51;
  *a1 = v50;
  a1[1] = v45;
  v46 = v53;
  a1[2] = v52;
  a1[3] = v46;
}

void MTEpisode.artworkModel.getter(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 uuid];
  if (!v4)
  {
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v22 = sub_1D917744C();
    __swift_project_value_buffer(v22, qword_1EDCD0F88);
    v23 = sub_1D917741C();
    v24 = sub_1D9178CFC();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_18;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1D8CEC000, v23, v24, "Critical issue: Show with nil UUID", v25, 2u);
    v26 = v25;
    goto LABEL_16;
  }

  v5 = v4;
  v6 = sub_1D917820C();
  v8 = v7;

  v9 = [v2 artworkTemplateURL];
  if (!v9)
  {
LABEL_12:
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v27 = sub_1D917744C();
    __swift_project_value_buffer(v27, qword_1EDCD5E28);

    v23 = sub_1D917741C();
    v28 = sub_1D9178CEC();

    if (!os_log_type_enabled(v23, v28))
    {

      goto LABEL_18;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v88 = v30;
    *v29 = 136315138;
    v31 = sub_1D8CFA924(v6, v8, &v88);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1D8CEC000, v23, v28, "Unable to construct artwork model, episode (%s) does not have an artworkTemplateURL or invalid size", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1DA72CB90](v30, -1, -1);
    v26 = v29;
LABEL_16:
    MEMORY[0x1DA72CB90](v26, -1, -1);
LABEL_18:

    sub_1D8D39E08(&v88);
    v32 = v97;
    a1[8] = v96;
    a1[9] = v32;
    a1[10] = v98;
    v33 = v93;
    a1[4] = v92;
    a1[5] = v33;
    v34 = v95;
    a1[6] = v94;
    a1[7] = v34;
    v35 = v89;
    *a1 = v88;
    a1[1] = v35;
    v36 = v91;
    a1[2] = v90;
    a1[3] = v36;
    return;
  }

  v10 = v9;
  v11 = sub_1D917820C();
  v13 = v12;

  [v2 artworkWidth];
  if (v14 <= 10.0 || ([v2 artworkHeight], v15 <= 10.0))
  {

    goto LABEL_12;
  }

  v87 = v11;
  v16 = [v2 artworkBackgroundColor];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1D917820C();
    v20 = v19;

    v21 = sub_1D8D3707C(v18, v20);
    v85 = v37;
    v86 = v21;
  }

  else
  {
    v86 = 0;
    v85 = -1;
  }

  v38 = [v2 artworkTextPrimaryColor];
  if (v38)
  {
    v39 = v38;
    v40 = sub_1D917820C();
    v42 = v41;

    v43 = sub_1D8D3707C(v40, v42);
    v83 = v44;
    v84 = v43;
  }

  else
  {
    v84 = 0;
    v83 = -1;
  }

  v45 = [v2 artworkTextSecondaryColor];
  if (v45)
  {
    v46 = v45;
    v47 = sub_1D917820C();
    v49 = v48;

    v50 = sub_1D8D3707C(v47, v49);
    v81 = v51;
    v82 = v50;
  }

  else
  {
    v82 = 0;
    v81 = -1;
  }

  v52 = [v2 artworkTextTertiaryColor];
  if (v52)
  {
    v53 = v52;
    v54 = sub_1D917820C();
    v56 = v55;

    v57 = sub_1D8D3707C(v54, v56);
    v79 = v58;
    v80 = v57;
  }

  else
  {
    v80 = 0;
    v79 = -1;
  }

  v59 = [v2 artworkTextQuaternaryColor];
  if (v59)
  {
    v60 = v59;
    v61 = sub_1D917820C();
    v63 = v62;

    v64 = sub_1D8D3707C(v61, v63);
    v66 = v65;
  }

  else
  {
    v64 = 0;
    v66 = -1;
  }

  v67 = [v2 title];
  if (v67)
  {
    v68 = v67;
    v69 = sub_1D917820C();
    v71 = v70;
  }

  else
  {
    v69 = 0;
    v71 = 0;
  }

  if (qword_1EDCD78A0 != -1)
  {
    swift_once();
  }

  v72 = word_1EDCD78A8;
  v73 = HIBYTE(word_1EDCD78A8);
  if (qword_1EDCD7890 != -1)
  {
    swift_once();
  }

  *&v88 = v87;
  *(&v88 + 1) = v13;
  *&v89 = v6;
  *(&v89 + 1) = v8;
  LOBYTE(v90) = 0;
  *(&v90 + 1) = 0x4082C00000000000;
  *&v91 = 0x4082C00000000000;
  *(&v91 + 1) = v86;
  LOBYTE(v92) = v85;
  *(&v92 + 1) = v84;
  LOBYTE(v93) = v83;
  *(&v93 + 1) = v82;
  LOBYTE(v94) = v81;
  *(&v94 + 1) = v80;
  LOBYTE(v95) = v79;
  *(&v95 + 1) = v64;
  LOWORD(v96) = v66;
  BYTE2(v96) = v72;
  BYTE3(v96) = v73;
  *(&v96 + 1) = v69;
  *&v97 = v71;
  BYTE8(v97) = byte_1EDCD7898;
  *(&v97 + 9) = 0;
  *&v98 = v6;
  *(&v98 + 1) = v8;
  nullsub_1();
  v74 = v97;
  a1[8] = v96;
  a1[9] = v74;
  a1[10] = v98;
  v75 = v93;
  a1[4] = v92;
  a1[5] = v75;
  v76 = v95;
  a1[6] = v94;
  a1[7] = v76;
  v77 = v89;
  *a1 = v88;
  a1[1] = v77;
  v78 = v91;
  a1[2] = v90;
  a1[3] = v78;
}

uint64_t sub_1D8D38088(uint64_t a1)
{
  result = type metadata accessor for EyebrowBuilder.ListContext(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1D8D38158(uint64_t a1)
{
  sub_1D9176E3C();
  if (v1 <= 0x3F)
  {
    sub_1D8D2FF34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D8D381FC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (result = sub_1D8D33C70(0xD000000000000017, 0x80000001D91C7E80), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + result);
  }

  else
  {
    sub_1D8D3EA04(0xD000000000000017, 0x80000001D91C7E80, 0xD000000000000027, 0x80000001D91D9E60);
    v8 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v7 = [v8 BOOLForKey_];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a1;
    result = sub_1D8D30280(v7, 0xD000000000000017, 0x80000001D91C7E80, isUniquelyReferenced_nonNull_native);
    *a1 = v11;
  }

  *a2 = v7;
  return result;
}

unint64_t sub_1D8D38330(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1D8D3859C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x1E69E7D40] & *v3;
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = a3;
  v5 = v4;
  swift_beginAccess();
  v6 = *(v5 + 96);
  v12[0] = *(v5 + 80);
  v12[1] = v6;
  v7 = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Paging(255, v12);
  v10 = type metadata accessor for Synchronized(0, v7, v8, v9);
  sub_1D8D1665C(v13, v10);
  return swift_endAccess();
}

void *sub_1D8D3865C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1D8D38838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t MTPodcastEpisodeLimit.allowsAutomaticDownloads.getter(void *a1)
{
  v1 = a1;
  while (v1 == 0x100000001)
  {
    v2 = [objc_opt_self() _applePodcastsFoundationSettingsUserDefaults];
    v1 = [v2 episodeLimitForKey_];
  }

  if (v1 < 0xA || v1 == 0xFFFFFFFFLL)
  {
    return 1;
  }

  if (v1 == 0x100000000)
  {
    return 0;
  }

  type metadata accessor for MTPodcastEpisodeLimit(0);
  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

uint64_t sub_1D8D38B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a6;
  v11 = sub_1D8CF2154(255, &qword_1EDCD09D0, 0x1E695D630);
  swift_getTupleTypeMetadata3();
  v12 = sub_1D91786FC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v23 - v15;
  (*(v17 + 16))(&v23 - v15, a1, TupleTypeMetadata2, v14);

  v30 = *(a1 + *(TupleTypeMetadata2 + 48));
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1D8D175AC(sub_1D8D38DDC, v25, v12, v11, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v19);
  v21 = v24;
  (*(*(a3 - 8) + 32))(v24, v16, a3);
  result = type metadata accessor for FRPSectionInfo(0, v11, a3, a5);
  *(v21 + *(result + 44)) = v20;
  return result;
}

uint64_t sub_1D8D38E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1D8CF2154(255, &qword_1EDCD09D0, 0x1E695D630);
  swift_getTupleTypeMetadata3();
  v12 = sub_1D91786FC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v23[-v15];
  (*(v17 + 16))(&v23[-v15], a1, TupleTypeMetadata2, v14);

  v28 = *(a1 + *(TupleTypeMetadata2 + 48));
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1D8D175AC(sub_1D8D39048, v23, v12, a2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v19);
  (*(*(a3 - 8) + 32))(a6, v16, a3);
  result = type metadata accessor for FRPSectionInfo(0, a2, a3, a5);
  *(a6 + *(result + 44)) = v20;
  return result;
}

uint64_t sub_1D8D39084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v12 = a5[2];
  v13 = a5[3];
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v9 = a5;
    v16 = a5[4];
    v11 = v15 - v16;
    if (!__OFSUB__(v15, v16))
    {
      v5 = a4;
      v6 = a3;
      v7 = a2;
      v8 = a1;
      v10 = sub_1D9178F4C();
      if (qword_1EDCD06D0 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_10:
  swift_once();
LABEL_4:
  swift_beginAccess();
  v17 = qword_1EDCD06D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D918B210;
  v19 = MEMORY[0x1E69E63A8];
  v20 = *(v9 + 56);
  *(v18 + 56) = MEMORY[0x1E69E6370];
  *(v18 + 64) = v19;
  *(v18 + 32) = v20;
  v21 = v9[1];
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = v17;
    v23 = sub_1D917935C();
  }

  else
  {
    v23 = *(v21 + 16);
    v24 = v17;
  }

  v25 = MEMORY[0x1E69E6530];
  v26 = MEMORY[0x1E69E65A8];
  *(v18 + 96) = MEMORY[0x1E69E6530];
  *(v18 + 104) = v26;
  *(v18 + 72) = v23;
  v27 = v9[6];
  *(v18 + 136) = v25;
  *(v18 + 144) = v26;
  *(v18 + 112) = v27;
  *(v18 + 176) = v25;
  *(v18 + 184) = v26;
  *(v18 + 152) = v11;
  LOBYTE(v29) = 2;
  sub_1D91772EC(v10, &dword_1D8CEC000, v17, v8, v7, v6, v5, "Update pushed: %i, Paged: %i, Total: %i, Touched: %i", 52, v29, v18, v30);
}

unint64_t sub_1D8D39254(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t EpisodeListType.stationUUID.getter()
{
  if (*(v0 + 64) != 5)
  {
    return 0;
  }

  v1 = *v0;

  return v1;
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

uint64_t EpisodeListType.wantsListenNowReason.getter()
{
  v1 = *v0;
  v2 = v0[64];
  if (v2 == 6)
  {
    return v1 & 1;
  }

  if (v2 != 10 || ((v3 = vorrq_s8(*(v0 + 2), *(v0 + 3)), v4 = *&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) | *(v0 + 3) | *(v0 + 2) | *(v0 + 1), ((*(v0 + 1) << 8) | ((*(v0 + 5) | (v0[7] << 16)) << 40) | v1) == 2) ? (v5 = v4 == 0) : (v5 = 0), !v5))
  {
    LOBYTE(v1) = 0;
    return v1 & 1;
  }

  return 1;
}

uint64_t MTEpisode.adamID.getter()
{
  v1 = [v0 storeTrackId];
  if ([objc_opt_self() isEmpty_])
  {
    return 0;
  }

  else
  {
    return v1 & ~(v1 >> 63);
  }
}

uint64_t MTEpisode.releaseDate.getter@<X0>(uint64_t a1@<X8>)
{
  [v1 pubDate];
  if (v3 <= 0.0)
  {
    v4 = 1;
  }

  else
  {
    [v1 pubDate];
    sub_1D9176CBC();
    v4 = 0;
  }

  v5 = sub_1D9176E3C();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

uint64_t MTEpisode.mediaType.getter()
{
  if ([v0 isVideo])
  {
    return 1;
  }

  if ([v0 isExternalType])
  {
    return 2;
  }

  return 0;
}

id MTEpisode.showTypeIsSerial.getter()
{
  v1 = [v0 podcast];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 isSerialShowTypeInFeed];

  return v3;
}

unint64_t sub_1D8D39C58(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D917980C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t MTEpisode.episodeTypeResolvedValue.getter()
{
  if ([v0 isTrailer])
  {
    return 2;
  }

  else
  {
    return [v0 isBonus] ^ 1;
  }
}

uint64_t storeEnumTagSinglePayload for KCUTranscriptProvider.GenericNetworkError(uint64_t result, int a2, int a3)
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

double sub_1D8D39E08(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t MTEpisodePriceTypeFromPersistentString(void *a1)
{
  v1 = a1;
  v2 = MTEpisodePriceTypeToPersistentStringMap_inverted(1);
  v3 = [v2 objectForKey:v1];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &unk_1F54BD568;
  }

  v5 = [v4 unsignedIntegerValue];

  return v5;
}

id MTEpisodePriceTypeToPersistentStringMap_inverted(int a1)
{
  if (MTEpisodePriceTypeToPersistentStringMap_inverted_onceToken != -1)
  {
    MTEpisodePriceTypeToPersistentStringMap_inverted_cold_1();
  }

  v2 = &MTEpisodePriceTypeToPersistentStringMap_inverted_invertedMap;
  if (!a1)
  {
    v2 = &MTEpisodePriceTypeToPersistentStringMap_inverted_map;
  }

  v3 = *v2;

  return v3;
}

void EpisodeListSettings.sectionContext.getter(char *a1@<X8>)
{
  if (*(v1 + 24))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v1 + 64) == 8;
  }

  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  *a1 = v3;
}

uint64_t EyebrowBuilder.init(episode:context:style:explicitSymbol:showsSubscriptionBadge:hostingViewHasLimitedSpace:suppressPubDate:)(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  v25 = a7;
  v26 = a8;
  v9 = a6;
  v16 = a1[3];
  v15 = a1[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a1, v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_1D8D41A30(v20, a2, a3, a4, a5, v9, v25, v26, v8, v16, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v22;
}

uint64_t sub_1D8D3A0AC(char a1, char a2)
{
  v4 = *(v2 + 192);
  v5 = *(v2 + 200);
  __swift_project_boxed_opaque_existential_1((v2 + 168), v4);
  v6 = (*(v5 + 96))(v4, v5);
  result = 0;
  if ((v8 & 1) == 0 && v6 >= 1)
  {
    swift_beginAccess();
    *(v2 + 160) = 1;
    v9 = *(v2 + 192);
    v10 = *(v2 + 200);
    __swift_project_boxed_opaque_existential_1((v2 + 168), v9);
    v11 = (*(v10 + 48))(v9, v10);
    sub_1D91209E8();
    if (!v11)
    {
      if (*(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) == 1)
      {
        MEMORY[0x1DA7298F0](0x54524F48535FLL, 0xE600000000000000);
      }

      if (qword_1EDCD5F00 != -1)
      {
        swift_once();
      }

      sub_1D917693C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v22 = swift_allocObject();
      v23 = MEMORY[0x1E69E7360];
      *(v22 + 16) = xmmword_1D9189080;
      v24 = MEMORY[0x1E69E73D8];
      *(v22 + 56) = v23;
      *(v22 + 64) = v24;
      *(v22 + 32) = v6;
      v21 = sub_1D91781DC();
      goto LABEL_24;
    }

    if (v11 == 1 || (a1 & 1) != 0)
    {
      v12 = OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style;
      if (*(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) && *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) == 1)
      {
      }

      else
      {
        sub_1D9179ACC();
      }

      if (*(v2 + v12) != 1)
      {
        goto LABEL_14;
      }
    }

    else if (*(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) != 1)
    {
      goto LABEL_14;
    }

    MEMORY[0x1DA7298F0](0x54524F48535FLL, 0xE600000000000000);
LABEL_14:
    if (qword_1EDCD5F00 != -1)
    {
      swift_once();
    }

    sub_1D917693C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E7360];
    *(v13 + 16) = xmmword_1D9189080;
    v15 = MEMORY[0x1E69E73D8];
    *(v13 + 56) = v14;
    *(v13 + 64) = v15;
    *(v13 + 32) = v6;
    v16 = sub_1D91781DC();
    v18 = v17;

    v19 = sub_1D8D3CC74();
    v21 = sub_1D8D41CB8(v19, v20, v16, v18);
LABEL_24:
    v25 = v21;

    return v25;
  }

  return result;
}

uint64_t sub_1D8D3A558(char a1)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 200);
  __swift_project_boxed_opaque_existential_1((v1 + 168), v2);
  v4 = (*(v3 + 88))(v2, v3);
  result = 0;
  if ((v6 & 1) == 0 && v4 >= 1)
  {
    swift_beginAccess();
    *(v1 + 161) = 1;
    v7 = *(v1 + 192);
    v8 = *(v1 + 200);
    __swift_project_boxed_opaque_existential_1((v1 + 168), v7);
    LOBYTE(v7) = (*(v8 + 48))(v7, v8);
    sub_1D91209E8();
    if (v7)
    {
      if (*(v1 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) - 1 <= 1)
      {
        MEMORY[0x1DA7298F0](0x54524F48535FLL, 0xE600000000000000);
      }

      if (qword_1EDCD5F00 != -1)
      {
        swift_once();
      }

      sub_1D917693C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v9 = swift_allocObject();
      v10 = MEMORY[0x1E69E7360];
      *(v9 + 16) = xmmword_1D9189080;
      v11 = MEMORY[0x1E69E73D8];
      *(v9 + 56) = v10;
      *(v9 + 64) = v11;
      *(v9 + 32) = v4;
      v12 = sub_1D91781DC();
      v14 = v13;

      v15 = sub_1D8D3CC74();
      v17 = sub_1D8D41CB8(v15, v16, v12, v14);
    }

    else
    {
      if (*(v1 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) - 1 <= 1)
      {
        MEMORY[0x1DA7298F0](0x54524F48535FLL, 0xE600000000000000);
      }

      if (qword_1EDCD5F00 != -1)
      {
        swift_once();
      }

      sub_1D917693C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v18 = swift_allocObject();
      v19 = MEMORY[0x1E69E7360];
      *(v18 + 16) = xmmword_1D9189080;
      v20 = MEMORY[0x1E69E73D8];
      *(v18 + 56) = v19;
      *(v18 + 64) = v20;
      *(v18 + 32) = v4;
      v17 = sub_1D91781DC();
    }

    v21 = v17;

    return v21;
  }

  return result;
}

uint64_t sub_1D8D3A958(void *a1, uint64_t a2)
{
  if ((*(a2 + 9) & 1) != 0 || (*(a2 + 8) & 1) == 0)
  {
    goto LABEL_23;
  }

  v2 = *a2;
  if (*a2 > 3)
  {
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    if (((*(v14 + 72))(v13, v14) & 1) == 0)
    {
      goto LABEL_16;
    }

    v16 = a1[3];
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v16);
    v18 = (*(v17 + 88))(v16, v17);
    if ((v19 & 1) == 0 && v18 == 1)
    {
      v20 = a1[3];
      v21 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v20);
      v22 = (*(v21 + 96))(v20, v21);
      if ((v23 & 1) == 0 && v22 == 1)
      {
        if (qword_1EDCD5F00 == -1)
        {
          return sub_1D917693C();
        }

        goto LABEL_45;
      }
    }

    v24 = a1;
    v25 = a1[3];
    v26 = a1[4];
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v27 = (*(v26 + 88))(v25, v26);
    if ((v28 & 1) == 0)
    {
      v29 = v27;
      v30 = v24;
      v31 = v24[3];
      v32 = v30[4];
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v33 = (*(v32 + 96))(v31, v32);
      if ((v34 & 1) == 0)
      {
        v36 = v33;
        if (qword_1EDCD5F00 != -1)
        {
          swift_once();
        }

        sub_1D917693C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1D918A530;
        v38 = MEMORY[0x1E69E7360];
        v39 = MEMORY[0x1E69E73D8];
        *(v37 + 56) = MEMORY[0x1E69E7360];
        *(v37 + 64) = v39;
        *(v37 + 32) = v29;
        *(v37 + 96) = v38;
        *(v37 + 104) = v39;
        *(v37 + 72) = v36;
        v40 = sub_1D91781DC();

        goto LABEL_44;
      }
    }

LABEL_23:
    if (qword_1EDCD5F00 == -1)
    {
      return sub_1D917693C();
    }

LABEL_45:
    swift_once();
    return sub_1D917693C();
  }

  if ((v2 - 2) >= 2)
  {
    if (v2)
    {
      if (qword_1EDCD5F00 == -1)
      {
        return sub_1D917693C();
      }
    }

    else if (qword_1EDCD5F00 == -1)
    {
      return sub_1D917693C();
    }

    goto LABEL_45;
  }

  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  if (((*(v4 + 72))(v3, v4) & 1) == 0)
  {
LABEL_16:
    if (qword_1EDCD5F00 == -1)
    {
      return sub_1D917693C();
    }

    goto LABEL_45;
  }

  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 88))(v6, v7);
  if ((v9 & 1) == 0)
  {
    v10 = v8;
    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    if ((*(v12 + 48))(v11, v12) > 1u)
    {
    }

    else
    {
      v41 = sub_1D9179ACC();

      if ((v41 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (qword_1EDCD5F00 != -1)
    {
      swift_once();
    }

    sub_1D917693C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
    v54 = swift_allocObject();
    v55 = MEMORY[0x1E69E7360];
    *(v54 + 16) = xmmword_1D9189080;
    v56 = MEMORY[0x1E69E73D8];
    *(v54 + 56) = v55;
    *(v54 + 64) = v56;
    *(v54 + 32) = v10;
    goto LABEL_43;
  }

LABEL_31:
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  v44 = (*(v43 + 88))(v42, v43);
  if (v45 & 1) != 0 || (v46 = v44, v47 = a1[3], v48 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v47), v49 = (*(v48 + 96))(v47, v48), (v50) || v49 != 1)
  {
    if (qword_1EDCD5F00 == -1)
    {
      return sub_1D917693C();
    }

    goto LABEL_45;
  }

  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1D918A530;
  v52 = MEMORY[0x1E69E7360];
  v53 = MEMORY[0x1E69E73D8];
  *(v51 + 56) = MEMORY[0x1E69E7360];
  *(v51 + 64) = v53;
  *(v51 + 32) = v46;
  *(v51 + 96) = v52;
  *(v51 + 104) = v53;
  *(v51 + 72) = 1;
LABEL_43:
  v40 = sub_1D91781DC();

LABEL_44:

  return v40;
}