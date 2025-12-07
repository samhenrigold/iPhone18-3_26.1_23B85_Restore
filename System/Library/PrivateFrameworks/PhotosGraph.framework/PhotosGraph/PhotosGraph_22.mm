unint64_t sub_22F2A6DF8()
{
  result = qword_27DAB2FE8;
  if (!qword_27DAB2FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2FE8);
  }

  return result;
}

unint64_t sub_22F2A6E60()
{
  result = qword_27DAB3060;
  if (!qword_27DAB3060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3060);
  }

  return result;
}

uint64_t sub_22F2A6EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  v6 = sub_22F741410();
  v7 = [v5 uuidsFromLocalIdentifiers_];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_22F741420();

  v9 = sub_22F2A8580(v8, a2, a3);

  return v9;
}

uint64_t GraphCurationPlannerContext.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_date;
  v4 = sub_22F73F690();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *GraphCurationPlannerContext.graphWorkingContext.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_graphWorkingContext);
  v2 = v1;
  return v1;
}

uint64_t sub_22F2A7054()
{
  sub_22F120634(0, &qword_2810A8D00, 0x277D86200);
  result = sub_22F741850();
  qword_2810B5008 = result;
  return result;
}

uint64_t GraphCurationPlannerContext.__allocating_init(for:with:graphWorkingContext:)(uint64_t a1, void *a2, void *a3)
{
  v6 = swift_allocObject();
  GraphCurationPlannerContext.init(for:with:graphWorkingContext:)(a1, a2, a3);
  return v6;
}

uint64_t GraphCurationPlannerContext.init(for:with:graphWorkingContext:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_22F740B90();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_date;
  v13 = sub_22F73F690();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v28 = a1;
  v15(v4 + v12, a1, v13);
  *(v4 + OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_graphWorkingContext) = a3;
  *(v4 + OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_photoLibrary) = a2;
  v16 = objc_allocWithZone(MEMORY[0x277CD99F8]);
  v27 = a3;
  v17 = a2;
  v18 = [v16 initWithPhotoLibrary_];
  v19 = [v18 personUUIDsWithNegativeFeedback];

  v20 = sub_22F741420();
  *(v4 + OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_avoidedPeopleUUIDs) = v20;
  if (qword_2810AC390 != -1)
  {
    swift_once();
  }

  v21 = qword_2810B5008;
  sub_22F740BA0();
  (*(v9 + 32))(v4 + OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_logger, v11, v8);
  if (a3)
  {
    v22 = v17;
    v23 = v27;
  }

  else
  {
    v22 = sub_22F740B70();
    v24 = sub_22F7415F0();
    if (os_log_type_enabled(v22, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22F0FC000, v22, v24, "Graph is not available. Falling back to graph-free curation", v25, 2u);
      MEMORY[0x2319033A0](v25, -1, -1);

      v23 = v17;
    }

    else
    {
      v23 = v22;
      v22 = v17;
    }
  }

  (*(v14 + 8))(v28, v13);
  return v4;
}

uint64_t GraphCurationPlannerContext.__allocating_init(for:with:)(uint64_t a1, void *a2)
{
  v4 = sub_22F73F690();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  if ([a2 isReady])
  {
    v9 = [a2 workingContext];
  }

  (*(v5 + 16))(v8, a1, v4);
  v10 = [a2 photoLibrary];
  type metadata accessor for GraphCurationPlannerContext(0);
  v11 = swift_allocObject();
  GraphCurationPlannerContext.init(for:with:graphWorkingContext:)(v8, v10, v9);

  (*(v5 + 8))(a1, v4);
  return v11;
}

uint64_t sub_22F2A7584()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_graphWorkingContext);
  if (v1)
  {
    v2 = v1;
    v3 = sub_22F2A7784();

    return v3;
  }

  else
  {
    v5 = sub_22F7415C0();
    v6 = sub_22F740B70();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22F0FC000, v6, v5, "Fetching top people from photoLibrary", v7, 2u);
      MEMORY[0x2319033A0](v7, -1, -1);
    }

    return sub_22F2A7D0C();
  }
}

uint64_t sub_22F2A7784()
{
  v1 = *v0;
  v16 = 0;
  v12 = v0;
  v13 = &v16;
  v14 = v1;
  sub_22F2A1E14(sub_22F2A8A6C, &v11);
  v2 = v16;
  if (v16)
  {

    v3 = sub_22F7415C0();

    v4 = sub_22F740B70();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v15 = v6;
      *v5 = 134218242;
      *(v5 + 4) = *(v2 + 16);

      *(v5 + 12) = 2080;
      v7 = sub_22F741430();
      v9 = sub_22F145F20(v7, v8, &v15);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_22F0FC000, v4, v3, "Found %ld important people with localIdentifiers: %s", v5, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x2319033A0](v6, -1, -1);
      MEMORY[0x2319033A0](v5, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    sub_22F2A8A78();
    swift_allocError();
    swift_willThrow();
  }

  return v2;
}

void sub_22F2A7978(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D3C790]) initWithPhotoLibrary_];
  if (qword_2810AC390 != -1)
  {
    swift_once();
  }

  v6 = [objc_allocWithZone(PGPeopleWallpaperSuggesterPersonImportanceAnalyzer) initWithGraph:a1 curationContext:v5 loggingConnection:qword_2810B5008];

  [v6 setNormalizedDeviationForVeryImportantPersons_];
  [v6 setNormalizedDeviationForImportantPersons_];
  [v6 setFavoritePersonsAreVIPs_];
  aBlock[4] = GEOLocationCoordinate2DMake;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F2FA6F0;
  aBlock[3] = &block_descriptor_20;
  v7 = _Block_copy(aBlock);
  v8 = [v6 personInformationsWithProgress_];
  _Block_release(v7);
  sub_22F120634(0, &qword_27DAB3080, off_27887BC28);
  v9 = sub_22F741180();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v28 = v6;
    v29 = a3;
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_16:

    v27 = sub_22F1534D0();

    *v29 = v27;

    return;
  }

  v10 = sub_22F741A00();
  v28 = v6;
  v29 = a3;
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    v13 = MEMORY[0x277D84F98];
    v14 = &selRef_floatVector;
    do
    {
      if (v12)
      {
        v15 = MEMORY[0x2319016F0](v11, v9);
      }

      else
      {
        v15 = *(v9 + 8 * v11 + 32);
      }

      v16 = v15;
      if ([v15 v14[299]] < 2 || objc_msgSend(v16, v14[299]) == 3)
      {
      }

      else
      {
        v17 = v9;
        v18 = v12;
        v19 = v13;
        v20 = [v16 personLocalIdentifier];
        v21 = sub_22F740E20();
        v23 = v22;

        v24 = [v16 dupedPersonLocalIdentifiers];
        v25 = sub_22F741420();

        sub_22F10BBDC(aBlock, v21, v23);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v19;
        v12 = v18;
        v9 = v17;
        sub_22F131AF4(v25, v21, v23, isUniquelyReferenced_nonNull_native);

        v14 = &selRef_floatVector;

        v13 = aBlock[0];
      }

      ++v11;
    }

    while (v10 != v11);
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_22F2A7D0C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_photoLibrary) librarySpecificFetchOptions];
  [v1 setPersonContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F782290;
  v3 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v4 = sub_22F740DF0();
  v5 = [v3 initWithKey:v4 ascending:0];

  *(v2 + 32) = v5;
  v6 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v7 = sub_22F740DF0();
  v8 = [v6 initWithKey:v7 ascending:0];

  *(v2 + 40) = v8;
  v9 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v10 = sub_22F740DF0();
  v11 = [v9 initWithKey:v10 ascending:1];

  *(v2 + 48) = v11;
  v12 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v13 = sub_22F740DF0();
  v14 = [v12 initWithKey:v13 ascending:1];

  *(v2 + 56) = v14;
  sub_22F120634(0, &qword_2810A9138, 0x277CCAC98);
  v15 = sub_22F741160();

  [v1 setSortDescriptors_];

  [v1 setFetchLimit_];
  v16 = [objc_opt_self() fetchPersonsWithOptions_];
  v17 = [v16 fetchedObjects];
  v46 = v16;
  v47 = v1;
  if (v17)
  {
    v18 = v17;
    sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
    v19 = sub_22F741180();

    if (v19 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
    {
      v21 = 0;
      v22 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x2319016F0](v21, v19);
        }

        else
        {
          if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v23 = *(v19 + 8 * v21 + 32);
        }

        v24 = v23;
        v25 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v26 = i;
        v27 = [v23 localIdentifier];
        v28 = sub_22F740E20();
        v30 = v29;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_22F13E1A8(0, *(v22 + 2) + 1, 1, v22);
        }

        v32 = *(v22 + 2);
        v31 = *(v22 + 3);
        if (v32 >= v31 >> 1)
        {
          v22 = sub_22F13E1A8((v31 > 1), v32 + 1, 1, v22);
        }

        *(v22 + 2) = v32 + 1;
        v33 = &v22[16 * v32];
        *(v33 + 4) = v28;
        *(v33 + 5) = v30;
        ++v21;
        i = v26;
        if (v25 == v26)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    v22 = MEMORY[0x277D84F90];
LABEL_21:
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v34 = sub_22F7415C0();
  v35 = sub_22F740B70();
  if (os_log_type_enabled(v35, v34))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v48 = v37;
    *v36 = 134218242;
    *(v36 + 4) = *(v22 + 2);
    *(v36 + 12) = 2080;

    v39 = MEMORY[0x231900D40](v38, MEMORY[0x277D837D0]);
    v41 = v40;

    v42 = sub_22F145F20(v39, v41, &v48);

    *(v36 + 14) = v42;
    _os_log_impl(&dword_22F0FC000, v35, v34, "Found %ld important people from photoLibrary with localIdentifiers: %s", v36, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x2319033A0](v37, -1, -1);
    MEMORY[0x2319033A0](v36, -1, -1);
  }

  v44 = sub_22F1515F8(v43);

  swift_bridgeObjectRelease_n();
  return v44;
}

uint64_t GraphCurationPlannerContext.Error.hashValue.getter()
{
  sub_22F742170();
  MEMORY[0x231901D30](0);
  return sub_22F7421D0();
}

uint64_t GraphCurationPlannerContext.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_date;
  v2 = sub_22F73F690();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_logger;
  v4 = sub_22F740B90();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t GraphCurationPlannerContext.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_date;
  v2 = sub_22F73F690();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_logger;
  v4 = sub_22F740B90();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_22F2A8484@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_date;
  v5 = sub_22F73F690();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void *sub_22F2A8500()
{
  v1 = *(*v0 + OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_graphWorkingContext);
  v2 = v1;
  return v1;
}

uint64_t sub_22F2A8580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22F740560();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v11 = (*(a3 + 32))(a2, a3, v8);
    if (*(v11 + 16) <= *(a1 + 16) >> 3)
    {
      v16 = a1;

      sub_22F3E7FB8(v11);

      if (*(v16 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {

      v12 = sub_22F1E999C(v11, a1);

      if (*(v12 + 16))
      {
LABEL_4:
        (*(a3 + 24))(a2, a3);
        (*(v7 + 104))(v10, *MEMORY[0x277D3C570], v6);
        sub_22F740570();
        swift_allocObject();
        sub_22F740550();
        sub_22F73FF60();
        v13 = sub_22F7404F0();

        return v13;
      }
    }
  }

  return 0;
}

uint64_t type metadata accessor for GraphCurationPlannerContext(uint64_t a1)
{
  result = qword_2810AC378;
  if (!qword_2810AC378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F2A87F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07D0, &qword_22F779400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22F2A885C()
{
  result = qword_27DAB3070;
  if (!qword_27DAB3070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3070);
  }

  return result;
}

uint64_t sub_22F2A891C(uint64_t a1)
{
  result = sub_22F73F690();
  if (v2 <= 0x3F)
  {
    result = sub_22F740B90();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_22F2A8A78()
{
  result = qword_27DAB3078;
  if (!qword_27DAB3078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3078);
  }

  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F2A8AE4()
{
  v1 = OBJC_IVAR___PGMusicCuratorContext____lazy_storage___flexMusicSongs;
  if (*(v0 + OBJC_IVAR___PGMusicCuratorContext____lazy_storage___flexMusicSongs))
  {
    v2 = *(v0 + OBJC_IVAR___PGMusicCuratorContext____lazy_storage___flexMusicSongs);
  }

  else
  {
    swift_beginAccess();
    v3 = swift_unknownObjectRetain();
    v2 = _s11PhotosGraph16FlexMusicCuratorC06usableC5Songs4fromSayAA0cD12SongProtocol_pGAA0cdi8ProviderJ0_pSg_tFZ_0(v3);
    swift_unknownObjectRelease();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t MusicCuratorContext.useOnlyMusicForTopicInTopPickSuggestions.getter()
{
  v1 = OBJC_IVAR___PGMusicCuratorContext_useOnlyMusicForTopicInTopPickSuggestions;
  swift_beginAccess();
  return *(v0 + v1);
}

void MusicCuratorContext.useOnlyMusicForTopicInTopPickSuggestions.setter(char a1)
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_useOnlyMusicForTopicInTopPickSuggestions;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t MusicCuratorContext.allowChillMixElection.getter()
{
  v1 = OBJC_IVAR___PGMusicCuratorContext_allowChillMixElection;
  swift_beginAccess();
  return *(v0 + v1);
}

void MusicCuratorContext.allowChillMixElection.setter(char a1)
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_allowChillMixElection;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t MusicCuratorContext.allowGetUpMixElection.getter()
{
  v1 = OBJC_IVAR___PGMusicCuratorContext_allowGetUpMixElection;
  swift_beginAccess();
  return *(v0 + v1);
}

void MusicCuratorContext.allowGetUpMixElection.setter(char a1)
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_allowGetUpMixElection;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t MusicCuratorContext.refreshSongMetadata.getter()
{
  v1 = OBJC_IVAR___PGMusicCuratorContext_refreshSongMetadata;
  swift_beginAccess();
  return *(v0 + v1);
}

void MusicCuratorContext.refreshSongMetadata.setter(char a1)
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_refreshSongMetadata;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t MusicCuratorContext.forceShareableInBestSuggestions.getter()
{
  v1 = OBJC_IVAR___PGMusicCuratorContext_forceShareableInBestSuggestions;
  swift_beginAccess();
  return *(v0 + v1);
}

void MusicCuratorContext.forceShareableInBestSuggestions.setter(char a1)
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_forceShareableInBestSuggestions;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double MusicCuratorContext.musicCurationOverrideDictionary.getter()
{
  swift_beginAccess();

  return result;
}

double MusicCuratorContext.musicCurationOverrideDictionary.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_musicCurationOverrideDictionary;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t MusicCuratorContext.bypassMusicForTopicElection.getter()
{
  v1 = OBJC_IVAR___PGMusicCuratorContext_bypassMusicForTopicElection;
  swift_beginAccess();
  return *(v0 + v1);
}

void MusicCuratorContext.bypassMusicForTopicElection.setter(char a1)
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_bypassMusicForTopicElection;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t MusicCuratorContext.genre.getter()
{
  v1 = (v0 + OBJC_IVAR___PGMusicCuratorContext_genre);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double MusicCuratorContext.genre.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___PGMusicCuratorContext_genre);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t MusicCuratorContext.isMemoryCreationCuration.getter()
{
  v1 = OBJC_IVAR___PGMusicCuratorContext_isMemoryCreationCuration;
  swift_beginAccess();
  return *(v0 + v1);
}

void MusicCuratorContext.isMemoryCreationCuration.setter(char a1)
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_isMemoryCreationCuration;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t MusicCuratorContext.flexSongProvider.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_flexSongProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

char *sub_22F2A9CA4()
{
  v1 = v0 + OBJC_IVAR___PGMusicCuratorContext____lazy_storage___keywordsByAdamID;
  v2 = *(v0 + OBJC_IVAR___PGMusicCuratorContext____lazy_storage___keywordsByAdamID);
  v3 = *(v0 + OBJC_IVAR___PGMusicCuratorContext____lazy_storage___keywordsByAdamID + 8);
  if (v3 == 255)
  {
    v4 = sub_22F1DE30C();
    v5 = *v1;
    *v1 = v4;
    v6 = *(v1 + 8);
    *(v1 + 8) = 0;
    sub_22F256030(v4);
    sub_22F255F20(v5, v6);
  }

  else
  {
    v4 = v2;
  }

  sub_22F256018(v2, v3);
  return v4;
}

id static MusicCuratorContext.context(photoLibrary:adamIDsWithNegativeUserFeedback:allowExplicitMusicContent:cache:configuration:blocklistConfiguration:musicBag:recentlyUsedSongs:genre:isMemoryCreationCuration:flexSongProviderName:)(void *a1, uint64_t a2, int a3, char *a4, void *__src, uint64_t *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, unint64_t a13)
{
  LODWORD(v65) = a3;
  memcpy(__dst, __src, 0x16CuLL);
  v21 = *a6;
  v22 = a6[1];
  if (sub_22F2AA234(__dst) == 1)
  {
    static MusicCuratorConfiguration.defaultConfiguration()(v62);
    if (v14)
    {
      return v13;
    }

    v23 = v62;
  }

  else
  {
    v23 = __dst;
  }

  memcpy(__srca, v23, sizeof(__srca));
  if (v21)
  {
    v58 = v21;
    v59 = v22;
  }

  else
  {
    static MusicCuratorBlocklistConfiguration.defaultConfiguration()(v62);
    if (v14)
    {
      return v13;
    }

    v58 = v62[0];
    v59 = v62[1];
  }

  if (a4)
  {
    sub_22F2AAF90(v21, v22);
    v56 = a4;
    v57 = a1;
    if (a7)
    {
      goto LABEL_9;
    }

LABEL_17:
    objc_allocWithZone(type metadata accessor for MusicBag());
    v27 = a4;
    a1 = v57;
    v55 = sub_22F1ED5B0(a4);
    v28 = v55;
    if (a2)
    {
      goto LABEL_10;
    }

LABEL_18:
    v29 = objc_opt_self();
    v30 = a7;
    v31 = [v29 fetchSongIdentifiersWithNegativeFeedbackWithPhotoLibrary_];
    v32 = sub_22F741180();

    v53 = sub_22F1515F8(v32);

    goto LABEL_19;
  }

  sub_22F2AAF90(v21, v22);
  v26 = sub_22F1A26E0(a1);
  if (v14)
  {

    return v13;
  }

  v56 = v26;
  v57 = a1;
  if (!a7)
  {
    goto LABEL_17;
  }

LABEL_9:
  v55 = a7;
  v24 = a4;
  if (!a2)
  {
    goto LABEL_18;
  }

LABEL_10:
  v25 = a7;
  v53 = a2;
LABEL_19:
  if (a8)
  {

    v54 = a8;
  }

  else
  {
    v33 = objc_allocWithZone(type metadata accessor for RecentlyUsedSongs());

    v34 = [v33 init];
    sub_22F14263C(a1, 0);
    v54 = v34;
  }

  v35 = v65;
  if (v65 == 2)
  {
    v36 = objc_opt_self();
    v37 = a8;
    v38 = [v36 sharedRestrictionsMonitor];
    v35 = [v38 allowsExplicitContent];
  }

  else
  {
    v39 = a8;
  }

  if (a10)
  {
    v40 = a9;
  }

  else
  {
    v40 = 0;
  }

  v65 = v40;
  v41 = 0xE000000000000000;
  if (a10)
  {
    v41 = a10;
  }

  v52 = v41;

  v51 = _s11PhotosGraph23FlexSongProviderFactoryC8provider7forNameAA0c5MusicdE8Protocol_pSSSg_tFZ_0(a12, a13);
  v42 = objc_allocWithZone(v60);
  v43 = OBJC_IVAR___PGMusicCuratorContext_keywordsForAdamId;
  *&v42[v43] = sub_22F14FCC8(MEMORY[0x277D84F90]);
  v44 = OBJC_IVAR___PGMusicCuratorContext_musicCurationOverrideDictionary;
  *&v42[OBJC_IVAR___PGMusicCuratorContext_musicCurationOverrideDictionary] = 0;
  v45 = &v42[OBJC_IVAR___PGMusicCuratorContext____lazy_storage___keywordsByAdamID];
  *v45 = 0;
  v45[8] = -1;
  *&v42[OBJC_IVAR___PGMusicCuratorContext____lazy_storage___flexMusicSongs] = 0;
  memcpy(&v42[OBJC_IVAR___PGMusicCuratorContext_configuration], __srca, 0x16CuLL);
  v46 = &v42[OBJC_IVAR___PGMusicCuratorContext_blocklistConfiguration];
  *v46 = v58;
  v46[1] = v59;
  *&v42[OBJC_IVAR___PGMusicCuratorContext_cache] = v56;
  *&v42[OBJC_IVAR___PGMusicCuratorContext_photoLibrary] = v57;
  *&v42[OBJC_IVAR___PGMusicCuratorContext_musicBag] = v55;
  *&v42[OBJC_IVAR___PGMusicCuratorContext_adamIDsWithNegativeUserFeedback] = v53;
  *&v42[OBJC_IVAR___PGMusicCuratorContext_recentlyUsedSongs] = v54;
  v42[OBJC_IVAR___PGMusicCuratorContext_allowExplicitMusicContent] = v35 & 1;
  swift_beginAccess();
  *&v42[v44] = 0;
  v42[OBJC_IVAR___PGMusicCuratorContext_useOnlyMusicForTopicInTopPickSuggestions] = 0;
  v42[OBJC_IVAR___PGMusicCuratorContext_allowChillMixElection] = 0;
  v42[OBJC_IVAR___PGMusicCuratorContext_allowGetUpMixElection] = 0;
  v42[OBJC_IVAR___PGMusicCuratorContext_bypassMusicForTopicElection] = 0;
  v42[OBJC_IVAR___PGMusicCuratorContext_refreshSongMetadata] = 0;
  v42[OBJC_IVAR___PGMusicCuratorContext_forceShareableInBestSuggestions] = 0;
  v47 = &v42[OBJC_IVAR___PGMusicCuratorContext_musicForTopicUseTopicOnly];
  *v47 = 0;
  *(v47 + 2) = 1061158912;
  *(v47 + 20) = 0;
  *(v47 + 12) = 0;
  *(v47 + 28) = 0x4E6E6B283E800000;
  *(v47 + 9) = 1075838976;
  *(v47 + 5) = 100;
  v48 = &v42[OBJC_IVAR___PGMusicCuratorContext_genre];
  *v48 = v65;
  v48[1] = v52;
  v42[OBJC_IVAR___PGMusicCuratorContext_isMemoryCreationCuration] = a11 & 1;
  *&v42[OBJC_IVAR___PGMusicCuratorContext_flexSongProvider] = v51;
  v61.receiver = v42;
  v61.super_class = v60;
  v49 = v57;
  v13 = objc_msgSendSuper2(&v61, sel_init);

  return v13;
}

uint64_t sub_22F2AA234(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

id MusicCuratorContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicCuratorContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MusicCuratorContext.description.getter()
{
  v1 = v0;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000024, 0x800000022F797ED0);
  v2 = sub_22F741430();
  MEMORY[0x231900B10](v2);

  MEMORY[0x231900B10](0xD000000000000015, 0x800000022F797F00);
  swift_beginAccess();
  v3 = sub_22F742010();
  MEMORY[0x231900B10](v3);

  MEMORY[0x231900B10](0xD00000000000001DLL, 0x800000022F797F20);
  if (*(v0 + OBJC_IVAR___PGMusicCuratorContext_allowExplicitMusicContent))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___PGMusicCuratorContext_allowExplicitMusicContent))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v4, v5);

  MEMORY[0x231900B10](0xD00000000000002CLL, 0x800000022F797F40);
  v6 = OBJC_IVAR___PGMusicCuratorContext_useOnlyMusicForTopicInTopPickSuggestions;
  swift_beginAccess();
  if (*(v1 + v6))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v1 + v6))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v7, v8);

  MEMORY[0x231900B10](0xD000000000000019, 0x800000022F797F70);
  v9 = OBJC_IVAR___PGMusicCuratorContext_allowChillMixElection;
  swift_beginAccess();
  if (*(v1 + v9))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v1 + v9))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v10, v11);

  MEMORY[0x231900B10](0xD000000000000019, 0x800000022F797F90);
  v12 = OBJC_IVAR___PGMusicCuratorContext_allowGetUpMixElection;
  swift_beginAccess();
  if (*(v1 + v12))
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (*(v1 + v12))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v13, v14);

  MEMORY[0x231900B10](0xD000000000000017, 0x800000022F797FB0);
  v15 = OBJC_IVAR___PGMusicCuratorContext_refreshSongMetadata;
  swift_beginAccess();
  if (*(v1 + v15))
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (*(v1 + v15))
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v16, v17);

  MEMORY[0x231900B10](0xD000000000000023, 0x800000022F797FD0);
  v18 = OBJC_IVAR___PGMusicCuratorContext_forceShareableInBestSuggestions;
  swift_beginAccess();
  if (*(v1 + v18))
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (*(v1 + v18))
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v19, v20);

  MEMORY[0x231900B10](0xD00000000000001FLL, 0x800000022F798000);
  v21 = OBJC_IVAR___PGMusicCuratorContext_bypassMusicForTopicElection;
  swift_beginAccess();
  if (*(v1 + v21))
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (*(v1 + v21))
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v22, v23);

  MEMORY[0x231900B10](0x3A65726E6567090ALL, 0xE900000000000020);
  v24 = (v1 + OBJC_IVAR___PGMusicCuratorContext_genre);
  swift_beginAccess();
  v25 = *v24;
  v26 = v24[1];

  MEMORY[0x231900B10](v25, v26);

  MEMORY[0x231900B10](0xD00000000000001CLL, 0x800000022F798020);
  v27 = OBJC_IVAR___PGMusicCuratorContext_isMemoryCreationCuration;
  swift_beginAccess();
  if (*(v1 + v27))
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (*(v1 + v27))
  {
    v29 = 0xE400000000000000;
  }

  else
  {
    v29 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v28, v29);

  MEMORY[0x231900B10](0xD000000000000014, 0x800000022F798040);
  v30 = OBJC_IVAR___PGMusicCuratorContext_flexSongProvider;
  swift_beginAccess();
  v31 = *(v1 + v30);
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_22F2AB808;
  *(v33 + 24) = v32;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3138, qword_22F7823F8);
  v34 = sub_22F740E90();
  MEMORY[0x231900B10](v34);

  MEMORY[0x231900B10](32010, 0xE200000000000000);
  return 0;
}

