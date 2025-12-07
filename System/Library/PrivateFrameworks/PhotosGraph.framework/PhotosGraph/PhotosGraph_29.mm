unint64_t sub_22F32C240()
{
  result = qword_27DAB3768;
  if (!qword_27DAB3768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3768);
  }

  return result;
}

unint64_t sub_22F32C588()
{
  result = qword_27DAB37D8;
  if (!qword_27DAB37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB37D8);
  }

  return result;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22F32C610(unint64_t a1, void *a2, void *a3)
{
  v55 = a3;
  v56 = a2;
  v59[2] = *MEMORY[0x277D85DE8];
  v4 = sub_22F740B90();
  v52 = *(v4 - 8);
  v53 = v4;
  v6 = MEMORY[0x28223BE20](v4);
  v7 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v51 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_22:
    v10 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v8 = sub_22F741A00();
  v51 = v7;
  if (!v8)
  {
    goto LABEL_22;
  }

LABEL_3:
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  do
  {
    v11 = v9;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x2319016F0](v11, a1, v6);
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      v9 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v14 = [v12 uuid];
      if (v14)
      {
        break;
      }

      ++v11;
      if (v9 == v8)
      {
        goto LABEL_23;
      }
    }

    v15 = v14;
    v16 = sub_22F740E20();
    v54 = v17;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_22F13E1A8(0, *(v10 + 2) + 1, 1, v10);
    }

    v7 = *(v10 + 2);
    v18 = *(v10 + 3);
    if (v7 >= v18 >> 1)
    {
      v10 = sub_22F13E1A8((v18 > 1), v7 + 1, 1, v10);
    }

    *(v10 + 2) = v7 + 1;
    v19 = &v10[16 * v7];
    v20 = v54;
    *(v19 + 4) = v16;
    *(v19 + 5) = v20;
  }

  while (v9 != v8);
LABEL_23:
  v21 = sub_22F1515F8(v10);

  v58 = v21;
  v22 = [v56 meNodeWithFallbackInferredMeNode];
  if (v22)
  {
    v23 = v22;
    sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v24);
    v26 = [v23 localIdentifier];
    v27 = [ObjCClassFromMetadata uuidFromLocalIdentifier_];

    if (!v27)
    {
      __break(1u);
      return;
    }

    v28 = sub_22F740E20();
    v30 = v29;

    sub_22F10BBDC(v59, v28, v30);

    v21 = v58;
  }

  if (*(v21 + 16) >= 2uLL)
  {
    v31 = [v55 librarySpecificFetchOptions];
    v32 = [objc_allocWithZone(MEMORY[0x277CD9888]) init];
    v33 = objc_opt_self();
    v34 = sub_22F741410();
    v59[0] = 0;
    v35 = [v33 fetchExclusiveSocialGroupAssetsForPersons:v34 options:v31 error:v59];

    if (v35)
    {
      v36 = v59[0];

      v32 = v35;
    }

    else
    {
      v37 = v59[0];
      v38 = sub_22F73F370();

      swift_willThrow();
      if (qword_2810A9BB0 != -1)
      {
        swift_once();
      }

      v39 = v51;
      sub_22F1B3158(v51);
      v40 = v38;
      v41 = sub_22F740B70();
      v42 = sub_22F7415E0();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = v38;
        v59[0] = v56;
        *v43 = 136315138;
        v44 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
        v45 = sub_22F740E90();
        v47 = sub_22F145F20(v45, v46, v59);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_22F0FC000, v41, v42, "SocialGroupPromoter: error fetching exclusive assets for social group %s", v43, 0xCu);
        v48 = v56;
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x2319033A0](v48, -1, -1);
        MEMORY[0x2319033A0](v43, -1, -1);
      }

      else
      {
      }

      (*(v52 + 8))(v39, v53);
    }

    v49 = [v32 fetchedObjects];
    if (v49)
    {
      v50 = v49;
      sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
      sub_22F741180();

      v31 = v32;
      v32 = v50;
    }
  }

  else
  {
  }
}

uint64_t FlexMusicSongKeywordProvider.init(flexMusicSongs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = -1;
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

id FlexMusicSongKeywordProvider.keywordsDataFrame.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v2 == 255)
  {
    v3 = sub_22F340010(*v0);
    *(v0 + 8) = v3;
    *(v0 + 16) = 0;
    v4 = v3;
  }

  else
  {
    v3 = *(v0 + 8);
  }

  sub_22F256018(v1, v2);
  return v3;
}

void FlexMusicSongKeywordProvider.keywordsDataFrame.setter(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  sub_22F255F20(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = v4;
}

void (*FlexMusicSongKeywordProvider.keywordsDataFrame.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *a1 = FlexMusicSongKeywordProvider.keywordsDataFrame.getter();
  *(a1 + 8) = v3 & 1;
  return sub_22F32CD88;
}

void sub_22F32CD88(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  if (a2)
  {
    sub_22F256030(*a1);
    sub_22F255F20(v5, v6);
    *(v2 + 8) = v3;
    *(v2 + 16) = v4;

    sub_22F21173C(v3);
  }

  else
  {
    sub_22F255F20(*(v2 + 8), *(v2 + 16));
    *(v2 + 8) = v3;
    *(v2 + 16) = v4;
  }
}

uint64_t sub_22F32CE48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_22F32CE90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22F32CFEC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  sub_22F1B560C("MusicCurator - extractMusicCurationFeaturesForEnrichedMemory", 60, 2u, 0, 1, qword_2810B4E90, v47);
  v8 = [a1 memoryMomentNodes];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  v10 = *(a3 + OBJC_IVAR___PGMusicFeatureExtractionContext_photoLibrary);
  v48 = [v10 librarySpecificFetchOptions];
  [v48 setWantsIncrementalChangeDetails_];
  v11 = [v9 localIdentifiers];
  v12 = sub_22F741420();

  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = sub_22F10B348(*(v12 + 16), 0);
    v15 = sub_22F11A438(&v46, v14 + 4, v13, v12);
    sub_22F1534EC(v46);
    if (v15 != v13)
    {
      __break(1u);
LABEL_7:
      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      v16 = sub_22F740B90();
      __swift_project_value_buffer(v16, qword_2810B4D90);
      v17 = sub_22F740B70();
      v18 = sub_22F7415E0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_22F0FC000, v17, v18, "[MemoriesMusic] [FeatureExtraction] Extracted moments backing enriched memory: NO", v19, 2u);
        MEMORY[0x2319033A0](v19, -1, -1);
      }

      sub_22F32D788();
      swift_allocError();
      *v20 = a1;
      *(v20 + 8) = 0;
      swift_willThrow();
      swift_unknownObjectRetain();
      goto LABEL_30;
    }
  }

  else
  {
  }

  v21 = objc_opt_self();
  v22 = sub_22F741160();

  v23 = [v21 fetchAssetCollectionsWithType:3 localIdentifiers:v22 options:v48];

  v24 = [v23 fetchedObjects];
  if (!v24)
  {
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v35 = sub_22F740B90();
    __swift_project_value_buffer(v35, qword_2810B4D90);
    v36 = sub_22F740B70();
    v37 = sub_22F7415E0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22F0FC000, v36, v37, "[MemoriesMusic] [FeatureExtraction] Extracted moments backing enriched memory: NO", v38, 2u);
      MEMORY[0x2319033A0](v38, -1, -1);
    }

    sub_22F32D788();
    swift_allocError();
    *v39 = a1;
    *(v39 + 8) = 2;
    swift_willThrow();
    swift_unknownObjectRetain();

    goto LABEL_30;
  }

  sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
  v45 = sub_22F741180();

  v25 = [v10 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_22F771340;
  *(v26 + 32) = sub_22F740E20();
  *(v26 + 40) = v27;
  v28 = sub_22F741160();

  [v25 setFetchPropertySets_];

  [v25 setWantsIncrementalChangeDetails_];
  v29 = [a1 extendedCuratedAssetUUIDs];
  if (!v29)
  {
    sub_22F741180();
    v29 = sub_22F741160();
  }

  v30 = [objc_opt_self() fetchAssetsWithUUIDs:v29 options:v25];

  if (v30)
  {
    v31 = [v30 fetchedObjects];

    if (!v31)
    {

      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      v40 = sub_22F740B90();
      __swift_project_value_buffer(v40, qword_2810B4D90);
      v41 = sub_22F740B70();
      v42 = sub_22F7415E0();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_22F0FC000, v41, v42, "[MemoriesMusic] [FeatureExtraction] Extracted assets backing enriched memory: NO", v43, 2u);
        MEMORY[0x2319033A0](v43, -1, -1);
      }

      sub_22F32D788();
      swift_allocError();
      *v44 = a1;
      *(v44 + 8) = 1;
      swift_willThrow();
      swift_unknownObjectRetain();

      goto LABEL_30;
    }

    sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
    v32 = sub_22F741180();

    v33 = [a1 memoryCategory];
    v34 = v9;
    sub_22F3EC34C(v33, 0, a1, v9, a2, v45, v32, a3);
    if (v4)
    {

LABEL_30:

      return;
    }

    sub_22F1B2BBC(0);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_22F32D788()
{
  result = qword_27DAB3800;
  if (!qword_27DAB3800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3800);
  }

  return result;
}

uint64_t sub_22F32D7E8(uint64_t a1, unsigned int a2)
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

uint64_t sub_22F32D830(uint64_t result, unsigned int a2, unsigned int a3)
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

id MomentHasBirthdayFeatureExtractor.__allocating_init(prefetchFor:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 personInMoment];
  v7 = [objc_msgSend(v5 graph)];
  swift_unknownObjectRelease();
  v8 = [v7 concreteGraph];

  if (v8)
  {
    v9 = [v5 elementIdentifiers];
    v10 = [v8 adjacencyWithSources:v9 relation:v6];

    v11 = &v3[OBJC_IVAR___PGMomentHasBirthdayFeatureExtractor_personNodesByMomentNode];
    *v11 = v10;
    *(v11 + 1) = v8;
    v14.receiver = v3;
    v14.super_class = v1;
    v12 = objc_msgSendSuper2(&v14, sel_init);

    return v12;
  }

  else
  {
    result = sub_22F741D40();
    __break(1u);
  }

  return result;
}

id MomentHasBirthdayFeatureExtractor.__allocating_init(prefetchIn:)(void *a1)
{
  sub_22F120634(0, &qword_2810A8FC8, off_27887B108);
  v4 = [swift_getObjCClassFromMetadata(v3) nodesInGraph_];
  v5 = objc_allocWithZone(v1);
  v6 = objc_opt_self();
  v7 = v4;
  v8 = [v6 personInMoment];
  v9 = [objc_msgSend(v7 graph)];
  swift_unknownObjectRelease();
  v10 = [v9 concreteGraph];

  if (v10)
  {
    v11 = [v7 elementIdentifiers];
    v12 = [v10 adjacencyWithSources:v11 relation:v8];

    v13 = &v5[OBJC_IVAR___PGMomentHasBirthdayFeatureExtractor_personNodesByMomentNode];
    *v13 = v12;
    *(v13 + 1) = v10;
    v16.receiver = v5;
    v16.super_class = v1;
    v14 = objc_msgSendSuper2(&v16, sel_init);

    return v14;
  }

  else
  {
    result = sub_22F741D40();
    __break(1u);
  }

  return result;
}

id MomentHasBirthdayFeatureExtractor.init(prefetchFor:)(void *a1)
{
  v2 = sub_22F32F66C(a1);

  return v2;
}

void MomentHasBirthdayFeatureExtractor.floatVector(withEntity:)(void *a1)
{
  v194 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v3 - 8);
  v171 = &v163 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v188 = &v163 - v6;
  v221 = sub_22F73F690();
  *&v199 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v169 = &v163 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v170 = &v163 - v9;
  MEMORY[0x28223BE20](v10);
  v214 = &v163 - v11;
  v12 = sub_22F73F270();
  v13 = *(v12 - 8);
  v212 = v12;
  v213 = v13;
  MEMORY[0x28223BE20](v12);
  v195 = &v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v190 = &v163 - v16;
  MEMORY[0x28223BE20](v17);
  v193 = &v163 - v18;
  v19 = sub_22F73F7D0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v163 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_22F73F9B0();
  v204 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v181 = &v163 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v25 = MEMORY[0x28223BE20](v24).n128_u64[0];
  v27 = &v163 - v26;
  v28 = [a1 identifier];
  v30 = *(v1 + OBJC_IVAR___PGMomentHasBirthdayFeatureExtractor_personNodesByMomentNode);
  v29 = *(v1 + OBJC_IVAR___PGMomentHasBirthdayFeatureExtractor_personNodesByMomentNode + 8);
  v31 = objc_allocWithZone(PGGraphMomentNodeCollection);
  v32 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
  v33 = [v31 initWithGraph:v29 elementIdentifiers:v32];

  v34 = [v33 elementIdentifiers];
  v35 = [v30 targetsForSources_];

  v36 = [objc_allocWithZone(PGGraphPersonNodeCollection) initWithGraph:v29 elementIdentifiers:v35];
  v37 = v213;

  v38 = *(v20 + 104);
  v180 = *MEMORY[0x277CC9830];
  v179 = v20 + 104;
  v178 = v38;
  v38(v22);
  sub_22F73F7E0();
  v39 = *(v20 + 8);
  v182 = v22;
  v184 = v19;
  v183 = v20 + 8;
  v177 = v39;
  v39(v22, v19);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
  v41 = sub_22F73F990();
  v42 = *(v41 - 8);
  v43 = *(v42 + 80);
  v44 = (v43 + 32) & ~v43;
  v210 = *(v42 + 72);
  v211 = v43;
  v219 = v40;
  v175 = v44 + v210;
  v45 = swift_allocObject();
  v174 = xmmword_22F771340;
  *(v45 + 16) = xmmword_22F771340;
  v46 = *(v42 + 104);
  v207 = *MEMORY[0x277CC9988];
  v196 = v42 + 104;
  v220 = v46;
  v46(v45 + v44);
  sub_22F3D97CC(v45);
  swift_setDeallocating();
  v47 = *(v42 + 8);
  v218 = v44;
  v48 = v214;
  v208 = v41;
  v176 = v42 + 8;
  v173 = v47;
  v47(v45 + v44, v41);
  v49 = v199;
  swift_deallocClassInstance();
  v50 = [v194 localStartDate];
  sub_22F73F640();

  v51 = v193;
  v209 = v27;
  sub_22F73F860();

  v216 = *(v49 + 8);
  v217 = v49 + 8;
  v216(v48, v221);
  v52 = v51;
  v206 = sub_22F73F1F0();
  v205 = v53;
  v54 = *(v37 + 8);
  v213 = v37 + 8;
  v54(v52, v212);
  v168 = v36;
  v55 = [v36 birthdays];
  v56 = sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v57 = sub_22F16C010();
  v58 = sub_22F741420();

  v189 = v56;
  v166 = v57;
  if ((v58 & 0xC000000000000001) != 0)
  {
    sub_22F7419C0();
    sub_22F741470();
    v58 = v223;
    v59 = v224;
    v60 = v225;
    v61 = v226;
    v62 = v227;
  }

  else
  {
    v61 = 0;
    v63 = -1 << *(v58 + 32);
    v59 = v58 + 56;
    v60 = ~v63;
    v64 = -v63;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    else
    {
      v65 = -1;
    }

    v62 = v65 & *(v58 + 56);
  }

  v165 = v60;
  v66 = (v60 + 64) >> 6;
  v203 = 2 * v210;
  v202 = 3 * v210;
  v201 = *MEMORY[0x277CC9998];
  v215 = *MEMORY[0x277CC9968];
  v200 = (v49 + 48);
  v172 = (v49 + 32);
  v167 = MEMORY[0x277D84F90];
  v191 = (v204 + 8);
  v199 = xmmword_22F7707D0;
  v67 = v208;
  v68 = v220;
  v204 = v54;
  v69 = v190;
  v187 = v58;
  v186 = v59;
  v185 = v66;
LABEL_8:
  v70 = v61;
  v71 = v62;
  if (v58 < 0)
  {
LABEL_17:
    v74 = v67;
    v76 = sub_22F741A40();
    if (v76)
    {
      v233 = v76;
      swift_dynamicCast();
      v75 = v228;
      v61 = v70;
      v198 = v71;
      v69 = v190;
      if (v228)
      {
        goto LABEL_19;
      }
    }

LABEL_28:
    sub_22F0FF590(v58);
    v106 = [v168 potentialBirthdays];
    v107 = sub_22F741420();

    if ((v107 & 0xC000000000000001) != 0)
    {
      sub_22F7419C0();
      sub_22F741470();
      v107 = v228;
      v108 = v229;
      v109 = v230;
      v110 = v231;
      v111 = v232;
    }

    else
    {
      v110 = 0;
      v112 = -1 << *(v107 + 32);
      v108 = (v107 + 56);
      v109 = ~v112;
      v113 = -v112;
      if (v113 < 64)
      {
        v114 = ~(-1 << v113);
      }

      else
      {
        v114 = -1;
      }

      v111 = v114 & *(v107 + 56);
    }

    v115 = v211;
    v116 = v218;
    v186 = v109;
    v117 = (v109 + 64) >> 6;
    v187 = v117;
    v190 = v107;
    v188 = v108;
    while (1)
    {
      v198 = v110;
      if (v107 < 0)
      {
        v122 = sub_22F741A40();
        if (!v122 || (v222 = v122, swift_dynamicCast(), v121 = v233, v120 = v111, !v233))
        {
LABEL_54:
          sub_22F0FF590(v107);
          v153 = *(v167 + 2);
          if (v153)
          {
            v154 = 32;
            v155 = &unk_2843DD548;
            v156 = v168;
            while (v153)
            {
              v157 = *&v167[v154];
              v154 += 8;
              --v153;
              if (v157 <= 7)
              {
                v155 = &unk_2843DD518;
                break;
              }
            }

            v158 = objc_allocWithZone(sub_22F73FBE0());
            v159 = MEMORY[0x2318FF780](v155);
            v160 = v156;
            v161 = v159;
          }

          else
          {

            v162 = objc_allocWithZone(sub_22F73FBE0());
            v159 = MEMORY[0x2318FF780](&unk_2843DD578);
            v160 = v159;
            v161 = v168;
          }

          [objc_allocWithZone(MEMORY[0x277D22C40]) initWithWrapper_];

          (*v191)(v209, v192);
          return;
        }
      }

      else
      {
        v118 = v110;
        for (i = v111; !i; ++v118)
        {
          v110 = v118 + 1;
          if (__OFADD__(v118, 1))
          {
            goto LABEL_63;
          }

          if (v110 >= v117)
          {
            goto LABEL_54;
          }

          i = *&v108[8 * v110];
        }

        v120 = (i - 1) & i;
        v121 = *(*(v107 + 48) + ((v110 << 9) | (8 * __clz(__rbit64(i)))));
        if (!v121)
        {
          goto LABEL_54;
        }
      }

      v198 = v120;
      v123 = v121;
      v124 = swift_allocObject();
      *(v124 + 16) = v199;
      v125 = v124 + v116;
      v126 = v124 + v116;
      v127 = v208;
      v128 = v220;
      v220(v126, v207, v208);
      v128(v125 + v210, v201, v127);
      v128(v125 + v203, v215, v127);
      sub_22F3D97CC(v124);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v197 = v123;
      [v123 doubleValue];
      v129 = v214;
      sub_22F73F610();
      v130 = v195;
      v131 = v115;
      v132 = v221;
      sub_22F73F860();

      v216(v129, v132);
      sub_22F73F200();
      v133 = v171;
      sub_22F73F920();
      if ((*v200)(v133, 1, v132) == 1)
      {
        break;
      }

      v134 = v169;
      (*v172)(v169, v133, v221);
      v135 = [v194 localStartDate];
      sub_22F73F640();

      v136 = v182;
      v137 = v184;
      v178(v182, v180, v184);
      v138 = v181;
      sub_22F73F7E0();
      v177(v136, v137);
      v139 = swift_allocObject();
      *(v139 + 16) = v174;
      v140 = v218;
      v141 = v208;
      v220(v139 + v218, v215, v208);
      sub_22F3D97CC(v139);
      swift_setDeallocating();
      v173(v139 + v140, v141);
      swift_deallocClassInstance();
      v142 = v193;
      sub_22F73F850();

      v143 = sub_22F73F1C0();
      v145 = v144;
      v146 = v212;
      v147 = v204;
      v204(v142, v212);
      (*v191)(v138, v192);
      v148 = v216;
      v216(v214, v221);
      if (v145)
      {

        v148(v134, v221);
        v147(v195, v146);
        v111 = v198;
        v116 = v218;
        v115 = v211;
LABEL_36:
        v107 = v190;
        v108 = v188;
        v117 = v187;
      }

      else
      {
        v149 = v167;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v149 = sub_22F13E69C(0, *(v149 + 2) + 1, 1, v149);
        }

        v115 = v211;
        v116 = v218;
        v167 = v149;
        v151 = *(v149 + 2);
        v150 = *(v149 + 3);
        if (v151 >= v150 >> 1)
        {
          v167 = sub_22F13E69C((v150 > 1), v151 + 1, 1, v167);
        }

        v108 = v188;

        v216(v169, v221);
        v147(v195, v212);
        v152 = v167;
        *(v167 + 2) = v151 + 1;
        *&v152[8 * v151 + 32] = v143;
        v107 = v190;
        v117 = v187;
        v111 = v198;
      }
    }

    v204(v130, v212);

    sub_22F15FCF0(v133);
    v111 = v198;
    v116 = v218;
    v115 = v131;
    goto LABEL_36;
  }

  while (1)
  {
    v72 = v70;
    v73 = v71;
    v61 = v70;
    if (!v71)
    {
      break;
    }

LABEL_15:
    v74 = v67;
    v198 = (v73 - 1) & v73;
    v75 = *(*(v58 + 48) + ((v61 << 9) | (8 * __clz(__rbit64(v73)))));
    if (!v75)
    {
      goto LABEL_28;
    }

LABEL_19:
    v77 = v218;
    v78 = v75;
    v79 = v69;
    v80 = swift_allocObject();
    *(v80 + 16) = v199;
    v81 = v80 + v77;
    v68(v81, v207, v74);
    v68(v81 + v210, v201, v74);
    v68(v81 + v203, v215, v74);
    sub_22F3D97CC(v80);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v197 = v78;
    [v78 doubleValue];
    v82 = v214;
    sub_22F73F610();
    sub_22F73F860();

    v83 = v221;
    v216(v82, v221);
    sub_22F73F200();
    v84 = v188;
    sub_22F73F920();
    if ((*v200)(v84, 1, v83) == 1)
    {
      v204(v79, v212);

      sub_22F15FCF0(v84);
      v70 = v61;
      v71 = v198;
      v68 = v220;
      v69 = v79;
      v58 = v187;
      v59 = v186;
      v66 = v185;
      v67 = v74;
      if (v187 < 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v85 = v170;
      (*v172)(v170, v84, v221);
      v86 = [v194 localStartDate];
      sub_22F73F640();

      v87 = v182;
      v88 = v184;
      v178(v182, v180, v184);
      v89 = v74;
      v90 = v82;
      v91 = v181;
      sub_22F73F7E0();
      v177(v87, v88);
      v92 = swift_allocObject();
      *(v92 + 16) = v174;
      v93 = v218;
      v220(v92 + v218, v215, v89);
      sub_22F3D97CC(v92);
      swift_setDeallocating();
      v173(v92 + v93, v89);
      swift_deallocClassInstance();
      v94 = v193;
      sub_22F73F850();

      v95 = sub_22F73F1C0();
      LOBYTE(v87) = v96;
      v97 = v94;
      v98 = v212;
      v99 = v204;
      v204(v97, v212);
      (*v191)(v91, v192);
      v100 = v216;
      v216(v90, v221);
      if ((v87 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v167 = sub_22F13E69C(0, *(v167 + 2) + 1, 1, v167);
        }

        v68 = v220;
        v59 = v186;
        v66 = v185;
        v102 = *(v167 + 2);
        v101 = *(v167 + 3);
        v103 = v170;
        v164 = v102 + 1;
        if (v102 >= v101 >> 1)
        {
          v167 = sub_22F13E69C((v101 > 1), v102 + 1, 1, v167);
        }

        v216(v103, v221);
        v104 = v190;
        v99(v190, v212);
        v105 = v167;
        *(v167 + 2) = v164;
        *&v105[8 * v102 + 32] = v95;
        v69 = v104;
        v58 = v187;
        v62 = v198;
        v67 = v208;
        goto LABEL_8;
      }

      v100(v85, v221);
      v69 = v190;
      v99(v190, v98);
      v70 = v61;
      v71 = v198;
      v67 = v208;
      v68 = v220;
      v58 = v187;
      v59 = v186;
      v66 = v185;
      if (v187 < 0)
      {
        goto LABEL_17;
      }
    }
  }

  while (1)
  {
    v61 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      break;
    }

    if (v61 >= v66)
    {
      goto LABEL_28;
    }

    v73 = *(v59 + 8 * v61);
    ++v72;
    if (v73)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
}

