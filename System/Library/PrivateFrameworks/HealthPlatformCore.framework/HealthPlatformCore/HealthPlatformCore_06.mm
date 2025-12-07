void (*sub_228799C8C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AABF120](a2, a3);
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
    return sub_228799D94;
  }

  __break(1u);
  return result;
}

void (*sub_228799D0C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AABF120](a2, a3);
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
    return sub_228799D8C;
  }

  __break(1u);
  return result;
}

uint64_t RelevanceEngineCoordinator.sortedElements(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
  v7 = sub_22879C818(v5, v6, a2, a3);

  return v7;
}

uint64_t RelevanceEngineCoordinator.saveModelToDisk(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a1;
  v52 = a2;
  v7 = sub_2287CB080();
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x28223BE20](v7);
  v55 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_2287CB0E0();
  v54 = *(v56 - 8);
  v9 = MEMORY[0x28223BE20](v56);
  v53 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(a3 - 8);
  MEMORY[0x28223BE20](v9);
  v48 = v11;
  v49 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2287C9700();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v59 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  v47 = v19;
  MEMORY[0x28223BE20](v16);
  v60 = &v43 - v20;
  v21 = a3;
  v22 = a3;
  v23 = a4;
  v24 = (*(a4 + 16))(v22, a4);
  v25 = [v24 configuration];

  v26 = [v25 modelFileURL];
  if (v26)
  {
    sub_2287C96F0();

    v44 = *(v13 + 32);
    v27 = v60;
    v44(v60, v18, v12);
    v45 = (*(v23 + 8))(v21, v23);
    v29 = v49;
    v28 = v50;
    (*(v50 + 16))(v49, v4, v21);
    v46 = v13;
    (*(v13 + 16))(v59, v27, v12);
    v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v31 = (v48 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = (*(v13 + 80) + v31 + 16) & ~*(v13 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = v21;
    *(v33 + 24) = v23;
    (*(v28 + 32))(v33 + v30, v29, v21);
    v34 = (v33 + v31);
    v35 = v52;
    *v34 = v51;
    v34[1] = v35;
    v36 = v12;
    v44((v33 + v32), v59, v12);
    aBlock[4] = sub_22879EABC;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228712EA8;
    aBlock[3] = &block_descriptor_10;
    v37 = _Block_copy(aBlock);

    v38 = v53;
    sub_2287CB0A0();
    v61 = MEMORY[0x277D84F90];
    sub_22879EBF0();
    sub_22879EF14(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_22873AA14();
    v39 = v55;
    v40 = v58;
    sub_2287CB880();
    v41 = v45;
    MEMORY[0x22AABED90](0, v38, v39, v37);
    _Block_release(v37);

    (*(v57 + 8))(v39, v40);
    (*(v54 + 8))(v38, v56);
    (*(v46 + 8))(v60, v36);
  }

  else
  {
    result = sub_2287CBB90();
    __break(1u);
  }

  return result;
}

uint64_t sub_22879A3E0(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277CC9578];
  sub_22879EF14(0, &qword_280DE3A98, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_2287C97C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22879F52C(a1, v7, &qword_280DE3A98, v4);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_228705C28(v7);
    [v2 setAttribute:0 forKey:*MEMORY[0x277D44538]];
    return sub_228705C28(a1);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v13 = sub_2287C9770();
    [v2 setAttribute:v13 forKey:*MEMORY[0x277D44538]];

    sub_228705C28(a1);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t RelevanceEngineCoordinator.train(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a5;
  v57 = a2;
  v58 = a3;
  v7 = sub_2287CB090();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2287CAA50();
  v50 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_2287CB080();
  v59 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2287CB0E0();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a4 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v21 = *(a1 + 16);
  v60 = v22;
  v61 = v20;
  if (v21)
  {
    v23 = a1;
    v24 = v53;
    v25 = v54;
    v26 = (*(v54 + 8))(a4, v54);
    (*(v18 + 16))(&v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v24, a4);
    v27 = (*(v18 + 80) + 40) & ~*(v18 + 80);
    v28 = swift_allocObject();
    *(v28 + 2) = a4;
    *(v28 + 3) = v25;
    *(v28 + 4) = v23;
    (*(v18 + 32))(&v28[v27], &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
    v29 = &v28[(v19 + v27 + 7) & 0xFFFFFFFFFFFFFFF8];
    v31 = v57;
    v30 = v58;
    *v29 = v57;
    v29[1] = v30;
    v67 = sub_22879EC48;
    v68 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v64 = 1107296256;
    v65 = sub_228712EA8;
    v66 = &block_descriptor_6_0;
    v32 = _Block_copy(&aBlock);

    sub_228714B08(v31, v30);
    sub_2287CB0A0();
    v62 = MEMORY[0x277D84F90];
    sub_22879EBF0();
    sub_22879EF14(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_22873AA14();
    v34 = v55;
    v33 = v56;
    sub_2287CB880();
    MEMORY[0x22AABED90](0, v17, v34, v32);
    _Block_release(v32);

    (*(v59 + 8))(v34, v33);
    (*(v60 + 8))(v17, v61);
  }

  else
  {
    v36 = v50;
    v35 = v51;
    v37 = v10;
    v38 = v55;
    sub_2287CA9E0();
    v39 = sub_2287CAA40();
    v40 = sub_2287CB610();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2286FF000, v39, v40, "RelevanceEngineCoordinator: No training events resolved, completing without any training", v41, 2u);
      MEMORY[0x22AABFD90](v41, -1, -1);
    }

    (*(v36 + 8))(v12, v37);
    sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
    v42 = v52;
    (*(v35 + 104))(v9, *MEMORY[0x277D851C8], v52);
    v43 = sub_2287CB6E0();
    (*(v35 + 8))(v9, v42);
    v44 = swift_allocObject();
    v46 = v57;
    v45 = v58;
    *(v44 + 16) = v57;
    *(v44 + 24) = v45;
    v67 = sub_22874FEF0;
    v68 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v64 = 1107296256;
    v65 = sub_228712EA8;
    v66 = &block_descriptor_12;
    v47 = _Block_copy(&aBlock);
    sub_228714B08(v46, v45);
    sub_2287CB0A0();
    v62 = MEMORY[0x277D84F90];
    sub_22879EBF0();
    sub_22879EF14(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_22873AA14();
    v48 = v56;
    sub_2287CB880();
    MEMORY[0x22AABED90](0, v17, v38, v47);
    _Block_release(v47);

    (*(v59 + 8))(v38, v48);
    (*(v60 + 8))(v17, v61);
  }
}

uint64_t static RelevanceEngineCoordinator.makeStandardFeatureTagFeatures()()
{
  v28 = MEMORY[0x277D84F90];
  sub_2287035A4(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2287CCC50;
  if (qword_280DE3790 != -1)
  {
    swift_once();
  }

  v1 = qword_280DE6370;
  *(inited + 32) = qword_280DE6370;
  v2 = v1;
  sub_22870E1B8(inited);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2287CCC50;
  if (qword_280DE3800 != -1)
  {
    swift_once();
  }

  v4 = qword_280DE63C8;
  *(v3 + 32) = qword_280DE63C8;
  v5 = v4;
  sub_22870E1B8(v3);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_2287CCC50;
  if (qword_280DE37A8 != -1)
  {
    swift_once();
  }

  v7 = qword_280DE6380;
  *(v6 + 32) = qword_280DE6380;
  v8 = v7;
  sub_22870E1B8(v6);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2287CCC50;
  if (qword_280DE37C8 != -1)
  {
    swift_once();
  }

  v10 = qword_280DE6398;
  *(v9 + 32) = qword_280DE6398;
  v11 = v10;
  sub_22870E1B8(v9);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_2287CCC50;
  if (qword_280DE37C0 != -1)
  {
    swift_once();
  }

  v13 = qword_280DE6390;
  *(v12 + 32) = qword_280DE6390;
  v14 = v13;
  sub_22870E1B8(v12);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_2287CCC50;
  if (qword_280DE3810 != -1)
  {
    swift_once();
  }

  v16 = qword_280DE63D0;
  *(v15 + 32) = qword_280DE63D0;
  v17 = v16;
  sub_22870E1B8(v15);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_2287CCC50;
  if (qword_280DE37E0 != -1)
  {
    swift_once();
  }

  v19 = qword_280DE63A8;
  *(v18 + 32) = qword_280DE63A8;
  v20 = v19;
  sub_22870E1B8(v18);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_2287CCC50;
  if (qword_280DE37F0 != -1)
  {
    swift_once();
  }

  v22 = qword_280DE63B8;
  *(v21 + 32) = qword_280DE63B8;
  v23 = v22;
  sub_22870E1B8(v21);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_2287CCC50;
  if (qword_280DE3828 != -1)
  {
    swift_once();
  }

  v25 = qword_280DE63E8;
  *(v24 + 32) = qword_280DE63E8;
  v26 = v25;
  sub_22870E1B8(v24);
  return v28;
}

id static RelevanceEngineCoordinator.instantiateEngine(engineName:modelVersion:pretrainedModelURL:modelURL:primaryFeatures:feedSections:dataSources:relevanceProviderManagerClasses:metricsRecorder:interactionDescriptors:observerQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12)
{
  sub_22879EF14(0, &unk_280DE3AA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v58 - v19;
  sub_228703004(0, &qword_280DE35F8, 0x277D44460);
  v21 = [swift_getObjCClassFromMetadata() defaultConfiguration];
  [v21 removeAllSections];
  [v21 removeAllInteractions];
  if (a3 < 0)
  {
    goto LABEL_16;
  }

  v61 = a2;
  [v21 setModelVersion_];
  sub_22879F52C(a4, v20, &unk_280DE3AA0, MEMORY[0x277CC9260]);
  v22 = sub_2287C9700();
  v23 = *(v22 - 8);
  v24 = 0;
  if ((*(v23 + 48))(v20, 1, v22) != 1)
  {
    v24 = sub_2287C96A0();
    (*(v23 + 8))(v20, v22);
  }

  [v21 setBaseModelFileURL_];

  [v21 setWantsImmutableContent_];
  v25 = sub_2287C96A0();
  [v21 setModelFileURL_];

  [v21 setPrimaryFeatures_];
  v60 = a1;
  if (a7 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2287CB920())
  {
    v27 = 0;
    while (1)
    {
      if ((a7 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x22AABF120](v27, a7);
      }

      else
      {
        if (v27 >= *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v28 = *(a7 + 8 * v27 + 32);
      }

      v29 = v28;
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      [v21 addSectionWithDescriptor_];

      ++v27;
      if (v30 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  [v21 setObserverQueue_];
  v66 = sub_22879C728;
  v67 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v63 = 1107296256;
  v64 = sub_22879C7A8;
  v65 = &block_descriptor_15;
  v31 = _Block_copy(&aBlock);
  v32 = objc_opt_self();
  v33 = [v32 dataSourceLoaderWithBlock_];
  _Block_release(v31);

  sub_228703004(0, &qword_280DE3610, 0x277D44400);
  v34 = sub_2287CB390();
  v35 = [v32 dataSourceLoaderWithDataSources_];

  sub_2287035A4(0, &qword_280DE3990, MEMORY[0x277D84F70] + 8);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2287CCFF0;
  v37 = sub_228703004(0, &qword_280DE3618, 0x277D443E8);
  *(v36 + 32) = v35;
  *(v36 + 88) = v37;
  *(v36 + 56) = v37;
  *(v36 + 64) = v33;
  v38 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v59 = v35;
  v39 = v33;
  v40 = sub_2287CB390();

  v41 = [v38 initWithArray_];

  v42 = [v32 aggregateDataSourceLoaderWithDataSourceLoaders_];
  [v21 setDataSourceLoader_];

  v43 = swift_allocObject();
  *(v43 + 16) = a9;
  v66 = sub_22879EF78;
  v67 = v43;
  aBlock = MEMORY[0x277D85DD0];
  v63 = 1107296256;
  v64 = sub_22879C7A8;
  v65 = &block_descriptor_21;
  v44 = _Block_copy(&aBlock);
  v45 = objc_opt_self();

  v46 = [v45 relevanceProviderManagerLoaderWithBlock_];
  _Block_release(v44);

  [v21 setRelevanceProviderManagerLoader_];

  if (a11 >> 62)
  {
    goto LABEL_30;
  }

  for (j = *((a11 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_2287CB920())
  {
    v48 = 0;
    while (1)
    {
      if ((a11 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x22AABF120](v48, a11);
      }

      else
      {
        if (v48 >= *((a11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v49 = *(a11 + 8 * v48 + 32);
      }

      v50 = v49;
      v51 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      [v21 addInteractionWithDescriptor_];

      ++v48;
      if (v51 == j)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

LABEL_31:
  [v21 setTrainingBehavior_];
  v52 = MEMORY[0x22AABF5F0]([v21 setMetricsRecorder_]);
  v53 = objc_allocWithZone(MEMORY[0x277D44470]);
  v54 = v21;
  v55 = sub_2287CB210();
  v56 = [v53 initWithName:v55 configuration:v54];

  objc_autoreleasePoolPop(v52);
  return v56;
}

uint64_t RelevanceEngineCoordinator.resumeEngineIfNeeded(feedKinds:completion:)(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v20 = a2;
    v21 = MEMORY[0x277D84F90];
    v8 = a3;
    v9 = a4;
    v10 = a5;
    sub_2287042D4(0, v5, 0);
    v6 = v21;
    v11 = a1 + 32;
    do
    {
      ++v11;
      v12 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      v22 = v6;
      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        v19 = v12;
        v17 = v13;
        sub_2287042D4((v14 > 1), v15 + 1, 1);
        v13 = v17;
        v12 = v19;
        v6 = v22;
      }

      *(v6 + 16) = v15 + 1;
      v16 = v6 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      --v5;
    }

    while (v5);
    a5 = v10;
    a4 = v9;
    a3 = v8;
    a2 = v20;
  }

  RelevanceEngineCoordinator.resumeEngineIfNeeded(sectionIdentifiers:completion:)(v6, a2, a3, a4, a5);
}

id static RERule.makeSortByValueOfFeatureRule(feature:order:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() conditionHasValueForFeature_];
  v5 = [objc_opt_self() conditionForLeftFeature:a1 relation:2 rightFeature:a1];
  v6 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v4 rightCondition:v4 comparisonCondition:v5 order:a2];

  return v6;
}

id static RERule.makeRankByPreferringValueForFeatureRule(feature:value:)(uint64_t a1)
{
  v2 = sub_2287CB210();
  v3 = objc_opt_self();
  v4 = [v3 conditionForFeature:a1 hasValue:v2];

  v5 = [v3 notCondition_];
  v6 = [objc_opt_self() trueCondition];
  v7 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v4 rightCondition:v5 comparisonCondition:v6 order:1];

  return v7;
}

void RelevanceEngineCoordinator.resumeEngineIfNeeded(sectionIdentifiers:completion:)(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v103 = a2;
  v104 = a3;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v13 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v99 = &v89 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v98 = &v89 - v17;
  MEMORY[0x28223BE20](v16);
  v97 = &v89 - v18;
  v19 = sub_2287CAA50();
  v101 = *(v19 - 8);
  v102 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v89 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v89 - v26;
  v100 = a1;
  if (!*(a1 + 16))
  {
    sub_2287CA9E0();
    v47 = a4;
    (*(v10 + 16))(v13, v6, a4);
    v48 = v10;
    v49 = sub_2287CAA40();
    v50 = sub_2287CB610();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v105 = v47;
      aBlock[0] = v100;
      *v51 = 136315394;
      swift_getMetatypeMetadata();
      v52 = sub_2287CB250();
      v54 = sub_2287031D8(v52, v53, aBlock);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2080;
      v55 = (*(a5 + 48))(v47, a5);
      v57 = v56;
      (*(v48 + 8))(v13, v47);
      v58 = sub_2287031D8(v55, v57, aBlock);

      *(v51 + 14) = v58;
      _os_log_impl(&dword_2286FF000, v49, v50, "[%s]%s: Attempting to resume engine without any section identifiers; aborting", v51, 0x16u);
      v59 = v100;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v59, -1, -1);
      MEMORY[0x22AABFD90](v51, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v13, v47);
    }

    v80 = (*(v101 + 8))(v22, v102);
    goto LABEL_13;
  }

  v28 = *(a5 + 16);
  v29 = a5;
  v30 = v10;
  v94 = v28;
  v95 = v29;
  v31 = (v28)(a4);
  v32 = [v31 isRunning];

  v96 = v30;
  v33 = (v30 + 16);
  v34 = v6;
  if (v32)
  {
    sub_2287CA9E0();
    v35 = v97;
    (*v33)(v97, v34, a4);
    v36 = sub_2287CAA40();
    v37 = sub_2287CB5F0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136315394;
      v40 = sub_2287CBE60();
      v42 = sub_2287031D8(v40, v41, aBlock);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      v43 = (*(v95 + 48))(a4);
      v45 = v44;
      (*(v96 + 8))(v35, a4);
      v46 = sub_2287031D8(v43, v45, aBlock);

      *(v38 + 14) = v46;
      _os_log_impl(&dword_2286FF000, v36, v37, "[%s%s]: resume() called, but engine already running!", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v39, -1, -1);
      MEMORY[0x22AABFD90](v38, -1, -1);
    }

    else
    {

      (*(v96 + 8))(v35, a4);
    }

    v80 = (*(v101 + 8))(v27, v102);
LABEL_13:
    v103(v80);
    return;
  }

  v60 = v25;
  sub_2287CA9E0();
  v61 = *v33;
  v62 = v98;
  v63 = a4;
  v97 = v33;
  v61(v98, v6, a4);
  v64 = sub_2287CAA40();
  v65 = sub_2287CB610();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v92 = v60;
    v93 = v61;
    v67 = v66;
    v91 = swift_slowAlloc();
    aBlock[0] = v91;
    *v67 = 136315650;
    v68 = sub_2287CBE60();
    v70 = sub_2287031D8(v68, v69, aBlock);

    *(v67 + 4) = v70;
    *(v67 + 12) = 2080;
    v90 = v65;
    v71 = v95;
    v72 = (*(v95 + 48))(v63, v95);
    v74 = v73;
    v89 = v64;
    v75 = v96;
    (*(v96 + 8))(v62, v63);
    v76 = sub_2287031D8(v72, v74, aBlock);

    *(v67 + 14) = v76;
    *(v67 + 22) = 2050;
    *(v67 + 24) = 0x4024000000000000;
    v77 = v89;
    _os_log_impl(&dword_2286FF000, v89, v90, "[%s]%s: Resuming engine with timeout %{public}f!", v67, 0x20u);
    v78 = v91;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v78, -1, -1);
    v79 = v67;
    v61 = v93;
    MEMORY[0x22AABFD90](v79, -1, -1);

    (*(v101 + 8))(v92, v102);
  }

  else
  {

    v75 = v96;
    (*(v96 + 8))(v62, v63);
    (*(v101 + 8))(v60, v102);
    v71 = v95;
  }

  v81 = v94(v63, v71);
  v82 = v99;
  v61(v99, v34, v63);
  v83 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v84 = (v11 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = swift_allocObject();
  *(v85 + 16) = v63;
  *(v85 + 24) = v71;
  (*(v75 + 32))(v85 + v83, v82, v63);
  *(v85 + v84) = v100;
  v86 = (v85 + ((v84 + 15) & 0xFFFFFFFFFFFFFFF8));
  v87 = v104;
  *v86 = v103;
  v86[1] = v87;
  aBlock[4] = sub_22879F3D4;
  aBlock[5] = v85;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_27;
  v88 = _Block_copy(aBlock);

  [v81 resumeWithTimeout:v88 completion:10.0];
  _Block_release(v88);
}

uint64_t sub_22879C3B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a6;
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2287CAA50();
  v39 = *(v14 - 8);
  v40 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9E0();
  v17 = *(v11 + 16);
  v41 = a1;
  v17(v13, a1, a5);

  v18 = sub_2287CAA40();
  v19 = sub_2287CB610();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = a3;
    v21 = v20;
    v37[0] = swift_slowAlloc();
    v43 = v37[0];
    *v21 = 136315650;
    v22 = sub_2287CBE60();
    v24 = sub_2287031D8(v22, v23, &v43);
    v37[1] = a4;
    v25 = v24;

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v26 = (*(v42 + 48))(a5);
    v28 = v27;
    (*(v11 + 8))(v13, a5);
    v29 = sub_2287031D8(v26, v28, &v43);

    *(v21 + 14) = v29;
    *(v21 + 22) = 2082;
    v30 = MEMORY[0x22AABEA80](a2, MEMORY[0x277D837D0]);
    v32 = sub_2287031D8(v30, v31, &v43);

    *(v21 + 24) = v32;
    _os_log_impl(&dword_2286FF000, v18, v19, "[%s]%s: Engine has completed calculations for sections %{public}s!", v21, 0x20u);
    v33 = v37[0];
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v33, -1, -1);
    v34 = v21;
    a3 = v38;
    MEMORY[0x22AABFD90](v34, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v13, a5);
  }

  (*(v39 + 8))(v16, v40);
  v35 = (*(v42 + 16))(a5);
  [v35 pause];

  return a3();
}

uint64_t sub_22879C728()
{
  sub_22879EF14(0, &qword_280DE35A8, sub_2287150D0, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2287CCFE0;
  *(v0 + 32) = type metadata accessor for GroupConfigurationLoader();
  return v0;
}

id sub_22879C7A8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  sub_2287150D0();
  v3 = sub_2287CB390();

  return v3;
}

uint64_t sub_22879C818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x277D84F90];
  v13 = (*(v11 + 8))(v12, v11);
  (*(v8 + 16))(v10, v4, a3);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  (*(v8 + 32))(v17 + v14, v10, a3);
  v18 = (v17 + v15);
  v19 = v24;
  *v18 = a1;
  v18[1] = v19;
  *(v17 + v16) = &v26;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22879F718;
  *(v20 + 24) = v17;
  aBlock[4] = sub_22873FB9C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228742C10;
  aBlock[3] = &block_descriptor_60;
  v21 = _Block_copy(aBlock);

  dispatch_sync(v13, v21);

  _Block_release(v21);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v23 = v26;

    return v23;
  }

  return result;
}

void sub_22879CA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v10 = (*(a6 + 16))(a5, a6);
  v11 = sub_2287CB210();
  v12 = [v10 numberOfElementsInSection_];

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
    if (!v12)
    {
LABEL_7:
      MEMORY[0x28223BE20](v13);
      v20[2] = v7;
      v20[3] = a6;
      v20[4] = a1;
      v19 = sub_228791DD8(sub_22879F790, v20, v14);

      *a4 = v19;

      return;
    }

    v21 = a1;
    v22 = v7;
    v23 = a4;
    v24 = MEMORY[0x277D84F90];
    sub_2287CBAC0();
    v15 = 0;
    while (1)
    {
      v16 = objc_allocWithZone(MEMORY[0x277D444B0]);
      v17 = sub_2287CB210();
      v18 = [v16 initWithSectionName:v17 element:v15];

      if (!v18)
      {
        break;
      }

      ++v15;
      sub_2287CBA90();
      sub_2287CBAD0();
      sub_2287CBAE0();
      v13 = sub_2287CBAA0();
      if (v12 == v15)
      {
        v14 = v24;
        v7 = v22;
        a4 = v23;
        a1 = v21;
        goto LABEL_7;
      }
    }
  }

  __break(1u);
}