uint64_t sub_22F2AABD8(void *a1)
{
  v1 = [a1 name];
  v2 = sub_22F740E20();

  return v2;
}

uint64_t MusicCuratorContext.extractSongIdKeywordMappings()()
{
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  v2 = qword_2810B4E90;
  *&v3 = CACurrentMediaTime();
  sub_22F1B560C("Music Curation - extractSongIdKeywordMappings", 45, 2u, v3, 0, v2, v17);
  v4 = OBJC_IVAR___PGMusicCuratorContext_keywordsForAdamId;
  v5 = *(v0 + OBJC_IVAR___PGMusicCuratorContext_keywordsForAdamId);
  if (*(v5 + 16))
  {
  }

  else
  {
    v6 = sub_22F2A9CA4();
    if (v7)
    {
      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      v8 = sub_22F740B90();
      __swift_project_value_buffer(v8, qword_2810B4D90);
      v9 = v6;
      v10 = sub_22F740B70();
      v11 = sub_22F7415E0();
      sub_22F21173C(v6);
      if (os_log_type_enabled(v10, v11))
      {
        v5 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v5 = 138412290;
        v13 = v6;
        v14 = _swift_stdlib_bridgeErrorToNSError();
        *(v5 + 4) = v14;
        *v12 = v14;
        _os_log_impl(&dword_22F0FC000, v10, v11, "[extractSongIdKeywordMappings] Error getting keywordsByAdamID dataframe: %@", v5, 0xCu);
        sub_22F2A87F0(v12);
        MEMORY[0x2319033A0](v12, -1, -1);
        MEMORY[0x2319033A0](v5, -1, -1);
      }

      swift_willThrow();
    }

    else
    {
      v15 = sub_22F741520();
      if (v1)
      {
        sub_22F21173C(v6);
      }

      else
      {
        v5 = sub_22F2AAFD4(v15);
        sub_22F21173C(v6);

        *(v0 + v4) = v5;
      }
    }
  }

  sub_22F1B2BBC(0);

  return v5;
}

double sub_22F2AAF90(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

void *sub_22F2AAFD4(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F98];
  v37 = v7;
  v38 = v6;
  v36 = v2;
  while (v5)
  {
    v11 = v8;
LABEL_11:
    v12 = __clz(__rbit64(v5)) | (v11 << 6);
    v13 = (*(v1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(*(v1 + 56) + 8 * v12) + 16);
    if (v16)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
      v17 = swift_allocObject();
      v18 = _swift_stdlib_malloc_size(v17);
      v19 = v18 - 32;
      if (v18 < 32)
      {
        v19 = v18 - 17;
      }

      v17[2] = v16;
      v17[3] = 2 * (v19 >> 4);
      v39 = sub_22F120B3C();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_22F0FF590(v40);
      if (v39 != v16)
      {
        goto LABEL_29;
      }

      v2 = v36;
      v1 = v37;
    }

    else
    {
      swift_bridgeObjectRetain_n();

      v17 = MEMORY[0x277D84F90];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v9;
    v21 = sub_22F1229E8(v15, v14);
    v23 = v9[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_28;
    }

    v27 = v22;
    if (v9[3] >= v26)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = v15;
        v33 = v14;
        v34 = v21;
        sub_22F135844();
        v21 = v34;
        v14 = v33;
        v15 = v32;
      }
    }

    else
    {
      sub_22F127C90(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_22F1229E8(v15, v14);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_31;
      }
    }

    v5 &= v5 - 1;
    if (v27)
    {
      v10 = v21;

      *(v9[7] + 8 * v10) = v17;
    }

    else
    {
      v9[(v21 >> 6) + 8] |= 1 << v21;
      v29 = (v9[6] + 16 * v21);
      *v29 = v15;
      v29[1] = v14;
      *(v9[7] + 8 * v21) = v17;

      v30 = v9[2];
      v25 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v25)
      {
        goto LABEL_30;
      }

      v9[2] = v31;
    }

    v8 = v11;
    v6 = v38;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v11);
    ++v8;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

id sub_22F2AB2F8(void *a1, uint64_t a2, id a3, char *a4, char *a5, uint64_t a6, unint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v68 = a1;
  if (a3)
  {
    LODWORD(v18) = [a3 BOOLValue];
    v19 = a11;
    if (a12)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_22F2AB87C(__src);
    if (v19)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  LODWORD(v18) = 2;
  v19 = a11;
  if (!a12)
  {
    goto LABEL_6;
  }

LABEL_3:
  memmove(__dst, (a12 + OBJC_IVAR___PGMusicCuratorConfigurationWrapper_configuration), 0x16CuLL);
  GEOLocationCoordinate2DMake();
  memcpy(__src, __dst, 0x16CuLL);
  if (v19)
  {
LABEL_4:
    v20 = [v19 BOOLValue];
    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
LABEL_8:
  memcpy(__dst, __src, 0x16CuLL);
  if (sub_22F2AA234(__dst) == 1)
  {
    static MusicCuratorConfiguration.defaultConfiguration()(v64);
    if (v12)
    {
      return v20;
    }

    v13 = 0;
    v21 = v64;
  }

  else
  {
    v21 = __dst;
  }

  memcpy(v65, v21, sizeof(v65));
  static MusicCuratorBlocklistConfiguration.defaultConfiguration()(v64);
  if (!v13)
  {
    v23 = v64[0];
    v22 = v64[1];
    if (a4)
    {
      v59 = a4;
    }

    else
    {
      v59 = sub_22F1A26E0(v68);
    }

    v60 = v20;
    if (a5)
    {
      v24 = a4;
      v57 = a5;
    }

    else
    {
      objc_allocWithZone(type metadata accessor for MusicBag());
      v25 = a4;
      v24 = sub_22F1ED5B0(a4);
      v57 = v24;
    }

    v26 = v68;
    v27 = v24;
    if (a2)
    {
      v28 = a5;
      v56 = a2;
    }

    else
    {
      v29 = objc_opt_self();
      v30 = a5;
      v31 = [v29 fetchSongIdentifiersWithNegativeFeedbackWithPhotoLibrary_];
      v32 = sub_22F741180();

      v56 = sub_22F1515F8(v32);
    }

    if (a8)
    {

      v58 = a8;
    }

    else
    {
      v33 = objc_allocWithZone(type metadata accessor for RecentlyUsedSongs());

      v34 = [v33 init];
      sub_22F14263C(v68, 0);
      v58 = v34;
    }

    v35 = v22;
    v36 = v23;
    if (v18 == 2)
    {
      v18 = objc_opt_self();
      v37 = a8;
      v38 = [v18 sharedRestrictionsMonitor];
      LOBYTE(v18) = [v38 allowsExplicitContent];
    }

    else
    {
      v39 = a8;
    }

    if (a10)
    {
      v40 = a9;
    }

    else
    {
      v40 = 0;
    }

    v41 = 0xE000000000000000;
    if (a10)
    {
      v41 = a10;
    }

    v54 = v41;
    v55 = v40;

    v42 = _s11PhotosGraph23FlexSongProviderFactoryC8provider7forNameAA0c5MusicdE8Protocol_pSSSg_tFZ_0(a6, a7);
    v43 = type metadata accessor for MusicCuratorContext();
    v44 = objc_allocWithZone(v43);
    v45 = OBJC_IVAR___PGMusicCuratorContext_keywordsForAdamId;
    *&v44[v45] = sub_22F14FCC8(MEMORY[0x277D84F90]);
    v46 = OBJC_IVAR___PGMusicCuratorContext_musicCurationOverrideDictionary;
    *&v44[OBJC_IVAR___PGMusicCuratorContext_musicCurationOverrideDictionary] = 0;
    v47 = &v44[OBJC_IVAR___PGMusicCuratorContext____lazy_storage___keywordsByAdamID];
    *v47 = 0;
    v47[8] = -1;
    *&v44[OBJC_IVAR___PGMusicCuratorContext____lazy_storage___flexMusicSongs] = 0;
    memcpy(&v44[OBJC_IVAR___PGMusicCuratorContext_configuration], v65, 0x16CuLL);
    v48 = &v44[OBJC_IVAR___PGMusicCuratorContext_blocklistConfiguration];
    *v48 = v36;
    v48[1] = v35;
    *&v44[OBJC_IVAR___PGMusicCuratorContext_cache] = v59;
    v49 = v68;
    *&v44[OBJC_IVAR___PGMusicCuratorContext_photoLibrary] = v68;
    *&v44[OBJC_IVAR___PGMusicCuratorContext_musicBag] = v57;
    *&v44[OBJC_IVAR___PGMusicCuratorContext_adamIDsWithNegativeUserFeedback] = v56;
    *&v44[OBJC_IVAR___PGMusicCuratorContext_recentlyUsedSongs] = v58;
    v44[OBJC_IVAR___PGMusicCuratorContext_allowExplicitMusicContent] = v18 & 1;
    swift_beginAccess();
    *&v44[v46] = 0;
    v44[OBJC_IVAR___PGMusicCuratorContext_useOnlyMusicForTopicInTopPickSuggestions] = 0;
    v44[OBJC_IVAR___PGMusicCuratorContext_allowChillMixElection] = 0;
    v44[OBJC_IVAR___PGMusicCuratorContext_allowGetUpMixElection] = 0;
    v44[OBJC_IVAR___PGMusicCuratorContext_bypassMusicForTopicElection] = 0;
    v44[OBJC_IVAR___PGMusicCuratorContext_refreshSongMetadata] = 0;
    v44[OBJC_IVAR___PGMusicCuratorContext_forceShareableInBestSuggestions] = 0;
    v50 = &v44[OBJC_IVAR___PGMusicCuratorContext_musicForTopicUseTopicOnly];
    *v50 = 0;
    *(v50 + 2) = 1061158912;
    *(v50 + 20) = 0;
    *(v50 + 12) = 0;
    *(v50 + 28) = 0x4E6E6B283E800000;
    *(v50 + 9) = 1075838976;
    *(v50 + 5) = 100;
    v51 = &v44[OBJC_IVAR___PGMusicCuratorContext_genre];
    *v51 = v55;
    v51[1] = v54;
    v44[OBJC_IVAR___PGMusicCuratorContext_isMemoryCreationCuration] = v60;
    *&v44[OBJC_IVAR___PGMusicCuratorContext_flexSongProvider] = v42;
    v63.receiver = v44;
    v63.super_class = v43;
    v52 = v49;
    v20 = objc_msgSendSuper2(&v63, sel_init);
  }

  return v20;
}

uint64_t sub_22F2AB810@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

_OWORD *sub_22F2AB87C(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 360) = 0;
  *(a1 + 40) = 0u;
  result = (a1 + 40);
  result[14] = 0u;
  result[15] = 0u;
  result[16] = 0u;
  result[17] = 0u;
  result[18] = 0u;
  result[19] = 0u;
  return result;
}

uint64_t sub_22F2AB8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22F740270();
  v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = (v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_22F7404D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = sub_22F7403B0();
  v10 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v13 = sub_22F73FD40();
  v14 = *(v13 + 16);
  if (v14)
  {
    v36 = v4;
    v37 = a2;
    v16 = *(v10 + 16);
    v15 = v10 + 16;
    v17 = (*(v15 + 64) + 32) & ~*(v15 + 64);
    v35[1] = v13;
    v18 = v13 + v17;
    v47 = *(v15 + 56);
    v48 = v16;
    v46 = (v15 - 8);
    v45 = (v7 + 88);
    v44 = *MEMORY[0x277D3C520];
    v41 = (v7 + 96);
    v42 = (v7 + 8);
    v19 = MEMORY[0x277D84F90];
    v43 = v6;
    v20 = v15;
    do
    {
      v21 = v49;
      v22 = v20;
      v48(v12, v18, v49);
      sub_22F7403A0();
      (*v46)(v12, v21);
      v23 = (*v45)(v9, v6);
      if (v23 == v44)
      {
        (*v41)(v9, v6);
        v24 = *v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_22F13F920(0, v19[2] + 1, 1, v19);
        }

        v26 = v19[2];
        v25 = v19[3];
        if (v26 >= v25 >> 1)
        {
          v19 = sub_22F13F920((v25 > 1), v26 + 1, 1, v19);
        }

        v19[2] = v26 + 1;
        v19[v26 + 4] = v24;
        v6 = v43;
      }

      else
      {
        (*v42)(v9, v6);
      }

      v18 += v47;
      --v14;
      v20 = v22;
    }

    while (v14);

    v4 = v36;
    a2 = v37;
    if (v19[2])
    {
      goto LABEL_12;
    }
  }

  else
  {

    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_12:

      sub_22F73FD90();
      sub_22F73FD50();
      v27 = v38;
      *v38 = 0;
      (*(v40 + 104))(v27, *MEMORY[0x277D3C2B8], v4);
      sub_22F740470();
      v28 = 0;
      goto LABEL_19;
    }
  }

  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v29 = sub_22F740B90();
  __swift_project_value_buffer(v29, qword_2810B4D00);
  v30 = sub_22F740B70();
  v31 = sub_22F7415E0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_22F0FC000, v30, v31, "The query token is not a part of day token", v32, 2u);
    MEMORY[0x2319033A0](v32, -1, -1);
  }

  v28 = 1;
LABEL_19:
  v33 = sub_22F740480();
  return (*(*(v33 - 8) + 56))(a2, v28, 1, v33);
}

char *_s11PhotosGraph32ExtendedTokenCollectionGeneratorC017generatePartOfDayC6Tokens3forSay0A12Intelligence0hijcD0VGSayAF05QueryD0VG_tF_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3140, &qword_22F782448);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_22F740480();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v25 = &v22 - v10;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = *(sub_22F73FDA0() - 8);
  v13 = (v6 + 48);
  v14 = (v6 + 32);
  v15 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v26 = *(v12 + 72);
  v16 = MEMORY[0x277D84F90];
  v23 = v8;
  v24 = v6;
  v22 = (v6 + 48);
  do
  {
    sub_22F2AB8DC(v15, v4);
    if ((*v13)(v4, 1, v5) == 1)
    {
      sub_22F2AC0C8(v4);
    }

    else
    {
      v17 = *v14;
      v18 = v25;
      (*v14)(v25, v4, v5);
      v17(v8, v18, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_22F13EA8C(0, *(v16 + 2) + 1, 1, v16);
      }

      v20 = *(v16 + 2);
      v19 = *(v16 + 3);
      if (v20 >= v19 >> 1)
      {
        v16 = sub_22F13EA8C((v19 > 1), v20 + 1, 1, v16);
      }

      *(v16 + 2) = v20 + 1;
      v8 = v23;
      v17(&v16[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20], v23, v5);
      v13 = v22;
    }

    v15 += v26;
    --v11;
  }

  while (v11);
  return v16;
}

uint64_t sub_22F2AC0C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3140, &qword_22F782448);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22F2AC130(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22F7419C0();
    sub_22F120634(0, &qword_2810A9030, off_27887B328);
    sub_22F2B3CAC();
    sub_22F741470();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!sub_22F741A40() || (sub_22F120634(0, &qword_2810A9030, off_27887B328), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_22F0FF590(v1);
      return;
    }

LABEL_17:
    v12 = [v11 label];
    if (v12)
    {
      v13 = v12;
      v19 = sub_22F740E20();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_22F13E1A8(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_22F13E1A8((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t ExtendedTokenCollectionGenerator.generatePersonExtendedTokens(for:momentNodes:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v6 = sub_22F740B90();
  __swift_project_value_buffer(v6, qword_2810B4D00);
  v7 = sub_22F740B70();
  v8 = sub_22F7415C0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22F0FC000, v7, v8, "generatePersonExtendedTokens for query tokens has started.", v9, 2u);
    MEMORY[0x2319033A0](v9, -1, -1);
  }

  sub_22F1534D0();
  v10 = objc_opt_self();
  v11 = sub_22F741410();

  v12 = [v10 personNodesForLocalIdentifiers:v11 inGraph:*(v3 + 2)];

  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 momentOfPerson];
  v16 = [objc_msgSend(v14 graph)];
  swift_unknownObjectRelease();
  v17 = [v16 concreteGraph];

  if (!v17)
  {
    goto LABEL_14;
  }

  v18 = [v14 elementIdentifiers];
  v19 = [v17 adjacencyWithSources:v18 relation:v15];

  v31[0] = v19;
  v31[1] = v17;
  v20 = sub_22F2ADDA8(v31, a2, a1);
  v21 = *(v20 + 16);
  if (v21)
  {
    v3 = sub_22F10B384(v21, 0);
    v22 = *(sub_22F7402E0() - 8);
    sub_22F11AA10(v31, &v3[(*(v22 + 80) + 32) & ~*(v22 + 80)], v21, v20);
    v24 = v23;
    v25 = v31[0];

    sub_22F0FF590(v25);
    if (v24 == v21)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    sub_22F741D40();
    __break(1u);

    __break(1u);
    return result;
  }

  v3 = MEMORY[0x277D84F90];
LABEL_10:
  v31[0] = v3;
  sub_22F2ADA48(v31);

  v26 = v31[0];
  v27 = sub_22F740B70();
  v28 = sub_22F7415C0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_22F0FC000, v27, v28, "generatePersonExtendedTokens for query tokens complete.", v29, 2u);
    MEMORY[0x2319033A0](v29, -1, -1);
  }

  swift_unknownObjectRelease();
  return v26;
}

uint64_t ExtendedTokenCollectionGenerator.generatePersonExtendedTokens(for:using:isTrip:)(void *a1, uint64_t a2, int a3)
{
  v56 = a1;
  v4 = v3;
  v59 = a3;
  v60 = sub_22F7402E0();
  v6 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v9 = sub_22F740B90();
  v58 = __swift_project_value_buffer(v9, qword_2810B4D00);
  v10 = sub_22F740B70();
  v11 = sub_22F7415C0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_22F0FC000, v10, v11, "generatePersonExtendedTokens for collection has started.", v12, 2u);
    MEMORY[0x2319033A0](v12, -1, -1);
  }

  v57 = v4;

  v13 = *(a2 + 16);
  if (v13)
  {
    sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v14);
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v62 = v17;
    v63 = ObjCClassFromMetadata;
    v18 = a2 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v61 = *(v16 + 56);
    v64 = v16;
    v19 = (v16 - 8);
    v20 = MEMORY[0x277D84F90];
    v21 = v60;
    v17(v8, v18, v60);
    while (1)
    {
      sub_22F7402D0();
      v22 = sub_22F740DF0();

      v23 = [v63 localIdentifierWithUUID_];

      if (v23)
      {
        v24 = sub_22F740E20();
        v26 = v25;

        (*v19)(v8, v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_22F13E1A8(0, *(v20 + 2) + 1, 1, v20);
        }

        v28 = *(v20 + 2);
        v27 = *(v20 + 3);
        if (v28 >= v27 >> 1)
        {
          v20 = sub_22F13E1A8((v27 > 1), v28 + 1, 1, v20);
        }

        *(v20 + 2) = v28 + 1;
        v29 = &v20[16 * v28];
        *(v29 + 4) = v24;
        *(v29 + 5) = v26;
        v21 = v60;
      }

      else
      {
        (*v19)(v8, v21);
      }

      v18 += v61;
      if (!--v13)
      {
        break;
      }

      v62(v8, v18, v21);
    }
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  sub_22F1515F8(v20);

  v30 = objc_opt_self();
  v31 = sub_22F741410();

  v32 = v57;
  v33 = [v30 personNodesForLocalIdentifiers:v31 inGraph:*(v57 + 16)];

  v34 = [objc_opt_self() personInMoment];
  v35 = v56;
  v36 = [objc_msgSend(v56 graph)];
  swift_unknownObjectRelease();
  v37 = [v36 concreteGraph];

  if (v37)
  {
    v38 = [v35 elementIdentifiers];
    v39 = [v37 adjacencyWithSources:v38 relation:v34];

    swift_unknownObjectRetain();
    v40 = [v39 transposed];
    swift_unknownObjectRelease();

    v41 = v40;
    swift_unknownObjectRetain_n();
    v42 = [v33 elementIdentifiers];
    v43 = [v41 subtractingSourcesWith_];
    swift_unknownObjectRelease_n();

    v65[0] = v43;
    v65[1] = v37;
    v44 = v43;
    swift_unknownObjectRetain();
    v45 = sub_22F2ADDA8(v65, v35, MEMORY[0x277D84F98]);
    v46 = v65[0];
    swift_unknownObjectRelease();

    sub_22F2B3AA4(v45, v32);

    v47 = [v33 isEmpty];
    v48 = objc_opt_self();
    v49 = &selRef_minimumCumulativeDistributionOfPersonWithTripFrequency;
    if ((v59 & 1) == 0)
    {
      v49 = &selRef_minimumCumulativeDistributionOfPersonFrequency;
    }

    if (!v47)
    {
      v49 = &selRef_minimumCumulativeDistributionOfPersonWithNamedPersonFrequency;
    }

    [v48 *v49];
    sub_22F1B22EC();
    v50 = sub_22F7405B0();

    v51 = sub_22F740B70();
    v52 = sub_22F7415C0();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_22F0FC000, v51, v52, "generatePersonExtendedTokens for collection complete.", v53, 2u);
      MEMORY[0x2319033A0](v53, -1, -1);
      v54 = v33;
    }

    else
    {
      v54 = v51;
      v51 = v33;
    }

    swift_unknownObjectRelease();

    return v50;
  }

  else
  {
    result = sub_22F741D40();
    __break(1u);
  }

  return result;
}