uint64_t MomentHasBirthdayFeatureExtractor.featureNames.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F7707D0;
  *(v0 + 32) = sub_22F740E20();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_22F740E20();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_22F740E20();
  *(v0 + 72) = v3;
  return v0;
}

id MomentHasBirthdayFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MomentHasBirthdayFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22F32F66C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 personInMoment];
  v7 = [objc_msgSend(v5 graph)];
  swift_unknownObjectRelease();
  v8 = [v7 concreteGraph];

  if (v8)
  {
    v9 = [v5 elementIdentifiers];
    v10 = [v8 adjacencyWithSources:v9 relation:v6];

    v11 = &v1[OBJC_IVAR___PGMomentHasBirthdayFeatureExtractor_personNodesByMomentNode];
    *v11 = v10;
    *(v11 + 1) = v8;
    v13.receiver = v1;
    v13.super_class = ObjectType;
    return objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {
    result = sub_22F741D40();
    __break(1u);
  }

  return result;
}

uint64_t sub_22F32F894(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_22F32F8DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22F32F92C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v2)
  {
    v4 = "Area of Interest";
  }

  else
  {
    v4 = "persistentChangeToken";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (*a2)
  {
    v7 = "persistentChangeToken";
  }

  else
  {
    v7 = "Area of Interest";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22F742040();
  }

  return v9 & 1;
}

uint64_t sub_22F32F9D8()
{
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

double sub_22F32FA58(uint64_t a1)
{
  sub_22F740D60();

  return result;
}

uint64_t sub_22F32FAC4(uint64_t a1)
{
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

void sub_22F32FB40(char *a2@<X8>)
{
  v3 = sub_22F741E30();

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

void sub_22F32FBA0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xD000000000000015;
  }

  if (*v1)
  {
    v3 = "persistentChangeToken";
  }

  else
  {
    v3 = "Area of Interest";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_22F32FBE0()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000015;
  }
}

void sub_22F32FC1C(char *a3@<X8>)
{
  v4 = sub_22F741E30();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_22F32FC80(uint64_t a1)
{
  v2 = sub_22F32FF94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F32FCBC(uint64_t a1)
{
  v2 = sub_22F32FF94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F32FCF8(void *a1, uint64_t a2, uint64_t a3)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3878, &qword_22F786030);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F32FF94();
  sub_22F742210();
  LOBYTE(v19[0]) = 1;
  sub_22F741F90();
  if (v3)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v11 = objc_opt_self();
  v19[0] = 0;
  v12 = [v11 archivedDataWithRootObject:a2 requiringSecureCoding:0 error:v19];
  v13 = v19[0];
  if (!v12)
  {
    v17 = v13;
    sub_22F73F370();

    swift_willThrow();
    return (*(v7 + 8))(v9, v6);
  }

  v14 = sub_22F73F510();
  v16 = v15;

  v19[0] = v14;
  v19[1] = v16;
  v18[7] = 0;
  sub_22F15C9A0();
  sub_22F741FE0();
  (*(v7 + 8))(v9, v6);
  return sub_22F133BF0(v14, v16);
}

uint64_t sub_22F32FF40@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_22F32FFE8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

unint64_t sub_22F32FF94()
{
  result = qword_27DAB3880;
  if (!qword_27DAB3880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3880);
  }

  return result;
}

uint64_t sub_22F32FFE8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3888, &qword_22F786038);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F32FF94();
  sub_22F742200();
  if (!v1)
  {
    v14 = 0;
    sub_22F15C370();
    sub_22F741F10();
    v9 = v13[0];
    v8 = v13[1];
    sub_22F120634(0, &qword_27DAB3890, 0x277CCAAC8);
    sub_22F120634(0, &qword_27DAB3898, 0x277CD9930);
    v10 = sub_22F741600();
    v2 = v10;
    v12 = (v5 + 8);
    if (v10)
    {
      LOBYTE(v13[0]) = 1;
      sub_22F741EC0();
      (*v12)(v7, v4);
      sub_22F133BF0(v9, v8);
      __swift_destroy_boxed_opaque_existential_0(a1);
      return v2;
    }

    sub_22F330280();
    swift_allocError();
    swift_willThrow();
    sub_22F133BF0(v9, v8);
    (*v12)(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

unint64_t sub_22F330280()
{
  result = qword_27DAB38A0;
  if (!qword_27DAB38A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB38A0);
  }

  return result;
}

unint64_t sub_22F3302F8()
{
  result = qword_27DAB38A8;
  if (!qword_27DAB38A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB38A8);
  }

  return result;
}

unint64_t sub_22F330350()
{
  result = qword_27DAB38B0;
  if (!qword_27DAB38B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB38B0);
  }

  return result;
}

unint64_t sub_22F3303A8()
{
  result = qword_27DAB38B8;
  if (!qword_27DAB38B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB38B8);
  }

  return result;
}

unint64_t sub_22F330400()
{
  result = qword_27DAB38C0;
  if (!qword_27DAB38C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB38C0);
  }

  return result;
}

uint64_t sub_22F330454(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v180 = a2;
  v179 = a1;
  v4 = 0;
  v191 = *MEMORY[0x277D85DE8];
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1080, &unk_22F7714C0);
  v178 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v174 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v163 = &v150 - v7;
  MEMORY[0x28223BE20](v8);
  v173 = &v150 - v9;
  MEMORY[0x28223BE20](v10);
  v169 = (&v150 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB38C8, &qword_22F7862D0);
  MEMORY[0x28223BE20](v12 - 8);
  v183 = &v150 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v14 - 8);
  v182 = &v150 - v15;
  v177 = sub_22F73F690();
  v161 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v168 = &v150 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v150 - v18;
  v20 = sub_22F73F470();
  v155 = *(v20 - 8);
  v21 = v155;
  MEMORY[0x28223BE20](v20);
  v160 = &v150 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v151 = &v150 - v24;
  MEMORY[0x28223BE20](v25);
  v181 = &v150 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v150 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v150 - v31;
  *(v2 + 64) = sub_22F14E41C(MEMORY[0x277D84F90]);
  v33 = [objc_opt_self() systemPhotoLibraryURL];
  sub_22F73F430();

  v34 = objc_allocWithZone(MEMORY[0x277CD9948]);
  v35 = sub_22F73F3F0();
  v36 = [v34 initWithPhotoLibraryURL_];

  v38 = v21 + 8;
  v37 = *(v21 + 8);
  v37(v32, v20);
  *(v3 + 16) = v36;
  *(v3 + 48) = xmmword_22F782930;
  v39 = MEMORY[0x277D84F90];
  *(v3 + 40) = MEMORY[0x277D84F90];
  v40 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v158 = v3;
  *(v3 + 32) = v39;
  v156 = (v3 + 32);
  *(v3 + 24) = v39;
  v184 = v39;
  sub_22F73F3D0();

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB38D0, &qword_22F7862D8);
  v42 = swift_allocObject();
  v162 = xmmword_22F771340;
  *(v42 + 16) = xmmword_22F771340;
  v43 = *MEMORY[0x277CBE7C0];
  *(v42 + 32) = *MEMORY[0x277CBE7C0];
  v170 = v43;
  v152 = v40;
  v44 = sub_22F7415B0();

  v180 = v38;
  v179 = v37;
  v37(v32, v20);
  v45 = v155;
  v165 = v44;
  if (v44)
  {
    v176 = v155 + 56;
    v175 = (v155 + 48);
    v172 = (v155 + 32);
    v171 = v161 + 7;
    v167 = (v161 + 6);
    *&v159 = v161 + 4;
    v157 = (v155 + 16);
    v154 = v161 + 2;
    v153 = (v161 + 1);
    v164 = MEMORY[0x277D84F90];
    v46 = v170;
    while (1)
    {
      if ([v165 nextObject])
      {
        sub_22F741920();
        swift_unknownObjectRelease();
      }

      else
      {
        v185 = 0u;
        v186 = 0u;
      }

      aBlock = v185;
      v188 = v186;
      if (!*(&v186 + 1))
      {
        v66 = v164;
        v67 = v166;
        v45 = v155;
        goto LABEL_18;
      }

      v47 = swift_dynamicCast();
      (*v176)(v19, v47 ^ 1u, 1, v20);
      if ((*v175)(v19, 1, v20) == 1)
      {
        break;
      }

      (*v172)(v29, v19, v20);
      v48 = objc_autoreleasePoolPush();
      inited = swift_initStackObject();
      *(inited + 16) = v162;
      *(inited + 32) = v46;
      v50 = v46;
      sub_22F3DBCA4(inited);
      swift_setDeallocating();
      v51 = v183;
      sub_22F334348(inited + 32);
      sub_22F73F3B0();
      v52 = v41;

      v53 = v51;
      v54 = sub_22F73F2D0();
      v55 = *(v54 - 8);
      (*(v55 + 56))(v53, 0, 1, v54);
      v56 = v182;
      sub_22F73F2C0();
      v57 = v53;
      v58 = v56;
      (*(v55 + 8))(v57, v54);
      v59 = v177;
      if ((*v167)(v56, 1, v177) == 1)
      {
        v41 = v52;
        v46 = v170;
        sub_22F120ADC(v58, &qword_27DAB0920, &qword_22F770B20);
      }

      else
      {
        v60 = v168;
        (*v159)(v168, v58, v59);
        v61 = *(v166 + 48);
        v62 = v169;
        (*v157)(v169, v29, v20);
        (*v154)(v62 + v61, v60, v59);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v164 = sub_22F140014(0, v164[2] + 1, 1, v164);
        }

        v41 = v52;
        v64 = v164[2];
        v63 = v164[3];
        v46 = v170;
        if (v64 >= v63 >> 1)
        {
          v164 = sub_22F140014((v63 > 1), v64 + 1, 1, v164);
        }

        (*v153)(v168, v177);
        v65 = v164;
        v164[2] = v64 + 1;
        sub_22F3343A4(v169, v65 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v64);
      }

      objc_autoreleasePoolPop(v48);
      v179(v29, v20);
    }

    v66 = v164;
    v67 = v166;
    v45 = v155;
    v68 = v161;
  }

  else
  {
    aBlock = 0u;
    v188 = 0u;
    v66 = MEMORY[0x277D84F90];
    v67 = v166;
LABEL_18:
    v68 = v161;
    sub_22F120ADC(&aBlock, &qword_27DAB0C28, &qword_22F778980);
    (*(v45 + 56))(v19, 1, 1, v20);
  }

  sub_22F120ADC(v19, &qword_27DAB29A0, &unk_22F77BFC0);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_81;
  }

LABEL_21:
  v69 = v163;
  v70 = v177;
  v71 = *(v66 + 16);
  v172 = (v66 + ((*(v178 + 80) + 32) & ~*(v178 + 80)));
  *&aBlock = v172;
  *(&aBlock + 1) = v71;
  sub_22F333168(&aBlock);
  v167 = v4;
  v4 = v66;
  v73 = *(v66 + 16);
  if (v73)
  {
    v74 = 0;
    LODWORD(v153) = 0;
    v176 = 0;
    v171 = *(v67 + 48);
    v175 = (v45 + 32);
    v170 = (v68 + 32);
    v169 = (v68 + 8);
    v161 = (v45 + 16);
    v168 = (v73 - 1);
    *&v72 = 136315138;
    v159 = v72;
    v150 = xmmword_22F771EB0;
    v157 = MEMORY[0x277D84F90];
    v154 = MEMORY[0x277D84F90];
    v164 = v66;
    while (1)
    {
      if (v74 >= v4[2])
      {
        __break(1u);
LABEL_81:
        v66 = sub_22F2F2CD0(v66);
        goto LABEL_21;
      }

      v75 = v4;
      v76 = *(v178 + 72);
      v182 = v74;
      v77 = v173;
      sub_22F3342D0(v172 + v76 * v74, v173);
      v78 = *(v67 + 48);
      v68 = *v175;
      (*v175)(v69, v77, v20);
      (*v170)(v69 + v78, v171 + v77, v70);
      v183 = objc_autoreleasePoolPush();
      v79 = v174;
      sub_22F3342D0(v69, v174);
      v80 = *(v67 + 48);
      v81 = v67;
      v82 = v181;
      (v68)(v181, v79, v20);
      (*v169)(v79 + v80, v70);
      sub_22F73F450();
      v45 = v83;
      v66 = sub_22F740FF0();

      if ((v66 & 1) == 0)
      {
        v179(v82, v20);
        v67 = v81;
        v4 = v75;
        goto LABEL_37;
      }

      v84 = v75;
      sub_22F73F450();
      v85 = objc_allocWithZone(MEMORY[0x277CBEA90]);
      v86 = sub_22F740DF0();

      *&aBlock = 0;
      v87 = [v85 initWithContentsOfFile:v86 options:2 error:&aBlock];

      v88 = aBlock;
      if (!v87)
      {
        break;
      }

      v89 = sub_22F73F510();
      v45 = v90;

      v66 = sub_22F120634(0, &qword_27DAB3890, 0x277CCAAC8);
      sub_22F120634(0, &unk_27DAB38D8, 0x277D3B3F8);
      v91 = v167;
      v92 = sub_22F741600();
      if (v91)
      {
        sub_22F133BF0(v89, v45);
        v93 = v91;
        v82 = v181;
LABEL_30:
        v68 = v160;
        if (qword_27DAAFD40 != -1)
        {
          swift_once();
        }

        v167 = 0;
        v95 = sub_22F740B90();
        __swift_project_value_buffer(v95, qword_27DAD0E10);
        v45 = v20;
        (*v161)(v68, v82, v20);
        v96 = sub_22F740B70();
        v97 = sub_22F7415E0();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          *&aBlock = v99;
          *v98 = v159;
          v100 = sub_22F73F450();
          v101 = v68;
          v68 = v102;
          v103 = v179;
          v179(v101, v20);
          v104 = sub_22F145F20(v100, v68, &aBlock);

          *(v98 + 4) = v104;
          _os_log_impl(&dword_22F0FC000, v96, v97, "[SharedLibrarySimulationEventFactory] Event factory could not parse metadata in the file %s.", v98, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v99);
          v105 = v166;
          MEMORY[0x2319033A0](v99, -1, -1);
          v106 = v98;
          v67 = v105;
          v66 = v164;
          MEMORY[0x2319033A0](v106, -1, -1);

          v103(v181, v20);
          v4 = v66;
          v69 = v163;
          v70 = v177;
          goto LABEL_37;
        }

        v66 = v180;
        v107 = v179;
        v179(v68, v20);
        v107(v82, v20);
        v69 = v163;
        v70 = v177;
        goto LABEL_35;
      }

      v108 = v92;
      v167 = 0;
      if (v92)
      {
        v109 = [v92 sharedLibraryDiagnostics];
        if (v109)
        {

          v110 = v157;
          v111 = v157[2];
          v112 = v166;
          if (v111 >= 0x19)
          {
            v118 = v158;
            v119 = *(v158 + 24);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v118 + 24) = v119;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v119 = sub_22F13FEBC(0, v119[2] + 1, 1, v119);
              *(v158 + 24) = v119;
            }

            v121 = v154;
            v123 = v119[2];
            v122 = v119[3];
            if (v123 >= v122 >> 1)
            {
              v119 = sub_22F13FEBC((v122 > 1), v123 + 1, 1, v119);
            }

            v119[2] = v123 + 1;
            v119[v123 + 4] = v110;
            v124 = v158;
            *(v158 + 24) = v119;
            swift_beginAccess();
            v125 = *(v124 + 32);

            v126 = swift_isUniquelyReferenced_nonNull_native();
            *(v124 + 32) = v125;
            if ((v126 & 1) == 0)
            {
              v125 = sub_22F13FE98(0, v125[2] + 1, 1, v125);
              *v156 = v125;
            }

            v128 = v125[2];
            v127 = v125[3];
            if (v128 >= v127 >> 1)
            {
              v125 = sub_22F13FE98((v127 > 1), v128 + 1, 1, v125);
            }

            v125[2] = v128 + 1;
            v125[v128 + 4] = v121;
            *v156 = v125;
            swift_endAccess();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0D50, &qword_22F7710F0);
            v129 = v155;
            v68 = ((*(v155 + 80) + 32) & ~*(v155 + 80));
            v66 = swift_allocObject();
            *(v66 + 16) = v162;
            (*(v129 + 16))(&v68[v66], v181, v20);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
            v117 = swift_allocObject();
            *(v117 + 16) = v150;
            *(v117 + 32) = v108;
            v130 = v108;

            v184 = v117;
            v110 = v66;
            v113 = &off_27888E000;
          }

          else
          {
            (*v161)(v151, v181, v20);
            v113 = &off_27888E000;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v110 = sub_22F140038(0, v111 + 1, 1, v110);
            }

            v115 = v110[2];
            v114 = v110[3];
            if (v115 >= v114 >> 1)
            {
              v110 = sub_22F140038((v114 > 1), v115 + 1, 1, v110);
            }

            v110[2] = v115 + 1;
            (v68)(v110 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v115, v151, v20);
            v116 = v108;
            v66 = &v184;
            MEMORY[0x231900D00]();
            if (*((v184 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v184 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v68 = *((v184 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_22F7411C0();
            }

            sub_22F741220();
            v117 = v184;
          }

          v154 = v117;
          v157 = v110;
          ++v176;
          v131 = [v108 v113[279]];
          v4 = v164;
          if (v131 == 4)
          {
            v179(v181, v20);
            sub_22F133BF0(v89, v45);

            LODWORD(v153) = 1;
          }

          else
          {
            v66 = [v108 v113[279]];
            sub_22F133BF0(v89, v45);

            v179(v181, v20);
            LODWORD(v153) = (v66 == 5) | v153;
          }

          v69 = v163;
          v70 = v177;
          v67 = v112;
          goto LABEL_37;
        }

        v4 = v84;
        v179(v181, v20);
        sub_22F133BF0(v89, v45);

        v69 = v163;
        v70 = v177;
        goto LABEL_36;
      }

      v179(v181, v20);
      sub_22F133BF0(v89, v45);
      v69 = v163;
      v70 = v177;
LABEL_35:
      v4 = v84;
LABEL_36:
      v67 = v166;
LABEL_37:
      objc_autoreleasePoolPop(v183);
      sub_22F120ADC(v69, &unk_27DAB1080, &unk_22F7714C0);
      if (v168 != v182)
      {
        v74 = (v182 + 1);
        if (v176 <= 499)
        {
          continue;
        }
      }

      goto LABEL_66;
    }

    v94 = v88;
    v93 = sub_22F73F370();

    swift_willThrow();
    goto LABEL_30;
  }

  LODWORD(v153) = 0;
  v157 = MEMORY[0x277D84F90];
  v154 = MEMORY[0x277D84F90];