void *RelevanceEngineCoordinator.element(for:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = RelevanceEngineCoordinator.sortedElements(for:)(a2, a3, a4);
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2287CB920())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x22AABF120](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 identifier];
      sub_2287CB220();

      v12 = [a1 uniqueIdentifier];
      sub_2287CB220();

      sub_22873E0A0();
      LOBYTE(v12) = sub_2287CB860();

      if (v12)
      {

        return v9;
      }

      ++v7;
      if (v10 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t RelevanceEngineCoordinator.collectDiagnosticLogs(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v24 = a1;
  v7 = sub_2287CB080();
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2287CB0E0();
  v27 = *(v10 - 8);
  v28 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v25 = (*(a4 + 8))(a3, a4);
  (*(v14 + 16))(&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a3);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  (*(v14 + 32))(v17 + v16, &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v18 = (v17 + ((v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v26;
  *v18 = v24;
  v18[1] = v19;
  aBlock[4] = sub_22879F44C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_33;
  v20 = _Block_copy(aBlock);

  sub_2287CB0A0();
  v30 = MEMORY[0x277D84F90];
  sub_22879EBF0();
  sub_22879EF14(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_22873AA14();
  sub_2287CB880();
  v21 = v25;
  MEMORY[0x22AABED90](0, v13, v9, v20);
  _Block_release(v20);

  (*(v29 + 8))(v9, v7);
  (*(v27 + 8))(v13, v28);
}

void sub_22879D1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (*(a5 + 16))(a4, a5);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_22879F648;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_22879D3A8;
  v10[3] = &block_descriptor_48;
  v9 = _Block_copy(v10);

  [v7 storeDiagnosticLogsToFile_];
  _Block_release(v9);
}

uint64_t sub_22879D2B4(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = sub_2287C9700();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C9680();
  a3(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_22879D3A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_2287CB220();
  v5 = v4;

  v2(v3, v5);
}

void RelevanceEngineCoordinator.submitTraining(trainingEvents:store:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v32 = a3;
  v33 = a4;
  v31 = a1;
  v30 = sub_2287CAA50();
  v8 = *(v30 - 8);
  v9 = MEMORY[0x28223BE20](v30);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = [objc_opt_self() standardUserDefaults];
  v15 = sub_2287CB210();

  v16 = [v14 BOOLForKey_];

  if (v16)
  {
    sub_2287CA9E0();
    v17 = sub_2287CAA40();
    v18 = sub_2287CB610();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2286FF000, v17, v18, "disablePersonalizedModelTraining default detected; training will be ignored", v19, 2u);
      MEMORY[0x22AABFD90](v19, -1, -1);
    }

    (*(v8 + 8))(v11, v30);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v20 = sub_2287C99F0();
    sub_2287010E4(a2, v35);
    (*(v12 + 16))(v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v28[1], a5);
    v21 = (*(v12 + 80) + 80) & ~*(v12 + 80);
    v22 = swift_allocObject();
    v23 = v29;
    *(v22 + 2) = a5;
    *(v22 + 3) = v23;
    *(v22 + 4) = v31;
    sub_22871AC0C(v35, (v22 + 40));
    (*(v12 + 32))(&v22[v21], v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a5);
    v24 = &v22[(v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
    v26 = v32;
    v25 = v33;
    *v24 = v32;
    v24[1] = v25;
    aBlock[4] = sub_22879F4B8;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228712EA8;
    aBlock[3] = &block_descriptor_39;
    v27 = _Block_copy(aBlock);

    sub_228714B08(v26, v25);

    [v20 performBlock_];
    _Block_release(v27);
  }
}

uint64_t sub_22879D7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[2] = a2;
  v11 = sub_228791F84(sub_22879F62C, v13, a1);
  RelevanceEngineCoordinator.train(with:completion:)(v11, a4, a5, a6, a7);
}

uint64_t sub_22879D868@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for ModelTrainingEvent(0);
  MEMORY[0x28223BE20](v6 - 8);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2287CAA50();
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v10 = sub_2287C99F0();
  sub_2287CA800();
  v11 = sub_2287C9A00();

  if (v11)
  {
    sub_22871511C(0);
    v13 = v12;
    v14 = *(v12 + 48);
    v15 = sub_228710DC8();

    *a3 = v15;
    sub_22879F650(a1, a3 + v14, type metadata accessor for ModelTrainingEvent);
    return (*(*(v13 - 8) + 56))(a3, 0, 1, v13);
  }

  else
  {
    v17 = v32;
    v31 = a3;
    sub_2287CA9E0();
    v18 = v33;
    sub_22879F650(a1, v33, type metadata accessor for ModelTrainingEvent);
    v19 = sub_2287CAA40();
    v20 = sub_2287CB5F0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136315138;
      v23 = sub_2287C9670();
      v24 = v18;
      v26 = v25;
      sub_22879F6B8(v24, type metadata accessor for ModelTrainingEvent);
      v27 = sub_2287031D8(v23, v26, &v35);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_2286FF000, v19, v20, "Training event received for feedItem no longer present in the database: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AABFD90](v22, -1, -1);
      MEMORY[0x22AABFD90](v21, -1, -1);
    }

    else
    {

      sub_22879F6B8(v18, type metadata accessor for ModelTrainingEvent);
    }

    (*(v17 + 8))(v34, v8);
    v28 = v31;
    sub_22871511C(0);
    return (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
  }
}

void sub_22879DC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v115 = a5;
  v116 = a6;
  v90 = a4;
  v91 = a3;
  v114 = a2;
  v97 = sub_2287C97C0();
  v7 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_2287CAA50();
  v9 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v124 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22871511C(0);
  v12 = v11;
  v13 = MEMORY[0x28223BE20](v11);
  v112 = (&v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v95 = (&v90 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v90 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v90 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v90 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v90 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v90 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = (&v90 - v33);
  MEMORY[0x28223BE20](v32);
  v111 = (&v90 - v37);
  v38 = *(a1 + 16);
  if (v38)
  {
    v106 = *(v116 + 32);
    v107 = v116 + 32;
    v104 = *(v116 + 40);
    v105 = v116 + 40;
    v39 = a1 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v103 = *(v12 + 48);
    v102 = *(v35 + 72);
    v101 = (v9 + 8);
    v94 = (v7 + 16);
    v93 = (v7 + 8);
    *&v36 = 136315906;
    v92 = v36;
    v125 = v12;
    v117 = v25;
    v118 = v22;
    v110 = v28;
    v109 = v31;
    v108 = v34;
    do
    {
      v122 = v39;
      v123 = v38;
      v41 = v111;
      sub_22879F650(v39, v111, sub_22871511C);
      v42 = *(v12 + 48);
      v121 = *v41;
      *v34 = v121;
      sub_228798E1C(v41 + v103, v34 + v42);
      sub_2287CA9E0();
      sub_22879F650(v34, v31, sub_22871511C);
      sub_22879F650(v34, v28, sub_22871511C);
      sub_22879F650(v34, v25, sub_22871511C);
      sub_22879F650(v34, v22, sub_22871511C);
      v43 = sub_2287CAA40();
      v44 = sub_2287CB610();
      v45 = v44;
      if (os_log_type_enabled(v43, v44))
      {
        v46 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        aBlock[0] = v120;
        *v46 = v92;
        v98 = sub_22871511C;
        sub_22879F650(v31, v19, sub_22871511C);
        v119 = v45;
        v47 = *v19;
        v48 = *(v125 + 48);
        v49 = [*v19 identifier];

        v50 = sub_2287CB220();
        v100 = v43;
        v52 = v51;

        sub_22879F6B8(v31, sub_22871511C);
        sub_22879F6B8(v19 + v48, type metadata accessor for ModelTrainingEvent);
        v53 = sub_2287031D8(v50, v52, aBlock);

        *(v46 + 4) = v53;
        *(v46 + 12) = 2114;
        v54 = v98;
        sub_22879F650(v28, v19, v98);

        v55 = v19 + *(v125 + 48);
        v56 = type metadata accessor for ModelTrainingEvent(0);
        v57 = v96;
        v58 = v97;
        (*v94)(v96, v55 + v56[7], v97);
        sub_22879F6B8(v55, type metadata accessor for ModelTrainingEvent);
        v59 = sub_2287C9770();
        (*v93)(v57, v58);
        sub_22879F6B8(v28, sub_22871511C);
        *(v46 + 14) = v59;
        v60 = v99;
        *v99 = v59;
        *(v46 + 22) = 2082;
        v61 = v117;
        sub_22879F650(v117, v19, v54);

        v62 = v19 + *(v125 + 48);
        LODWORD(v59) = *(v62 + v56[6]);
        sub_22879F6B8(v62, type metadata accessor for ModelTrainingEvent);
        v63 = v59 == 0;
        if (v59)
        {
          v64 = 1702195828;
        }

        else
        {
          v64 = 0x65736C6166;
        }

        if (v63)
        {
          v65 = 0xE500000000000000;
        }

        else
        {
          v65 = 0xE400000000000000;
        }

        sub_22879F6B8(v61, sub_22871511C);
        v66 = sub_2287031D8(v64, v65, aBlock);
        v12 = v125;

        *(v46 + 24) = v66;
        *(v46 + 32) = 2082;
        v67 = v118;
        v68 = v95;
        sub_22879F650(v118, v95, v54);

        v69 = v68 + *(v12 + 48);
        v70 = *(v69 + v56[5]);
        sub_22879F6B8(v69, type metadata accessor for ModelTrainingEvent);
        v71 = v70 == 0;
        if (v70)
        {
          v72 = 0x6C6C657764;
        }

        else
        {
          v72 = 7364980;
        }

        if (v71)
        {
          v73 = 0xE300000000000000;
        }

        else
        {
          v73 = 0xE500000000000000;
        }

        sub_22879F6B8(v67, sub_22871511C);
        v74 = sub_2287031D8(v72, v73, aBlock);

        *(v46 + 34) = v74;
        v75 = v100;
        _os_log_impl(&dword_2286FF000, v100, v119, "RelevanceEngineCoordinator: submitting training for feedItem %s at time %{public}@, positive: %{public}s, feedbackKind: %{public}s", v46, 0x2Au);
        sub_22879F6B8(v60, sub_228703900);
        MEMORY[0x22AABFD90](v60, -1, -1);
        v76 = v120;
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v76, -1, -1);
        MEMORY[0x22AABFD90](v46, -1, -1);
      }

      else
      {

        sub_22879F6B8(v22, sub_22871511C);
        sub_22879F6B8(v25, sub_22871511C);
        sub_22879F6B8(v28, sub_22871511C);
        sub_22879F6B8(v31, sub_22871511C);
      }

      (*v101)(v124, v113);
      v77 = v115;
      v78 = v116;
      v120 = v106(v115, v116);
      v79 = v108;
      v80 = v112;
      sub_22879F650(v108, v112, sub_22871511C);

      v81 = v80 + *(v12 + 48);
      v82 = v12;
      v83 = type metadata accessor for ModelTrainingEvent(0);
      v119 = *(v81 + *(v83 + 24));
      sub_22879F6B8(v81, type metadata accessor for ModelTrainingEvent);
      sub_22879F650(v79, v19, sub_22871511C);

      v84 = v19 + *(v82 + 48);
      v85 = *(v84 + *(v83 + 20));
      sub_22879F6B8(v84, type metadata accessor for ModelTrainingEvent);
      LOBYTE(aBlock[0]) = v85;
      v86 = v104(aBlock, v77, v78);
      v87 = [v86 name];

      if (!v87)
      {
        sub_2287CB220();
        v87 = sub_2287CB210();
      }

      v40 = v120;
      [v120 trainWithUnmanagedElement:v121 isPositiveEvent:v119 interaction:{v87, v90}];

      sub_22879F6B8(v79, sub_22871511C);
      v39 = v122 + v102;
      v38 = v123 - 1;
      v12 = v125;
      v25 = v117;
      v22 = v118;
      v28 = v110;
      v31 = v109;
      v34 = v79;
    }

    while (v123 != 1);
  }

  v88 = (*(v116 + 16))(v115);
  if (v91)
  {
    aBlock[4] = v91;
    aBlock[5] = v90;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228712EA8;
    aBlock[3] = &block_descriptor_51;
    v89 = _Block_copy(aBlock);
  }

  else
  {
    v89 = 0;
  }

  [v88 trainPendingEventsWithCompletion_];
  _Block_release(v89);
}

id RelevanceEngineCoordinator.computeAdHocRelevancePrediction(for:referenceDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = MEMORY[0x277CC9578];
  sub_22879EF14(0, &qword_280DE3A98, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  v13 = (*(a4 + 32))(a3, a4);
  sub_22879F52C(a2, v12, &qword_280DE3A98, v9);
  sub_22879A3E0(v12);

  v14 = sub_228710DC8();
  v15 = *(a4 + 16);
  v16 = v15(a3, a4);
  [v16 addElement:v14 section:*MEMORY[0x277D44500]];

  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  sub_2287035A4(0, &qword_280DE39A8, MEMORY[0x277D837D0]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2287CCFE0;
  *(v18 + 32) = sub_2287CB220();
  *(v18 + 40) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  v21 = v17;
  RelevanceEngineCoordinator.resumeEngineIfNeeded(sectionIdentifiers:completion:)(v18, sub_22879F5AC, v20, a3, a4);

  sub_2287CB660();
  v22 = v15(a3, a4);
  v23 = [v22 predictionForElement_];

  v24 = v15(a3, a4);
  [v24 removeElement_];

  sub_22879E9AC(v5, a3, a4);
  return v23;
}

void sub_22879E9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22879EF14(0, &qword_280DE3A98, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  v8 = (*(a3 + 32))(a2, a3);
  v9 = sub_2287C97C0();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_22879A3E0(v7);
}

uint64_t sub_22879EABC()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (*(*(v2 - 8) + 64) + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_2287C9700() - 8);
  v6 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v0 + v4);
  v8 = (*(v3 + 16))(v2, v3);
  [v8 saveModelFile];

  return v7(v1 + v6);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22879EBF0()
{
  result = qword_280DE3A28;
  if (!qword_280DE3A28)
  {
    sub_2287CB080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE3A28);
  }

  return result;
}

void sub_22879EC48()
{
  v1 = (*(*(v0[2] - 8) + 80) + 40) & ~*(*(v0[2] - 8) + 80);
  v2 = (v0 + ((*(*(v0[2] - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_22879DC10(v0[4], v0 + v1, *v2, v2[1], v0[2], v0[3]);
}

id static RERule.makeRankByPreferringPresenceOfFeatureRule(feature:)(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 conditionHasValueForFeature_];
  v4 = [v2 notCondition_];
  v5 = [objc_opt_self() trueCondition];
  v6 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v3 rightCondition:v4 comparisonCondition:v5 order:1];

  return v6;
}

id static RERule.makeExcludeIfValueIsEqualForFeature<A>(feature:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_opt_self();
  v6 = [v5 conditionHasValueForFeature_];
  sub_2287CB350();
  v7 = [v5 conditionForFeature:a1 relation:0 integerValue:v15];
  sub_2287035A4(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2287CCFD0;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  sub_228703004(0, &qword_280DE3640, 0x277D443D8);
  v9 = v6;
  v10 = v7;
  v11 = sub_2287CB390();

  v12 = [v5 andConditions_];

  v13 = [objc_allocWithZone(MEMORY[0x277D44438]) initWithCondition:v12 type:0];
  return v13;
}

void sub_22879EF14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id _sSo6RERuleC18HealthPlatformCoreE38makeExcludeIfValueIsZeroForFeatureRule7featureABSo9REFeatureC_tFZ_0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 conditionHasValueForFeature_];
  v4 = [v2 conditionForFeature:a1 relation:-1 floatValue:3.18618444e-58];
  sub_2287035A4(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2287CCFD0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  sub_228703004(0, &qword_280DE3640, 0x277D443D8);
  v6 = v3;
  v7 = v4;
  v8 = sub_2287CB390();

  v9 = [v2 andConditions_];

  v10 = [objc_allocWithZone(MEMORY[0x277D44438]) initWithCondition:v9 type:0];
  return v10;
}

id _sSo6RERuleC18HealthPlatformCoreE47makeExcludeTwoBarComparisonWithLowMagnitudeRuleAByFZ_0()
{
  v0 = sub_2287CA2E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DE37B8 != -1)
  {
    swift_once();
  }

  v4 = qword_280DE6388;
  v5 = objc_opt_self();
  v6 = [v5 conditionHasValueForFeature_];
  LODWORD(v7) = 1036160860;
  v8 = [v5 conditionForFeature:v4 relation:-1 floatValue:v7];
  if (qword_280DE3788 != -1)
  {
    swift_once();
  }

  v9 = qword_280DE6368;
  (*(v1 + 104))(v3, *MEMORY[0x277D12078], v0);
  sub_2287CA2D0();
  (*(v1 + 8))(v3, v0);
  v10 = sub_2287CB210();

  v11 = [v5 conditionForFeature:v9 hasValue:v10];

  sub_2287035A4(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2287CE380;
  *(v12 + 32) = v6;
  *(v12 + 40) = v8;
  *(v12 + 48) = v11;
  sub_228703004(0, &qword_280DE3640, 0x277D443D8);
  v13 = v6;
  v14 = v8;
  v15 = v11;
  v16 = sub_2287CB390();

  v17 = [v5 andConditions_];

  v18 = [objc_allocWithZone(MEMORY[0x277D44438]) initWithCondition:v17 type:0];
  return v18;
}

uint64_t sub_22879F3D4()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_22879C3B0(v0 + v1, *(v0 + v2), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + 16), *(v0 + 24));
}

void sub_22879F44C()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (v0 + ((*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_22879D1AC(v0 + v1, *v2, v2[1], *(v0 + 16), *(v0 + 24));
}

uint64_t sub_22879F4B8()
{
  v1 = (*(*(v0[2] - 8) + 80) + 80) & ~*(*(v0[2] - 8) + 80);
  v2 = (v0 + ((*(*(v0[2] - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_22879D7D4(v0[4], (v0 + 5), v0 + v1, *v2, v2[1], v0[2], v0[3]);
}

uint64_t sub_22879F52C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22879EF14(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22879F650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22879F6B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22879F718()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_22879CA98(v0 + v1, *(v0 + v2), *(v0 + v2 + 8), *(v0 + ((v2 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + 16), *(v0 + 24));
}

void sub_22879F790(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = (*(*(v2 + 24) + 16))(*(v2 + 16));
  v6 = [v5 elementAtPath_];

  *a2 = v6;
}

uint64_t LocalizedTitleFeatureTag.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LocalizedTitleFeatureTag.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_22879F958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t), uint64_t (*a7)(uint64_t, uint64_t))
{
  v77 = a6;
  v78 = a7;
  v76 = a5;
  v80 = a4;
  v10 = sub_2287CAA50();
  v84 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v81 = &v75 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v75 - v19;
  sub_2287CA9D0();

  v21 = sub_2287CAA40();
  v22 = sub_2287CB610();

  v23 = os_log_type_enabled(v21, v22);
  v82 = a3;
  v83 = v13;
  v79 = v18;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v85 = v25;
    v86 = a3;
    *v24 = 136446466;
    swift_getMetatypeMetadata();
    v26 = sub_2287CB250();
    v28 = v10;
    v29 = sub_2287031D8(v26, v27, &v85);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2082;
    v30 = v80(a1, a2);
    v32 = sub_2287031D8(v30, v31, &v85);
    v10 = v28;

    *(v24 + 14) = v32;
    _os_log_impl(&dword_2286FF000, v21, v22, "[%{public}s]: %{public}s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v25, -1, -1);
    v33 = v24;
    v18 = v79;
    MEMORY[0x22AABFD90](v33, -1, -1);

    v34 = *(v84 + 8);
    v34(v20, v28);
  }

  else
  {

    v34 = *(v84 + 8);
    v34(v20, v10);
  }

  sub_2287CA9D0();

  v35 = sub_2287CAA40();
  v36 = sub_2287CB5D0();

  v37 = os_log_type_enabled(v35, v36);
  v80 = v34;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v85 = v39;
    *v38 = 136446466;
    v86 = v82;
    swift_getMetatypeMetadata();
    v40 = sub_2287CB250();
    v42 = v10;
    v43 = sub_2287031D8(v40, v41, &v85);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2082;
    v44 = v76(a1, a2);
    v46 = sub_2287031D8(v44, v45, &v85);

    *(v38 + 14) = v46;
    v10 = v42;
    _os_log_impl(&dword_2286FF000, v35, v36, "[%{public}s]: %{public}s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v39, -1, -1);
    v47 = v38;
    v34 = v80;
    MEMORY[0x22AABFD90](v47, -1, -1);

    v48 = v79;
    v49 = v42;
  }

  else
  {

    v48 = v18;
    v49 = v10;
  }

  v34(v48, v49);
  v50 = v81;
  sub_2287CA9D0();

  v51 = sub_2287CAA40();
  v52 = sub_2287CB610();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v85 = v54;
    *v53 = 136446466;
    v86 = v82;
    swift_getMetatypeMetadata();
    v55 = sub_2287CB250();
    v57 = sub_2287031D8(v55, v56, &v85);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2082;
    v58 = v77(a1, a2);
    v60 = sub_2287031D8(v58, v59, &v85);

    *(v53 + 14) = v60;
    _os_log_impl(&dword_2286FF000, v51, v52, "[%{public}s]: %{public}s", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v54, -1, -1);
    v61 = v53;
    v34 = v80;
    MEMORY[0x22AABFD90](v61, -1, -1);

    v62 = v81;
  }

  else
  {

    v62 = v50;
  }

  v34(v62, v10);
  v63 = v83;
  sub_2287CA9D0();

  v64 = sub_2287CAA40();
  v65 = sub_2287CB5D0();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v85 = v67;
    *v66 = 136446466;
    v86 = v82;
    swift_getMetatypeMetadata();
    v68 = sub_2287CB250();
    v70 = sub_2287031D8(v68, v69, &v85);

    *(v66 + 4) = v70;
    *(v66 + 12) = 2082;
    v71 = v78(a1, a2);
    v73 = sub_2287031D8(v71, v72, &v85);

    *(v66 + 14) = v73;
    _os_log_impl(&dword_2286FF000, v64, v65, "[%{public}s]: %{public}s", v66, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v67, -1, -1);
    MEMORY[0x22AABFD90](v66, -1, -1);

    return v80(v83, v10);
  }

  else
  {

    return v34(v63, v10);
  }
}

uint64_t sub_2287A00B8(uint64_t a1)
{
  sub_2287736E4(0);
  v55 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v54 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v53 = &v47 - v5;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v60 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v6, 0);
    v58 = v60;
    v8 = a1 + 64;
    result = sub_2287CB890();
    v10 = result;
    v11 = 0;
    v12 = *(a1 + 36);
    v48 = a1 + 72;
    v49 = v6;
    v50 = v12;
    v51 = a1 + 64;
    v52 = a1;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      if (v12 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v56 = v11;
      v57 = 1 << v10;
      v15 = v55;
      v16 = *(v55 + 48);
      v17 = *(a1 + 48);
      v18 = sub_2287C9810();
      v19 = *(v18 - 8);
      v20 = v53;
      (*(v19 + 16))(v53, v17 + *(v19 + 72) * v10, v18);
      v21 = *(a1 + 56);
      sub_22872C6C0(0);
      sub_2287ADCC8(v21 + *(*(v22 - 8) + 72) * v10, &v20[v16], sub_22872C6C0);
      v23 = v54;
      (*(v19 + 32))(v54, v20, v18);
      v24 = *(v15 + 48);
      v25 = sub_2287ADEE4(&v20[v16], v23 + v24, sub_22872C6C0);
      v26 = MEMORY[0x22AABF5F0](v25);
      v27 = sub_2287A2A88(v23 + v24, sub_22872C6C0);
      v29 = v28;
      objc_autoreleasePoolPop(v26);
      result = sub_2287ADF4C(v23, sub_2287736E4);
      v30 = v58;
      v60 = v58;
      v32 = *(v58 + 16);
      v31 = *(v58 + 24);
      a1 = v52;
      if (v32 >= v31 >> 1)
      {
        result = sub_2287042D4((v31 > 1), v32 + 1, 1);
        v30 = v60;
      }

      *(v30 + 16) = v32 + 1;
      v33 = v30 + 16 * v32;
      *(v33 + 32) = v27;
      *(v33 + 40) = v29;
      v13 = 1 << *(a1 + 32);
      if (v10 >= v13)
      {
        goto LABEL_25;
      }

      v8 = v51;
      v34 = *(v51 + 8 * v14);
      if ((v34 & v57) == 0)
      {
        goto LABEL_26;
      }

      v58 = v30;
      LODWORD(v12) = v50;
      if (v50 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v35 = v34 & (-2 << (v10 & 0x3F));
      if (v35)
      {
        v13 = __clz(__rbit64(v35)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v36 = v14 << 6;
        v37 = v14 + 1;
        v38 = (v48 + 8 * v14);
        while (v37 < (v13 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            result = sub_228717DF8(v10, v50, 0);
            v13 = __clz(__rbit64(v39)) + v36;
            goto LABEL_4;
          }
        }

        result = sub_228717DF8(v10, v50, 0);
      }

LABEL_4:
      v11 = v56 + 1;
      v10 = v13;
      if (v56 + 1 == v49)
      {
        v7 = v58;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
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

  else
  {
LABEL_21:
    v60 = v7;
    sub_22873E054(0, &qword_280DE3A00, MEMORY[0x277D837D0]);
    sub_228714B18();
    v41 = sub_2287CB1D0();
    v43 = v42;

    v60 = 0;
    v61 = 0xE000000000000000;
    sub_2287CBA20();
    v59 = *(a1 + 16);
    v44 = sub_2287CBCC0();
    v46 = v45;

    v60 = v44;
    v61 = v46;
    MEMORY[0x22AABE980](0xD000000000000018, 0x80000002287D0A30);
    MEMORY[0x22AABE980](v41, v43);

    return v60;
  }

  return result;
}

uint64_t sub_2287A0590(uint64_t a1)
{
  sub_228776028(0);
  v55 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v54 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v53 = &v47 - v5;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v60 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v6, 0);
    v58 = v60;
    v8 = a1 + 64;
    result = sub_2287CB890();
    v10 = result;
    v11 = 0;
    v12 = *(a1 + 36);
    v48 = a1 + 72;
    v49 = v6;
    v50 = v12;
    v51 = a1 + 64;
    v52 = a1;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      if (v12 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v56 = v11;
      v57 = 1 << v10;
      v15 = v55;
      v16 = *(v55 + 48);
      v17 = *(a1 + 48);
      v18 = sub_2287C9810();
      v19 = *(v18 - 8);
      v20 = v53;
      (*(v19 + 16))(v53, v17 + *(v19 + 72) * v10, v18);
      v21 = *(a1 + 56);
      sub_22872C820(0);
      sub_2287ADCC8(v21 + *(*(v22 - 8) + 72) * v10, &v20[v16], sub_22872C820);
      v23 = v54;
      (*(v19 + 32))(v54, v20, v18);
      v24 = *(v15 + 48);
      v25 = sub_2287ADEE4(&v20[v16], v23 + v24, sub_22872C820);
      v26 = MEMORY[0x22AABF5F0](v25);
      v27 = sub_2287A2A88(v23 + v24, sub_22872C820);
      v29 = v28;
      objc_autoreleasePoolPop(v26);
      result = sub_2287ADF4C(v23, sub_228776028);
      v30 = v58;
      v60 = v58;
      v32 = *(v58 + 16);
      v31 = *(v58 + 24);
      a1 = v52;
      if (v32 >= v31 >> 1)
      {
        result = sub_2287042D4((v31 > 1), v32 + 1, 1);
        v30 = v60;
      }

      *(v30 + 16) = v32 + 1;
      v33 = v30 + 16 * v32;
      *(v33 + 32) = v27;
      *(v33 + 40) = v29;
      v13 = 1 << *(a1 + 32);
      if (v10 >= v13)
      {
        goto LABEL_25;
      }

      v8 = v51;
      v34 = *(v51 + 8 * v14);
      if ((v34 & v57) == 0)
      {
        goto LABEL_26;
      }

      v58 = v30;
      LODWORD(v12) = v50;
      if (v50 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v35 = v34 & (-2 << (v10 & 0x3F));
      if (v35)
      {
        v13 = __clz(__rbit64(v35)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v36 = v14 << 6;
        v37 = v14 + 1;
        v38 = (v48 + 8 * v14);
        while (v37 < (v13 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            result = sub_228717DF8(v10, v50, 0);
            v13 = __clz(__rbit64(v39)) + v36;
            goto LABEL_4;
          }
        }

        result = sub_228717DF8(v10, v50, 0);
      }

LABEL_4:
      v11 = v56 + 1;
      v10 = v13;
      if (v56 + 1 == v49)
      {
        v7 = v58;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
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

  else
  {
LABEL_21:
    v60 = v7;
    sub_22873E054(0, &qword_280DE3A00, MEMORY[0x277D837D0]);
    sub_228714B18();
    v41 = sub_2287CB1D0();
    v43 = v42;

    v60 = 0;
    v61 = 0xE000000000000000;
    sub_2287CBA20();
    v59 = *(a1 + 16);
    v44 = sub_2287CBCC0();
    v46 = v45;

    v60 = v44;
    v61 = v46;
    MEMORY[0x22AABE980](0xD000000000000018, 0x80000002287D0A30);
    MEMORY[0x22AABE980](v41, v43);

    return v60;
  }

  return result;
}

uint64_t sub_2287A0A68(uint64_t a1)
{
  sub_22870C47C(0);
  v57 = v2;
  MEMORY[0x28223BE20](v2);
  v56 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287736E4(0);
  v55 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = &v49 - v7;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v64 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v8, 0);
    v61 = v64;
    v10 = a1 + 64;
    result = sub_2287CB890();
    v12 = result;
    v13 = 0;
    v14 = *(a1 + 36);
    v49 = a1 + 72;
    v50 = v8;
    v51 = v14;
    v52 = a1 + 64;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      if (v14 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v59 = 1 << v12;
      v60 = v12 >> 6;
      v58 = v13;
      v16 = v55;
      v17 = *(v55 + 48);
      v18 = *(a1 + 48);
      v19 = sub_2287C9810();
      v20 = *(v19 - 8);
      v21 = v53;
      (*(v20 + 16))(v53, v18 + *(v20 + 72) * v12, v19);
      v22 = *(a1 + 56);
      sub_22872C6C0(0);
      v24 = v23 - 8;
      sub_2287ADCC8(v22 + *(*(v23 - 8) + 72) * v12, &v21[v17], sub_22872C6C0);
      v25 = v54;
      (*(v20 + 32))(v54, v21, v19);
      v26 = v25 + *(v16 + 48);
      v27 = sub_2287ADEE4(&v21[v17], v26, sub_22872C6C0);
      v28 = MEMORY[0x22AABF5F0](v27);
      __swift_project_boxed_opaque_existential_1((v26 + *(v24 + 36)), *(v26 + *(v24 + 36) + 24));
      v62 = sub_2287C9A70();
      v63 = v29;
      MEMORY[0x22AABE980](2128928, 0xE300000000000000);
      v30 = sub_2287C9E50();
      v31 = sub_2287C9C50();
      MEMORY[0x22AABE980](v31);

      MEMORY[0x22AABE980](2128928, 0xE300000000000000);
      sub_2287ADCC8(v26, v56, sub_22870C47C);
      v32 = sub_2287CB250();
      MEMORY[0x22AABE980](v32);

      v33 = v62;
      v34 = v63;
      objc_autoreleasePoolPop(v28);
      result = sub_2287ADF4C(v25, sub_2287736E4);
      v35 = v61;
      v64 = v61;
      v37 = *(v61 + 16);
      v36 = *(v61 + 24);
      if (v37 >= v36 >> 1)
      {
        result = sub_2287042D4((v36 > 1), v37 + 1, 1);
        v35 = v64;
      }

      *(v35 + 16) = v37 + 1;
      v38 = v35 + 16 * v37;
      *(v38 + 32) = v33;
      *(v38 + 40) = v34;
      v15 = 1 << *(a1 + 32);
      if (v12 >= v15)
      {
        goto LABEL_25;
      }

      v10 = v52;
      v39 = *(v52 + 8 * v60);
      if ((v39 & v59) == 0)
      {
        goto LABEL_26;
      }

      v61 = v35;
      LODWORD(v14) = v51;
      if (v51 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v40 = v39 & (-2 << (v12 & 0x3F));
      if (v40)
      {
        v15 = __clz(__rbit64(v40)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v41 = v60 << 6;
        v42 = v60 + 1;
        v43 = (v49 + 8 * v60);
        while (v42 < (v15 + 63) >> 6)
        {
          v45 = *v43++;
          v44 = v45;
          v41 += 64;
          ++v42;
          if (v45)
          {
            result = sub_228717DF8(v12, v51, 0);
            v15 = __clz(__rbit64(v44)) + v41;
            goto LABEL_4;
          }
        }

        result = sub_228717DF8(v12, v51, 0);
      }

LABEL_4:
      v13 = v58 + 1;
      v12 = v15;
      if (v58 + 1 == v50)
      {
        v9 = v61;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
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

  else
  {
LABEL_21:
    v62 = v9;
    sub_22873E054(0, &qword_280DE3A00, MEMORY[0x277D837D0]);
    sub_228714B18();
    v46 = sub_2287CB1D0();
    v48 = v47;

    v62 = 0;
    v63 = 0xE000000000000000;
    sub_2287CBA20();

    v62 = 0xD00000000000001ELL;
    v63 = 0x80000002287D0A50;
    MEMORY[0x22AABE980](v46, v48);

    return v62;
  }

  return result;
}

uint64_t sub_2287A1004(uint64_t a1)
{
  sub_22870CA30(0);
  v57 = v2;
  MEMORY[0x28223BE20](v2);
  v56 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228776028(0);
  v55 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = &v49 - v7;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v64 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v8, 0);
    v61 = v64;
    v10 = a1 + 64;
    result = sub_2287CB890();
    v12 = result;
    v13 = 0;
    v14 = *(a1 + 36);
    v49 = a1 + 72;
    v50 = v8;
    v51 = v14;
    v52 = a1 + 64;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      if (v14 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v59 = 1 << v12;
      v60 = v12 >> 6;
      v58 = v13;
      v16 = v55;
      v17 = *(v55 + 48);
      v18 = *(a1 + 48);
      v19 = sub_2287C9810();
      v20 = *(v19 - 8);
      v21 = v53;
      (*(v20 + 16))(v53, v18 + *(v20 + 72) * v12, v19);
      v22 = *(a1 + 56);
      sub_22872C820(0);
      v24 = v23 - 8;
      sub_2287ADCC8(v22 + *(*(v23 - 8) + 72) * v12, &v21[v17], sub_22872C820);
      v25 = v54;
      (*(v20 + 32))(v54, v21, v19);
      v26 = v25 + *(v16 + 48);
      v27 = sub_2287ADEE4(&v21[v17], v26, sub_22872C820);
      v28 = MEMORY[0x22AABF5F0](v27);
      __swift_project_boxed_opaque_existential_1((v26 + *(v24 + 36)), *(v26 + *(v24 + 36) + 24));
      v62 = sub_2287C9A70();
      v63 = v29;
      MEMORY[0x22AABE980](2128928, 0xE300000000000000);
      v30 = sub_2287C9E50();
      v31 = sub_2287C9C50();
      MEMORY[0x22AABE980](v31);

      MEMORY[0x22AABE980](2128928, 0xE300000000000000);
      sub_2287ADCC8(v26, v56, sub_22870CA30);
      v32 = sub_2287CB250();
      MEMORY[0x22AABE980](v32);

      v33 = v62;
      v34 = v63;
      objc_autoreleasePoolPop(v28);
      result = sub_2287ADF4C(v25, sub_228776028);
      v35 = v61;
      v64 = v61;
      v37 = *(v61 + 16);
      v36 = *(v61 + 24);
      if (v37 >= v36 >> 1)
      {
        result = sub_2287042D4((v36 > 1), v37 + 1, 1);
        v35 = v64;
      }

      *(v35 + 16) = v37 + 1;
      v38 = v35 + 16 * v37;
      *(v38 + 32) = v33;
      *(v38 + 40) = v34;
      v15 = 1 << *(a1 + 32);
      if (v12 >= v15)
      {
        goto LABEL_25;
      }

      v10 = v52;
      v39 = *(v52 + 8 * v60);
      if ((v39 & v59) == 0)
      {
        goto LABEL_26;
      }

      v61 = v35;
      LODWORD(v14) = v51;
      if (v51 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v40 = v39 & (-2 << (v12 & 0x3F));
      if (v40)
      {
        v15 = __clz(__rbit64(v40)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v41 = v60 << 6;
        v42 = v60 + 1;
        v43 = (v49 + 8 * v60);
        while (v42 < (v15 + 63) >> 6)
        {
          v45 = *v43++;
          v44 = v45;
          v41 += 64;
          ++v42;
          if (v45)
          {
            result = sub_228717DF8(v12, v51, 0);
            v15 = __clz(__rbit64(v44)) + v41;
            goto LABEL_4;
          }
        }

        result = sub_228717DF8(v12, v51, 0);
      }

LABEL_4:
      v13 = v58 + 1;
      v12 = v15;
      if (v58 + 1 == v50)
      {
        v9 = v61;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
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

  else
  {
LABEL_21:
    v62 = v9;
    sub_22873E054(0, &qword_280DE3A00, MEMORY[0x277D837D0]);
    sub_228714B18();
    v46 = sub_2287CB1D0();
    v48 = v47;

    v62 = 0;
    v63 = 0xE000000000000000;
    sub_2287CBA20();

    v62 = 0xD00000000000001ELL;
    v63 = 0x80000002287D0A50;
    MEMORY[0x22AABE980](v46, v48);

    return v62;
  }

  return result;
}

uint64_t sub_2287A15A0(uint64_t a1, uint64_t a2)
{
  sub_2287ADD30(0);
  v56 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v55 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v54 = &v48 - v6;
  v7 = *(a2 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v61 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v7, 0);
    v59 = v61;
    v9 = a2 + 64;
    result = sub_2287CB890();
    v11 = result;
    v12 = 0;
    v13 = *(a2 + 36);
    v49 = a2 + 72;
    v50 = v7;
    v51 = v13;
    v52 = a2 + 64;
    v53 = a2;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a2 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_23;
      }

      if (v13 != *(a2 + 36))
      {
        goto LABEL_24;
      }

      v57 = v12;
      v58 = 1 << v11;
      v16 = v56;
      v17 = *(v56 + 48);
      v18 = *(a2 + 48);
      v19 = sub_2287C9810();
      v20 = *(v19 - 8);
      v21 = v54;
      (*(v20 + 16))(v54, v18 + *(v20 + 72) * v11, v19);
      v22 = *(a2 + 56);
      sub_228771868(0);
      sub_2287ADCC8(v22 + *(*(v23 - 8) + 72) * v11, &v21[v17], sub_228771868);
      v24 = v55;
      (*(v20 + 32))(v55, v21, v19);
      v25 = *(v16 + 48);
      v26 = sub_2287ADEE4(&v21[v17], v24 + v25, sub_228771868);
      v27 = MEMORY[0x22AABF5F0](v26);
      v28 = sub_2287A2A88(v24 + v25, sub_228771868);
      v30 = v29;
      objc_autoreleasePoolPop(v27);
      result = sub_2287ADF4C(v24, sub_2287ADD30);
      v31 = v59;
      v61 = v59;
      v33 = *(v59 + 16);
      v32 = *(v59 + 24);
      a2 = v53;
      if (v33 >= v32 >> 1)
      {
        result = sub_2287042D4((v32 > 1), v33 + 1, 1);
        v31 = v61;
      }

      *(v31 + 16) = v33 + 1;
      v34 = v31 + 16 * v33;
      *(v34 + 32) = v28;
      *(v34 + 40) = v30;
      v14 = 1 << *(a2 + 32);
      if (v11 >= v14)
      {
        goto LABEL_25;
      }

      v9 = v52;
      v35 = *(v52 + 8 * v15);
      if ((v35 & v58) == 0)
      {
        goto LABEL_26;
      }

      v59 = v31;
      LODWORD(v13) = v51;
      if (v51 != *(a2 + 36))
      {
        goto LABEL_27;
      }

      v36 = v35 & (-2 << (v11 & 0x3F));
      if (v36)
      {
        v14 = __clz(__rbit64(v36)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v37 = v15 << 6;
        v38 = v15 + 1;
        v39 = (v49 + 8 * v15);
        while (v38 < (v14 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            result = sub_228717DF8(v11, v51, 0);
            v14 = __clz(__rbit64(v40)) + v37;
            goto LABEL_4;
          }
        }

        result = sub_228717DF8(v11, v51, 0);
      }

LABEL_4:
      v12 = v57 + 1;
      v11 = v14;
      if (v57 + 1 == v50)
      {
        v8 = v59;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
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

  else
  {
LABEL_21:
    v61 = v8;
    sub_22873E054(0, &qword_280DE3A00, MEMORY[0x277D837D0]);
    sub_228714B18();
    v42 = sub_2287CB1D0();
    v44 = v43;

    v61 = 0;
    v62 = 0xE000000000000000;
    sub_2287CBA20();
    v60 = *(a2 + 16);
    v45 = sub_2287CBCC0();
    v47 = v46;

    v61 = v45;
    v62 = v47;
    MEMORY[0x22AABE980](0xD000000000000019, 0x80000002287D0A70);
    MEMORY[0x22AABE980](v42, v44);

    return v61;
  }

  return result;
}

uint64_t sub_2287A1A78(uint64_t a1, uint64_t a2)
{
  sub_2287ADE48(0);
  v56 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v55 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v54 = &v48 - v6;
  v7 = *(a2 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v61 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v7, 0);
    v59 = v61;
    v9 = a2 + 64;
    result = sub_2287CB890();
    v11 = result;
    v12 = 0;
    v13 = *(a2 + 36);
    v49 = a2 + 72;
    v50 = v7;
    v51 = v13;
    v52 = a2 + 64;
    v53 = a2;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a2 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_23;
      }

      if (v13 != *(a2 + 36))
      {
        goto LABEL_24;
      }

      v57 = v12;
      v58 = 1 << v11;
      v16 = v56;
      v17 = *(v56 + 48);
      v18 = *(a2 + 48);
      v19 = sub_2287C9810();
      v20 = *(v19 - 8);
      v21 = v54;
      (*(v20 + 16))(v54, v18 + *(v20 + 72) * v11, v19);
      v22 = *(a2 + 56);
      sub_228774694(0);
      sub_2287ADCC8(v22 + *(*(v23 - 8) + 72) * v11, &v21[v17], sub_228774694);
      v24 = v55;
      (*(v20 + 32))(v55, v21, v19);
      v25 = *(v16 + 48);
      v26 = sub_2287ADEE4(&v21[v17], v24 + v25, sub_228774694);
      v27 = MEMORY[0x22AABF5F0](v26);
      v28 = sub_2287A2A88(v24 + v25, sub_228774694);
      v30 = v29;
      objc_autoreleasePoolPop(v27);
      result = sub_2287ADF4C(v24, sub_2287ADE48);
      v31 = v59;
      v61 = v59;
      v33 = *(v59 + 16);
      v32 = *(v59 + 24);
      a2 = v53;
      if (v33 >= v32 >> 1)
      {
        result = sub_2287042D4((v32 > 1), v33 + 1, 1);
        v31 = v61;
      }

      *(v31 + 16) = v33 + 1;
      v34 = v31 + 16 * v33;
      *(v34 + 32) = v28;
      *(v34 + 40) = v30;
      v14 = 1 << *(a2 + 32);
      if (v11 >= v14)
      {
        goto LABEL_25;
      }

      v9 = v52;
      v35 = *(v52 + 8 * v15);
      if ((v35 & v58) == 0)
      {
        goto LABEL_26;
      }

      v59 = v31;
      LODWORD(v13) = v51;
      if (v51 != *(a2 + 36))
      {
        goto LABEL_27;
      }

      v36 = v35 & (-2 << (v11 & 0x3F));
      if (v36)
      {
        v14 = __clz(__rbit64(v36)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v37 = v15 << 6;
        v38 = v15 + 1;
        v39 = (v49 + 8 * v15);
        while (v38 < (v14 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            result = sub_228717DF8(v11, v51, 0);
            v14 = __clz(__rbit64(v40)) + v37;
            goto LABEL_4;
          }
        }

        result = sub_228717DF8(v11, v51, 0);
      }

LABEL_4:
      v12 = v57 + 1;
      v11 = v14;
      if (v57 + 1 == v50)
      {
        v8 = v59;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
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

  else
  {
LABEL_21:
    v61 = v8;
    sub_22873E054(0, &qword_280DE3A00, MEMORY[0x277D837D0]);
    sub_228714B18();
    v42 = sub_2287CB1D0();
    v44 = v43;

    v61 = 0;
    v62 = 0xE000000000000000;
    sub_2287CBA20();
    v60 = *(a2 + 16);
    v45 = sub_2287CBCC0();
    v47 = v46;

    v61 = v45;
    v62 = v47;
    MEMORY[0x22AABE980](0xD000000000000019, 0x80000002287D0A70);
    MEMORY[0x22AABE980](v42, v44);

    return v61;
  }

  return result;
}

uint64_t sub_2287A1F50(uint64_t a1, uint64_t a2)
{
  sub_22870C510(0);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v57 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287ADD30(0);
  v56 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v55 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v50 - v8;
  v9 = *(a2 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v65 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v9, 0);
    v62 = v65;
    v11 = a2 + 64;
    result = sub_2287CB890();
    v13 = result;
    v14 = 0;
    v15 = *(a2 + 36);
    v50 = a2 + 72;
    v51 = v9;
    v52 = v15;
    v53 = a2 + 64;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a2 + 32))
    {
      if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_23;
      }

      if (v15 != *(a2 + 36))
      {
        goto LABEL_24;
      }

      v60 = 1 << v13;
      v61 = v13 >> 6;
      v59 = v14;
      v17 = v56;
      v18 = *(v56 + 48);
      v19 = *(a2 + 48);
      v20 = sub_2287C9810();
      v21 = *(v20 - 8);
      v22 = v54;
      (*(v21 + 16))(v54, v19 + *(v21 + 72) * v13, v20);
      v23 = *(a2 + 56);
      sub_228771868(0);
      v25 = v24 - 8;
      sub_2287ADCC8(v23 + *(*(v24 - 8) + 72) * v13, &v22[v18], sub_228771868);
      v26 = v55;
      (*(v21 + 32))(v55, v22, v20);
      v27 = v26 + *(v17 + 48);
      v28 = sub_2287ADEE4(&v22[v18], v27, sub_228771868);
      v29 = MEMORY[0x22AABF5F0](v28);
      __swift_project_boxed_opaque_existential_1((v27 + *(v25 + 36)), *(v27 + *(v25 + 36) + 24));
      v63 = sub_2287C9A70();
      v64 = v30;
      MEMORY[0x22AABE980](2128928, 0xE300000000000000);
      v31 = sub_2287C9E50();
      v32 = sub_2287C9C50();
      MEMORY[0x22AABE980](v32);

      MEMORY[0x22AABE980](2128928, 0xE300000000000000);
      sub_2287ADCC8(v27, v57, sub_22870C510);
      v33 = sub_2287CB250();
      MEMORY[0x22AABE980](v33);

      v34 = v63;
      v35 = v64;
      objc_autoreleasePoolPop(v29);
      result = sub_2287ADF4C(v26, sub_2287ADD30);
      v36 = v62;
      v65 = v62;
      v38 = *(v62 + 16);
      v37 = *(v62 + 24);
      if (v38 >= v37 >> 1)
      {
        result = sub_2287042D4((v37 > 1), v38 + 1, 1);
        v36 = v65;
      }

      *(v36 + 16) = v38 + 1;
      v39 = v36 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v35;
      v16 = 1 << *(a2 + 32);
      if (v13 >= v16)
      {
        goto LABEL_25;
      }

      v11 = v53;
      v40 = *(v53 + 8 * v61);
      if ((v40 & v60) == 0)
      {
        goto LABEL_26;
      }

      v62 = v36;
      LODWORD(v15) = v52;
      if (v52 != *(a2 + 36))
      {
        goto LABEL_27;
      }

      v41 = v40 & (-2 << (v13 & 0x3F));
      if (v41)
      {
        v16 = __clz(__rbit64(v41)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v42 = v61 << 6;
        v43 = v61 + 1;
        v44 = (v50 + 8 * v61);
        while (v43 < (v16 + 63) >> 6)
        {
          v46 = *v44++;
          v45 = v46;
          v42 += 64;
          ++v43;
          if (v46)
          {
            result = sub_228717DF8(v13, v52, 0);
            v16 = __clz(__rbit64(v45)) + v42;
            goto LABEL_4;
          }
        }

        result = sub_228717DF8(v13, v52, 0);
      }

LABEL_4:
      v14 = v59 + 1;
      v13 = v16;
      if (v59 + 1 == v51)
      {
        v10 = v62;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
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

  else
  {
LABEL_21:
    v63 = v10;
    sub_22873E054(0, &qword_280DE3A00, MEMORY[0x277D837D0]);
    sub_228714B18();
    v47 = sub_2287CB1D0();
    v49 = v48;

    v63 = 0;
    v64 = 0xE000000000000000;
    sub_2287CBA20();

    v63 = 0xD00000000000001FLL;
    v64 = 0x80000002287D0A90;
    MEMORY[0x22AABE980](v47, v49);

    return v63;
  }

  return result;
}

uint64_t sub_2287A24EC(uint64_t a1, uint64_t a2)
{
  sub_22870CAC4(0);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v57 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287ADE48(0);
  v56 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v55 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v50 - v8;
  v9 = *(a2 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v65 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v9, 0);
    v62 = v65;
    v11 = a2 + 64;
    result = sub_2287CB890();
    v13 = result;
    v14 = 0;
    v15 = *(a2 + 36);
    v50 = a2 + 72;
    v51 = v9;
    v52 = v15;
    v53 = a2 + 64;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a2 + 32))
    {
      if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_23;
      }

      if (v15 != *(a2 + 36))
      {
        goto LABEL_24;
      }

      v60 = 1 << v13;
      v61 = v13 >> 6;
      v59 = v14;
      v17 = v56;
      v18 = *(v56 + 48);
      v19 = *(a2 + 48);
      v20 = sub_2287C9810();
      v21 = *(v20 - 8);
      v22 = v54;
      (*(v21 + 16))(v54, v19 + *(v21 + 72) * v13, v20);
      v23 = *(a2 + 56);
      sub_228774694(0);
      v25 = v24 - 8;
      sub_2287ADCC8(v23 + *(*(v24 - 8) + 72) * v13, &v22[v18], sub_228774694);
      v26 = v55;
      (*(v21 + 32))(v55, v22, v20);
      v27 = v26 + *(v17 + 48);
      v28 = sub_2287ADEE4(&v22[v18], v27, sub_228774694);
      v29 = MEMORY[0x22AABF5F0](v28);
      __swift_project_boxed_opaque_existential_1((v27 + *(v25 + 36)), *(v27 + *(v25 + 36) + 24));
      v63 = sub_2287C9A70();
      v64 = v30;
      MEMORY[0x22AABE980](2128928, 0xE300000000000000);
      v31 = sub_2287C9E50();
      v32 = sub_2287C9C50();
      MEMORY[0x22AABE980](v32);

      MEMORY[0x22AABE980](2128928, 0xE300000000000000);
      sub_2287ADCC8(v27, v57, sub_22870CAC4);
      v33 = sub_2287CB250();
      MEMORY[0x22AABE980](v33);

      v34 = v63;
      v35 = v64;
      objc_autoreleasePoolPop(v29);
      result = sub_2287ADF4C(v26, sub_2287ADE48);
      v36 = v62;
      v65 = v62;
      v38 = *(v62 + 16);
      v37 = *(v62 + 24);
      if (v38 >= v37 >> 1)
      {
        result = sub_2287042D4((v37 > 1), v38 + 1, 1);
        v36 = v65;
      }

      *(v36 + 16) = v38 + 1;
      v39 = v36 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v35;
      v16 = 1 << *(a2 + 32);
      if (v13 >= v16)
      {
        goto LABEL_25;
      }

      v11 = v53;
      v40 = *(v53 + 8 * v61);
      if ((v40 & v60) == 0)
      {
        goto LABEL_26;
      }

      v62 = v36;
      LODWORD(v15) = v52;
      if (v52 != *(a2 + 36))
      {
        goto LABEL_27;
      }

      v41 = v40 & (-2 << (v13 & 0x3F));
      if (v41)
      {
        v16 = __clz(__rbit64(v41)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v42 = v61 << 6;
        v43 = v61 + 1;
        v44 = (v50 + 8 * v61);
        while (v43 < (v16 + 63) >> 6)
        {
          v46 = *v44++;
          v45 = v46;
          v42 += 64;
          ++v43;
          if (v46)
          {
            result = sub_228717DF8(v13, v52, 0);
            v16 = __clz(__rbit64(v45)) + v42;
            goto LABEL_4;
          }
        }

        result = sub_228717DF8(v13, v52, 0);
      }

LABEL_4:
      v14 = v59 + 1;
      v13 = v16;
      if (v59 + 1 == v51)
      {
        v10 = v62;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
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

  else
  {
LABEL_21:
    v63 = v10;
    sub_22873E054(0, &qword_280DE3A00, MEMORY[0x277D837D0]);
    sub_228714B18();
    v47 = sub_2287CB1D0();
    v49 = v48;

    v63 = 0;
    v64 = 0xE000000000000000;
    sub_2287CBA20();

    v63 = 0xD00000000000001FLL;
    v64 = 0x80000002287D0A90;
    MEMORY[0x22AABE980](v47, v49);

    return v63;
  }

  return result;
}

uint64_t sub_2287A2A88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  __swift_project_boxed_opaque_existential_1((a1 + *(v3 + 28)), *(a1 + *(v3 + 28) + 24));
  sub_2287C9A70();
  sub_22873E0A0();
  v4 = sub_2287CB840();

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 16 + 16 * v5);
    v8 = *v6;
    v7 = v6[1];
  }

  else
  {
    v7 = 0xE400000000000000;
    v8 = 1701736302;
  }

  MEMORY[0x22AABE980](v8, v7);

  return 0x3D6E6967756C70;
}

void sub_2287A2B9C(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2287CB8D0();
    sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
    sub_2287AB250();
    sub_2287CB4C0();
    v3 = v34;
    v4 = v35;
    v5 = v36;
    v6 = v37;
    v7 = v38;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v32 = v3;
  while (1)
  {
    if (v3 < 0)
    {
      if (!sub_2287CB950() || (sub_228703004(0, &qword_280DE3870, 0x277CCD7C8), swift_dynamicCast(), v15 = v39, v13 = v6, v14 = v7, !v39))
      {
LABEL_30:
        sub_22870B3D4(v3);
        return;
      }

      goto LABEL_17;
    }

    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_13:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_30;
    }

LABEL_17:
    v33 = v14;
    v16 = a2;
    v17 = *a2;
    if ((v17 & 0xC000000000000001) != 0)
    {
      if (v17 < 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = v15;
      v19 = sub_2287CBB60();

      if (!v19)
      {
LABEL_28:

        goto LABEL_29;
      }

      swift_unknownObjectRelease();

      v20 = sub_2287CB920();
      v21 = sub_2287AA438(v18, v20);

      v22 = sub_228756BD4(v15);
      v24 = v23;

      if ((v24 & 1) == 0)
      {
        goto LABEL_32;
      }

      v25 = *(*(v21 + 56) + 8 * v22);
      sub_2287AA690(v22, v21);

      a2 = v16;
      *v16 = v21;

      v6 = v13;
      v3 = v32;
      v7 = v33;
    }

    else
    {
      v26 = sub_228756BD4(v15);
      if ((v27 & 1) == 0)
      {
        goto LABEL_28;
      }

      v28 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *v16;
      v39 = *v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2287BB86C();
        v30 = v39;
      }

      v31 = *(*(v30 + 56) + 8 * v28);
      sub_2287AA690(v28, v30);
      *v16 = v30;

LABEL_29:
      v6 = v13;
      a2 = v16;
      v3 = v32;
      v7 = v33;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_30;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_2287A2EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1)@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  result = (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *a3 = sub_2287ADD50;
  a3[1] = v10;
  return result;
}

uint64_t sub_2287A2FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22870C47C(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2287C9920();
  v9 = *(v8 + 16);
  if (v9)
  {
    v20 = MEMORY[0x277D84F90];
    sub_2287135E8(0, v9, 0);
    v10 = v20;
    v11 = v8 + 32;
    do
    {
      sub_2287010E4(v11, v17);
      v12 = v18;
      v13 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      GeneratorPipeline.eraseToAnyPipeline()(v12, v13, v7);
      __swift_destroy_boxed_opaque_existential_0(v17);
      v20 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2287135E8((v14 > 1), v15 + 1, 1);
        v10 = v20;
      }

      *(v10 + 16) = v15 + 1;
      sub_2287ADEE4(v7, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, sub_22870C47C);
      v11 += 40;
      --v9;
    }

    while (v9);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v10;
}

uint64_t FeedItemGeneratorPipelineManager.__allocating_init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)(void *a1, void *a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v17 = swift_allocObject();
  FeedItemGeneratorPipelineManager.init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)(a1, a2, a3, a4 & 1, a5, a6, a7, a8, a9);
  return v17;
}

uint64_t *FeedItemGeneratorPipelineManager.init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)(void *a1, void *a2, uint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v10 = v9;
  v65 = a8;
  v47 = a7;
  v57 = a6;
  v55 = a5;
  v46 = a4;
  v45 = a3;
  v41 = a2;
  v56 = a1;
  v53 = a9;
  v63 = *v10;
  v61 = sub_2287CB6A0();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287A3D08(0);
  v62 = v15;
  v64 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v59 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2287C9DF0();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2287C9E70();
  v51 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v48 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_2287CB6B0();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2287CB670();
  MEMORY[0x28223BE20](v21);
  v22 = sub_2287CB0E0();
  MEMORY[0x28223BE20](v22 - 8);
  v10[34] = 0;
  v10[35] = 0;
  v10[33] = 10;
  v10[32] = [objc_allocWithZone(MEMORY[0x277CCDA78]) initWithHealthStore_];
  sub_2287010E4(a1, &v74);
  sub_2287010E4(a5, &v73);
  sub_2287010E4(v65, &v72);
  sub_2287010E4(a9, &v69);
  v67 = MEMORY[0x277D84F98];
  v68 = MEMORY[0x277D84F98];
  sub_2287A3DD4(0);
  v44 = v23;
  swift_allocObject();
  v10[2] = sub_2287CAD60();
  v10[4] = 0;
  [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  sub_2287CA440();
  swift_allocObject();
  v10[18] = sub_2287CA430();
  v40 = sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_2287CBA20();

  sub_2287A3E9C(0);
  v67 = v24;
  sub_2287A3F30();
  v67 = sub_2287CB250();
  v68 = v25;
  MEMORY[0x22AABE980](0xD000000000000013, 0x80000002287D0720);
  sub_2287CB0A0();
  v67 = MEMORY[0x277D84F90];
  sub_2287ADE00(&qword_280DE39D8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_22876D2A8(0);
  sub_2287ADE00(&qword_280DE39E8, sub_22876D2A8, MEMORY[0x277D83970]);
  sub_2287CB880();
  (*(v42 + 104))(v20, *MEMORY[0x277D85260], v43);
  v10[20] = sub_2287CB6D0();
  sub_2287010E4(&v74, (v10 + 8));
  v26 = v41;
  v10[6] = v41;
  v10[3] = v45;
  *(v10 + 40) = v46 & 1;
  sub_2287010E4(&v73, (v10 + 13));
  v10[31] = v47;
  sub_2287010E4(&v72, (v10 + 21));
  sub_2287010E4(&v69, (v10 + 26));
  sub_2287A3F78(0, &qword_280DE1810, sub_228739F64, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2287CCFE0;
  v28 = v26;

  *(inited + 32) = [v28 profileIdentifier];
  *(inited + 40) = v28;
  v29 = v28;
  v30 = sub_228739FF4(inited);
  swift_setDeallocating();
  sub_2287ADF4C(inited + 32, sub_228739F64);
  v67 = v30;
  sub_22873A15C(0);
  swift_allocObject();
  v10[7] = sub_2287CA690();
  v10[19] = v57;
  v31 = v70;
  v32 = v71;
  __swift_project_boxed_opaque_existential_1(&v69, v70);
  (*(v50 + 104))(v49, *MEMORY[0x277D11F10], v52);

  v33 = v48;
  sub_2287C9E30();
  v34 = (*(v32 + 8))(v33, v31, v32);
  (*(v51 + 8))(v33, v54);
  v67 = v10[2];

  v35 = v58;
  sub_2287CB690();
  v66 = v34;
  sub_2287ADE00(&qword_280DE0108, sub_2287A3DD4, MEMORY[0x277CBCE48]);
  sub_22871EC78();
  v36 = v59;
  sub_2287CB020();
  (*(v60 + 8))(v35, v61);

  *(swift_allocObject() + 16) = v63;
  sub_2287ADE00(&qword_280DE0338, sub_2287A3D08, MEMORY[0x277CBCD20]);
  v37 = v62;
  v38 = sub_2287CB050();

  __swift_destroy_boxed_opaque_existential_0(v53);
  __swift_destroy_boxed_opaque_existential_0(v65);
  __swift_destroy_boxed_opaque_existential_0(v55);
  __swift_destroy_boxed_opaque_existential_0(v56);
  (*(v64 + 8))(v36, v37);
  __swift_destroy_boxed_opaque_existential_0(&v72);
  __swift_destroy_boxed_opaque_existential_0(&v73);
  __swift_destroy_boxed_opaque_existential_0(&v74);
  v10[4] = v38;

  __swift_destroy_boxed_opaque_existential_0(&v69);
  return v10;
}

void sub_2287A3D08(uint64_t a1)
{
  if (!qword_280DE0330)
  {
    sub_2287A3DD4(255);
    sub_228703004(255, &qword_280DE39D0, 0x277D85C78);
    sub_2287ADE00(&qword_280DE0108, sub_2287A3DD4, MEMORY[0x277CBCE48]);
    sub_22871EC78();
    v1 = sub_2287CAC20();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0330);
    }
  }
}

void sub_2287A3E08(uint64_t a1)
{
  if (!qword_280DE2A00[0])
  {
    sub_22870CCFC(255);
    v3 = v2;
    v4 = sub_2287ADE00(qword_280DE2DB8, sub_22870CCFC, &protocol conformance descriptor for AnyPipelineProvider<A>);
    v6 = type metadata accessor for GeneratorPipelineManager.GenerationState(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, qword_280DE2A00);
    }
  }
}

void sub_2287A3E9C(uint64_t a1)
{
  if (!qword_280DE2968[0])
  {
    sub_22870CCFC(255);
    v3 = v2;
    v4 = sub_2287ADE00(qword_280DE2DB8, sub_22870CCFC, &protocol conformance descriptor for AnyPipelineProvider<A>);
    v6 = type metadata accessor for GeneratorPipelineManager(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, qword_280DE2968);
    }
  }
}

unint64_t sub_2287A3F30()
{
  result = qword_280DE2960;
  if (!qword_280DE2960)
  {
    sub_2287A3E9C(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DE2960);
  }

  return result;
}

void sub_2287A3F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2287A3FDC(uint64_t a1)
{
  v2 = v1;
  v87 = *v1;
  sub_2287AB32C(0);
  v5 = *(v4 - 8);
  v77 = v4;
  v78 = v5;
  MEMORY[0x28223BE20](v4);
  v75 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287AB4E0(0);
  v8 = *(v7 - 8);
  v72 = v7;
  v73 = v8;
  MEMORY[0x28223BE20](v7);
  v82 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287AB44C(0);
  v74 = v10;
  v76 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v71 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2287CA970();
  v13 = *(v12 - 8);
  v84 = v12;
  v85 = v13;
  v63 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v70 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v81 = &v56 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v56 - v18;
  v80 = sub_2287C9810();
  v20 = *(v80 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v80);
  v65 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v79 = &v56 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v56 - v25;
  v86 = &v56 - v25;
  sub_2287C9800();
  v27 = _HKLogPersistedSignposts();
  _HKLogSignpostIDGenerate();

  v83 = v19;
  sub_2287CA980();
  v64 = *(v2 + 40);
  v88 = sub_2287588AC(a1);
  sub_2287AB418(0);
  v68 = v28;
  sub_228770F78(0);
  v66 = v29;
  v67 = sub_2287ADE00(&qword_280DE0220, sub_2287AB418, MEMORY[0x277CBCD90]);
  sub_2287CAF70();

  v62 = v2[20];
  v30 = v20;
  v61 = *(v20 + 16);
  v31 = v26;
  v32 = v80;
  v61(v79, v31, v80);
  v33 = v85;
  v60 = *(v85 + 16);
  v60(v81, v19, v84);
  v34 = *(v20 + 80);
  v69 = v20;
  v35 = (v34 + 16) & ~v34;
  v36 = *(v33 + 80);
  v58 = v35;
  v63 += (v21 + v36 + v35) & ~v36;
  v37 = (v21 + v36 + v35) & ~v36;
  v56 = v37;
  v59 = v34 | v36;
  v38 = (v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v57 = *(v30 + 32);
  v57(v39 + v35, v79, v32);
  v79 = *(v33 + 32);
  v40 = v84;
  (v79)(v39 + v37, v81, v84);
  v41 = v86;
  *(v39 + v38) = v87;
  v42 = v65;
  v61(v65, v41, v32);
  v43 = v70;
  v60(v70, v83, v40);
  v44 = v63;
  v45 = swift_allocObject();
  v57(v45 + v58, v42, v32);
  (v79)(v45 + v56, v43, v40);
  *(v45 + v44) = v64;
  *(v45 + (v44 & 0xFFFFFFFFFFFFFFF8) + 8) = v87;
  sub_2287ADE00(&qword_280DE0638, sub_2287AB4E0, MEMORY[0x277CBCC08]);
  v46 = v71;
  v47 = v72;
  v48 = v82;
  sub_2287CAE00();

  (*(v73 + 8))(v48, v47);
  sub_2287CACC0();
  sub_2287ADE00(&qword_280DE0770, sub_2287AB44C, MEMORY[0x277D12210]);
  v50 = v74;
  v49 = v75;
  v51 = v46;
  sub_2287CAFE0();
  sub_2287ADE00(&qword_280DE0488, sub_2287AB32C, MEMORY[0x277CBCCE0]);
  v52 = v77;
  v53 = sub_2287CAF40();
  (*(v78 + 8))(v49, v52);
  (*(v76 + 8))(v51, v50);
  v88 = v53;
  v54 = sub_2287CAF40();

  (*(v85 + 8))(v83, v40);
  (*(v69 + 8))(v86, v80);
  return v54;
}

void sub_2287A485C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2287C9810();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2287CAA50();
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9F0();
  (*(v6 + 16))(v8, a1, v5);
  v12 = sub_2287CAA40();
  v13 = sub_2287CB610();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136446466;
    v17 = sub_2287CBE60();
    v19 = sub_2287031D8(v17, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    sub_2287ADE00(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v20 = sub_2287CBCC0();
    v22 = v21;
    (*(v6 + 8))(v8, v5);
    v23 = sub_2287031D8(v20, v22, &v28);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_2286FF000, v12, v13, "[%{public}s] Feed item generation STARTED: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v16, -1, -1);
    MEMORY[0x22AABFD90](v15, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  (*(v26 + 8))(v11, v27);
  sub_2287CB710();
  v24 = _HKLogPersistedSignposts();
  sub_2287CA930();
}

uint64_t sub_2287A4BAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v34 = a4;
  v38 = a3;
  v37 = a2;
  v5 = sub_2287CA910();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2287C9810();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2287CAA50();
  v12 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9F0();
  (*(v9 + 16))(v11, a1, v8);
  v15 = sub_2287CAA40();
  v16 = sub_2287CB610();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = v6;
    v18 = v17;
    v32 = swift_slowAlloc();
    v39 = v32;
    *v18 = 136446466;
    v19 = sub_2287CBE60();
    v21 = sub_2287031D8(v19, v20, &v39);
    v34 = v5;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    sub_2287ADE00(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v23 = sub_2287CBCC0();
    v25 = v24;
    (*(v9 + 8))(v11, v8);
    v26 = sub_2287031D8(v23, v25, &v39);
    v5 = v34;

    *(v18 + 14) = v26;
    _os_log_impl(&dword_2286FF000, v15, v16, "[%{public}s] Feed item generation IDLE for 6 seconds: %{public}s", v18, 0x16u);
    v27 = v32;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v27, -1, -1);
    v28 = v18;
    v6 = v33;
    MEMORY[0x22AABFD90](v28, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  (*(v12 + 8))(v14, v36);
  sub_2287CB700();
  v29 = _HKLogPersistedSignposts();
  sub_2287CA930();

  result = sub_2287CA420();
  if (result)
  {
    v31 = v35;
    (*(v6 + 104))(v35, *MEMORY[0x277D112D8], v5);
    sub_2287CA900();
    return (*(v6 + 8))(v31, v5);
  }

  return result;
}

void sub_2287A4FEC(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  sub_2287A51C8(a1);
  v6 = sub_2287A5700(a1);
  sub_2287A94C8(a2);
  sub_2287AB780(v6);

  swift_beginAccess();

  sub_2287C9A10();

  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v5;
  *(swift_allocObject() + 16) = v5;
  sub_2287AC2C4(0);
  sub_2287ADE00(&qword_280DE01E0, sub_2287AC2C4, MEMORY[0x277CBCD90]);
  sub_2287CAF20();

  sub_2287A92D8(a1);
}

uint64_t sub_2287A51C8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
  v5 = sub_2287C99F0();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2287ADCBC;
  *(v7 + 24) = v6;
  v10[4] = sub_22877E1B8;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_228742C10;
  v10[3] = &block_descriptor_68;
  v8 = _Block_copy(v10);

  [v5 performBlockAndWait_];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

id sub_2287A5388(void *a1, uint64_t a2, void *a3)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2287CAA50();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1 + 8, a1[11]);
  v9 = sub_2287C99F0();
  sub_2287CB7A0();

  __swift_project_boxed_opaque_existential_1(a1 + 8, a1[11]);
  v10 = sub_2287C99F0();
  sub_2287CB780();

  __swift_project_boxed_opaque_existential_1(a1 + 8, a1[11]);
  v11 = sub_2287C99F0();
  v29 = 0;
  LODWORD(a1) = [v11 save_];

  v12 = v29;
  if (a1)
  {

    return v12;
  }

  else
  {
    v28[1] = v29;
    v14 = v29;
    v15 = sub_2287C9640();

    swift_willThrow();
    sub_2287CA9D0();
    v16 = v15;
    v17 = sub_2287CAA40();
    v18 = sub_2287CB5F0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = a3;
      v30[0] = v20;
      *v19 = 136446466;
      swift_getMetatypeMetadata();
      v21 = sub_2287CB250();
      v23 = sub_2287031D8(v21, v22, v30);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v29 = v15;
      v24 = v15;
      sub_22874A0A4();
      v25 = sub_2287CB250();
      v27 = sub_2287031D8(v25, v26, v30);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_2286FF000, v17, v18, "[%{public}s]: Unable to update stored profiles: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v20, -1, -1);
      MEMORY[0x22AABFD90](v19, -1, -1);
    }

    else
    {
    }

    return (*(v6 + 8))(v8, v5);
  }
}

void *sub_2287A5700(uint64_t a1)
{
  v141 = a1;
  v146[8] = *MEMORY[0x277D85DE8];
  v133 = *v1;
  v127 = sub_2287CB100();
  v126 = *(v127 - 8);
  v2 = MEMORY[0x28223BE20](v127);
  v124 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v125 = &v116 - v4;
  sub_2287AC7C4(0);
  v123 = v5;
  v122 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v121 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_2287CAA50();
  v145 = *(v142 - 8);
  v7 = MEMORY[0x28223BE20](v142);
  v119 = (&v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v140 = &v116 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v118 = &v116 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v134 = &v116 - v14;
  MEMORY[0x28223BE20](v13);
  v120 = &v116 - v15;
  sub_2287AC4D0(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2287C9700();
  v144 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v143 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2287CA970();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2287C9B60();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CB710();
  v29 = *(v26 + 104);
  v130 = *MEMORY[0x277D11E60];
  v135 = v26 + 104;
  v129 = v29;
  v29(v28);
  v30 = sub_2287C9B50();
  v31 = *(v26 + 8);
  v132 = v28;
  v136 = v26 + 8;
  v137 = v25;
  v128 = v31;
  v31(v28, v25);
  sub_2287CA960();
  sub_2287CA930();

  v32 = *(v22 + 8);
  v138 = v24;
  v139 = v21;
  v33 = v21;
  v34 = v144;
  v131 = v22 + 8;
  v32(v24, v33);
  sub_2287C9F10();
  sub_2287C9EF0();
  if ((*(v34 + 48))(v18, 1, v19) == 1)
  {
    v35 = v145;
    sub_2287ADF4C(v18, sub_2287AC4D0);
    v36 = v140;
    sub_2287CAA20();
    v37 = sub_2287CAA40();
    v38 = sub_2287CB600();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2286FF000, v37, v38, "[Contact Photo] Could not access Health app group container directory", v39, 2u);
      MEMORY[0x22AABFD90](v39, -1, -1);
    }

    (*(v35 + 8))(v36, v142);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v140 = v32;
    (*(v34 + 32))(v143, v18, v19);
    v41 = [objc_opt_self() defaultManager];
    v42 = sub_2287C96A0();
    v146[0] = 0;
    v43 = [v41 createDirectoryAtURL:v42 withIntermediateDirectories:1 attributes:0 error:v146];

    v117 = v19;
    v44 = v145;
    if (v43)
    {
      v45 = v146[0];
      v116 = 0;
      v46 = v141;
    }

    else
    {
      v47 = v146[0];
      v48 = sub_2287C9640();

      swift_willThrow();
      v116 = 0;
      v49 = v119;
      sub_2287CA9D0();
      v50 = v48;
      v51 = sub_2287CAA40();
      v52 = sub_2287CB5F0();

      v53 = os_log_type_enabled(v51, v52);
      v46 = v141;
      v54 = v142;
      if (v53)
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v146[0] = v56;
        *v55 = 136315138;
        v146[5] = v48;
        v57 = v48;
        sub_22874A0A4();
        v58 = sub_2287CB270();
        v60 = sub_2287031D8(v58, v59, v146);
        v44 = v145;

        *(v55 + 4) = v60;
        _os_log_impl(&dword_2286FF000, v51, v52, "[Contact Photo] Could not create notificationProfileImageDirectory: %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x22AABFD90](v56, -1, -1);
        MEMORY[0x22AABFD90](v55, -1, -1);
      }

      else
      {
      }

      (*(v44 + 8))(v49, v54);
    }

    v61 = MEMORY[0x277D84F90];
    v146[0] = MEMORY[0x277D84F90];
    v62 = *(v46 + 16);
    if (!v62)
    {
      goto LABEL_24;
    }

    v63 = 0;
    do
    {
      v64 = v63;
      while (1)
      {
        if (v64 >= v62)
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v63 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          goto LABEL_41;
        }

        v65 = *(v46 + 32 + 8 * v64);
        v66 = sub_2287C9C30();
        if (v66)
        {
          v67 = v66;
          v68 = [v66 type];

          v65 = v67;
          if (v68 == 2)
          {
            break;
          }
        }

        ++v64;
        if (v63 == v62)
        {
          v44 = v145;
          goto LABEL_24;
        }
      }

      MEMORY[0x22AABEA50]();
      if (*((v146[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v146[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2287CB3E0();
      }

      sub_2287CB420();
      v61 = v146[0];
      v44 = v145;
    }

    while (v63 != v62);
LABEL_24:
    v69 = sub_22872BE88(v61);

    *(swift_allocObject() + 16) = v69;
    v70 = sub_2287CB7C0();

    v71 = swift_allocObject();

    v73 = sub_22872C010(v72);

    v141 = v71;
    *(v71 + 16) = v73;
    v74 = (v71 + 16);
    v75 = dispatch_semaphore_create(0);
    v76 = v120;
    sub_2287CA9D0();
    v77 = sub_2287CAA40();
    v78 = sub_2287CB610();
    v79 = os_log_type_enabled(v77, v78);
    v119 = v74;
    if (v79)
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v146[0] = v81;
      *v80 = 136315138;
      *(v80 + 4) = sub_2287031D8(0xD000000000000020, 0x80000002287D3230, v146);
      _os_log_impl(&dword_2286FF000, v77, v78, "[Contact Photo] Setting up %s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x22AABFD90](v81, -1, -1);
      MEMORY[0x22AABFD90](v80, -1, -1);
    }

    v82 = v142;
    v120 = *(v44 + 8);
    (v120)(v76, v142);
    v83 = v133;
    v133 = v70;
    v146[0] = v70;
    *(swift_allocObject() + 16) = v83;
    sub_2287CACC0();
    sub_2287AC9E4(0);
    sub_2287AC8E0(0);
    sub_2287AC8AC(0);
    v84 = MEMORY[0x277CBCD90];
    sub_2287ADE00(&qword_280DE0198, sub_2287AC9E4, MEMORY[0x277CBCD90]);
    sub_2287ADE00(&qword_280DE0170, sub_2287AC8AC, v84);
    v85 = v121;
    sub_2287CAFE0();

    *(swift_allocObject() + 16) = v75;
    v86 = swift_allocObject();
    v87 = v141;
    *(v86 + 16) = sub_2287ACA98;
    *(v86 + 24) = v87;
    sub_2287ADE00(&unk_280DE0400, sub_2287AC7C4, MEMORY[0x277CBCCE0]);
    v88 = v75;

    v89 = v123;
    v116 = sub_2287CAF80();

    (*(v122 + 8))(v85, v89);
    v90 = v124;
    sub_2287CB0F0();
    v91 = v125;
    sub_2287CB110();
    v92 = *(v126 + 8);
    v93 = v127;
    v92(v90, v127);
    LOBYTE(v90) = sub_2287CB760();
    v92(v91, v93);
    if (v90)
    {
      sub_2287CA9D0();

      v94 = sub_2287CAA40();
      v95 = sub_2287CB5F0();
      v96 = os_log_type_enabled(v94, v95);
      v97 = v143;
      v98 = v137;
      if (v96)
      {
        v99 = swift_slowAlloc();
        *v99 = 134283521;
        *(v99 + 4) = 10;

        _os_log_impl(&dword_2286FF000, v94, v95, "[Contact Photo] Operation timed out after %{private}ld seconds", v99, 0xCu);
        MEMORY[0x22AABFD90](v99, -1, -1);
      }

      else
      {
      }

      v107 = v138;
      v106 = v139;
      v108 = v119;
      (v120)(v134, v82);
    }

    else
    {
      v100 = v118;
      sub_2287CA9D0();
      v101 = sub_2287CAA40();
      v102 = sub_2287CB610();
      v103 = os_log_type_enabled(v101, v102);
      v97 = v143;
      v98 = v137;
      if (v103)
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v146[0] = v105;
        *v104 = 136315138;
        *(v104 + 4) = sub_2287031D8(0xD000000000000020, 0x80000002287D3230, v146);
        _os_log_impl(&dword_2286FF000, v101, v102, "[Contact Photo] Finished %s", v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v105);
        MEMORY[0x22AABFD90](v105, -1, -1);
        MEMORY[0x22AABFD90](v104, -1, -1);
      }

      (v120)(v100, v82);
      v107 = v138;
      v106 = v139;
      v108 = v119;
    }

    sub_2287CB700();
    v109 = v132;
    v129(v132, v130, v98);
    v110 = sub_2287C9B50();
    v128(v109, v98);
    sub_2287CA960();
    sub_2287CA930();

    (v140)(v107, v106);
    swift_beginAccess();
    v111 = *v108;
    v112 = *(*v108 + 16);
    if (v112)
    {
      v40 = sub_228723AD4(*(*v108 + 16), 0);
      v113 = sub_22872A0CC(v146, v40 + 4, v112, v111);
      v114 = v146[0];

      sub_22870B3D4(v114);
      if (v113 == v112)
      {

        v97 = v143;
        goto LABEL_38;
      }

LABEL_42:
      __break(1u);
    }

    v40 = MEMORY[0x277D84F90];
LABEL_38:
    (*(v144 + 8))(v97, v117);
  }

  return v40;
}

BOOL sub_2287A686C(void *a1, uint64_t a2)
{
  v4 = [a1 profileIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2287847F0(v4, a2);

    return v6 & 1;
  }

  if ([a1 direction] == 1)
  {
    v8 = [a1 status];
    if (![a1 direction])
    {
      result = [a1 status] == 1;
      if (v8)
      {
        return result;
      }

      return 1;
    }

    return !v8;
  }

  if ([a1 direction])
  {
    return 0;
  }

  return [a1 status] == 1;
}

void sub_2287A6960(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2287CAA50();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_2287CA9D0();
  v9 = sub_2287CAA40();
  v10 = sub_2287CB610();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_2287031D8(0xD000000000000020, 0x80000002287D3230, &v16);
    _os_log_impl(&dword_2286FF000, v9, v10, "[Contact Photo] Running %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AABFD90](v12, -1, -1);
    MEMORY[0x22AABFD90](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_228703004(0, &unk_280DDFEF8, 0x277CBDAB8);
  v13 = sub_2287CB630();
  v14 = sub_2287ACAEC(v8, v13);

  *a2 = v14;
}

uint64_t sub_2287A6B48()
{
  v0 = sub_2287CAA50();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9D0();
  v4 = sub_2287CAA40();
  v5 = sub_2287CB610();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2287031D8(0xD000000000000020, 0x80000002287D3230, &v10);
    _os_log_impl(&dword_2286FF000, v4, v5, "[Contact Photo] Finished %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AABFD90](v7, -1, -1);
    MEMORY[0x22AABFD90](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return sub_2287CB770();
}

uint64_t sub_2287A6CEC(void *a1, uint64_t a2, uint64_t a3)
{
  v62 = a2;
  sub_2287AC4D0(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2287C9700();
  v8 = *(v7 - 8);
  v64 = v7;
  v65 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = &v56 - v11;
  v12 = sub_2287CAA50();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v63 = &v56 - v17;
  v18 = sub_2287C9810();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v60 = v16;
    v22 = objc_opt_self();
    v58 = a1;
    v23 = [v58 UUID];
    sub_2287C97F0();

    v24 = sub_2287C97E0();
    (*(v19 + 8))(v21, v18);
    v25 = [v22 _profileWithUUID_type_];

    swift_beginAccess();
    v26 = v25;
    sub_228724790(&v67, v25);
    swift_endAccess();

    sub_2287CA9D0();
    v27 = v26;
    v28 = sub_2287CAA40();
    v29 = sub_2287CB610();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v66[0] = v56;
      *v30 = 136380675;
      v31 = v27;
      v32 = [v31 description];
      v57 = v6;
      v33 = v32;
      v34 = sub_2287CB220();
      v36 = v35;

      v37 = sub_2287031D8(v34, v36, v66);

      *(v30 + 4) = v37;
      v6 = v57;
      _os_log_impl(&dword_2286FF000, v28, v29, "[Contact Photo] Added invitation profile to allowlist. Profile: %{private}s", v30, 0xCu);
      v38 = v56;
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x22AABFD90](v38, -1, -1);
      MEMORY[0x22AABFD90](v30, -1, -1);
    }

    else
    {
    }

    (*(v13 + 8))(v63, v12);
    v16 = v60;
  }

  sub_2287ADCC8(v62, v6, sub_2287AC4D0);
  if ((*(v65 + 48))(v6, 1, v64) == 1)
  {
    return sub_2287ADF4C(v6, sub_2287AC4D0);
  }

  v62 = v13;
  v63 = v12;
  v41 = v64;
  v40 = v65;
  v42 = v61;
  (*(v65 + 32))(v61, v6, v64);
  sub_2287CA9D0();
  v43 = v59;
  (*(v40 + 16))(v59, v42, v41);
  v44 = sub_2287CAA40();
  v45 = sub_2287CB610();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v66[0] = v47;
    *v46 = 136380675;
    sub_2287ADE00(&qword_280DE17E8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v48 = v64;
    v49 = sub_2287CBCC0();
    v51 = v50;
    v60 = v16;
    v52 = *(v65 + 8);
    v52(v43, v48);
    v53 = sub_2287031D8(v49, v51, v66);

    *(v46 + 4) = v53;
    _os_log_impl(&dword_2286FF000, v44, v45, "[Contact Photo] Successfully created and saved contact photo at %{private}s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x22AABFD90](v47, -1, -1);
    MEMORY[0x22AABFD90](v46, -1, -1);

    (*(v62 + 8))(v60, v63);
    return (v52)(v61, v48);
  }

  else
  {

    v54 = v64;
    v55 = *(v65 + 8);
    v55(v43, v64);
    (*(v62 + 8))(v16, v63);
    return (v55)(v42, v54);
  }
}

id sub_2287A73C0@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v6 = sub_2287CAA50();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v51 - v11;
  v54 = *a1;
  v13 = sub_2287CB750();
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    sub_228703004(0, &unk_280DDFEF8, 0x277CBDAB8);
    sub_2287CB620();
    v17 = sub_2287CB210();
    sub_2287ADC58();
    v18 = sub_2287CB390();

    v56[0] = 0;
    v19 = [a2 unifiedContactWithIdentifier:v17 keysToFetch:v18 error:v56];

    v20 = v56[0];
    if (v19)
    {

      goto LABEL_11;
    }

    v34 = v20;
    v35 = sub_2287C9640();

    swift_willThrow();
    sub_2287CA9D0();

    v36 = v35;
    v37 = sub_2287CAA40();
    v38 = sub_2287CB5F0();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v53 = v7;
      v41 = v40;
      v56[0] = v40;
      *v39 = 136380931;
      v42 = sub_2287031D8(v15, v16, v56);
      v43 = a3;
      v44 = v42;

      *(v39 + 4) = v44;
      *(v39 + 12) = 2082;
      v55 = v35;
      v45 = v35;
      sub_22874A0A4();
      v46 = sub_2287CB270();
      v48 = sub_2287031D8(v46, v47, v56);
      a3 = v43;

      *(v39 + 14) = v48;
      _os_log_impl(&dword_2286FF000, v37, v38, "[Contact Photo] Could not find contact with identifier %{private}s: %{public}s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v41, -1, -1);
      MEMORY[0x22AABFD90](v39, -1, -1);

      (v53[1])(v10, v6);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    sub_2287CA9D0();
    v21 = v54;
    v22 = sub_2287CAA40();
    v23 = sub_2287CB5F0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v56[0] = v53;
      *v24 = 136380675;
      v25 = v21;
      v26 = [v25 description];
      v27 = v7;
      v28 = sub_2287CB220();
      v52 = v6;
      v29 = a3;
      v31 = v30;

      v32 = sub_2287031D8(v28, v31, v56);
      a3 = v29;

      *(v24 + 4) = v32;
      _os_log_impl(&dword_2286FF000, v22, v23, "[Contact Photo] Could not find contact identifier for %{private}s", v24, 0xCu);
      v33 = v53;
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x22AABFD90](v33, -1, -1);
      MEMORY[0x22AABFD90](v24, -1, -1);

      (*(v27 + 8))(v12, v52);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }
  }

  v19 = 0;
LABEL_11:
  v49 = v54;
  *a3 = v54;
  a3[1] = v19;

  return v49;
}

uint64_t sub_2287A78B4(void *a1, uint64_t a2)
{
  v41 = a2;
  sub_2287A3F78(0, &qword_27D850EB8, MEMORY[0x277D10D78], MEMORY[0x277CBCE78]);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v38 - v4;
  sub_2287ADA98(0);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287ADB48(0);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2287CA8C0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v16 = sub_2287C9810();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = [a1 profileIdentifier];
  v22 = v21;
  if (!v21)
  {
    v39 = objc_opt_self();
    v23 = [v20 UUID];
    sub_2287C97F0();

    v24 = sub_2287C97E0();
    (*(v17 + 8))(v19, v16);
    v25 = [v39 _profileWithUUID_type_];

    v22 = v25;
  }

  v26 = v21;
  v39 = v22;
  sub_2287CA8A0();
  (*(v10 + 16))(v13, v15, v9);
  v27 = v40;
  v28 = sub_2287CADB0();
  MEMORY[0x28223BE20](v28);
  *(&v38 - 2) = v41;
  *(&v38 - 1) = v20;
  sub_2287AC8E0(0);
  v29 = v44;
  v30 = v43;
  sub_2287CAD90();
  (*(v42 + 8))(v27, v30);
  *(swift_allocObject() + 16) = v20;
  sub_2287AC8AC(0);
  sub_2287ADE00(&qword_27D850EB0, sub_2287ADA98, MEMORY[0x277CBCF40]);
  sub_2287ADE00(&qword_280DE0170, sub_2287AC8AC, MEMORY[0x277CBCD90]);
  v31 = v20;
  v32 = v45;
  v33 = v47;
  sub_2287CAF90();

  (*(v46 + 8))(v29, v33);
  sub_2287ADE00(&qword_27D850EC8, sub_2287ADB48, MEMORY[0x277CBCC40]);
  v34 = v49;
  v35 = sub_2287CAF40();
  v36 = v39;

  (*(v48 + 8))(v32, v34);
  (*(v10 + 8))(v15, v9);
  return v35;
}

void sub_2287A7EB4(void *a1@<X1>, void *a2@<X2>, char *a3@<X8>)
{
  sub_2287AC4D0(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = a1;
    sub_2287CA8B0();

    if (v3)
    {
      return;
    }

    sub_2287AC8E0(0);
    v12 = *(v11 + 48);
    *a3 = a2;
    sub_2287ADEE4(v9, &a3[v12], sub_2287AC4D0);
  }

  else
  {
    sub_2287AC8E0(0);
    v14 = *(v13 + 48);
    *a3 = a2;
    v15 = sub_2287C9700();
    (*(*(v15 - 8) + 56))(&a3[v14], 1, 1, v15);
  }

  v16 = a2;
}

uint64_t sub_2287A7FF8@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_2287AC8E0(0);
  v7 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2287AC4D0(0);
  MEMORY[0x28223BE20](v10 - 8);
  v52 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287A3F78(0, &qword_27D850EA0, sub_2287AC8E0, MEMORY[0x277CBCE78]);
  v13 = v12;
  v53 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v50 = &v45 - v14;
  sub_2287ADA98(0);
  v16 = v15;
  v54 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v51 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2287CAA50();
  v48 = *(v18 - 8);
  v49 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  sub_2287CA9D0();
  v22 = v21;
  v23 = sub_2287CAA40();
  v24 = sub_2287CB5F0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v47 = a2;
    v26 = v25;
    v45 = swift_slowAlloc();
    v46 = v7;
    v55 = v21;
    v56 = v45;
    *v26 = 136315138;
    v27 = v21;
    sub_22874A0A4();
    v28 = sub_2287CB270();
    v30 = v13;
    v31 = v16;
    v32 = v9;
    v33 = a3;
    v34 = sub_2287031D8(v28, v29, &v56);

    *(v26 + 4) = v34;
    a3 = v33;
    v9 = v32;
    v16 = v31;
    v13 = v30;
    _os_log_impl(&dword_2286FF000, v23, v24, "[Contact Photo] Could not save image: %s", v26, 0xCu);
    v35 = v45;
    __swift_destroy_boxed_opaque_existential_0(v45);
    v7 = v46;
    MEMORY[0x22AABFD90](v35, -1, -1);
    v36 = v26;
    a2 = v47;
    MEMORY[0x22AABFD90](v36, -1, -1);
  }

  (*(v48 + 8))(v20, v49);
  v37 = sub_2287C9700();
  v38 = v52;
  (*(*(v37 - 8) + 56))(v52, 1, 1, v37);
  v39 = *(v7 + 48);
  *v9 = a2;
  sub_2287ADEE4(v38, v9 + v39, sub_2287AC4D0);
  v40 = a2;
  v41 = v50;
  sub_2287CADB0();
  sub_22874A0A4();
  v42 = v51;
  sub_2287CAD80();
  (*(v53 + 8))(v41, v13);
  sub_2287ADE00(&qword_27D850EB0, sub_2287ADA98, MEMORY[0x277CBCF40]);
  v43 = sub_2287CAF40();
  result = (*(v54 + 8))(v42, v16);
  *a3 = v43;
  return result;
}

uint64_t sub_2287A84DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2287A78B4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_2287A850C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2287AC8E0(0);
  v5 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2287AC4D0(0);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287A3F78(0, &qword_27D850EA0, sub_2287AC8E0, MEMORY[0x277CBCE78]);
  v11 = v10;
  v52 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v49 = &v43 - v12;
  sub_2287ADA98(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v50 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2287CAA50();
  v47 = *(v17 - 8);
  v48 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  sub_2287CA9D0();
  v21 = v20;
  v22 = sub_2287CAA40();
  v23 = sub_2287CB5F0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v46 = v5;
    v25 = v24;
    v44 = swift_slowAlloc();
    v45 = v7;
    v53 = v20;
    v54 = v44;
    *v25 = 136315138;
    v26 = v20;
    sub_22874A0A4();
    v27 = sub_2287CB270();
    v29 = v15;
    v30 = v11;
    v31 = v14;
    v32 = a2;
    v33 = sub_2287031D8(v27, v28, &v54);

    *(v25 + 4) = v33;
    a2 = v32;
    v14 = v31;
    v11 = v30;
    v15 = v29;
    _os_log_impl(&dword_2286FF000, v22, v23, "[Contact Photo] Could not process contact photo: %s", v25, 0xCu);
    v34 = v44;
    __swift_destroy_boxed_opaque_existential_0(v44);
    v7 = v45;
    MEMORY[0x22AABFD90](v34, -1, -1);
    v35 = v25;
    v5 = v46;
    MEMORY[0x22AABFD90](v35, -1, -1);
  }

  (*(v47 + 8))(v19, v48);
  v36 = sub_2287C9700();
  v37 = v51;
  (*(*(v36 - 8) + 56))(v51, 1, 1, v36);
  v38 = *(v5 + 48);
  *v7 = 0;
  sub_2287ADEE4(v37, v7 + v38, sub_2287AC4D0);
  v39 = v49;
  sub_2287CADB0();
  sub_22874A0A4();
  v40 = v50;
  sub_2287CAD80();
  (*(v52 + 8))(v39, v11);
  sub_2287ADE00(&qword_27D850EB0, sub_2287ADA98, MEMORY[0x277CBCF40]);
  v41 = sub_2287CAF40();
  result = (*(v15 + 8))(v40, v14);
  *a2 = v41;
  return result;
}

uint64_t sub_2287A89E4(uint64_t a1, void *a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2287C9700();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2287CAA50();
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2287C96A0();
  v28[0] = 0;
  v13 = [a2 removeItemAtURL:v12 error:v28];

  if (v13)
  {
    v14 = v28[0];
    sub_2287CAA20();
    (*(v6 + 16))(v8, a1, v5);
    v15 = sub_2287CAA40();
    v16 = sub_2287CB610();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v25[0] = swift_slowAlloc();
      v28[0] = v25[0];
      *v17 = 136380675;
      sub_2287ADE00(&qword_280DE17E8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v18 = sub_2287CBCC0();
      v25[1] = v2;
      v20 = v19;
      (*(v6 + 8))(v8, v5);
      v21 = sub_2287031D8(v18, v20, v28);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_2286FF000, v15, v16, "[Contact Photo] Successfully deleted profile image %{private}s", v17, 0xCu);
      v22 = v25[0];
      __swift_destroy_boxed_opaque_existential_0(v25[0]);
      MEMORY[0x22AABFD90](v22, -1, -1);
      MEMORY[0x22AABFD90](v17, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    return (*(v26 + 8))(v11, v27);
  }

  else
  {
    v23 = v28[0];
    sub_2287C9640();

    return swift_willThrow();
  }
}

uint64_t sub_2287A8D40(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2287CAA50();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  v11 = *a1;
  if (*a1)
  {
    sub_2287CA9D0();
    v12 = v11;
    v13 = sub_2287CAA40();
    v14 = sub_2287CB5F0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v40[0] = v16;
      *v15 = 136315394;
      v17 = sub_2287CBE60();
      v19 = sub_2287031D8(v17, v18, v40);
      v38 = v4;
      v20 = v19;

      *(v15 + 4) = v20;
      *(v15 + 12) = 2080;
      v39 = v11;
      v21 = v11;
      sub_22874A0A4();
      v22 = sub_2287CB250();
      v24 = sub_2287031D8(v22, v23, v40);

      *(v15 + 14) = v24;
      _os_log_impl(&dword_2286FF000, v13, v14, "[%s] Error removing feed item notifications for removed profiles. %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v16, -1, -1);
      MEMORY[0x22AABFD90](v15, -1, -1);

      (*(v5 + 8))(v10, v38);
      goto LABEL_9;
    }

    v32 = *(v5 + 8);
    v33 = v10;
  }

  else
  {
    sub_2287CA9D0();
    v25 = sub_2287CAA40();
    v26 = sub_2287CB610();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40[0] = v28;
      *v27 = 136315138;
      v29 = sub_2287CBE60();
      v31 = sub_2287031D8(v29, v30, v40);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2286FF000, v25, v26, "[%s] Successfully removed feed item notifications for removed profiles", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x22AABFD90](v28, -1, -1);
      MEMORY[0x22AABFD90](v27, -1, -1);
    }

    v32 = *(v5 + 8);
    v33 = v8;
  }

  v32(v33, v4);
LABEL_9:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v35 = *(result + 272);
    v36 = *(result + 280);
    sub_228714B08(v35, v36);

    if (v35)
    {
      v35(result);
      return sub_228714BC0(v35, v36);
    }
  }

  return result;
}

uint64_t sub_2287A90D0(uint64_t *a1, uint64_t a2)
{
  v3 = sub_2287CAA50();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_2287CA9D0();

  v8 = sub_2287CAA40();
  v9 = sub_2287CB610();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315395;
    v12 = sub_2287CBE60();
    v14 = sub_2287031D8(v12, v13, &v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2081;
    v15 = sub_2287C9D40();
    v16 = MEMORY[0x22AABEA80](v7, v15);
    v18 = sub_2287031D8(v16, v17, &v21);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_2286FF000, v8, v9, "[%s] Removed %{private}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v11, -1, -1);
    MEMORY[0x22AABFD90](v10, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_2287A92D8(uint64_t a1)
{
  v1 = 0;
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  while (1)
  {
    if (v2 == v1)
    {
      MEMORY[0x28223BE20](a1);

      sub_2287CA670();

      return;
    }

    if (v1 >= v2)
    {
      break;
    }

    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_11;
    }

    v5 = *(v3 + 8 * v1);
    v6 = sub_2287C9C30();

    ++v1;
    if (v6)
    {
      MEMORY[0x22AABEA50]();
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2287CB3E0();
      }

      a1 = sub_2287CB420();
      v1 = v4;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_2287A942C(uint64_t *a1, uint64_t a2)
{

  sub_22871F6B4(v4);
  v6 = v5;
  if ((v5 & 0xC000000000000001) != 0)
  {
    if (v5 < 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_2287CB920();
    v6 = sub_22872527C(v7, v8);
  }

  v9 = sub_2287AABCC(a2, v6);
  sub_2287A2B9C(v9, a1);
}

uint64_t sub_2287A94C8(unint64_t a1)
{
  v3 = *v1;
  sub_2287AC504(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2287CA420();
  if (result)
  {
    sub_2287AAFA4(a1, sub_2287AC5F8);
    v11 = v10;
    sub_2287AC684(0, &qword_280DE0128, MEMORY[0x277CBCD88]);
    sub_2287AC600(0);
    sub_2287AC584();
    sub_2287ADE00(&qword_280DDFFA0, sub_2287AC600, MEMORY[0x277D83970]);
    sub_2287CAC40();
    *(swift_allocObject() + 16) = v3;
    sub_2287ADE00(&qword_280DE02F8, sub_2287AC504, MEMORY[0x277CBCD48]);
    sub_2287CAF20();

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_2287A9720(void *a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  if ([a1 type] != 2)
  {
    return 0;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = v4;
  sub_2287AC684(0, &qword_27D850E80, MEMORY[0x277CBCEA8]);
  swift_allocObject();
  v6 = a2;
  sub_2287CADF0();
  sub_2287AC6F0();
  v7 = sub_2287CAF40();

  return v7;
}

uint64_t sub_2287A9834(_BYTE *a1, uint64_t a2)
{
  v4 = sub_2287CAA50();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  if (*a1)
  {
    sub_2287CA9D0();
    v11 = sub_2287CAA40();
    v12 = sub_2287CB610();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29 = v14;
      v30 = a2;
      *v13 = 136446210;
      swift_getMetatypeMetadata();
      v15 = sub_2287CB250();
      v17 = sub_2287031D8(v15, v16, &v29);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_2286FF000, v11, v12, "[%{public}s]: Pull all shared summaries successfully.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x22AABFD90](v14, -1, -1);
      MEMORY[0x22AABFD90](v13, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    sub_2287CA9D0();
    v19 = sub_2287CAA40();
    v20 = sub_2287CB5F0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v22;
      v30 = a2;
      *v21 = 136446466;
      swift_getMetatypeMetadata();
      v23 = sub_2287CB250();
      v25 = sub_2287031D8(v23, v24, &v29);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v26 = sub_2287CB250();
      v28 = sub_2287031D8(v26, v27, &v29);

      *(v21 + 14) = v28;
      _os_log_impl(&dword_2286FF000, v19, v20, "[%{public}s]: Pull Shared Summaries Error: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v22, -1, -1);
      MEMORY[0x22AABFD90](v21, -1, -1);
    }

    return (*(v5 + 8))(v10, v4);
  }
}

void sub_2287A9B38(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_2287CAA50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  sub_2287CA9F0();
  v13 = a3;
  v14 = sub_2287CAA40();
  v15 = sub_2287CB610();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v37 = v15;
    v17 = v16;
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v17 = 136315395;
    v18 = sub_2287CBE60();
    v20 = sub_2287031D8(v18, v19, aBlock);
    v39 = a4;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2081;
    v22 = [v13 profileIdentifier];
    v23 = [v22 description];
    v24 = sub_2287CB220();
    v36 = v8;
    v25 = v12;
    v26 = v24;
    v28 = v27;

    v29 = v26;
    v12 = v25;
    v30 = sub_2287031D8(v29, v28, aBlock);

    *(v17 + 14) = v30;
    a4 = v39;
    _os_log_impl(&dword_2286FF000, v14, v37, "[%s] Pulling shared summaries for %{private}s", v17, 0x16u);
    v31 = v38;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v31, -1, -1);
    MEMORY[0x22AABFD90](v17, -1, -1);

    (*(v9 + 8))(v11, v36);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v32 = [objc_allocWithZone(MEMORY[0x277CCD930]) initWithHealthStore_];
  v33 = swift_allocObject();
  v33[2] = sub_2287AC764;
  v33[3] = v12;
  v33[4] = v13;
  v33[5] = a4;
  aBlock[4] = sub_2287AC7A0;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2287AA2FC;
  aBlock[3] = &block_descriptor_11;
  v34 = _Block_copy(aBlock);
  v35 = v13;

  [v32 pullWithCompletion_];
  _Block_release(v34);
}

uint64_t sub_2287A9EB0(char a1, void *a2, uint64_t (*a3)(void), uint64_t a4, void *a5, uint64_t a6)
{
  v10 = sub_2287CAA50();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  if (a1)
  {
    v49 = v10;
    sub_2287CA9F0();
    v17 = a5;
    v18 = sub_2287CAA40();
    v19 = sub_2287CB610();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51 = v47;
      *v20 = 136315395;
      v21 = sub_2287CBE60();
      v23 = sub_2287031D8(v21, v22, &v51);
      v48 = a3;
      v24 = v23;

      *(v20 + 4) = v24;
      *(v20 + 12) = 2081;
      v25 = [v17 profileIdentifier];
      v26 = [v25 description];
      v27 = sub_2287CB220();
      v29 = v28;

      v30 = sub_2287031D8(v27, v29, &v51);

      *(v20 + 14) = v30;
      a3 = v48;
      _os_log_impl(&dword_2286FF000, v18, v19, "[%s] Successfully pulled shared summaries for %{private}s", v20, 0x16u);
      v31 = v47;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v31, -1, -1);
      MEMORY[0x22AABFD90](v20, -1, -1);
    }

    (*(v11 + 8))(v16, v49);
  }

  else
  {
    sub_2287CA9F0();
    v32 = a2;
    v33 = sub_2287CAA40();
    v34 = sub_2287CB5F0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v49 = v10;
      v37 = v36;
      v51 = v36;
      *v35 = 136315394;
      v38 = sub_2287CBE60();
      v48 = a3;
      v40 = sub_2287031D8(v38, v39, &v51);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2082;
      v50 = a2;
      v41 = a2;
      sub_2287A3F78(0, &qword_27D850E90, sub_22874A0A4, MEMORY[0x277D83D88]);
      v42 = sub_2287CB270();
      v44 = sub_2287031D8(v42, v43, &v51);
      a3 = v48;

      *(v35 + 14) = v44;
      _os_log_impl(&dword_2286FF000, v33, v34, "[%s] Shared Summaries Pull Error: %{public}s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v37, -1, -1);
      MEMORY[0x22AABFD90](v35, -1, -1);

      (*(v11 + 8))(v14, v49);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }
  }

  sub_2287CBDF0();
  return a3(v51);
}

void sub_2287AA2FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_2287AA374()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return sub_228714BC0(v1, v2);
}

uint64_t FeedItemGeneratorPipelineManager.deinit()
{
  v0 = sub_2287655B4();

  sub_228714BC0(*(v0 + 272), *(v0 + 280));
  return v0;
}

uint64_t FeedItemGeneratorPipelineManager.__deallocating_deinit()
{
  v0 = sub_2287655B4();
  v1 = v0[32];

  sub_228714BC0(v0[34], v0[35]);

  return swift_deallocClassInstance();
}

uint64_t sub_2287AA438(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_2287AC3F8(0, &qword_280DE18A8, MEMORY[0x277D84460]);
    v2 = sub_2287CBBE0();
    v19 = v2;
    sub_2287CBB40();
    v3 = sub_2287CBB70();
    if (v3)
    {
      v4 = v3;
      sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_228703004(0, &qword_280DE1990, 0x277CCD4D8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_2287BA778(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_2287CB7E0();
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
        v5 = sub_2287CBB70();
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

void sub_2287AA690(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2287CB8A0() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_2287CB7E0();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
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
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_2287AA84C(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = sub_2287C9810();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = sub_2287CB8A0();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v5);
      sub_2287ADE00(&qword_280DE3970, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_2287CB1B0();
      result = (*v38)(v9, v5);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(v37(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2287AABCC(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_2287AAD6C(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_2287AC49C(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x22AABFD90](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_2287AAD6C(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 62)
  {
LABEL_25:
    v28 = a3 & 0xFFFFFFFFFFFFFF8;
    v22 = a3;
    v30 = sub_2287CB920();
    v4 = v22;
  }

  else
  {
    v28 = a3 & 0xFFFFFFFFFFFFFF8;
    v30 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = a3;
  }

  v5 = 0;
  v6 = 0;
  v29 = v4 & 0xC000000000000001;
  v23 = v4;
  v27 = v4 + 32;
  v31 = a4 + 56;
LABEL_4:
  v25 = v5;
  while (v6 != v30)
  {
    if (v29)
    {
      v7 = MEMORY[0x22AABF120](v6, v23);
    }

    else
    {
      if (v6 >= *(v28 + 16))
      {
        goto LABEL_24;
      }

      v7 = *(v27 + 8 * v6);
    }

    v8 = v7;
    if (__OFADD__(v6++, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v10 = sub_2287CB7E0();
    v11 = -1 << *(a4 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = 1 << v12;
    if (((1 << v12) & *(v31 + 8 * (v12 >> 6))) != 0)
    {
      sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
      v15 = *(*(a4 + 48) + 8 * v12);
      v16 = sub_2287CB7F0();

      if ((v16 & 1) == 0)
      {
        v17 = ~v11;
        do
        {
          v12 = (v12 + 1) & v17;
          v13 = v12 >> 6;
          v14 = 1 << v12;
          if (((1 << v12) & *(v31 + 8 * (v12 >> 6))) == 0)
          {
            goto LABEL_5;
          }

          v18 = *(*(a4 + 48) + 8 * v12);
          v19 = sub_2287CB7F0();
        }

        while ((v19 & 1) == 0);
      }

      v20 = a1[v13];
      a1[v13] = v20 | v14;
      if ((v20 & v14) == 0)
      {
        v5 = v25 + 1;
        if (!__OFADD__(v25, 1))
        {
          goto LABEL_4;
        }

        __break(1u);
        break;
      }
    }

    else
    {
LABEL_5:
    }
  }

  return sub_2287B528C(a1, a2, v25, a4);
}

void sub_2287AAFA4(unint64_t a1, uint64_t (*a2)(id, id))
{
  v24 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = sub_2287CBB40() | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v3 = ~v6;
    v2 = a1 + 64;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v4 = v8 & *(a1 + 64);
    v5 = a1;
  }

  v9 = 0;
  v21 = v5;
  v22 = v2;
LABEL_8:
  v10 = v9;
  v11 = v4;
  while (1)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      if (!sub_2287CBB70())
      {
        goto LABEL_24;
      }

      sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
      swift_dynamicCast();
      v17 = v23;
      sub_228703004(0, &qword_280DE1990, 0x277CCD4D8);
      swift_dynamicCast();
      v18 = v23;
      v9 = v10;
      v14 = v11;
      if (!v23)
      {
LABEL_23:
        v5 = v21;
LABEL_24:
        sub_22870B3D4(v5);
        return;
      }

      goto LABEL_18;
    }

    v12 = v10;
    v13 = v11;
    v9 = v10;
    if (!v11)
    {
      break;
    }

LABEL_14:
    v14 = (v13 - 1) & v13;
    v15 = (v9 << 9) | (8 * __clz(__rbit64(v13)));
    v16 = *(*(v5 + 56) + v15);
    v17 = *(*(v5 + 48) + v15);
    v18 = v16;
    if (!v17)
    {
      goto LABEL_23;
    }

LABEL_18:
    v19 = a2(v17, v18);

    v10 = v9;
    v11 = v14;
    v5 = v21;
    v2 = v22;
    if (v19)
    {
      v4 = v14;
      MEMORY[0x22AABEA50]();
      if (*(v24 + 16) >= *(v24 + 24) >> 1)
      {
        sub_2287CB3E0();
        v4 = v14;
      }

      sub_2287CB420();
      v2 = v22;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v9 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v9 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v13 = *(v2 + 8 * v9);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t sub_2287AB250()
{
  result = qword_280DE1970;
  if (!qword_280DE1970)
  {
    sub_228703004(255, &qword_280DE3870, 0x277CCD7C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1970);
  }

  return result;
}

void sub_2287AB32C(uint64_t a1)
{
  if (!qword_280DE0480)
  {
    sub_2287AB418(255);
    sub_2287AB44C(255);
    sub_2287ADE00(&qword_280DE0220, sub_2287AB418, MEMORY[0x277CBCD90]);
    sub_2287ADE00(&qword_280DE0770, sub_2287AB44C, MEMORY[0x277D12210]);
    v1 = sub_2287CABC0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0480);
    }
  }
}

void sub_2287AB44C(uint64_t a1)
{
  if (!qword_280DE0760)
  {
    sub_2287AB4E0(255);
    sub_2287ADE00(&qword_280DE0638, sub_2287AB4E0, MEMORY[0x277CBCC08]);
    v1 = sub_2287CAAC0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0760);
    }
  }
}

void sub_2287AB4E0(uint64_t a1)
{
  if (!qword_280DE0628)
  {
    sub_2287AB418(255);
    sub_228770F78(255);
    sub_2287ADE00(&qword_280DE0220, sub_2287AB418, MEMORY[0x277CBCD90]);
    v1 = sub_2287CAB50();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0628);
    }
  }
}

void sub_2287AB58C()
{
  v1 = *(sub_2287C9810() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_2287CA970() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2287A485C(v0 + v2, v0 + v5, v6);
}

uint64_t sub_2287AB684()
{
  v1 = *(sub_2287C9810() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_2287CA970() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v0 + v6);
  v8 = *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_2287A4BAC(v0 + v2, v0 + v5, v7, v8);
}

void sub_2287AB780(uint64_t a1)
{
  v86 = sub_2287CAA50();
  v85 = *(v86 - 8);
  v2 = MEMORY[0x28223BE20](v86);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v83 - v4;
  MEMORY[0x28223BE20](v3);
  v84 = &v83 - v6;
  sub_2287AC4D0(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2287C9700();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v100 = &v83 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v93 = &v83 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v83 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v83 - v22;
  v87 = [objc_opt_self() defaultManager];
  sub_2287C9F10();
  sub_2287C9EF0();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2287ADF4C(v9, sub_2287AC4D0);
    sub_2287CAA20();
    v24 = sub_2287CAA40();
    v25 = sub_2287CB600();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2286FF000, v24, v25, "[Contact Photo] Could not access Health app group container directory", v26, 2u);
      MEMORY[0x22AABFD90](v26, -1, -1);
    }

    (*(v85 + 8))(v5, v86);
  }

  else
  {
    v95 = v11;
    v96 = *(v11 + 32);
    v97 = v11 + 32;
    v96(v23, v9, v10);
    v27 = *(a1 + 16);
    v28 = MEMORY[0x277D84F90];
    v101 = v10;
    if (v27)
    {
      v92 = v21;
      v29 = v23;
      v103[0] = MEMORY[0x277D84F90];
      sub_2287042D4(0, v27, 0);
      v28 = v103[0];
      v30 = (a1 + 32);
      do
      {
        v31 = *v30++;
        v32 = v31;
        v33 = sub_2287C9C40();
        v35 = v34;

        v103[0] = v28;
        v37 = *(v28 + 16);
        v36 = *(v28 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_2287042D4((v36 > 1), v37 + 1, 1);
          v28 = v103[0];
        }

        *(v28 + 16) = v37 + 1;
        v38 = v28 + 16 * v37;
        *(v38 + 32) = v33;
        *(v38 + 40) = v35;
        --v27;
      }

      while (v27);
      v10 = v101;
      v23 = v29;
      v21 = v92;
    }

    v39 = sub_22872A9BC(v28);

    v40 = sub_2287CB5C0();
    v83 = v23;
    v102 = 0;
    v91 = *(v40 + 16);
    if (v91)
    {
      v41 = 0;
      v88 = v95 + 16;
      v94 = v95 + 8;
      v42 = v39 + 56;
      v43 = MEMORY[0x277D84F90];
      v90 = v14;
      v92 = v21;
      v89 = v40;
      while (v41 < *(v40 + 16))
      {
        v44 = v95;
        v99 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v98 = *(v95 + 72);
        (*(v95 + 16))(v21, v40 + v99 + v98 * v41, v10);
        v45 = v93;
        sub_2287C96B0();
        v46 = sub_2287C9690();
        v47 = v10;
        v48 = v46;
        v50 = v49;
        v51 = *(v44 + 8);
        v51(v45, v47);
        if (*(v39 + 16) && (sub_2287CBD80(), sub_2287CB290(), v52 = sub_2287CBDB0(), v53 = -1 << *(v39 + 32), v54 = v52 & ~v53, ((*(v42 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) != 0))
        {
          v55 = ~v53;
          while (1)
          {
            v56 = (*(v39 + 48) + 16 * v54);
            v57 = *v56 == v48 && v56[1] == v50;
            if (v57 || (sub_2287CBD00() & 1) != 0)
            {
              break;
            }

            v54 = (v54 + 1) & v55;
            if (((*(v42 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          v21 = v92;
          v10 = v101;
          v51(v92, v101);
        }

        else
        {
LABEL_25:

          v21 = v92;
          v96(v100, v92, v101);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v104[0] = v43;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2287132EC(0, v43[2] + 1, 1);
            v43 = v104[0];
          }

          v60 = v43[2];
          v59 = v43[3];
          if (v60 >= v59 >> 1)
          {
            sub_2287132EC((v59 > 1), v60 + 1, 1);
            v43 = v104[0];
          }

          v43[2] = v60 + 1;
          v10 = v101;
          v96(v43 + v99 + v60 * v98, v100, v101);
        }

        ++v41;
        v14 = v90;
        v40 = v89;
        if (v41 == v91)
        {
          goto LABEL_31;
        }
      }

LABEL_43:
      __break(1u);
    }

    else
    {
      v43 = MEMORY[0x277D84F90];
LABEL_31:

      v61 = v87;
      v62 = v95;
      v63 = v43[2];
      if (v63)
      {
        v64 = 0;
        v65 = (v95 + 8);
        while (1)
        {
          if (v64 >= v43[2])
          {
            __break(1u);
            goto LABEL_43;
          }

          (*(v62 + 16))(v14, v43 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v64, v10);
          v66 = v102;
          sub_2287A89E4(v14, v61);
          v102 = v66;
          if (v66)
          {
            break;
          }

          ++v64;
          v67 = *v65;
          (*v65)(v14, v10);
          if (v63 == v64)
          {
            v67(v83, v10);

            return;
          }
        }

        v68 = v14;
        v69 = *v65;
        (*v65)(v68, v10);

        v70 = v84;
        sub_2287CAA20();
        v71 = v102;
        v72 = v102;
        v73 = sub_2287CAA40();
        v74 = sub_2287CB5F0();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v103[0] = v76;
          *v75 = 136380675;
          v104[0] = v71;
          v77 = v71;
          sub_22874A0A4();
          v78 = sub_2287CB270();
          v80 = sub_2287031D8(v78, v79, v103);

          *(v75 + 4) = v80;
          _os_log_impl(&dword_2286FF000, v73, v74, "[Contact Photo] Could not remove profile image url. %{private}s", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v76);
          MEMORY[0x22AABFD90](v76, -1, -1);
          MEMORY[0x22AABFD90](v75, -1, -1);

          (*(v85 + 8))(v70, v86);
          v81 = v83;
          v82 = v101;
        }

        else
        {

          (*(v85 + 8))(v70, v86);
          v81 = v83;
          v82 = v10;
        }

        v69(v81, v82);
      }

      else
      {
        (*(v95 + 8))(v83, v10);
      }
    }
  }
}

uint64_t type metadata accessor for FeedItemGeneratorPipelineManager(uint64_t a1)
{
  result = qword_280DE24E0;
  if (!qword_280DE24E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2287AC3F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_228703004(255, &qword_280DE3870, 0x277CCD7C8);
    v7 = sub_228703004(255, &qword_280DE1990, 0x277CCD4D8);
    v8 = sub_2287AB250();
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2287AC49C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2287AAD6C(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void sub_2287AC504(uint64_t a1)
{
  if (!qword_280DE02F0)
  {
    sub_2287AC684(255, &qword_280DE0128, MEMORY[0x277CBCD88]);
    sub_2287AC584();
    v1 = sub_2287CAC30();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE02F0);
    }
  }
}

unint64_t sub_2287AC584()
{
  result = qword_280DE0130;
  if (!qword_280DE0130)
  {
    sub_2287AC684(255, &qword_280DE0128, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0130);
  }

  return result;
}

void sub_2287AC600(uint64_t a1)
{
  if (!qword_280DDFFA8)
  {
    sub_2287AC684(255, &qword_280DE0128, MEMORY[0x277CBCD88]);
    v1 = sub_2287CB450();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDFFA8);
    }
  }
}

void sub_2287AC684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2287AC6F0()
{
  result = qword_27D850E88;
  if (!qword_27D850E88)
  {
    sub_2287AC684(255, &qword_27D850E80, MEMORY[0x277CBCEA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850E88);
  }

  return result;
}

uint64_t sub_2287AC764(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1 & 1;
  return v2(&v4);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2287AC7C4(uint64_t a1)
{
  if (!qword_280DE03F8)
  {
    sub_2287AC8AC(255);
    sub_2287AC9E4(255);
    v1 = MEMORY[0x277CBCD90];
    sub_2287ADE00(&qword_280DE0170, sub_2287AC8AC, MEMORY[0x277CBCD90]);
    sub_2287ADE00(&qword_280DE0198, sub_2287AC9E4, v1);
    v2 = sub_2287CABC0();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE03F8);
    }
  }
}

void sub_2287AC8E0(uint64_t a1)
{
  if (!qword_280DDFED8)
  {
    sub_2287AC97C(255, &qword_280DDFEE0, &qword_280DDFEE8, 0x277CCDA70, MEMORY[0x277D83D88]);
    sub_2287AC4D0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DDFED8);
    }
  }
}

void sub_2287AC97C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_228703004(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2287AC9E4(uint64_t a1)
{
  if (!qword_280DE0190)
  {
    sub_2287AC97C(255, &qword_280DDFF88, &qword_280DDFEE8, 0x277CCDA70, MEMORY[0x277D83940]);
    sub_22874A0A4();
    v1 = sub_2287CACD0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0190);
    }
  }
}

uint64_t sub_2287ACAA0(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  sub_2287AC8E0(0);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_2287ACAEC(unint64_t a1, uint64_t a2)
{
  v71 = a2;
  sub_2287AD500(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287AD534(0);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v64 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287AD664(0);
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v65 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287AD71C(0);
  v75 = v12;
  v73 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v70 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287AD8B8(0);
  v78 = v14;
  v76 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v72 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287AD9A4(0);
  v79 = v16;
  v77 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v74 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2287CAA50();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v80 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v61 - v22;
  sub_2287CA9D0();

  v24 = sub_2287CAA40();
  v25 = sub_2287CB610();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v61 = v19;
    v27 = v26;
    v28 = swift_slowAlloc();
    v62 = v5;
    v63 = v7;
    v29 = v4;
    v30 = v28;
    v81 = v28;
    *v27 = 136380675;
    v31 = sub_228703004(0, &qword_280DDFEE8, 0x277CCDA70);
    v32 = MEMORY[0x22AABEA80](a1, v31);
    v34 = v18;
    v35 = sub_2287031D8(v32, v33, &v81);

    *(v27 + 4) = v35;
    v18 = v34;
    _os_log_impl(&dword_2286FF000, v24, v25, "[Contact Photo] Processing shared summary entries: %{private}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    v36 = v30;
    v4 = v29;
    v5 = v62;
    v7 = v63;
    MEMORY[0x22AABFD90](v36, -1, -1);
    v37 = v27;
    v19 = v61;
    MEMORY[0x22AABFD90](v37, -1, -1);
  }

  v38 = *(v19 + 8);
  v38(v23, v18);
  if (!(a1 >> 62))
  {
    v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
      goto LABEL_5;
    }

LABEL_11:
    sub_2287AC8E0(v39);
    sub_22874A0A4();
    sub_2287CADC0();
    sub_2287ADE00(&qword_280DE0070, sub_2287AD500, MEMORY[0x277CBCE90]);
    v52 = sub_2287CAF40();
    (*(v5 + 8))(v7, v4);
    return v52;
  }

  v39 = sub_2287CB920();
  if (!v39)
  {
    goto LABEL_11;
  }

LABEL_5:
  v40 = [objc_opt_self() authorizationStatusForEntityType_];
  if (v40 == 3)
  {
    v81 = a1;
    sub_2287AC97C(0, &qword_280DDFF88, &qword_280DDFEE8, 0x277CCDA70, MEMORY[0x277D83940]);
    sub_2287AD5E0();
    v41 = v64;
    sub_2287CB2F0();
    sub_22874A0A4();
    v42 = v65;
    v43 = v67;
    sub_2287CABF0();
    v44 = (*(v66 + 8))(v41, v43);
    MEMORY[0x28223BE20](v44);
    *(&v61 - 2) = v71;
    sub_2287AD80C(0);
    v45 = v70;
    v46 = v69;
    sub_2287CAC00();
    (*(v68 + 8))(v42, v46);
    sub_2287AC8E0(0);
    sub_2287AC8AC(0);
    sub_2287ADE00(&unk_280DE0348, sub_2287AD71C, MEMORY[0x277CBCD18]);
    sub_2287ADE00(&qword_280DE0170, sub_2287AC8AC, MEMORY[0x277CBCD90]);
    v47 = v72;
    v48 = v75;
    sub_2287CAFE0();
    (*(v73 + 8))(v45, v48);
    sub_2287ADE00(&qword_280DE0418, sub_2287AD8B8, MEMORY[0x277CBCCE0]);
    v49 = v74;
    v50 = v78;
    sub_2287CAF90();
    (*(v76 + 8))(v47, v50);
    sub_2287ADE00(&qword_27D850E98, sub_2287AD9A4, MEMORY[0x277CBCC40]);
    v51 = v79;
    v52 = sub_2287CAF40();
    (*(v77 + 8))(v49, v51);
  }

  else
  {
    v53 = v40;
    v54 = v4;
    sub_2287CA9D0();
    v55 = sub_2287CAA40();
    v56 = sub_2287CB5F0();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = v18;
      v58 = swift_slowAlloc();
      *v58 = 134217984;
      *(v58 + 4) = v53;
      _os_log_impl(&dword_2286FF000, v55, v56, "[Contact Photo] Contacts access not authorized. Current CNAuthorizationStatus: %ld", v58, 0xCu);
      v59 = v58;
      v18 = v57;
      MEMORY[0x22AABFD90](v59, -1, -1);
    }

    v38(v80, v18);
    sub_2287AC8E0(0);
    sub_22874A0A4();
    sub_2287CADC0();
    sub_2287ADE00(&qword_280DE0070, sub_2287AD500, MEMORY[0x277CBCE90]);
    v52 = sub_2287CAF40();
    (*(v5 + 8))(v7, v54);
  }

  return v52;
}

void sub_2287AD534(uint64_t a1)
{
  if (!qword_280DE0358)
  {
    sub_2287AC97C(255, &qword_280DDFF88, &qword_280DDFEE8, 0x277CCDA70, MEMORY[0x277D83940]);
    sub_2287AD5E0();
    v1 = sub_2287CAC10();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0358);
    }
  }
}

unint64_t sub_2287AD5E0()
{
  result = qword_280DDFF80;
  if (!qword_280DDFF80)
  {
    sub_2287AC97C(255, &qword_280DDFF88, &qword_280DDFEE8, 0x277CCDA70, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDFF80);
  }

  return result;
}

void sub_2287AD664(uint64_t a1)
{
  if (!qword_280DE0368)
  {
    sub_2287AC97C(255, &qword_280DDFF88, &qword_280DDFEE8, 0x277CCDA70, MEMORY[0x277D83940]);
    sub_22874A0A4();
    sub_2287AD5E0();
    v1 = sub_2287CAC10();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0368);
    }
  }
}

void sub_2287AD71C(uint64_t a1)
{
  if (!qword_280DE0340)
  {
    sub_2287AD7D8(255);
    sub_22874A0A4();
    sub_2287ADE00(&unk_280DDFF68, sub_2287AD7D8, MEMORY[0x277D83970]);
    v1 = sub_2287CAC10();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0340);
    }
  }
}

void sub_2287AD80C(uint64_t a1)
{
  if (!qword_280DDFED0)
  {
    sub_228703004(255, &qword_280DDFEE8, 0x277CCDA70);
    sub_2287AC97C(255, &qword_280DDFE98, &qword_280DDFEA0, 0x277CBDA58, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DDFED0);
    }
  }
}

void sub_2287AD8B8(uint64_t a1)
{
  if (!qword_280DE0410)
  {
    sub_2287AC8AC(255);
    sub_2287AD71C(255);
    sub_2287ADE00(&qword_280DE0170, sub_2287AC8AC, MEMORY[0x277CBCD90]);
    sub_2287ADE00(&unk_280DE0348, sub_2287AD71C, MEMORY[0x277CBCD18]);
    v1 = sub_2287CABC0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0410);
    }
  }
}

void sub_2287AD9A4(uint64_t a1)
{
  if (!qword_280DE0530)
  {
    sub_2287AD8B8(255);
    sub_2287AC8AC(255);
    sub_2287ADE00(&qword_280DE0418, sub_2287AD8B8, MEMORY[0x277CBCCE0]);
    sub_2287ADE00(&qword_280DE0170, sub_2287AC8AC, MEMORY[0x277CBCD90]);
    v1 = sub_2287CAB60();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0530);
    }
  }
}

void sub_2287ADACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_22874A0A4();
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2287ADB48(uint64_t a1)
{
  if (!qword_27D850EC0)
  {
    sub_2287ADA98(255);
    sub_2287AC8AC(255);
    sub_2287ADE00(&qword_27D850EB0, sub_2287ADA98, MEMORY[0x277CBCF40]);
    sub_2287ADE00(&qword_280DE0170, sub_2287AC8AC, MEMORY[0x277CBCD90]);
    v1 = sub_2287CAB60();
    if (!v2)
    {
      atomic_store(v1, &qword_27D850EC0);
    }
  }
}

unint64_t sub_2287ADC58()
{
  result = qword_27D850ED0;
  if (!qword_27D850ED0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D850ED0);
  }

  return result;
}

uint64_t sub_2287ADCC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2287ADD8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2287ADE00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2287ADE68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_2287C9810();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2287ADEE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2287ADF4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ModelTrainingEvent.init(feedItemURL:eventKind:isPositive:date:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = sub_2287C9700();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for ModelTrainingEvent(0);
  *(a5 + v11[5]) = v9;
  *(a5 + v11[6]) = a3;
  v12 = v11[7];
  v13 = sub_2287C97C0();
  v14 = *(*(v13 - 8) + 32);

  return v14(a5 + v12, a4, v13);
}

uint64_t type metadata accessor for ModelTrainingEvent(uint64_t a1)
{
  result = qword_280DE3A88;
  if (!qword_280DE3A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ModelTrainingEvent.EventKind.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C6C657764;
  }

  else
  {
    return 7364980;
  }
}

HealthPlatformCore::ModelTrainingEvent::EventKind_optional __swiftcall ModelTrainingEvent.EventKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2287CBC10();

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

  *v2 = v5;
  return result;
}

uint64_t sub_2287AE174@<X0>(char *a2@<X8>)
{
  v3 = sub_2287CBC10();

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

void sub_2287AE1D4(uint64_t *a1@<X8>)
{
  v2 = 7364980;
  if (*v1)
  {
    v2 = 0x6C6C657764;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2287AE2B8()
{
  sub_2287CBD80();
  sub_2287CB290();

  return sub_2287CBDB0();
}

uint64_t sub_2287AE330(uint64_t a1)
{
  sub_2287CB290();
}

uint64_t sub_2287AE394(uint64_t a1)
{
  sub_2287CBD80();
  sub_2287CB290();

  return sub_2287CBDB0();
}

uint64_t sub_2287AE408(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C6C657764;
  }

  else
  {
    v3 = 7364980;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C6C657764;
  }

  else
  {
    v5 = 7364980;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2287CBD00();
  }

  return v8 & 1;
}

uint64_t ModelTrainingEvent.feedItemURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2287C9700();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ModelTrainingEvent.eventKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ModelTrainingEvent(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ModelTrainingEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ModelTrainingEvent(0) + 28);
  v4 = sub_2287C97C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2287AE5E4()
{
  v1 = 0x6D65744964656566;
  v2 = 0x697469736F507369;
  if (*v0 != 2)
  {
    v2 = 1702125924;
  }

  if (*v0)
  {
    v1 = 0x6E694B746E657665;
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

uint64_t sub_2287AE668@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2287AFC2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2287AE69C(uint64_t a1)
{
  v2 = sub_2287AF6B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2287AE6D8(uint64_t a1)
{
  v2 = sub_2287AF6B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ModelTrainingEvent.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2287AF760(0, &qword_280DE1270, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2287AF6B8();
  sub_2287CBE30();
  v11[15] = 0;
  sub_2287C9700();
  sub_2287AF8B8(&qword_280DE17F8, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
  sub_2287CBC90();
  if (!v2)
  {
    v11[14] = *(v3 + *(type metadata accessor for ModelTrainingEvent(0) + 20));
    v11[13] = 1;
    sub_2287AF70C();
    sub_2287CBC90();
    v11[12] = 2;
    sub_2287CBC80();
    v11[11] = 3;
    sub_2287C97C0();
    sub_2287AF8B8(&qword_280DE17E0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_2287CBC90();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t ModelTrainingEvent.hash(into:)(uint64_t a1)
{
  sub_2287C9700();
  sub_2287AF8B8(&qword_280DE17F0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_2287CB1C0();
  type metadata accessor for ModelTrainingEvent(0);
  sub_2287CB290();

  sub_2287CBDA0();
  sub_2287C97C0();
  sub_2287AF8B8(&qword_280DE17D8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_2287CB1C0();
}

uint64_t ModelTrainingEvent.hashValue.getter()
{
  sub_2287CBD80();
  sub_2287C9700();
  sub_2287AF8B8(&qword_280DE17F0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_2287CB1C0();
  type metadata accessor for ModelTrainingEvent(0);
  sub_2287CB290();

  sub_2287CBDA0();
  sub_2287C97C0();
  sub_2287AF8B8(&qword_280DE17D8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2287CB1C0();
  return sub_2287CBDB0();
}

uint64_t ModelTrainingEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = sub_2287C97C0();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2287C9700();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v31 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287AF760(0, &qword_280DE18A0, MEMORY[0x277D844C8]);
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for ModelTrainingEvent(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2287AF6B8();
  v32 = v9;
  v13 = v33;
  sub_2287CBE20();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v33 = v4;
  v14 = v28;
  v38 = 0;
  sub_2287AF8B8(&qword_280DE34B8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_2287CBC70();
  v15 = *(v14 + 32);
  v16 = v12;
  v15(v12, v31, v5);
  v36 = 1;
  sub_2287AF7C4();
  sub_2287CBC70();
  v12[v10[5]] = v37;
  v35 = 2;
  v17 = sub_2287CBC60();
  v18 = a1;
  v19 = v29;
  v16[v10[6]] = v17 & 1;
  v34 = 3;
  sub_2287AF8B8(&qword_280DE34B0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v31 = v16;
  v20 = v33;
  v21 = v27;
  sub_2287CBC70();
  (*(v19 + 8))(v32, v30);
  v22 = v31;
  (*(v25 + 32))(&v31[v10[7]], v20, v21);
  sub_228798D5C(v22, v26);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return sub_228798DC0(v22);
}

uint64_t sub_2287AF144(uint64_t a1, uint64_t a2)
{
  sub_2287C9700();
  sub_2287AF8B8(&qword_280DE17F0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_2287CB1C0();
  sub_2287CB290();

  sub_2287CBDA0();
  sub_2287C97C0();
  sub_2287AF8B8(&qword_280DE17D8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_2287CB1C0();
}

uint64_t sub_2287AF278(uint64_t a1, uint64_t a2)
{
  sub_2287CBD80();
  sub_2287C9700();
  sub_2287AF8B8(&qword_280DE17F0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_2287CB1C0();
  sub_2287CB290();

  sub_2287CBDA0();
  sub_2287C97C0();
  sub_2287AF8B8(&qword_280DE17D8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2287CB1C0();
  return sub_2287CBDB0();
}

uint64_t ModelTrainingEvent.debugDescription.getter()
{
  v7[8] = 0;
  sub_2287CBA20();
  MEMORY[0x22AABE980](0x6D65744964656546, 0xEA0000000000203ALL);
  v1 = sub_2287C9670();
  MEMORY[0x22AABE980](v1);

  MEMORY[0x22AABE980](0x4B746E657665203BLL, 0xED0000203A646E69);
  v2 = type metadata accessor for ModelTrainingEvent(0);
  *v7 = *(v0 + *(v2 + 20));
  sub_2287CBB30();
  MEMORY[0x22AABE980](0x69736F507369203BLL, 0xEE00203A65766974);
  if (*(v0 + *(v2 + 24)))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + *(v2 + 24)))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x22AABE980](v3, v4);

  MEMORY[0x22AABE980](0x203A65746164203BLL, 0xE800000000000000);
  sub_2287C97C0();
  sub_2287AF8B8(&qword_280DE3978, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v5 = sub_2287CBCC0();
  MEMORY[0x22AABE980](v5);

  return *&v7[1];
}

uint64_t _s18HealthPlatformCore18ModelTrainingEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_2287C96E0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ModelTrainingEvent(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    v8 = 0x6C6C657764;
  }

  else
  {
    v8 = 7364980;
  }

  if (v6)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  if (v7)
  {
    v10 = 0x6C6C657764;
  }

  else
  {
    v10 = 7364980;
  }

  if (v7)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  if (v8 == v10 && v9 == v11)
  {
  }

  else
  {
    v13 = sub_2287CBD00();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v15 = v4[7];

  return MEMORY[0x28211DA98](a1 + v15, a2 + v15);
}

unint64_t sub_2287AF6B8()
{
  result = qword_280DE3940;
  if (!qword_280DE3940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE3940);
  }

  return result;
}

unint64_t sub_2287AF70C()
{
  result = qword_280DE16A0;
  if (!qword_280DE16A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE16A0);
  }

  return result;
}

void sub_2287AF760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2287AF6B8();
    v7 = a3(a1, &type metadata for ModelTrainingEvent.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2287AF7C4()
{
  result = qword_280DE2E40;
  if (!qword_280DE2E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE2E40);
  }

  return result;
}

unint64_t sub_2287AF81C()
{
  result = qword_27D850ED8;
  if (!qword_27D850ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850ED8);
  }

  return result;
}

uint64_t sub_2287AF8B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2287AF928(uint64_t a1)
{
  result = sub_2287C9700();
  if (v2 <= 0x3F)
  {
    result = sub_2287C97C0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelTrainingEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelTrainingEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2287AFB28()
{
  result = qword_27D850EE0;
  if (!qword_27D850EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850EE0);
  }

  return result;
}

unint64_t sub_2287AFB80()
{
  result = qword_280DE3930;
  if (!qword_280DE3930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE3930);
  }

  return result;
}

unint64_t sub_2287AFBD8()
{
  result = qword_280DE3938;
  if (!qword_280DE3938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE3938);
  }

  return result;
}

uint64_t sub_2287AFC2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D65744964656566 && a2 == 0xEB000000004C5255;
  if (v4 || (sub_2287CBD00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E694B746E657665 && a2 == 0xE900000000000064 || (sub_2287CBD00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697469736F507369 && a2 == 0xEA00000000006576 || (sub_2287CBD00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2287CBD00();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_2287AFDA4()
{
  result = qword_280DE3948;
  if (!qword_280DE3948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE3948);
  }

  return result;
}

void sub_2287AFDF8(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2287CB920();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_2287CB8C0();
    }

    else
    {
      v3 = sub_2287CB890();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_2287BFFF0(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 identifier];
        v14 = sub_2287CB220();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_2287042D4((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_2287CB8E0())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          sub_2287B6650(0, &qword_27D850BA0, MEMORY[0x277D83B18]);
          v6 = sub_2287CB4A0();
          sub_2287CB980();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_228717DF8(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_228717DF8(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_228717DF8(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          v2 = v33;
          if (v5 == v33)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_2287B016C()
{
  sub_2287010E4(v0 + 64, v3);
  sub_22870D3A8(0, &qword_280DE0F78, &protocol descriptor for RelevanceEngineCoordinator);
  type metadata accessor for SummaryTabRelevanceEngineCoordinator(0);
  if (swift_dynamicCast())
  {
    return v2;
  }

  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  sub_2287CBA20();
  MEMORY[0x22AABE980](0xD00000000000001CLL, 0x80000002287D3320);
  sub_2287CBB30();
  result = sub_2287CBB90();
  __break(1u);
  return result;
}

uint64_t SummaryTabFeedPopulationManager.__allocating_init(healthExperienceStore:healthStore:)(void *a1, uint64_t a2)
{
  v35 = a2;
  sub_2287063C8(0, &unk_280DE3AA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = sub_2287C9700();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  sub_2287010E4(a1, v41);
  v37 = a1;
  sub_2287010E4(a1, v40);
  v15 = v14;
  v33 = type metadata accessor for SummaryTabRelevanceEngineCoordinator(0);
  static SummaryTabRelevanceEngineCoordinator.defaultModelURL.getter();
  if (qword_280DE0D70 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_280DE0D78);
  v17 = *(v9 + 16);
  v17(v7, v16, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_2287010E4(v40, v39);
  v32 = v9;
  if (qword_280DE0D98 != -1)
  {
    swift_once();
  }

  v31 = " doesn't have an identifier";
  v18 = qword_280DE0DA0;
  v19 = type metadata accessor for FeedItemREElementDataSource();
  v20 = objc_allocWithZone(v19);
  sub_2287010E4(v39, &v20[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_store]);
  *&v20[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_sourceProfiles] = v18;
  v38.receiver = v20;
  v38.super_class = v19;

  v21 = objc_msgSendSuper2(&v38, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v39);
  sub_228703640(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2287CCC50;
  *(v22 + 32) = v21;
  v17(v12, v15, v8);
  v23 = MEMORY[0x277CC9260];
  v24 = v34;
  sub_2287B6840(v7, v34, &unk_280DE3AA0, MEMORY[0x277CC9260]);
  v25 = v33;
  v26 = objc_allocWithZone(v33);
  v27 = SummaryTabRelevanceEngineCoordinator.init(dataSources:engineName:modelURL:pretrainedModelURL:)(v22, 0xD000000000000016, v31 | 0x8000000000000000, v12, v24);
  sub_2287B656C(v7, &unk_280DE3AA0, v23);
  (*(v32 + 8))(v15, v8);
  __swift_destroy_boxed_opaque_existential_0(v40);
  v40[3] = v25;
  v40[4] = &protocol witness table for SummaryTabRelevanceEngineCoordinator;
  v40[0] = v27;
  v28 = (*(v36 + 128))(v41, v35, v40);
  __swift_destroy_boxed_opaque_existential_0(v37);
  return v28;
}

uint64_t *SummaryTabFeedPopulationManager.init(healthExperienceStore:healthStore:relevanceEngineCoordinator:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC18HealthPlatformCore31SummaryTabFeedPopulationManager____lazy_storage___pertinentChangeDomain;
  v9 = sub_2287CA1F0();
  (*(*(v9 - 8) + 56))(v4 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC18HealthPlatformCore31SummaryTabFeedPopulationManager_trainingAnalyticsCache;
  v22[0] = MEMORY[0x277D84F90];
  sub_2287063C8(0, &unk_280DE3778, sub_2287B0914, MEMORY[0x277D121D8]);
  swift_allocObject();
  *(v4 + v10) = sub_2287CA690();
  sub_2287010E4(a1, v22);
  sub_2287010E4(a3, v19);
  v11 = v20;
  v12 = v21;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  MEMORY[0x28223BE20](v13);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = sub_2287C658C(v22, a2, v15, v4, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a1);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v17;
}

void sub_2287B0948(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v6 = sub_2287C99F0();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v3;
  v7[4] = a1;
  v7[5] = a2;
  v10[4] = sub_2287B6238;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_228712EA8;
  v10[3] = &block_descriptor_12;
  v8 = _Block_copy(v10);
  v9 = v6;

  [v9 performBlock_];
  _Block_release(v8);
}

uint64_t sub_2287B0A70(uint64_t a1, id *a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v6 = sub_2287CB080();
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2287CB0E0();
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2287CB090();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a2[7] profileIdentifier];
  v17 = NSManagedObjectContext.doesFeedEligibleForDisplayExist(kind:associatedProfileIdentifier:)(2, v16);

  if (v17)
  {
    sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
    (*(v13 + 104))(v15, *MEMORY[0x277D851B0], v12);
    v18 = sub_2287CB6E0();
    (*(v13 + 8))(v15, v12);
    v19 = swift_allocObject();
    *(v19 + 16) = v28;
    *(v19 + 24) = a4;
    aBlock[4] = sub_2287B6948;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228712EA8;
    aBlock[3] = &block_descriptor_53;
    v20 = _Block_copy(aBlock);

    sub_2287CB0A0();
    v29 = MEMORY[0x277D84F90];
    sub_2287B6A3C(&qword_280DE3A28, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_2287063C8(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_22873AA14();
    sub_2287CB880();
    MEMORY[0x22AABED90](0, v11, v8, v20);
    _Block_release(v20);

    (*(v27 + 8))(v8, v6);
    (*(v25 + 8))(v11, v26);
  }

  else
  {
    v22 = swift_allocObject();
    *(v22 + 16) = v28;
    *(v22 + 24) = a4;
    v23 = *(*a2 + 17);

    v23(&unk_283BC0508, sub_2287B691C, v22);
  }
}

uint64_t sub_2287B0EFC(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a4;
  v53 = a5;
  v60 = a1;
  v61 = a2;
  v7 = *v5;
  v8 = sub_2287CAA50();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v15 = &v51 - v13;
  v54 = a3;
  v16 = *(a3 + 16);
  if (v16)
  {
    v17 = (v54 + 32);
    v64 = (v12 + 8);
    *&v14 = 136315394;
    v55 = v14;
    v58 = v8;
    v59 = v7;
    v56 = &v51 - v13;
    v57 = v11;
    do
    {
      v18 = *v17;
      v63 = v17 + 1;
      sub_2287CA9E0();
      v19 = sub_2287CAA40();
      v20 = sub_2287CB610();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v65 = v22;
        *v21 = v55;
        v23 = sub_2287CBE60();
        v25 = sub_2287031D8(v23, v24, &v65);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2082;
        v26 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
        v28 = sub_2287031D8(v26, v27, &v65);
        v8 = v58;

        *(v21 + 14) = v28;
        v7 = v59;
        _os_log_impl(&dword_2286FF000, v19, v20, "******** [%s] populating feed: %{public}s *******", v21, 0x16u);
        swift_arrayDestroy();
        v29 = v22;
        v11 = v57;
        MEMORY[0x22AABFD90](v29, -1, -1);
        MEMORY[0x22AABFD90](v21, -1, -1);
      }

      v30 = *v64;
      (*v64)(v15, v8);
      v31 = v62[11];
      v32 = v62[12];
      __swift_project_boxed_opaque_existential_1(v62 + 8, v31);
      v33 = RelevanceEngineCoordinator.sortedElements(for:)(v18, v31, v32);
      sub_228784F20(v18, v33, v60, v61);

      sub_2287CA9E0();
      v34 = sub_2287CAA40();
      v35 = sub_2287CB610();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v65 = v37;
        *v36 = v55;
        v38 = sub_2287CBE60();
        v40 = sub_2287031D8(v38, v39, &v65);

        *(v36 + 4) = v40;
        v7 = v59;
        *(v36 + 12) = 2082;
        v41 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
        v43 = sub_2287031D8(v41, v42, &v65);

        *(v36 + 14) = v43;
        v8 = v58;
        _os_log_impl(&dword_2286FF000, v34, v35, "******** [%s] feed population finished for %{public}s *******", v36, 0x16u);
        swift_arrayDestroy();
        v44 = v37;
        v11 = v57;
        MEMORY[0x22AABFD90](v44, -1, -1);
        MEMORY[0x22AABFD90](v36, -1, -1);
      }

      v30(v11, v8);
      --v16;
      v15 = v56;
      v17 = v63;
    }

    while (v16);
  }

  v45 = v62[11];
  v46 = v62[12];
  __swift_project_boxed_opaque_existential_1(v62 + 8, v45);
  v47 = swift_allocObject();
  v48 = v53;
  v49 = v52;
  v47[2] = v54;
  v47[3] = v49;
  v47[4] = v48;
  v47[5] = v7;

  RelevanceEngineCoordinator.saveModelToDisk(completion:)(sub_2287B625C, v47, v45, v46);
}

uint64_t sub_2287B138C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v8 = sub_2287CAA50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9E0();

  v12 = sub_2287CAA40();
  v13 = sub_2287CB610();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v8;
    v15 = v14;
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315394;
    v17 = sub_2287CBE60();
    v19 = sub_2287031D8(v17, v18, &v30);
    v29 = a4;
    v20 = a3;
    v21 = v19;

    *(v15 + 4) = v21;
    *(v15 + 12) = 2082;
    v22 = MEMORY[0x22AABEA80](a2, MEMORY[0x277D121B8]);
    v24 = sub_2287031D8(v22, v23, &v30);
    a3 = v20;

    *(v15 + 14) = v24;
    _os_log_impl(&dword_2286FF000, v12, v13, "[%s] Saved model and updated novelty counts after populating feeds %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v16, -1, -1);
    MEMORY[0x22AABFD90](v15, -1, -1);

    v25 = (*(v9 + 8))(v11, v28);
  }

  else
  {

    v25 = (*(v9 + 8))(v11, v8);
  }

  return a3(v25);
}

uint64_t sub_2287B15C8@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D12000];
  sub_2287063C8(0, &qword_280DE17B8, MEMORY[0x277D12000], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC18HealthPlatformCore31SummaryTabFeedPopulationManager____lazy_storage___pertinentChangeDomain;
  swift_beginAccess();
  sub_2287B6840(v1 + v10, v9, &qword_280DE17B8, v3);
  v11 = sub_2287CA1F0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_2287B656C(v9, &qword_280DE17B8, MEMORY[0x277D12000]);
  sub_2287B17E8(v1);
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_22871EA0C(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_2287B17E8(uint64_t a1)
{
  v1 = (*(*a1 + 248))();
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_18:

    if (qword_280DE0D98 != -1)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  v3 = v1 + 32;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    ++v3;
    v5 = sub_2287CA5B0();
    v6 = *(v5 + 16);
    v7 = v4[2];
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      break;
    }

    v9 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v8 <= v4[3] >> 1)
    {
      if (*(v9 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v7 <= v8)
      {
        v11 = v7 + v6;
      }

      else
      {
        v11 = v7;
      }

      v4 = sub_22872300C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
      if (*(v9 + 16))
      {
LABEL_14:
        v12 = (v4[3] >> 1) - v4[2];
        sub_2287C9B20();
        if (v12 < v6)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v13 = v4[2];
          v14 = __OFADD__(v13, v6);
          v15 = v13 + v6;
          if (v14)
          {
            goto LABEL_25;
          }

          v4[2] = v15;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_23;
    }

LABEL_4:
    if (!--v2)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  swift_once();
LABEL_19:

  return sub_2287CA160();
}

void *sub_2287B19E8()
{
  v0 = sub_2287CA5C0();
  v1 = sub_22872A948(v0);

  v2 = sub_2287CA5F0();
  v3 = sub_22872A948(v2);

  v4 = sub_2287B54E4(v3, v1, sub_2287B5758, sub_2287B5758);

  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_228723A48(v4[2], 0);
  v7 = sub_228729E78(&v9, v6 + 32, v5, v4);
  sub_22870B3D4(v9);
  if (v7 != v5)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_2287B1AD4()
{
  v0 = sub_2287CA1F0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2287CA1D0())
  {
    v4 = 0;
  }

  else
  {
    sub_2287B15C8(v3);
    v4 = sub_2287CA1E0();
    (*(v1 + 8))(v3, v0);
  }

  return v4 & 1;
}

uint64_t sub_2287B1BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v44 = a3;
  v45 = a4;
  v42 = a2;
  v43 = a1;
  v6 = *v4;
  v7 = sub_2287CB080();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2287CB0E0();
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x28223BE20](v11);
  v46 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2287CAA50();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9E0();
  v17 = sub_2287CAA40();
  v18 = sub_2287CB610();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v41 = v8;
    v20 = v19;
    v21 = swift_slowAlloc();
    v40 = v10;
    v22 = v21;
    *&v51[0] = v21;
    *v20 = 136315138;
    aBlock[0] = v6;
    swift_getMetatypeMetadata();
    v23 = sub_2287CB250();
    v39 = v6;
    v25 = sub_2287031D8(v23, v24, v51);
    v38 = v13;
    v26 = v7;
    v27 = v25;

    *(v20 + 4) = v27;
    v7 = v26;
    _os_log_impl(&dword_2286FF000, v17, v18, "[%s]: Enqueuing submitTraining", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v28 = v22;
    v10 = v40;
    MEMORY[0x22AABFD90](v28, -1, -1);
    v29 = v20;
    v8 = v41;
    MEMORY[0x22AABFD90](v29, -1, -1);

    v30 = v39;
    (*(v14 + 8))(v16, v38);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
    v30 = v6;
  }

  sub_2287010E4(v42, v51);
  v31 = swift_allocObject();
  v32 = v43;
  v31[2] = v5;
  v31[3] = v32;
  sub_22871AC0C(v51, (v31 + 4));
  v34 = v44;
  v33 = v45;
  v31[9] = v44;
  v31[10] = v33;
  v31[11] = v30;
  aBlock[4] = sub_2287B6268;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_9;
  v35 = _Block_copy(aBlock);

  sub_228714B08(v34, v33);
  v36 = v46;
  sub_2287CB0A0();
  v49 = MEMORY[0x277D84F90];
  sub_2287B6A3C(&qword_280DE3A28, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_2287063C8(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_22873AA14();
  sub_2287CB880();
  MEMORY[0x22AABED90](0, v36, v10, v35);
  _Block_release(v35);
  (*(v8 + 8))(v10, v7);
  (*(v47 + 8))(v36, v48);
}

uint64_t sub_2287B20CC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_2287CAA50();
  v39 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9E0();
  v15 = sub_2287CAA40();
  v16 = sub_2287CB610();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = v12;
    v18 = v17;
    v36 = swift_slowAlloc();
    v40[0] = v36;
    v40[1] = a6;
    *v18 = 136315138;
    swift_getMetatypeMetadata();
    v19 = sub_2287CB250();
    v38 = a1;
    v21 = sub_2287031D8(v19, v20, v40);
    v35 = a6;
    v22 = a4;
    v23 = a5;
    v24 = a2;
    v25 = a3;
    v26 = v21;
    a1 = v38;

    *(v18 + 4) = v26;
    a3 = v25;
    a2 = v24;
    a5 = v23;
    a4 = v22;
    _os_log_impl(&dword_2286FF000, v15, v16, "[%s]: submitTraining dequeued and executing", v18, 0xCu);
    v27 = v36;
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x22AABFD90](v27, -1, -1);
    MEMORY[0x22AABFD90](v18, -1, -1);

    v28 = v35;
    v29 = (*(v39 + 8))(v14, v37);
  }

  else
  {

    v29 = (*(v39 + 8))(v14, v12);
    v28 = a6;
  }

  MEMORY[0x28223BE20](v29);
  *(&v34 - 2) = a2;

  sub_2287CA670();

  v30 = a1[11];
  v31 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, v30);
  v32 = swift_allocObject();
  v32[2] = a4;
  v32[3] = a5;
  v32[4] = v28;
  sub_228714B08(a4, a5);
  RelevanceEngineCoordinator.submitTraining(trainingEvents:store:completion:)(a2, a3, sub_2287B6834, v32, v30, v31);
}

uint64_t sub_2287B23D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2287CB080();
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v45 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2287CB0E0();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2287CB090();
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v41 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2287CAA50();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9E0();
  v15 = sub_2287CAA40();
  v16 = sub_2287CB610();
  if (!os_log_type_enabled(v15, v16))
  {

    result = (*(v12 + 8))(v14, v11);
    if (!a1)
    {
      return result;
    }

    goto LABEL_5;
  }

  v17 = swift_slowAlloc();
  v39 = v9;
  v18 = v17;
  v19 = swift_slowAlloc();
  v40 = v6;
  v20 = v19;
  v48 = v19;
  aBlock[0] = a3;
  *v18 = 136315138;
  swift_getMetatypeMetadata();
  v21 = sub_2287CB250();
  v23 = sub_2287031D8(v21, v22, &v48);
  v38 = v11;
  v24 = a1;
  v25 = a2;
  v26 = v23;

  *(v18 + 4) = v26;
  a2 = v25;
  a1 = v24;
  _os_log_impl(&dword_2286FF000, v15, v16, "[%s]: submitTraining finished", v18, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v20);
  v27 = v20;
  v6 = v40;
  MEMORY[0x22AABFD90](v27, -1, -1);
  v28 = v18;
  v9 = v39;
  MEMORY[0x22AABFD90](v28, -1, -1);

  result = (*(v12 + 8))(v14, v38);
  if (v24)
  {
LABEL_5:
    sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
    v31 = v41;
    v30 = v42;
    (*(v42 + 104))(v41, *MEMORY[0x277D851B0], v9);

    v32 = sub_2287CB6E0();
    (*(v30 + 8))(v31, v9);
    v33 = swift_allocObject();
    *(v33 + 16) = a1;
    *(v33 + 24) = a2;
    aBlock[4] = sub_22877E1B8;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228712EA8;
    aBlock[3] = &block_descriptor_44;
    v34 = _Block_copy(aBlock);

    v35 = v43;
    sub_2287CB0A0();
    v48 = MEMORY[0x277D84F90];
    sub_2287B6A3C(&qword_280DE3A28, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_2287063C8(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_22873AA14();
    v36 = v45;
    sub_2287CB880();
    MEMORY[0x22AABED90](0, v35, v36, v34);
    _Block_release(v34);

    sub_228714BC0(a1, a2);
    (*(v47 + 8))(v36, v6);
    (*(v44 + 8))(v35, v46);
  }

  return result;
}

uint64_t sub_2287B2964()
{
  sub_2287B656C(v0 + OBJC_IVAR____TtC18HealthPlatformCore31SummaryTabFeedPopulationManager____lazy_storage___pertinentChangeDomain, &qword_280DE17B8, MEMORY[0x277D12000]);
}

uint64_t SummaryTabFeedPopulationManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  sub_2287B656C(v0 + OBJC_IVAR____TtC18HealthPlatformCore31SummaryTabFeedPopulationManager____lazy_storage___pertinentChangeDomain, &qword_280DE17B8, MEMORY[0x277D12000]);

  return v0;
}

uint64_t SummaryTabFeedPopulationManager.__deallocating_deinit()
{
  SummaryTabFeedPopulationManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t SummaryTabFeedPopulationManager.collectDiagnosticLogs(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x277D84F90];
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v2;
  v6[4] = a1;
  v6[5] = a2;

  sub_2287B3500(sub_2287B627C, v6);
}

uint64_t sub_2287B2BD8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v56 = a4;
  v57 = a5;
  v8 = sub_2287CAA50();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v53 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - v11;
  v13 = sub_2287C9700();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v52 - v18;
  sub_2287B63C0(0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2287B66EC(a1, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    sub_2287CA9E0();
    v24 = v23;
    v25 = sub_2287CAA40();
    v26 = sub_2287CB5F0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v58[0] = v28;
      *v27 = 136315138;
      v58[3] = v23;
      v29 = v23;
      sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
      v30 = sub_2287CB250();
      v32 = sub_2287031D8(v30, v31, v58);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_2286FF000, v25, v26, "Unable to get database diagnostics: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x22AABFD90](v28, -1, -1);
      MEMORY[0x22AABFD90](v27, -1, -1);
    }

    else
    {
    }

    v40 = v54;
    v39 = v55;
    (*(v54 + 8))(v12, v55);
  }

  else
  {
    v52 = a3;
    v33 = *(v14 + 32);
    v33(v19, v22, v13);
    (*(v14 + 16))(v17, v19, v13);
    swift_beginAccess();
    v34 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v34;
    if (isUniquelyReferenced_nonNull_native)
    {
      v36 = a2;
    }

    else
    {
      v34 = sub_22872386C(0, *(v34 + 2) + 1, 1, v34);
      v36 = a2;
      *(a2 + 16) = v34;
    }

    v38 = *(v34 + 2);
    v37 = *(v34 + 3);
    if (v38 >= v37 >> 1)
    {
      v34 = sub_22872386C((v37 > 1), v38 + 1, 1, v34);
    }

    *(v34 + 2) = v38 + 1;
    v33(&v34[((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v38], v17, v13);
    a2 = v36;
    *(v36 + 16) = v34;
    (*(v14 + 8))(v19, v13);
    a3 = v52;
    v40 = v54;
    v39 = v55;
  }

  v41 = v53;
  sub_2287CA9E0();
  v42 = sub_2287CAA40();
  v43 = sub_2287CB610();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_2286FF000, v42, v43, "Database logs collected. Now collecting RelevanceEngine logs", v44, 2u);
    MEMORY[0x22AABFD90](v44, -1, -1);
  }

  (*(v40 + 8))(v41, v39);
  v45 = a3[11];
  v46 = a3[12];
  __swift_project_boxed_opaque_existential_1(a3 + 8, v45);
  v47 = sub_2287CA5C0();
  v48 = swift_allocObject();
  v48[2] = a3;
  v48[3] = a2;
  v49 = v57;
  v48[4] = v56;
  v48[5] = v49;
  v50 = *(v46 + 24);

  v50(v47, sub_2287B6798, v48, v45, v46);
}

uint64_t sub_2287B3164(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[11];
  v8 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, v7);
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;

  RelevanceEngineCoordinator.collectDiagnosticLogs(completion:)(sub_2287B67F8, v9, v7, v8);
}

uint64_t sub_2287B3224(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v28[1] = a4;
  v29 = a3;
  v6 = sub_2287C9700();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2287CAA50();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9E0();
  v14 = sub_2287CAA40();
  v15 = sub_2287CB610();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28[0] = a2;
    v17 = v9;
    v18 = v6;
    v19 = a1;
    v20 = v16;
    *v16 = 0;
    _os_log_impl(&dword_2286FF000, v14, v15, "RelevanceEngine logs collected", v16, 2u);
    v21 = v20;
    a1 = v19;
    v6 = v18;
    v9 = v17;
    a2 = v28[0];
    MEMORY[0x22AABFD90](v21, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  (*(v7 + 16))(v9, a1, v6);
  swift_beginAccess();
  v22 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_22872386C(0, v22[2] + 1, 1, v22);
    *(a2 + 16) = v22;
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = sub_22872386C((v24 > 1), v25 + 1, 1, v22);
  }

  v22[2] = v25 + 1;
  (*(v7 + 32))(v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v25, v9, v6);
  *(a2 + 16) = v22;

  v29(v26);
}

void sub_2287B3500(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [*(v2 + 56) profileIdentifier];
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v7 = sub_2287C99F0();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v3;
  v8[4] = a1;
  v8[5] = a2;
  v11[4] = sub_2287B63B4;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_228712EA8;
  v11[3] = &block_descriptor_29;
  v9 = _Block_copy(v11);
  v10 = v6;

  [v7 performBlock_];

  _Block_release(v9);
}

uint64_t sub_2287B3650(void *a1, void *a2, void (*a3)(char *), uint64_t a4)
{
  v117 = a4;
  v118 = a3;
  sub_2287B63C0(0);
  v116 = v6;
  MEMORY[0x28223BE20](v6);
  v119 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_2287CB240();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_2287C9700();
  v121 = *(v115 - 8);
  v9 = MEMORY[0x28223BE20](v115);
  v110 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v114 = &v103 - v11;
  v109 = sub_2287C98A0();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287063C8(0, &qword_280DE33C8, MEMORY[0x277D12030], MEMORY[0x277D83D88]);
  v132 = v13;
  MEMORY[0x28223BE20](v13);
  v131 = &v103 - v14;
  v134 = sub_2287C97C0();
  v120 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v133 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = 0;
  v140 = 0xE000000000000000;
  sub_2287CBA20();

  v139 = 0xD000000000000016;
  v140 = 0x80000002287D3340;
  v135 = a1;
  v16 = [a1 description];
  v17 = sub_2287CB220();
  v19 = v18;

  MEMORY[0x22AABE980](v17, v19);

  MEMORY[0x22AABE980](0xA0A2A2A2A203ALL, 0xE700000000000000);
  v20 = *(sub_2287CA5D0() + 16);
  if (v20)
  {
    sub_2287CA640();
    v129 = "No feed of kind ";
    v130 = 0x80000002287D3360;
    v21 = 32;
    do
    {
      __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
      v23 = sub_2287C99F0();
      v24 = sub_2287CA630();
      v25 = sub_2287CA300();

      if (v25)
      {
        v137 = sub_2287CA590();
        v138 = v26;

        MEMORY[0x22AABE980](10, 0xE100000000000000);

        MEMORY[0x22AABE980](v137, v138);
      }

      else
      {
        v137 = 0;
        v138 = 0xE000000000000000;
        sub_2287CBA20();

        v137 = 0xD000000000000010;
        v138 = v130;
        v22 = sub_2287CA5A0();
        MEMORY[0x22AABE980](v22);

        MEMORY[0x22AABE980](0xD000000000000015, v129 | 0x8000000000000000);
        MEMORY[0x22AABE980](v137, v138);
      }

      ++v21;
      --v20;
    }

    while (v20);
  }

  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_22870558C(0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2287CCFE0;
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = sub_2287043F8();
  *(v27 + 32) = 0x7463655364656566;
  *(v27 + 40) = 0xEB000000006E6F69;
  v28 = sub_2287CB550();
  sub_2287CA800();
  v29 = MEMORY[0x277D84560];
  sub_228703640(0, &qword_280DE3850, MEMORY[0x277D11E90], MEMORY[0x277D84560]);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2287CCFF0;
  v31 = v135;
  *(v30 + 32) = v135;
  *(v30 + 40) = 0;
  v32 = v31;
  v33 = MEMORY[0x22AABDEC0](v30);

  v35 = MEMORY[0x22AABDDF0](v34);
  sub_228703640(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, v29);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2287CCFD0;
  *(v36 + 32) = v28;
  *(v36 + 40) = v33;
  v104 = v28;
  v37 = v33;
  v38 = sub_2287CB390();

  v39 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v35 setPredicate_];
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2287CCC50;
  v41 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v42 = sub_2287CB210();
  v43 = [v41 initWithKey:v42 ascending:1];

  *(v40 + 32) = v43;
  sub_228703004(0, &qword_280DE3878, 0x277CCAC98);
  v44 = sub_2287CB390();

  [v35 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  v45 = sub_2287C99F0();
  v106 = v35;
  v46 = sub_2287CB7B0();
  v105 = v37;
  v47 = v46;

  v137 = 0;
  v138 = 0xE000000000000000;
  sub_2287CBA20();
  MEMORY[0x22AABE980](0xD000000000000011, 0x80000002287D3400);
  v48 = v121;
  if (v47 >> 62)
  {
    v49 = sub_2287CB920();
  }

  else
  {
    v49 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v136 = v49;
  v50 = sub_2287CBCC0();
  MEMORY[0x22AABE980](v50);

  MEMORY[0x22AABE980](0xD00000000000002BLL, 0x80000002287D3420);
  MEMORY[0x22AABE980](v137, v138);

  if (!(v47 >> 62))
  {
    v52 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
      goto LABEL_11;
    }

LABEL_25:

LABEL_26:
    v87 = objc_opt_self();
    v88 = v133;
    sub_2287C97B0();
    v89 = sub_2287C9770();
    (*(v120 + 8))(v88, v134);
    v90 = v107;
    sub_2287C9890();
    v91 = sub_2287C9880();
    (*(v108 + 8))(v90, v109);
    v92 = [v87 stringFromDate:v89 timeZone:v91 formatOptions:1907];

    v93 = sub_2287CB220();
    v95 = v94;

    v137 = 0;
    v138 = 0xE000000000000000;
    sub_2287CBA20();
    MEMORY[0x22AABE980](0xD000000000000022, 0x80000002287D33D0);
    MEMORY[0x22AABE980](v93, v95);

    MEMORY[0x22AABE980](0x636972747365722ELL, 0xEF7478742E646574);
    sub_2287C9F10();
    v96 = v110;
    sub_2287C9EE0();
    v97 = v114;
    sub_2287C96D0();

    v98 = *(v48 + 8);
    v99 = v48;
    v100 = v115;
    v98(v96, v115);
    v137 = v139;
    v138 = v140;
    v101 = v111;
    sub_2287CB230();
    sub_22873E0A0();
    sub_2287CB850();
    (*(v112 + 8))(v101, v113);

    v102 = v119;
    (*(v99 + 16))(v119, v97, v100);
    swift_storeEnumTagMultiPayload();
    v118(v102);

    sub_2287B6440(v102);
    return (v98)(v97, v100);
  }

  result = sub_2287CB920();
  v52 = result;
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_11:
  if (v52 >= 1)
  {
    v53 = 0;
    v129 = "not picked for a feed:***\n\n";
    v130 = v47 & 0xC000000000000001;
    v127 = ",\nsourceProfile: ";
    v128 = "FeedItem uniqueIdentifier: ";
    v125 = ",\nhideInDiscover: ";
    v126 = "\ndateSubmitted: ";
    v123 = ",\nassociatedHKTypes: [";
    v124 = ",\nrelevantDateInterval: ";
    v122 = (v120 + 8);
    v135 = v47;
    do
    {
      if (v130)
      {
        v54 = MEMORY[0x22AABF120](v53, v47);
      }

      else
      {
        v54 = *(v47 + 8 * v53 + 32);
      }

      v55 = v54;
      ++v53;
      v137 = 0;
      v138 = 0xE000000000000000;
      sub_2287CBA20();
      MEMORY[0x22AABE980](0xD00000000000001BLL, v129 | 0x8000000000000000);
      v56 = [v55 uniqueIdentifier];
      v57 = sub_2287CB220();
      v59 = v58;

      MEMORY[0x22AABE980](v57, v59);

      MEMORY[0x22AABE980](0xD000000000000011, v128 | 0x8000000000000000);
      v136 = sub_2287CA790();
      v60 = MEMORY[0x277D83B48];
      sub_2287B6A84(0, &qword_280DDFF40, MEMORY[0x277D11E78], sub_2287B649C, MEMORY[0x277D83B48]);
      sub_2287B64D0();
      v61 = sub_2287CB4F0();

      v62 = sub_2287C9C70();
      v64 = v63;

      MEMORY[0x22AABE980](v62, v64);

      MEMORY[0x22AABE980](0xD000000000000010, v127 | 0x8000000000000000);
      v65 = [v55 dateSubmitted];
      v66 = v133;
      sub_2287C97A0();

      sub_2287B6A3C(&qword_280DE3978, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v67 = v134;
      v68 = sub_2287CBCC0();
      MEMORY[0x22AABE980](v68);

      (*v122)(v66, v67);
      MEMORY[0x22AABE980](0xD000000000000012, v126 | 0x8000000000000000);
      v69 = [v55 hideInDiscover];
      v70 = v69 == 0;
      if (v69)
      {
        v71 = 1702195828;
      }

      else
      {
        v71 = 0x65736C6166;
      }

      if (v70)
      {
        v72 = 0xE500000000000000;
      }

      else
      {
        v72 = 0xE400000000000000;
      }

      MEMORY[0x22AABE980](v71, v72);

      MEMORY[0x22AABE980](0x724F74726F730A2CLL, 0xED0000203A726564);
      v136 = [v55 sortOrder];
      v73 = sub_2287CBCC0();
      MEMORY[0x22AABE980](v73);

      MEMORY[0x22AABE980](0xD000000000000018, v125 | 0x8000000000000000);
      v74 = v131;
      sub_2287CA7A0();
      v75 = sub_2287CB810();
      v77 = v76;
      sub_2287B656C(v74, &qword_280DE33C8, MEMORY[0x277D12030]);
      MEMORY[0x22AABE980](v75, v77);

      MEMORY[0x22AABE980](0xD000000000000016, v124 | 0x8000000000000000);
      v78 = sub_2287CA750();
      sub_2287AFDF8(v78);
      v80 = v79;

      v136 = v80;
      sub_228703640(0, &qword_280DE3A00, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      sub_228714B18();
      v81 = sub_2287CB1D0();
      v83 = v82;

      MEMORY[0x22AABE980](v81, v83);

      MEMORY[0x22AABE980](0xD000000000000018, v123 | 0x8000000000000000);
      v136 = sub_2287CA770();
      sub_2287B6B04(0, &qword_280DDFF30, v60);
      sub_2287B65DC();
      sub_22873E0A0();
      v84 = sub_2287CB340();
      v86 = v85;

      MEMORY[0x22AABE980](v84, v86);

      MEMORY[0x22AABE980](11357, 0xE200000000000000);
      MEMORY[0x22AABE980](v137, v138);

      v47 = v135;
    }

    while (v52 != v53);

    v48 = v121;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}