uint64_t ExtendedTokenCollectionGenerator.generatePetExtendedTokens(for:momentNodes:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v6 = sub_22F740B90();
  __swift_project_value_buffer(v6, qword_2810B4D00);
  v7 = sub_22F740B70();
  v8 = sub_22F7415C0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22F0FC000, v7, v8, "generatePetExtendedTokens for query tokens has started.", v9, 2u);
    MEMORY[0x2319033A0](v9, -1, -1);
  }

  sub_22F1534D0();
  v10 = objc_opt_self();
  v11 = sub_22F741410();

  v12 = [v10 petNodesForLocalIdentifiers:v11 inGraph:*(v3 + 16)];

  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 momentOfPet];
  v16 = [objc_msgSend(v14 graph)];
  swift_unknownObjectRelease();
  v17 = [v16 concreteGraph];

  if (v17)
  {
    v18 = [v14 elementIdentifiers];
    v19 = [v17 adjacencyWithSources:v18 relation:v15];

    v25[0] = v19;
    v25[1] = v17;
    v20 = sub_22F2AF168(v25, a2, a1);
    v21 = sub_22F740B70();
    v22 = sub_22F7415C0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22F0FC000, v21, v22, "generatePetExtendedTokens for query tokens complete.", v23, 2u);
      MEMORY[0x2319033A0](v23, -1, -1);
    }

    swift_unknownObjectRelease();
    return v20;
  }

  else
  {
    result = sub_22F741D40();
    __break(1u);
  }

  return result;
}

uint64_t ExtendedTokenCollectionGenerator.generatePetExtendedTokens(for:using:)(void (**a1)(char *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v68 = a1;
  v78 = sub_22F740050();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v63 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v63 - v10;
  if (qword_2810A9418 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v12 = sub_22F740B90();
    v66 = __swift_project_value_buffer(v12, qword_2810B4D00);
    v13 = sub_22F740B70();
    v14 = sub_22F7415C0();
    v15 = os_log_type_enabled(v13, v14);
    v69 = v8;
    if (v15)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22F0FC000, v13, v14, "generatePetExtendedTokens for collection has started.", v16, 2u);
      MEMORY[0x2319033A0](v16, -1, -1);
    }

    v67 = v3;

    v17 = *(a2 + 16);
    if (v17)
    {
      sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v18);
      v20 = *(v76 + 16);
      v21 = a2 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
      v71 = *(v76 + 72);
      v72 = v20;
      v73 = v76 + 16;
      v74 = ObjCClassFromMetadata;
      v22 = (v76 + 8);
      v23 = MEMORY[0x277D84F90];
      v24 = v78;
      v20(v11, v21, v78);
      while (1)
      {
        sub_22F740040();
        v25 = sub_22F740DF0();

        v26 = [v74 localIdentifierWithUUID_];

        if (v26)
        {
          v27 = sub_22F740E20();
          v29 = v28;

          (*v22)(v11, v24);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_22F13E1A8(0, *(v23 + 2) + 1, 1, v23);
          }

          v31 = *(v23 + 2);
          v30 = *(v23 + 3);
          if (v31 >= v30 >> 1)
          {
            v23 = sub_22F13E1A8((v30 > 1), v31 + 1, 1, v23);
          }

          *(v23 + 2) = v31 + 1;
          v32 = &v23[16 * v31];
          *(v32 + 4) = v27;
          *(v32 + 5) = v29;
          v24 = v78;
        }

        else
        {
          (*v22)(v11, v24);
        }

        v21 += v71;
        if (!--v17)
        {
          break;
        }

        v72(v11, v21, v24);
      }
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    sub_22F1515F8(v23);

    v33 = objc_opt_self();
    v34 = sub_22F741410();

    a2 = v70;
    v35 = [v33 petNodesForLocalIdentifiers:v34 inGraph:*(v70 + 16)];

    v36 = [objc_opt_self() petPresentInMoment];
    v37 = v68;
    v38 = [objc_msgSend(v68 graph)];
    swift_unknownObjectRelease();
    v39 = [v38 concreteGraph];

    if (!v39)
    {
      result = sub_22F741D40();
      __break(1u);
      return result;
    }

    v40 = [v37 elementIdentifiers];
    v41 = [v39 adjacencyWithSources:v40 relation:v36];

    swift_unknownObjectRetain();
    v42 = [v41 transposed];
    swift_unknownObjectRelease();

    v43 = v42;
    swift_unknownObjectRetain_n();
    v64 = v35;
    v44 = [v35 elementIdentifiers];
    v45 = [v43 subtractingSourcesWith_];
    swift_unknownObjectRelease_n();

    v77[0] = v45;
    v77[1] = v39;
    v65 = v45;
    v63 = v39;
    swift_unknownObjectRetain();
    v11 = sub_22F2AF168(v77, v37, MEMORY[0x277D84F98]);
    v46 = v77[0];
    swift_unknownObjectRelease();

    v74 = *(v11 + 2);
    if (!v74)
    {
      break;
    }

    v3 = 0;
    v72 = (v76 + 16);
    v73 = OBJC_IVAR____TtC11PhotosGraph32ExtendedTokenCollectionGenerator_safeTokenAnalyzer;
    v68 = (v76 + 8);
    v71 = (v76 + 32);
    v47 = MEMORY[0x277D84F90];
    v48 = v78;
    v8 = v69;
    while (v3 < *(v11 + 2))
    {
      v49 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v50 = *(v76 + 72);
      (*(v76 + 16))(v8, &v11[v49 + v50 * v3], v48);
      if (sub_22F7400E0())
      {
        v51 = v8;
        v52 = *v71;
        (*v71)(v75, v51, v48);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77[0] = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F146730(0, *(v47 + 16) + 1, 1);
          v47 = v77[0];
        }

        v55 = *(v47 + 16);
        v54 = *(v47 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_22F146730((v54 > 1), v55 + 1, 1);
          v47 = v77[0];
        }

        *(v47 + 16) = v55 + 1;
        v48 = v78;
        v52((v47 + v49 + v55 * v50), v75, v78);
        v8 = v69;
        a2 = v70;
      }

      else
      {
        (*v68)(v8, v48);
      }

      if (v74 == ++v3)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

  v47 = MEMORY[0x277D84F90];
LABEL_29:

  if (*(v47 + 16) > 5uLL)
  {
    sub_22F10AB40(v47, v47 + ((*(v76 + 80) + 32) & ~*(v76 + 80)), 0, 0xBuLL);
    v57 = v56;

    v47 = v57;
  }

  v58 = v65;
  v59 = sub_22F740B70();
  v60 = sub_22F7415C0();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_22F0FC000, v59, v60, "generatePetExtendedTokens for collection complete.", v61, 2u);
    MEMORY[0x2319033A0](v61, -1, -1);
  }

  swift_unknownObjectRelease();

  return v47;
}

void sub_22F2ADA48(uint64_t *a1)
{
  v2 = *(sub_22F7402E0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F64A4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22F2B0358(v5);
  *a1 = v3;
}

void sub_22F2ADAF0(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0730, &unk_22F771740) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F64B8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22F2B0484(v5);
  *a1 = v3;
}

uint64_t sub_22F2ADBA4()
{
  v0 = sub_22F740650();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F7402A0();
  v4 = sub_22F740630();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_22F7402A0();
  v6 = sub_22F740630();
  v5(v3, v0);
  if (((v4 ^ v6) & 1) == 0)
  {
    v4 = sub_22F740290();
    if (((v4 ^ sub_22F740290()) & 1) == 0)
    {
      v7 = sub_22F7402C0();
      v9 = v8;

      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      v4 = v10 != 0;
      v11 = sub_22F7402C0();
      v13 = v12;

      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v4 != (v14 == 0))
      {
        v15 = sub_22F7402D0();
        v17 = v16;
        if (v15 == sub_22F7402D0() && v17 == v18)
        {
          LOBYTE(v4) = 0;
        }

        else
        {
          LOBYTE(v4) = sub_22F742040();
        }
      }
    }
  }

  return v4 & 1;
}

unint64_t sub_22F2ADDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = objc_allocWithZone(PGGraphPersonNodeCollection);
  v9 = [v7 sources];
  v10 = [v8 initWithGraph:v6 elementIdentifiers:v9];

  v11 = [v10 count];
  if (v11 < 1)
  {
    v20 = MEMORY[0x277D84F90];

    return sub_22F14EC5C(v20);
  }

  else
  {
    v23 = MEMORY[0x277D84F98];
    v12 = [*(v3 + 16) meNode];
    MEMORY[0x28223BE20](v12);
    v21[2] = a3;
    v21[3] = v13;
    v21[4] = a2;
    v21[5] = &v23;
    v14 = swift_allocObject();
    v14[2] = sub_22F2B3C94;
    v14[3] = v21;
    v14[4] = v7;
    v14[5] = v6;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_22F2B3CA0;
    *(v15 + 24) = v14;
    aBlock[4] = sub_22F15A9A4;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F107F34;
    aBlock[3] = &block_descriptor_14_1;
    v16 = _Block_copy(aBlock);
    v17 = v7;
    swift_unknownObjectRetain();

    [v17 enumerateTargetsBySourceWith_];
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      return v23;
    }
  }

  return result;
}

void sub_22F2AE030(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, char **a7)
{
  v137 = a6;
  v131 = a5;
  v136 = a2;
  v10 = sub_22F7402E0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v140 = v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_22F740650();
  v139 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v135 = v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v138 = v119 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0890, &qword_22F770AA8);
  MEMORY[0x28223BE20](v16 - 8);
  v134 = v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v132 = v119 - v19;
  MEMORY[0x28223BE20](v20);
  v142 = v119 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = v119 - v23;
  v25 = sub_22F73FDA0();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22F740270();
  v143 = *(v29 - 8);
  v144 = v29;
  MEMORY[0x28223BE20](v29);
  v133 = v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v32 = MEMORY[0x28223BE20](v31).n128_u64[0];
  v145 = (v119 - v33);
  v34 = [a1 firstNode];
  if (!v34)
  {
    goto LABEL_12;
  }

  v130 = v11;
  v146 = v34;
  v35 = [v34 localIdentifier];
  if (v35)
  {
    v36 = v35;
    v128 = v10;
    v129 = a7;
    v37 = sub_22F740E20();
    v39 = v38;
    sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
    v41 = [swift_getObjCClassFromMetadata(v40) uuidFromLocalIdentifier_];

    if (v41)
    {
      v126 = sub_22F740E20();
      v127 = v42;

      if (*(a4 + 16))
      {
        v43 = sub_22F1229E8(v37, v39);
        v45 = v44;

        if (v45)
        {
          (*(v26 + 16))(v28, *(a4 + 56) + *(v26 + 72) * v43, v25);
          v46 = sub_22F73FD80();
          v47 = v144;
          v48 = v145;
          *v145 = v46;
          (*(v143 + 104))(v48, *MEMORY[0x277D3C2B8], v47);
          v49 = sub_22F73FD70();
          a1 = v127;
          if (v49)
          {
            v50 = v49;
            if (*(v49 + 16))
            {
              v51 = sub_22F1229E8(v126, v127);
              if (v52)
              {
                v53 = *(*(v50 + 56) + 8 * v51);

                v54 = *(v53 + 16);
                if (v54)
                {
                  v55 = sub_22F10B348(*(v53 + 16), 0);
                  v56 = sub_22F11A438(&v147, v55 + 4, v54, v53);
                  sub_22F0FF590(v147);
                  if (v56 != v54)
                  {
                    __break(1u);
LABEL_12:
                    if (qword_2810A9418 != -1)
                    {
                      swift_once();
                    }

                    v57 = sub_22F740B90();
                    __swift_project_value_buffer(v57, qword_2810B4D00);
                    v58 = a1;
                    v146 = sub_22F740B70();
                    v59 = sub_22F7415C0();

                    if (os_log_type_enabled(v146, v59))
                    {
                      v60 = swift_slowAlloc();
                      v61 = swift_slowAlloc();
                      *v60 = 138412290;
                      v62 = [v58 elementIdentifiers];
                      *(v60 + 4) = v62;
                      *v61 = v62;
                      _os_log_impl(&dword_22F0FC000, v146, v59, "Couldn't fetch personNode for identifier %@.", v60, 0xCu);
                      sub_22F120ADC(v61, &qword_27DAB07D0, &qword_22F779400);
                      MEMORY[0x2319033A0](v61, -1, -1);
                      MEMORY[0x2319033A0](v60, -1, -1);
                    }

                    goto LABEL_28;
                  }
                }

                else
                {

                  v55 = MEMORY[0x277D84F90];
                }

                v147 = v55;

                sub_22F1AB0EC(&v147);

                (*(v26 + 8))(v28, v25);
                v78 = v147;
LABEL_38:
                v79 = [v146 name];
                if (v79)
                {
                  v80 = v79;
                  v124 = sub_22F740E20();
                  v123 = v81;
                }

                else
                {
                  v124 = 0;
                  v123 = 0xE000000000000000;
                }

                v82 = v142;
                v83 = [objc_opt_self() ageTypeFromAgeCategory_];
                v122 = [v146 isFavorite];
                v84 = [v146 isMeNode];
                v125 = v78;
                v121 = v84;
                if (v84)
                {
                  v85 = *MEMORY[0x277D3C5E8];
                  v86 = sub_22F740690();
                  v87 = *(v86 - 8);
                  v88 = *(v87 + 104);
                  v88(v24, v85, v86);
                  v89 = *(v87 + 56);
                  v89(v24, 0, 1, v86);
                  v88(v82, v85, v86);
                  v89(v82, 0, 1, v86);
                }

                else
                {
                  v90 = sub_22F740690();
                  v91 = *(*(v90 - 8) + 56);
                  v91(v24, 1, 1, v90);
                  v91(v82, 1, 1, v90);
                  if (v131)
                  {
                    v119[1] = v83;
                    v92 = v131;
                    v93 = [v92 relationshipEdgesToPersonNode:v146 matchingQuery:1];
                    sub_22F120634(0, &qword_2810A9030, off_27887B328);
                    sub_22F2B3CAC();
                    v94 = sub_22F741420();

                    sub_22F2AC130(v94);
                    v96 = v95;

                    if (*(v96 + 16))
                    {
                      v97 = objc_opt_self();
                      sub_22F1515F8(v96);

                      v98 = sub_22F741410();

                      v99 = [v97 reducedRelationshipNameForLabels_];

                      sub_22F740E20();
                      sub_22F740EA0();

                      v100 = v132;
                      sub_22F740680();
                      sub_22F120ADC(v24, &qword_27DAB0890, &qword_22F770AA8);
                      sub_22F1207AC(v100, v24, &qword_27DAB0890, &qword_22F770AA8);
                    }

                    else
                    {

                      v100 = v132;
                    }

                    v106 = [v92 storytellingRelationshipLabelsToPersonNode_];
                    sub_22F741420();

                    v107 = objc_opt_self();
                    v108 = sub_22F741410();

                    v109 = [v107 reducedRelationshipNameForLabels_];

                    sub_22F740E20();
                    sub_22F740EA0();

                    sub_22F740680();
                    sub_22F120ADC(v82, &qword_27DAB0890, &qword_22F770AA8);
                    sub_22F1207AC(v100, v82, &qword_27DAB0890, &qword_22F770AA8);
                    v105 = v100;
                    if (![v146 isMyChild])
                    {
                      [v146 isMyInferredChild];
                    }

                    v101 = v129;
                    v103 = v141;
                    v104 = v134;
                    v102 = v24;
                    goto LABEL_51;
                  }
                }

                v101 = v129;
                v102 = v24;
                v103 = v141;
                v104 = v134;
                v105 = v132;
LABEL_51:
                v120 = v102;
                sub_22F13BA9C(v102, v105, &qword_27DAB0890, &qword_22F770AA8);
                sub_22F13BA9C(v82, v104, &qword_27DAB0890, &qword_22F770AA8);
                v110 = v138;
                sub_22F740640();
                v111 = v143;
                v112 = v144;
                (*(v143 + 16))(v133, v145, v144);
                v113 = v139;
                v114 = v103;
                (*(v139 + 16))(v135, v110, v103);
                v115 = v140;
                sub_22F7402B0();
                v116 = [v137 collectionByIntersecting_];
                v117 = [v116 count];
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v147 = *v101;
                *v101 = 0x8000000000000000;
                sub_22F131B1C(v115, isUniquelyReferenced_nonNull_native, v117);

                (*(v130 + 8))(v115, v128);
                (*(v113 + 8))(v110, v114);
                sub_22F120ADC(v142, &qword_27DAB0890, &qword_22F770AA8);
                sub_22F120ADC(v120, &qword_27DAB0890, &qword_22F770AA8);
                (*(v111 + 8))(v145, v112);
                *v101 = v147;

                return;
              }
            }
          }

          if (qword_2810A9418 != -1)
          {
            swift_once();
          }

          v73 = sub_22F740B90();
          __swift_project_value_buffer(v73, qword_2810B4D00);

          v74 = sub_22F740B70();
          v75 = sub_22F7415E0();

          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            v147 = v77;
            *v76 = 136315138;
            *(v76 + 4) = sub_22F145F20(v126, a1, &v147);
            _os_log_impl(&dword_22F0FC000, v74, v75, "Person query token %s should have assetUUIDs associated with it!", v76, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v77);
            MEMORY[0x2319033A0](v77, -1, -1);
            MEMORY[0x2319033A0](v76, -1, -1);
          }

          (*(v26 + 8))(v28, v25);
LABEL_37:
          v78 = 0;
          goto LABEL_38;
        }
      }

      else
      {
      }

      (*(v143 + 104))(v145, *MEMORY[0x277D3C2B0], v144);
      goto LABEL_37;
    }

    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v67 = sub_22F740B90();
    __swift_project_value_buffer(v67, qword_2810B4D00);

    v64 = sub_22F740B70();
    v68 = sub_22F7415E0();

    if (os_log_type_enabled(v64, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v147 = v70;
      *v69 = 136315138;
      v71 = sub_22F145F20(v37, v39, &v147);

      *(v69 + 4) = v71;
      _os_log_impl(&dword_22F0FC000, v64, v68, "Could not convert personLocalIdentifier %s to personUUID.", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x2319033A0](v70, -1, -1);
      MEMORY[0x2319033A0](v69, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v63 = sub_22F740B90();
    __swift_project_value_buffer(v63, qword_2810B4D00);
    v64 = sub_22F740B70();
    v65 = sub_22F7415C0();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_22F0FC000, v64, v65, "personLocalIdentifier is nil.", v66, 2u);
      MEMORY[0x2319033A0](v66, -1, -1);
    }
  }

LABEL_28:
  v72 = v146;
}

uint64_t sub_22F2AF168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0730, &unk_22F771740);
  v9 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = v55 - v12;
  MEMORY[0x28223BE20](v13);
  v58 = v55 - v14;
  v15 = sub_22F740050();
  v62 = *(v15 - 8);
  v63 = v15;
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v18 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v19 = *(a1 + 8);
  v21 = [v20 sourcesCount];
  if (v21 < 1)
  {
    return MEMORY[0x277D84F90];
  }

  v68 = MEMORY[0x277D84F98];
  MEMORY[0x28223BE20](v21);
  v55[-4] = a3;
  v55[-3] = a2;
  v55[-2] = &v68;
  v55[-1] = v8;
  v22 = swift_allocObject();
  v22[2] = sub_22F2B3C64;
  v22[3] = &v55[-6];
  v22[4] = v20;
  v22[5] = v19;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_22F2B3C70;
  *(v23 + 24) = v22;
  v66 = sub_22F15A3B8;
  v67 = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107F34;
  v65 = &block_descriptor_21;
  v24 = _Block_copy(aBlock);
  v25 = v20;
  swift_unknownObjectRetain();

  [v25 enumerateTargetsBySourceWith_];
  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v27 = v68;
    v28 = *(v68 + 16);
    v29 = MEMORY[0x277D84F90];
    if (v28)
    {
      v30 = sub_22F10B3AC(*(v68 + 16), 0);
      sub_22F11ACB4(aBlock, v30 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v28, v27);
      v32 = v31;
      v33 = aBlock[0];
      v56 = v66;
      v57 = v65;

      sub_22F0FF590(v33);
      if (v32 != v28)
      {
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }

    aBlock[0] = v30;
    sub_22F2ADAF0(aBlock);
    v35 = aBlock[0];
    v36 = *(aBlock[0] + 16);
    if (v36)
    {
      aBlock[0] = v29;
      sub_22F146730(0, v36, 0);
      v34 = aBlock[0];
      v37 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v55[1] = v35;
      v38 = v35 + v37;
      v39 = *(v9 + 72);
      v40 = v63;
      v41 = (v62 + 32);
      v56 = (v62 + 16);
      v57 = v39;
      v42 = v58;
      do
      {
        v63 = v36;
        sub_22F13BA9C(v38, v42, &qword_27DAB0730, &unk_22F771740);
        v43 = v34;
        v44 = v41;
        v45 = v59;
        sub_22F13BA9C(v42, v59, &qword_27DAB0730, &unk_22F771740);
        v46 = v60;
        v47 = *(v61 + 48);
        v48 = *(v45 + v47);
        v49 = *v44;
        v50 = v45;
        v41 = v44;
        v34 = v43;
        v51 = v49;
        v49(v60, v50, v40);
        *(v46 + v47) = v48;
        (*v56)(v18, v46, v40);
        sub_22F120ADC(v46, &qword_27DAB0730, &unk_22F771740);
        sub_22F120ADC(v42, &qword_27DAB0730, &unk_22F771740);
        aBlock[0] = v34;
        v53 = *(v34 + 16);
        v52 = *(v34 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_22F146730((v52 > 1), v53 + 1, 1);
          v34 = aBlock[0];
        }

        *(v34 + 16) = v53 + 1;
        v51(v34 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v53, v18, v40);
        v38 += v57;
        v36 = v63 - 1;
      }

      while (v63 != 1);
    }

    else
    {

      v34 = MEMORY[0x277D84F90];
    }

    return v34;
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_22F2AF744(void *a1, id a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t *a6)
{
  v100 = a2;
  v101 = a5;
  v9 = sub_22F740050();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v99 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22F73FDA0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22F740270();
  v103 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v98 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v90 - v19;
  *&v22 = MEMORY[0x28223BE20](v21).n128_u64[0];
  v104 = (&v90 - v23);
  v24 = [a1 firstNode];
  if (!v24)
  {
    goto LABEL_13;
  }

  v94 = v10;
  v95 = v9;
  v96 = a6;
  v97 = a1;
  v102 = v24;
  v25 = [v24 localIdentifier];
  if (!v25)
  {
    sub_22F740E20();
    v25 = sub_22F740DF0();
  }

  v26 = sub_22F740E20();
  v28 = v27;
  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  v30 = [swift_getObjCClassFromMetadata(v29) uuidFromLocalIdentifier_];

  if (!v30)
  {

    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v56 = sub_22F740B90();
    __swift_project_value_buffer(v56, qword_2810B4D00);
    v57 = sub_22F740B70();
    v58 = sub_22F7415E0();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_22F0FC000, v57, v58, "Pet node local identifier could not convert to UUID.", v59, 2u);
      MEMORY[0x2319033A0](v59, -1, -1);
    }

    v52 = v102;
    goto LABEL_24;
  }

  v91 = sub_22F740E20();
  v32 = v31;

  v33 = *(a4 + 16);
  v34 = MEMORY[0x277D3C2B0];
  v93 = v32;
  if (!v33 || (v35 = sub_22F1229E8(v26, v28), (v36 & 1) == 0))
  {

    v53 = v103;
    (*(v103 + 104))(v104, *v34, v16);
    v92 = 0;
    v54 = v101;
    v55 = v34;
    goto LABEL_34;
  }

  (*(v13 + 16))(v15, *(a4 + 56) + *(v13 + 72) * v35, v12);
  v37 = sub_22F73FD80();
  v38 = v104;
  v104->isa = v37;
  (*(v103 + 104))(v38, *MEMORY[0x277D3C2B8], v16);
  v39 = sub_22F73FD70();
  if (!v39)
  {
    goto LABEL_28;
  }

  v40 = v39;
  if (!*(v39 + 16) || (v41 = sub_22F1229E8(v91, v32), (v42 & 1) == 0))
  {

LABEL_28:

    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v60 = sub_22F740B90();
    __swift_project_value_buffer(v60, qword_2810B4D00);
    v61 = sub_22F740B70();
    v62 = sub_22F7415E0();
    v63 = os_log_type_enabled(v61, v62);
    v54 = v101;
    if (v63)
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_22F0FC000, v61, v62, "Pet query token should have assetUUIDs associated with it!", v64, 2u);
      MEMORY[0x2319033A0](v64, -1, -1);
    }

    (*(v13 + 8))(v15, v12);
    v92 = 0;
    v53 = v103;
    goto LABEL_33;
  }

  v43 = *(*(v40 + 56) + 8 * v41);

  v44 = *(v43 + 16);
  if (!v44)
  {

    v45 = MEMORY[0x277D84F90];
    goto LABEL_49;
  }

  v45 = sub_22F10B348(*(v43 + 16), 0);
  a1 = sub_22F11A438(&v105, v45 + 4, v44, v43);
  sub_22F0FF590(v105);
  if (a1 == v44)
  {
LABEL_49:
    v105 = v45;

    sub_22F1AB0EC(&v105);

    (*(v13 + 8))(v15, v12);
    v92 = v105;
    v53 = v103;
    v54 = v101;
LABEL_33:
    v55 = MEMORY[0x277D3C2B0];
LABEL_34:
    v65 = [v54 collectionByIntersecting_];
    v100 = [v65 count];

    v66 = *(v53 + 16);
    v66(v20, v104, v16);
    LODWORD(v65) = (*(v53 + 88))(v20, v16);
    v67 = v54;
    v68 = *v55;
    v70 = *(v53 + 8);
    v69 = v53 + 8;
    v101 = v70;
    v70(v20, v16);
    if (v65 == v68)
    {
      v71 = [v67 count];
      if (v71 < 1)
      {

        if (qword_2810A9418 != -1)
        {
          swift_once();
        }

        v87 = sub_22F740B90();
        __swift_project_value_buffer(v87, qword_2810B4D00);
        v75 = sub_22F740B70();
        v88 = sub_22F7415C0();
        if (!os_log_type_enabled(v75, v88))
        {
          goto LABEL_47;
        }

        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_22F0FC000, v75, v88, "No moment nodes found.", v89, 2u);
        v80 = v89;
        goto LABEL_46;
      }

      v72 = v100 / v71;
      if (v72 < 0.75)
      {

        if (qword_2810A9418 != -1)
        {
          swift_once();
        }

        v73 = sub_22F740B90();
        __swift_project_value_buffer(v73, qword_2810B4D00);
        v74 = v97;
        v75 = sub_22F740B70();
        v76 = sub_22F7415F0();

        if (!os_log_type_enabled(v75, v76))
        {
          goto LABEL_47;
        }

        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v77 = 138412546;
        v79 = [v74 elementIdentifiers];
        *(v77 + 4) = v79;
        *v78 = v79;
        *(v77 + 12) = 2048;
        *(v77 + 14) = v72;
        _os_log_impl(&dword_22F0FC000, v75, v76, "Not enough moments for pet %@! Only %f overlap.", v77, 0x16u);
        sub_22F120ADC(v78, &qword_27DAB07D0, &qword_22F779400);
        MEMORY[0x2319033A0](v78, -1, -1);
        v80 = v77;
LABEL_46:
        MEMORY[0x2319033A0](v80, -1, -1);
LABEL_47:

        v101(v104, v16);
        return;
      }
    }

    v81 = [v102 name];
    v90 = sub_22F740E20();

    [objc_opt_self() detectionTypeFromPetSpecies_];
    [v102 isFavorite];
    v82 = v104;
    v103 = v69;
    v83 = [v97 ownerNodes];
    [v83 containsMeNode];

    v66(v98, v82, v16);
    v84 = v99;
    sub_22F740030();
    v85 = v96;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105 = *v85;
    *v85 = 0x8000000000000000;
    sub_22F131CC0(v100, v84, isUniquelyReferenced_nonNull_native);

    (*(v94 + 8))(v84, v95);
    v101(v82, v16);
    *v85 = v105;

    return;
  }

  __break(1u);