LABEL_66:
  v132 = v157;
  v133 = v158;
  v134 = v154;
  if (v157[2])
  {
    v135 = *(v158 + 24);

    v136 = swift_isUniquelyReferenced_nonNull_native();
    *(v133 + 24) = v135;
    if ((v136 & 1) == 0)
    {
      v135 = sub_22F13FEBC(0, v135[2] + 1, 1, v135);
      *(v133 + 24) = v135;
    }

    v138 = v135[2];
    v137 = v135[3];
    if (v138 >= v137 >> 1)
    {
      v135 = sub_22F13FEBC((v137 > 1), v138 + 1, 1, v135);
    }

    v135[2] = v138 + 1;
    v135[v138 + 4] = v132;
    *(v133 + 24) = v135;
    swift_beginAccess();
    v139 = *(v133 + 32);

    v140 = swift_isUniquelyReferenced_nonNull_native();
    *(v133 + 32) = v139;
    if ((v140 & 1) == 0)
    {
      v139 = sub_22F13FE98(0, v139[2] + 1, 1, v139);
      *v156 = v139;
    }

    v142 = v139[2];
    v141 = v139[3];
    if (v142 >= v141 >> 1)
    {
      v139 = sub_22F13FE98((v141 > 1), v142 + 1, 1, v139);
    }

    v139[2] = v142 + 1;
    v139[v142 + 4] = v134;
    *v156 = v139;
    swift_endAccess();
  }

  v143 = MEMORY[0x277D84F90];
  if (v153)
  {
    v144 = [*(v133 + 16) librarySpecificFetchOptions];
    [v144 setWantsIncrementalChangeDetails_];
    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    *&aBlock = 0x203D3D2065707974;
    *(&aBlock + 1) = 0xE800000000000000;
    *&v185 = 23;
    v145 = sub_22F742010();
    MEMORY[0x231900B10](v145);

    v146 = sub_22F741560();

    [v144 setPredicate_];

    v147 = [objc_opt_self() fetchAnsweredYesOrNoQuestionsWithOptions:v144 validQuestionsOnly:1];
    v189 = sub_22F334340;
    v190 = v158;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v133 = v158;
    *&v188 = sub_22F334418;
    *(&v188 + 1) = &block_descriptor_25;
    v148 = _Block_copy(&aBlock);

    [v147 enumerateObjectsUsingBlock_];

    _Block_release(v148);
  }

  else
  {
    *(v133 + 24) = MEMORY[0x277D84F90];

    swift_beginAccess();
    *(v133 + 32) = v143;
  }

  return v133;
}

void sub_22F331EC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_autoreleasePoolPush();
  sub_22F331F20(a1, a4);

  objc_autoreleasePoolPop(v6);
}

id sub_22F331F20(void *a1, uint64_t a2)
{
  if ([a1 state] == 2 || (result = objc_msgSend(a1, sel_state), result == 3))
  {
    result = [a1 additionalInfo];
    if (result)
    {
      v5 = result;
      v6 = sub_22F740CA0();

      v7 = sub_22F740E20();
      if (*(v6 + 16))
      {
        v9 = sub_22F1229E8(v7, v8);
        v11 = v10;

        if (v11)
        {
          sub_22F13A100(*(v6 + 56) + 32 * v9, v24);
          sub_22F120ADC(v24, &qword_27DAB0C28, &qword_22F778980);
          v12 = sub_22F740E20();
          if (*(v6 + 16))
          {
            v14 = sub_22F1229E8(v12, v13);
            v16 = v15;

            if (v16)
            {
              sub_22F13A100(*(v6 + 56) + 32 * v14, v24);

              sub_22F120ADC(v24, &qword_27DAB0C28, &qword_22F778980);
              v17 = [a1 entityIdentifier];
              v18 = sub_22F740E20();
              v20 = v19;

              v21 = [a1 state] == 2;
              swift_beginAccess();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v23 = *(a2 + 64);
              *(a2 + 64) = 0x8000000000000000;
              sub_22F132CF8(v21, v18, v20, isUniquelyReferenced_nonNull_native);

              *(a2 + 64) = v23;
              return swift_endAccess();
            }
          }

          else
          {
          }
        }
      }

      else
      {
      }

      memset(v24, 0, sizeof(v24));
      return sub_22F120ADC(v24, &qword_27DAB0C28, &qword_22F778980);
    }
  }

  return result;
}

void sub_22F332180()
{
  if (v0[7] < *(v0[3] + 16))
  {
    while (1)
    {
      swift_beginAccess();
      while (v0[6] < *(v0[5] + 16))
      {
        v5.isa = 0;
        v1 = objc_autoreleasePoolPush();
        sub_22F332248(v0, &v5);
        objc_autoreleasePoolPop(v1);
        if (v5.isa)
        {
          return;
        }
      }

      v0[6] = 0;
      v2 = v0[7];
      v3 = __OFADD__(v2, 1);
      v4 = v2 + 1;
      if (v3)
      {
        break;
      }

      v0[7] = v4;
      sub_22F332774();
      if (v0[7] >= *(v0[3] + 16))
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_22F332248(void *a1, NSObject *a2)
{
  v5 = v3;
  v8 = sub_22F73F470();
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v12 = a1[6];
  swift_beginAccess();
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v13 = a1[5];
  if (v12 >= *(v13 + 16))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v2 = *(v13 + 8 * v12 + 32);
  if (!v2)
  {
    if (qword_27DAAFD40 != -1)
    {
      goto LABEL_42;
    }

    goto LABEL_18;
  }

  v4 = a1[7];
  swift_beginAccess();
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

  v14 = a1[4];
  if (v4 >= *(v14 + 16))
  {
    goto LABEL_35;
  }

  v4 = *(v14 + 8 * v4 + 32);
  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_36;
  }

  if (v12 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_38;
  }

  v15 = *(v4 + 8 * v12 + 32);
  v16 = v2;
  v17 = v15;
  v18 = a1[7];
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

LABEL_9:
  v19 = a1[3];
  if (v18 < *(v19 + 16))
  {
    v20 = a1[6];
    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_40;
    }

    v21 = *(v19 + 8 * v18 + 32);
    if (v20 >= *(v21 + 16))
    {
      goto LABEL_41;
    }

    v50 = a2;
    a2 = v5;
    v22 = *(v9 + 16);
    v9 += 16;
    v22(v11, v21 + ((*(v9 + 64) + 32) & ~*(v9 + 64)) + *(v9 + 56) * v20, v8);
    v23 = a1[2];
    type metadata accessor for PGSharedLibrarySimulationEvent(0);
    v4 = swift_allocObject();
    v8 = v2;
    v24 = v23;
    v25 = v17;
    v12 = v4;
    v26 = sub_22F16C2FC(v25, v8, v11, v24);
    if (v26)
    {
      v11 = v26;
      v27 = [*&v26[OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_asset] uuid];
      if (!v27)
      {
        goto LABEL_47;
      }

      v28 = v27;
      v29 = sub_22F740E20();
      v4 = v30;

      swift_beginAccess();
      v12 = a1[8];
      if (*(v12 + 16) && (, v31 = sub_22F1229E8(v29, v4), v9 = v32, , (v9 & 1) != 0))
      {
        v2 = *(*(v12 + 56) + v31);

        v11[OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_photosChallengeInferredSuggestsSharing] = v2;
      }

      else
      {
      }

      v50->isa = v11;
    }

    else
    {
    }

    v5 = a2;
    goto LABEL_29;
  }

  while (1)
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
LABEL_18:
    v33 = sub_22F740B90();
    v12 = __swift_project_value_buffer(v33, qword_27DAD0E10);

    a2 = sub_22F740B70();
    v4 = sub_22F7415E0();

    if (!os_log_type_enabled(a2, v4))
    {

      goto LABEL_29;
    }

    v50 = v5;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v49[0] = v35;
    *v34 = 136315138;
    v36 = a1[7];
    if ((v36 & 0x8000000000000000) != 0)
    {
      break;
    }

    v37 = a1[3];
    if (v36 >= *(v37 + 16))
    {
      goto LABEL_44;
    }

    v38 = a1[6];
    if ((v38 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v48 = v35;
    v39 = *(v37 + 8 * v36 + 32);
    if (v38 >= *(v39 + 16))
    {
      goto LABEL_46;
    }

    (*(v9 + 16))(v11, v39 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v38, v8);
    v40 = sub_22F73F450();
    v42 = v41;
    v43 = *(v9 + 8);
    v9 += 8;
    v43(v11, v8);
    v12 = sub_22F145F20(v40, v42, v49);

    *(v34 + 4) = v12;
    _os_log_impl(&dword_22F0FC000, a2, v4, "[SharedLibrarySimulationEventFactory] Event factory could not find an asset for the event with .MDATA file %s.", v34, 0xCu);
    v2 = v48;
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x2319033A0](v2, -1, -1);
    MEMORY[0x2319033A0](v34, -1, -1);

    v5 = v50;
LABEL_29:
    v44 = a1[6];
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (!v45)
    {
      a1[6] = v46;
      return;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v47 = v2;

    v17 = MEMORY[0x2319016F0](v12, v4);

    v18 = a1[7];
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
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
}

void sub_22F332774()
{
  v1 = v0;
  v2 = sub_22F73F470();
  v65 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v64 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v57 - v5;
  if (*(v1 + 56) < *(*(v1 + 24) + 16))
  {
    swift_beginAccess();
    v7 = MEMORY[0x277D84F90];
    *(v1 + 40) = MEMORY[0x277D84F90];

    v8 = swift_allocObject();
    *(v8 + 16) = sub_22F14F1C0(v7);
    v9 = *(v1 + 56);
    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_32;
    }

    v10 = *(v1 + 24);
    if (v9 >= *(v10 + 16))
    {
LABEL_33:
      __break(1u);
LABEL_34:
      sub_22F7420C0();
      __break(1u);
    }

    else
    {
      v11 = *(v10 + 8 * v9 + 32);
      v63 = *(v11 + 16);
      if (v63)
      {
        v62 = v11 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
        v61 = v65 + 16;
        *&v67 = v65 + 8;

        v12 = 0;
        v13 = MEMORY[0x277D84F90];
        v59 = v2;
        v60 = v1;
        v57 = v11;
        v58 = v6;
        while (1)
        {
          if (v12 >= *(v11 + 16))
          {
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v14 = v65;
          (*(v65 + 16))(v6, v62 + *(v65 + 72) * v12, v2);
          v66 = objc_autoreleasePoolPush();
          v15 = v64;
          sub_22F73F400();
          v16 = sub_22F73F3E0();
          v18 = v17;
          v19 = *(v14 + 8);
          v19(v15, v2);
          aBlock = v16;
          v69 = v18;

          MEMORY[0x231900B10](0x434945482ELL, 0xE500000000000000);

          v20 = aBlock;
          v21 = v69;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_22F13E1A8(0, *(v13 + 2) + 1, 1, v13);
          }

          v23 = *(v13 + 2);
          v22 = *(v13 + 3);
          if (v23 >= v22 >> 1)
          {
            v13 = sub_22F13E1A8((v22 > 1), v23 + 1, 1, v13);
          }

          *(v13 + 2) = v23 + 1;
          v24 = &v13[16 * v23];
          *(v24 + 4) = v20;
          *(v24 + 5) = v21;
          v25 = *(v8 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v25;
          v27 = v8;
          *(v8 + 16) = 0x8000000000000000;
          v29 = sub_22F1229E8(v20, v21);
          v30 = v25[2];
          v31 = (v28 & 1) == 0;
          v32 = v30 + v31;
          if (__OFADD__(v30, v31))
          {
            goto LABEL_30;
          }

          v33 = v28;
          if (v25[3] >= v32)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v28)
              {
                goto LABEL_18;
              }
            }

            else
            {
              sub_22F1341B0();
              if (v33)
              {
                goto LABEL_18;
              }
            }
          }

          else
          {
            sub_22F125704(v32, isUniquelyReferenced_nonNull_native);
            v34 = sub_22F1229E8(v20, v21);
            if ((v33 & 1) != (v35 & 1))
            {
              goto LABEL_34;
            }

            v29 = v34;
            if (v33)
            {
LABEL_18:

              v36 = aBlock;
              *(aBlock[7] + 8 * v29) = v12;
              goto LABEL_22;
            }
          }

          v36 = aBlock;
          aBlock[(v29 >> 6) + 8] |= 1 << v29;
          v37 = (v36[6] + 16 * v29);
          *v37 = v20;
          v37[1] = v21;
          *(v36[7] + 8 * v29) = v12;
          v38 = v36[2];
          v39 = __OFADD__(v38, 1);
          v40 = v38 + 1;
          if (v39)
          {
            goto LABEL_31;
          }

          v36[2] = v40;
LABEL_22:
          v8 = v27;
          *(v27 + 16) = v36;

          v1 = v60;
          v41 = swift_beginAccess();
          MEMORY[0x231900D00](v41);
          v11 = v57;
          if (*(*(v1 + 40) + 16) >= *(*(v1 + 40) + 24) >> 1)
          {
            sub_22F7411C0();
          }

          ++v12;
          sub_22F741220();
          swift_endAccess();
          objc_autoreleasePoolPop(v66);
          v6 = v58;
          v2 = v59;
          v19(v58, v59);
          if (v63 == v12)
          {

            goto LABEL_27;
          }
        }
      }

      v13 = MEMORY[0x277D84F90];
LABEL_27:
      v42 = [*(v1 + 16) librarySpecificFetchOptions];
      [v42 setWantsIncrementalChangeDetails_];
      sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
      v43 = swift_allocObject();
      v67 = xmmword_22F771340;
      *(v43 + 16) = xmmword_22F771340;
      *(v43 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
      *(v43 + 64) = sub_22F25F050();
      *(v43 + 32) = v13;

      v44 = sub_22F741560();
      [v42 setInternalPredicate_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
      v45 = swift_allocObject();
      *(v45 + 16) = v67;
      *(v45 + 32) = sub_22F740E20();
      *(v45 + 40) = v46;
      v47 = sub_22F741160();

      [v42 addFetchPropertySets_];

      v48 = objc_allocWithZone(MEMORY[0x277CCAC98]);
      v49 = sub_22F740DF0();
      v50 = [v48 initWithKey:v49 ascending:1];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_22F771EB0;
      *(v51 + 32) = v50;
      sub_22F120634(0, &qword_2810A9138, 0x277CCAC98);
      v52 = v50;
      v53 = sub_22F741160();

      [v42 setSortDescriptors_];

      v54 = [objc_opt_self() fetchAssetsWithOptions_];
      v55 = swift_allocObject();
      *(v55 + 16) = v8;
      *(v55 + 24) = v1;
      v72 = sub_22F3342B0;
      v73 = v55;
      aBlock = MEMORY[0x277D85DD0];
      v69 = 1107296256;
      v70 = sub_22F334418;
      v71 = &block_descriptor_31;
      v56 = _Block_copy(&aBlock);

      [v54 enumerateObjectsUsingBlock_];
      _Block_release(v56);
    }
  }
}

void sub_22F332F5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_autoreleasePoolPush();
  v9 = [a1 filename];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = v9;
  v11 = sub_22F740E20();
  v13 = v12;

  swift_beginAccess();
  v14 = *(a4 + 16);
  if (!*(v14 + 16))
  {

    goto LABEL_9;
  }

  v15 = sub_22F1229E8(v11, v13);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_9:
    swift_endAccess();
    goto LABEL_10;
  }

  v18 = *(*(v14 + 56) + 8 * v15);
  swift_endAccess();
  swift_beginAccess();
  v19 = *(a5 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 40) = v19;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = sub_22F2F2CE4(v19);
    *(a5 + 40) = v19;
    if ((v18 & 0x8000000000000000) == 0)
    {
LABEL_6:
      if (v18 < *(v19 + 16))
      {
        v21 = v19 + 8 * v18;
        v22 = *(v21 + 32);
        *(v21 + 32) = a1;
        *(a5 + 40) = v19;
        v23 = a1;
        swift_endAccess();

LABEL_10:
        objc_autoreleasePoolPop(v8);
        return;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_22F3330C0()
{

  return swift_deallocClassInstance();
}

void sub_22F333168(unint64_t *a1)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1080, &unk_22F7714C0);
        v6 = sub_22F741200();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1080, &unk_22F7714C0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22F3334E4(v8, v9, a1, v4);
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
    sub_22F3332AC(0, v2, 1, a1);
  }
}