LABEL_13:
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v46 = sub_22F740B90();
  __swift_project_value_buffer(v46, qword_2810B4D00);
  v47 = a1;
  v104 = sub_22F740B70();
  v48 = sub_22F7415C0();

  if (os_log_type_enabled(v104, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412290;
    v51 = [v47 elementIdentifiers];
    *(v49 + 4) = v51;
    *v50 = v51;
    _os_log_impl(&dword_22F0FC000, v104, v48, "Couldn't fetch petNode for identifier %@.", v49, 0xCu);
    sub_22F120ADC(v50, &qword_27DAB07D0, &qword_22F779400);
    MEMORY[0x2319033A0](v50, -1, -1);
    MEMORY[0x2319033A0](v49, -1, -1);
  }

  v52 = v104;
LABEL_24:
}

void sub_22F2B0358(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22F7402E0();
        v6 = sub_22F741200();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22F7402E0() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22F2B0CD8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22F2B05C8(0, v2, 1, a1);
  }
}

void sub_22F2B0484(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0730, &unk_22F771740);
        v6 = sub_22F741200();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0730, &unk_22F771740) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22F2B1894(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22F2B08D4(0, v2, 1, a1);
  }
}

void sub_22F2B05C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22F7402E0();
  MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v34 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v13 + 16);
    v46 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v42 = (v13 + 32);
    v43 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      (v45)(v47, v21, v8, v14);
      v24(v48, v23, v8);
      v25 = sub_22F7402D0();
      v27 = v26;
      if (v25 == sub_22F7402D0() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        v22(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = &v39[v35];
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_6;
      }

      v29 = sub_22F742040();

      v30 = *v18;
      (*v18)(v48, v8);
      v30(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_22F2B08D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0730, &unk_22F771740);
  MEMORY[0x28223BE20](v8);
  v57 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v43 - v11;
  MEMORY[0x28223BE20](v12);
  v52 = &v43 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  MEMORY[0x28223BE20](v17);
  v54 = &v43 - v19;
  v45 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v18 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v55 = -v21;
    v56 = v20;
    v23 = a1 - a3;
    v44 = v21;
    v24 = v20 + v21 * a3;
    v50 = v16;
    v51 = v8;
LABEL_6:
    v48 = v22;
    v49 = a3;
    v46 = v24;
    v47 = v23;
    v25 = v54;
    while (1)
    {
      sub_22F13BA9C(v24, v25, &qword_27DAB0730, &unk_22F771740);
      sub_22F13BA9C(v22, v16, &qword_27DAB0730, &unk_22F771740);
      v26 = *(v8 + 48);
      v27 = *(v25 + v26);
      v28 = *&v16[v26];
      if (v27 == v28)
      {
        v29 = v25;
        v30 = v52;
        sub_22F13BA9C(v29, v52, &qword_27DAB0730, &unk_22F771740);
        v59 = sub_22F740040();
        v58 = v31;
        v32 = sub_22F740050();
        v33 = *(*(v32 - 8) + 8);
        v33(v30, v32);
        v34 = v53;
        sub_22F13BA9C(v16, v53, &qword_27DAB0730, &unk_22F771740);
        v35 = sub_22F740040();
        v37 = v36;
        v38 = v32;
        v39 = v58;
        v33(v34, v38);
        if (v35 == v59 && v37 == v39)
        {

          v16 = v50;
          sub_22F120ADC(v50, &qword_27DAB0730, &unk_22F771740);
          sub_22F120ADC(v54, &qword_27DAB0730, &unk_22F771740);
          v8 = v51;
LABEL_5:
          a3 = v49 + 1;
          v22 = v48 + v44;
          v23 = v47 - 1;
          v24 = v46 + v44;
          if (v49 + 1 == v45)
          {
            return;
          }

          goto LABEL_6;
        }

        v40 = sub_22F742040();

        v16 = v50;
        v8 = v51;
        v25 = v54;
      }

      else
      {
        v40 = v28 < v27;
      }

      sub_22F120ADC(v16, &qword_27DAB0730, &unk_22F771740);
      sub_22F120ADC(v25, &qword_27DAB0730, &unk_22F771740);
      if ((v40 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v56)
      {
        break;
      }

      v41 = v57;
      sub_22F1207AC(v24, v57, &qword_27DAB0730, &unk_22F771740);
      swift_arrayInitWithTakeFrontToBack();
      sub_22F1207AC(v41, v22, &qword_27DAB0730, &unk_22F771740);
      v22 += v55;
      v24 += v55;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_22F2B0CD8(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_22F7402E0();
  MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v150 = &v129 - v12;
  MEMORY[0x28223BE20](v13);
  v155 = &v129 - v14;
  MEMORY[0x28223BE20](v15);
  v154 = &v129 - v16;
  MEMORY[0x28223BE20](v17);
  v147 = &v129 - v18;
  MEMORY[0x28223BE20](v19);
  v146 = &v129 - v20;
  MEMORY[0x28223BE20](v21);
  v134 = &v129 - v22;
  v25 = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v26;
  v27 = a3[1];
  v144 = v24;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_103:
    v31 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v156 = v29;
      v123 = *(v29 + 16);
      if (v123 >= 2)
      {
        do
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v29 + 16 * v123);
          a3 = v29;
          v127 = *(v29 + 16 * (v123 - 1) + 32);
          v29 = *(v29 + 16 * (v123 - 1) + 40);
          sub_22F2B27F0(v124 + *(v5 + 72) * v126, (v124 + *(v5 + 72) * v127), (v124 + *(v5 + 72) * v29), v31);
          if (v6)
          {
            break;
          }

          if (v29 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_22F3F5F98(a3);
          }

          if (v123 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v128 = &a3[2 * v123];
          *v128 = v126;
          v128[1] = v29;
          v156 = a3;
          sub_22F3F5F0C(v123 - 1);
          v29 = v156;
          v123 = v156[2];
          a3 = v125;
        }

        while (v123 > 1);
      }

LABEL_113:

      return;
    }

LABEL_135:
    v29 = sub_22F3F5F98(v29);
    goto LABEL_105;
  }

  v130 = a4;
  v28 = 0;
  v152 = v24 + 16;
  v153 = (v24 + 8);
  v151 = (v24 + 32);
  v29 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v138 = v28;
    if (v28 + 1 < v27)
    {
      v142 = v27;
      v131 = v29;
      v32 = *a3;
      v33 = *(v144 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v144 + 16);
      v35(v133, v34, v9, v25);
      v145 = v33;
      v141 = v35;
      (v35)(v134, v32 + v33 * v30, v9);
      v31 = sub_22F7402D0();
      v37 = v36;
      v38 = sub_22F7402D0();
      v132 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_22F742040();
      }

      v40 = *v153;
      (*v153)(v134, v9);
      v140 = v40;
      v40(v133, v9);
      v41 = (v138 + 2);
      v42 = v145 * (v138 + 2);
      v43 = v32 + v42;
      v44 = v145 * v5;
      v45 = v32 + v145 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v41;
        v49 = v141;
        (v141)(v146, v43, v9);
        v49(v147, v45, v9);
        v50 = sub_22F7402D0();
        v52 = v51;
        if (v50 == sub_22F7402D0() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_22F742040();
        }

        a3 = v149;

        v31 = v140;
        v140(v147, v9);
        (v31)(v146, v9);
        v47 = v143 ^ v46;
        v41 = (a3 + 1);
        v43 += v145;
        v45 += v145;
        v48 = v148;
        v5 = v148 + 1;
        v44 = v6 + v145;
        v42 = v29 + v145;
      }

      while ((v47 & 1) == 0);
      if (v143)
      {
        v30 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v54 = v138 * v145;
          v55 = v138;
          do
          {
            if (v55 != v48)
            {
              v57 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v149 = *v151;
              v149(v139, (v57 + v54), v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v149((v57 + v6), v139, v9);
              v30 = v138;
              v48 = v5;
            }

            ++v55;
            v6 -= v145;
            v29 -= v145;
            v54 += v145;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
      }

      else
      {
        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
      }
    }

    v58 = a3[1];
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_22F13D970(0, *(v29 + 16) + 1, 1, v29);
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      v29 = sub_22F13D970((v75 > 1), v76 + 1, 1, v29);
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_22F2B27F0(v118 + *(v144 + 72) * v119, (v118 + *(v144 + 72) * v120), (v118 + *(v144 + 72) * v29), v79);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_22F3F5F98(a3);
        }

        if (v117 >= a3[2])
        {
          goto LABEL_116;
        }

        v121 = &a3[2 * v117];
        v121[4] = v119;
        v121[5] = v29;
        v156 = a3;
        sub_22F3F5F0C(v31);
        v29 = v156;
        v77 = v156[2];
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v145;
    if (v145 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v130);
  if (__OFADD__(v30, v130))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v131 = v29;
  v132 = v6;
  v60 = *a3;
  v61 = *(v144 + 72);
  v62 = *(v144 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v148 = -v61;
  v149 = v60;
  v64 = v30 - v31;
  v137 = v61;
  v65 = v60 + v31 * v61;
  v140 = v59;
LABEL_43:
  v145 = v31;
  v141 = v65;
  v142 = v64;
  v143 = v63;
  v67 = v63;
  while (1)
  {
    v62(v154, v65, v9);
    (v62)(v155, v67);
    v5 = sub_22F7402D0();
    v69 = v68;
    if (v5 == sub_22F7402D0() && v69 == v70)
    {

      v66 = *v153;
      (*v153)(v155, v9);
      v66(v154, v9);
LABEL_42:
      v31 = v145 + 1;
      v63 = v143 + v137;
      v64 = v142 - 1;
      v65 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v31 = v140;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_22F742040();

    v71 = *v153;
    (*v153)(v155, v9);
    v71(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v72 = v150;
    v5 = v151;
    v73 = *v151;
    (*v151)(v150, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v72, v9);
    v67 += v148;
    v65 += v148;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_22F2B1894(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v175 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0730, &unk_22F771740);
  v188 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v197 = &v167 - v11;
  MEMORY[0x28223BE20](v12);
  v191 = &v167 - v13;
  MEMORY[0x28223BE20](v14);
  v190 = &v167 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v167 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v167 - v20;
  MEMORY[0x28223BE20](v22);
  v181 = &v167 - v23;
  MEMORY[0x28223BE20](v24);
  v180 = &v167 - v25;
  MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v27);
  v183 = &v167 - v28;
  MEMORY[0x28223BE20](v29);
  v170 = &v167 - v30;
  MEMORY[0x28223BE20](v31);
  v169 = &v167 - v32;
  MEMORY[0x28223BE20](v33);
  MEMORY[0x28223BE20](v34);
  v189 = a3;
  v40 = *(a3 + 8);
  if (v40 < 1)
  {
    v177 = MEMORY[0x277D84F90];
LABEL_117:
    a3 = *v175;
    if (!*v175)
    {
      goto LABEL_155;
    }

    v5 = v177;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_119:
      v200 = v5;
      v163 = *(v5 + 2);
      if (v163 >= 2)
      {
        while (*v189)
        {
          v164 = *&v5[16 * v163];
          v165 = *&v5[16 * v163 + 24];
          sub_22F2B2E8C(&(*v189)[*(v188 + 72) * v164], &(*v189)[*(v188 + 72) * *&v5[16 * v163 + 16]], &(*v189)[*(v188 + 72) * v165], a3);
          if (v6)
          {
            goto LABEL_127;
          }

          if (v165 < v164)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_22F3F5F98(v5);
          }

          if (v163 - 2 >= *(v5 + 2))
          {
            goto LABEL_143;
          }

          v166 = &v5[16 * v163];
          *v166 = v164;
          *(v166 + 1) = v165;
          v200 = v5;
          sub_22F3F5F0C(v163 - 1);
          v5 = v200;
          v163 = *(v200 + 2);
          if (v163 <= 1)
          {
            goto LABEL_127;
          }
        }

        goto LABEL_153;
      }

LABEL_127:

      return;
    }

LABEL_149:
    v5 = sub_22F3F5F98(v5);
    goto LABEL_119;
  }

  v171 = &v167 - v36;
  v172 = v39;
  v182 = v38;
  v41 = 0;
  v177 = MEMORY[0x277D84F90];
  v174 = a4;
  v194 = v35;
  v168 = v37;
  v192 = v18;
  v193 = v21;
  v42 = a4;
  while (1)
  {
    v43 = v41;
    v44 = v41 + 1;
    if (v41 + 1 >= v40)
    {
      v63 = v194;
    }

    else
    {
      v185 = v40;
      v173 = v6;
      v45 = *v189;
      v46 = *(v188 + 72);
      v47 = v171;
      sub_22F13BA9C(&(*v189)[v46 * v44], v171, &qword_27DAB0730, &unk_22F771740);
      v176 = v41;
      v195 = v46;
      v48 = v172;
      sub_22F13BA9C(&v45[v46 * v41], v172, &qword_27DAB0730, &unk_22F771740);
      v49 = *(v194 + 48);
      v50 = *(v47 + v49);
      v51 = *(v48 + v49);
      v52 = v41 + 1;
      if (v50 == v51)
      {
        v187 = v41 + 1;
        v53 = v47;
        v54 = v169;
        sub_22F13BA9C(v53, v169, &qword_27DAB0730, &unk_22F771740);
        v199 = sub_22F740040();
        v56 = v55;
        v57 = sub_22F740050();
        v58 = *(*(v57 - 8) + 8);
        v58(v54, v57);
        v59 = v170;
        sub_22F13BA9C(v48, v170, &qword_27DAB0730, &unk_22F771740);
        v60 = sub_22F740040();
        v62 = v61;
        v58(v59, v57);
        if (v60 == v199 && v62 == v56)
        {

          LODWORD(v186) = 0;
        }

        else
        {
          LODWORD(v186) = sub_22F742040();
        }

        v18 = v192;
        v48 = v172;
        v47 = v171;
        v52 = v187;
      }

      else
      {
        LODWORD(v186) = v51 < v50;
      }

      sub_22F120ADC(v48, &qword_27DAB0730, &unk_22F771740);
      sub_22F120ADC(v47, &qword_27DAB0730, &unk_22F771740);
      v64 = v176 + 2;
      v65 = v195 * (v176 + 2);
      v66 = &v45[v65];
      v67 = v195 * v52;
      v68 = &v45[v195 * v52];
      v69 = v182;
      a3 = v183;
      do
      {
        v72 = v64;
        v5 = v52;
        v74 = v67;
        v73 = v65;
        v199 = v64;
        if (v64 >= v185)
        {
          break;
        }

        v196 = v52;
        v198 = v65;
        sub_22F13BA9C(v66, a3, &qword_27DAB0730, &unk_22F771740);
        sub_22F13BA9C(v68, v69, &qword_27DAB0730, &unk_22F771740);
        v75 = *(v194 + 48);
        v76 = *(a3 + v75);
        v77 = *(v69 + v75);
        if (v76 == v77)
        {
          v78 = v180;
          sub_22F13BA9C(a3, v180, &qword_27DAB0730, &unk_22F771740);
          v187 = sub_22F740040();
          v184 = v79;
          v80 = sub_22F740050();
          v81 = *(*(v80 - 8) + 8);
          v81(v78, v80);
          v82 = v181;
          sub_22F13BA9C(v69, v181, &qword_27DAB0730, &unk_22F771740);
          v83 = sub_22F740040();
          v85 = v84;
          v81(v82, v80);
          if (v83 == v187 && v85 == v184)
          {

            v70 = 0;
          }

          else
          {
            v70 = sub_22F742040();
          }

          v18 = v192;
          v69 = v182;
          a3 = v183;
        }

        else
        {
          v70 = v77 < v76;
        }

        sub_22F120ADC(v69, &qword_27DAB0730, &unk_22F771740);
        sub_22F120ADC(a3, &qword_27DAB0730, &unk_22F771740);
        v71 = v186 ^ v70;
        v73 = v198;
        v72 = v199;
        v64 = v199 + 1;
        v5 = v196;
        v66 += v195;
        v68 += v195;
        v52 = (v196 + 1);
        v67 = v74 + v195;
        v65 = v198 + v195;
      }

      while ((v71 & 1) == 0);
      v6 = v173;
      if (v186)
      {
        v43 = v176;
        v86 = v168;
        if (v72 < v176)
        {
          goto LABEL_146;
        }

        v63 = v194;
        if (v176 >= v72)
        {
          v44 = v72;
          v21 = v193;
        }

        else
        {
          v87 = v176;
          v88 = v176 * v195;
          do
          {
            if (v87 != v5)
            {
              a3 = v6;
              v90 = *v189;
              if (!*v189)
              {
                goto LABEL_152;
              }

              v91 = v73;
              sub_22F1207AC(&v90[v88], v86, &qword_27DAB0730, &unk_22F771740);
              if (v88 < v74 || &v90[v88] >= &v90[v91])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v88 != v74)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22F1207AC(v86, &v90[v74], &qword_27DAB0730, &unk_22F771740);
              v6 = a3;
              v73 = v91;
            }

            ++v87;
            v74 -= v195;
            v73 -= v195;
            v88 += v195;
          }

          while (v87 < v5--);
          v44 = v199;
          v21 = v193;
          v63 = v194;
          v18 = v192;
          v43 = v176;
        }

        v42 = v174;
      }

      else
      {
        v44 = v72;
        v42 = v174;
        v21 = v193;
        v63 = v194;
        v43 = v176;
      }
    }

    v92 = v189[1];
    if (v44 >= v92)
    {
      v41 = v44;
      goto LABEL_66;
    }

    v187 = v44;
    if (__OFSUB__(v44, v43))
    {
      goto LABEL_145;
    }

    if (v44 - v43 >= v42)
    {
      v41 = v187;
      goto LABEL_66;
    }

    if (__OFADD__(v43, v42))
    {
      goto LABEL_147;
    }

    if (v43 + v42 >= v92)
    {
      v93 = v92;
    }

    else
    {
      v93 = v43 + v42;
    }

    v5 = &qword_27DAB0730;
    if (v93 < v43)
    {
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v41 = v187;
    if (v187 == v93)
    {
      goto LABEL_66;
    }

    v94 = v43;
    v95 = v63;
    v173 = v6;
    v96 = *v189;
    v97 = *(v188 + 72);
    v98 = &(*v189)[v97 * (v187 - 1)];
    v195 = -v97;
    v176 = v94;
    a3 = v94 - v187;
    v196 = v96;
    v178 = v97;
    v99 = &v96[v187 * v97];
    v179 = v93;
LABEL_51:
    v184 = v99;
    v185 = a3;
    v186 = v98;
LABEL_52:
    sub_22F13BA9C(v99, v21, &qword_27DAB0730, &unk_22F771740);
    sub_22F13BA9C(v98, v18, &qword_27DAB0730, &unk_22F771740);
    v100 = *(v95 + 48);
    v101 = *&v21[v100];
    v102 = *&v18[v100];
    if (v101 != v102)
    {
      break;
    }

    v103 = v190;
    sub_22F13BA9C(v21, v190, &qword_27DAB0730, &unk_22F771740);
    v104 = sub_22F740040();
    v198 = v105;
    v199 = v104;
    v106 = sub_22F740050();
    v107 = v18;
    v108 = *(*(v106 - 8) + 8);
    v108(v103, v106);
    v109 = v191;
    sub_22F13BA9C(v107, v191, &qword_27DAB0730, &unk_22F771740);
    v110 = sub_22F740040();
    v112 = v111;
    v113 = v109;
    v114 = v198;
    v108(v113, v106);
    if (v110 != v199 || v112 != v114)
    {
      v115 = sub_22F742040();

      v21 = v193;
      v95 = v194;
      v18 = v192;
      goto LABEL_57;
    }

    v18 = v192;
    sub_22F120ADC(v192, &qword_27DAB0730, &unk_22F771740);
    v21 = v193;
    sub_22F120ADC(v193, &qword_27DAB0730, &unk_22F771740);
    v95 = v194;
LABEL_50:
    v98 = v186 + v178;
    a3 = v185 - 1;
    v99 = v184 + v178;
    if (++v187 != v179)
    {
      goto LABEL_51;
    }

    v41 = v179;
    v6 = v173;
    v43 = v176;
LABEL_66:
    v5 = v177;
    if (v41 < v43)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_22F13D970(0, *(v5 + 2) + 1, 1, v5);
    }

    a3 = *(v5 + 2);
    v118 = *(v5 + 3);
    v119 = a3 + 1;
    if (a3 >= v118 >> 1)
    {
      v5 = sub_22F13D970((v118 > 1), a3 + 1, 1, v5);
    }

    *(v5 + 2) = v119;
    v120 = &v5[16 * a3];
    *(v120 + 4) = v43;
    *(v120 + 5) = v41;
    v121 = *v175;
    if (!*v175)
    {
      goto LABEL_154;
    }

    if (a3)
    {
      while (2)
      {
        v122 = v119 - 1;
        if (v119 >= 4)
        {
          v127 = &v5[16 * v119 + 32];
          v128 = *(v127 - 64);
          v129 = *(v127 - 56);
          v133 = __OFSUB__(v129, v128);
          v130 = v129 - v128;
          if (v133)
          {
            goto LABEL_131;
          }

          v132 = *(v127 - 48);
          v131 = *(v127 - 40);
          v133 = __OFSUB__(v131, v132);
          v125 = v131 - v132;
          v126 = v133;
          if (v133)
          {
            goto LABEL_132;
          }

          v134 = &v5[16 * v119];
          v136 = *v134;
          v135 = *(v134 + 1);
          v133 = __OFSUB__(v135, v136);
          v137 = v135 - v136;
          if (v133)
          {
            goto LABEL_134;
          }

          v133 = __OFADD__(v125, v137);
          v138 = v125 + v137;
          if (v133)
          {
            goto LABEL_137;
          }

          if (v138 >= v130)
          {
            v156 = &v5[16 * v122 + 32];
            v158 = *v156;
            v157 = *(v156 + 1);
            v133 = __OFSUB__(v157, v158);
            v159 = v157 - v158;
            if (v133)
            {
              goto LABEL_141;
            }

            if (v125 < v159)
            {
              v122 = v119 - 2;
            }
          }

          else
          {
LABEL_86:
            if (v126)
            {
              goto LABEL_133;
            }

            v139 = &v5[16 * v119];
            v141 = *v139;
            v140 = *(v139 + 1);
            v142 = __OFSUB__(v140, v141);
            v143 = v140 - v141;
            v144 = v142;
            if (v142)
            {
              goto LABEL_136;
            }

            v145 = &v5[16 * v122 + 32];
            v147 = *v145;
            v146 = *(v145 + 1);
            v133 = __OFSUB__(v146, v147);
            v148 = v146 - v147;
            if (v133)
            {
              goto LABEL_139;
            }

            if (__OFADD__(v143, v148))
            {
              goto LABEL_140;
            }

            if (v143 + v148 < v125)
            {
              goto LABEL_100;
            }

            if (v125 < v148)
            {
              v122 = v119 - 2;
            }
          }
        }

        else
        {
          if (v119 == 3)
          {
            v123 = *(v5 + 4);
            v124 = *(v5 + 5);
            v133 = __OFSUB__(v124, v123);
            v125 = v124 - v123;
            v126 = v133;
            goto LABEL_86;
          }

          v149 = &v5[16 * v119];
          v151 = *v149;
          v150 = *(v149 + 1);
          v133 = __OFSUB__(v150, v151);
          v143 = v150 - v151;
          v144 = v133;
LABEL_100:
          if (v144)
          {
            goto LABEL_135;
          }

          v152 = &v5[16 * v122];
          v154 = *(v152 + 4);
          v153 = *(v152 + 5);
          v133 = __OFSUB__(v153, v154);
          v155 = v153 - v154;
          if (v133)
          {
            goto LABEL_138;
          }

          if (v155 < v143)
          {
            break;
          }
        }

        a3 = v122 - 1;
        if (v122 - 1 >= v119)
        {
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v189)
        {
          goto LABEL_151;
        }

        v160 = *&v5[16 * a3 + 32];
        v161 = *&v5[16 * v122 + 40];
        sub_22F2B2E8C(&(*v189)[*(v188 + 72) * v160], &(*v189)[*(v188 + 72) * *&v5[16 * v122 + 32]], &(*v189)[*(v188 + 72) * v161], v121);
        if (v6)
        {
          goto LABEL_127;
        }

        if (v161 < v160)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_22F3F5F98(v5);
        }

        if (a3 >= *(v5 + 2))
        {
          goto LABEL_130;
        }

        v162 = &v5[16 * a3];
        *(v162 + 4) = v160;
        *(v162 + 5) = v161;
        v200 = v5;
        sub_22F3F5F0C(v122);
        v5 = v200;
        v119 = *(v200 + 2);
        v21 = v193;
        if (v119 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v177 = v5;
    v40 = v189[1];
    v42 = v174;
    if (v41 >= v40)
    {
      goto LABEL_117;
    }
  }

  v115 = v102 < v101;
LABEL_57:
  sub_22F120ADC(v18, &qword_27DAB0730, &unk_22F771740);
  sub_22F120ADC(v21, &qword_27DAB0730, &unk_22F771740);
  if ((v115 & 1) == 0)
  {
    goto LABEL_50;
  }

  if (v196)
  {
    v116 = v197;
    sub_22F1207AC(v99, v197, &qword_27DAB0730, &unk_22F771740);
    swift_arrayInitWithTakeFrontToBack();
    sub_22F1207AC(v116, v98, &qword_27DAB0730, &unk_22F771740);
    v98 += v195;
    v99 += v195;
    if (__CFADD__(a3++, 1))
    {
      goto LABEL_50;
    }

    goto LABEL_52;
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

void sub_22F2B27F0(unint64_t a1, char *a2, char *a3, char *a4)
{
  v70 = sub_22F7402E0();
  v8 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v58 - v11;
  MEMORY[0x28223BE20](v12);
  v69 = &v58 - v13;
  MEMORY[0x28223BE20](v14);
  v68 = &v58 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_70;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v19 = &a2[-a1] / v17;
  v73 = a1;
  v72 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || &a2[v21] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = &a4[v21];
    if (v21 < 1)
    {
      v43 = &a4[v21];
    }

    else
    {
      v62 = a4;
      v63 = (v8 + 16);
      v61 = (v8 + 8);
      v41 = -v17;
      v42 = &a4[v21];
      v43 = v40;
      v64 = v41;
      while (2)
      {
        while (1)
        {
          v59 = v43;
          v44 = &a2[v41];
          v68 = &a2[v41];
          v65 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v73 = a2;
              v71 = v59;
              goto LABEL_68;
            }

            v46 = a3;
            v60 = v43;
            v47 = *v63;
            v69 = (v42 + v41);
            v48 = v70;
            (v47)(v66);
            (v47)(v67, v44, v48);
            v49 = sub_22F7402D0();
            v51 = v50;
            if (v49 == sub_22F7402D0() && v51 == v52)
            {
              v53 = 0;
            }

            else
            {
              v53 = sub_22F742040();
            }

            v41 = v64;
            a3 = v64 + v46;
            v54 = *v61;
            v55 = v70;
            (*v61)(v67, v70);
            v54(v66, v55);
            if (v53)
            {
              break;
            }

            v56 = v69;
            v43 = v69;
            if (v46 < v42 || a3 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v44 = v68;
            }

            else
            {
              v44 = v68;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v43;
            v45 = v56 > v62;
            a2 = v65;
            if (!v45)
            {
              goto LABEL_66;
            }
          }

          if (v46 < v65 || a3 >= v65)
          {
            break;
          }

          a2 = v68;
          v57 = v62;
          v43 = v60;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_66;
          }
        }

        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v43 = v60;
        if (v42 > v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v73 = a2;
    v71 = v43;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v67 = &a4[v20];
    v71 = &a4[v20];
    if (v20 >= 1 && a2 < a3)
    {
      v23 = *(v8 + 16);
      v65 = v17;
      v66 = (v8 + 16);
      v63 = (v8 + 8);
      v64 = v23;
      do
      {
        v24 = a3;
        v25 = a2;
        v26 = a2;
        v27 = v70;
        v28 = v64;
        v64(v68, v26, v70);
        v28(v69, a4, v27);
        v29 = sub_22F7402D0();
        v31 = v30;
        if (v29 == sub_22F7402D0() && v31 == v32)
        {

          v33 = *v63;
          v34 = v70;
          (*v63)(v69, v70);
          v33(v68, v34);
        }

        else
        {
          v35 = sub_22F742040();

          v36 = *v63;
          v37 = v70;
          (*v63)(v69, v70);
          v36(v68, v37);
          if (v35)
          {
            a2 = &v65[v25];
            a3 = v24;
            if (a1 < v25 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v39 = v65;
            goto LABEL_37;
          }
        }

        v38 = a4;
        v39 = v65;
        a4 = &v65[a4];
        a2 = v25;
        a3 = v24;
        if (a1 < v38 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v38)
        {
          swift_arrayInitWithTakeBackToFront();
          v72 = a4;
          goto LABEL_37;
        }

        v72 = a4;
LABEL_37:
        a1 += v39;
        v73 = a1;
      }

      while (a4 < v67 && a2 < a3);
    }
  }

LABEL_68:
  sub_22F3B666C(&v73, &v72, &v71);
}

void sub_22F2B2E8C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0730, &unk_22F771740);
  MEMORY[0x28223BE20](v8);
  v79 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v78 = &v76 - v11;
  MEMORY[0x28223BE20](v12);
  v80 = &v76 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v76 - v15;
  MEMORY[0x28223BE20](v17);
  v86 = &v76 - v18;
  MEMORY[0x28223BE20](v19);
  v85 = &v76 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v76 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v76 - v25;
  v28 = *(v27 + 72);
  if (!v28)
  {
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_74;
  }

  v29 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_75;
  }

  v88 = a3;
  v30 = (a2 - a1) / v28;
  v95 = a1;
  v94 = a4;
  v91 = v8;
  if (v30 >= v29 / v28)
  {
    v32 = v29 / v28 * v28;
    if (a4 < a2 || a2 + v32 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v32;
    if (v32 >= 1)
    {
      v50 = -v28;
      v51 = a4 + v32;
      v52 = v88;
      v53 = v80;
      v92 = v16;
      v89 = a4;
      v85 = -v28;
      do
      {
        v77 = v49;
        v54 = a2;
        a2 += v50;
        v90 = a2;
        v84 = v54;
        while (1)
        {
          if (v54 <= a1)
          {
            v95 = v54;
            v49 = v77;
            goto LABEL_71;
          }

          v87 = v52;
          v88 = v51;
          v83 = v49;
          v56 = v85;
          v86 = v51 + v85;
          sub_22F13BA9C(v51 + v85, v16, &qword_27DAB0730, &unk_22F771740);
          sub_22F13BA9C(a2, v53, &qword_27DAB0730, &unk_22F771740);
          v57 = *(v91 + 48);
          v58 = *&v16[v57];
          v59 = *(v53 + v57);
          if (v58 == v59)
          {
            v60 = v78;
            sub_22F13BA9C(v16, v78, &qword_27DAB0730, &unk_22F771740);
            v61 = sub_22F740040();
            v81 = v62;
            v82 = v61;
            v63 = sub_22F740050();
            v64 = *(*(v63 - 8) + 8);
            v64(v60, v63);
            v65 = v79;
            sub_22F13BA9C(v53, v79, &qword_27DAB0730, &unk_22F771740);
            v66 = sub_22F740040();
            v68 = v67;
            v69 = v65;
            v70 = v81;
            v64(v69, v63);
            if (v66 == v82 && v68 == v70)
            {

              v71 = 0;
            }

            else
            {
              v71 = sub_22F742040();
            }

            a4 = v89;
            a2 = v90;
            v72 = v80;
            v56 = v85;
          }

          else
          {
            v71 = v59 < v58;
            v72 = v53;
          }

          v73 = v87;
          v52 = v87 + v56;
          v53 = v72;
          sub_22F120ADC(v72, &qword_27DAB0730, &unk_22F771740);
          sub_22F120ADC(v92, &qword_27DAB0730, &unk_22F771740);
          if (v71)
          {
            break;
          }

          v74 = v86;
          v49 = v86;
          if (v73 < v88 || v52 >= v88)
          {
            v55 = v86;
            swift_arrayInitWithTakeFrontToBack();
            v49 = v55;
            v16 = v92;
          }

          else
          {
            v16 = v92;
            if (v73 != v88)
            {
              v75 = v86;
              swift_arrayInitWithTakeBackToFront();
              v49 = v75;
            }
          }

          v51 = v49;
          v54 = v84;
          if (v74 <= a4)
          {
            v95 = v84;
            goto LABEL_71;
          }
        }

        if (v73 < v84 || v52 >= v84)
        {
          swift_arrayInitWithTakeFrontToBack();
          v16 = v92;
        }

        else
        {
          v16 = v92;
          if (v73 != v84)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v51 = v88;
        v49 = v83;
        v50 = v85;
      }

      while (v88 > a4);
    }

    v95 = a2;
LABEL_71:
    v93 = v49;
  }

  else
  {
    v31 = v30 * v28;
    if (a4 < a1 || a1 + v31 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v87 = a4 + v31;
    v93 = a4 + v31;
    if (v31 >= 1 && a2 < v88)
    {
      v83 = v23;
      v84 = v28;
      v82 = v26;
      do
      {
        v92 = a1;
        sub_22F13BA9C(a2, v26, &qword_27DAB0730, &unk_22F771740);
        sub_22F13BA9C(a4, v23, &qword_27DAB0730, &unk_22F771740);
        v34 = *(v8 + 48);
        v35 = *&v26[v34];
        v36 = *&v23[v34];
        if (v35 == v36)
        {
          v89 = a4;
          v90 = a2;
          v37 = v85;
          sub_22F13BA9C(v26, v85, &qword_27DAB0730, &unk_22F771740);
          v38 = sub_22F740040();
          v40 = v39;
          v41 = sub_22F740050();
          v42 = *(*(v41 - 8) + 8);
          v42(v37, v41);
          v43 = v86;
          sub_22F13BA9C(v23, v86, &qword_27DAB0730, &unk_22F771740);
          v44 = sub_22F740040();
          v46 = v45;
          v42(v43, v41);
          if (v44 == v38 && v46 == v40)
          {

            v23 = v83;
            sub_22F120ADC(v83, &qword_27DAB0730, &unk_22F771740);
            v26 = v82;
            sub_22F120ADC(v82, &qword_27DAB0730, &unk_22F771740);
            a2 = v90;
            v8 = v91;
            a4 = v89;
            v28 = v84;
            goto LABEL_33;
          }

          v47 = sub_22F742040();

          a2 = v90;
          v8 = v91;
          a4 = v89;
          v23 = v83;
          v28 = v84;
          v26 = v82;
        }

        else
        {
          v47 = v36 < v35;
        }

        sub_22F120ADC(v23, &qword_27DAB0730, &unk_22F771740);
        sub_22F120ADC(v26, &qword_27DAB0730, &unk_22F771740);
        if (v47)
        {
          v48 = v92;
          if (v92 < a2 || v92 >= a2 + v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v28;
          }

          else
          {
            if (v92 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v28;
          }

          goto LABEL_40;
        }

LABEL_33:
        v48 = v92;
        if (v92 < a4 || v92 >= a4 + v28)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v92 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v94 = a4 + v28;
        a4 += v28;
LABEL_40:
        a1 = v48 + v28;
        v95 = a1;
      }

      while (a4 < v87 && a2 < v88);
    }
  }

  sub_22F3B6684(&v95, &v94, &v93);
}

unint64_t *sub_22F2B3718(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22F2B37B4(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_22F2B37B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v40 = a4;
  v29 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3148, &qword_22F782458);
  MEMORY[0x28223BE20](v39);
  v36 = &v27 - v5;
  v38 = sub_22F7402E0();
  v7 = MEMORY[0x28223BE20](v38);
  v35 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v41 = a3;
  v10 = *(a3 + 64);
  v30 = 0;
  v31 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v33 = v6 + 16;
  v34 = OBJC_IVAR____TtC11PhotosGraph32ExtendedTokenCollectionGenerator_safeTokenAnalyzer;
  v37 = v6;
  v32 = v6 + 8;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v42 = (v13 - 1) & v13;
LABEL_11:
    v43 = v15 | (v9 << 6);
    v18 = v41;
    v19 = v37;
    v20 = v38;
    v21 = v43;
    v22 = *(v37 + 16);
    v23 = v35;
    v22(v35, v41[6] + *(v37 + 72) * v43, v38, v7);
    v24 = *(v18[7] + 8 * v21);
    v25 = v36;
    (v22)(v36, v23, v20);
    *(v25 + *(v39 + 48)) = v24;
    LOBYTE(v22) = sub_22F7400F0();
    sub_22F120ADC(v25, &qword_27DAB3148, &qword_22F782458);
    (*(v19 + 8))(v23, v20);
    v13 = v42;
    if (v22)
    {
      *(v29 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_15:
        sub_22F1B0FA0(v29, v28, v30, v41);
        return;
      }
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_15;
    }

    v17 = *(v31 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v42 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_22F2B3AA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v12 = sub_22F2B3718(v14, v8, a1, a2);
      MEMORY[0x2319033A0](v14, -1, -1);

      return v12;
    }
  }

  MEMORY[0x28223BE20](v10);
  bzero(v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  sub_22F2B37B4((v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);
  v12 = v11;

  if (v3)
  {
    swift_willThrow();
  }

  return v12;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F2B3CAC()
{
  result = qword_2810A9028;
  if (!qword_2810A9028)
  {
    sub_22F120634(255, &qword_2810A9030, off_27887B328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9028);
  }

  return result;
}

float sub_22F2B3D1C(void *a1)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0.0;
  }

  v4 = *(v2 + OBJC_IVAR___PGMusicCurationFeatures_maestroSongScoresBySongID);

  v5 = [a1 uid];
  v6 = sub_22F740E20();
  v8 = v7;

  if (*(v4 + 16))
  {
    v9 = sub_22F1229E8(v6, v8);
    v11 = v10;

    v12 = 0.0;
    if (v11)
    {
      v12 = *(*(v4 + 56) + 4 * v9);
    }
  }

  else
  {

    v12 = 0.0;
  }

  return v12;
}

uint64_t sub_22F2B3DF0()
{

  return swift_deallocClassInstance();
}

float sub_22F2B3E80(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_22F1AED3C(a1, a2, a3);
  v7 = v6;
  swift_endAccess();
  return v7;
}

uint64_t sub_22F2B3F0C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22F742040() & 1;
  }
}

float sub_22F2B3F64(void *a1, uint64_t a2, uint64_t a3)
{
  v73 = sub_22F740280();
  v6 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = 0;
  v74 = sub_22F740920();
  v8 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v60 - v11;
  v60[0] = a2;
  v60[1] = a3;
  sub_22F7408F0();
  v65 = v12;
  v13 = sub_22F740900();
  v14 = *(v13 + 16);
  v64 = v8;
  if (v14)
  {
    v63 = a1;
    v77 = MEMORY[0x277D84F90];
    sub_22F146454(0, v14, 0);
    v15 = v77;
    v75 = *MEMORY[0x277D0A978];
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v69 = v17;
    v18 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v62 = v13;
    v19 = v13 + v18;
    v20 = *(v16 + 56);
    v67 = (v8 + 8);
    v68 = v20;
    v66 = (v16 - 8);
    v70 = v16;
    v22 = v71;
    v21 = v72;
    do
    {
      v76 = v14;
      v23 = v73;
      v69(v21, v19, v73);
      sub_22F7408E0();
      v24 = sub_22F740E20();
      v26 = v25;
      v27 = sub_22F7408B0();
      v29 = v28;
      v79 = v24;
      v80 = v26;

      MEMORY[0x231900B10](v27, v29);

      v30 = v79;
      v31 = v80;
      (*v67)(v22, v74);
      (*v66)(v21, v23);
      v77 = v15;
      v33 = *(v15 + 16);
      v32 = *(v15 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_22F146454((v32 > 1), v33 + 1, 1);
        v15 = v77;
      }

      *(v15 + 16) = v33 + 1;
      v34 = v15 + 16 * v33;
      *(v34 + 32) = v30;
      *(v34 + 40) = v31;
      v19 += v68;
      v14 = v76 - 1;
    }

    while (v76 != 1);
    v73 = v15;

    a1 = v63;
  }

  else
  {

    v75 = *MEMORY[0x277D0A978];
    v73 = MEMORY[0x277D84F90];
  }

  v35 = sub_22F7408C0();
  v37 = 0x800000022F7985B0;
  v38 = 0xD000000000000012;
  if (v36)
  {
    v38 = v35;
  }

  v72 = v38;
  if (v36)
  {
    v37 = v36;
  }

  v76 = v37;
  v39 = [a1 tagIDs];
  v40 = sub_22F741420();

  v41 = 0;
  v42 = v40 + 56;
  v43 = v40;
  v44 = 1 << *(v40 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v40 + 56);
  v47 = (v44 + 63) >> 6;
  v48 = 1.0e-14;
  while (v46)
  {
    v49 = v41;
LABEL_20:
    v50 = (*(v43 + 48) + ((v49 << 10) | (16 * __clz(__rbit64(v46)))));
    v52 = *v50;
    v51 = v50[1];
    v46 &= v46 - 1;
    v79 = *v50;
    v80 = v51;
    v77 = sub_22F740E20();
    v78 = v53;
    sub_22F160DE4();

    v54 = sub_22F741910();

    if (v54)
    {
      if (sub_22F740FF0())
      {
        goto LABEL_31;
      }

      sub_22F740910();
      v55 = sub_22F740FF0();

      if (v55)
      {
        goto LABEL_31;
      }

      v56 = sub_22F740FF0();
      if (v56)
      {
        goto LABEL_31;
      }

      v79 = v52;
      v80 = v51;
      MEMORY[0x28223BE20](v56);
      v60[-2] = &v79;
      v57 = v61;
      v58 = sub_22F1C0E04(sub_22F1B1EA8, &v60[-4], v73);
      v61 = v57;

      if (v58)
      {
        v48 = 0.8;
      }

      v41 = v49;
    }

    else
    {

      v41 = v49;
    }
  }

  while (1)
  {
    v49 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v49 >= v47)
    {
      (*(v64 + 8))(v65, v74);

      return v48;
    }

    v46 = *(v42 + 8 * v49);
    ++v41;
    if (v46)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_31:

  (*(v64 + 8))(v65, v74);
  return 1.0;
}

void sub_22F2B459C(void *a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v35 = a3;
  v33 = sub_22F73EFE0();
  v4 = *(v33 - 8);
  *&v5 = MEMORY[0x28223BE20](v33).n128_u64[0];
  v32 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 tagIDs];
  v8 = sub_22F741420();

  v9 = 0;
  v10 = *(v8 + 56);
  v30[0] = v8 + 56;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v30[1] = *MEMORY[0x277D0A970];
  v31 = (v4 + 8);
  v36 = v8;
  while (v13)
  {
LABEL_10:
    v16 = (*(v8 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v13)))));
    v17 = *v16;
    v18 = v16[1];
    v13 &= v13 - 1;
    v41 = *v16;
    v42 = v18;
    v39 = sub_22F740E20();
    v40 = v19;
    sub_22F160DE4();

    v20 = sub_22F741910();

    if (v20)
    {
      v41 = v17;
      v42 = v18;
      v39 = sub_22F740E20();
      v40 = v21;
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_22F7418E0();

      v22 = sub_22F740EA0();
      v24 = v23;

      v41 = v34;
      v42 = v35;
      v25 = v32;
      sub_22F73EFD0();
      sub_22F7418D0();
      (*v31)(v25, v33);
      v26 = sub_22F740EA0();
      v28 = v27;

      v41 = v22;
      v42 = v24;
      v39 = v26;
      v40 = v28;
      if (sub_22F741910())
      {

LABEL_16:

        return;
      }

      v41 = v26;
      v42 = v28;
      v39 = v22;
      v40 = v24;
      v29 = sub_22F741910();

      v8 = v36;
      if (v29)
      {
        goto LABEL_16;
      }
    }

    else
    {

      v8 = v36;
    }
  }

  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v14)
    {
      goto LABEL_16;
    }

    v13 = *(v30[0] + 8 * v15);
    ++v9;
    if (v13)
    {
      v9 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
}