void sub_22F3332AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1080, &unk_22F7714C0);
  MEMORY[0x28223BE20](v8);
  v34 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v32 = -v18;
    v33 = v17;
    v20 = a1 - a3;
    v26 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v30 = v19;
    v31 = a3;
    v28 = v21;
    v29 = v20;
    while (1)
    {
      sub_22F3342D0(v21, v16);
      sub_22F3342D0(v19, v12);
      v22 = sub_22F73F5C0();
      sub_22F120ADC(v12, &unk_27DAB1080, &unk_22F7714C0);
      sub_22F120ADC(v16, &unk_27DAB1080, &unk_22F7714C0);
      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v19 = v30 + v26;
        v20 = v29 - 1;
        v21 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v23 = v34;
      sub_22F3343A4(v21, v34);
      swift_arrayInitWithTakeFrontToBack();
      sub_22F3343A4(v23, v19);
      v19 += v32;
      v21 += v32;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22F3334E4(unint64_t *a1, uint64_t a2, unint64_t *a3, int64_t a4)
{
  v6 = v5;
  v99 = a1;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1080, &unk_22F7714C0);
  v108 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v103 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v111 = &v96 - v11;
  MEMORY[0x28223BE20](v12);
  v112 = &v96 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v96 - v15;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_95:
    a4 = *v99;
    if (!*v99)
    {
      goto LABEL_134;
    }

    v4 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v91 = v4;
    }

    else
    {
LABEL_128:
      v91 = sub_22F3F5F98(v4);
    }

    v114 = v91;
    v4 = *(v91 + 2);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v92 = *&v91[16 * v4];
        v93 = v91;
        v94 = *&v91[16 * v4 + 24];
        sub_22F333DD4(*a3 + *(v108 + 72) * v92, *a3 + *(v108 + 72) * *&v91[16 * v4 + 16], *a3 + *(v108 + 72) * v94, a4);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v94 < v92)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_22F3F5F98(v93);
        }

        if (v4 - 2 >= *(v93 + 2))
        {
          goto LABEL_122;
        }

        v95 = &v93[16 * v4];
        *v95 = v92;
        *(v95 + 1) = v94;
        v114 = v93;
        sub_22F3F5F0C(v4 - 1);
        v91 = v114;
        v4 = *(v114 + 2);
        if (v4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v98 = a4;
  v106 = &v96 - v15;
  while (1)
  {
    v20 = v18;
    v104 = v19;
    if (v18 + 1 >= v17)
    {
      v17 = v18 + 1;
    }

    else
    {
      v110 = *a3;
      v21 = v110;
      v22 = *(v108 + 72);
      v23 = v110 + v22 * (v18 + 1);
      sub_22F3342D0(v23, v16);
      v24 = v21 + v22 * v18;
      v25 = v112;
      sub_22F3342D0(v24, v112);
      LODWORD(v107) = sub_22F73F5C0();
      sub_22F120ADC(v25, &unk_27DAB1080, &unk_22F7714C0);
      sub_22F120ADC(v16, &unk_27DAB1080, &unk_22F7714C0);
      v97 = v18;
      v4 = v18 + 2;
      v109 = v22;
      v26 = v110 + v22 * (v18 + 2);
      while (v17 != v4)
      {
        v27 = v106;
        sub_22F3342D0(v26, v106);
        v28 = v112;
        sub_22F3342D0(v23, v112);
        LOBYTE(v110) = sub_22F73F5C0() & 1;
        LODWORD(v110) = v110;
        sub_22F120ADC(v28, &unk_27DAB1080, &unk_22F7714C0);
        sub_22F120ADC(v27, &unk_27DAB1080, &unk_22F7714C0);
        ++v4;
        v26 += v109;
        v23 += v109;
        if ((v107 & 1) != v110)
        {
          v17 = v4 - 1;
          break;
        }
      }

      v16 = v106;
      v20 = v97;
      a4 = v98;
      if (v107)
      {
        if (v17 < v97)
        {
          goto LABEL_125;
        }

        if (v97 < v17)
        {
          v96 = v6;
          v4 = v109 * (v17 - 1);
          v29 = v17 * v109;
          v30 = v17;
          v31 = v17;
          v32 = v97;
          v33 = v97 * v109;
          v100 = a3;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!v34)
              {
                goto LABEL_131;
              }

              sub_22F3343A4(v34 + v33, v103);
              if (v33 < v4 || v34 + v33 >= v34 + v29)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v33 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22F3343A4(v103, v34 + v4);
              a3 = v100;
            }

            ++v32;
            v4 -= v109;
            v29 -= v109;
            v33 += v109;
          }

          while (v32 < v31);
          v6 = v96;
          v20 = v97;
          a4 = v98;
          v17 = v30;
        }
      }
    }

    v35 = a3[1];
    if (v17 < v35)
    {
      if (__OFSUB__(v17, v20))
      {
        goto LABEL_124;
      }

      if (v17 - v20 < a4)
      {
        if (__OFADD__(v20, a4))
        {
          goto LABEL_126;
        }

        if (v20 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = v20 + a4;
        }

        if (v36 < v20)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v17 != v36)
        {
          break;
        }
      }
    }

    v18 = v17;
    if (v17 < v20)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v19 = v104;
    }

    else
    {
      v19 = sub_22F13D970(0, *(v104 + 2) + 1, 1, v104);
    }

    v4 = *(v19 + 2);
    v37 = *(v19 + 3);
    a4 = v4 + 1;
    if (v4 >= v37 >> 1)
    {
      v19 = sub_22F13D970((v37 > 1), v4 + 1, 1, v19);
    }

    *(v19 + 2) = a4;
    v38 = &v19[16 * v4];
    *(v38 + 4) = v20;
    *(v38 + 5) = v18;
    v110 = *v99;
    if (!v110)
    {
      goto LABEL_133;
    }

    if (v4)
    {
      while (1)
      {
        v39 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v40 = *(v19 + 4);
          v41 = *(v19 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_52:
          if (v43)
          {
            goto LABEL_112;
          }

          v56 = &v19[16 * a4];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_115;
          }

          v62 = &v19[16 * v39 + 32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_119;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = a4 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v66 = &v19[16 * a4];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_66:
        if (v61)
        {
          goto LABEL_114;
        }

        v69 = &v19[16 * v39];
        v71 = *(v69 + 4);
        v70 = *(v69 + 5);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_117;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_73:
        v4 = v39 - 1;
        if (v39 - 1 >= a4)
        {
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v77 = v19;
        a4 = *&v19[16 * v4 + 32];
        v78 = *&v19[16 * v39 + 40];
        sub_22F333DD4(*a3 + *(v108 + 72) * a4, *a3 + *(v108 + 72) * *&v19[16 * v39 + 32], *a3 + *(v108 + 72) * v78, v110);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v78 < a4)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_22F3F5F98(v77);
        }

        if (v4 >= *(v77 + 2))
        {
          goto LABEL_109;
        }

        v79 = &v77[16 * v4];
        *(v79 + 4) = a4;
        *(v79 + 5) = v78;
        v114 = v77;
        v4 = &v114;
        sub_22F3F5F0C(v39);
        v19 = v114;
        a4 = *(v114 + 2);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = &v19[16 * a4 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_110;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_111;
      }

      v51 = &v19[16 * a4];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_113;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_116;
      }

      if (v55 >= v47)
      {
        v73 = &v19[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_120;
        }

        if (v42 < v76)
        {
          v39 = a4 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v17 = a3[1];
    a4 = v98;
    if (v18 >= v17)
    {
      goto LABEL_95;
    }
  }

  v96 = v6;
  v97 = v20;
  v80 = *a3;
  v81 = *(v108 + 72);
  v82 = *a3 + v81 * (v17 - 1);
  v83 = v17;
  v84 = -v81;
  v85 = v20 - v83;
  v110 = v83;
  v100 = a3;
  v101 = v81;
  a4 = v80 + v83 * v81;
  v102 = v36;
LABEL_85:
  v105 = a4;
  v107 = v85;
  v109 = v82;
  v86 = v82;
  while (1)
  {
    sub_22F3342D0(a4, v16);
    v87 = v112;
    sub_22F3342D0(v86, v112);
    v88 = sub_22F73F5C0();
    v89 = v87;
    v4 = &unk_27DAB1080;
    sub_22F120ADC(v89, &unk_27DAB1080, &unk_22F7714C0);
    sub_22F120ADC(v16, &unk_27DAB1080, &unk_22F7714C0);
    if ((v88 & 1) == 0)
    {
LABEL_84:
      v18 = v102;
      v82 = v109 + v101;
      v85 = v107 - 1;
      a4 = v105 + v101;
      if (++v110 != v102)
      {
        goto LABEL_85;
      }

      v6 = v96;
      v20 = v97;
      a3 = v100;
      if (v102 < v97)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v80)
    {
      break;
    }

    v4 = v111;
    sub_22F3343A4(a4, v111);
    swift_arrayInitWithTakeFrontToBack();
    sub_22F3343A4(v4, v86);
    v86 += v84;
    a4 += v84;
    if (__CFADD__(v85++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_22F333DD4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v40 = a3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1080, &unk_22F7714C0);
  MEMORY[0x28223BE20](v39);
  v38 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v37 = &v32 - v9;
  v11 = *(v10 + 72);
  if (!v11)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_61;
  }

  v12 = v40 - a2;
  if (v40 - a2 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_62;
  }

  v13 = (a2 - a1) / v11;
  v43 = a1;
  v42 = a4;
  if (v13 >= v12 / v11)
  {
    v15 = v12 / v11 * v11;
    if (a4 < a2 || a2 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v21 = a4 + v15;
    if (v15 < 1)
    {
      v24 = a4 + v15;
    }

    else
    {
      v22 = -v11;
      v23 = a4 + v15;
      v24 = v21;
      v34 = v22;
      v35 = a4;
      do
      {
        v32 = v24;
        v25 = a2;
        a2 += v22;
        v36 = v25;
        while (1)
        {
          v27 = v40;
          if (v25 <= a1)
          {
            v43 = v25;
            v41 = v32;
            goto LABEL_59;
          }

          v33 = v24;
          v40 += v22;
          v28 = v23 + v22;
          v29 = v37;
          sub_22F3342D0(v28, v37);
          v30 = v38;
          sub_22F3342D0(a2, v38);
          v31 = sub_22F73F5C0();
          sub_22F120ADC(v30, &unk_27DAB1080, &unk_22F7714C0);
          sub_22F120ADC(v29, &unk_27DAB1080, &unk_22F7714C0);
          if (v31)
          {
            break;
          }

          v24 = v28;
          if (v27 < v23 || v40 >= v23)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v23)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v23 = v28;
          v25 = v36;
          v26 = v28 > v35;
          v22 = v34;
          if (!v26)
          {
            a2 = v36;
            goto LABEL_58;
          }
        }

        if (v27 < v36 || v40 >= v36)
        {
          swift_arrayInitWithTakeFrontToBack();
          v24 = v33;
          v22 = v34;
        }

        else
        {
          v24 = v33;
          v22 = v34;
          if (v27 != v36)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v23 > v35);
    }

LABEL_58:
    v43 = a2;
    v41 = v24;
  }

  else
  {
    v14 = v13 * v11;
    if (a4 < a1 || a1 + v14 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v16 = a4 + v14;
    v41 = a4 + v14;
    if (v14 >= 1 && a2 < v40)
    {
      do
      {
        v18 = v37;
        sub_22F3342D0(a2, v37);
        v19 = v38;
        sub_22F3342D0(a4, v38);
        v20 = sub_22F73F5C0();
        sub_22F120ADC(v19, &unk_27DAB1080, &unk_22F7714C0);
        sub_22F120ADC(v18, &unk_27DAB1080, &unk_22F7714C0);
        if (v20)
        {
          if (a1 < a2 || a1 >= a2 + v11)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v11;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v11)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v42 = a4 + v11;
          a4 += v11;
        }

        a1 += v11;
        v43 = a1;
      }

      while (a4 < v16 && a2 < v40);
    }
  }

LABEL_59:
  sub_22F3B681C(&v43, &v42, &v41);
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F3342D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1080, &unk_22F7714C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F334348(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F3343A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1080, &unk_22F7714C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static UpNext.MatchingResult.match(source:target:)(void *a1, void *a2)
{
  static UpNext.MatchingResult.similarity(source:target:)(a1, a2, &v6);
  v3 = v8;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v6;
  *(v4 + 40) = v7;
  *(v4 + 48) = v3;
  swift_unknownObjectRetain();
  return v4;
}

void __swiftcall UpNext.MatchingDimensions.init(person:scene:location:date:meaning:memoryFeature:trip:)(PhotosGraph::UpNext::MatchingDimensions *__return_ptr retstr, Swift::Float person, Swift::Float scene, Swift::Float location, Swift::Float date, Swift::Float meaning, Swift::Float memoryFeature, Swift::Float trip)
{
  retstr->person = person;
  retstr->scene = scene;
  retstr->location = location;
  retstr->date = date;
  retstr->meaning = meaning;
  retstr->memoryFeature = memoryFeature;
  retstr->trip = trip;
}

uint64_t UpNext.MatchingResult.debugInfo.getter()
{
  v21 = *(v0 + 24);
  v22 = *(v0 + 40);
  v23 = *(v0 + 48);
  v18 = MEMORY[0x277D84F90];
  sub_22F146454(0, 7, 0);
  v1 = 32;
  v2 = v18;
  v3 = MEMORY[0x277D83A90];
  v4 = MEMORY[0x277D83B08];
  do
  {
    v5 = *&v20[v1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22F771340;
    *(v6 + 56) = v3;
    *(v6 + 64) = v4;
    *(v6 + 32) = v5;
    v7 = sub_22F740E60();
    v19 = v2;
    v10 = *(v2 + 16);
    v9 = *(v2 + 24);
    if (v10 >= v9 >> 1)
    {
      v17 = v7;
      v12 = v8;
      sub_22F146454((v9 > 1), v10 + 1, 1);
      v8 = v12;
      v7 = v17;
      v2 = v19;
    }

    *(v2 + 16) = v10 + 1;
    v11 = v2 + 16 * v10;
    *(v11 + 32) = v7;
    *(v11 + 40) = v8;
    v1 += 4;
  }

  while (v1 != 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v13 = sub_22F740DA0();
  v15 = v14;

  MEMORY[0x231900B10](v13, v15);

  MEMORY[0x231900B10](93, 0xE100000000000000);
  return 91;
}

void sub_22F33469C(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_22F2F45E0();
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_22F335A90(v4);
  *a1 = v2;
}

uint64_t sub_22F33474C()
{
  v1 = *v0;
  v2 = 0x6E6F73726570;
  v3 = 0x654679726F6D656DLL;
  if (v1 != 5)
  {
    v3 = 1885958772;
  }

  v4 = 1702125924;
  if (v1 != 3)
  {
    v4 = 0x676E696E61656DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656E656373;
  if (v1 != 1)
  {
    v5 = 0x6E6F697461636F6CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22F334818@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F337108(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F334840(uint64_t a1)
{
  v2 = sub_22F336AA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F33487C(uint64_t a1)
{
  v2 = sub_22F336AA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpNext.MatchingDimensions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB38E8, &qword_22F786300);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F336AA8();
  sub_22F742210();
  v15 = 0;
  sub_22F741FB0();
  if (!v1)
  {
    v14 = 1;
    sub_22F741FB0();
    v13 = 2;
    sub_22F741FB0();
    v12 = 3;
    sub_22F741FB0();
    v11 = 4;
    sub_22F741FB0();
    v10 = 5;
    sub_22F741FB0();
    v9 = 6;
    sub_22F741FB0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t UpNext.MatchingDimensions.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB38F8, &qword_22F786308);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F336AA8();
  sub_22F742200();
  if (!v2)
  {
    v24[15] = 0;
    sub_22F741EE0();
    v10 = v9;
    v24[14] = 1;
    sub_22F741EE0();
    v12 = v11;
    v24[13] = 2;
    sub_22F741EE0();
    v14 = v13;
    v24[12] = 3;
    sub_22F741EE0();
    v16 = v15;
    v24[11] = 4;
    sub_22F741EE0();
    v18 = v17;
    v24[10] = 5;
    sub_22F741EE0();
    v21 = v20;
    v24[9] = 6;
    sub_22F741EE0();
    v23 = v22;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    a2[1] = v12;
    a2[2] = v14;
    a2[3] = v16;
    a2[4] = v18;
    a2[5] = v21;
    a2[6] = v23;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

float UpNext.MatchingResult.similarity.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 48);
  *a1 = *(v1 + 24);
  *(a1 + 16) = *(v1 + 40);
  *(a1 + 24) = result;
  return result;
}

float UpNext.MatchingResult.__allocating_init(target:similarity:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  result = *(a2 + 24);
  *(v4 + 16) = a1;
  *(v4 + 24) = *a2;
  *(v4 + 40) = *(a2 + 16);
  *(v4 + 48) = result;
  return result;
}

uint64_t UpNext.MatchingResult.init(target:similarity:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  *(v2 + 40) = *(a2 + 16);
  *(v2 + 48) = v3;
  return v2;
}

id static UpNext.MatchingResult.similarity(source:target:)@<X0>(void *a1@<X0>, void *a2@<X1>, float *a3@<X8>)
{
  v37 = sub_22F73F690();
  v6 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v36 - v11;
  v13 = [a1 personNodes];
  v14 = [v13 elementIdentifiers];

  v15 = [a2 personNodes];
  v16 = [v15 elementIdentifiers];

  sub_22F335444(v16);
  v18 = v17;

  v19 = [a1 sceneNodes];
  v20 = [v19 elementIdentifiers];

  v21 = [a2 sceneNodes];
  v22 = [v21 elementIdentifiers];

  sub_22F335500(v22);
  v24 = v23;

  _s11PhotosGraph6UpNextO14MatchingResultC18locationSimilarityySfSo04PGUpdE4Info_p_So0idE6Target_ptFZ_0(a1, a2);
  v26 = v25;
  v27 = [a2 representativeDate];
  if (v27)
  {
    v28 = v27;
    sub_22F73F640();

    v29 = v37;
    (*(v6 + 32))(v12, v8, v37);
    _s11PhotosGraph6UpNextO14MatchingResultC15_dateSimilarity_10targetDateSfSo04PGUpdE4Info_p_10Foundation0J0VtFZ_0(a1, v12);
    v31 = v30;
    (*(v6 + 8))(v12, v29);
  }

  else
  {
    v31 = 2143289344;
  }

  v32 = sub_22F336DD0(a1, a2, &selRef_meaningNodes);
  v33 = sub_22F336DD0(a1, a2, &selRef_memoryFeatureNodes);
  result = [a1 isTripMemory];
  if (!result || (result = [a2 isTripMemory], v35 = 1.0, (result & 1) == 0))
  {
    v35 = 0.0;
  }

  *a3 = v18;
  *(a3 + 1) = v24;
  *(a3 + 2) = v26;
  *(a3 + 3) = v31;
  a3[4] = v32;
  a3[5] = v33;
  a3[6] = v35;
  return result;
}

float sub_22F335190(void *a1, void *a2, SEL *a3, float (*a4)(id))
{
  v7 = [a1 *a3];
  v8 = [v7 elementIdentifiers];

  v9 = [a2 *a3];
  v10 = [v9 elementIdentifiers];

  v11 = a4(v10);
  return v11;
}

float static UpNext.MatchingResult.dateSimilarity(_:_:)(void *a1, void *a2)
{
  v4 = sub_22F73F690();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v17 - v10;
  v12 = [a2 representativeDate];
  if (!v12)
  {
    return NAN;
  }

  v13 = v12;
  sub_22F73F640();

  (*(v5 + 32))(v11, v7, v4);
  _s11PhotosGraph6UpNextO14MatchingResultC15_dateSimilarity_10targetDateSfSo04PGUpdE4Info_p_10Foundation0J0VtFZ_0(a1, v11);
  v15 = v14;
  (*(v5 + 8))(v11, v4);
  return v15;
}

double static UpNext.MatchingResult.tripSimilarity(_:_:)(void *a1, void *a2)
{
  swift_getObjectType();

  return sub_22F336710(a1, a2);
}

id sub_22F335444(void *a1)
{
  v3 = [v1 identifierSetByIntersectingIdentifierSet_];
  [v3 count];

  [v1 count];
  return [a1 count];
}

void sub_22F335500(void *a1)
{
  v3 = [v1 count];
  v4 = [a1 count];
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = [v1 identifierSetByIntersectingIdentifierSet_];
    [v6 count];
  }
}

void static UpNext.MatchingResult.logSimilarity(minValue:linearDissimilarity:maxValue:)(float a1, float a2, float a3)
{
  if (a1 <= a2 && a2 <= a3)
  {
    v5 = logf(a1);
    v6 = logf(a3);
    if (v5 > v6)
    {
      __break(1u);
    }

    else if (v5 != v6)
    {
      logf(a2);
      return;
    }

    __break(1u);
  }
}

float static UpNext.MatchingResult.weightedScore(similarity:weight:)(float a1, float a2)
{
  v2 = a1 + a1;
  v3 = (~LODWORD(a1) & 0x7F800000) != 0 || (LODWORD(a1) & 0x7FFFFF) == 0;
  result = fabsf(a2) * -0.25;
  v5 = (v2 + -1.0) * a2;
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t UpNext.MatchingResult.score(weights:)(float *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *(v1 + 28);
  v10 = *(v1 + 24);
  v11 = ~v10 & 0x7F800000;
  v12 = v10 & 0x7FFFFF;
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12 == 0;
  }

  v14 = fabsf(v2);
  v15 = v2 * ((*(v1 + 24) + *(v1 + 24)) + -1.0);
  v16 = v14 * -0.25;
  if (!v13)
  {
    v15 = v16;
  }

  v17 = (~LODWORD(v9) & 0x7F800000) != 0 || (LODWORD(v9) & 0x7FFFFF) == 0;
  v18 = v3 * ((v9 + v9) + -1.0);
  v19 = fabsf(v3) * -0.25;
  if (v17)
  {
    v19 = v18;
  }

  v20 = *(v1 + 32);
  if ((~LODWORD(v20) & 0x7F800000) != 0 || (LODWORD(v20) & 0x7FFFFF) == 0)
  {
    v21 = (v20 + v20) + -1.0;
  }

  else
  {
    v4 = fabsf(v4);
    v21 = -0.25;
  }

  v22 = v4 * v21;
  v23 = *(v1 + 36);
  if ((~LODWORD(v23) & 0x7F800000) != 0 || (LODWORD(v23) & 0x7FFFFF) == 0)
  {
    v24 = (v23 + v23) + -1.0;
  }

  else
  {
    v5 = fabsf(v5);
    v24 = -0.25;
  }

  v25 = v5 * v24;
  v26 = *(v1 + 40);
  if ((~LODWORD(v26) & 0x7F800000) != 0 || (LODWORD(v26) & 0x7FFFFF) == 0)
  {
    v27 = (v26 + v26) + -1.0;
  }

  else
  {
    v7 = fabsf(v7);
    v27 = -0.25;
  }

  v28 = v7 * v27;
  v29 = *(v1 + 44);
  if ((~LODWORD(v29) & 0x7F800000) != 0 || (LODWORD(v29) & 0x7FFFFF) == 0)
  {
    v30 = (v29 + v29) + -1.0;
  }

  else
  {
    v6 = fabsf(v6);
    v30 = -0.25;
  }

  v31 = v6 * v30;
  v32 = *(v1 + 48);
  if ((~LODWORD(v32) & 0x7F800000) != 0 || (LODWORD(v32) & 0x7FFFFF) == 0)
  {
    v33 = (v32 + v32) + -1.0;
  }

  else
  {
    v8 = fabsf(v8);
    v33 = -0.25;
  }

  v34 = ((((((v15 + 0.0) + v19) + v22) + v25) + v28) + v31) + (v8 * v33);
  type metadata accessor for UpNext.ScoredMatchingResult();
  v35 = swift_allocObject();
  *(v35 + 16) = v1;
  *(v35 + 24) = v34;

  return v35;
}

uint64_t UpNext.MatchingResult.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t UpNext.ScoredMatchingResult.description.getter()
{
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000025, 0x800000022F79B2C0);
  v0 = UpNext.MatchingResult.debugInfo.getter();
  MEMORY[0x231900B10](v0);

  MEMORY[0x231900B10](0x3A65726F6373202CLL, 0xE900000000000020);
  sub_22F7413E0();
  MEMORY[0x231900B10](41, 0xE100000000000000);
  return 0;
}

uint64_t UpNext.ScoredMatchingResult.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t UpNext.ScoredMatchingResults.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t UpNext.ScoredMatchingResults.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_22F335A90(uint64_t *a1)
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
        type metadata accessor for UpNext.ScoredMatchingResult();
        v6 = sub_22F741200();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_22F335CC0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_22F335B90(0, v2, 1, a1);
  }
}

uint64_t sub_22F335B90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v18 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = *(v8 + 24);
      v12 = *(*v6 + 24);
      if (v11 == v12)
      {
        v13 = *(*(v8 + 16) + 16);

        [v13 nodeIdentifier];
        [*(*(v10 + 16) + 16) nodeIdentifier];
        v14 = sub_22F741770();

        if (v14 <= 0)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v11)
      {
        goto LABEL_4;
      }

      if (!v5)
      {
        break;
      }

      v15 = *v6;
      v8 = v6[1];
      *v6 = v8;
      v6[1] = v15;
      --v6;
      if (__CFADD__(v9++, 1))
      {
LABEL_4:
        ++v4;
        v6 = v18 + 1;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22F335CC0(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_97:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_99:
      v94 = *(v9 + 2);
      if (v94 >= 2)
      {
        do
        {
          v95 = *v6;
          if (!*v6)
          {
            goto LABEL_133;
          }

          v6 = *&v9[16 * v94];
          v96 = *&v9[16 * v94 + 24];
          sub_22F3363E8((v95 + 8 * v6), (v95 + 8 * *&v9[16 * v94 + 16]), (v95 + 8 * v96), v7);
          if (v5)
          {
            break;
          }

          if (v96 < v6)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_22F3F5F98(v9);
          }

          if (v94 - 2 >= *(v9 + 2))
          {
            goto LABEL_123;
          }

          v97 = &v9[16 * v94];
          *v97 = v6;
          *(v97 + 1) = v96;
          sub_22F3F5F0C(v94 - 1);
          v94 = *(v9 + 2);
          v6 = a3;
        }

        while (v94 > 1);
      }

LABEL_107:

      return;
    }

LABEL_129:
    v9 = sub_22F3F5F98(v9);
    goto LABEL_99;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
LABEL_4:
  v10 = v8;
  v11 = v8 + 1;
  v103 = v9;
  if (v8 + 1 < v7)
  {
    v12 = *v6;
    v13 = *(v12 + 8 * v11);
    v14 = *(v12 + 8 * v8);
    v15 = *(v13 + 24);
    v16 = *(v14 + 24);
    if (v15 == v16)
    {
      v17 = *(*(v13 + 16) + 16);

      [v17 nodeIdentifier];
      [*(*(v14 + 16) + 16) nodeIdentifier];
      v18 = sub_22F741770();

      v19 = v18 > 0;
    }

    else
    {
      v19 = v16 < v15;
    }

    v105 = v19;
    v10 = v8;
    v11 = v8 + 2;
    if (v8 + 2 < v7)
    {
      v20 = v12 + 8 * v8 + 16;
      do
      {
        v21 = v11;
        v22 = *(v20 - 8);
        v23 = *(*v20 + 24);
        v24 = *(v22 + 24);
        if (v23 == v24)
        {
          v25 = *(*(*v20 + 16) + 16);

          [v25 nodeIdentifier];
          v9 = v103;
          [*(*(v22 + 16) + 16) nodeIdentifier];
          v26 = sub_22F741770();

          if (((v105 ^ (v26 < 1)) & 1) == 0)
          {
LABEL_14:
            v11 = v21;
            goto LABEL_16;
          }
        }

        else if (v105 == v24 >= v23)
        {
          goto LABEL_14;
        }

        v11 = v21 + 1;
        v20 += 8;
      }

      while (v7 != v21 + 1);
      v11 = v7;
LABEL_16:
      v10 = v8;
    }

    v6 = a3;
    if (v105)
    {
      if (v11 < v10)
      {
        goto LABEL_126;
      }

      if (v10 < v11)
      {
        v27 = 8 * v11 - 8;
        v28 = 8 * v10;
        v29 = v11;
        v30 = v10;
        do
        {
          if (v30 != --v29)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_132;
            }

            v31 = *(v32 + v28);
            *(v32 + v28) = *(v32 + v27);
            *(v32 + v27) = v31;
          }

          ++v30;
          v27 -= 8;
          v28 += 8;
        }

        while (v30 < v29);
      }
    }
  }

  v33 = *(v6 + 8);
  if (v11 >= v33)
  {
    goto LABEL_46;
  }

  if (__OFSUB__(v11, v10))
  {
    goto LABEL_125;
  }

  if (v11 - v10 >= a4)
  {
    goto LABEL_46;
  }

  v34 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_127;
  }

  if (v34 >= v33)
  {
    v34 = *(v6 + 8);
  }

  if (v34 < v10)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v11 == v34)
  {
    goto LABEL_46;
  }

  v98 = v5;
  v35 = *v6;
  v36 = v35 + 8 * v11 - 8;
  v100 = v10;
  v37 = v10 - v11;
  v104 = v34;
LABEL_36:
  v106 = v11;
  v38 = *(v35 + 8 * v11);
  v39 = v37;
  v7 = v36;
  while (1)
  {
    v40 = *v7;
    v41 = *(v38 + 24);
    v42 = *(*v7 + 24);
    if (v41 == v42)
    {
      v43 = *(*(v38 + 16) + 16);

      [v43 nodeIdentifier];
      [*(*(v40 + 16) + 16) nodeIdentifier];
      v44 = sub_22F741770();

      if (v44 <= 0)
      {
        goto LABEL_35;
      }
    }

    else if (v42 >= v41)
    {
      goto LABEL_35;
    }

    if (!v35)
    {
      break;
    }

    v45 = *v7;
    v38 = *(v7 + 8);
    *v7 = v38;
    *(v7 + 8) = v45;
    v7 -= 8;
    if (__CFADD__(v39++, 1))
    {
LABEL_35:
      v11 = v106 + 1;
      v36 += 8;
      --v37;
      if (v106 + 1 != v104)
      {
        goto LABEL_36;
      }

      v11 = v104;
      v5 = v98;
      v6 = a3;
      v9 = v103;
      v10 = v100;
LABEL_46:
      if (v11 < v10)
      {
        goto LABEL_124;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_22F13D970(0, *(v9 + 2) + 1, 1, v9);
      }

      v48 = *(v9 + 2);
      v47 = *(v9 + 3);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v9 = sub_22F13D970((v47 > 1), v48 + 1, 1, v9);
      }

      *(v9 + 2) = v49;
      v50 = &v9[16 * v48];
      *(v50 + 4) = v10;
      *(v50 + 5) = v11;
      v107 = v11;
      v51 = *a1;
      if (!*a1)
      {
        goto LABEL_134;
      }

      if (v48)
      {
        while (1)
        {
          v52 = v49 - 1;
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v53 = *(v9 + 4);
            v54 = *(v9 + 5);
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_66:
            if (v56)
            {
              goto LABEL_113;
            }

            v69 = &v9[16 * v49];
            v71 = *v69;
            v70 = *(v69 + 1);
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_116;
            }

            v75 = &v9[16 * v52 + 32];
            v77 = *v75;
            v76 = *(v75 + 1);
            v63 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v63)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v73, v78))
            {
              goto LABEL_120;
            }

            if (v73 + v78 >= v55)
            {
              if (v55 < v78)
              {
                v52 = v49 - 2;
              }

              goto LABEL_87;
            }

            goto LABEL_80;
          }

          v79 = &v9[16 * v49];
          v81 = *v79;
          v80 = *(v79 + 1);
          v63 = __OFSUB__(v80, v81);
          v73 = v80 - v81;
          v74 = v63;
LABEL_80:
          if (v74)
          {
            goto LABEL_115;
          }

          v82 = &v9[16 * v52];
          v84 = *(v82 + 4);
          v83 = *(v82 + 5);
          v63 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v63)
          {
            goto LABEL_118;
          }

          if (v85 < v73)
          {
            goto LABEL_3;
          }