unint64_t sub_22F2B493C(char a1)
{
  result = 0x7465737341;
  switch(a1)
  {
    case 1:
      result = 0x6C6F437465737341;
      break;
    case 2:
      result = 0x6E6F73726550;
      break;
    case 3:
      result = 7628112;
      break;
    case 4:
      result = 0x6D75626C41;
      break;
    case 5:
      result = 0x656E656353;
      break;
    case 6:
      result = 0x687361486F6547;
      break;
    case 7:
      result = 0x73756C4365746144;
      break;
    case 8:
      result = 1885958740;
      break;
    case 9:
      result = 0x657469726F766146;
      break;
    case 10:
      result = 0x746163696C707544;
      break;
    case 11:
      result = 1701670728;
      break;
    case 12:
      result = 7954756;
      break;
    case 13:
      result = 0x7961646B656557;
      break;
    case 14:
      result = 0x68746E6F4DLL;
      break;
    case 15:
      result = 0x72657472617551;
      break;
    case 16:
      result = 1918985561;
      break;
    case 17:
      result = 2037672259;
      break;
    case 18:
      result = 0x6574617453;
      break;
    case 19:
      result = 0x7972746E756F43;
      break;
    case 20:
      result = 0x764563696C627550;
      break;
    case 21:
      result = 0xD000000000000013;
      break;
    case 22:
      result = 0xD000000000000016;
      break;
    case 23:
      result = 0x656D726F66726550;
      break;
    case 24:
      result = 0x7373656E69737542;
      break;
    case 25:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22F2B4BB8()
{
  v1 = [v0 properties];
  sub_22F20B0E0();
  v2 = sub_22F740CA0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3170, &qword_22F770B68);
  v3 = sub_22F741DC0();
  v4 = v3;
  v5 = 0;
  v6 = v2 + 64;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v2 + 64);
  v10 = (v7 + 63) >> 6;
  v26 = v3 + 64;
  v27 = v2;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = (*(v27 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(*(v27 + 56) + 8 * v14);

      v19 = [v18 kgPropertyValue];
      *(v26 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v20 = (v4[6] + 16 * v14);
      *v20 = v16;
      v20[1] = v17;
      *(v4[7] + 8 * v14) = v19;
      v21 = v4[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v4[2] = v23;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v24 = sub_22F23ED7C(v4);

        return v24;
      }

      v13 = *(v6 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  swift_getErrorValue();
  sub_22F7420F0();
  result = sub_22F741D40();
  __break(1u);
  return result;
}

uint64_t sub_22F2B4E04(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_22F2B493C(*a1);
  v5 = v4;
  if (v3 == sub_22F2B493C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22F742040();
  }

  return v8 & 1;
}

uint64_t sub_22F2B4E8C()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F2B493C(v1);
  sub_22F740D60();

  return sub_22F7421D0();
}

double sub_22F2B4EF0(uint64_t a1)
{
  sub_22F2B493C(*v1);
  sub_22F740D60();

  return result;
}

uint64_t sub_22F2B4F44(uint64_t a1)
{
  v2 = *v1;
  sub_22F742170();
  sub_22F2B493C(v2);
  sub_22F740D60();

  return sub_22F7421D0();
}

unint64_t sub_22F2B4FA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22F2B5424(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22F2B4FD4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22F2B493C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_22F2B50F8()
{
  v21 = sub_22F2B4BB8();
  v1 = *(v0 + OBJC_IVAR____TtC11PhotosGraph4Node_properties);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3170, &qword_22F770B68);
  result = sub_22F741DC0();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  v22 = result + 8;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v12 = v9 | (v4 << 6);
      v13 = (*(v1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(v1 + 56) + 8 * v12);

      result = [v16 kgPropertyValue];
      *(v22 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v17 = (v3[6] + 16 * v12);
      *v17 = v14;
      v17[1] = v15;
      *(v3[7] + 8 * v12) = result;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      v3[2] = v20;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
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
        return v21;
      }

      v11 = *(v1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_22F2B5380(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for Node();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_22F2B5424(uint64_t a1, uint64_t a2)
{
  v2 = sub_22F742080();

  if (v2 >= 0x1A)
  {
    return 26;
  }

  else
  {
    return v2;
  }
}

void sub_22F2B5478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v28 = MEMORY[0x277D84F90];
    sub_22F146454(0, v4, 0);
    v5 = a1;
    v6 = v28;
    v7 = 0x800000022F78E800;
    v8 = 0x800000022F78E7D0;
    v9 = 0x800000022F78E7B0;
    v10 = 32;
    do
    {
      v11 = 0xE500000000000000;
      v12 = 0x7465737341;
      switch(*(v5 + v10))
      {
        case 1:
          v11 = 0xEF6E6F697463656CLL;
          v12 = 0x6C6F437465737341;
          break;
        case 2:
          v11 = 0xE600000000000000;
          v12 = 0x6E6F73726550;
          break;
        case 3:
          v11 = 0xE300000000000000;
          v12 = 7628112;
          break;
        case 4:
          v12 = 0x6D75626C41;
          break;
        case 5:
          v12 = 0x656E656353;
          break;
        case 6:
          v11 = 0xE700000000000000;
          v12 = 0x687361486F6547;
          break;
        case 7:
          v11 = 0xEB00000000726574;
          v12 = 0x73756C4365746144;
          break;
        case 8:
          v11 = 0xE400000000000000;
          v12 = 1885958740;
          break;
        case 9:
          v11 = 0xE900000000000073;
          v12 = 0x657469726F766146;
          break;
        case 0xA:
          v11 = 0xEA00000000007365;
          v12 = 0x746163696C707544;
          break;
        case 0xB:
          v11 = 0xE400000000000000;
          v12 = 1701670728;
          break;
        case 0xC:
          v11 = 0xE300000000000000;
          v12 = 7954756;
          break;
        case 0xD:
          v11 = 0xE700000000000000;
          v12 = 0x7961646B656557;
          break;
        case 0xE:
          v12 = 0x68746E6F4DLL;
          break;
        case 0xF:
          v11 = 0xE700000000000000;
          v12 = 0x72657472617551;
          break;
        case 0x10:
          v11 = 0xE400000000000000;
          v12 = 1918985561;
          break;
        case 0x11:
          v11 = 0xE400000000000000;
          v12 = 2037672259;
          break;
        case 0x12:
          v12 = 0x6574617453;
          break;
        case 0x13:
          v11 = 0xE700000000000000;
          v12 = 0x7972746E756F43;
          break;
        case 0x14:
          v11 = 0xEB00000000746E65;
          v12 = 0x764563696C627550;
          break;
        case 0x15:
          v12 = 0xD000000000000013;
          v11 = v9;
          break;
        case 0x16:
          v12 = 0xD000000000000016;
          v11 = v8;
          break;
        case 0x17:
          v12 = 0x656D726F66726550;
          v11 = 0xE900000000000072;
          break;
        case 0x18:
          v11 = 0xE800000000000000;
          v12 = 0x7373656E69737542;
          break;
        case 0x19:
          v12 = 0xD000000000000010;
          v11 = v7;
          break;
        default:
          break;
      }

      v28 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        v24 = v8;
        v25 = v7;
        v23 = v9;
        sub_22F146454((v13 > 1), v14 + 1, 1);
        v9 = v23;
        v8 = v24;
        v7 = v25;
        v5 = a1;
        v6 = v28;
      }

      *(v6 + 16) = v14 + 1;
      v15 = v6 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      ++v10;
      --v4;
    }

    while (v4);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v16 = sub_22F1515F8(v6);

  v17 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
  v18 = sub_22F740C80();
  v19 = [v17 kgPropertiesWithMAProperties_];

  if (v19)
  {
    sub_22F20B0E0();
    v20 = sub_22F740CA0();

    v21 = type metadata accessor for Node();
    v22 = objc_allocWithZone(v21);
    *&v22[OBJC_IVAR____TtC11PhotosGraph4Node_identifier] = 0;
    *&v22[OBJC_IVAR____TtC11PhotosGraph4Node_labels] = v16;
    *&v22[OBJC_IVAR____TtC11PhotosGraph4Node_properties] = v20;
    v27.receiver = v22;
    v27.super_class = v21;
    objc_msgSendSuper2(&v27, sel_init);
  }

  else
  {

    sub_22F2B5954();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_22F2B5954()
{
  result = qword_27DAB3178;
  if (!qword_27DAB3178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3178);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Node.Label(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Node.Label(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22F2B5AFC()
{
  result = qword_27DAB3180;
  if (!qword_27DAB3180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB3188, qword_22F7824B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3180);
  }

  return result;
}

unint64_t sub_22F2B5B64()
{
  result = qword_27DAB3190;
  if (!qword_27DAB3190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3190);
  }

  return result;
}

void sub_22F2B5BC0(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), void (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_22F3F6580(v7);
  }

  v8 = v7[2];
  v9[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v9[1] = v8;
  sub_22F2B84C8(v9, a2, a3);
  *a1 = v7;
}

uint64_t *sub_22F2B5C8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v94 = a4;
  v106 = a3;
  *&v105 = a2;
  v5 = sub_22F7406F0();
  v99 = *(v5 - 8);
  v100 = v5;
  MEMORY[0x28223BE20](v5);
  v102 = (&v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v124 = sub_22F740B90();
  v103 = *(v124 - 1);
  MEMORY[0x28223BE20](v124);
  v8 = (&v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2810A9BD0 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v9 = qword_2810B4E90;
    *&v10 = CACurrentMediaTime();
    sub_22F1B560C("Music Curation - Curating", 25, 2u, v10, 0, v9, &v115);
    v11 = swift_allocObject();
    *(v11 + 16) = MEMORY[0x277D84F90];
    v98 = (v11 + 16);
    v12 = *a1;
    v118 = a1[1];
    v119 = v12;
    v113 = v118;
    v114 = v12;
    v13 = a1[3];
    v117 = a1[2];
    v15 = a1[4];
    v14 = a1[5];
    v116 = a1[6];
    v111 = v116;
    v112 = v117;
    sub_22F13BA9C(&v119, v108, &qword_27DAB31A0, &qword_22F782598);
    sub_22F13BA9C(&v118, v108, &qword_27DAB31A0, &qword_22F782598);
    sub_22F13BA9C(&v117, v108, &qword_27DAB31A0, &qword_22F782598);
    v95 = v13;

    v96 = v15;

    v104 = v14;

    sub_22F13BA9C(&v116, v108, &qword_27DAB31A0, &qword_22F782598);
    sub_22F1B3158(v8);
    v16 = sub_22F740B70();
    v17 = sub_22F7415C0();
    if (os_log_type_enabled(v16, v17))
    {
      v19 = v118;
      v18 = v119;
      v20 = v117;
      v101 = v116;
      v21 = swift_slowAlloc();
      *v21 = 134219008;
      *(v21 + 4) = *(v18 + 16);
      *(v21 + 12) = 2048;
      *(v21 + 14) = *(v19 + 16);
      *(v21 + 22) = 2048;
      *(v21 + 24) = *(v20 + 16);
      *(v21 + 32) = 2048;
      *(v21 + 34) = *(v104 + 16);
      *(v21 + 42) = 2048;
      *(v21 + 44) = *(v101 + 16);
      _os_log_impl(&dword_22F0FC000, v16, v17, "[MemoriesMusic] Curating songs from multiple slices - performer (%ld, topic (%ld), favorites (%ld), location (%ld), time: (%ld)", v21, 0x34u);
      MEMORY[0x2319033A0](v21, -1, -1);
    }

    (*(v103 + 8))(v8, v124);
    v22 = v106;
    v23 = *(v106 + OBJC_IVAR___PGMusicCuratorContext_configuration + 48);
    v121 = *(v106 + OBJC_IVAR___PGMusicCuratorContext_configuration + 32);
    v122 = v23;
    v123 = *(v106 + OBJC_IVAR___PGMusicCuratorContext_configuration + 64);
    v24 = *(v106 + OBJC_IVAR___PGMusicCuratorContext_configuration + 16);
    v120[0] = *(v106 + OBJC_IVAR___PGMusicCuratorContext_configuration);
    v120[1] = v24;
    v25 = *(v106 + OBJC_IVAR___PGMusicCuratorContext_configuration + 168);
    v26 = *(v106 + OBJC_IVAR___PGMusicCuratorContext_configuration + 296);
    v27 = OBJC_IVAR___PGMusicCuratorContext_useOnlyMusicForTopicInTopPickSuggestions;
    swift_beginAccess();
    LODWORD(v27) = *(v22 + v27);
    v124 = swift_allocObject();
    v124[2] = MEMORY[0x277D84F90];
    LODWORD(v101) = v27;
    v103 = *&v120[0];
    if (v27)
    {
      v28 = *&v120[0];
    }

    else
    {
      v28 = *(&v120[0] + 1);
    }

    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v29 = v105;
    a1 = *(*(v105 + OBJC_IVAR___PGMusicCurationFeatures_scoreByAssetCollectionMaestroKeyword) + 16);
    if (a1)
    {
      v92 = v28;
      v30 = sub_22F10B348(a1, 0);
      v93 = sub_22F120B3C();
      v31 = v108[0];
      v28 = v108[2];
      i = v108[3];
      v29 = v108[4];

      sub_22F0FF590(v31);
      if (v93 != a1)
      {
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v29 = v105;
      v28 = v92;
    }

    a1 = v102;
    sub_22F7406E0();
    sub_22F7406C0();
    v8 = sub_22F7406D0();

    v30 = v8[2];
    if (v30)
    {
      break;
    }

    i = MEMORY[0x277D84F90];
    if ((v28 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    __break(1u);
LABEL_83:
    swift_once();
  }

  i = sub_22F10B348(v8[2], 0);
  v8 = sub_22F11A438(v108, i + 4, v30, v8);
  sub_22F0FF590(v108[0]);
  if (v8 != v30)
  {
    goto LABEL_85;
  }

  if ((v28 & 0x8000000000000000) != 0)
  {
    goto LABEL_81;
  }

LABEL_13:
  if (v28)
  {
    v30 = OBJC_IVAR___PGMusicCurationFeatures_memorySubcategory;
    v33 = OBJC_IVAR___PGMusicCurationFeatures_performerIdentifiers;
    v34 = *(v29 + OBJC_IVAR___PGMusicCurationFeatures_memoryCategory) & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      while (1)
      {
        while (1)
        {
          --v28;
          if (v34 != 16 && (*(v29 + v30) - 213) >= 2)
          {
            break;
          }

          v35 = *(v29 + v33);
          if (!v35 || !*(v35 + 16) || !*(v114 + 16))
          {
            break;
          }

          if ((sub_22F2B6A1C(&v114, 1uLL, v120, v11, v124, 0.0) & 1) == 0 || !v28)
          {
            goto LABEL_30;
          }
        }

        if (!*(v113 + 16))
        {
          goto LABEL_30;
        }

        if (!i[2])
        {
          break;
        }

        if ((sub_22F2B72CC(&v113, i, v120, v11, v106, 0.0) & 1) == 0 || !v28)
        {
          goto LABEL_30;
        }
      }
    }

    while ((sub_22F2B6A1C(&v113, 0, v120, v11, v124, 0.0) & 1) != 0 && v28);
  }

LABEL_30:

  v8 = v124;
  v28 = v103;
  if (!v101)
  {
    if ((v103 & 0x8000000000000000) == 0)
    {
      if (v103)
      {
        v36 = v103;
        do
        {
          v37 = sub_22F2B6A1C(&v111, 0, v120, v11, v8, v26);
          --v36;
        }

        while (((sub_22F2B6A1C(&v112, 0, v120, v11, v8, v25) | v37) & 1) != 0 && v36);
      }

      goto LABEL_36;
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

LABEL_36:
  (*(v99 + 8))(a1, v100);
  swift_endAccess();
  swift_endAccess();
  swift_endAccess();
  swift_endAccess();
  a1 = v98;
  swift_beginAccess();
  for (i = *a1; ; i = *(v11 + 16))
  {
    v38 = i[2];
    v39 = __OFSUB__(v28, v38);
    v40 = v28 - v38;
    if (v39)
    {
      goto LABEL_82;
    }

    if (v40 < 1 || !*(v113 + 16))
    {
      break;
    }

    swift_beginAccess();
    sub_22F2B6A1C(&v113, 0, v120, v11, v8, 0.0);
    swift_endAccess();
  }

  v41 = v112;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v106 = v41;
  *&v109 = v41;
  v43 = v97;
  sub_22F2BBB24(v95, sub_22F2BB5A8, 0, isUniquelyReferenced_nonNull_native, &v109);

  v44 = v109;
  v45 = swift_isUniquelyReferenced_nonNull_native();
  *&v109 = v44;
  sub_22F2BBB24(v96, sub_22F2BB5A8, 0, v45, &v109);
  v103 = v43;

  v46 = sub_22F2B7F74(v109);

  v47 = sub_22F2BBE48(v46);

  v49 = sub_22F2B7F74(v48);

  a1 = sub_22F2BBE48(v49);

  v30 = sub_22F39687C(v122, v47);
  if (v52)
  {
    v29 = v52;
    v28 = v51;
    v102 = v50;
    sub_22F742070();
    swift_unknownObjectRetain_n();
    v55 = swift_dynamicCastClass();
    if (!v55)
    {
      swift_unknownObjectRelease();
      v55 = MEMORY[0x277D84F90];
    }

    v56 = *(v55 + 16);

    if (!__OFSUB__(v29 >> 1, v28))
    {
      if (v56 != (v29 >> 1) - v28)
      {
        goto LABEL_90;
      }

      v54 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v54)
      {
        goto LABEL_50;
      }

      v54 = MEMORY[0x277D84F90];
      goto LABEL_49;
    }

    goto LABEL_87;
  }

  while (2)
  {
    sub_22F10AB68(v30, v50, v51, v52);
    v54 = v53;
LABEL_49:
    swift_unknownObjectRelease();
LABEL_50:
    v102 = v54;
    a1 = sub_22F39687C(*(&v122 + 1), a1);
    if (v59)
    {
      v28 = v59;
      v62 = v58;
      v63 = v57;
      v30 = sub_22F742070();
      swift_unknownObjectRetain_n();
      v64 = swift_dynamicCastClass();
      if (!v64)
      {
        swift_unknownObjectRelease();
        v64 = MEMORY[0x277D84F90];
      }

      v29 = *(v64 + 16);

      if (!__OFSUB__(v28 >> 1, v62))
      {
        if (v29 != (v28 >> 1) - v62)
        {
          goto LABEL_92;
        }

        v61 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v61)
        {
          goto LABEL_59;
        }

        v61 = MEMORY[0x277D84F90];
        goto LABEL_58;
      }

LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      swift_unknownObjectRelease();
      v52 = v29;
      v51 = v28;
      v50 = v102;
      continue;
    }

    break;
  }

  while (2)
  {
    sub_22F10AB68(a1, v57, v58, v59);
    v61 = v60;
LABEL_58:
    swift_unknownObjectRelease();
LABEL_59:
    v65 = v111;

    v67 = sub_22F2B7F74(v66);

    a1 = sub_22F39687C(v123, v67);
    v101 = v61;
    if ((v70 & 1) == 0)
    {
LABEL_60:
      sub_22F10AB68(a1, v68, v69, v70);
      v72 = v71;
      goto LABEL_67;
    }

    v30 = v65;
    v29 = v70;
    v28 = v69;
    v100 = v68;
    sub_22F742070();
    swift_unknownObjectRetain_n();
    v73 = swift_dynamicCastClass();
    if (!v73)
    {
      swift_unknownObjectRelease();
      v73 = MEMORY[0x277D84F90];
    }

    v74 = *(v73 + 16);

    if (__OFSUB__(v29 >> 1, v28))
    {
      goto LABEL_89;
    }

    if (v74 != (v29 >> 1) - v28)
    {
      swift_unknownObjectRelease();
      v70 = v29;
      v69 = v28;
      v68 = v100;
      v61 = v101;
      v65 = v30;
      goto LABEL_60;
    }

    v72 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v65 = v30;
    v61 = v101;
    if (!v72)
    {
      v72 = MEMORY[0x277D84F90];
LABEL_67:
      swift_unknownObjectRelease();
    }

    v100 = v72;
    v28 = v114;

    v76 = sub_22F2B7F74(v75);

    a1 = sub_22F39687C(*(&v121 + 1), v76);
    if ((v79 & 1) == 0)
    {
      goto LABEL_69;
    }

    v98 = v77;
    v99 = v65;
    v62 = v79;
    v82 = v78;
    v63 = sub_22F742070();
    swift_unknownObjectRetain_n();
    v83 = swift_dynamicCastClass();
    if (!v83)
    {
      swift_unknownObjectRelease();
      v83 = MEMORY[0x277D84F90];
    }

    v84 = *(v83 + 16);

    if (__OFSUB__(v62 >> 1, v82))
    {
      __break(1u);
LABEL_92:
      swift_unknownObjectRelease();
      v59 = v28;
      v58 = v62;
      v57 = v63;
      continue;
    }

    break;
  }

  if (v84 == (v62 >> 1) - v82)
  {
    v81 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v61 = v101;
    if (!v81)
    {
      v81 = MEMORY[0x277D84F90];
      goto LABEL_76;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v79 = v62;
    v78 = v82;
    v77 = v98;
    v61 = v101;
LABEL_69:
    sub_22F10AB68(a1, v77, v78, v79);
    v81 = v80;
LABEL_76:
    swift_unknownObjectRelease();
  }

  sub_22F2B82BC(v81, *(v105 + OBJC_IVAR___PGMusicCurationFeatures_location), *(v105 + OBJC_IVAR___PGMusicCurationFeatures_location + 8), &v109);
  v105 = v109;
  v85 = v110;
  v86 = type metadata accessor for MusicCuration();
  v87 = objc_allocWithZone(v86);
  *&v87[OBJC_IVAR___PGMusicCuration_curatorVersion] = 2;
  *&v87[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions] = i;
  *&v87[OBJC_IVAR___PGMusicCuration_musicForYou] = v102;
  *&v87[OBJC_IVAR___PGMusicCuration_musicForLocation] = v61;
  *&v87[OBJC_IVAR___PGMusicCuration_musicForTime] = v100;
  *&v87[OBJC_IVAR___PGMusicCuration_musicForPerformer] = v81;
  v88 = &v87[OBJC_IVAR___PGMusicCuration_musicCurationInfo];
  *v88 = v105;
  *(v88 + 2) = v85;
  *&v87[OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo] = MEMORY[0x277D84F90];
  v107.receiver = v87;
  v107.super_class = v86;

  v89 = objc_msgSendSuper2(&v107, sel_init);
  sub_22F1B2BBC(0);
  v90 = v103;
  sub_22F7416A0();

  if (v90)
  {
  }

  return v89;
}

uint64_t sub_22F2B6A1C(uint64_t *a1, unint64_t a2, uint64_t *a3, char *a4, uint64_t *a5, float a6)
{
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  MEMORY[0x28223BE20](v84);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v70 - v15;
  MEMORY[0x28223BE20](v17);
  v80 = &v70 - v18;
  MEMORY[0x28223BE20](v19);
  v83 = &v70 - v20;
  MEMORY[0x28223BE20](v21);
  v79 = &v70 - v22;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10F8, &unk_22F771548);
  MEMORY[0x28223BE20](v78);
  v77 = &v70 - v23;
  v24 = type metadata accessor for Song(0);
  v81 = *(v24 - 8);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = (&v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v29 = &v70 - v28;
  v30 = *a3;
  swift_beginAccess();
  v31 = *(*(a4 + 2) + 16);
  v32 = __OFSUB__(v30, v31);
  v33 = v30 - v31;
  if (v32)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    a1 = sub_22F13E558(0, a1[2] + 1, 1, a1);
    *(v29 + 2) = a1;
    goto LABEL_28;
  }

  if (v33 >= 1)
  {
    v74 = v26;
    v75 = a4;
    v76 = v29;
    v34 = *a1;
    v35 = *a1 + 64;
    v36 = 1 << *(*a1 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(*a1 + 64);
    if (v38)
    {
      v73 = a2;
      v71 = a5;
      v72 = a1;
      v29 = 0;
      v39 = __clz(__rbit64(v38));
      a2 = (v38 - 1) & v38;
      v26 = ((v36 + 63) >> 6);
LABEL_11:
      v42 = *(v34 + 48);
      v43 = v80;
      v82 = *(v81 + 72);
      sub_22F15CAA0(v42 + v82 * v39, v80);
      v44 = v83;
      *(v43 + *(v84 + 48)) = *(*(v34 + 56) + 4 * v39);
      a5 = &qword_27DAB10F0;
      a1 = &qword_22F771540;
      sub_22F1207AC(v43, v44, &qword_27DAB10F0, &qword_22F771540);

      if (!a2)
      {
        goto LABEL_13;
      }

      do
      {
        while (1)
        {
          v30 = v29;
LABEL_16:
          v45 = __clz(__rbit64(a2));
          a2 &= a2 - 1;
          v46 = v45 | (v30 << 6);
          sub_22F15CAA0(*(v34 + 48) + v46 * v82, v13);
          v47 = *(*(v34 + 56) + 4 * v46);
          v48 = v84;
          *&v13[*(v84 + 48)] = v47;
          sub_22F1207AC(v13, v16, &qword_27DAB10F0, &qword_22F771540);
          v49 = *(v48 + 48);
          v50 = v83;
          if (*(v83 + v49) >= *&v16[v49])
          {
            break;
          }

          sub_22F120ADC(v83, &qword_27DAB10F0, &qword_22F771540);
          sub_22F1207AC(v16, v50, &qword_27DAB10F0, &qword_22F771540);
          v29 = v30;
          if (!a2)
          {
            goto LABEL_13;
          }
        }

        sub_22F120ADC(v16, &qword_27DAB10F0, &qword_22F771540);
        v29 = v30;
      }

      while (a2);
      while (1)
      {
LABEL_13:
        v30 = (v29 + 1);
        if (__OFADD__(v29, 1))
        {
          __break(1u);
          goto LABEL_41;
        }

        if (v30 >= v26)
        {
          break;
        }

        a2 = *(v35 + 8 * v30);
        ++v29;
        if (a2)
        {
          goto LABEL_16;
        }
      }

      v51 = v79;
      sub_22F1207AC(v83, v79, &qword_27DAB10F0, &qword_22F771540);
      v52 = *(v51 + *(v84 + 48));
      v53 = v78;
      v54 = *(v78 + 48);
      v55 = v51;
      v56 = v77;
      sub_22F15CB04(v55, v77);
      *(v56 + v54) = v52;
      v57 = *(v56 + *(v53 + 48));
      v26 = v76;
      sub_22F15CB04(v56, v76);
      if (v57 < a6)
      {
        v30 = 0;
        goto LABEL_38;
      }

      v30 = v26[5];
      if (!v30)
      {
        goto LABEL_38;
      }

      a5 = v26[4];
      a2 = v71;
      v58 = swift_beginAccess();
      v59 = *(a2 + 16);
      v85[0] = a5;
      v85[1] = v30;
      MEMORY[0x28223BE20](v58);
      *(&v70 - 2) = v85;

      v60 = sub_22F1C0E04(sub_22F1D0468, (&v70 - 4), v59);

      if ((v60 & 1) != 0 && (v73 & 1) == 0)
      {
        goto LABEL_31;
      }

      sub_22F15CAA0(v26, v74);
      v29 = v75;
      swift_beginAccess();
      a1 = *(v29 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 2) = a1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_42;
      }

LABEL_28:
      v63 = a1[2];
      v62 = a1[3];
      if (v63 >= v62 >> 1)
      {
        a1 = sub_22F13E558((v62 > 1), v63 + 1, 1, a1);
      }

      a1[2] = v63 + 1;
      sub_22F15CB04(v74, a1 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + v63 * v82);
      *(v75 + 2) = a1;
      swift_endAccess();
      if ((v73 & 1) == 0)
      {
        swift_beginAccess();
        v64 = *(a2 + 16);
        v65 = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 16) = v64;
        if ((v65 & 1) == 0)
        {
          v64 = sub_22F13E1A8(0, *(v64 + 2) + 1, 1, v64);
          *(a2 + 16) = v64;
        }

        v67 = *(v64 + 2);
        v66 = *(v64 + 3);
        if (v67 >= v66 >> 1)
        {
          v64 = sub_22F13E1A8((v66 > 1), v67 + 1, 1, v64);
        }

        *(v64 + 2) = v67 + 1;
        v68 = &v64[16 * v67];
        *(v68 + 4) = a5;
        *(v68 + 5) = v30;
        *(a2 + 16) = v64;
        swift_endAccess();
        goto LABEL_37;
      }

LABEL_31:

LABEL_37:
      sub_22F2B7200(v26);
      v30 = 1;
LABEL_38:
      sub_22F15CBD8(v26);
      return v30;
    }

    v40 = 0;
    v26 = ((v36 + 63) >> 6);
    while ((v26 - 1) != v40)
    {
      v29 = (v40 + 1);
      v41 = *(v34 + 72 + 8 * v40);
      v38 -= 64;
      ++v40;
      if (v41)
      {
        v73 = a2;
        v71 = a5;
        v72 = a1;
        a2 = (v41 - 1) & v41;
        v39 = __clz(__rbit64(v41)) - v38;
        goto LABEL_11;
      }
    }
  }

  return 0;
}

uint64_t sub_22F2B7160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = sub_22F122B68(a1);
  if (v6)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22F134CE8();
      v9 = v12;
    }

    v10 = *(v9 + 56) + 24 * v7;
    v11 = *(v10 + 16);
    *a2 = *v10;
    *(a2 + 16) = v11;
    result = sub_22F3B9C70(v7, v9);
    *v3 = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

unint64_t sub_22F2B7200(void *a1)
{
  v2 = v1;
  v3 = sub_22F122A14(a1);
  v5 = v4;
  if (v4)
  {
    v6 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v1;
    v13 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22F134678();
      v8 = v13;
    }

    v9 = *(v8 + 48);
    v10 = type metadata accessor for Song(0);
    sub_22F15CBD8(v9 + *(*(v10 - 8) + 72) * v6);
    v11 = *(*(v8 + 56) + 4 * v6);
    sub_22F3B9A20(v6, v8);
    *v2 = v8;
  }

  else
  {
    v11 = 0;
  }

  return v11 | (((v5 & 1) == 0) << 32);
}

uint64_t sub_22F2B72CC(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, float a6)
{
  v123 = a2;
  v124 = a5;
  v10 = sub_22F740B90();
  v11 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v122 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v121 = &v110 - v14;
  MEMORY[0x28223BE20](v15);
  v120 = &v110 - v16;
  MEMORY[0x28223BE20](v17);
  v119 = &v110 - v18;
  v19 = type metadata accessor for Song(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v118 = (&v110 - v24);
  MEMORY[0x28223BE20](v25);
  v125 = (&v110 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB14A8, &qword_22F771AC8);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v110 - v31;
  v33 = *a3;
  swift_beginAccess();
  v34 = *(*(a4 + 16) + 16);
  v35 = __OFSUB__(v33, v34);
  v36 = v33 - v34;
  if (v35)
  {
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    swift_once();
    v48 = v122;
    sub_22F1B3158(v122);
    v49 = a3;
    v50 = sub_22F740B70();
    v51 = sub_22F7415E0();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      v54 = a3;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 4) = v55;
      *v53 = v55;
      _os_log_impl(&dword_22F0FC000, v50, v51, "[suggestSongWithMatchingKeywords] Error matching keyword songs: %@", v52, 0xCu);
      sub_22F120ADC(v53, &qword_27DAB07D0, &qword_22F779400);
      MEMORY[0x2319033A0](v53, -1, -1);
      MEMORY[0x2319033A0](v52, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v48, v10);
    return 0;
  }

  if (v36 < 1)
  {
    return 0;
  }

  v37 = *a1;
  if (!*(*a1 + 16))
  {
    return 0;
  }

  v110 = v22;
  v113 = v20;
  v111 = a4;
  v112 = a1;
  v38 = 0;
  sub_22F2BB160(v37, a6);
  v40 = v39;
  v41 = *(v39 + 16);
  if (v41)
  {
    v114 = 0;
    v116 = v10;
    v117 = v11;
    v42 = sub_22F10B53C(v41, 0);
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540) - 8);
    sub_22F11BD84(v126, v42 + ((*(v43 + 80) + 32) & ~*(v43 + 80)), v41, v40);
    v115 = v44;
    v45 = v126[0];
    v10 = v126[1];
    v11 = v126[2];
    a3 = v126[4];

    sub_22F0FF590(v45);
    if (v115 == v41)
    {
      v10 = v116;
      v11 = v117;
      v38 = v114;
      goto LABEL_8;
    }

    goto LABEL_52;
  }

  v42 = MEMORY[0x277D84F90];
LABEL_8:
  v126[0] = v42;
  sub_22F2B5BC0(v126, sub_22F2B8C48, sub_22F2B861C);
  if (v38)
  {

    __break(1u);
    return result;
  }

  v46 = v125;
  v47 = v126[0];
  if (!*(v126[0] + 16))
  {

    if (qword_2810A9BD0 != -1)
    {
      swift_once();
    }

    v56 = v121;
    sub_22F1B3158(v121);
    v57 = v123;

    v58 = sub_22F740B70();
    v59 = sub_22F7415E0();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v126[0] = v61;
      *v60 = 134218242;
      *(v60 + 4) = a6;
      *(v60 + 12) = 2080;
      v62 = MEMORY[0x231900D40](v57, MEMORY[0x277D837D0]);
      v64 = sub_22F145F20(v62, v63, v126);

      *(v60 + 14) = v64;
      _os_log_impl(&dword_22F0FC000, v58, v59, "[suggestSongWithMatchingKeywords] No matching keyword songs available above the threshold of %f for keywordsToMatch: %s", v60, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x2319033A0](v61, -1, -1);
      MEMORY[0x2319033A0](v60, -1, -1);
    }

    (*(v11 + 8))(v56, v10);
    return 0;
  }

  v65 = MusicCuratorContext.extractSongIdKeywordMappings()();
  v116 = v10;
  v117 = v11;

  v124 = sub_22F1515F8(v66);

  v11 = 0;
  v67 = *(v47 + 16);
  a3 = &qword_27DAB10F0;
  v10 = &qword_22F771540;
  if (v67)
  {
    goto LABEL_26;
  }

LABEL_29:
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  (*(*(v76 - 8) + 56))(v29, 1, 1, v76);
  v11 = v67;
  while (1)
  {
    sub_22F1207AC(v29, v32, &qword_27DAB14A8, &qword_22F771AC8);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
    if ((*(*(v77 - 8) + 48))(v32, 1, v77) == 1)
    {

      if (qword_2810A9BD0 != -1)
      {
        swift_once();
      }

      v78 = v120;
      sub_22F1B3158(v120);
      v79 = sub_22F740B70();
      v80 = sub_22F7415C0();
      v81 = os_log_type_enabled(v79, v80);
      v83 = v116;
      v82 = v117;
      if (v81)
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_22F0FC000, v79, v80, "[suggestSongWithMatchingKeywords] WARNING: No additional matching songs found", v84, 2u);
        MEMORY[0x2319033A0](v84, -1, -1);
      }

      (*(v82 + 8))(v78, v83);
      return 0;
    }

    sub_22F15CB04(v32, v46);
    if (*(v65 + 16) && (v68 = sub_22F1229E8(*v46, v46[1]), (v69 & 1) != 0))
    {
      v70 = *(*(v65 + 56) + 8 * v68);
    }

    else
    {
      v70 = MEMORY[0x277D84F90];
    }

    v71 = sub_22F1515F8(v70);

    v72 = sub_22F1ABBB4(v124, v71)[2];

    if (v72)
    {
      break;
    }

    v46 = v125;
    sub_22F15CBD8(v125);
    if (v11 == v67)
    {
      goto LABEL_29;
    }

LABEL_26:
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_50;
    }

    if (v11 >= *(v47 + 16))
    {
      goto LABEL_51;
    }

    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
    v74 = *(v73 - 8);
    sub_22F13BA9C(v47 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v11++, v29, &qword_27DAB10F0, &qword_22F771540);
    v75 = v73;
    v46 = v125;
    (*(v74 + 56))(v29, 0, 1, v75);
  }

  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  v86 = v119;
  sub_22F1B3158(v119);
  v87 = v125;
  v88 = v118;
  sub_22F15CAA0(v125, v118);
  v89 = v123;

  v90 = sub_22F740B70();
  v91 = sub_22F7415C0();

  v92 = os_log_type_enabled(v90, v91);
  v94 = v116;
  v93 = v117;
  if (v92)
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v126[0] = v96;
    *v95 = 136315394;
    v97 = MEMORY[0x231900D40](v89, MEMORY[0x277D837D0]);
    v99 = sub_22F145F20(v97, v98, v126);

    *(v95 + 4) = v99;
    *(v95 + 12) = 2080;
    v100 = *v88;
    v101 = v88[1];

    sub_22F15CBD8(v88);
    v102 = sub_22F145F20(v100, v101, v126);

    *(v95 + 14) = v102;
    v87 = v125;
    _os_log_impl(&dword_22F0FC000, v90, v91, "[suggestSongWithMatchingKeywords] Found a matching song for keywords %s: %s", v95, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319033A0](v96, -1, -1);
    MEMORY[0x2319033A0](v95, -1, -1);
  }

  else
  {

    sub_22F15CBD8(v88);
  }

  (*(v93 + 8))(v86, v94);
  v103 = v111;
  v104 = v110;
  sub_22F15CAA0(v87, v110);
  swift_beginAccess();
  v105 = *(v103 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v103 + 16) = v105;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v105 = sub_22F13E558(0, v105[2] + 1, 1, v105);
    *(v103 + 16) = v105;
  }

  v108 = v105[2];
  v107 = v105[3];
  if (v108 >= v107 >> 1)
  {
    v105 = sub_22F13E558((v107 > 1), v108 + 1, 1, v105);
  }

  v105[2] = v108 + 1;
  sub_22F15CB04(v104, v105 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v108);
  *(v103 + 16) = v105;
  swift_endAccess();
  v109 = v125;
  sub_22F2B7200(v125);
  sub_22F15CBD8(v109);
  return 1;
}