LABEL_87:
          v90 = v52 - 1;
          if (v52 - 1 >= v49)
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

          v91 = *v6;
          if (!*v6)
          {
            goto LABEL_131;
          }

          v92 = v6;
          v6 = *&v9[16 * v90 + 32];
          v7 = *&v9[16 * v52 + 40];
          sub_22F3363E8((v91 + 8 * v6), (v91 + 8 * *&v9[16 * v52 + 32]), (v91 + 8 * v7), v51);
          if (v5)
          {
            goto LABEL_107;
          }

          if (v7 < v6)
          {
            goto LABEL_109;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_22F3F5F98(v9);
          }

          if (v90 >= *(v9 + 2))
          {
            goto LABEL_110;
          }

          v93 = &v9[16 * v90];
          *(v93 + 4) = v6;
          *(v93 + 5) = v7;
          sub_22F3F5F0C(v52);
          v49 = *(v9 + 2);
          v6 = v92;
          if (v49 <= 1)
          {
            goto LABEL_3;
          }
        }

        v57 = &v9[16 * v49 + 32];
        v58 = *(v57 - 64);
        v59 = *(v57 - 56);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_111;
        }

        v62 = *(v57 - 48);
        v61 = *(v57 - 40);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_112;
        }

        v64 = &v9[16 * v49];
        v66 = *v64;
        v65 = *(v64 + 1);
        v63 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v63)
        {
          goto LABEL_114;
        }

        v63 = __OFADD__(v55, v67);
        v68 = v55 + v67;
        if (v63)
        {
          goto LABEL_117;
        }

        if (v68 >= v60)
        {
          v86 = &v9[16 * v52 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v63 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v63)
          {
            goto LABEL_121;
          }

          if (v55 < v89)
          {
            v52 = v49 - 2;
          }

          goto LABEL_87;
        }

        goto LABEL_66;
      }

LABEL_3:
      v7 = *(v6 + 8);
      v8 = v107;
      if (v107 >= v7)
      {
        goto LABEL_97;
      }

      goto LABEL_4;
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

uint64_t sub_22F3363E8(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      v15 = *v4;
      v16 = *(*v6 + 24);
      v17 = *(*v4 + 24);
      if (v16 == v17)
      {
        v18 = *(*(*v6 + 16) + 16);

        [v18 nodeIdentifier];
        [*(*(v15 + 16) + 16) nodeIdentifier];
        v19 = sub_22F741770();

        if (v19 > 0)
        {
          goto LABEL_13;
        }
      }

      else if (v17 < v16)
      {
LABEL_13:
        v20 = v6;
        v21 = v7 == v6;
        v6 += 8;
        if (v21)
        {
          goto LABEL_15;
        }

LABEL_14:
        *v7 = *v20;
        goto LABEL_15;
      }

      v20 = v4;
      v21 = v7 == v4;
      v4 += 8;
      if (!v21)
      {
        goto LABEL_14;
      }

LABEL_15:
      v7 += 8;
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_43;
      }
    }
  }

  if (a4 != __dst || &__dst[8 * v13] <= a4)
  {
    memmove(a4, __dst, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_27:
    v22 = v6 - 8;
    v5 -= 8;
    v23 = v14;
    v32 = v6 - 8;
    while (1)
    {
      v25 = *(v23 - 1);
      v23 -= 8;
      v24 = v25;
      v26 = *v22;
      v27 = *(v25 + 24);
      v28 = *(*v22 + 24);
      if (v27 == v28)
      {
        v29 = *(*(v24 + 16) + 16);

        [v29 nodeIdentifier];
        [*(*(v26 + 16) + 16) nodeIdentifier];
        v30 = sub_22F741770();

        if (v30 > 0)
        {
          goto LABEL_35;
        }
      }

      else if (v28 < v27)
      {
LABEL_35:
        if (v5 + 8 != v6)
        {
          *v5 = *v32;
        }

        if (v14 <= v4 || (v6 -= 8, v32 <= v7))
        {
          v6 = v32;
          break;
        }

        goto LABEL_27;
      }

      if (v5 + 8 != v14)
      {
        *v5 = *v23;
      }

      v5 -= 8;
      v14 = v23;
      v22 = v6 - 8;
      if (v23 <= v4)
      {
        v14 = v23;
        break;
      }
    }
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

double sub_22F336710(void *a1, void *a2)
{
  if (![a1 isTripMemory])
  {
    return 0.0;
  }

  v3 = [a2 isTripMemory];
  LODWORD(result) = 1.0;
  if (!v3)
  {
    return 0.0;
  }

  return result;
}

uint64_t _s11PhotosGraph6UpNextO21ScoredMatchingResultsC5score08matchingG06source7weightsAEXDSayAC0F6ResultCG_So04PGUpdF4Info_pAC0F10DimensionsVtFZ_0(unint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  v9 = a3[4];
  v10 = a3[5];
  v11 = a3[6];
  if (a1 >> 62)
  {
    v12 = sub_22F741A00();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v31 = MEMORY[0x277D84F90];
    result = sub_22F741BD0();
    if (v12 < 0)
    {
      __break(1u);
      return result;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v15 = 0;
      do
      {
        v16 = v15 + 1;
        MEMORY[0x2319016F0]();
        v32 = __PAIR64__(v6, v5);
        v33 = v7;
        v34 = v8;
        v35 = v9;
        v36 = v10;
        v37 = v11;
        UpNext.MatchingResult.score(weights:)(&v32);
        swift_unknownObjectRelease();
        sub_22F741BA0();
        sub_22F741BE0();
        sub_22F741BF0();
        sub_22F741BB0();
        v15 = v16;
      }

      while (v12 != v16);
    }

    else
    {
      v17 = a1 + 32;
      do
      {
        v17 += 8;
        v32 = __PAIR64__(v6, v5);
        v33 = v7;
        v34 = v8;
        v35 = v9;
        v36 = v10;
        v37 = v11;
        UpNext.MatchingResult.score(weights:)(&v32);
        sub_22F741BA0();
        sub_22F741BE0();
        sub_22F741BF0();
        sub_22F741BB0();
        --v12;
      }

      while (v12);
    }

    v13 = v31;
  }

  v38 = v13;
  sub_22F33469C(&v38);
  if (qword_2810A93F0 != -1)
  {
    swift_once();
  }

  v18 = sub_22F740B90();
  __swift_project_value_buffer(v18, qword_2810B4CB0);
  v19 = sub_22F740B70();
  v20 = sub_22F7415F0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32 = v22;
    *v21 = 136315138;
    swift_beginAccess();
    v23 = type metadata accessor for UpNext.ScoredMatchingResult();

    v25 = MEMORY[0x231900D40](v24, v23);
    v27 = v26;

    v28 = sub_22F145F20(v25, v27, &v32);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_22F0FC000, v19, v20, "scoredMatchingResults: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x2319033A0](v22, -1, -1);
    MEMORY[0x2319033A0](v21, -1, -1);
  }

  swift_beginAccess();
  v29 = v38;
  type metadata accessor for UpNext.ScoredMatchingResults();
  v30 = swift_allocObject();
  *(v30 + 16) = a2;
  *(v30 + 24) = v5;
  *(v30 + 28) = v6;
  *(v30 + 32) = v7;
  *(v30 + 36) = v8;
  *(v30 + 40) = v9;
  *(v30 + 44) = v10;
  *(v30 + 48) = v11;
  *(v30 + 56) = v29;
  swift_unknownObjectRetain();
  return v30;
}

unint64_t sub_22F336AA8()
{
  result = qword_27DAB38F0;
  if (!qword_27DAB38F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB38F0);
  }

  return result;
}

void _s11PhotosGraph6UpNextO14MatchingResultC18locationSimilarityySfSo04PGUpdE4Info_p_So0idE6Target_ptFZ_0(void *a1, void *a2)
{
  v3 = [a1 representativeLocation];
  if (v3)
  {
    v4 = v3;
    v5 = [a2 representativeLocation];
    if (v5)
    {
      v6 = v5;
      [v4 distanceFromLocation_];
      v8 = v7;

      v9 = v8;
      if (v9 >= 100000.0 && v9 <= 3000000.0)
      {
        v10 = v8;
        logf(v10);
      }
    }

    else
    {
    }
  }
}

void _s11PhotosGraph6UpNextO14MatchingResultC15_dateSimilarity_10targetDateSfSo04PGUpdE4Info_p_10Foundation0J0VtFZ_0(void *a1, uint64_t a2)
{
  v3 = sub_22F73F690();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v15 - v9;
  v11 = [a1 representativeDate];
  if (v11)
  {
    v12 = v11;
    sub_22F73F640();

    (*(v4 + 32))(v10, v6, v3);
    sub_22F73F590();
    *&v13 = v13;
    v14 = fabsf(*&v13);
    if (v14 >= 1209600.0)
    {
      (*(v4 + 8))(v10, v3);
      if (v14 <= 259200000.0)
      {
        logf(v14);
      }
    }

    else
    {
      (*(v4 + 8))(v10, v3);
    }
  }
}

float sub_22F336DD0(void *a1, void *a2, SEL *a3)
{
  v5 = [a1 *a3];
  if (!v5)
  {
    return NAN;
  }

  v6 = v5;
  v7 = [a2 *a3];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 elementIdentifiers];
    v10 = [v8 elementIdentifiers];
    sub_22F335500(v10);
    v12 = v11;

    v6 = v10;
  }

  else
  {
    v12 = NAN;
  }

  return v12;
}

__n128 __swift_memcpy28_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_22F336EEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F336F0C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 28) = v3;
  return result;
}

unint64_t sub_22F337004()
{
  result = qword_27DAB3900;
  if (!qword_27DAB3900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3900);
  }

  return result;
}

unint64_t sub_22F33705C()
{
  result = qword_27DAB3908;
  if (!qword_27DAB3908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3908);
  }

  return result;
}

unint64_t sub_22F3370B4()
{
  result = qword_27DAB3910;
  if (!qword_27DAB3910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3910);
  }

  return result;
}

uint64_t sub_22F337108(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E656373 && a2 == 0xE500000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E696E61656DLL && a2 == 0xE700000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x654679726F6D656DLL && a2 == 0xED00006572757461 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1885958772 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

__n128 static MaestroMatrixGenerator.generateSpecifications(fromSpecificationsURL:)@<Q0>(uint64_t a2@<X8>)
{
  v4 = sub_22F73F480();
  if (!v2)
  {
    v7 = v4;
    v8 = v5;
    sub_22F73F310();
    swift_allocObject();
    sub_22F73F300();
    sub_22F1DF35C();
    sub_22F73F2F0();
    sub_22F133BF0(v7, v8);

    result = v10;
    *a2 = v9;
    *(a2 + 16) = v10;
    *(a2 + 32) = v11;
    *(a2 + 40) = v12;
  }

  return result;
}

uint64_t sub_22F337440()
{
  v1 = *v0;
  v2 = 0x7364726F7779656BLL;
  v3 = 1937207154;
  v4 = 0x736E6D756C6F63;
  if (v1 != 3)
  {
    v4 = 1701667182;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x696669746E656469;
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

uint64_t sub_22F3374D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F338B5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F3374FC(uint64_t a1)
{
  v2 = sub_22F3377F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F337538(uint64_t a1)
{
  v2 = sub_22F3377F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MaestroDataFrameSpecifications.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3920, &unk_22F7865E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v13[3] = v1[2];
  v14 = v8;
  v11 = v1[5];
  v13[0] = v1[4];
  v13[1] = v11;
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F3377F0();

  sub_22F742210();
  v16 = v9;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F1BA494(&qword_2810A92E8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_22F741FE0();
  if (v2)
  {
  }

  else
  {

    v16 = v14;
    v15 = 1;
    sub_22F741FE0();
    LOBYTE(v16) = 2;
    sub_22F741FC0();
    LOBYTE(v16) = 3;
    sub_22F741FC0();
    LOBYTE(v16) = 4;
    sub_22F741F80();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_22F3377F0()
{
  result = qword_2810A9E30;
  if (!qword_2810A9E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9E30);
  }

  return result;
}

void MaestroDataFrameSpecifications.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3928, &qword_22F7865F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F3377F0();
  sub_22F742200();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v9 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    v20 = 0;
    sub_22F1BA494(&qword_2810A92D8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_22F741F10();
    v19 = v21;
    v20 = 1;
    sub_22F741F10();
    v10 = v21;
    LOBYTE(v21) = 2;
    v18 = sub_22F741EF0();
    LOBYTE(v21) = 3;
    v17 = sub_22F741EF0();
    LOBYTE(v21) = 4;
    v11 = sub_22F741EB0();
    v13 = v12;
    v14 = v11;
    (*(v6 + 8))(v8, v5);
    v15 = v18;
    *v9 = v19;
    v9[1] = v10;
    v16 = v17;
    v9[2] = v15;
    v9[3] = v16;
    v9[4] = v14;
    v9[5] = v13;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t sub_22F337BB4(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v9 = result;
  if (result)
  {
    result = sub_22F741200();
    *(result + 16) = v9;
  }

  else
  {
    result = MEMORY[0x277D84F90];
  }

  v10 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_27;
    }

    v13 = *(a2 + 16);
    v12 = *(a2 + 24);
    v14 = __OFSUB__(v12, v13);
    v11 = v12 - v13;
    if (v14)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v11 < 1)
    {
      goto LABEL_27;
    }

    goto LABEL_15;
  }

  if (!v10)
  {
    v11 = BYTE6(a3);
    if (!BYTE6(a3))
    {
      goto LABEL_27;
    }

    goto LABEL_15;
  }

  LODWORD(v11) = HIDWORD(a2) - a2;
  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    v11 = v11;
    if (v11 < 1)
    {
      goto LABEL_27;
    }

LABEL_15:
    if (v10)
    {
      if (v10 == 2)
      {
        v15 = *(a2 + 16);
      }

      else
      {
        v15 = a2;
      }
    }

    else
    {
      v15 = 0;
    }

    if (v9 >> 61)
    {
      goto LABEL_33;
    }

    v16 = 4 * v9;
    if (v11 < (4 * v9))
    {
      v16 = v11;
    }

    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_34;
    }

    if (v17 < v15)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v15 != v17)
    {
      v18 = result;
      sub_22F73F4E0();
      result = v18;
    }

LABEL_27:
    v19 = a4 * a5;
    if ((a4 * a5) >> 64 == (a4 * a5) >> 63)
    {
      if (v19 <= v9)
      {
        *(result + 16) = v19;
        return result;
      }

      goto LABEL_32;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_37:
  __break(1u);
  return result;
}

char *sub_22F337D24(char *a1, char **a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EC0, &qword_22F7867E0);
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  v12 = *a2;
  v49 = a2[1];
  v13 = a2[3];
  v54 = a2[2];
  v52 = v12;
  v53 = v13;
  v14 = a2[4];
  v15 = a2[5];
  v51 = v14;
  v16 = objc_autoreleasePoolPush();
  v17 = objc_autoreleasePoolPush();
  v18 = objc_autoreleasePoolPush();
  v19 = sub_22F73F480();
  if (v2)
  {
    objc_autoreleasePoolPop(v18);
    objc_autoreleasePoolPop(v17);
    objc_autoreleasePoolPop(v16);
    return v3;
  }

  v21 = v19;
  v43 = v17;
  v44 = v8;
  v45 = v11;
  v46 = v16;
  v47 = v6;
  v48 = v15;
  v22 = v54;
  v23 = v53;
  if ((v53 * v54) >> 64 != (v53 * v54) >> 63)
  {
    __break(1u);
LABEL_21:
    result = sub_22F2F2C80(a1);
    a1 = result;
    goto LABEL_14;
  }

  v24 = v20;
  sub_22F337BB4(v53 * v54, v19, v20, v53, v54);
  v42 = 0;
  sub_22F133BF0(v21, v24);
  objc_autoreleasePoolPop(v18);
  v25 = v45;
  sub_22F73FCC0();
  objc_autoreleasePoolPop(v43);
  v26 = v50;
  v27 = v44;
  v28 = v47;
  (*(v50 + 16))(v44, v25, v47);
  v29 = objc_allocWithZone(sub_22F73FBB0());
  v30 = MEMORY[0x2318FF740](v27);
  v22 = [objc_allocWithZone(MEMORY[0x277D22C38]) initWithWrapper_];

  (*(v26 + 8))(v25, v28);
  objc_autoreleasePoolPop(v46);
  a1 = v52;
  v31 = *(v52 + 2);
  if (!v31)
  {
LABEL_12:

LABEL_16:
    v36 = objc_allocWithZone(MEMORY[0x277D22C08]);
    v37 = v22;
    v38 = sub_22F740DF0();
    v39 = sub_22F741160();
    v40 = sub_22F741160();

    v3 = [v36 initWithName:v38 rowLabels:v39 columnLabels:v40 matrix:v37];

    if (!v3)
    {
      sub_22F338D10();
      v3 = swift_allocError();
      *v41 = 0;
      swift_willThrow();
    }

    return v3;
  }

  v6 = 0;
  v8 = 0;
  while (1)
  {
    v32 = *&a1[v6 + 32] == 0x7265776F6C46 && *&a1[v6 + 40] == 0xE600000000000000;
    if (v32 || (sub_22F742040() & 1) != 0)
    {
      break;
    }

    ++v8;
    v6 += 16;
    if (v31 == v8)
    {
      goto LABEL_12;
    }
  }

  v21 = sub_22F740E20();
  v23 = v33;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  if (v8 < *(a1 + 2))
  {
    v35 = &a1[v6];
    *(v35 + 4) = v21;
    *(v35 + 5) = v23;

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_22F338140(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_2810A9AB0 != -1)
  {
    goto LABEL_69;
  }

  while (1)
  {
    v86 = a1;
    v5 = qword_2810B4DD8;
    *&v6 = CACurrentMediaTime();
    sub_22F1B560C("GenerateFlexMusicMaestroDataFrame", 33, 2u, v6, 0, v5, v95);
    v7 = *(a2 + 16);
    v85 = v7;
    if (v7)
    {
      v8 = sub_22F10B348(v7, 0);
      v9 = sub_22F11A438(&v94, v8 + 4, v7, a2);
      v10 = v94;

      sub_22F0FF590(v10);
      if (v9 == v7)
      {
        goto LABEL_6;
      }

      __break(1u);
    }

    v8 = MEMORY[0x277D84F90];
LABEL_6:
    v94 = v8;

    v11 = v3;
    sub_22F1AB0EC(&v94);
    if (v3)
    {
      goto LABEL_72;
    }

    v12 = *(v94 + 2);

    v82 = a1;
    if (!v12)
    {
      break;
    }

    v13 = 0;
    v14 = (a1 + 40);
    v15 = MEMORY[0x277D84F98];
    while (1)
    {
      v17 = *(a1 + 16);
      if (v13 == v17)
      {
        goto LABEL_24;
      }

      if (v13 >= v17)
      {
        goto LABEL_66;
      }

      v3 = v15;
      v18 = *(v14 - 1);
      a2 = *v14;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94 = v3;
      a1 = sub_22F1229E8(v18, a2);
      v21 = v3[2];
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = &v21[v22];
      if (v23)
      {
        break;
      }

      v25 = v20;
      if (v3[3] < v24)
      {
        sub_22F125704(v24, isUniquelyReferenced_nonNull_native);
        v3 = v94;
        a1 = sub_22F1229E8(v18, a2);
        if ((v25 & 1) != (v26 & 1))
        {
          goto LABEL_71;
        }

LABEL_18:
        if (v25)
        {
          goto LABEL_9;
        }

        goto LABEL_19;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }

      v3 = &v94;
      v31 = a1;
      sub_22F1341B0();
      a1 = v31;
      if (v25)
      {
LABEL_9:
        v16 = a1;

        v15 = v94;
        *(*(v94 + 7) + 8 * v16) = v13;

        goto LABEL_10;
      }

LABEL_19:
      v27 = v94;
      *&v94[8 * (a1 >> 6) + 64] |= 1 << a1;
      v28 = (*(v27 + 6) + 16 * a1);
      *v28 = v18;
      v28[1] = a2;
      v15 = v27;
      *(*(v27 + 7) + 8 * a1) = v13;

      v29 = *(v15 + 2);
      v23 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v23)
      {
        goto LABEL_68;
      }

      *(v15 + 2) = v30;
LABEL_10:
      ++v13;
      v14 += 2;
      a1 = v82;
      if (v12 == v13)
      {
        goto LABEL_24;
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    v79 = a1;
    swift_once();
    a1 = v79;
  }

  v15 = MEMORY[0x277D84F98];
LABEL_24:

  v3 = v86;
  v32 = *(v86 + 16);
  v88 = v15;
  if (!v32)
  {
    v33 = MEMORY[0x277D84F90];
    v34 = v85;
    goto LABEL_28;
  }

  v33 = sub_22F10B348(v32, 0);
  a2 = sub_22F120B3C();
  v11 = v94;

  sub_22F0FF590(v11);
  v34 = v85;
  if (a2 == v32)
  {
LABEL_28:
    v94 = v33;
    sub_22F1AB0EC(&v94);
    v35 = v94;
    a1 = [objc_allocWithZone(MEMORY[0x277D22C60]) init];
    v87 = v35;
    v83 = *(v35 + 2);
    v84 = a1;
    if (v83)
    {
      v36 = 0;
      v80 = 4 * v34;
      v81 = v35 + 32;
      do
      {
        if (v36 >= *(v87 + 2))
        {
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        if (v3[2] && (v40 = &v81[16 * v36], v41 = *v40, v42 = v40[1], , v43 = sub_22F1229E8(v41, v42), v45 = v44, , (v45 & 1) != 0))
        {
          v46 = *&v3[7][8 * v43];

          if (v34)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v46 = MEMORY[0x277D84F98];
          if (v34)
          {
LABEL_37:
            v47 = sub_22F741200();
            *(v47 + 16) = v34;
            bzero((v47 + 32), v80);
            goto LABEL_38;
          }
        }

        v47 = MEMORY[0x277D84F90];
LABEL_38:
        v48 = 0;
        a1 = v36 + 1;
        a2 = v46 + 64;
        v49 = 1 << *(v46 + 32);
        if (v49 < 64)
        {
          v50 = ~(-1 << v49);
        }

        else
        {
          v50 = -1;
        }

        v51 = v50 & *(v46 + 64);
        v52 = (v49 + 63) >> 6;
        v91 = v46;
        v92 = v47;
        v89 = a1;
        v90 = v47 + 32;
        while (v51)
        {
          v53 = v48;
LABEL_48:
          v54 = __clz(__rbit64(v51));
          v51 &= v51 - 1;
          v55 = v54 | (v53 << 6);
          v56 = (*(v46 + 48) + 16 * v55);
          v3 = *v56;
          v57 = v56[1];
          v58 = *(*(v46 + 56) + 4 * v55);
          v59 = *(v15 + 2);

          if (v59 && (v60 = sub_22F1229E8(v3, v57), (v61 & 1) != 0))
          {
            v62 = v60;

            v63 = *(*(v15 + 7) + 8 * v62);
            if ((v63 & 0x8000000000000000) != 0)
            {
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

            if (v63 >= *(v92 + 16))
            {
              goto LABEL_64;
            }

            *(v90 + 4 * v63) = v58;
            v48 = v53;
          }

          else
          {
            v64 = sub_22F7415E0();
            if (qword_27DAAFCD8 != -1)
            {
              v70 = v64;
              swift_once();
              v64 = v70;
            }

            v93 = v64;
            v65 = qword_27DAB2038;
            if (os_log_type_enabled(qword_27DAB2038, v64))
            {
              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              v94 = v67;
              *v66 = 136315138;
              v3 = sub_22F145F20(v3, v57, &v94);

              *(v66 + 4) = v3;
              _os_log_impl(&dword_22F0FC000, v65, v93, "Flex Music song has weighted keyword (%s not in input keyword set.", v66, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v67);
              v68 = v67;
              v46 = v91;
              MEMORY[0x2319033A0](v68, -1, -1);
              v69 = v66;
              v15 = v88;
              a1 = MEMORY[0x2319033A0](v69, -1, -1);
            }

            else
            {
            }

            v48 = v53;
          }
        }

        while (1)
        {
          v53 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            __break(1u);
            goto LABEL_63;
          }

          if (v53 >= v52)
          {
            break;
          }

          v51 = *(a2 + 8 * v53);
          ++v48;
          if (v51)
          {
            goto LABEL_48;
          }
        }

        v37 = objc_allocWithZone(sub_22F73FBE0());
        v38 = MEMORY[0x2318FF780](v92);
        v39 = [objc_allocWithZone(MEMORY[0x277D22C40]) initWithWrapper_];

        [v84 appendRow_];
        v36 = v89;
        v34 = v85;
        v3 = v86;
      }

      while (v89 != v83);
    }

    v71 = objc_allocWithZone(MEMORY[0x277D22C08]);
    v72 = v84;
    v73 = sub_22F740DF0();
    v74 = sub_22F741160();

    v75 = sub_22F741160();

    v76 = [v71 initWithName:v73 rowLabels:v74 columnLabels:v75 matrix:v72];

    if (v76)
    {
      sub_22F1B2BBC(0);
    }

    else
    {
      sub_22F338D10();
      swift_allocError();
      *v77 = 2;
      swift_willThrow();
    }

    return v76;
  }

  else
  {
    __break(1u);
LABEL_71:
    sub_22F7420C0();
    __break(1u);
LABEL_72:

    __break(1u);
  }

  return result;
}

uint64_t sub_22F338990(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22F3389D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22F338A58()
{
  result = qword_27DAB3930;
  if (!qword_27DAB3930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3930);
  }

  return result;
}

unint64_t sub_22F338AB0()
{
  result = qword_2810A9E20;
  if (!qword_2810A9E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9E20);
  }

  return result;
}

unint64_t sub_22F338B08()
{
  result = qword_2810A9E28;
  if (!qword_2810A9E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9E28);
  }

  return result;
}

uint64_t sub_22F338B5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7364726F7779656BLL && a2 == 0xE800000000000000;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEB00000000737265 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1937207154 && a2 == 0xE400000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_22F338D10()
{
  result = qword_27DAB3938;
  if (!qword_27DAB3938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3938);
  }

  return result;
}

unint64_t sub_22F338D78()
{
  result = qword_27DAB3940;
  if (!qword_27DAB3940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3940);
  }

  return result;
}

id SearchEntityPersister.__allocating_init(with:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___PGSearchEntityPersister_logger;
  if (qword_2810A9400 != -1)
  {
    swift_once();
  }

  v5 = sub_22F740B90();
  v6 = __swift_project_value_buffer(v5, qword_2810B4CE0);
  (*(*(v5 - 8) + 16))(&v3[v4], v6, v5);
  *&v3[OBJC_IVAR___PGSearchEntityPersister_batchSize] = 100;
  *&v3[OBJC_IVAR___PGSearchEntityPersister_photoLibrary] = a1;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SearchEntityPersister.init(with:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___PGSearchEntityPersister_logger;
  if (qword_2810A9400 != -1)
  {
    swift_once();
  }

  v5 = sub_22F740B90();
  v6 = __swift_project_value_buffer(v5, qword_2810B4CE0);
  (*(*(v5 - 8) + 16))(&v1[v4], v6, v5);
  *&v1[OBJC_IVAR___PGSearchEntityPersister_batchSize] = 100;
  *&v1[OBJC_IVAR___PGSearchEntityPersister_photoLibrary] = a1;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t SearchEntityPersister.persistSearchEntities(from:progressReporter:)(void *a1)
{
  v2 = v1;
  v75 = *MEMORY[0x277D85DE8];
  if (qword_2810A9AD0 != -1)
  {
    swift_once();
  }

  v4 = qword_2810B4DF0;
  *&v5 = CACurrentMediaTime();
  sub_22F1B560C("SearchEntityPersister.persistSearchEntities", 43, 2u, v5, 0, v4, v72);
  v6 = sub_22F7416B0();
  v58 = v7;
  *&v8 = CACurrentMediaTime();
  v62 = v4;
  sub_22F1B560C("SearchEntityPersister.persistSearchEntities - fetchPhotoKitObjects", 66, 2u, v8, 0, v4, v73);
  v9 = [a1 searchEntitiesByMomentUUID];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB32A8, &unk_22F7868C0);
  v10 = sub_22F740CA0();

  sub_22F339914(v10);
  v12 = v11;
  v13 = [a1 mePersonEntity];
  v14 = a1;
  v15 = v6;
  v16 = [v14 relatedPersonAndPetDescriptorByRelatedPersonIdentifier];
  type metadata accessor for RelatedPersonEntityDescriptor();
  v17 = sub_22F740CA0();

  v18 = sub_22F339B88(v17, v13);
  v20 = v19;
  sub_22F1B2BBC(0);
  sub_22F7416A0();
  if (v64)
  {

LABEL_16:

    goto LABEL_17;
  }

  v53 = v20;
  v54 = v17;
  v55 = v18;
  v56 = v13;
  v57 = v15;
  v21 = sub_22F740B70();
  v22 = sub_22F7415C0();
  v23 = v2;
  if (os_log_type_enabled(v21, v22))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_22F0FC000, v21, v22, "Completed fetching PhotoKit objects", v24, 2u);
    MEMORY[0x2319033A0](v24, -1, -1);
  }

  v60 = sub_22F7416B0();
  v52 = v25;
  *&v26 = CACurrentMediaTime();
  sub_22F1B560C("SearchEntityPersister.persistSearchEntities - performChanges", 60, 2u, v26, 0, v62, v74);
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  v51 = (v61 + 16);
  v63 = swift_allocObject();
  *(v63 + 16) = 0;
  v59 = OBJC_IVAR___PGSearchEntityPersister_photoLibrary;
  swift_beginAccess();
  v27 = *(v63 + 16);
  v28 = v12;
  if (v27 < [v12 count])
  {
    while (1)
    {
      v65 = *&v23[v59];
      v29 = swift_allocObject();
      v29[2] = v63;
      v29[3] = v23;
      v29[4] = v28;
      v29[5] = v10;
      v30 = v10;
      v29[6] = v60;
      v29[7] = v61;
      v70 = sub_22F33B7F8;
      v71 = v29;
      aBlock = MEMORY[0x277D85DD0];
      v67 = 1107296256;
      v68 = sub_22F33A524;
      v69 = &block_descriptor_12_1;
      v31 = _Block_copy(&aBlock);

      v32 = v23;
      v33 = v28;

      v34 = v60;

      aBlock = 0;
      v35 = [v65 performCancellableChangesAndWait:v31 error:&aBlock];
      _Block_release(v31);
      if (!v35)
      {
        break;
      }

      v36 = aBlock;
      v37 = *(v63 + 16);
      v28 = v12;
      v10 = v30;
      if (v37 >= [v33 count])
      {
        goto LABEL_10;
      }
    }

    v49 = aBlock;

    sub_22F73F370();

    swift_willThrow();

    goto LABEL_15;
  }

LABEL_10:

  v38 = *&v23[v59];
  v39 = swift_allocObject();
  v39[2] = v23;
  v39[3] = v55;
  v39[4] = v53;
  v39[5] = v54;
  v39[6] = v52;
  v39[7] = v61;
  v70 = sub_22F33B7C8;
  v71 = v39;
  aBlock = MEMORY[0x277D85DD0];
  v67 = 1107296256;
  v68 = sub_22F33A524;
  v69 = &block_descriptor_32;
  v40 = _Block_copy(&aBlock);
  v41 = v55;
  v42 = v52;
  v43 = v23;

  aBlock = 0;
  v44 = [v38 performCancellableChangesAndWait:v40 error:&aBlock];
  _Block_release(v40);
  if (!v44)
  {
    v48 = aBlock;
    sub_22F73F370();

    swift_willThrow();

LABEL_15:

    goto LABEL_16;
  }

  v45 = aBlock;
  sub_22F1B2BBC(0);
  swift_beginAccess();
  v46 = *v51;
  if (*v51)
  {
    swift_willThrow();
    v47 = v46;

LABEL_17:

    sub_22F1B2BBC(0);
  }

  sub_22F1B2BBC(0);
}