uint64_t sub_22F2B7F74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v30 = v28 - v6;
  v7 = type metadata accessor for Song(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = sub_22F10B53C(*(a1 + 16), 0);
    sub_22F11BD84(v32, v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v11, a1);
    v14 = v32[0];
    v28[2] = v32[3];
    v29 = v15;
    v28[1] = v32[4];

    sub_22F0FF590(v14);
    if (v29 == v11)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v13 = v12;
LABEL_5:
  v32[0] = v13;
  sub_22F2B5BC0(v32, sub_22F2B959C, sub_22F2B8884);
  v16 = v32[0];
  v17 = *(v32[0] + 16);
  if (v17)
  {
    v32[0] = v12;
    sub_22F146514(0, v17, 0);
    v18 = v32[0];
    v19 = *(v3 + 80);
    v29 = v16;
    v20 = v16 + ((v19 + 32) & ~v19);
    v21 = *(v3 + 72);
    do
    {
      v22 = v30;
      sub_22F13BA9C(v20, v30, &qword_27DAB10F0, &qword_22F771540);
      v23 = v22;
      v24 = v31;
      sub_22F1207AC(v23, v31, &qword_27DAB10F0, &qword_22F771540);
      sub_22F15CB04(v24, v10);
      v32[0] = v18;
      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_22F146514((v25 > 1), v26 + 1, 1);
        v18 = v32[0];
      }

      *(v18 + 16) = v26 + 1;
      sub_22F15CB04(v10, v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v26);
      v20 += v21;
      --v17;
    }

    while (v17);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v18;
}