void sub_22F339914(uint64_t a1)
{
  v23 = [*(v1 + OBJC_IVAR___PGSearchEntityPersister_photoLibrary) librarySpecificFetchOptions];
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v5 &= v5 - 1;
    sub_22F120634(0, &qword_2810A8EA8, 0x277CD98F8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v10);

    v12 = sub_22F740DF0();
    v13 = [ObjCClassFromMetadata localIdentifierWithUUID_];

    if (v13)
    {
      v14 = sub_22F740E20();
      v16 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_22F13E1A8(0, *(v8 + 2) + 1, 1, v8);
      }

      v18 = *(v8 + 2);
      v17 = *(v8 + 3);
      if (v18 >= v17 >> 1)
      {
        v8 = sub_22F13E1A8((v17 > 1), v18 + 1, 1, v8);
      }

      *(v8 + 2) = v18 + 1;
      v19 = &v8[16 * v18];
      *(v19 + 4) = v14;
      *(v19 + 5) = v16;
    }

    else
    {
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      sub_22F120634(0, &qword_2810A8EA8, 0x277CD98F8);
      v21 = swift_getObjCClassFromMetadata(v20);
      v22 = sub_22F741160();

      [v21 fetchAssetCollectionsWithType:3 localIdentifiers:v22 options:v23];

      return;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

id sub_22F339B88(unint64_t *a1, char *a2)
{
  if (!a2 || (v3 = *&a2[OBJC_IVAR___PGGraphSearchEntity_identifier + 8]) == 0)
  {
    sub_22F15022C(MEMORY[0x277D84F90]);
    return 0;
  }

  v5 = *&a2[OBJC_IVAR___PGGraphSearchEntity_identifier];
  v6 = *(v2 + OBJC_IVAR___PGSearchEntityPersister_photoLibrary);
  v7 = a2;

  v8 = [v6 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22F771350;
  *(v9 + 32) = sub_22F742140();
  *(v9 + 40) = sub_22F742140();
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v10 = sub_22F741160();

  [v8 setIncludedDetectionTypes_];

  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22F771340;
  *(v12 + 32) = v5;
  *(v12 + 40) = v3;
  v13 = sub_22F741160();

  v14 = v8;
  v15 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_;
  v16 = [v11 fetchPersonsWithLocalIdentifiers:v13 options:v14];

  v17 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_;
  v18 = [v16 fetchedObjects];

  if (!v18)
  {
LABEL_44:

    sub_22F15022C(MEMORY[0x277D84F90]);
    return 0;
  }

  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  v19 = sub_22F741180();

  if (v19 >> 62)
  {
    goto LABEL_42;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_43:

    goto LABEL_44;
  }

  while ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x2319016F0](0, v19);
LABEL_9:
    v47 = v20;

    v19 = a1[2];
    v46 = v7;
    v48 = v14;
    if (v19)
    {
      sub_22F10B348(v19, 0);
      v21 = sub_22F120B3C();

      sub_22F0FF590(v52);
      if (v21 != v19)
      {
        goto LABEL_48;
      }

      v14 = v48;
      v17 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_;
      v15 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_;
    }

    v22 = sub_22F741160();

    v23 = [v11 v15[364]];

    v24 = [v23 v17[391]];
    if (v24)
    {
      v25 = sub_22F741180();

      if (v25 >> 62)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
      if (MEMORY[0x277D84F90] >> 62)
      {
LABEL_36:
        a1 = sub_22F741A00();
        if (!a1)
        {
LABEL_37:

          return v47;
        }

        goto LABEL_16;
      }
    }

    a1 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a1)
    {
      goto LABEL_37;
    }

LABEL_16:
    v7 = 0;
    v50 = v25 & 0xFFFFFFFFFFFFFF8;
    v51 = v25 & 0xC000000000000001;
    v11 = MEMORY[0x277D84F98];
    v49 = v25;
    while (1)
    {
      if (v51)
      {
        v28 = MEMORY[0x2319016F0](v7, v25);
      }

      else
      {
        if (v7 >= *(v50 + 16))
        {
          goto LABEL_39;
        }

        v28 = *(v25 + 8 * v7 + 32);
      }

      v29 = v28;
      v14 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v30 = [v28 localIdentifier];
      v31 = sub_22F740E20();
      v15 = v32;

      v17 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v11;
      v19 = sub_22F1229E8(v31, v15);
      v35 = v11[2];
      v36 = (v34 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_40;
      }

      v38 = v34;
      if (v11[3] >= v37)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v34)
          {
            goto LABEL_17;
          }
        }

        else
        {
          sub_22F1382C4();
          if (v38)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        sub_22F12CB14(v37, isUniquelyReferenced_nonNull_native);
        v39 = sub_22F1229E8(v31, v15);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_49;
        }

        v19 = v39;
        if (v38)
        {
LABEL_17:

          v26 = v11[7];
          v27 = *(v26 + 8 * v19);
          *(v26 + 8 * v19) = v17;

          goto LABEL_18;
        }
      }

      v11[(v19 >> 6) + 8] |= 1 << v19;
      v41 = (v11[6] + 16 * v19);
      *v41 = v31;
      v41[1] = v15;
      *(v11[7] + 8 * v19) = v17;

      v42 = v11[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_41;
      }

      v11[2] = v44;
LABEL_18:
      ++v7;
      v25 = v49;
      if (v14 == a1)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    if (!sub_22F741A00())
    {
      goto LABEL_43;
    }
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v19 + 32);
    goto LABEL_9;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

void sub_22F33A170(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v16 = *(a2 + 16);
  v17 = v16 + 100;
  if (__OFADD__(v16, 100))
  {
    __break(1u);
    goto LABEL_21;
  }

  v18 = [a4 count];
  if (__OFSUB__(v18, 1))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_7;
  }

  if ((v18 - 1) >= v17 - 1)
  {
    v7 = (v17 - 1);
  }

  else
  {
    v7 = v18 - 1;
  }

  swift_beginAccess();
  v8 = *(a2 + 16);
  if (qword_2810A9AD0 != -1)
  {
    goto LABEL_22;
  }

LABEL_7:
  v19 = qword_2810B4DF0;
  *&v20 = CACurrentMediaTime();
  sub_22F1B560C("SearchEntityPersister.persistMomentSearchEntities", 49, 2u, v20, 0, v19, v39);
  if (v7 < v8)
  {
    __break(1u);
  }

  else
  {
    v37 = a1;
    while (1)
    {
      v21 = objc_autoreleasePoolPush();
      sub_22F33AFDC(a4, v8, a3, a5, a6, &v38);
      objc_autoreleasePoolPop(v21);
      if (v7 == v8)
      {
        break;
      }

      v22 = __OFADD__(v8++, 1);
      if (v22)
      {
        __break(1u);
        v23 = v38;
        objc_autoreleasePoolPop(v21);
        sub_22F1B2BBC(0);

        v24 = v23;
        v25 = sub_22F740B70();
        v26 = sub_22F7415E0();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138412290;
          v29 = v23;
          v30 = _swift_stdlib_bridgeErrorToNSError();
          *(v27 + 4) = v30;
          *v28 = v30;
          _os_log_impl(&dword_22F0FC000, v25, v26, "SearchEntityPersister.persistSearchEntities threw an error: %@", v27, 0xCu);
          sub_22F2A87F0(v28);
          MEMORY[0x2319033A0](v28, -1, -1);
          MEMORY[0x2319033A0](v27, -1, -1);
        }

        swift_beginAccess();
        v31 = *(a7 + 16);
        *(a7 + 16) = v23;

        *v37 = 1;
        return;
      }
    }

    sub_22F1B2BBC(0);

    v32 = sub_22F740B70();
    v33 = sub_22F7415D0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134218240;
      swift_beginAccess();
      *(v34 + 4) = *(a2 + 16);

      *(v34 + 12) = 2048;
      *(v34 + 14) = v7;
      _os_log_impl(&dword_22F0FC000, v32, v33, "Completed persisting moment search entities from index %ld to %ld", v34, 0x16u);
      MEMORY[0x2319033A0](v34, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v35 = *(a2 + 16);
    v22 = __OFADD__(v35, 100);
    v36 = v35 + 100;
    if (!v22)
    {
      *(a2 + 16) = v36;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_22F33A524(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_22F33A578(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_22F33A770(a3, a4, a5);
  oslog = sub_22F740B70();
  v6 = sub_22F7415D0();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22F0FC000, oslog, v6, "Completed persisting person/pet relationships", v7, 2u);
    MEMORY[0x2319033A0](v7, -1, -1);
  }
}

uint64_t sub_22F33A770(char *a1, uint64_t a2, int64_t a3)
{
  v4 = v3;
  if (qword_2810A9AD0 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v8 = qword_2810B4DF0;
    *&v9 = CACurrentMediaTime();
    sub_22F1B560C("SearchEntityPersister.persistPersonAndPetRelationships", 54, 2u, v9, 0, v8, v65);
    if (!a1)
    {
      break;
    }

    v59 = v4;
    v10 = objc_opt_self();
    v11 = a1;
    v56 = v10;
    v12 = [v10 changeRequestForPerson_];
    v62 = v11;
    v13 = [v11 name];
    v55 = v12;
    [v12 addSearchEntityPersonRelationWithType:1 label:v13 confidence:0 toPerson:1.0];

    v4 = a3 + 64;
    v14 = 1 << *(a3 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(a3 + 64);
    v17 = (v14 + 63) >> 6;

    a1 = 0;
    v18 = 0;
    v58 = a3;
    v60 = v17;
    v61 = a2;
    if (v16)
    {
LABEL_10:
      v19 = v18;
      goto LABEL_14;
    }

    while (1)
    {
      do
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        if (v19 >= v17)
        {

          v48 = sub_22F740B70();
          v49 = sub_22F7415C0();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 134217984;
            *(v50 + 4) = *(a3 + 16);

            _os_log_impl(&dword_22F0FC000, v48, v49, "Finished persisting %ld relationships to me person", v50, 0xCu);
            MEMORY[0x2319033A0](v50, -1, -1);
          }

          else
          {
          }

          sub_22F7416A0();

          goto LABEL_40;
        }

        v16 = *(v4 + 8 * v19);
        ++v18;
      }

      while (!v16);
LABEL_14:
      if (__OFADD__(a1++, 1))
      {
        break;
      }

      v64 = a1;
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v22 = v21 | (v19 << 6);
      v23 = (*(a3 + 48) + 16 * v22);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(*(a3 + 56) + 8 * v22);
      v27 = *(a2 + 16);

      v28 = v26;
      v63 = v28;
      if (v27 && (v29 = v28, v30 = sub_22F1229E8(v25, v24), (v31 & 1) != 0))
      {
        v32 = v30;

        v33 = *(*(a2 + 56) + 8 * v32);
        v34 = [v56 changeRequestForPerson_];
        v57 = v33;
        v35 = [v33 name];
        [v34 addSearchEntityPersonRelationWithType:2 label:v35 confidence:0 toPerson:1.0];

        a2 = *&v29[OBJC_IVAR____TtC11PhotosGraph29RelatedPersonEntityDescriptor_confidenceByRelationType];
        a1 = (a2 + 64);
        v36 = 1 << *(a2 + 32);
        if (v36 < 64)
        {
          v37 = ~(-1 << v36);
        }

        else
        {
          v37 = -1;
        }

        v38 = v37 & *(a2 + 64);
        v39 = (v36 + 63) >> 6;

        a3 = 0;
        if (v38)
        {
          while (1)
          {
            v40 = a3;
LABEL_26:
            v41 = __clz(__rbit64(v38));
            v38 &= v38 - 1;
            [v34 addSearchEntityPersonRelationWithType:*(*(a2 + 48) + 2 * (v41 | (v40 << 6))) label:0 confidence:v62 toPerson:*(*(a2 + 56) + 8 * (v41 | (v40 << 6)))];
            if (!v38)
            {
              goto LABEL_22;
            }
          }
        }

        while (1)
        {
LABEL_22:
          v40 = a3 + 1;
          if (__OFADD__(a3, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          if (v40 >= v39)
          {
            break;
          }

          v38 = *&a1[8 * v40];
          ++a3;
          if (v38)
          {
            a3 = v40;
            goto LABEL_26;
          }
        }

        a3 = v58;
        a1 = v64;
        sub_22F741680();
        if (v59)
        {

          goto LABEL_40;
        }

        v18 = v19;
        v17 = v60;
        a2 = v61;
        if (v16)
        {
          goto LABEL_10;
        }
      }

      else
      {

        v42 = sub_22F740B70();
        v43 = sub_22F7415E0();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v66 = v45;
          *v44 = 136315138;
          v46 = sub_22F145F20(v25, v24, &v66);

          *(v44 + 4) = v46;
          _os_log_impl(&dword_22F0FC000, v42, v43, "No related PH person found for personIdentifier: %s", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v45);
          MEMORY[0x2319033A0](v45, -1, -1);
          v47 = v44;
          a3 = v58;
          MEMORY[0x2319033A0](v47, -1, -1);
        }

        else
        {
        }

        v18 = v19;
        v17 = v60;
        a2 = v61;
        a1 = v64;
        if (v16)
        {
          goto LABEL_10;
        }
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  v51 = sub_22F740B70();
  v52 = sub_22F7415C0();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_22F0FC000, v51, v52, "No me person, so no relationships to persist", v53, 2u);
    MEMORY[0x2319033A0](v53, -1, -1);
  }

  sub_22F7416A0();
LABEL_40:
  sub_22F1B2BBC(0);
}

id SearchEntityPersister.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchEntityPersister.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F33AFDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  *&v13 = MEMORY[0x28223BE20](v12 - 8).n128_u64[0];
  v81 = &v70 - v14;
  v74 = a1;
  v15 = [a1 objectAtIndexedSubscript_];
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {

    v43 = sub_22F740B70();
    v44 = sub_22F7415E0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134217984;
      *(v45 + 4) = a2;
      _os_log_impl(&dword_22F0FC000, v43, v44, "Moment at index %ld is not a PHMoment", v45, 0xCu);
      MEMORY[0x2319033A0](v45, -1, -1);
    }

    sub_22F33B954();
    v46 = swift_allocError();
    *v47 = 0;
    swift_willThrow();
    goto LABEL_36;
  }

  v17 = v16;
  v75 = a6;
  v76 = v15;
  v71 = v6;
  v72 = a5;
  v73 = a2;
  v18 = [v16 uuid];
  if (!v18)
  {
    goto LABEL_48;
  }

  v19 = v18;
  v20 = sub_22F740E20();
  v22 = v21;

  if (!*(a4 + 16))
  {

    goto LABEL_30;
  }

  v23 = sub_22F1229E8(v20, v22);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_30:
    v48 = v76;
    v49 = sub_22F740B70();
    v50 = sub_22F7415E0();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v83 = v52;
      *v51 = 136315138;
      v53 = [v17 uuid];

      if (!v53)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v54 = sub_22F740E20();
      v56 = v55;

      v57 = sub_22F145F20(v54, v56, &v83);

      *(v51 + 4) = v57;
      _os_log_impl(&dword_22F0FC000, v49, v50, "No search entities found for moment %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x2319033A0](v52, -1, -1);
      MEMORY[0x2319033A0](v51, -1, -1);
    }

    else
    {
    }

    sub_22F33B954();
    v46 = swift_allocError();
    v59 = 1;
LABEL_35:
    *v58 = v59;
    swift_willThrow();

    a6 = v75;
LABEL_36:
    *a6 = v46;
    return;
  }

  v26 = *(*(a4 + 56) + 8 * v23);
  v27 = objc_opt_self();

  v80 = [v27 changeRequestForMoment_];
  if (!v80)
  {

    v48 = v76;
    v60 = sub_22F740B70();
    v61 = sub_22F7415E0();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v83 = v63;
      *v62 = 136315138;
      v64 = [v17 uuid];

      if (!v64)
      {
LABEL_50:
        __break(1u);
        return;
      }

      v65 = sub_22F740E20();
      v67 = v66;

      v68 = sub_22F145F20(v65, v67, &v83);

      *(v62 + 4) = v68;
      _os_log_impl(&dword_22F0FC000, v60, v61, "Could not create change request for moment %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x2319033A0](v63, -1, -1);
      MEMORY[0x2319033A0](v62, -1, -1);
    }

    else
    {
    }

    sub_22F33B954();
    v46 = swift_allocError();
    v59 = 2;
    goto LABEL_35;
  }

  if (v26 >> 62)
  {
    v28 = sub_22F741A00();
  }

  else
  {
    v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a6 = v75;
  v29 = v76;
  if (!v28)
  {

    goto LABEL_42;
  }

  if (v28 < 1)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v30 = 0;
  v77 = v26 & 0xC000000000000001;
  v78 = v28;
  v79 = v26;
  do
  {
    if (v77)
    {
      v32 = MEMORY[0x2319016F0](v30, v26);
    }

    else
    {
      v32 = *(v26 + 8 * v30 + 32);
    }

    v33 = v32;
    if (*&v32[OBJC_IVAR___PGGraphSearchEntity_label + 8])
    {

      v34 = sub_22F740DF0();
    }

    else
    {
      v34 = 0;
    }

    if (*&v33[OBJC_IVAR___PGGraphSearchEntity_identifier + 8])
    {

      v35 = sub_22F740DF0();
    }

    else
    {
      v35 = 0;
    }

    v82 = *&v33[OBJC_IVAR___PGGraphSearchEntity_type];
    v36 = *&v33[OBJC_IVAR___PGGraphSearchEntity_confidence];
    if (*&v33[OBJC_IVAR___PGGraphSearchEntity_localeIdentifier + 8])
    {

      v37 = sub_22F740DF0();
    }

    else
    {
      v37 = 0;
    }

    v38 = v81;
    sub_22F1EDD04(&v33[OBJC_IVAR___PGGraphSearchEntity_dateInterval], v81);
    v39 = sub_22F73F090();
    v40 = *(v39 - 8);
    v41 = 0;
    if ((*(v40 + 48))(v38, 1, v39) != 1)
    {
      v42 = v81;
      v41 = sub_22F73F010();
      (*(v40 + 8))(v42, v39);
    }

    ++v30;

    v31 = sub_22F741160();

    [v80 addAssetSearchEntityWithLabel:v34 identifier:v35 type:v82 confidence:v37 localeIdentifier:v41 dateInterval:v31 synonyms:v36];

    v26 = v79;
  }

  while (v78 != v30);

  a6 = v75;
  v29 = v76;
LABEL_42:
  [v74 count];
  v69 = v71;
  sub_22F741680();
  v46 = v69;

  if (v69)
  {
    goto LABEL_36;
  }
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for SearchEntityPersister(uint64_t a1)
{
  result = qword_2810AA738;
  if (!qword_2810AA738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F33B87C(uint64_t a1)
{
  result = sub_22F740B90();
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

unint64_t sub_22F33B954()
{
  result = qword_27DAB3950;
  if (!qword_27DAB3950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3950);
  }

  return result;
}

unint64_t sub_22F33B9BC()
{
  result = qword_27DAB3958;
  if (!qword_27DAB3958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3958);
  }

  return result;
}

uint64_t static GraphRebuilderCompatibility.fullRebuild(photoLibrary:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22F33BAC0;

  return sub_22F33C9F8(a1);
}

uint64_t sub_22F33BAC0(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_22F33BD4C(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  v4 = a1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_22F33BE14;

  return sub_22F33C9F8(v4);
}

uint64_t sub_22F33BE14(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_22F73F360();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t static GraphRebuilderCompatibility.incrementalRebuild(photoLibrary:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22F33D7E0;

  return sub_22F33CF14(a1);
}

uint64_t sub_22F33C1D0(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  v4 = a1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_22F33D7DC;

  return sub_22F33CF14(v4);
}

id GraphRebuilderCompatibility.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GraphRebuilderCompatibility.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GraphRebuilderCompatibility.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F33C37C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_22F20B7C0;

  return v6();
}

uint64_t sub_22F33C464(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_22F12094C;

  return v7();
}

uint64_t sub_22F33C54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_22F20B494(a3, v23 - v10);
  v12 = sub_22F741320();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_22F33D510(v11);
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

  sub_22F741310();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_22F7412D0();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_22F740EC0() + 32;
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

    sub_22F33D510(a3);

    return v21;
  }

LABEL_8:
  sub_22F33D510(a3);
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

uint64_t sub_22F33C808(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22F33C900;

  return v6(a1);
}

uint64_t sub_22F33C900()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22F33CA18()
{
  v1 = v0[5];
  [objc_opt_self() enableMultiLibraryMode];
  type metadata accessor for GraphManager(0);
  swift_allocObject();
  v2 = GraphManager.init(with:tmpGraphDirectoryName:)(v1, 0, 0);
  v0[6] = v2;
  v3 = v2;
  type metadata accessor for GraphFullRebuilder();
  inited = swift_initStackObject();
  v0[7] = inited;
  *(inited + 16) = v3;

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_22F33CB6C;

  return GraphFullRebuilder.rebuildGraph()();
}

uint64_t sub_22F33CB6C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_22F33CE9C;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 48);
    v3 = sub_22F33CC88;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_22F33CC88()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_22F33CD28;

  return MEMORY[0x282181570]();
}

uint64_t sub_22F33CD28()
{

  return MEMORY[0x2822009F8](sub_22F33CE24, 0, 0);
}

uint64_t sub_22F33CE24()
{

  swift_setDeallocating();

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_22F33CE9C()
{

  swift_setDeallocating();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_22F33CF34()
{
  v1 = v0[2];
  [objc_opt_self() enableMultiLibraryMode];
  type metadata accessor for GraphManager(0);
  swift_allocObject();
  v2 = GraphManager.init(with:tmpGraphDirectoryName:)(v1, 0, 0);
  v0[3] = v2;
  v3 = v2;
  type metadata accessor for GraphBuilder();
  v4 = swift_allocObject();
  v0[4] = v4;
  v5 = v3[14];
  *(v4 + 16) = v5;
  *(v4 + 24) = v3;

  v6 = v5;
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_22F33D0A0;

  return GraphBuilder.consumeInputStreamUpdates()();
}

uint64_t sub_22F33D0A0()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_22F33D3C8;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 24);
    v3 = sub_22F33D1BC;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_22F33D1BC()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_22F33D25C;

  return MEMORY[0x282181570]();
}

uint64_t sub_22F33D25C()
{

  return MEMORY[0x2822009F8](sub_22F33D358, 0, 0);
}

uint64_t sub_22F33D358()
{

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_22F33D3C8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_22F33D45C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22F20B7C0;

  return sub_22F33C1D0(v2, v3);
}

uint64_t sub_22F33D510(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F33D578(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22F20B7C0;

  return sub_22F33C808(a1, v4);
}

uint64_t sub_22F33D630(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22F12094C;

  return sub_22F33C808(a1, v4);
}

uint64_t objectdestroyTm_6()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F33D728()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22F12094C;

  return sub_22F33BD4C(v2, v3);
}

id MusicCache.readCollectionCurations(for:progressReporter:)(uint64_t a1, uint64_t a2)
{
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22F770DF0;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_22F153470();
  strcpy((v3 + 32), "collectionId");
  *(v3 + 45) = 0;
  *(v3 + 46) = -5120;
  *(v3 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v3 + 104) = sub_22F25F050();
  *(v3 + 72) = a1;

  v4 = sub_22F741560();
  v5 = sub_22F33E998();

  return v5;
}

uint64_t MusicCache.write(collectionCurations:progressReporter:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CollectionCuration(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v51 = (&v41 - v8);
  v9 = sub_22F740AD0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  isUniquelyReferenced_nonNull_native = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
LABEL_23:
    swift_once();
  }

  v13 = qword_2810A8E88;
  sub_22F740AC0();
  v14 = v13;
  sub_22F740A90();
  v17 = *(v10 + 8);
  v15 = v10 + 8;
  v16 = v17;
  v17(isUniquelyReferenced_nonNull_native, v9);
  sub_22F741690();
  if (v2)
  {
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    return v16(isUniquelyReferenced_nonNull_native, v9);
  }

  v46 = 0;
  v47 = v16;
  v48 = isUniquelyReferenced_nonNull_native;
  v49 = v15;
  v50 = v9;
  v19 = sub_22F7416D0();
  v43 = v20;
  v44 = v19;
  v42 = v21;
  v22 = *(a1 + 16);
  v45 = v14;
  if (v22)
  {
    a1 += (*(v5 + 80) + 32) & ~*(v5 + 80);
    v23 = *(v5 + 72);
    v5 = MEMORY[0x277D84F98];
    v24 = v51;
    while (1)
    {
      v52 = v22;
      sub_22F25F0B4(a1, v24);
      v25 = *v24;
      v10 = v24[1];
      sub_22F25F0B4(v24, v53);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v5;
      v9 = sub_22F1229E8(v25, v10);
      v27 = *(v5 + 16);
      v28 = (v26 & 1) == 0;
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v2 = v26;
      if (*(v5 + 24) >= v29)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v5 = v54;
          if (v26)
          {
            goto LABEL_6;
          }
        }

        else
        {
          sub_22F136148();
          v5 = v54;
          if (v2)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
        sub_22F128CB4(v29, isUniquelyReferenced_nonNull_native);
        v30 = sub_22F1229E8(v25, v10);
        if ((v2 & 1) != (v31 & 1))
        {
          result = sub_22F7420C0();
          __break(1u);
          return result;
        }

        v9 = v30;
        v5 = v54;
        if (v2)
        {
LABEL_6:
          sub_22F33FC74(v53, *(v5 + 56) + v9 * v23);
          goto LABEL_7;
        }
      }

      *(v5 + 8 * (v9 >> 6) + 64) |= 1 << v9;
      v32 = (*(v5 + 48) + 16 * v9);
      *v32 = v25;
      v32[1] = v10;
      sub_22F25F118(v53, *(v5 + 56) + v9 * v23);
      v33 = *(v5 + 16);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_22;
      }

      *(v5 + 16) = v35;

LABEL_7:
      v24 = v51;
      v19 = sub_22F25F17C(v51);
      a1 += v23;
      v22 = v52 - 1;
      if (v52 == 1)
      {
        goto LABEL_20;
      }
    }
  }

  v5 = MEMORY[0x277D84F98];
LABEL_20:
  MEMORY[0x28223BE20](v19);
  v37 = v43;
  v36 = v44;
  *(&v41 - 6) = v5;
  *(&v41 - 5) = v36;
  *(&v41 - 4) = v38;
  *(&v41 - 3) = v37;
  v39 = v42;
  *(&v41 - 2) = v42;
  sub_22F7417A0();

  sub_22F741730();
  v40 = v48;
  sub_22F740AC0();
  sub_22F740A90();
  return v47(v40, v50);
}

void sub_22F33DE38(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v111[1] = a5;
  v111[2] = a4;
  v114 = a3;
  v126[5] = *MEMORY[0x277D85DE8];
  v112 = type metadata accessor for CollectionCuration(0);
  v116 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v10 = v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v115 = v111 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3960, &qword_22F786A70);
  MEMORY[0x28223BE20](v13 - 8);
  v121 = (v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v120 = (v111 - v16);
  v17 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v18 = sub_22F740DF0();

  v113 = [v17 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22F770DF0;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_22F153470();
  strcpy((v19 + 32), "collectionId");
  *(v19 + 45) = 0;
  *(v19 + 46) = -5120;
  v20 = *(a1 + 16);
  v122 = a1;
  v123 = v10;
  if (v20)
  {
    v124 = a2;
    v125 = v5;
    v21 = sub_22F10B348(v20, 0);
    v22 = sub_22F120B3C();
    v23 = v126[0];

    sub_22F0FF590(v23);
    if (v22 != v20)
    {
      goto LABEL_34;
    }

    v6 = v125;
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  *(v19 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v19 + 104) = sub_22F25F050();
  *(v19 + 72) = v21;
  v24 = sub_22F741560();
  v25 = v113;
  [v113 setPredicate_];

  v126[0] = 0;
  v26 = [v25 execute_];
  v27 = v126[0];
  if (!v26)
  {
    v30 = v126[0];
    sub_22F73F370();

    swift_willThrow();
    return;
  }

  v28 = v26;
  type metadata accessor for CollectionCurationEntry();
  a1 = sub_22F741180();
  v29 = v27;

  sub_22F7416A0();
  v124 = v6;
  if (v6)
  {

    return;
  }

  if (a1 >> 62)
  {
LABEL_35:
    v31 = sub_22F741A00();
    if (v31)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
LABEL_11:
      v32 = 0;
      v118 = a1 & 0xFFFFFFFFFFFFFF8;
      v119 = a1 & 0xC000000000000001;
      v33 = MEMORY[0x277D84F98];
      v117 = a1;
      while (1)
      {
        if (v119)
        {
          v36 = MEMORY[0x2319016F0](v32, a1);
        }

        else
        {
          if (v32 >= *(v118 + 16))
          {
            goto LABEL_31;
          }

          v36 = *(a1 + 8 * v32 + 32);
        }

        v37 = v36;
        if (__OFADD__(v32, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v125 = (v32 + 1);
        v38 = [v36 collectionId];
        a1 = sub_22F740E20();
        v40 = v39;

        v41 = v37;
        v42 = v33;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v126[0] = v42;
        v45 = sub_22F1229E8(a1, v40);
        v46 = v42[2];
        v47 = (v44 & 1) == 0;
        v48 = v46 + v47;
        if (__OFADD__(v46, v47))
        {
          goto LABEL_32;
        }

        v49 = v44;
        if (v42[3] >= v48)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v44)
            {
              goto LABEL_12;
            }
          }

          else
          {
            sub_22F1382D8();
            if (v49)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          sub_22F12CB28(v48, isUniquelyReferenced_nonNull_native);
          v50 = sub_22F1229E8(a1, v40);
          if ((v49 & 1) != (v51 & 1))
          {
            sub_22F7420C0();
            __break(1u);
            return;
          }

          v45 = v50;
          if (v49)
          {
LABEL_12:

            v33 = v126[0];
            v34 = *(v126[0] + 7);
            v35 = *(v34 + 8 * v45);
            *(v34 + 8 * v45) = v41;

            goto LABEL_13;
          }
        }

        v33 = v126[0];
        *(v126[0] + (v45 >> 6) + 8) |= 1 << v45;
        v52 = (v33[6] + 16 * v45);
        *v52 = a1;
        v52[1] = v40;
        *(v33[7] + 8 * v45) = v41;

        v53 = v33[2];
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_33;
        }

        v33[2] = v55;
LABEL_13:
        ++v32;
        a1 = v117;
        if (v125 == v31)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v33 = MEMORY[0x277D84F98];
LABEL_37:
  v125 = v33;

  v56 = v122 + 64;
  v57 = 1 << *(v122 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & *(v122 + 64);
  v119 = OBJC_IVAR___PGMusicCache_managedObjectContext;
  v60 = (v57 + 63) >> 6;

  v62 = 0;
  while (1)
  {
    if (v59)
    {
      v65 = v62;
LABEL_53:
      v68 = __clz(__rbit64(v59));
      v59 &= v59 - 1;
      v69 = v68 | (v65 << 6);
      v70 = (*(v61 + 48) + 16 * v69);
      v71 = *v70;
      v72 = v70[1];
      v73 = v115;
      sub_22F25F0B4(*(v61 + 56) + *(v116 + 72) * v69, v115);
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3968, &qword_22F786A78);
      v75 = *(v74 + 48);
      v76 = v121;
      *v121 = v71;
      v76[1] = v72;
      v77 = v76;
      sub_22F25F118(v73, v76 + v75);
      (*(*(v74 - 8) + 56))(v77, 0, 1, v74);
    }

    else
    {
      v66 = v60 <= v62 + 1 ? v62 + 1 : v60;
      v67 = v66 - 1;
      while (1)
      {
        v65 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          __break(1u);
        }

        if (v65 >= v60)
        {
          break;
        }

        v59 = *(v56 + 8 * v65);
        ++v62;
        if (v59)
        {
          v62 = v65;
          goto LABEL_53;
        }
      }

      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3968, &qword_22F786A78);
      v96 = v121;
      (*(*(v95 - 8) + 56))(v121, 1, 1, v95);
      v59 = 0;
      v62 = v67;
      v77 = v96;
    }

    v78 = v77;
    v79 = v120;
    sub_22F33FD00(v78, v120);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3968, &qword_22F786A78);
    if ((*(*(v80 - 8) + 48))(v79, 1, v80) == 1)
    {
      break;
    }

    v82 = *v79;
    v81 = v79[1];
    v83 = v123;
    sub_22F25F118(v79 + *(v80 + 48), v123);
    if (!v125[2])
    {

LABEL_61:
      v93 = v124;
      v94 = sub_22F266850(*(v114 + v119), v83);
      v124 = v93;
      if (v93)
      {

        sub_22F25F17C(v83);
        return;
      }

      v87 = v94;
      goto LABEL_42;
    }

    v84 = sub_22F1229E8(v82, v81);
    v86 = v85;

    if ((v86 & 1) == 0)
    {
      goto LABEL_61;
    }

    v87 = *(v125[7] + 8 * v84);
    v88 = [v87 collectionId];
    v89 = sub_22F740E20();
    v91 = v90;

    v92 = v89;
    v83 = v123;
    if (v92 == *v123 && v91 == v123[1])
    {
    }

    else
    {
      v97 = sub_22F742040();

      if ((v97 & 1) == 0)
      {

        sub_22F33FD70();
        swift_allocError();
        *v110 = 2;
        swift_willThrow();

        sub_22F25F17C(v83);
        return;
      }
    }

    if (v83[3])
    {
      v98 = sub_22F740DF0();
    }

    else
    {
      v98 = 0;
    }

    [v87 setKeySongAdamID_];

    if (v83[5])
    {
      v63 = sub_22F740DF0();
    }

    else
    {
      v63 = 0;
    }

    [v87 setKeySongFlexUID_];

    v64 = sub_22F73F5B0();
    [v87 setCurationDate_];

LABEL_42:
    sub_22F25F17C(v83);
    v61 = v122;
  }

  v99 = v124;
  sub_22F7416A0();
  if (v99)
  {
  }

  else
  {
    v100 = *(v114 + v119);
    v126[0] = 0;
    v101 = [v100 save_];
    v102 = v113;
    if (v101)
    {
      v103 = v126[0];
      sub_22F7416A0();
    }

    else
    {
      v104 = v126[0];
      v105 = sub_22F73F370();

      swift_willThrow();
      swift_getErrorValue();
      v106 = sub_22F7420F0();
      v108 = v107;
      sub_22F1A297C();
      swift_allocError();
      *v109 = v106;
      *(v109 + 8) = v108;
      *(v109 + 16) = 0;
      swift_willThrow();
    }
  }
}

id sub_22F33E998()
{
  v1 = sub_22F740AD0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v5 = *(v2 + 8);
  v5(v4, v1);
  sub_22F741690();
  if (v0)
  {
    v13 = sub_22F741730();
  }

  else
  {
    v6 = sub_22F7416B0();
    v8 = v7;
    v14[1] = v14;
    MEMORY[0x28223BE20](v6);
    v14[-4] = v10;
    v14[-3] = v9;
    v14[0] = v9;
    v14[-2] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3978, &qword_22F786A80);
    sub_22F7417A0();

    v13 = v14[3];
    sub_22F741730();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v5(v4, v1);
  return v13;
}

void sub_22F33EC70(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v42 = a3;
  v43 = a2;
  v52[1] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for CollectionCuration(0);
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v9 = sub_22F740DF0();

  v10 = [v8 initWithEntityName_];

  [v10 setPredicate_];
  v52[0] = 0;
  v11 = [v10 execute_];
  v12 = v52[0];
  if (!v11)
  {
    v17 = v52[0];
    sub_22F73F370();

    swift_willThrow();
    return;
  }

  v13 = v11;
  v44 = v10;
  type metadata accessor for CollectionCurationEntry();
  v14 = sub_22F741180();
  v15 = v12;

  sub_22F7416A0();
  v16 = v3;
  if (v3)
  {
LABEL_3:

    return;
  }

  if (v14 >> 62)
  {
    v18 = sub_22F741A00();
    if (v18)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
LABEL_7:
      v41 = 0;
      v52[0] = MEMORY[0x277D84F90];
      sub_22F146C94(0, v18 & ~(v18 >> 63), 0);
      if (v18 < 0)
      {
        __break(1u);
      }

      v19 = 0;
      v45 = v14 & 0xC000000000000001;
      v46 = v18;
      v20 = v52[0];
      v47 = v14;
      do
      {
        if (v45)
        {
          v21 = MEMORY[0x2319016F0](v19, v14);
        }

        else
        {
          v21 = *(v14 + 8 * v19 + 32);
        }

        v22 = v21;
        v23 = [v21 collectionId];
        v24 = sub_22F740E20();
        v50 = v25;
        v51 = v24;

        v26 = [v22 keySongAdamID];
        if (v26)
        {
          v27 = v26;
          v28 = sub_22F740E20();
          v30 = v29;
        }

        else
        {
          v28 = 0;
          v30 = 0;
        }

        v31 = [v22 keySongFlexUID];
        if (v31)
        {
          v32 = v31;
          v33 = sub_22F740E20();
          v35 = v34;
        }

        else
        {
          v33 = 0;
          v35 = 0;
        }

        v36 = [v22 curationDate];
        sub_22F73F640();

        v37 = v50;
        *v7 = v51;
        v7[1] = v37;
        v7[2] = v28;
        v7[3] = v30;
        v7[4] = v33;
        v7[5] = v35;
        v52[0] = v20;
        v39 = v20[2];
        v38 = v20[3];
        if (v39 >= v38 >> 1)
        {
          sub_22F146C94((v38 > 1), v39 + 1, 1);
          v20 = v52[0];
        }

        ++v19;
        v20[2] = v39 + 1;
        sub_22F25F118(v7, v20 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v39);
        v14 = v47;
      }

      while (v46 != v19);

      v16 = v41;
      goto LABEL_24;
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_24:
  sub_22F7416A0();
  if (v16)
  {
    goto LABEL_3;
  }

  *v42 = v20;
}

void MusicCache.deleteCollectionCurations(beforeDate:afterDate:collectionId:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v19 = a1;
  v20 = a2;
  v7 = sub_22F740AD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v11 = *(v8 + 8);
  v11(v10, v7);
  sub_22F741690();
  if (!v5)
  {
    v12 = sub_22F7416B0();
    v18[1] = v18;
    MEMORY[0x28223BE20](v12);
    v13 = v20;
    v18[-8] = v19;
    v18[-7] = v13;
    v18[-6] = v21;
    v18[-5] = a4;
    v15 = v14;
    v18[-4] = v4;
    v18[-3] = v14;
    v17 = v16;
    v18[-2] = v16;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v11(v10, v7);
  }
}

void sub_22F33F320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v69 = a6;
  v66 = a7;
  v72 = a4;
  v73 = a5;
  v68 = a3;
  v71 = a2;
  v76[1] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v64 - v12;
  v14 = sub_22F73F690();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v67 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v64 - v18;
  v20 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v21 = sub_22F740DF0();

  v74 = [v20 initWithEntityName_];

  v75 = MEMORY[0x277D84F90];
  v22 = a1;
  v23 = v15;
  sub_22F12057C(v22, v13);
  v24 = *(v15 + 48);
  if (v24(v13, 1, v14) == 1)
  {
    sub_22F15FCF0(v13);
    v25 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v15 + 32))(v19, v13, v14);
    v64 = sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_22F771340;
    v65 = v15;
    v27 = sub_22F73F5B0();
    *(v26 + 56) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
    *(v26 + 64) = sub_22F15FD58();
    *(v26 + 32) = v27;
    v28 = sub_22F741560();
    MEMORY[0x231900D00]();
    if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22F7411C0();
    }

    sub_22F741220();

    v23 = v65;
    (*(v65 + 8))(v19, v14);
    v25 = v75;
  }

  sub_22F12057C(v71, v10);
  if (v24(v10, 1, v14) == 1)
  {
    sub_22F15FCF0(v10);
    v29 = v72;
    if (!v72)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v30 = v67;
  (*(v23 + 32))(v67, v10, v14);
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_22F771340;
  v32 = v23;
  v33 = sub_22F73F5B0();
  *(v31 + 56) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v31 + 64) = sub_22F15FD58();
  *(v31 + 32) = v33;
  v34 = sub_22F741560();
  MEMORY[0x231900D00]();
  if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22F7411C0();
  }

  sub_22F741220();

  (*(v32 + 8))(v30, v14);
  v25 = v75;
  v29 = v72;
  if (v72)
  {
LABEL_12:
    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_22F771340;
    *(v35 + 56) = MEMORY[0x277D837D0];
    *(v35 + 64) = sub_22F153470();
    *(v35 + 32) = v68;
    *(v35 + 40) = v29;

    v36 = sub_22F741560();
    MEMORY[0x231900D00]();
    if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22F7411C0();
    }

    sub_22F741220();

    v25 = v75;
  }

LABEL_15:
  if (qword_2810A9478 != -1)
  {
    swift_once();
  }

  v37 = sub_22F740B90();
  __swift_project_value_buffer(v37, qword_2810B4DC0);
  v38 = sub_22F740B70();
  v39 = sub_22F7415C0();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v76[0] = v41;
    *v40 = 136315138;
    v42 = sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);

    v44 = MEMORY[0x231900D40](v43, v42);
    v46 = v45;

    v47 = sub_22F145F20(v44, v46, v76);

    *(v40 + 4) = v47;
    _os_log_impl(&dword_22F0FC000, v38, v39, "[MemoriesMusic] deleteCollectionCurations delete predicates: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x2319033A0](v41, -1, -1);
    MEMORY[0x2319033A0](v40, -1, -1);
  }

  v48 = v74;
  if (v25 >> 62)
  {
    if (sub_22F741A00() >= 1)
    {
      goto LABEL_21;
    }
  }

  else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_21:
    v49 = objc_allocWithZone(MEMORY[0x277CCA920]);
    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);

    v50 = sub_22F741160();

    v51 = [v49 initWithType:1 subpredicates:v50];

    goto LABEL_24;
  }

  v51 = 0;
LABEL_24:
  [v48 setPredicate_];

  v52 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v52 setResultType_];
  v53 = *(v73 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  v76[0] = 0;
  v54 = [v53 executeRequest:v52 error:v76];
  if (v54)
  {
    v55 = v54;
    v56 = v76[0];

    v57 = v70;
    sub_22F7416A0();
    v58 = v57;
    if (!v57)
    {
      sub_22F7416A0();

      return;
    }
  }

  else
  {
    v59 = v76[0];
    v58 = sub_22F73F370();

    swift_willThrow();
  }

  swift_getErrorValue();
  v60 = sub_22F7420F0();
  v62 = v61;
  sub_22F1A297C();
  swift_allocError();
  *v63 = v60;
  *(v63 + 8) = v62;
  *(v63 + 16) = 0;
  swift_willThrow();
}

uint64_t sub_22F33FC74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionCuration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F33FD00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3960, &qword_22F786A70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22F33FD70()
{
  result = qword_27DAB3970;
  if (!qword_27DAB3970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3970);
  }

  return result;
}

uint64_t CLLocationCoordinate2D.hash(into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x231901D70](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x231901D70](*&v3);
}

uint64_t CLLocationCoordinate2D.hashValue.getter(double a1, double a2)
{
  sub_22F742170();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x231901D70](*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x231901D70](*&v5);
  return sub_22F7421D0();
}