double sub_22F2B82BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v26 = a2;
  v27 = a3;
  v6 = type metadata accessor for Song(0) - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    v13 = MEMORY[0x277D84F90];
    do
    {
      sub_22F15CAA0(v11, v9);
      v15 = *(v9 + 4);
      v16 = *(v9 + 5);

      sub_22F15CBD8(v9);
      if (v16)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_22F13E1A8(0, *(v13 + 2) + 1, 1, v13);
        }

        v18 = *(v13 + 2);
        v17 = *(v13 + 3);
        if (v18 >= v17 >> 1)
        {
          v13 = sub_22F13E1A8((v17 > 1), v18 + 1, 1, v13);
        }

        *(v13 + 2) = v18 + 1;
        v14 = &v13[16 * v18];
        *(v14 + 4) = v15;
        *(v14 + 5) = v16;
      }

      v11 += v12;
      --v10;
    }

    while (v10);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v19 = sub_22F1515F8(v13);

  if (*(v19 + 16) != 1)
  {
    goto LABEL_14;
  }

  v20 = sub_22F10B348(1, 0);
  v21 = sub_22F11A438(&v28, v20 + 4, 1, v19);
  sub_22F0FF590(v28);
  if (v21 != 1)
  {
    __break(1u);
LABEL_14:

    v20 = MEMORY[0x277D84F90];
  }

  v23 = v26;
  v22 = v27;
  *a4 = v20;
  a4[1] = v23;
  a4[2] = v22;

  return result;
}

void sub_22F2B84C8(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), void (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  v7 = sub_22F742000();
  if (v7 < v6)
  {
    if (v6 >= -1)
    {
      v8 = v7;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
        v10 = sub_22F741200();
        *(v10 + 16) = v9;
      }

      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    a3(0, v6, 1, a1);
  }
}

void sub_22F2B861C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  MEMORY[0x28223BE20](v38);
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v30 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v35 = -v17;
    v36 = v16;
    v19 = a1 - a3;
    v29 = v17;
    v20 = v16 + v17 * a3;
LABEL_5:
    v33 = v18;
    v34 = a3;
    v31 = v20;
    v32 = v19;
    v21 = v19;
    v22 = v38;
    while (1)
    {
      sub_22F13BA9C(v20, v15, &qword_27DAB10F0, &qword_22F771540);
      sub_22F13BA9C(v18, v11, &qword_27DAB10F0, &qword_22F771540);
      v23 = *(v22 + 48);
      v24 = *&v15[v23];
      v25 = *&v11[v23];
      sub_22F120ADC(v11, &qword_27DAB10F0, &qword_22F771540);
      sub_22F120ADC(v15, &qword_27DAB10F0, &qword_22F771540);
      if (v24 >= v25)
      {
LABEL_4:
        a3 = v34 + 1;
        v18 = v33 + v29;
        v19 = v32 - 1;
        v20 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v26 = v37;
      sub_22F1207AC(v20, v37, &qword_27DAB10F0, &qword_22F771540);
      v22 = v38;
      swift_arrayInitWithTakeFrontToBack();
      sub_22F1207AC(v26, v18, &qword_27DAB10F0, &qword_22F771540);
      v18 += v35;
      v20 += v35;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22F2B8884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  MEMORY[0x28223BE20](v8);
  v53 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = (&v39 - v11);
  MEMORY[0x28223BE20](v12);
  v49 = (&v39 - v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - v19;
  v41 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v18 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v51 = -v22;
    v52 = v21;
    v24 = a1 - a3;
    v40 = v22;
    v25 = v21 + v22 * a3;
    v47 = v16;
    v48 = v8;
    v46 = &v39 - v19;
LABEL_7:
    v44 = v23;
    v45 = a3;
    v42 = v25;
    v43 = v24;
    v26 = v23;
    while (1)
    {
      sub_22F13BA9C(v25, v20, &qword_27DAB10F0, &qword_22F771540);
      sub_22F13BA9C(v26, v16, &qword_27DAB10F0, &qword_22F771540);
      v27 = *(v8 + 48);
      v28 = *&v20[v27];
      v29 = *&v16[v27];
      if (v29 >= v28)
      {
        if (v28 < v29)
        {
          goto LABEL_5;
        }

        v30 = v49;
        sub_22F13BA9C(v20, v49, &qword_27DAB10F0, &qword_22F771540);
        v32 = *v30;
        v31 = v30[1];

        sub_22F15CBD8(v30);
        v33 = v50;
        sub_22F13BA9C(v16, v50, &qword_27DAB10F0, &qword_22F771540);
        v35 = *v33;
        v34 = v33[1];

        sub_22F15CBD8(v33);
        if (v32 == v35 && v31 == v34)
        {

          v16 = v47;
          v8 = v48;
          v20 = v46;
LABEL_5:
          sub_22F120ADC(v16, &qword_27DAB10F0, &qword_22F771540);
          sub_22F120ADC(v20, &qword_27DAB10F0, &qword_22F771540);
LABEL_6:
          a3 = v45 + 1;
          v23 = v44 + v40;
          v24 = v43 - 1;
          v25 = v42 + v40;
          if (v45 + 1 == v41)
          {
            return;
          }

          goto LABEL_7;
        }

        v36 = sub_22F742040();

        v16 = v47;
        sub_22F120ADC(v47, &qword_27DAB10F0, &qword_22F771540);
        v20 = v46;
        sub_22F120ADC(v46, &qword_27DAB10F0, &qword_22F771540);
        v8 = v48;
        if ((v36 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_22F120ADC(v16, &qword_27DAB10F0, &qword_22F771540);
        sub_22F120ADC(v20, &qword_27DAB10F0, &qword_22F771540);
      }

      if (!v52)
      {
        break;
      }

      v37 = v53;
      sub_22F1207AC(v25, v53, &qword_27DAB10F0, &qword_22F771540);
      swift_arrayInitWithTakeFrontToBack();
      sub_22F1207AC(v37, v26, &qword_27DAB10F0, &qword_22F771540);
      v26 += v51;
      v25 += v51;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

void sub_22F2B8C48(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v111 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  v120 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v114 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v123 = &v108 - v11;
  MEMORY[0x28223BE20](v12);
  v125 = &v108 - v13;
  MEMORY[0x28223BE20](v14);
  v124 = &v108 - v15;
  v121 = a3;
  v16 = *(a3 + 8);
  if (v16 < 1)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_96:
    a3 = *v111;
    if (!*v111)
    {
      goto LABEL_135;
    }

    a4 = v18;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v103 = a4;
    }

    else
    {
LABEL_129:
      v103 = sub_22F3F5F98(a4);
    }

    v127 = v103;
    a4 = *(v103 + 2);
    if (a4 >= 2)
    {
      while (*v121)
      {
        v104 = *&v103[16 * a4];
        v105 = v103;
        v106 = *&v103[16 * a4 + 24];
        sub_22F2BA454(*v121 + *(v120 + 72) * v104, *v121 + *(v120 + 72) * *&v103[16 * a4 + 16], *v121 + *(v120 + 72) * v106, a3);
        if (v5)
        {
          goto LABEL_107;
        }

        if (v106 < v104)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_22F3F5F98(v105);
        }

        if (a4 - 2 >= *(v105 + 2))
        {
          goto LABEL_123;
        }

        v107 = &v105[16 * a4];
        *v107 = v104;
        *(v107 + 1) = v106;
        v127 = v105;
        sub_22F3F5F0C(a4 - 1);
        v103 = v127;
        a4 = *(v127 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v108 = a4;
  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v19 = &qword_27DAB10F0;
  v126 = v8;
  while (1)
  {
    v20 = v17;
    v115 = v18;
    if (v17 + 1 >= v16)
    {
      v16 = v17 + 1;
    }

    else
    {
      v110 = v5;
      v21 = *v121;
      v119 = v21;
      v22 = *(v120 + 72);
      a3 = v21 + v22 * (v17 + 1);
      v23 = v124;
      sub_22F13BA9C(a3, v124, v19, &qword_22F771540);
      v24 = v21 + v22 * v17;
      v25 = v125;
      sub_22F13BA9C(v24, v125, v19, &qword_22F771540);
      v26 = *(v8 + 48);
      v27 = *(v23 + v26);
      v28 = *(v25 + v26);
      sub_22F120ADC(v25, v19, &qword_22F771540);
      sub_22F120ADC(v23, v19, &qword_22F771540);
      v109 = v17;
      a4 = v17 + 2;
      v122 = v22;
      v29 = v119 + v22 * (v17 + 2);
      while (v16 != a4)
      {
        v30 = v16;
        v31 = v124;
        sub_22F13BA9C(v29, v124, v19, &qword_22F771540);
        v32 = v125;
        sub_22F13BA9C(a3, v125, v19, &qword_22F771540);
        v33 = *(v126 + 48);
        v34 = *(v31 + v33);
        v35 = *(v32 + v33);
        sub_22F120ADC(v32, v19, &qword_22F771540);
        v36 = v31;
        v16 = v30;
        sub_22F120ADC(v36, v19, &qword_22F771540);
        ++a4;
        v29 += v122;
        a3 += v122;
        if (v27 < v28 == v34 >= v35)
        {
          v16 = a4 - 1;
          break;
        }
      }

      v5 = v110;
      v20 = v109;
      v8 = v126;
      if (v27 < v28)
      {
        if (v16 < v109)
        {
          goto LABEL_126;
        }

        if (v109 < v16)
        {
          a4 = v122 * (v16 - 1);
          v37 = v16 * v122;
          v38 = v16;
          v39 = v109;
          a3 = v109 * v122;
          do
          {
            if (v39 != --v38)
            {
              v40 = *v121;
              if (!*v121)
              {
                goto LABEL_132;
              }

              sub_22F1207AC(v40 + a3, v114, v19, &qword_22F771540);
              if (a3 < a4 || v40 + a3 >= (v40 + v37))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a3 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22F1207AC(v114, v40 + a4, v19, &qword_22F771540);
            }

            ++v39;
            a4 -= v122;
            v37 -= v122;
            a3 += v122;
          }

          while (v39 < v38);
          v5 = v110;
          v8 = v126;
          v20 = v109;
        }
      }
    }

    v41 = v121[1];
    if (v16 < v41)
    {
      if (__OFSUB__(v16, v20))
      {
        goto LABEL_125;
      }

      if (v16 - v20 < v108)
      {
        if (__OFADD__(v20, v108))
        {
          goto LABEL_127;
        }

        if (v20 + v108 >= v41)
        {
          v42 = v121[1];
        }

        else
        {
          v42 = v20 + v108;
        }

        if (v42 < v20)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v16 != v42)
        {
          break;
        }
      }
    }

    v17 = v16;
    if (v16 < v20)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v18 = v115;
    }

    else
    {
      v18 = sub_22F13D970(0, *(v115 + 2) + 1, 1, v115);
    }

    a4 = *(v18 + 2);
    v43 = *(v18 + 3);
    a3 = a4 + 1;
    if (a4 >= v43 >> 1)
    {
      v18 = sub_22F13D970((v43 > 1), a4 + 1, 1, v18);
    }

    *(v18 + 2) = a3;
    v44 = &v18[16 * a4];
    *(v44 + 4) = v20;
    *(v44 + 5) = v17;
    v45 = *v111;
    if (!*v111)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v46 = a3 - 1;
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v47 = *(v18 + 4);
          v48 = *(v18 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_52:
          if (v50)
          {
            goto LABEL_113;
          }

          v63 = &v18[16 * a3];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_116;
          }

          v69 = &v18[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_120;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = a3 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v73 = &v18[16 * a3];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_66:
        if (v68)
        {
          goto LABEL_115;
        }

        v76 = &v18[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_118;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v46 - 1;
        if (v46 - 1 >= a3)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v121)
        {
          goto LABEL_131;
        }

        v84 = v18;
        a3 = *&v18[16 * a4 + 32];
        v85 = *&v18[16 * v46 + 40];
        sub_22F2BA454(*v121 + *(v120 + 72) * a3, *v121 + *(v120 + 72) * *&v18[16 * v46 + 32], *v121 + *(v120 + 72) * v85, v45);
        if (v5)
        {
          goto LABEL_107;
        }

        if (v85 < a3)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v86 = v84;
        }

        else
        {
          v86 = sub_22F3F5F98(v84);
        }

        v8 = v126;
        if (a4 >= *(v86 + 2))
        {
          goto LABEL_110;
        }

        v87 = &v86[16 * a4];
        *(v87 + 4) = a3;
        *(v87 + 5) = v85;
        v127 = v86;
        a4 = &v127;
        sub_22F3F5F0C(v46);
        v18 = v127;
        a3 = *(v127 + 2);
        if (a3 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v18[16 * a3 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_111;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_112;
      }

      v58 = &v18[16 * a3];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_114;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_117;
      }

      if (v62 >= v54)
      {
        v80 = &v18[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_121;
        }

        if (v49 < v83)
        {
          v46 = a3 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v16 = v121[1];
    if (v17 >= v16)
    {
      goto LABEL_96;
    }
  }

  v110 = v5;
  v88 = *v121;
  v89 = *(v120 + 72);
  v90 = *v121 + v89 * (v16 - 1);
  v91 = -v89;
  v109 = v20;
  v92 = v20 - v16;
  v122 = v88;
  v112 = v89;
  v113 = v42;
  a3 = v88 + v16 * v89;
LABEL_86:
  v118 = v90;
  v119 = v16;
  v116 = a3;
  v117 = v92;
  v93 = v90;
  v94 = v126;
  while (1)
  {
    a4 = v124;
    sub_22F13BA9C(a3, v124, v19, &qword_22F771540);
    v95 = v125;
    sub_22F13BA9C(v93, v125, v19, &qword_22F771540);
    v96 = *(v94 + 48);
    v97 = *(a4 + v96);
    v98 = *(v95 + v96);
    sub_22F120ADC(v95, v19, &qword_22F771540);
    sub_22F120ADC(a4, v19, &qword_22F771540);
    if (v97 >= v98)
    {
LABEL_85:
      v16 = v119 + 1;
      v17 = v113;
      v90 = v118 + v112;
      v92 = v117 - 1;
      a3 = v116 + v112;
      if (v119 + 1 != v113)
      {
        goto LABEL_86;
      }

      v5 = v110;
      v8 = v126;
      v20 = v109;
      if (v113 < v109)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!v122)
    {
      break;
    }

    v99 = v19;
    v100 = v123;
    sub_22F1207AC(a3, v123, v99, &qword_22F771540);
    v94 = v126;
    swift_arrayInitWithTakeFrontToBack();
    v101 = v100;
    v19 = v99;
    sub_22F1207AC(v101, v93, v99, &qword_22F771540);
    v93 += v91;
    a3 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
}

void sub_22F2B959C(uint64_t **a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v161 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  v171 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v167 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v183 = &v154 - v11;
  MEMORY[0x28223BE20](v12);
  v177 = (&v154 - v13);
  MEMORY[0x28223BE20](v14);
  v176 = (&v154 - v15);
  MEMORY[0x28223BE20](v16);
  v178 = &v154 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v154 - v19;
  MEMORY[0x28223BE20](v21);
  v164 = (&v154 - v22);
  MEMORY[0x28223BE20](v23);
  v163 = (&v154 - v24);
  MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v26);
  v174 = &v154 - v27;
  MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v158 = &v154 - v31;
  MEMORY[0x28223BE20](v32);
  v173 = a3;
  v38 = *(a3 + 8);
  if (v38 < 1)
  {
    v40 = MEMORY[0x277D84F90];
LABEL_121:
    a3 = *v161;
    if (!*v161)
    {
      goto LABEL_160;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_123:
      v150 = v5;
      v185 = v40;
      v151 = *(v40 + 2);
      if (v151 >= 2)
      {
        while (*v173)
        {
          v5 = *&v40[16 * v151];
          v152 = *&v40[16 * v151 + 24];
          sub_22F2BA954(*v173 + *(v171 + 72) * v5, *v173 + *(v171 + 72) * *&v40[16 * v151 + 16], *v173 + *(v171 + 72) * v152, a3);
          if (v150)
          {
            goto LABEL_131;
          }

          if (v152 < v5)
          {
            goto LABEL_147;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_22F3F5F98(v40);
          }

          if (v151 - 2 >= *(v40 + 2))
          {
            goto LABEL_148;
          }

          v153 = &v40[16 * v151];
          *v153 = v5;
          *(v153 + 1) = v152;
          v185 = v40;
          sub_22F3F5F0C(v151 - 1);
          v40 = v185;
          v151 = *(v185 + 2);
          if (v151 <= 1)
          {
            goto LABEL_131;
          }
        }

        goto LABEL_158;
      }

LABEL_131:

      return;
    }

LABEL_154:
    v40 = sub_22F3F5F98(v40);
    goto LABEL_123;
  }

  v157 = &v154 - v34;
  v155 = v36;
  v156 = v35;
  v39 = 0;
  v40 = MEMORY[0x277D84F90];
  v160 = a4;
  v180 = v33;
  v184 = v20;
  v175 = v37;
LABEL_4:
  v41 = v39;
  v42 = v39 + 1;
  v179 = v40;
  if (v39 + 1 >= v38)
  {
    goto LABEL_43;
  }

  v170 = v38;
  a3 = *v173;
  v43 = *(v171 + 72);
  v44 = v39 + 1;
  v45 = v157;
  sub_22F13BA9C(*v173 + v43 * v42, v157, &qword_27DAB10F0, &qword_22F771540);
  v181 = v43;
  v46 = a3 + v43 * v41;
  v47 = v158;
  sub_22F13BA9C(v46, v158, &qword_27DAB10F0, &qword_22F771540);
  v48 = *(v180 + 48);
  v49 = *(v45 + v48);
  v50 = *(v47 + v48);
  v159 = v5;
  v162 = v41;
  if (v50 >= v49)
  {
    if (v49 >= v50)
    {
      v51 = v45;
      v52 = v155;
      sub_22F13BA9C(v51, v155, &qword_27DAB10F0, &qword_22F771540);
      v53 = *v52;
      v54 = v52[1];

      sub_22F15CBD8(v52);
      v55 = v156;
      sub_22F13BA9C(v47, v156, &qword_27DAB10F0, &qword_22F771540);
      v56 = *v55;
      v57 = v55[1];

      sub_22F15CBD8(v55);
      v5 = v44;
      if (v53 == v56 && v54 == v57)
      {
        LODWORD(v172) = 0;
      }

      else
      {
        LODWORD(v172) = sub_22F742040();
      }

      v45 = v157;
    }

    else
    {
      LODWORD(v172) = 0;
      v5 = v42;
    }
  }

  else
  {
    LODWORD(v172) = 1;
    v5 = v42;
  }

  sub_22F120ADC(v47, &qword_27DAB10F0, &qword_22F771540);
  sub_22F120ADC(v45, &qword_27DAB10F0, &qword_22F771540);
  v58 = v162 + 2;
  v59 = v181 * (v162 + 2);
  v60 = a3 + v59;
  v61 = (v181 * v5);
  v62 = a3 + v181 * v5;
  do
  {
    v42 = v58;
    v64 = v5;
    v40 = v61;
    v65 = v59;
    if (v58 >= v170)
    {
      break;
    }

    v182 = v5;
    v66 = v174;
    sub_22F13BA9C(v60, v174, &qword_27DAB10F0, &qword_22F771540);
    v67 = v175;
    sub_22F13BA9C(v62, v175, &qword_27DAB10F0, &qword_22F771540);
    v68 = v67;
    v69 = *(v180 + 48);
    v70 = *(v66 + v69);
    v71 = *(v67 + v69);
    if (v71 < v70)
    {
      v63 = 1;
    }

    else
    {
      if (v70 >= v71)
      {
        v72 = v163;
        sub_22F13BA9C(v174, v163, &qword_27DAB10F0, &qword_22F771540);
        v73 = v72[1];
        v169 = *v72;

        sub_22F15CBD8(v72);
        v74 = v164;
        sub_22F13BA9C(v67, v164, &qword_27DAB10F0, &qword_22F771540);
        v75 = *v74;
        v76 = v74[1];

        sub_22F15CBD8(v74);
        if (v169 == v75 && v73 == v76)
        {
          v63 = 0;
        }

        else
        {
          v63 = sub_22F742040();
        }

        v64 = v182;

        v68 = v175;
        goto LABEL_17;
      }

      v63 = 0;
    }

    v64 = v182;
LABEL_17:
    a3 = &qword_27DAB10F0;
    sub_22F120ADC(v68, &qword_27DAB10F0, &qword_22F771540);
    sub_22F120ADC(v174, &qword_27DAB10F0, &qword_22F771540);
    v58 = v42 + 1;
    v60 += v181;
    v62 += v181;
    v5 = v64 + 1;
    v61 = &v40[v181];
    v59 = v65 + v181;
  }

  while (((v172 ^ v63) & 1) == 0);
  if (v172)
  {
    a4 = v160;
    if (v42 < v162)
    {
      goto LABEL_151;
    }

    v37 = v175;
    if (v162 >= v42)
    {
      v40 = v179;
      v20 = v184;
      v5 = v159;
      v41 = v162;
    }

    else
    {
      v77 = v42;
      a3 = v162 * v181;
      v78 = v162;
      do
      {
        if (v78 != v64)
        {
          v80 = *v173;
          if (!*v173)
          {
            goto LABEL_157;
          }

          sub_22F1207AC(v80 + a3, v167, &qword_27DAB10F0, &qword_22F771540);
          if (a3 < v40 || v80 + a3 >= v80 + v65)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a3 != v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_22F1207AC(v167, &v40[v80], &qword_27DAB10F0, &qword_22F771540);
        }

        ++v78;
        v40 -= v181;
        v65 -= v181;
        a3 += v181;
      }

      while (v78 < v64--);
      v42 = v77;
      v40 = v179;
      v20 = v184;
      v37 = v175;
      v5 = v159;
      v41 = v162;
    }
  }

  else
  {
    a4 = v160;
    v40 = v179;
    v20 = v184;
    v5 = v159;
    v41 = v162;
    v37 = v175;
  }

LABEL_43:
  v81 = v173[1];
  v172 = v42;
  if (v42 >= v81)
  {
    goto LABEL_69;
  }

  if (__OFSUB__(v42, v41))
  {
    goto LABEL_150;
  }

  if (v42 - v41 >= a4)
  {
    goto LABEL_69;
  }

  if (__OFADD__(v41, a4))
  {
    goto LABEL_152;
  }

  if (v41 + a4 >= v81)
  {
    v82 = v81;
  }

  else
  {
    v82 = v41 + a4;
  }

  if (v82 < v41)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v172 == v82)
  {
    goto LABEL_69;
  }

  v159 = v5;
  v83 = *v173;
  v84 = *(v171 + 72);
  v85 = *v173 + v84 * (v172 - 1);
  v181 = -v84;
  v162 = v41;
  a3 = v41 - v172;
  v182 = v83;
  v165 = v84;
  v166 = v82;
  v86 = v83 + v172 * v84;
  v87 = v178;
  v88 = v180;
  while (2)
  {
    v168 = v86;
    v169 = a3;
    v170 = v85;
LABEL_57:
    sub_22F13BA9C(v86, v20, &qword_27DAB10F0, &qword_22F771540);
    sub_22F13BA9C(v85, v87, &qword_27DAB10F0, &qword_22F771540);
    v89 = *(v88 + 48);
    v90 = *&v20[v89];
    v91 = *(v87 + v89);
    if (v91 < v90)
    {
      sub_22F120ADC(v87, &qword_27DAB10F0, &qword_22F771540);
      sub_22F120ADC(v20, &qword_27DAB10F0, &qword_22F771540);
      goto LABEL_63;
    }

    if (v90 < v91)
    {
      goto LABEL_54;
    }

    v92 = v176;
    sub_22F13BA9C(v20, v176, &qword_27DAB10F0, &qword_22F771540);
    v94 = *v92;
    v93 = v92[1];

    sub_22F15CBD8(v92);
    v95 = v87;
    v96 = v177;
    sub_22F13BA9C(v95, v177, &qword_27DAB10F0, &qword_22F771540);
    v98 = *v96;
    v97 = v96[1];

    sub_22F15CBD8(v96);
    if (v94 == v98 && v93 == v97)
    {

      v40 = v179;
      v88 = v180;
      v87 = v178;
      v20 = v184;
LABEL_54:
      sub_22F120ADC(v87, &qword_27DAB10F0, &qword_22F771540);
      sub_22F120ADC(v20, &qword_27DAB10F0, &qword_22F771540);
LABEL_55:
      v85 = v170 + v165;
      a3 = v169 - 1;
      v86 = v168 + v165;
      if (++v172 != v166)
      {
        continue;
      }

      v172 = v166;
      v5 = v159;
      v37 = v175;
      v41 = v162;
LABEL_69:
      if (v172 < v41)
      {
        goto LABEL_149;
      }

      v102 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_22F13D970(0, *(v40 + 2) + 1, 1, v40);
      }

      a3 = *(v40 + 2);
      v103 = *(v40 + 3);
      v104 = a3 + 1;
      if (a3 >= v103 >> 1)
      {
        v149 = sub_22F13D970((v103 > 1), a3 + 1, 1, v40);
        v37 = v102;
        v40 = v149;
      }

      else
      {
        v37 = v102;
      }

      *(v40 + 2) = v104;
      v105 = &v40[16 * a3];
      v106 = v172;
      *(v105 + 4) = v41;
      *(v105 + 5) = v106;
      v107 = *v161;
      if (!*v161)
      {
        goto LABEL_159;
      }

      if (!a3)
      {
LABEL_3:
        v39 = v172;
        v38 = v173[1];
        a4 = v160;
        if (v172 >= v38)
        {
          goto LABEL_121;
        }

        goto LABEL_4;
      }

      while (1)
      {
        v108 = v104 - 1;
        if (v104 >= 4)
        {
          break;
        }

        if (v104 == 3)
        {
          v109 = *(v40 + 4);
          v110 = *(v40 + 5);
          v119 = __OFSUB__(v110, v109);
          v111 = v110 - v109;
          v112 = v119;
LABEL_89:
          if (v112)
          {
            goto LABEL_138;
          }

          v125 = &v40[16 * v104];
          v127 = *v125;
          v126 = *(v125 + 1);
          v128 = __OFSUB__(v126, v127);
          v129 = v126 - v127;
          v130 = v128;
          if (v128)
          {
            goto LABEL_141;
          }

          v131 = &v40[16 * v108 + 32];
          v133 = *v131;
          v132 = *(v131 + 1);
          v119 = __OFSUB__(v132, v133);
          v134 = v132 - v133;
          if (v119)
          {
            goto LABEL_144;
          }

          if (__OFADD__(v129, v134))
          {
            goto LABEL_145;
          }

          if (v129 + v134 >= v111)
          {
            if (v111 < v134)
            {
              v108 = v104 - 2;
            }

            goto LABEL_110;
          }

          goto LABEL_103;
        }

        v135 = &v40[16 * v104];
        v137 = *v135;
        v136 = *(v135 + 1);
        v119 = __OFSUB__(v136, v137);
        v129 = v136 - v137;
        v130 = v119;
LABEL_103:
        if (v130)
        {
          goto LABEL_140;
        }

        v138 = &v40[16 * v108];
        v140 = *(v138 + 4);
        v139 = *(v138 + 5);
        v119 = __OFSUB__(v139, v140);
        v141 = v139 - v140;
        if (v119)
        {
          goto LABEL_143;
        }

        if (v141 < v129)
        {
          goto LABEL_3;
        }

LABEL_110:
        a3 = v108 - 1;
        if (v108 - 1 >= v104)
        {
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        if (!*v173)
        {
          goto LABEL_156;
        }

        v146 = *&v40[16 * a3 + 32];
        v147 = *&v40[16 * v108 + 40];
        sub_22F2BA954(*v173 + *(v171 + 72) * v146, *v173 + *(v171 + 72) * *&v40[16 * v108 + 32], *v173 + *(v171 + 72) * v147, v107);
        if (v5)
        {
          goto LABEL_131;
        }

        if (v147 < v146)
        {
          goto LABEL_134;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_22F3F5F98(v40);
        }

        if (a3 >= *(v40 + 2))
        {
          goto LABEL_135;
        }

        v148 = &v40[16 * a3];
        *(v148 + 4) = v146;
        *(v148 + 5) = v147;
        v185 = v40;
        sub_22F3F5F0C(v108);
        v40 = v185;
        v104 = *(v185 + 2);
        v37 = v175;
        if (v104 <= 1)
        {
          goto LABEL_3;
        }
      }

      v113 = &v40[16 * v104 + 32];
      v114 = *(v113 - 64);
      v115 = *(v113 - 56);
      v119 = __OFSUB__(v115, v114);
      v116 = v115 - v114;
      if (v119)
      {
        goto LABEL_136;
      }

      v118 = *(v113 - 48);
      v117 = *(v113 - 40);
      v119 = __OFSUB__(v117, v118);
      v111 = v117 - v118;
      v112 = v119;
      if (v119)
      {
        goto LABEL_137;
      }

      v120 = &v40[16 * v104];
      v122 = *v120;
      v121 = *(v120 + 1);
      v119 = __OFSUB__(v121, v122);
      v123 = v121 - v122;
      if (v119)
      {
        goto LABEL_139;
      }

      v119 = __OFADD__(v111, v123);
      v124 = v111 + v123;
      if (v119)
      {
        goto LABEL_142;
      }

      if (v124 >= v116)
      {
        v142 = &v40[16 * v108 + 32];
        v144 = *v142;
        v143 = *(v142 + 1);
        v119 = __OFSUB__(v143, v144);
        v145 = v143 - v144;
        if (v119)
        {
          goto LABEL_146;
        }

        if (v111 < v145)
        {
          v108 = v104 - 2;
        }

        goto LABEL_110;
      }

      goto LABEL_89;
    }

    break;
  }

  v99 = sub_22F742040();

  v87 = v178;
  sub_22F120ADC(v178, &qword_27DAB10F0, &qword_22F771540);
  sub_22F120ADC(v184, &qword_27DAB10F0, &qword_22F771540);
  v40 = v179;
  v88 = v180;
  if ((v99 & 1) == 0)
  {
    v20 = v184;
    goto LABEL_55;
  }

LABEL_63:
  if (v182)
  {
    v100 = v183;
    sub_22F1207AC(v86, v183, &qword_27DAB10F0, &qword_22F771540);
    swift_arrayInitWithTakeFrontToBack();
    sub_22F1207AC(v100, v85, &qword_27DAB10F0, &qword_22F771540);
    v85 += v181;
    v86 += v181;
    v101 = __CFADD__(a3++, 1);
    v20 = v184;
    if (v101)
    {
      goto LABEL_55;
    }

    goto LABEL_57;
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
}