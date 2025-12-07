id Assembly.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___NXAssembly_assemblies;
  sub_1C6B0BE1C(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6D80210;
  v4 = type metadata accessor for AnalyticsAssembly();
  v5 = swift_allocObject();
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_1C6B0BEFC(&qword_1EDCE9A68, type metadata accessor for AnalyticsAssembly, &unk_1C6D93A04);
  *(v3 + 32) = v5;
  v6 = type metadata accessor for DiagnosticAssembly();
  v7 = swift_allocObject();
  *(v3 + 96) = v6;
  *(v3 + 104) = sub_1C6B0BEFC(qword_1EDCE98F0, type metadata accessor for DiagnosticAssembly, &unk_1C6D88E34);
  *(v3 + 72) = v7;
  v8 = type metadata accessor for ServiceAssembly();
  v9 = swift_allocObject();
  *(v3 + 136) = v8;
  *(v3 + 144) = sub_1C6B0BEFC(qword_1EDCE9B20, type metadata accessor for ServiceAssembly, &unk_1C6D7E894);
  *(v3 + 112) = v9;
  v10 = type metadata accessor for SessionTrackingAssembly();
  v11 = swift_allocObject();
  *(v3 + 176) = v10;
  *(v3 + 184) = sub_1C6B0BEFC(&unk_1EDCE9358, type metadata accessor for SessionTrackingAssembly, &unk_1C6D873F8);
  *(v3 + 152) = v11;
  *&v0[v2] = v3;
  v13.receiver = v0;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

void sub_1C6B0BE1C(uint64_t a1)
{
  if (!qword_1EDCE7D28)
  {
    sub_1C6B0BE74();
    v1 = sub_1C6D7A0F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE7D28);
    }
  }
}

unint64_t sub_1C6B0BE74()
{
  result = qword_1EDCEA348;
  if (!qword_1EDCEA348)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDCEA348);
  }

  return result;
}

uint64_t sub_1C6B0BEFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6B0BFC8()
{
  v0 = sub_1C6D781E0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D78050();
  type metadata accessor for NewsPersonalizer(0);
  sub_1C6D78100();

  v5 = *MEMORY[0x1E69D6AD0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0);
  sub_1C6D77F20();

  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_1C6D78050();
  sub_1C6B0C7D4(0, &qword_1EDCEA378, MEMORY[0x1E69B4A98], 0);
  sub_1C6D78110();

  v6(v4, v5, v0);
  sub_1C6D77F20();

  v7(v4, v0);
  sub_1C6D78050();
  sub_1C6B0C7D4(0, &qword_1EDCEA380, MEMORY[0x1E698AAB8], 0);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C830(0);
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &unk_1EDCE9840, &protocol descriptor for SessionStorageType, 1);
  sub_1C6D78110();

  sub_1C6D78050();
  _s7FactoryCMa();
  sub_1C6D78100();
}

uint64_t sub_1C6B0C47C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for NewsPersonalizer(uint64_t a1)
{
  result = qword_1EDCEA000;
  if (!qword_1EDCEA000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6B0C534(uint64_t a1)
{
  sub_1C6D76B80();
  if (v1 <= 0x3F)
  {
    sub_1C6B0C628(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C6B0C628(uint64_t a1)
{
  if (!qword_1EDCEA388)
  {
    sub_1C6B0C69C(255, &qword_1EDCE7E80, 0x1E69B5448);
    sub_1C6B0C6E4();
    v1 = sub_1C6D77080();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCEA388);
    }
  }
}

uint64_t sub_1C6B0C69C(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_1C6B0C6E4()
{
  result = qword_1EDCE7E88;
  if (!qword_1EDCE7E88)
  {
    sub_1C6B0C69C(255, &qword_1EDCE7E80, 0x1E69B5448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE7E88);
  }

  return result;
}

uint64_t sub_1C6B0C790(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C6B0C69C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6B0C7D4(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1C6B0C830(uint64_t a1)
{
  if (!qword_1EDCE9BE8)
  {
    v2 = _s7FactoryCMa();
    v4 = type metadata accessor for SessionManager(a1, v2, &off_1EEB692E0, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDCE9BE8);
    }
  }
}

uint64_t sub_1C6B0C900(uint64_t a1)
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

uint64_t sub_1C6B0C9A8()
{
  v0 = sub_1C6D77FF0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D78050();
  type metadata accessor for DiagnosticFileProvider();
  sub_1C6D78100();

  sub_1C6D78070();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_1C6D78140();
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6500], v0);
  sub_1C6D78150();
  (*(v1 + 8))(v4, v0);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1C6B0CBB4(uint64_t a1)
{
  v2 = sub_1C6D77FF0();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v50 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6D781E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D78050();
  sub_1C6B0C7D4(0, &unk_1EDCEA358, MEMORY[0x1E69B4AE8], 1);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0F7A8(0, &unk_1EDCE7E70, &protocolRef_FCPersonalizedGrouping);
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B0F7A8(0, &qword_1EDCE7EA8, &protocolRef_FCFeedPersonalizing);
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B0F7A8(0, &unk_1EDCE7E60, &protocolRef_FCAutoFavoritesPreparer);
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &unk_1EDCE7FA8, MEMORY[0x1E69B5CF8], 1);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0F7A8(0, &unk_1EDCE7F10, &protocolRef_FCTagRanking);
  sub_1C6D78100();

  sub_1C6D78050();
  type metadata accessor for UserEmbeddingManager(0);
  sub_1C6D78100();

  v10 = *MEMORY[0x1E69D6AD0];
  v11 = *(v6 + 104);
  v59 = v6 + 104;
  v60 = v10;
  v11(v9, v10, v5);
  v57 = v11;
  sub_1C6D77F20();

  v12 = *(v6 + 8);
  v12(v9, v5);
  v58 = v6 + 8;
  sub_1C6D78050();
  sub_1C6B0F7A8(0, &qword_1EDCE7E58, &protocolRef_FCClearableUserEmbedding);
  sub_1C6D78100();

  sub_1C6D78050();
  v13 = sub_1C6B0F7A8(0, &unk_1EDCE7DE0, &protocolRef_FCPersonalizationDataGeneratorType);
  sub_1C6D78100();

  sub_1C6D78050();
  v53 = v13;
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B0F7A8(0, &qword_1EDCE7DC8, &protocolRef_FCReadonlyAggregateStoreProviderType);
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, qword_1EDCE92B0, &protocol descriptor for UserContextProviderType, 1);
  sub_1C6D78110();

  v11(v9, v10, v5);
  sub_1C6D77F20();

  v12(v9, v5);
  sub_1C6D78050();
  sub_1C6B0F7A8(0, &qword_1EDCE7E38, &protocolRef_NPUserEmbeddingGeneratorType);
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &qword_1EDCE8F60, &protocol descriptor for RecommendedIssuesServiceType, 1);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &qword_1EDCE8D38, &protocol descriptor for DebugRecommendedIssuesServiceType, 1);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &qword_1EDCE86E0, &protocol descriptor for BundleSubscriptionIsSubscribedProviderType, 1);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &unk_1EDCE8F38, &protocol descriptor for NotificationScoringServiceType, 1);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, qword_1EDCE9100, &protocol descriptor for UserEmbeddingProviderType, 1);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &unk_1EDCEA368, MEMORY[0x1E69B4AE0], 1);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, qword_1EDCE9A70, &protocol descriptor for TagEvaluatorType, 1);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &unk_1EDCE8F48, &protocol descriptor for TagSuggestionsDataServiceType, 1);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &unk_1EDCE92A0, &protocol descriptor for AutoFavoritesServiceType, 0);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &qword_1EDCE7FC8, MEMORY[0x1E69B4F60], 1);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0F7A8(0, &qword_1EDCE7E20, &protocolRef_FCRecipeAutofavoritesProviding);
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &unk_1EDCE7FB8, MEMORY[0x1E69B4F70], 1);
  sub_1C6D78110();

  v55 = a1;
  sub_1C6D78050();
  type metadata accessor for RecipeAutoFavoritesManager();
  sub_1C6D78100();

  v14 = v9;
  v15 = v9;
  v16 = v60;
  v54 = v5;
  v17 = v57;
  v57(v15, v60, v5);
  sub_1C6D77F20();

  v12(v14, v5);
  sub_1C6D78060();
  type metadata accessor for AutoFavoritesService();
  sub_1C6D78100();

  v18 = v16;
  v19 = v16;
  v20 = v54;
  v17(v14, v19, v54);
  sub_1C6D77F20();

  v12(v14, v20);
  sub_1C6D78060();
  sub_1C6D78100();

  v21 = v57;
  v57(v14, v18, v20);
  sub_1C6D77F20();

  v12(v14, v20);
  sub_1C6D78060();
  sub_1C6B0C7D4(0, &qword_1EDCE8A30, &protocol descriptor for EventHistoryAutoFavoritesProviderType, 1);
  sub_1C6D78110();

  v21(v14, v60, v20);
  sub_1C6D77F20();

  v12(v14, v20);
  sub_1C6D78060();
  sub_1C6D78110();

  v22 = v60;
  v23 = v21;
  v21(v14, v60, v20);
  sub_1C6D77F20();

  v12(v14, v20);
  sub_1C6D78060();
  type metadata accessor for ArticleEventHistoryTagSuggestionsProvider();
  sub_1C6D78100();

  v21(v14, v22, v20);
  sub_1C6D77F20();

  v56 = v12;
  v12(v14, v20);
  sub_1C6D78060();
  type metadata accessor for RecipeEventHistoryTagSuggestionsProvider();
  sub_1C6D78100();

  v24 = v60;
  v23(v14, v60, v20);
  sub_1C6D77F20();

  v12(v14, v20);
  sub_1C6D78060();
  sub_1C6B0C7D4(0, qword_1EDCE88D8, &protocol descriptor for ExternalSignalAutoFavoritesProviderType, 1);
  sub_1C6D78110();

  v25 = v24;
  v26 = v57;
  v57(v14, v25, v20);
  sub_1C6D77F20();

  v27 = v56;
  v56(v14, v20);
  sub_1C6D78060();
  sub_1C6D78110();

  v28 = v60;
  v26(v14, v60, v20);
  sub_1C6D77F20();

  v27(v14, v20);
  sub_1C6D78060();
  type metadata accessor for ArticleAutoFavoritesServiceConfigurationProvider();
  sub_1C6D78100();

  v26(v14, v28, v20);
  sub_1C6D77F20();

  v29 = v56;
  v56(v14, v20);
  sub_1C6D78060();
  type metadata accessor for RecipeAutoFavoritesServiceConfigurationProvider();
  sub_1C6D78100();

  v26(v14, v28, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  type metadata accessor for RecipeAutoFavoritesResourceManager();
  sub_1C6D78100();

  v26(v14, v28, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  sub_1C6B0F7A8(0, &unk_1EDCE7DF0, &protocolRef_FCPersonalizationAllowlistProvider);
  sub_1C6D78100();

  v30 = v60;
  v26(v14, v60, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  sub_1C6B0F7A8(0, &unk_1EDCE7DA8, &protocolRef_FCPersonalizationBundleIDMappingProvider);
  sub_1C6D78100();

  v26(v14, v30, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  sub_1C6B0F7A8(0, &unk_1EDCE7DD0, &protocolRef_FCPersonalizationURLMappingProvider);
  sub_1C6D78100();

  v26(v14, v30, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  type metadata accessor for RecipeAutoFavoritesPersistence();
  sub_1C6D78100();

  v26(v14, v30, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  type metadata accessor for ArticleAutoFavoritesGroupingEligibilityPolicy();
  sub_1C6D78100();

  v26(v14, v30, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  type metadata accessor for RecipeAutoFavoritesGroupingEligibilityPolicy();
  sub_1C6D78100();

  v26(v14, v30, v20);
  v31 = v26;
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  type metadata accessor for ClearableUserEmbeddingManager();
  sub_1C6D78100();

  v26(v14, v30, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  sub_1C6D78110();

  v26(v14, v30, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  sub_1C6D78110();

  v26(v14, v30, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  type metadata accessor for NewsPersonalizationService();
  sub_1C6D78100();

  v26(v14, v30, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  type metadata accessor for NotificationScoringService();
  sub_1C6D78100();

  v26(v14, v30, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  type metadata accessor for XavierGroupingService();
  sub_1C6D78100();

  v26(v14, v30, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  sub_1C6B0C7D4(0, &unk_1EDCE9788, &protocol descriptor for GroupingServiceType, 1);
  sub_1C6D78110();

  sub_1C6D78060();
  sub_1C6B0C7D4(0, qword_1EDCE9850, &protocol descriptor for ScoringServiceType, 1);
  sub_1C6D78110();

  sub_1C6D78060();
  sub_1C6B0C7D4(0, &qword_1EDCE90F8, &protocol descriptor for DiversificationServiceType, 1);
  sub_1C6D78110();

  v32 = v60;
  v31(v14, v60, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  type metadata accessor for EventHistoryAggregateStoreStateModeResolver();
  sub_1C6D78100();

  sub_1C6D78060();
  sub_1C6B0C69C(0, &unk_1EDCE7E00, 0x1E69B51B0);
  sub_1C6D78100();

  v31(v14, v32, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  type metadata accessor for XavierScoringService();
  sub_1C6D78100();

  v31(v14, v32, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  sub_1C6D75DE0();
  sub_1C6D78110();

  sub_1C6D78060();
  sub_1C6B0C7D4(0, &qword_1EDCE8A28, &protocol descriptor for UserEmbeddingConfigurationServiceType, 1);
  sub_1C6D78110();

  sub_1C6D78060();
  type metadata accessor for AppUserEmbeddingManager();
  sub_1C6D78100();

  v31(v14, v32, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  sub_1C6B0C7D4(0, qword_1EDCE9020, &protocol descriptor for AppUserEmbeddingManagerType, 1);
  sub_1C6D78110();

  sub_1C6D78070();
  __swift_project_boxed_opaque_existential_1(v61, v61[3]);
  sub_1C6D780C0();
  v34 = v50;
  v33 = v51;
  v35 = v52;
  (*(v51 + 104))(v50, *MEMORY[0x1E69D6500], v52);
  sub_1C6D78150();
  (*(v33 + 8))(v34, v35);
  __swift_destroy_boxed_opaque_existential_1(v61);
  sub_1C6D78060();
  type metadata accessor for NewsPersonalizationDataCleanupStartupTask(0);
  sub_1C6D78100();

  sub_1C6D78060();
  type metadata accessor for NotificationUserEventHistorySubmissionStartupTask();
  sub_1C6D78100();

  sub_1C6D78060();
  sub_1C6B0C7D4(0, qword_1EDCE8438, &protocol descriptor for SportsLocationRecommendationMappingsServiceType, 1);
  sub_1C6D78110();

  sub_1C6D78060();
  sub_1C6B0C7D4(0, &qword_1EDCE8D30, &protocol descriptor for SportsTaxonomyGraphTagServiceType, 1);
  sub_1C6D78110();

  sub_1C6D78060();
  sub_1C6B0C7D4(0, &qword_1EDCE8F58, &protocol descriptor for SportsTopicMappingServiceType, 1);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, qword_1EDCE8D40, &protocol descriptor for SportsRecommendationServiceType, 1);
  sub_1C6D78110();

  v36 = v14;
  v37 = v14;
  v38 = v60;
  v39 = v54;
  v40 = v57;
  v57(v37, v60, v54);
  sub_1C6D77F20();

  v41 = v56;
  v56(v36, v39);
  sub_1C6D78050();
  sub_1C6B0F658(0, qword_1EDCE8A38, type metadata accessor for TopicClusteringJournalStorageService, MEMORY[0x1E69E6720]);
  sub_1C6D78110();

  v40(v36, v38, v39);
  sub_1C6D77F20();

  v41(v36, v39);
  sub_1C6D78050();
  sub_1C6B0C7D4(0, &qword_1EDCE7FA0, MEMORY[0x1E69B5DB0], 1);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &qword_1EDCE91F8, &protocol descriptor for CurrentSessionIDProviding, 1);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, qword_1EDCE8E80, &protocol descriptor for TopicClusteringJournalProvider, 1);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6D79200();
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6D79190();
  sub_1C6D78100();

  sub_1C6D78060();
  sub_1C6B0C7D4(0, qword_1EDCEA188, &protocol descriptor for TranslationProviderProviderType, 1);
  sub_1C6D78110();

  sub_1C6D78060();
  type metadata accessor for EmptyPersonalizationDataGenerator();
  sub_1C6D78100();

  v42 = v57;
  v57(v36, v38, v39);
  sub_1C6D77F20();

  v43 = v39;
  v44 = v39;
  v45 = v56;
  v56(v36, v43);
  sub_1C6D78060();
  sub_1C6D78100();

  v42(v36, v38, v44);
  sub_1C6D77F20();

  v45(v36, v44);
  v46 = v45;
  sub_1C6D78060();
  sub_1C6B0C69C(0, &unk_1EDCEA8D0, 0x1E69B5568);
  sub_1C6D78100();

  sub_1C6D78060();
  sub_1C6D78100();

  sub_1C6D78060();
  type metadata accessor for AppUserContextProvider();
  sub_1C6D78100();

  sub_1C6D78060();
  sub_1C6B0F7A8(0, &unk_1EDCE7E98, &protocolRef_FCTranslationManager);
  sub_1C6D78100();

  sub_1C6D78060();
  type metadata accessor for ManagerTranslationProviderProvider();
  sub_1C6D78100();

  sub_1C6D78060();
  sub_1C6B37EF4(0);
  sub_1C6D78100();

  v47 = v60;
  v48 = v54;
  v42(v36, v60, v54);
  sub_1C6D77F20();

  v46(v36, v48);
  sub_1C6D78060();
  type metadata accessor for BundleSubscriptionIsSubscribedProvider();
  sub_1C6D78100();

  sub_1C6D78060();
  type metadata accessor for TagEvaluator();
  sub_1C6D78100();

  v42(v36, v47, v48);
  sub_1C6D77F20();

  v46(v36, v48);
  sub_1C6D78060();
  type metadata accessor for TagSuggestionsDataService();
  sub_1C6D78100();

  v42(v36, v47, v48);
  sub_1C6D77F20();

  v46(v36, v48);
  sub_1C6D78060();
  sub_1C6B0C7D4(0, &unk_1EDCE82C0, &protocol descriptor for NotificationScoringServiceConfigurationProviderType, 1);
  sub_1C6D78110();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

void sub_1C6B0F56C(uint64_t a1)
{
  if (!qword_1EDCEA2E8)
  {
    sub_1C6B0F9A0(255, &qword_1EDCEA2F0, MEMORY[0x1E6966330]);
    v1 = sub_1C6D79C00();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCEA2E8);
    }
  }
}

unint64_t sub_1C6B0F5E0()
{
  result = qword_1EDCE7F78;
  if (!qword_1EDCE7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE7F78);
  }

  return result;
}

void sub_1C6B0F658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for TopicClusteringJournalStorageService(uint64_t a1)
{
  result = qword_1EDCE8AE8;
  if (!qword_1EDCE8AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6B0F708(uint64_t a1)
{
  result = sub_1C6D75DE0();
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

uint64_t sub_1C6B0F7A8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for UserEmbeddingManager(uint64_t a1)
{
  result = qword_1EDCE9570;
  if (!qword_1EDCE9570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6B0F854(uint64_t a1)
{
  sub_1C6D75DE0();
  if (v1 <= 0x3F)
  {
    sub_1C6B0F56C(319);
    if (v2 <= 0x3F)
    {
      sub_1C6B0FA4C(319, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C6B0F9A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_1C6B0F5E0();
    v9[0] = MEMORY[0x1E69E6448];
    v9[1] = MEMORY[0x1E69E6530];
    v9[2] = MEMORY[0x1E695FD58];
    v9[3] = v6;
    v9[4] = MEMORY[0x1E69E6548];
    v9[5] = MEMORY[0x1E69E6560];
    v9[6] = MEMORY[0x1E69E6538];
    v9[7] = MEMORY[0x1E69E6540];
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1C6B0FA4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6B0FD10(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6B0FD48(uint64_t a1)
{
  result = sub_1C6D75DE0();
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

uint64_t sub_1C6B0FEE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6B0FF44(uint64_t a1)
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

uint64_t sub_1C6B1005C()
{
  v0 = sub_1C6D77FF0();
  v19 = *(v0 - 8);
  v20 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v18 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_1C6D781E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C6D78050();
  sub_1C6D78110();

  v8 = *MEMORY[0x1E69D6AD0];
  v9 = *(v4 + 104);
  v9(v7, v8, v3);
  sub_1C6D77F20();

  v10 = *(v4 + 8);
  v10(v7, v3);
  sub_1C6D78050();
  type metadata accessor for SessionTracker();
  sub_1C6D78100();

  v9(v7, v8, v3);
  sub_1C6D77F20();

  v10(v7, v3);
  sub_1C6D78050();
  sub_1C6B10A08(0, qword_1EDCE9BF8, _s7FactoryCMa_0, &off_1EEB69450, type metadata accessor for SessionManager);
  sub_1C6D78100();

  sub_1C6D78050();
  _s7FactoryCMa_0();
  sub_1C6D78100();

  v9(v7, v8, v3);
  sub_1C6D77F20();

  v10(v7, v3);
  v17 = v4 + 8;
  sub_1C6D78050();
  sub_1C6B10A98(0, &unk_1EDCE9840, &protocol descriptor for SessionStorageType);
  sub_1C6D78110();

  v16 = v8;
  v9(v7, v8, v3);
  sub_1C6D77F20();

  v10(v7, v3);
  sub_1C6D78050();
  sub_1C6B10A08(0, qword_1EDCE96F0, type metadata accessor for UserEventHistorySessionUnarchiver, &protocol witness table for UserEventHistorySessionUnarchiver, type metadata accessor for SessionDataProvider);
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B10A08(0, &unk_1EDCE96E0, type metadata accessor for RecipeUserEventHistorySessionUnarchiver, &protocol witness table for RecipeUserEventHistorySessionUnarchiver, type metadata accessor for SessionDataProvider);
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B10A98(0, qword_1EDCE9368, &protocol descriptor for SessionDataProviderType);
  sub_1C6D78110();

  sub_1C6D78050();
  type metadata accessor for UserEventHistorySessionUnarchiver();
  sub_1C6D78100();

  sub_1C6D78050();
  type metadata accessor for RecipeUserEventHistorySessionUnarchiver();
  sub_1C6D78100();

  sub_1C6D78050();
  type metadata accessor for UserEventHistoryAggregateStoreMetadataEndpoint();
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B10A98(0, qword_1EDCE82D0, &protocol descriptor for UserEventHistoryAggregateStoreMetadataEndpointType);
  sub_1C6D78110();

  sub_1C6D78050();
  type metadata accessor for UserEventHistoryJSONSerializer();
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B10A98(0, qword_1EDCE86E8, &protocol descriptor for UserEventHistoryAggregateStoreFactoryType);
  sub_1C6D78110();

  v9(v7, v8, v3);
  sub_1C6D77F20();

  v10(v7, v3);
  sub_1C6D78060();
  sub_1C6D78110();

  sub_1C6D78060();
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B10A98(0, &unk_1EDCE7F90, MEMORY[0x1E69B6398]);
  sub_1C6D78110();

  v9(v7, v16, v3);
  sub_1C6D77F20();

  v10(v7, v3);
  sub_1C6D78070();
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_1C6D780C0();
  v12 = v18;
  v11 = v19;
  v13 = v20;
  (*(v19 + 104))(v18, *MEMORY[0x1E69D6500], v20);
  sub_1C6D78150();
  (*(v11 + 8))(v12, v13);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

void sub_1C6B10A08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1C6B10A98(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1C6B10B30(uint64_t a1)
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

void sub_1C6B10C98(uint64_t a1)
{
  if (!qword_1EDCE7F68)
  {
    sub_1C6D75DE0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE7F68);
    }
  }
}

unint64_t sub_1C6B10D00()
{
  result = qword_1EDCE7CC8;
  if (!qword_1EDCE7CC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDCE7CC8);
  }

  return result;
}

void sub_1C6B10E14(uint64_t a1)
{
  type metadata accessor for FileLog.Configuration(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for FileLog.TargetDirectory(319);
    if (v2 <= 0x3F)
    {
      sub_1C6B10FF4(319, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C6B10F60(uint64_t a1)
{
  sub_1C6B0C69C(319, &unk_1EDCE7E40, 0x1E696B050);
  if (v1 <= 0x3F)
  {
    sub_1C6B68D1C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6B10FF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B11078(uint64_t a1)
{
  sub_1C6D75DE0();
  if (v1 <= 0x3F)
  {
    sub_1C6D6DEA4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1C6B110EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7F00, 0x1E69B5210);
  result = sub_1C6D77FD0();
  if (result)
  {
    v4 = sub_1C6D79340();
    swift_allocObject();
    result = sub_1C6D79330();
    v5 = MEMORY[0x1E69B61A8];
    a2[3] = v4;
    a2[4] = v5;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C6B11220()
{
  result = qword_1EDCE8F70;
  if (!qword_1EDCE8F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE8F70);
  }

  return result;
}

unint64_t sub_1C6B11274()
{
  result = qword_1EDCE8F78;
  if (!qword_1EDCE8F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE8F78);
  }

  return result;
}

void sub_1C6B11310(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B11374()
{
  if (!qword_1EDCE65D8)
  {
    v0 = sub_1C6D79990();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE65D8);
    }
  }
}

uint64_t type metadata accessor for UserEventsFeatureResolver(uint64_t a1)
{
  result = qword_1EDCE6FB8;
  if (!qword_1EDCE6FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6B11418()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1C6C290F4(0, &qword_1EC1D7FF0, sub_1C6C29158, MEMORY[0x1E69E8300]);
  }
}

uint64_t sub_1C6B11488()
{
  v0 = sub_1C6D781E0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D78050();
  sub_1C6B10A98(0, &qword_1EDCE6A98, &protocol descriptor for ChannelPickerSuggestionsServiceType);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B10A98(0, qword_1EDCE6AA0, &protocol descriptor for PersonalizedPaywallDataServiceType);
  sub_1C6D78110();

  sub_1C6D78060();
  type metadata accessor for ChannelPickerSuggestionsService();
  sub_1C6D78100();

  (*(v1 + 104))(v4, *MEMORY[0x1E69D6AD0], v0);
  sub_1C6D77F20();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1C6B11684(uint64_t a1)
{
  v52 = sub_1C6D77FF0();
  v55 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v2);
  v51 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C6D781E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D78050();
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  sub_1C6D78100();

  v9 = *MEMORY[0x1E69D6AD0];
  v10 = *(v5 + 104);
  v10(v8, v9, v4);
  sub_1C6D77F20();

  v11 = *(v5 + 8);
  v11(v8, v4);
  sub_1C6D78050();
  sub_1C6B10A98(0, &qword_1EDCE6BF8, &protocol descriptor for ComputeServiceStartupTaskExecutor);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B10A98(0, &qword_1EDCE66C0, MEMORY[0x1E69B6878]);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B10A98(0, &qword_1EDCE66D8, MEMORY[0x1E69B66D0]);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6D786A0();
  sub_1C6D78110();

  sub_1C6D78050();
  type metadata accessor for ComputeServiceAdSegmentProvider();
  sub_1C6D78100();

  v10(v8, v9, v4);
  sub_1C6D77F20();

  v11(v8, v4);
  sub_1C6D78050();
  type metadata accessor for ComputeServiceCohortMembershipService();
  sub_1C6D78100();

  v10(v8, v9, v4);
  sub_1C6D77F20();

  v11(v8, v4);
  sub_1C6D78050();
  sub_1C6B10A98(0, qword_1EDCE7950, &protocol descriptor for MyMagazinesPersonalizationServiceType);
  sub_1C6D78110();

  v10(v8, v9, v4);
  sub_1C6D77F20();

  v11(v8, v4);
  v54 = v11;
  sub_1C6D78050();
  sub_1C6B10A98(0, &unk_1EDCE6A88, &protocol descriptor for ComputeServiceConfigurationReporter);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B10A98(0, &unk_1EDCEA940, &protocol descriptor for ComputeServiceScoringServiceType);
  sub_1C6D78110();

  sub_1C6D78050();
  type metadata accessor for ComputeServiceScoringService();
  sub_1C6D78100();

  v60 = v5 + 104;
  v10(v8, v9, v4);
  sub_1C6D77F20();

  v11(v8, v4);
  sub_1C6D78050();
  sub_1C6B10A98(0, &qword_1EDCE7AB8, MEMORY[0x1E69B4A00]);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B10A98(0, &unk_1EDCE7940, &protocol descriptor for ComputeServiceUnloaderServiceType);
  sub_1C6D78110();

  v12 = v10;
  v57 = v10;
  v10(v8, v9, v4);
  sub_1C6D77F20();

  v13 = v54;
  v54(v8, v4);
  sub_1C6D78050();
  sub_1C6B0F7A8(0, &unk_1EDCE6598, &protocolRef_FCUserVectorAggregateVectorProvider);
  sub_1C6D78100();

  v12(v8, v9, v4);
  sub_1C6D77F20();

  v13(v8, v4);
  v14 = v13;
  sub_1C6D78050();
  sub_1C6B10A98(0, qword_1EDCE6F00, &protocol descriptor for ArticleFeaturesFactoryType);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6D41FFC(0, &qword_1EDCE7A28, MEMORY[0x1E6996188]);
  v47 = v15;
  sub_1C6D78100();

  v16 = v57;
  v57(v8, v9, v4);
  sub_1C6D77F20();

  v14(v8, v4);
  sub_1C6D78050();
  sub_1C6B10A98(0, qword_1EDCE6FF0, &protocol descriptor for RecipeFeaturesFactoryType);
  sub_1C6D78110();

  v16(v8, v9, v4);
  sub_1C6D77F20();

  v14(v8, v4);
  sub_1C6D78050();
  type metadata accessor for RecipeUserEventHistoryFeaturesFactory();
  sub_1C6D78100();

  v16(v8, v9, v4);
  sub_1C6D77F20();

  v14(v8, v4);
  sub_1C6D78050();
  sub_1C6B10A98(0, &qword_1EDCE70B8, &protocol descriptor for RecipeForYouAvailability);
  sub_1C6D78110();

  v16(v8, v9, v4);
  sub_1C6D77F20();

  v53 = v4;
  v14(v8, v4);
  sub_1C6D78050();
  sub_1C6B10A98(0, &unk_1EDCEA930, &protocol descriptor for RecipeScoringServiceType);
  sub_1C6D78110();

  v58 = v9;
  v16(v8, v9, v4);
  sub_1C6D77F20();

  v14(v8, v4);
  v17 = v14;
  v18 = v5 + 8;
  v19 = a1;
  sub_1C6D78050();
  sub_1C6B10A98(0, &qword_1EDCE6C00, &protocol descriptor for RecipeDiversificationServiceType);
  sub_1C6D78110();

  v20 = v53;
  v16(v8, v9, v53);
  sub_1C6D77F20();

  v17(v8, v20);
  v21 = v18;
  v22 = v19;
  sub_1C6D78070();
  __swift_project_boxed_opaque_existential_1(v61, v62);
  v50 = *MEMORY[0x1E69D6500];
  v23 = v55;
  v24 = *(v55 + 104);
  v48 = v55 + 104;
  v49 = v24;
  v26 = v51;
  v25 = v52;
  v24(v51);
  sub_1C6D78150();
  v27 = *(v23 + 8);
  v55 = v23 + 8;
  v47 = v27;
  v27(v26, v25);
  __swift_destroy_boxed_opaque_existential_1(v61);
  v56 = v22;
  sub_1C6D78050();
  type metadata accessor for ComputeServiceRefreshBackgroundWorker();
  sub_1C6D78100();

  v28 = v58;
  v29 = v53;
  v30 = v57;
  v57(v8, v58, v53);
  sub_1C6D77F20();

  v31 = v54;
  v54(v8, v29);
  sub_1C6D78060();
  sub_1C6D78640();
  sub_1C6D78110();

  v32 = v28;
  v30(v8, v28, v29);
  sub_1C6D77F20();

  v31(v8, v29);
  sub_1C6D78060();
  type metadata accessor for ComputeServiceStartupTask();
  sub_1C6D78100();

  v30(v8, v28, v29);
  sub_1C6D77F20();

  v31(v8, v29);
  v59 = v21;
  sub_1C6D78050();
  v33 = sub_1C6D75DE0();
  sub_1C6D78110();

  v34 = v57;
  v57(v8, v32, v29);
  sub_1C6D77F20();

  v31(v8, v29);
  sub_1C6D78060();
  sub_1C6D78110();

  v34(v8, v32, v29);
  sub_1C6D77F20();

  v31(v8, v29);
  sub_1C6D78060();
  sub_1C6D78110();

  v34(v8, v32, v29);
  sub_1C6D77F20();

  v31(v8, v29);
  sub_1C6D78060();
  v45 = v33;
  sub_1C6D78110();

  v35 = v53;
  v34(v8, v32, v53);
  sub_1C6D77F20();

  v31(v8, v35);
  sub_1C6D78060();
  v46 = MEMORY[0x1E69E6720];
  sub_1C6B11310(0, &qword_1EDCE65D0, sub_1C6B11374, MEMORY[0x1E69E6720]);
  sub_1C6D78110();

  v34(v8, v32, v35);
  sub_1C6D77F20();

  v31(v8, v35);
  sub_1C6D78060();
  sub_1C6D78110();

  v36 = v58;
  v34(v8, v58, v35);
  sub_1C6D77F20();

  v31(v8, v35);
  sub_1C6D78060();
  sub_1C6B10DA0(0);
  sub_1C6D78110();

  sub_1C6D78060();
  sub_1C6B11310(0, &qword_1EDCE6678, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
  sub_1C6D78110();

  v37 = v36;
  v38 = v57;
  v57(v8, v37, v35);
  sub_1C6D77F20();

  v31(v8, v35);
  sub_1C6D78060();
  sub_1C6D78110();

  v39 = v58;
  v38(v8, v58, v35);
  sub_1C6D77F20();

  v40 = v54;
  v54(v8, v35);
  sub_1C6D78060();
  type metadata accessor for ComputeServiceUnloaderService();
  sub_1C6D78100();

  v38(v8, v39, v35);
  sub_1C6D77F20();

  v40(v8, v35);
  sub_1C6D78060();
  type metadata accessor for ComputeServiceConfigurationManager();
  sub_1C6D78100();

  v38(v8, v39, v35);
  sub_1C6D77F20();

  v40(v8, v35);
  sub_1C6D78060();
  type metadata accessor for PackageService();
  sub_1C6D78100();

  v38(v8, v39, v35);
  sub_1C6D77F20();

  v40(v8, v35);
  sub_1C6D78060();
  type metadata accessor for NewsAppFeatureResolvers();
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B10A98(0, &qword_1EDCE70B0, &protocol descriptor for ArticleForYouAvailability);
  sub_1C6D78110();

  sub_1C6D78060();
  type metadata accessor for UserEventsFeatureResolver(0);
  sub_1C6D78100();

  v38(v8, v39, v35);
  sub_1C6D77F20();

  v40(v8, v35);
  sub_1C6D78060();
  sub_1C6D41EEC(0, &qword_1EDCE6C08, type metadata accessor for CurrentTimestampFeatureResolver);
  sub_1C6D78100();

  v38(v8, v39, v35);
  sub_1C6D77F20();

  v40(v8, v35);
  sub_1C6D78060();
  type metadata accessor for ComputeServiceRetentionTokenVendor();
  sub_1C6D78100();

  v38(v8, v39, v35);
  sub_1C6D77F20();

  v40(v8, v35);
  sub_1C6D78060();
  type metadata accessor for ArticleFeaturesFactory();
  sub_1C6D78100();

  v38(v8, v39, v35);
  sub_1C6D77F20();

  v40(v8, v35);
  sub_1C6D78060();
  type metadata accessor for ArticleEventFeaturesProvider();
  sub_1C6D78100();

  sub_1C6D78060();
  type metadata accessor for ArticleUserEventHistoryFeaturesFactory();
  sub_1C6D78100();

  v38(v8, v39, v35);
  sub_1C6D77F20();

  v40(v8, v35);
  sub_1C6D78070();
  __swift_project_boxed_opaque_existential_1(v61, v62);
  sub_1C6D780C0();
  v42 = v51;
  v41 = v52;
  v49(v51, v50, v52);
  sub_1C6D78150();
  v47(v42, v41);
  __swift_destroy_boxed_opaque_existential_1(v61);
  sub_1C6D78060();
  sub_1C6D78110();

  sub_1C6D78060();
  type metadata accessor for NewsComputationalGraphRequestProcessor(0);
  sub_1C6D78100();

  v43 = v57;
  v57(v8, v58, v35);
  sub_1C6D77F20();

  v40(v8, v35);
  sub_1C6D78060();
  sub_1C6B11310(0, &qword_1EDCE6710, type metadata accessor for FileLog, v46);
  sub_1C6D78110();

  sub_1C6D78060();
  sub_1C6D78110();

  sub_1C6D78060();
  sub_1C6D78110();

  sub_1C6D78060();
  sub_1C6D78110();

  sub_1C6D78060();
  sub_1C6D78730();
  sub_1C6D78100();

  v43(v8, v58, v35);
  sub_1C6D77F20();

  v40(v8, v35);
  sub_1C6D77F10();
}

unint64_t sub_1C6B134B8()
{
  result = qword_1EDCE8F80;
  if (!qword_1EDCE8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE8F80);
  }

  return result;
}

uint64_t sub_1C6B1357C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4(0, a2, a3);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1C6B1361C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for XavierScoringService();
  result = sub_1C6D77FD0();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x1E69B51B0]) initWithTarget_];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C6B1369C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &unk_1EDCEA8D0, 0x1E69B5568);
  result = sub_1C6D77FB0();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE9290, &protocol descriptor for ConfigurationManagerType, 1);
  result = sub_1C6D77FE0();
  if (!v56)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, qword_1EDCEA188, &protocol descriptor for TranslationProviderProviderType, 1);
  sub_1C6D77FE0();
  if (v51)
  {
    v4 = [*(*__swift_project_boxed_opaque_existential_1(v50 v51) + 16)];
    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
    sub_1C6B15090(v50, &unk_1EC1D5FC0, qword_1EDCEA188, &protocol descriptor for TranslationProviderProviderType);
    v4 = 0;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, qword_1EDCE92B0, &protocol descriptor for UserContextProviderType, 1);
  result = sub_1C6D77FE0();
  if (!v54[3])
  {
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = type metadata accessor for ComputeServiceScoringService();
  v6 = sub_1C6D77FD0();
  if (v6)
  {
    v7 = &protocol witness table for ComputeServiceScoringService;
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v53[1] = 0;
    v53[2] = 0;
  }

  v53[0] = v6;
  v53[3] = v5;
  v53[4] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ComputeServiceCohortMembershipService();
  v38 = sub_1C6D77FD0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D77350();
  result = sub_1C6D77FD0();
  if (result)
  {
    v8 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B0C7D4(0, &unk_1EDCEA930, &protocol descriptor for RecipeScoringServiceType, 1);
    sub_1C6D77FE0();
    v9 = type metadata accessor for XavierScoringService();
    v10 = objc_allocWithZone(v9);
    v10[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_disableArticleScoring] = 0;
    *&v10[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateStore] = v3;
    sub_1C6B16F28(v55, v50);
    v11 = swift_allocObject();
    sub_1C6B15E34(v50, v11 + 16);
    sub_1C6B16F28(v55, v48);
    v12 = swift_allocObject();
    sub_1C6B15E34(v48, v12 + 16);
    v46 = v3;
    sub_1C6B14DC0(0);
    swift_allocObject();
    v37 = v3;
    *&v10[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateContext] = sub_1C6D762F0();
    sub_1C6B16F28(v55, &v10[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager]);
    v13 = v56;
    v14 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    (*(v14 + 8))(v43, v13, v14);
    v15 = v43[3];
    sub_1C6B11190(v43);
    v16 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__personalizationTreatment;
    swift_beginAccess();
    *&v48[0] = v15;
    sub_1C6B14EE0(0, &qword_1EDCEA790, &qword_1EDCEA500, 0x1E69B5480);
    swift_allocObject();
    *&v10[v16] = sub_1C6D78220();
    swift_endAccess();
    v17 = v56;
    v18 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    (*(v18 + 8))(&v44, v17, v18);
    sub_1C6B11190(&v44);
    LOBYTE(v16) = v45;
    v19 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__clientSideEngagementBoostEnabled;
    swift_beginAccess();
    LOBYTE(v48[0]) = v16;
    sub_1C6B16F8C(0, &unk_1EDCEA7A0, MEMORY[0x1E69E6370], MEMORY[0x1E69D6AF0]);
    swift_allocObject();
    *&v10[v19] = sub_1C6D78220();
    swift_endAccess();
    v20 = v56;
    v21 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    (*(v21 + 8))(&v46, v20, v21);
    sub_1C6B11190(&v46);
    LOBYTE(v16) = v47;
    v22 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__fallbackToReverseChronSorting;
    swift_beginAccess();
    LOBYTE(v48[0]) = v16;
    swift_allocObject();
    *&v10[v22] = sub_1C6D78220();
    swift_endAccess();
    v23 = v56;
    v24 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    (*(v24 + 8))(v48, v23, v24);
    v25 = v49;
    sub_1C6B11190(v48);
    v26 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__publisherDampeningConfig;
    swift_beginAccess();
    v41 = v25;
    sub_1C6B14EE0(0, &qword_1EDCEA780, &qword_1EDCEA4B0, 0x1E69B5460);
    swift_allocObject();
    *&v10[v26] = sub_1C6D78220();
    swift_endAccess();
    v27 = v56;
    v28 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    (*(v28 + 8))(v50, v27, v28);
    v29 = v52;
    sub_1C6B11190(v50);
    v30 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__shadowPublisherDampeningConfig;
    swift_beginAccess();
    v40 = v29;
    swift_allocObject();
    *&v10[v30] = sub_1C6D78220();
    swift_endAccess();
    *&v10[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_translationProvider] = v4;
    sub_1C6B16F28(v54, &v10[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_userContextProvider]);
    sub_1C6B14FA4(v53, &v10[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_computeServiceScoringService], qword_1EDCEA6B0, &unk_1EDCEA940, &protocol descriptor for ComputeServiceScoringServiceType);
    *&v10[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_computeServiceCohortMembershipService] = v38;
    *&v10[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_tracker] = v8;
    sub_1C6B14FA4(v42, &v10[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_recipeScoringService], qword_1EDCEA548, &unk_1EDCEA930, &protocol descriptor for RecipeScoringServiceType);
    v39.receiver = v10;
    v39.super_class = v9;
    swift_unknownObjectRetain();

    v31 = objc_msgSendSuper2(&v39, sel_init);
    v32 = v56;
    v33 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = *(v33 + 32);
    v36 = v31;

    v35(sub_1C6B3807C, v34, v32, v33);

    swift_unknownObjectRelease();

    sub_1C6B15090(v42, qword_1EDCEA548, &unk_1EDCEA930, &protocol descriptor for RecipeScoringServiceType);
    sub_1C6B15090(v53, qword_1EDCEA6B0, &unk_1EDCEA940, &protocol descriptor for ComputeServiceScoringServiceType);
    __swift_destroy_boxed_opaque_existential_1(v54);

    __swift_destroy_boxed_opaque_existential_1(v55);
    return v36;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C6B13F8C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C6B13FC4()
{
  MEMORY[0x1CCA571E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1C6B14000(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7DE0, &protocolRef_FCPersonalizationDataGeneratorType);
  result = sub_1C6D77FB0();
  if (result)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69B5568]) initWithGenerator_];
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C6B140A4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1C6D77FC0();
  if (v3 == 2)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v3)
  {
    sub_1C6B0F7A8(0, &unk_1EDCE7DE0, &protocolRef_FCPersonalizationDataGeneratorType);
    result = sub_1C6D77FD0();
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  type metadata accessor for EmptyPersonalizationDataGenerator();
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void *sub_1C6B14194@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE9290, &protocol descriptor for ConfigurationManagerType, 1);
  result = sub_1C6D77FE0();
  v4 = v9;
  if (v9)
  {
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v5 + 8))(v6, v4, v5);
    sub_1C6B11190(v6);
    *a2 = v7;
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B14280(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t static FeatureState.recoveringState<A>(isEnabled:feature:configuration:)@<X0>(char a1@<W0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_1C6D79C00();
  v11 = *(v10 - 8);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v27 - v14;
  if (a1)
  {
    v16 = *a2;
    (*(v11 + 16))(v15, a3, v10, v13.n128_f64[0]);
    v17 = *(a4 - 8);
    if ((*(v17 + 48))(v15, 1, a4) == 1)
    {
      v18 = 0xD000000000000018;
      (*(v11 + 8))(v15, v10);
      v19 = sub_1C6D79AB0();
      sub_1C6B1D314(0);
      v20 = swift_allocObject();
      v21 = v20;
      *(v20 + 16) = xmmword_1C6D7E630;
      if (v16)
      {
        if (v16 == 1)
        {
          v22 = "articleEmbeddingsScoring";
        }

        else
        {
          v22 = "statelessPersonalization";
          v18 = 0xD000000000000013;
        }
      }

      else
      {
        v22 = "n";
      }

      v25 = v22 | 0x8000000000000000;
      *(v20 + 56) = MEMORY[0x1E69E6158];
      *(v20 + 64) = sub_1C6B2064C();
      *(v21 + 32) = v18;
      *(v21 + 40) = v25;
      sub_1C6B0C69C(0, &qword_1EDCEA8B8, 0x1E69E9BF8);
      v26 = sub_1C6D79BD0();
      sub_1C6D78D30("%@ marked as enabled, but is missing configuration. disabling.", 62, 2, &dword_1C6B09000, v26, v19, v21);

      return (*(v17 + 56))(a5, 1, 1, a4);
    }

    else
    {
      (*(v17 + 32))(a5, v15, a4);
      return (*(v17 + 56))(a5, 0, 1, a4);
    }
  }

  else
  {
    v23 = *(*(a4 - 8) + 56);

    return v23(a5, 1, 1, a4, v13);
  }
}

uint64_t sub_1C6B145F4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = a2(0);
  result = sub_1C6D77FD0();
  if (result)
  {
    a4[3] = v7;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C6B146C0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7F00, 0x1E69B5210);
  v1 = sub_1C6D77FD0();
  if (!v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = v1;
  v3 = [v1 translationManager];

  if (!v3)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_1C6B14770(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7F00, 0x1E69B5210);
  result = sub_1C6D77FD0();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B0F7A8(0, &unk_1EDCE66C8, &protocolRef_TSLocationDetectionManagerType);
    result = sub_1C6D77FD0();
    if (result)
    {
      v4 = result;
      type metadata accessor for AppUserContextProvider();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B14864(void *a1)
{
  sub_1C6B0F658(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v9 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1C6D75DE0();
  sub_1C6D77FC0();
  result = (*(*(v6 - 8) + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1C6D77FA0();
    v8 = sub_1C6D77F90();
    type metadata accessor for UserEmbeddingManager(0);
    swift_allocObject();
    return UserEmbeddingManager.init(directory:writeHumanReadableParametersToDisk:)(v5, v8 & 1);
  }

  return result;
}

void *sub_1C6B149D0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7F00, 0x1E69B5210);
  result = sub_1C6D77FD0();
  if (result)
  {
    v2 = result;
    v3 = [result privateDataDirectory];

    sub_1C6D795A0();
    sub_1C6D75D00();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t UserEmbeddingManager.init(directory:writeHumanReadableParametersToDisk:)(uint64_t a1, char a2)
{
  v3 = v2;
  sub_1C6B0FA4C(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v21 - v8;
  v10 = sub_1C6D75DE0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager____lazy_storage___classifier;
  sub_1C6B0F9A0(0, &qword_1EDCEA2F0, MEMORY[0x1E6966330]);
  v17 = 1;
  (*(*(v16 - 8) + 56))(v3 + v15, 1, 1, v16);
  v18 = OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager_unfairLock;
  *(v3 + v18) = swift_slowAlloc();
  v19 = v3 + OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager_loadedUserEmbedding;
  *v19 = 0;
  *(v19 + 8) = 0;
  sub_1C6D75D50();
  (*(v11 + 32))(v3 + OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager_path, v14, v10);
  if (a2)
  {
    sub_1C6D75D50();
    v17 = 0;
  }

  (*(v11 + 56))(v9, v17, 1, v10);
  sub_1C6B14D2C(v9, v3 + OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager_humanReadableParametersPath);
  **(v3 + OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager_unfairLock) = 0;
  (*(v11 + 8))(a1, v10);
  return v3;
}

uint64_t sub_1C6B14D2C(uint64_t a1, uint64_t a2)
{
  sub_1C6B0FA4C(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C6B14DC0(uint64_t a1)
{
  if (!qword_1EDCEA810)
  {
    sub_1C6B0C69C(255, &unk_1EDCEA8D0, 0x1E69B5568);
    sub_1C6B14E34();
    v1 = sub_1C6D76320();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCEA810);
    }
  }
}

unint64_t sub_1C6B14E34()
{
  result = qword_1EDCEA4C0;
  if (!qword_1EDCEA4C0)
  {
    sub_1C6B0C69C(255, &unk_1EDCEA8D0, 0x1E69B5568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCEA4C0);
  }

  return result;
}

void sub_1C6B14EE0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1C6B0C69C(255, a3, a4);
    v5 = sub_1C6D78250();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C6B14F38(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1C6B0C7D4(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1C6B14FA4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1C6B14F38(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1C6B15028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6B15090(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1C6B14F38(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6B15100(void *a1, uint64_t (*a2)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a2(0);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1C6B15174(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7F00, 0x1E69B5210);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7DF0, &protocolRef_FCPersonalizationAllowlistProvider);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  v5 = [v3 appConfigurationManager];
  result = [v3 paidAccessChecker];
  if (result)
  {
    v6 = result;
    v7 = [v3 deviceIsiPad];
    type metadata accessor for XavierGroupingService();
    v8 = swift_allocObject();
    v9 = [objc_msgSend(v5 possiblyUnfetchedAppConfiguration)];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *(v8 + 16) = v9;
    *(v8 + 24) = v6;
    *(v8 + 32) = v4;
    *(v8 + 40) = v7;
    return v8;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1C6B152FC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = type metadata accessor for AppUserEmbeddingManager();
  v4 = sub_1C6D77FD0();
  if (!v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  v22 = v3;
  v23 = sub_1C6B0FEE4(qword_1EDCE70C0, type metadata accessor for AppUserEmbeddingManager, &unk_1C6D95488);
  v21[0] = v5;
  sub_1C6D780B0();
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = type metadata accessor for NewsPersonalizationDataCleanupStartupTask(0);
  v7 = sub_1C6D77FD0();
  if (!v7)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v8 = v7;
  v22 = v6;
  v23 = sub_1C6B0FEE4(&qword_1EDCE7838, type metadata accessor for NewsPersonalizationDataCleanupStartupTask, &unk_1C6D96D4C);
  v21[0] = v8;
  sub_1C6D780B0();
  __swift_destroy_boxed_opaque_existential_1(v21);
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (!v10)
  {
    return;
  }

  v11 = sub_1C6D795A0();
  v13 = v12;

  if (v11 == 0x6C7070612E6D6F63 && v13 == 0xEE007377656E2E65)
  {
  }

  else
  {
    v14 = sub_1C6D7A130();

    if ((v14 & 1) == 0)
    {
      return;
    }
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  v15 = sub_1C6D77FD0();
  if (v15)
  {
    v16 = [v15 possiblyUnfetchedAppConfiguration];
    swift_unknownObjectRelease();
    if ([v16 respondsToSelector_])
    {
      v17 = [v16 useNotificationsV2];
      swift_unknownObjectRelease();
      if (v17)
      {
        __swift_project_boxed_opaque_existential_1(a2, a2[3]);
        v18 = type metadata accessor for NotificationUserEventHistorySubmissionStartupTask();
        v19 = sub_1C6D77FD0();
        if (v19)
        {
          v20 = v19;
          v22 = v18;
          v23 = sub_1C6B0FEE4(qword_1EDCDFD20, type metadata accessor for NotificationUserEventHistorySubmissionStartupTask, &unk_1C6D92414);
          v21[0] = v20;
          sub_1C6D780B0();
          __swift_destroy_boxed_opaque_existential_1(v21);
          return;
        }

        goto LABEL_17;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void *sub_1C6B15654(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B15828(0, qword_1EDCE96F0, type metadata accessor for UserEventHistorySessionUnarchiver, &protocol witness table for UserEventHistorySessionUnarchiver);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for UserEmbeddingManager(0);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &qword_1EDCE8A28, &protocol descriptor for UserEmbeddingConfigurationServiceType, 1);
  result = sub_1C6D77FE0();
  if (v13)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    v6 = MEMORY[0x1EEE9AC00](v5, v5);
    v8 = (&v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = sub_1C6B159B4(v3, v4, *v8);
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v10;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1C6B15828(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3(255);
    v9 = type metadata accessor for SessionDataProvider(a1, v7, a4, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *sub_1C6B1588C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE9290, &protocol descriptor for ConfigurationManagerType, 1);
  result = sub_1C6D77FE0();
  if (v7)
  {
    v4 = type metadata accessor for UserEmbeddingConfigurationService();
    v5 = swift_allocObject();
    result = sub_1C6B15E34(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F46751E0;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

id sub_1C6B159B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v18[3] = v5;
  v18[4] = &off_1F46751E0;
  v18[0] = a3;
  v6 = type metadata accessor for AppUserEmbeddingManager();
  v7 = objc_allocWithZone(v6);
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v18, v5);
  v9 = MEMORY[0x1EEE9AC00](v8, v8);
  v11 = (&v16 - v10);
  (*(v12 + 16))(&v16 - v10, v9);
  v13 = *v11;
  v17[3] = v5;
  v17[4] = &off_1F46751E0;
  v17[0] = v13;
  *&v7[OBJC_IVAR____TtC19NewsPersonalization23AppUserEmbeddingManager_sessionDataProvider] = a1;
  *&v7[OBJC_IVAR____TtC19NewsPersonalization23AppUserEmbeddingManager_userEmbeddingManager] = a2;
  sub_1C6B16F28(v17, &v7[OBJC_IVAR____TtC19NewsPersonalization23AppUserEmbeddingManager_userEmbeddingConfigurationService]);
  v16.receiver = v7;
  v16.super_class = v6;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v14;
}

uint64_t sub_1C6B15B38@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D6920];
  v3 = sub_1C6D78190();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void *sub_1C6B15BB0(void *a1)
{
  v2 = sub_1C6D75DE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7F00, 0x1E69B5210);
  result = sub_1C6D77FD0();
  if (result)
  {
    v8 = result;
    v9 = [result privateDataDirectory];

    sub_1C6D795A0();
    sub_1C6D75D00();

    type metadata accessor for NewsPersonalizationDataCleanupStartupTask(0);
    v10 = swift_allocObject();
    *(v10 + 16) = &unk_1F4671700;
    (*(v3 + 32))(v10 + OBJC_IVAR____TtC19NewsPersonalization41NewsPersonalizationDataCleanupStartupTask_privateDataDirectory, v6, v2);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C6B15D3C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1C6B10A98(0, qword_1EDCE86E8, &protocol descriptor for UserEventHistoryAggregateStoreFactoryType);
  result = sub_1C6D77FE0();
  if (v6)
  {
    v3 = type metadata accessor for UserEventHistoryAggregateStoreFactoryStartupTask();
    v4 = swift_allocObject();
    sub_1C6B15E34(&v5, v4 + 16);
    v6 = v3;
    v7 = sub_1C6B17F28(qword_1EDCE67C8, type metadata accessor for UserEventHistoryAggregateStoreFactoryStartupTask, &unk_1C6D95AB4);
    *&v5 = v4;
    sub_1C6D780B0();
    return __swift_destroy_boxed_opaque_existential_1(&v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B15E34(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t FileLog.Configuration.init(loggingUnit:maxSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for FileLog.Configuration(0) + 20);
  sub_1C6B68D1C(0);
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t *FileLog.init(configuration:targetDirectory:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = OBJC_IVAR____TtC19NewsPersonalization7FileLog__targetDirectoryURL;
  v7 = sub_1C6D75DE0();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_files) = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_urls) = MEMORY[0x1E69E7CD0];
  *(v3 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_targetDirectoryProcessingStatus) = 0;
  if ((sub_1C6D75D10() & 1) == 0)
  {
    type metadata accessor for FileLog.Errors(0);
    sub_1C6D70320(&qword_1EC1D9A58, type metadata accessor for FileLog.Errors, &unk_1C6D96960);
    swift_allocError();
    v15 = v14;
    sub_1C6B10C98(0);
    v17 = *(v16 + 48);
    *v15 = 0xD00000000000002ELL;
    *(v15 + 1) = 0x80000001C6DAB320;
    (*(v8 + 16))(&v15[v17], a2, v7);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v8 + 8))(a2, v7);
LABEL_6:
    sub_1C6D7013C(a1, type metadata accessor for FileLog.Configuration);
    sub_1C6D702B0(v3 + OBJC_IVAR____TtC19NewsPersonalization7FileLog__targetDirectoryURL, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);

    swift_deallocPartialClassInstance();
    return v3;
  }

  v9 = [objc_opt_self() defaultManager];
  v10 = sub_1C6D75D30();
  v20[0] = 0;
  v11 = [v9 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:v20];

  v12 = v20[0];
  if ((v11 & 1) == 0)
  {
    v18 = v20[0];
    sub_1C6D75CC0();

    swift_willThrow();
    (*(v8 + 8))(a2, v7);
    goto LABEL_6;
  }

  sub_1C6B162C8(a1, v3 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_configuration, type metadata accessor for FileLog.Configuration);
  (*(v8 + 32))(v3 + OBJC_IVAR____TtC19NewsPersonalization7FileLog__targetDirectory, a2, v7);
  type metadata accessor for FileLog.TargetDirectory(0);
  swift_storeEnumTagMultiPayload();
  v13 = v12;
  return v3;
}

uint64_t sub_1C6B162C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1C6B16350(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E10, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1C6D77FD0();
  if (result)
  {
    v2 = result;
    type metadata accessor for BundleSubscriptionIsSubscribedProvider();
    swift_allocObject();
    return sub_1C6B163D8(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B163D8(void *a1)
{
  v2 = [a1 cachedSubscription];
  if (objc_getAssociatedObject(v2, v2 + 1))
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (!*(&v11 + 1))
  {
    sub_1C6B79FDC(&v12);
    goto LABEL_9;
  }

  sub_1C6B18500();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v3 = 0;
    v4 = 0;
    goto LABEL_10;
  }

  v3 = v9;
  v4 = [v9 integerValue];
  if (v4 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v2, ~v4))
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (!*(&v11 + 1))
  {
    sub_1C6B79FDC(&v12);
    goto LABEL_17;
  }

  sub_1C6B18500();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    swift_unknownObjectRelease();
    v7 = -24;
    goto LABEL_18;
  }

  v5 = v9;
  v6 = [v5 integerValue];

  swift_unknownObjectRelease();
  v7 = v6 - 24;
LABEL_18:
  *(v1 + 16) = (v7 ^ v4) & 1;
  return v1;
}

char *SessionDataProvider.init(storage:unarchiver:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 112);
  v7 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v7 setAllowedUnits_];
  [v7 setCountStyle_];
  *&v2[v6] = v7;
  *(v2 + 2) = a1;
  (*(*(*(v5 + 80) - 8) + 32))(&v2[*(*v2 + 104)], a2);
  return v2;
}

uint64_t sub_1C6B166EC()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1C6B1677C()
{
  result = qword_1EDCEA8E0;
  if (!qword_1EDCEA8E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDCEA8E0);
  }

  return result;
}

unint64_t sub_1C6B16800()
{
  result = qword_1EDCE6580;
  if (!qword_1EDCE6580)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDCE6580);
  }

  return result;
}

uint64_t sub_1C6B16888(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C6B16898(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_1C6B168A8(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1C6D77F80();
  MEMORY[0x1EEE9AC00](v6, v7);
  *&v2[OBJC_IVAR____TtC19NewsPersonalization43EventHistoryAggregateStoreStateModeResolver_personalizationData] = a1;
  sub_1C6B16F28(a2, &v2[OBJC_IVAR____TtC19NewsPersonalization43EventHistoryAggregateStoreStateModeResolver_userEventHistoryAggregateStoreFactory]);
  sub_1C6B16F28(a2, v13);
  v8 = swift_allocObject();
  sub_1C6B15E34(v13, v8 + 16);
  *(v8 + 56) = a1;
  *&v13[0] = MEMORY[0x1E69E7CC0];
  sub_1C6B18854();
  sub_1C6B16AC8(0, &qword_1EDCE6670, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1C6B188AC();
  v9 = a1;
  sub_1C6D79CB0();
  sub_1C6B16CA0();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC19NewsPersonalization43EventHistoryAggregateStoreStateModeResolver_lazyMode] = sub_1C6D781B0();
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v10;
}

uint64_t sub_1C6B16A88()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_1C6B16AC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6B16B40(uint64_t a1, uint64_t a2)
{
  swift_getErrorValue();
  v2 = sub_1C6D7A1D0();
  v4 = v3;
  sub_1C6B16BE4();
  v5 = swift_allocError();
  *v6 = v2;
  v6[1] = v4;
  sub_1C6B16C38();
  swift_allocError();
  *v7 = v5;
  return swift_continuation_throwingResumeWithError();
}

unint64_t sub_1C6B16BE4()
{
  result = qword_1EDCE6BE8;
  if (!qword_1EDCE6BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE6BE8);
  }

  return result;
}

unint64_t sub_1C6B16C38()
{
  result = qword_1EDCEA410;
  if (!qword_1EDCEA410)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDCEA410);
  }

  return result;
}

void sub_1C6B16CA0()
{
  if (!qword_1EDCE5E08)
  {
    v0 = sub_1C6D781C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE5E08);
    }
  }
}

unint64_t sub_1C6B16CF0()
{
  result = qword_1EDCE7F80;
  if (!qword_1EDCE7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE7F80);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19NewsPersonalization12FeatureStateOyAA09StatelessB13ConfigurationVG(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1C6B16D5C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1C6D77FC0();
  if (v3 == 2)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v3)
  {
    type metadata accessor for EventHistoryAggregateStoreStateModeResolver();
    result = sub_1C6D77FD0();
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  sub_1C6B0C69C(0, &qword_1EDCE7E80, 0x1E69B5448);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

id sub_1C6B16E58(id result, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  if (result)
  {
    v9 = result;
    v10 = a2;
    v11 = a3;
    v12 = a4;

    return a6;
  }

  return result;
}

void sub_1C6B16EC0(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  if (a1)
  {
  }
}

uint64_t sub_1C6B16F28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1C6B16F8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_1C6B16FDC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E28, &protocolRef_FCUserEventHistoryStorageType);
  result = sub_1C6D77FD0();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for UserEventHistorySessionUnarchiver();
    result = sub_1C6D77FD0();
    if (result)
    {
      v4 = result;
      sub_1C6B10A08(0, qword_1EDCE96F0, type metadata accessor for UserEventHistorySessionUnarchiver, &protocol witness table for UserEventHistorySessionUnarchiver, type metadata accessor for SessionDataProvider);
      v5 = swift_allocObject();
      v6 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
      [v6 setAllowedUnits_];
      [v6 setCountStyle_];
      v5[3] = v4;
      v5[4] = v6;
      v5[2] = v3;
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B17124()
{
  type metadata accessor for UserEventHistorySessionUnarchiver();

  return swift_allocObject();
}

void *sub_1C6B17158@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v73 = a2;
  v3 = sub_1C6D77F80();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D75DE0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v53 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1C6D79AF0();
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v11);
  v68 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1C6D79AE0();
  MEMORY[0x1EEE9AC00](v66, v13);
  v67 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C6D78E80();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v65 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B18338(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v70 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v72 = &v53 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v53 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A08(0, qword_1EDCE96F0, type metadata accessor for UserEventHistorySessionUnarchiver, &protocol witness table for UserEventHistorySessionUnarchiver, type metadata accessor for SessionDataProvider);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v29 = result;
  v64 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, &unk_1EDCE9290, &protocol descriptor for ConfigurationManagerType);
  result = sub_1C6D77FE0();
  if (!v79[3])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v63 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7F00, 0x1E69B5210);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v30 = result;
  v31 = [result privateDataDirectory];

  sub_1C6D795A0();
  sub_1C6D75D00();

  v32 = *(v8 + 56);
  v32(v27, 0, 1, v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, qword_1EDCE82D0, &protocol descriptor for UserEventHistoryAggregateStoreMetadataEndpointType);
  result = sub_1C6D77FE0();
  if (!v78[3])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7E50, 0x1E69B5610);
  result = sub_1C6D77FD0();
  v62 = result;
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v75 = v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &unk_1EDCE6588, 0x1E69B5558);
  result = sub_1C6D77FD0();
  v61 = result;
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, &unk_1EDCE66E0, MEMORY[0x1E69B6388]);
  result = sub_1C6D77FE0();
  if (!v77[3])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v60 = v8;
  v74 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7E80, 0x1E69B5448);
  result = sub_1C6D77FD0();
  v59 = result;
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v33 = v32;
  v58 = type metadata accessor for UserEventHistoryAggregateStoreFactory(0);
  v34 = swift_allocObject();
  v57 = OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_cachedAggregateStoreURL;
  v35 = v7;
  v33(v34 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_cachedAggregateStoreURL, 1, 1, v7);
  *(v34 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_lazyStore) = 0;
  v54 = OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_refreshQueue;
  sub_1C6B0C69C(0, &qword_1EDCE7EB0, 0x1E69E9610);
  sub_1C6D78E50();
  v76 = MEMORY[0x1E69E7CC0];
  sub_1C6B17F28(&unk_1EDCE7EB8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v36 = MEMORY[0x1E69E8030];
  sub_1C6B18338(0, &qword_1EDCE7F30, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  v56 = v33;
  sub_1C6B17F70(&qword_1EDCE7F28, &qword_1EDCE7F30, v36);
  v55 = v8 + 56;
  sub_1C6D79CB0();
  (*(v69 + 104))(v68, *MEMORY[0x1E69E8090], v71);
  *(v34 + v54) = sub_1C6D79B20();
  v37 = OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_sizeFormatter;
  v38 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v38 setAllowedUnits_];
  [v38 setCountStyle_];
  *(v34 + v37) = v38;
  *(v34 + 16) = v75;
  sub_1C6B16F28(v79, v34 + 24);
  v39 = v70;
  sub_1C6B18038(v74, v70);
  v40 = v60;
  if ((*(v60 + 48))(v39, 1, v35) == 1)
  {
    v41 = v72;
    v56(v72, 1, 1, v35);
  }

  else
  {
    v42 = v53;
    (*(v40 + 32))(v53, v39, v35);

    v41 = v72;
    sub_1C6D75D50();
    (*(v40 + 8))(v42, v35);
    v56(v41, 0, 1, v35);
  }

  v43 = v62;
  v44 = v61;
  v45 = v59;
  v46 = v57;
  swift_beginAccess();
  sub_1C6B180CC(v41, v34 + v46);
  swift_endAccess();
  sub_1C6B16F28(v78, v34 + 64);
  *(v34 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_subscriptionController) = v43;
  *(v34 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_readingHistory) = v44;
  sub_1C6B16F28(v77, v34 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_headlineService);
  *(v34 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_personalizationData) = v45;
  swift_unownedRetainStrong();
  v47 = v43;
  v48 = v44;
  v49 = v45;
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v34;
  v76 = MEMORY[0x1E69E7CC0];
  sub_1C6B17F28(&qword_1EDCE7AB0, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  v50 = MEMORY[0x1E69D6420];
  sub_1C6B18338(0, &qword_1EDCE6670, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1C6B17F70(&qword_1EDCE6660, &qword_1EDCE6670, v50);
  sub_1C6D79CB0();
  sub_1C6B18338(0, &qword_1EDCE7A90, sub_1C6B18160, MEMORY[0x1E69D6A80]);
  swift_allocObject();
  v51 = sub_1C6D781B0();

  sub_1C6B18474(v74);
  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(v78);
  __swift_destroy_boxed_opaque_existential_1(v79);
  *(v34 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_lazyStore) = v51;

  v52 = v73;
  v73[3] = v58;
  v52[4] = &protocol witness table for UserEventHistoryAggregateStoreFactory;
  *v52 = v34;
  return result;
}

uint64_t sub_1C6B17D54()
{
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6B17D8C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E28, &protocolRef_FCUserEventHistoryStorageType);
  result = sub_1C6D77FD0();
  if (result)
  {
    v2 = result;
    type metadata accessor for UserEventHistoryAggregateStoreMetadataEndpoint();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C6B17E2C(uint64_t a1)
{
  sub_1C6B1839C(319, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C6B17F28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6B17F70(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1C6B18338(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6B17FD4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1C6B1839C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6B18038(uint64_t a1, uint64_t a2)
{
  sub_1C6B18338(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6B180CC(uint64_t a1, uint64_t a2)
{
  sub_1C6B18338(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C6B18160()
{
  if (!qword_1EDCE6DA0)
  {
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6DA0);
    }
  }
}

uint64_t sub_1C6B181B0(uint64_t result, int a2, int a3)
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

uint64_t __NPDeviceSupportsFeedPersonalization_block_invoke()
{
  result = MGGetBoolAnswer();
  NPDeviceSupportsFeedPersonalization_result = result;
  return result;
}

void *sub_1C6B18218@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE9290, &protocol descriptor for ConfigurationManagerType, 1);
  result = sub_1C6D77FE0();
  v4 = v20;
  if (v20)
  {
    v5 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v5 + 8))(v12, v4, v5);
    v6 = v13;
    v7 = v14;
    v8 = v15;
    v9 = v16;
    v10 = v17;
    v11 = v18;
    sub_1C6B16E58(v13, v14, v15, v16, v17, v18);
    sub_1C6B11190(v12);
    sub_1C6B16EC0(v6, v7, v8, v9, v10, v11);
    *a2 = v6 != 0;
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C6B18338(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B1839C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6B18400@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for UserEventHistoryAggregateStoreMetadataEndpoint();
  result = sub_1C6D77FD0();
  if (result)
  {
    a2[3] = v3;
    a2[4] = &off_1F467A228;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B18474(uint64_t a1)
{
  sub_1C6B18338(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C6B18500()
{
  result = qword_1EDCEA8C0;
  if (!qword_1EDCEA8C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCEA8C0);
  }

  return result;
}

__n128 __swift_memcpy118_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 110) = *(a2 + 110);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

void sub_1C6B18578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EDCE2568)
  {
    v4 = type metadata accessor for FeatureState.Errors(0, &type metadata for StatelessPersonalizationConfiguration, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDCE2568);
    }
  }
}

id sub_1C6B185C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 72);
    v7 = *(a1 + 64);
    v9 = *(a1 + 48);
    v8 = *(a1 + 56);
    v10 = *(a1 + 40);
    *a2 = v5;
    *(a2 + 8) = v10;
    *(a2 + 16) = v9;
    *(a2 + 24) = v8;
    *(a2 + 32) = v7 & 1;
    *(a2 + 40) = v6;
    v11 = v5;
    v12 = v10;
    v13 = v9;
    v14 = v8;
    return v6;
  }

  else
  {
    sub_1C6B18578(0, a3, a4, a5);
    sub_1C6B186A4(&qword_1EDCE2570, sub_1C6B18578);
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1C6B186A4(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

void sub_1C6B186F8(uint64_t a1)
{
  if (!qword_1EDCEA900)
  {
    sub_1C6B0F7A8(255, &qword_1EDCEA8E0, &protocolRef_FCFeedPersonalizingItem);
    v1 = sub_1C6D79820();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCEA900);
    }
  }
}

void *sub_1C6B18760(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7E80, 0x1E69B5448);
  result = sub_1C6D77FD0();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B0C7D4(0, qword_1EDCE86E8, &protocol descriptor for UserEventHistoryAggregateStoreFactoryType, 1);
    result = sub_1C6D77FE0();
    if (v6[3])
    {
      v4 = objc_allocWithZone(type metadata accessor for EventHistoryAggregateStoreStateModeResolver());
      v5 = sub_1C6B168A8(v3, v6);

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C6B18854()
{
  result = qword_1EDCE7AB0;
  if (!qword_1EDCE7AB0)
  {
    sub_1C6D77F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE7AB0);
  }

  return result;
}

unint64_t sub_1C6B188AC()
{
  result = qword_1EDCE6660;
  if (!qword_1EDCE6660)
  {
    sub_1C6B16AC8(255, &qword_1EDCE6670, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE6660);
  }

  return result;
}

void *sub_1C6B18934(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B39F38(a1, a2, a3, *v3, &qword_1EDCE64B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

void sub_1C6B18984(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D7A0F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C6B189DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
  }
}

unint64_t sub_1C6B18A34()
{
  result = qword_1EDCE6FD0;
  if (!qword_1EDCE6FD0)
  {
    type metadata accessor for UserEventsFeatureResolver(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE6FD0);
  }

  return result;
}

unint64_t sub_1C6B18A8C(uint64_t a1)
{
  result = sub_1C6B18A34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C6B18AB4()
{
  result = qword_1EDCE6C18[0];
  if (!qword_1EDCE6C18[0])
  {
    sub_1C6B18B34(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCE6C18);
  }

  return result;
}

unint64_t sub_1C6B18B0C(uint64_t a1)
{
  result = sub_1C6B18AB4();
  *(a1 + 8) = result;
  return result;
}

void sub_1C6B18B34(uint64_t a1)
{
  if (!qword_1EDCE6C08)
  {
    v2 = sub_1C6B134B8();
    v4 = type metadata accessor for CurrentTimestampFeatureResolver(a1, &type metadata for ComputeServiceConfiguration, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDCE6C08);
    }
  }
}

uint64_t sub_1C6B18B90@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = a2(0);
  result = sub_1C6D77FD0();
  if (result)
  {
    v13 = result;
    a6[3] = v11;
    result = sub_1C6B0FEE4(a3, a4, a5);
    a6[4] = result;
    *a6 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C6B18CB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C6B18D08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_1C6B18D58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1C6D779F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1C6D77FC0();
  if (v17 == 2)
  {
    __break(1u);
  }

  else
  {
    if ((v17 & 1) == 0)
    {
      (*(v5 + 104))(v8, *MEMORY[0x1E69B48A8], v4);
      v15 = type metadata accessor for KnownAggregateStoreStateModeResolver(0);
      v11 = swift_allocObject();
      (*(v5 + 32))(v11 + OBJC_IVAR____TtC19NewsPersonalization36KnownAggregateStoreStateModeResolver_mode, v8, v4);
      a2[3] = v15;
      v12 = &unk_1EC1D5FD0;
      v13 = type metadata accessor for KnownAggregateStoreStateModeResolver;
      v14 = &unk_1C6D852EC;
      goto LABEL_6;
    }

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v10 = type metadata accessor for EventHistoryAggregateStoreStateModeResolver();
    result = sub_1C6D77FD0();
    if (result)
    {
      v11 = result;
      a2[3] = v10;
      v12 = &unk_1EDCDFFD8;
      v13 = type metadata accessor for EventHistoryAggregateStoreStateModeResolver;
      v14 = &unk_1C6D85314;
LABEL_6:
      result = sub_1C6B0FEE4(v12, v13, v14);
      a2[4] = result;
      *a2 = v11;
      return result;
    }
  }

  __break(1u);
  return result;
}

id NewsAppConfigurationManager.init(appConfigurationManager:transform:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_1C6D77F40();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v11 = OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_lock;
  sub_1C6D77F30();
  sub_1C6D77F60();
  swift_allocObject();
  *&v3[v11] = sub_1C6D77F50();
  *&v3[OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_onChangeBlocks] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_appConfigurationManager] = a1;
  if (a2)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    v13 = sub_1C6C7F5E0;
  }

  else
  {
    v13 = sub_1C6B19260;
    v12 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  v15 = &v4[OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_transform];
  *v15 = sub_1C6B19228;
  v15[1] = v14;
  swift_unknownObjectRetain();
  sub_1C6B16888(a2, a3);
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  [a1 addAppConfigObserver_];
  sub_1C6B16898(a2, a3);

  swift_unknownObjectRelease();
  return v16;
}

uint64_t sub_1C6B1916C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B191A8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_transform);
  v2 = [*(*v0 + OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_appConfigurationManager) possiblyUnfetchedAppConfiguration];
  v1();

  return swift_unknownObjectRelease();
}

uint64_t sub_1C6B19228(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1C6B19284@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if ([v1 respondsToSelector_])
  {
    v4 = [v1 articleEmbeddingsScoringEnabled];
    if (([v2 respondsToSelector_] & 1) == 0)
    {
      if ((v4 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    if (([v1 respondsToSelector_] & 1) == 0)
    {
LABEL_10:
      v6 = 0;
      goto LABEL_11;
    }

    v4 = 0;
  }

  v5 = [v2 newsPersonalizationConfiguration];
  v6 = [v5 articleEmbeddingsConfiguration];

  if (v4)
  {
    if (v6)
    {
      goto LABEL_12;
    }

LABEL_9:
    v7 = sub_1C6D79AB0();
    sub_1C6C80140(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C6D7E630;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1C6B2064C();
    *(v8 + 32) = 0xD000000000000018;
    *(v8 + 40) = 0x80000001C6D97090;
    sub_1C6B1AAB0();
    v6 = sub_1C6D79BD0();
    sub_1C6D78D30("%@ marked as enabled, but is missing configuration. disabling.", 62, 2, &dword_1C6B09000, v6, v7, v8);
  }

LABEL_11:

  v6 = 0;
LABEL_12:
  if ([v2 respondsToSelector_])
  {
    v54 = [v2 clientSideEngagementBoostEnabled];
  }

  else
  {
    v54 = 0;
  }

  if ([v2 respondsToSelector_])
  {
    v53 = [v2 fallbackToReverseChronSorting];
  }

  else
  {
    v53 = 0;
  }

  if ([v2 respondsToSelector_])
  {
    v52 = [v2 newsTabiConfiguration];
  }

  else
  {
    v52 = 0;
  }

  v55 = v6;
  v51 = [v2 personalizationTreatment];
  if ([v2 respondsToSelector_])
  {
    v49 = [v2 statelessPersonalizationEnabled];
  }

  else
  {
    v49 = 0;
  }

  if ([v2 respondsToSelector_])
  {
    v9 = [v2 newsPersonalizationConfiguration];
    v10 = [v9 articleEmbeddingsConfiguration];
  }

  else
  {
    v10 = 0;
  }

  if ([v2 respondsToSelector_])
  {
    v11 = [v2 newsPersonalizationConfiguration];
    v12 = [v11 featureConfiguration];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v2 personalizationTreatment];
  if ([v2 respondsToSelector_])
  {
    v14 = [v2 newsPersonalizationConfiguration];
    v15 = [v14 statelessPersonalizationConfiguration];
  }

  else
  {
    v15 = 0;
  }

  if ([v2 respondsToSelector_])
  {
    v16 = [v2 statelessPersonalizationAllowedForExtensions];
  }

  else
  {
    v16 = 0;
  }

  if ([v2 respondsToSelector_])
  {
    v17 = [v2 newsPersonalizationConfiguration];
  }

  else
  {
    v17 = 0;
  }

  v18 = v12;
  v19 = [v17 trainingConfiguration];

  if (!v10)
  {
    v24 = sub_1C6D79AB0();
    sub_1C6B1AAB0();
    v25 = sub_1C6D79BD0();
    sub_1C6D78D30("failed to create stateless personalization configuration due to missing embeddings configuration", 96, 2, &dword_1C6B09000, v25, v24, MEMORY[0x1E69E7CC0]);

LABEL_49:
    v18 = 0;
LABEL_50:
    v13 = 0;
    v20 = 0;
    v16 = 0;
    v19 = 0;
    if (v49)
    {
      goto LABEL_44;
    }

LABEL_51:
    sub_1C6B16EC0(v10, v18, v13, v20, v16, v19);
    goto LABEL_52;
  }

  if (!v18)
  {
    v26 = sub_1C6D79AB0();
    sub_1C6B1AAB0();
    v27 = sub_1C6D79BD0();
    sub_1C6D78D30("failed to create stateless personalization configuration due to missing feature configuration", 93, 2, &dword_1C6B09000, v27, v26, MEMORY[0x1E69E7CC0]);

    v10 = 0;
    goto LABEL_50;
  }

  if (!v15)
  {
    v28 = sub_1C6D79AB0();
    sub_1C6B1AAB0();
    v29 = sub_1C6D79BD0();
    sub_1C6D78D30("failed to create stateless personalization configuration due to missing stateless configuration", 95, 2, &dword_1C6B09000, v29, v28, MEMORY[0x1E69E7CC0]);

    v10 = 0;
    goto LABEL_49;
  }

  v20 = v15;
  if (!v19)
  {
    sub_1C6B1AAB0();
    v43 = sub_1C6D79BD0();
    v44 = sub_1C6D79AC0();
    sub_1C6D78D30("failed to create stateless personalization configuration due to missing training configuration", 94, 2, &dword_1C6B09000, v43, v44, MEMORY[0x1E69E7CC0]);

    v10 = 0;
    v18 = 0;
    v13 = 0;
    v20 = 0;
    v16 = 0;
    if (v49)
    {
      goto LABEL_44;
    }

    goto LABEL_51;
  }

  if (!v49)
  {
    goto LABEL_51;
  }

LABEL_44:
  if (v10)
  {
    goto LABEL_53;
  }

  v21 = sub_1C6D79AB0();
  sub_1C6C80140(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C6D7E630;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1C6B2064C();
  *(v22 + 32) = 0xD000000000000018;
  *(v22 + 40) = 0x80000001C6D970B0;
  sub_1C6B1AAB0();
  v23 = sub_1C6D79BD0();
  sub_1C6D78D30("%@ marked as enabled, but is missing configuration. disabling.", 62, 2, &dword_1C6B09000, v23, v21, v22);

LABEL_52:
  v10 = 0;
  v18 = 0;
  v13 = 0;
  v20 = 0;
  v16 = 0;
  v19 = 0;
LABEL_53:
  v46 = v20;
  v48 = v13;
  v50 = v10;
  v47 = v18;
  if ([v2 respondsToSelector_])
  {
    v45 = [v2 publisherDampeningConfig];
  }

  else
  {
    sub_1C6B61D34(MEMORY[0x1E69E7CC0]);
    v30 = objc_allocWithZone(MEMORY[0x1E69B5460]);
    v31 = sub_1C6D79480();

    v45 = [v30 initWithConfig_];
  }

  if ([v2 respondsToSelector_])
  {
    v32 = [v2 shadowPublisherDampeningConfig];
  }

  else
  {
    sub_1C6B61D34(MEMORY[0x1E69E7CC0]);
    v33 = objc_allocWithZone(MEMORY[0x1E69B5460]);
    v34 = sub_1C6D79480();

    v32 = [v33 initWithConfig_];
  }

  if ([v2 respondsToSelector_])
  {
    v35 = [v2 statelessPersonalizationPublisherFavorability];
  }

  else
  {
    v36 = objc_allocWithZone(MEMORY[0x1E69B55F0]);
    sub_1C6B1C98C();
    v37 = sub_1C6D79760();
    v35 = [v36 initWithArray_];
  }

  if ([v2 respondsToSelector_])
  {
    v38 = [v2 personalizationAnalyticsEnabled];
  }

  else
  {
    v38 = 0;
  }

  if ([v2 respondsToSelector_])
  {
    v39 = [v2 enableTabiTagScoring];
  }

  else
  {
    v39 = 0;
  }

  if ([v2 respondsToSelector_])
  {
    v40 = [v2 enableTabiCohortMemberships];
  }

  else
  {
    v40 = 0;
  }

  v41 = [v2 respondsToSelector_];
  result = 1;
  if (v41)
  {
    result = [v2 aggregatesInAppXavierEnabled];
  }

  *a1 = v55;
  *(a1 + 8) = v54;
  *(a1 + 9) = v53;
  *(a1 + 16) = v52;
  *(a1 + 24) = v51;
  *(a1 + 32) = v50;
  *(a1 + 40) = v47;
  *(a1 + 48) = v48;
  *(a1 + 56) = v46;
  *(a1 + 64) = v16;
  *(a1 + 72) = v19;
  *(a1 + 80) = 1;
  *(a1 + 88) = v45;
  *(a1 + 96) = v32;
  *(a1 + 104) = v35;
  *(a1 + 112) = v38;
  *(a1 + 113) = v39;
  *(a1 + 114) = v40;
  *(a1 + 115) = result;
  *(a1 + 116) = 1;
  return result;
}

uint64_t sub_1C6B19CA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1C6B19CE4@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  v8 = v7;
  result = sub_1C6D77FD0();
  if (result)
  {
    v10 = result;
    a4[3] = v8;
    result = sub_1C6D41F50(a2, &qword_1EDCEA330, MEMORY[0x1E69960C8], a3);
    a4[4] = result;
    *a4 = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C6B19DAC()
{
  v0 = FCURLForNewsComputeServiceResources();
  if (v0)
  {
    v1 = v0;
    sub_1C6D75D90();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C6B19E08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6B19E68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6B19F1C(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_1C6B1A060(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_1C6B1DCF0(0, a5, a6, MEMORY[0x1E69E6F90]);
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

uint64_t sub_1C6B1A2B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

void sub_1C6B1A2FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B1A360(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D7A0F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C6B1A3B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B1A418(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B1A47C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1C6B10A98(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C6B1A4E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B1A548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B1A5AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B1A610(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1C6B10A98(255, a3, a4);
    v5 = sub_1C6D7A0F0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C6B1A66C()
{
  v0 = sub_1C6D75CD0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6D75DE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCE7540 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDCE7548;
  v11 = sub_1C6D79AC0();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1C6D78D30("Running NewsPersonalizationDataCleanupStartupTask", 49, 2, &dword_1C6B09000, v10, v11, MEMORY[0x1E69E7CC0]);
  v13 = *(v33 + 16);
  v14 = *(v13 + 16);
  if (v14)
  {
    v36 = v12;
    sub_1C6D79DF0();
    v31 = OBJC_IVAR____TtC19NewsPersonalization41NewsPersonalizationDataCleanupStartupTask_privateDataDirectory;
    v30 = *(v1 + 104);
    v29 = *MEMORY[0x1E6968F58];
    v27 = (v6 + 8);
    v28 = (v1 + 8);
    v15 = (v13 + 40);
    v26 = v9;
    v32 = v5;
    do
    {
      v16 = *v15;
      v34 = *(v15 - 1);
      v35 = v16;
      v30(v4, v29, v0);
      sub_1C6B16CF0();

      v17 = v26;
      sub_1C6D75DC0();
      v18 = (*v28)(v4, v0);
      MEMORY[0x1EEE9AC00](v18, v19);
      *(&v25 - 2) = v17;
      sub_1C6B1AC10();
      swift_allocObject();
      sub_1C6D78350();

      (*v27)(v17, v32);
      sub_1C6D79DC0();
      sub_1C6D79E00();
      sub_1C6D79E10();
      sub_1C6D79DD0();
      v15 += 2;
      --v14;
    }

    while (v14);
    v12 = v36;
  }

  sub_1C6B1AC10();
  v34 = v12;
  v20 = sub_1C6D78210();
  sub_1C6B1AB04(0);
  sub_1C6B1B2E8(&qword_1EDCE6638, sub_1C6B1AB04, MEMORY[0x1E69E6340]);
  sub_1C6D78280();

  v21 = sub_1C6D78210();
  sub_1C6D782B0();

  v22 = sub_1C6D78210();
  v23 = sub_1C6D78340();

  return v23;
}

unint64_t sub_1C6B1AAB0()
{
  result = qword_1EDCEA8B8;
  if (!qword_1EDCEA8B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCEA8B8);
  }

  return result;
}

void sub_1C6B1AB04(uint64_t a1)
{
  if (!qword_1EDCE6640)
  {
    sub_1C6B1AC10();
    v1 = sub_1C6D79820();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6640);
    }
  }
}

uint64_t sub_1C6B1AB5C(uint64_t a1)
{
  sub_1C6B1ABB8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C6B1ABB8(uint64_t a1)
{
  if (!qword_1EDCE65F0[0])
  {
    sub_1C6D79880();
    v1 = sub_1C6D79C00();
    if (!v2)
    {
      atomic_store(v1, qword_1EDCE65F0);
    }
  }
}

void sub_1C6B1AC10()
{
  if (!qword_1EDCE7A70)
  {
    v0 = sub_1C6D78360();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE7A70);
    }
  }
}

void sub_1C6B1AC64(void (*a1)(uint64_t), uint64_t a2, void (*a3)(void *), void (*a4)(void *), uint64_t a5)
{
  v56 = a3;
  v60 = *MEMORY[0x1E69E9840];
  v57 = sub_1C6D75DE0();
  v55 = *(v57 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57, v10);
  v54 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v59 = 1;
  v12 = objc_opt_self();

  v13 = [v12 defaultManager];
  sub_1C6D75DA0();
  v14 = sub_1C6D79570();

  v15 = [v13 fileExistsAtPath:v14 isDirectory:&v59];

  if (v15)
  {
    v16 = a5;
    v53 = a4;
    if (qword_1EDCE7540 != -1)
    {
      swift_once();
    }

    v17 = qword_1EDCE7548;
    sub_1C6B1D314(0);
    v18 = swift_allocObject();
    v51 = xmmword_1C6D7E630;
    *(v18 + 16) = xmmword_1C6D7E630;
    sub_1C6B1B2E8(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v52 = v16;
    v19 = sub_1C6D7A0E0();
    v21 = v20;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    v22 = sub_1C6B2064C();
    *(v18 + 64) = v22;
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    v23 = sub_1C6D79AC0();
    v24 = v17;
    sub_1C6D78D30("Attempting to clear data at %{public}@", 38, 2, &dword_1C6B09000, v17, v23, v18);

    if (v59 == 1)
    {
      *&v51 = [v12 defaultManager];
      v25 = v52;
      v50 = sub_1C6D75D30();
      sub_1C6B761BC();
      v26 = MEMORY[0x1CCA56010](9);
      v27 = v54;
      v28 = v55;
      v29 = v57;
      (*(v55 + 16))(v54, v25, v57);
      v30 = (*(v28 + 80) + 16) & ~*(v28 + 80);
      v31 = (v9 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
      v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
      v33 = swift_allocObject();
      (*(v28 + 32))(v33 + v30, v27, v29);
      v34 = (v33 + v31);
      v35 = v53;
      *v34 = v56;
      v34[1] = v35;
      v36 = (v33 + v32);
      *v36 = sub_1C6C40F6C;
      v36[1] = v11;
      aBlock[4] = sub_1C6D75404;
      aBlock[5] = v33;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C6C70DF0;
      aBlock[3] = &block_descriptor_18;
      v37 = _Block_copy(aBlock);

      v39 = v50;
      v38 = v51;
      [v51 fc:v50 quicklyClearDirectory:v26 callbackQueue:v37 completion:?];
      _Block_release(v37);
    }

    else
    {

      v41 = sub_1C6D79AA0();
      v42 = swift_allocObject();
      *(v42 + 16) = v51;
      v43 = v52;
      v44 = v57;
      v45 = sub_1C6D7A0E0();
      *(v42 + 56) = MEMORY[0x1E69E6158];
      *(v42 + 64) = v22;
      *(v42 + 32) = v45;
      *(v42 + 40) = v46;
      sub_1C6D78D30("See item at %{public}@, but reported not to be a directory.", 59, 2, &dword_1C6B09000, v24, v41, v42);

      type metadata accessor for NewsPersonalizationDataCleanupStartupTask.Errors(0);
      sub_1C6B1B2E8(&qword_1EC1D9AE8, type metadata accessor for NewsPersonalizationDataCleanupStartupTask.Errors, &unk_1C6D96D94);
      v47 = swift_allocError();
      (*(v55 + 16))(v48, v43, v44);
      swift_storeEnumTagMultiPayload();
      v56(v47);
    }
  }

  else
  {

    a1(v40);
  }
}

uint64_t sub_1C6B1B1FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B1B234()
{
  v1 = sub_1C6D75DE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1C6B1B2E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6B1B330()
{
  sub_1C6B1BAAC(0);
  v0 = sub_1C6D78320();

  return v0;
}

uint64_t sub_1C6B1B370(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C6B1B3B0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C6D78360();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C6B1B3FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C6B1B44C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C6B1B49C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C6B1B4EC()
{
  sub_1C6B1B49C(0, &qword_1EDCE7A70, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1C6D78350();
}

uint64_t sub_1C6B1B574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1C6B1B7C0(0, qword_1EDCE65F0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v17 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = sub_1C6D79880();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a5;
  v14[5] = sub_1C6C40F6C;
  v14[6] = v12;

  v15 = a5;
  sub_1C6BE0BF8(0, 0, v11, &unk_1C6D95520, v14);
}

uint64_t sub_1C6B1B6D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B1B70C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1C6B1B75C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B1B7C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6B1B860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  *a4 = result;
  return result;
}

uint64_t sub_1C6B1B934()
{
  if (qword_1EDCE7540 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDCE7548;
  v1 = sub_1C6D79AC0();
  return sub_1C6D78D30("Successfully cleaned up personalization data", 44, 2, &dword_1C6B09000, v0, v1, MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1C6B1B9EC()
{
  v1 = *v0;
  if (qword_1EDCE7498 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDCE74A0;
  v3 = sub_1C6D79AC0();
  sub_1C6D78D30("Kicking off creation of new aggregate store", 43, 2, &dword_1C6B09000, v2, v3, MEMORY[0x1E69E7CC0]);
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  return (*(v5 + 24))(v4, v5);
}

uint64_t sub_1C6B1BAAC(char a1)
{
  v2 = v1;
  if (qword_1EDCE7498 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDCE74A0;
  v5 = sub_1C6D79AC0();
  sub_1C6D78D30("Fetching new aggregate store", 28, 2, &dword_1C6B09000, v4, v5, MEMORY[0x1E69E7CC0]);
  v6 = v2[6];
  v7 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v6);
  ConfigurationManagerType.fetchStatelessConfigurationIfNeeded(cachedOnly:)(1, v6, v7);
  sub_1C6B1BDF8(0);

  sub_1C6D782A0();

  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = a1 & 1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1C6D5B5A0;
  *(v9 + 24) = v8;

  v10 = sub_1C6D782A0();

  return v10;
}

uint64_t sub_1C6B1BC68()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1C6B1BCA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t ConfigurationManagerType.fetchStatelessConfigurationIfNeeded(cachedOnly:)(char a1, uint64_t a2, uint64_t a3)
{
  sub_1C6D783A0();
  v3 = sub_1C6D78210();
  v4 = sub_1C6D782B0();

  return v4;
}

void sub_1C6B1BDF8(uint64_t a1)
{
  if (!qword_1EDCE7918)
  {
    sub_1C6B1BE60(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE7918);
    }
  }
}

void sub_1C6B1BE60(uint64_t a1)
{
  if (!qword_1EDCE6610)
  {
    sub_1C6B0F7A8(255, &qword_1EDCE6570, &protocolRef_FCHeadlineProviding);
    v1 = sub_1C6D79820();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6610);
    }
  }
}

void sub_1C6B1BEC8(uint64_t a1)
{
  if (!qword_1EDCE7728)
  {
    v2 = sub_1C6B0C69C(255, &qword_1EDCE6530, 0x1E69B53D0);
    v5 = type metadata accessor for FeatureState.Errors(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EDCE7728);
    }
  }
}

id sub_1C6B1BF30@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  if (*a1)
  {
    *a2 = v2;
    return v2;
  }

  else
  {
    sub_1C6B1BEC8(0);
    sub_1C6B186A4(qword_1EDCE7730, sub_1C6B1BEC8);
    swift_allocError();
    return swift_willThrow();
  }
}

void ComputeServiceConfiguration.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v66[5] = *MEMORY[0x1E69E9840];
  v3 = sub_1C6D79470();
  v60 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D75B30();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D79460();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B1C864(0);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v62 = v16;
  v63 = a1;
  *(v16 + 32) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v61;
  sub_1C6D7A2C0();
  if (v17)
  {
    goto LABEL_12;
  }

  v61 = v10;
  v55 = v15;
  v56 = v12;
  v57 = v11;
  v58 = v6;
  __swift_project_boxed_opaque_existential_1(v66, v66[3]);
  sub_1C6B1C938();
  sub_1C6D7A150();
  v18 = v64;
  v19 = v65;
  v20 = objc_opt_self();
  v21 = sub_1C6D75E50();
  v64 = 0;
  v22 = [v20 JSONObjectWithData:v21 options:0 error:&v64];

  if (!v22)
  {
    v37 = v64;
    sub_1C6D75CC0();

    goto LABEL_10;
  }

  v23 = v64;
  sub_1C6D79C50();
  swift_unknownObjectRelease();
  sub_1C6B1C98C();
  v15 = MEMORY[0x1E69E7CA0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1C6BA0BF0();
    swift_allocError();
LABEL_10:
    swift_willThrow();
    sub_1C6B1C9F0(v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v66);
LABEL_12:
    v38 = 0;
    goto LABEL_13;
  }

  v54 = v20;
  v53 = 0;
  v24 = objc_allocWithZone(MEMORY[0x1E69B53E8]);
  v25 = sub_1C6D79480();

  v26 = [v24 initWithDictionary_];

  v15 = v26;
  v27 = [v15 dictionary];
  sub_1C6D79490();

  v28 = sub_1C6D79480();

  v64 = 0;
  v29 = [v54 dataWithJSONObject:v28 options:2 error:&v64];

  v30 = v64;
  if (v29)
  {
    v31 = sub_1C6D75E60();
    v33 = v32;

    sub_1C6D75B70();
    swift_allocObject();
    sub_1C6D75B60();
    sub_1C6D75B20();
    sub_1C6D75B40();
    v64 = v31;
    v65 = v33;
    sub_1C6B1CCBC();
    v34 = v53;
    v35 = sub_1C6D75B50();
    if (!v34)
    {
      v40 = v15;
      v52 = v15;
      v41 = v35;
      v61 = v36;

      sub_1C6B1C9F0(v31, v33);

      sub_1C6BA0CEC(&qword_1EDCE66A8, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      v42 = v58;
      v43 = v3;
      sub_1C6D79450();
      v44 = v61;
      sub_1C6B1CD10(v41, v61);
      sub_1C6B1CD64(v41, v44, v42);
      sub_1C6B1C9F0(v41, v44);
      v54 = v18;
      v45 = v55;
      sub_1C6D79440();
      sub_1C6B1C9F0(v41, v44);
      (*(v60 + 8))(v42, v43);
      v46 = sub_1C6B1D0FC();
      v48 = v47;
      sub_1C6B1C9F0(v54, v19);
      (*(v56 + 8))(v45, v57);
      __swift_destroy_boxed_opaque_existential_1(v66);
      v49 = v59;
      *v59 = v46;
      v49[1] = v48;
      v50 = v52;
      v49[2] = v62;
      v49[3] = v50;

      v51 = v50;
      __swift_destroy_boxed_opaque_existential_1(v63);

      return;
    }

    sub_1C6B1C9F0(v31, v33);
  }

  else
  {
    v39 = v30;
    sub_1C6D75CC0();

    swift_willThrow();
  }

  sub_1C6B1C9F0(v18, v19);
  __swift_destroy_boxed_opaque_existential_1(v66);
  v38 = 1;
LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(v63);

  if (v38)
  {
  }
}

void *sub_1C6B1C6D0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE9788, &protocol descriptor for GroupingServiceType, 1);
  result = sub_1C6D77FE0();
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, qword_1EDCE9850, &protocol descriptor for ScoringServiceType, 1);
  result = sub_1C6D77FE0();
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &qword_1EDCE90F8, &protocol descriptor for DiversificationServiceType, 1);
  result = sub_1C6D77FE0();
  if (v5)
  {
    type metadata accessor for NewsPersonalizationService();
    v3 = swift_allocObject();
    sub_1C6B15E34(&v8, v3 + 16);
    sub_1C6B15E34(&v6, v3 + 56);
    sub_1C6B15E34(&v4, v3 + 96);
    return v3;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1C6B1C864(uint64_t a1)
{
  if (!qword_1EDCE6500)
  {
    sub_1C6BA0C44(255, &qword_1EDCE6698, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1C6D79D90();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6500);
    }
  }
}

unint64_t sub_1C6B1C938()
{
  result = qword_1EDCE7AE0;
  if (!qword_1EDCE7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE7AE0);
  }

  return result;
}

void sub_1C6B1C98C()
{
  if (!qword_1EDCE66A0)
  {
    v0 = sub_1C6D794F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE66A0);
    }
  }
}

uint64_t sub_1C6B1C9F0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t ComputeServiceConfiguration.encode(to:)(void *a1)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D7A2F0();
  v3 = objc_opt_self();
  v4 = [v2 dictionary];
  sub_1C6D79490();

  v5 = sub_1C6D79480();

  v13[0] = 0;
  v6 = [v3 dataWithJSONObject:v5 options:2 error:v13];

  v7 = v13[0];
  if (v6)
  {
    v8 = sub_1C6D75E60();
    v10 = v9;

    v13[0] = v8;
    v13[1] = v10;
    __swift_mutable_project_boxed_opaque_existential_1(v14, v14[3]);
    sub_1C6B1CCBC();
    sub_1C6D7A170();
    sub_1C6B1C9F0(v8, v10);
  }

  else
  {
    v11 = v7;
    sub_1C6D75CC0();

    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_1C6B1CC38@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = a2(0);
  result = sub_1C6D77FD0();
  if (result)
  {
    a4[3] = v7;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C6B1CCBC()
{
  result = qword_1EDCE7AF0;
  if (!qword_1EDCE7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE7AF0);
  }

  return result;
}

uint64_t sub_1C6B1CD10(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1C6B1CD64(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1C6D79470();
      sub_1C6BA0CEC(&qword_1EDCE66A8, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1C6D79430();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1C6B1D01C(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1C6B1D01C(v5, v6);
  }

  sub_1C6D79470();
  sub_1C6BA0CEC(&qword_1EDCE66A8, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  return sub_1C6D79430();
}

uint64_t sub_1C6B1CF44()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCEA540 = result;
  return result;
}

uint64_t sub_1C6B1D01C(uint64_t a1, uint64_t a2)
{
  result = sub_1C6D75BF0();
  if (!result || (result = sub_1C6D75C20(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1C6D75C10();
      sub_1C6D79470();
      sub_1C6BA0CEC(&qword_1EDCE66A8, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1C6D79430();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C6B1D0FC()
{
  v1 = sub_1C6D79460();
  v3 = MEMORY[0x1EEE9AC00](v1, v2);
  v21 = MEMORY[0x1E69E7CC0];
  (*(v5 + 16))(&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v1, v3);
  sub_1C6BA0CEC(&unk_1EDCE66B0, MEMORY[0x1E69663E0], MEMORY[0x1E69663F0]);
  result = sub_1C6D79670();
  v7 = v19;
  v8 = v20;
  v9 = *(v19 + 16);
  if (v20 == v9)
  {
LABEL_6:

    v19 = v21;
    sub_1C6BA0C44(0, &qword_1EDCE7F50, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E62F8]);
    sub_1C6B1D900();
    return sub_1C6D79660();
  }

  else
  {
    v18 = xmmword_1C6D7E630;
    v10 = MEMORY[0x1E69E7508];
    v11 = MEMORY[0x1E69E7558];
    v12 = v20;
    while ((v8 & 0x8000000000000000) == 0)
    {
      if (v12 >= *(v7 + 16))
      {
        goto LABEL_8;
      }

      v13 = v12 + 1;
      v14 = *(v7 + 32 + v12);
      sub_1C6B1D314(0);
      v15 = swift_allocObject();
      *(v15 + 16) = v18;
      *(v15 + 56) = v10;
      *(v15 + 64) = v11;
      *(v15 + 32) = v14;
      v16 = sub_1C6D795C0();
      result = sub_1C6B1D36C(v16, v17);
      v12 = v13;
      if (v9 == v13)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_1C6B1D314(uint64_t a1)
{
  if (!qword_1EDCEA8A0)
  {
    sub_1C6B47670();
    v1 = sub_1C6D7A0F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCEA8A0);
    }
  }
}

uint64_t sub_1C6B1D36C(int64_t a1, uint64_t *a2)
{
  v5 = sub_1C6D79620();
  v6 = *v2;
  v7 = *(*v2 + 16);
  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v11 = *(v6 + 3) >> 1, v11 < v8))
  {
    if (v7 <= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v7;
    }

    v6 = sub_1C6B1D518(isUniquelyReferenced_nonNull_native, v12, 1, v6);
    v11 = *(v6 + 3) >> 1;
  }

  v13 = *(v6 + 2);
  v14 = (v11 - v13);
  v15 = sub_1C6B1D804(&v29, &v6[16 * v13 + 32], v11 - v13, a1, a2);
  if (v15 < v9)
  {
    goto LABEL_15;
  }

  if (v15 >= 1)
  {
    v16 = *(v6 + 2);
    v17 = __OFADD__(v16, v15);
    v18 = v15 + v16;
    if (v17)
    {
      __break(1u);
LABEL_29:
      *(v6 + 2) = a1;
LABEL_30:
      v2 = a2;
      goto LABEL_13;
    }

    *(v6 + 2) = v18;
  }

  if (v15 == v14)
  {
LABEL_16:
    a2 = v2;
    a1 = *(v6 + 2);
    v20 = sub_1C6D79640();
    if (v21)
    {
      while (1)
      {
        v22 = *(v6 + 3);
        v23 = v22 >> 1;
        if ((v22 >> 1) < a1 + 1)
        {
          v26 = v20;
          v27 = v21;
          v28 = sub_1C6B1D518((v22 > 1), a1 + 1, 1, v6);
          v21 = v27;
          v6 = v28;
          v20 = v26;
          v23 = *(v6 + 3) >> 1;
        }

        if (a1 <= v23)
        {
          v24 = v23;
        }

        else
        {
          v24 = a1;
        }

        v25 = &v6[16 * a1 + 40];
        while (v24 != a1)
        {
          *(v25 - 1) = v20;
          *v25 = v21;
          ++a1;
          v20 = sub_1C6D79640();
          v25 += 16;
          if (!v21)
          {
            goto LABEL_29;
          }
        }

        *(v6 + 2) = v24;
        a1 = v24;
      }
    }

    goto LABEL_30;
  }

LABEL_13:

  *v2 = v6;
  return result;
}

char *sub_1C6B1D518(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B1D64C(0, &unk_1EDCE6468, MEMORY[0x1E69E5EE0]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C6B1D64C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C6D7A0F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_1C6B1D698(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E28, &protocolRef_FCUserEventHistoryStorageType);
  sub_1C6D78FD0();
  v2 = sub_1C6D77FB0();

  if (v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for RecipeUserEventHistorySessionUnarchiver();
    result = sub_1C6D77FD0();
    if (result)
    {
      v4 = result;
      sub_1C6B10A08(0, &unk_1EDCE96E0, type metadata accessor for RecipeUserEventHistorySessionUnarchiver, &protocol witness table for RecipeUserEventHistorySessionUnarchiver, type metadata accessor for SessionDataProvider);
      v5 = swift_allocObject();
      v6 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
      [v6 setAllowedUnits_];
      [v6 setCountStyle_];
      v5[3] = v4;
      v5[4] = v6;
      v5[2] = v2;
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 *sub_1C6B1D804(__n128 *result, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  v16.n128_u64[0] = 0;
  v16.n128_u64[1] = v6;
  v7.n128_u64[0] = 0;
  v7.n128_u64[1] = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    v5->n128_u64[0] = a4;
    v5->n128_u64[1] = a5;
    v5[1] = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_1C6D79640();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B1D8CC()
{
  type metadata accessor for RecipeUserEventHistorySessionUnarchiver();

  return swift_allocObject();
}

unint64_t sub_1C6B1D900()
{
  result = qword_1EDCE7F48;
  if (!qword_1EDCE7F48)
  {
    sub_1C6BA0C44(255, &qword_1EDCE7F50, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE7F48);
  }

  return result;
}

uint64_t sub_1C6B1D9E8(uint64_t a1, uint64_t a2)
{
  sub_1C6D77F60();

  sub_1C6D781D0();
}

uint64_t sub_1C6B1DA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_onChangeBlocks;
  swift_beginAccess();
  v8 = *(a1 + v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1C6B1DBA4(0, v8[2] + 1, 1, v8);
    *(a1 + v7) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1C6B1DBA4((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = sub_1C6BF5054;
  v12[5] = v6;
  *(a1 + v7) = v8;
  return swift_endAccess();
}

void *sub_1C6B1DBA4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1C6B1DCF0(0, &unk_1EDCE6440, sub_1C6B1DDB8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B1DE14();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C6B1DCF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B1DD54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1C6B1DDB8()
{
  result = qword_1EDCE6430;
  if (!qword_1EDCE6430)
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EDCE6430);
  }

  return result;
}

unint64_t sub_1C6B1DE14()
{
  result = qword_1EDCEA400;
  if (!qword_1EDCEA400)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDCEA400);
  }

  return result;
}

void *sub_1C6B1DE64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &qword_1EDCE6C00, &protocol descriptor for RecipeDiversificationServiceType, 1);
  result = sub_1C6D77FE0();
  if (v7)
  {
    v4 = type metadata accessor for DiversificationService();
    v5 = swift_allocObject();
    result = sub_1C6B15E34(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F46767D8;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C6B1DF98(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for UserEmbeddingManager(0);
  result = sub_1C6D77FD0();
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for ClearableUserEmbeddingManager();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC19NewsPersonalization29ClearableUserEmbeddingManager_userEmbeddingManager] = v2;
    v5.receiver = v4;
    v5.super_class = v3;
    return objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C6B1E048()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1C6BFC3EC();
  }
}

void *sub_1C6B1E084(void *a1)
{
  v2 = sub_1C6D79AE0();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6D79AF0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D78E80();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1C6D77FD0();
  v22 = result;
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B37F88(0);
  result = sub_1C6D77FD0();
  v21 = result;
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7DA8, &protocolRef_FCPersonalizationBundleIDMappingProvider);
  result = sub_1C6D77FD0();
  v20 = result;
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &qword_1EDCE86E0, &protocol descriptor for BundleSubscriptionIsSubscribedProviderType, 1);
  result = sub_1C6D77FE0();
  if (!v27)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7DD0, &protocolRef_FCPersonalizationURLMappingProvider);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = result;
  v18[2] = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, qword_1EDCE92B0, &protocol descriptor for UserContextProviderType, 1);
  result = sub_1C6D77FE0();
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18[1] = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeUserEventHistoryFeaturesFactory();
  result = sub_1C6D77FD0();
  if (result)
  {
    v15 = result;
    type metadata accessor for TagSuggestionsDataService();
    v16 = swift_allocObject();
    sub_1C6B0C69C(0, &qword_1EDCE7EB0, 0x1E69E9610);
    sub_1C6D78E70();
    (*(v7 + 104))(v10, *MEMORY[0x1E69E8098], v19);
    v23 = MEMORY[0x1E69E7CC0];
    sub_1C6B0FEE4(&unk_1EDCE7EB8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    sub_1C6B0F658(0, &qword_1EDCE7F30, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    sub_1C6B37FE4();
    sub_1C6D79CB0();
    v16[17] = sub_1C6D79B20();
    v17 = v21;
    v16[2] = v22;
    v16[3] = v17;
    v16[4] = v20;
    sub_1C6B15E34(&v26, (v16 + 5));
    v16[10] = v14;
    sub_1C6B15E34(&v24, (v16 + 11));
    v16[16] = v15;
    return v16;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C6B1E538()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE7178 = result;
  return result;
}

uint64_t sub_1C6B1E610(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1CCA55E50](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1C6B1E6A8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1C6B1E6A8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C6D7A260();
  sub_1C6D79610();
  v8 = sub_1C6D7A2B0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1C6D7A130() & 1) != 0)
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

    sub_1C6B1E7F8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C6B1E7F8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1C6C248B4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1C6C25AB0();
      goto LABEL_16;
    }

    sub_1C6C25FC4(v8 + 1);
  }

  v10 = *v4;
  sub_1C6D7A260();
  sub_1C6D79610();
  result = sub_1C6D7A2B0();
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

      result = sub_1C6D7A130();
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
  result = sub_1C6D7A1B0();
  __break(1u);
  return result;
}

uint64_t sub_1C6B1E978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1C6D7A260();
  sub_1C6D79610();
  v6 = sub_1C6D7A2B0();
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
    if (v11 || (sub_1C6D7A130() & 1) != 0)
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

uint64_t sub_1C6B1EA98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileLog.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6B1EB48(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void *sub_1C6B1EB58(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D79190();
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE66E0, MEMORY[0x1E69B6388], 1);
  result = sub_1C6D77FE0();
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &qword_1EDCE7EA8, &protocolRef_FCFeedPersonalizing);
  result = sub_1C6D77FD0();
  if (result)
  {
    sub_1C6D79200();
    swift_allocObject();
    return sub_1C6D791F0();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1C6B1EC88(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7F00, 0x1E69B5210);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7DF0, &protocolRef_FCPersonalizationAllowlistProvider);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE7FA8, MEMORY[0x1E69B5CF8], 1);
  result = sub_1C6D77FE0();
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &qword_1EDCE7FA0, MEMORY[0x1E69B5DB0], 1);
  result = sub_1C6D77FE0();
  if (!v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCDFC90, MEMORY[0x1E69B6160], 1);
  result = sub_1C6D77FE0();
  if (v3)
  {
    sub_1C6D79190();
    swift_allocObject();
    return sub_1C6D79180();
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_1C6B1EE6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F658(0, qword_1EDCE8A38, type metadata accessor for TopicClusteringJournalStorageService, MEMORY[0x1E69E6720]);
  result = sub_1C6D77FE0();
  v4 = v9;
  if (!v9)
  {
    v8 = type metadata accessor for NoOpFeedTopicClusteringJournalStorageService();
    v4 = swift_allocObject();
    a2[3] = v8;
    v5 = &unk_1EC1D5FB0;
    v6 = type metadata accessor for NoOpFeedTopicClusteringJournalStorageService;
    v7 = &unk_1C6D89544;
    goto LABEL_5;
  }

  if (v9 != 1)
  {
    a2[3] = type metadata accessor for TopicClusteringJournalStorageService(0);
    v5 = &unk_1EDCE0228;
    v6 = type metadata accessor for TopicClusteringJournalStorageService;
    v7 = &unk_1C6D8957C;
LABEL_5:
    result = sub_1C6B0FEE4(v5, v6, v7);
    a2[4] = result;
    *a2 = v4;
    return result;
  }

  __break(1u);
  return result;
}

void *sub_1C6B1EFA4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C6D75DE0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77FA0();
  v8 = sub_1C6D77F90();
  result = 0;
  if ((v8 & 1) == 0)
  {
    goto LABEL_4;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7F00, 0x1E69B5210);
  result = sub_1C6D77FD0();
  if (result)
  {
    v10 = result;
    v11 = [result contentDirectory];

    sub_1C6D795A0();
    sub_1C6D75D00();

    type metadata accessor for TopicClusteringJournalStorageService(0);
    swift_allocObject();
    result = sub_1C6B1F228(v7);
LABEL_4:
    *a2 = result;
    return result;
  }

  __break(1u);
  return result;
}

id *sub_1C6B1F228(uint64_t a1)
{
  v2 = v1;
  v168 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  v5 = sub_1C6D78E30();
  v143 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v141 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1C6D78E80();
  v140 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142, v8);
  v139 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1C6D78E40();
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137, v10);
  v135 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_1C6D75CA0();
  v149 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155, v12);
  v157 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C6D75DE0();
  v159 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v134 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v156 = &v126 - v19;
  v133 = v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v126 - v23;
  v25 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v25 setAllowedUnits_];
  [v25 setCountStyle_];
  v1[2] = v25;
  sub_1C6D75D40();
  v147 = objc_opt_self();
  v26 = [v147 defaultManager];
  sub_1C6D75DB0();
  v27 = sub_1C6D79570();

  v28 = [v26 fileExistsAtPath:v27 isDirectory:0];

  v148 = v2;
  v146 = a1;
  v145 = v24;
  v144 = v5;
  if (v28)
  {
    if (qword_1EDCE2068 != -1)
    {
      goto LABEL_26;
    }

    while (1)
    {
      v29 = qword_1EDCE2070;
      sub_1C6B1D314(0);
      v128 = v30;
      v31 = swift_allocObject();
      v158 = xmmword_1C6D7E630;
      *(v31 + 16) = xmmword_1C6D7E630;
      v129 = sub_1C6B20604(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v32 = sub_1C6D7A0E0();
      v34 = v33;
      *(v31 + 56) = MEMORY[0x1E69E6158];
      v130 = sub_1C6B2064C();
      *(v31 + 64) = v130;
      *(v31 + 32) = v32;
      *(v31 + 40) = v34;
      v35 = sub_1C6D79AC0();
      v131 = v29;
      sub_1C6D78D30("See existing clustering journals directory at %{public}@", 56, 2, &dword_1C6B09000, v29, v35, v31);

      v36 = [v147 defaultManager];
      v37 = sub_1C6D75D30();
      sub_1C6B206A0(0, &qword_1EDCE7CE0, type metadata accessor for URLResourceKey, MEMORY[0x1E69E6F90]);
      v154 = v38;
      v39 = swift_allocObject();
      v40 = v14;
      *(v39 + 16) = v158;
      v41 = *MEMORY[0x1E695DB78];
      *(v39 + 32) = *MEMORY[0x1E695DB78];
      type metadata accessor for URLResourceKey(0);
      v153 = v41;
      v14 = sub_1C6D79760();

      aBlock = 0;
      v42 = [v36 contentsOfDirectoryAtURL:v37 includingPropertiesForKeys:v14 options:0 error:&aBlock];

      v43 = aBlock;
      v138 = v40;
      if (!v42)
      {
        break;
      }

      v44 = sub_1C6D79780();
      v45 = v43;

      v150 = *(v44 + 16);
      if (!v150)
      {
        v47 = v138;
LABEL_19:

        v102 = swift_allocObject();
        *(v102 + 16) = v158;
        v69 = v145;
        v103 = sub_1C6D7A0E0();
        v104 = v130;
        *(v102 + 56) = MEMORY[0x1E69E6158];
        *(v102 + 64) = v104;
        *(v102 + 32) = v103;
        *(v102 + 40) = v105;
        v106 = sub_1C6D79AC0();
        sub_1C6D78D30("No directories inside of %{public}@.", 36, 2, &dword_1C6B09000, v131, v106, v102);

        goto LABEL_20;
      }

      v132 = v4;
      v4 = 0;
      v46 = *(v159 + 80);
      v126 = ~v46;
      v127 = v46;
      v151 = v44 + ((v46 + 32) & ~v46);
      v152 = v159 + 16;
      ++v149;
      v2 = (v159 + 8);
      v47 = v138;
      while (v4 < *(v44 + 16))
      {
        v48 = *(v159 + 16);
        v49 = v156;
        v48(v156, v151 + *(v159 + 72) * v4, v47);
        inited = swift_initStackObject();
        *(inited + 16) = v158;
        v51 = v153;
        *(inited + 32) = v153;
        v52 = v51;
        sub_1C6B20798(inited);
        swift_setDeallocating();
        sub_1C6B19E08(inited + 32, type metadata accessor for URLResourceKey);
        v53 = v157;
        v54 = v160;
        sub_1C6D75CE0();
        v160 = v54;
        if (v54)
        {
          (*v2)(v49, v47);

          v90 = v160;
          v98 = v148;
          v99 = v146;
          goto LABEL_22;
        }

        v55 = sub_1C6D75C50();
        v56 = v53;
        v14 = v55;
        (*v149)(v56, v155);
        (*v2)(v49, v47);
        if (v55 != 2 && (v55 & 1) != 0)
        {

          v57 = swift_allocObject();
          *(v57 + 16) = v158;
          v58 = v145;
          v59 = sub_1C6D7A0E0();
          v60 = v130;
          *(v57 + 56) = MEMORY[0x1E69E6158];
          *(v57 + 64) = v60;
          *(v57 + 32) = v59;
          *(v57 + 40) = v61;
          v62 = sub_1C6D79AC0();
          sub_1C6D78D30("See directories inside of %{public}@, clearing all data.", 56, 2, &dword_1C6B09000, v131, v62, v57);

          *&v158 = [v147 defaultManager];
          v63 = sub_1C6D75D30();
          sub_1C6B0C69C(0, &qword_1EDCE7EB0, 0x1E69E9610);
          v64 = v136;
          v65 = v135;
          v66 = v137;
          (*(v136 + 104))(v135, *MEMORY[0x1E69E7F98], v137);
          v67 = sub_1C6D79B30();
          (*(v64 + 8))(v65, v66);
          v68 = v134;
          v48(v134, v58, v47);
          v69 = v58;
          v70 = (v127 + 16) & v126;
          v71 = swift_allocObject();
          (*(v159 + 32))(v71 + v70, v68, v47);
          v165 = sub_1C6C7405C;
          v166 = v71;
          aBlock = MEMORY[0x1E69E9820];
          v162 = 1107296256;
          v163 = sub_1C6C70DF0;
          v164 = &block_descriptor_15_0;
          v72 = _Block_copy(&aBlock);

          v73 = v158;
          [v158 fc:v63 quicklyClearDirectory:v67 callbackQueue:v72 completion:?];
          _Block_release(v72);

          goto LABEL_20;
        }

        if (v150 == ++v4)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_26:
      swift_once();
    }

    v101 = aBlock;
    v90 = sub_1C6D75CC0();

    swift_willThrow();
    v98 = v2;
    v99 = v146;
LABEL_22:
    LODWORD(v160) = sub_1C6D79AA0();
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_1C6D7EB10;
    v100 = v145;
    v14 = v138;
    v117 = sub_1C6D7A0E0();
    v118 = MEMORY[0x1E69E6158];
    v119 = v130;
    *(v116 + 56) = MEMORY[0x1E69E6158];
    *(v116 + 64) = v119;
    *(v116 + 32) = v117;
    *(v116 + 40) = v120;
    aBlock = 0;
    v162 = 0xE000000000000000;
    v167 = v90;
    sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
    sub_1C6D79E60();
    v121 = aBlock;
    v122 = v162;
    *(v116 + 96) = v118;
    *(v116 + 104) = v119;
    *(v116 + 72) = v121;
    *(v116 + 80) = v122;
    sub_1C6D78D30("Error checking if the clustering journals directory contained any directories. Error: %{public}@", 96, 2, &dword_1C6B09000, v131, v160, v116);
    goto LABEL_23;
  }

  v132 = v4;
  if (qword_1EDCE2068 != -1)
  {
    swift_once();
  }

  v74 = qword_1EDCE2070;
  sub_1C6B1D314(0);
  v75 = swift_allocObject();
  v158 = xmmword_1C6D7E630;
  *(v75 + 16) = xmmword_1C6D7E630;
  sub_1C6B20604(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v69 = v24;
  v76 = sub_1C6D7A0E0();
  v78 = v77;
  *(v75 + 56) = MEMORY[0x1E69E6158];
  v79 = sub_1C6B2064C();
  *(v75 + 64) = v79;
  *(v75 + 32) = v76;
  *(v75 + 40) = v78;
  v80 = sub_1C6D79AC0();
  sub_1C6D78D30("See no existing clustering journals directory, creating one at %{public}@", 73, 2, &dword_1C6B09000, v74, v80, v75);

  v81 = [v147 defaultManager];
  v82 = sub_1C6D75D30();
  aBlock = 0;
  LODWORD(v78) = [v81 createDirectoryAtURL:v82 withIntermediateDirectories:1 attributes:0 error:&aBlock];

  v83 = aBlock;
  if (!v78)
  {
    v89 = aBlock;
    v90 = sub_1C6D75CC0();

    swift_willThrow();
    v91 = sub_1C6D79AA0();
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_1C6D7EB10;
    v93 = sub_1C6D7A0E0();
    v94 = MEMORY[0x1E69E6158];
    *(v92 + 56) = MEMORY[0x1E69E6158];
    *(v92 + 64) = v79;
    *(v92 + 32) = v93;
    *(v92 + 40) = v95;
    aBlock = 0;
    v162 = 0xE000000000000000;
    v167 = v90;
    sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
    sub_1C6D79E60();
    v96 = aBlock;
    v97 = v162;
    *(v92 + 96) = v94;
    *(v92 + 104) = v79;
    *(v92 + 72) = v96;
    *(v92 + 80) = v97;
    sub_1C6D78D30("Error creating clustering journals directory at %{public}@. Error: %{public}@", 77, 2, &dword_1C6B09000, v74, v91, v92);
    v98 = v148;
    v99 = v146;
    v100 = v69;
LABEL_23:

    sub_1C6C71F08();
    swift_allocError();
    *v123 = v90;
    swift_willThrow();
    v124 = *(v159 + 8);
    v124(v99, v14);
    v124(v100, v14);

    swift_deallocPartialClassInstance();
    return v98;
  }

  v84 = swift_allocObject();
  *(v84 + 16) = v158;
  v85 = v83;
  v86 = sub_1C6D7A0E0();
  *(v84 + 56) = MEMORY[0x1E69E6158];
  *(v84 + 64) = v79;
  *(v84 + 32) = v86;
  *(v84 + 40) = v87;
  v88 = sub_1C6D79AC0();
  sub_1C6D78D30("Successfully created journals directory at %{public}@", 53, 2, &dword_1C6B09000, v74, v88, v84);

  v47 = v14;
LABEL_20:
  v107 = v159;
  v108 = v148;
  (*(v159 + 16))(v148 + OBJC_IVAR____TtC19NewsPersonalization36TopicClusteringJournalStorageService_journalsDirectory, v69, v47);
  v109 = FCPersistenceQueue();
  v165 = sub_1C6B21310;
  v166 = v108;
  aBlock = MEMORY[0x1E69E9820];
  v162 = 1107296256;
  v163 = sub_1C6B20B90;
  v164 = &block_descriptor_7;
  v110 = _Block_copy(&aBlock);

  v111 = v139;
  sub_1C6D78E60();
  v167 = MEMORY[0x1E69E7CC0];
  sub_1C6B20604(qword_1EDCE7FD0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1C6B206A0(0, &qword_1EDCE7F60, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1C6B20B08();
  v112 = v141;
  v113 = v144;
  sub_1C6D79CB0();
  MEMORY[0x1CCA55FE0](0, v111, v112, v110);
  _Block_release(v110);

  v114 = *(v107 + 8);
  v114(v146, v47);
  (*(v143 + 8))(v112, v113);
  (*(v140 + 8))(v111, v142);
  v115 = v47;
  v98 = v148;
  v114(v145, v115);

  return v98;
}

uint64_t sub_1C6B204A4()
{
  v1 = sub_1C6D75DE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C6B2052C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE2070 = result;
  return result;
}

uint64_t sub_1C6B20604(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C6B2064C()
{
  result = qword_1EDCEA910;
  if (!qword_1EDCEA910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCEA910);
  }

  return result;
}

void sub_1C6B206A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B20704(uint64_t a1)
{
  if (!qword_1EDCE7D68)
  {
    type metadata accessor for URLResourceKey(255);
    sub_1C6C07A7C(&unk_1EDCE7EF0, type metadata accessor for URLResourceKey, &unk_1C6D7E804);
    v1 = sub_1C6D79D40();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE7D68);
    }
  }
}

uint64_t sub_1C6B20798(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C6B20704(0);
    v3 = sub_1C6D79D30();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_1C6D795A0();
      sub_1C6D7A260();
      v27 = v7;
      sub_1C6D79610();
      v8 = sub_1C6D7A2B0();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_1C6D795A0();
        v18 = v17;
        if (v16 == sub_1C6D795A0() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_1C6D7A130();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_1C6C28AF0(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C6B20B08()
{
  result = qword_1EDCE7F58;
  if (!qword_1EDCE7F58)
  {
    sub_1C6B206A0(255, &qword_1EDCE7F60, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE7F58);
  }

  return result;
}

uint64_t sub_1C6B20B90(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1C6B20BF4()
{
  v1 = type metadata accessor for ClusteringJournalEntry(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1C6D75DE0();
  v61 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v6);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v55 - v11;
  if (qword_1EDCE2068 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDCE2070;
  v14 = sub_1C6D79AC0();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1C6D78D30("Attempting to prune clustering journals", 39, 2, &dword_1C6B09000, v13, v14, MEMORY[0x1E69E7CC0]);
  v62 = sub_1C6B215D0();

  sub_1C6B22D30(&v62, sub_1C6C72810, sub_1C6B232EC);
  v57 = v0;
  if (v0)
  {
    goto LABEL_22;
  }

  v58 = v13;
  v55[0] = v8;

  v16 = v62;
  v17 = *(v62 + 16);
  if (v17)
  {
    v62 = v15;
    sub_1C6B18934(0, v17, 0);
    v18 = v2;
    v19 = v62;
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v55[1] = v16;
    v21 = v16 + v20;
    v22 = *(v18 + 72);
    v23 = (v61 + 16);
    v59 = v61 + 32;
    v60 = v22;
    v24 = v56;
    do
    {
      sub_1C6B23588(v21, v5);
      (*v23)(v12, v5, v24);
      sub_1C6B19E08(v5, type metadata accessor for ClusteringJournalEntry);
      v62 = v19;
      v13 = v12;
      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1C6B18934((v25 > 1), v26 + 1, 1);
        v24 = v56;
        v19 = v62;
      }

      *(v19 + 16) = v26 + 1;
      (*(v61 + 32))(v19 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v26, v13, v24);
      v21 += v60;
      --v17;
      v12 = v13;
    }

    while (v17);
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  v27 = *(v19 + 16);
  if (v27 <= 0x19)
  {

    sub_1C6B1D314(0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1C6D7EB10;
    v62 = v27;
    v46 = sub_1C6D7A0E0();
    v48 = v47;
    v49 = MEMORY[0x1E69E6158];
    *(v45 + 56) = MEMORY[0x1E69E6158];
    v50 = sub_1C6B2064C();
    *(v45 + 64) = v50;
    *(v45 + 32) = v46;
    *(v45 + 40) = v48;
    v62 = 25;
    v51 = sub_1C6D7A0E0();
    *(v45 + 96) = v49;
    *(v45 + 104) = v50;
    *(v45 + 72) = v51;
    *(v45 + 80) = v52;
    v53 = sub_1C6D79AC0();
    sub_1C6D78D30("Found only %{public}@ total journal sessions but we allow %{public}@, no pruning to do", 86, 2, &dword_1C6B09000, v58, v53, v45);
  }

  sub_1C6B1D314(0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C6D7EB10;
  v62 = v27;
  v29 = MEMORY[0x1E69E6530];
  v30 = MEMORY[0x1E69E6590];
  v31 = sub_1C6D7A0E0();
  v33 = v32;
  v34 = MEMORY[0x1E69E6158];
  *(v28 + 56) = MEMORY[0x1E69E6158];
  v35 = sub_1C6B2064C();
  *(v28 + 64) = v35;
  *(v28 + 32) = v31;
  *(v28 + 40) = v33;
  v62 = 25;
  v36 = sub_1C6D7A0E0();
  *(v28 + 96) = v34;
  *(v28 + 104) = v35;
  *(v28 + 72) = v36;
  *(v28 + 80) = v37;
  v38 = sub_1C6D79AC0();
  sub_1C6D78D30("Found %{public}@ clustering journals, exceeding limit of %{public}@", 67, 2, &dword_1C6B09000, v58, v38, v28);

  v39 = *(v19 + 16);
  if (v39 >= 0x19)
  {
    v40 = v39 - 25;
    if (v39 != 25)
    {
      v41 = *(v61 + 80);
      v42 = v61 + 16;
      v61 = *(v61 + 16);
      v43 = *(v42 + 56);
      v13 = (v42 - 8);
      v44 = v19 + ((v41 + 32) & ~v41) + 25 * v43;
      v33 = v56;
      v30 = v57;
      v29 = v55[0];
      while (1)
      {
        (v61)(v29, v44, v33);
        sub_1C6C70E68();
        if (v30)
        {
          break;
        }

        (*v13)(v29, v33);
        v44 += v43;
        if (!--v40)
        {
        }
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:

  (*v13)(v29, v33);
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_1C6B21318@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E10, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1C6D77FD0();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B37F88(0);
    result = sub_1C6D77FD0();
    if (result)
    {
      v6 = result;
      UserInterestVectorProvider = type metadata accessor for SmarterFetchUserInterestVectorProvider();
      v8 = swift_allocObject();
      sub_1C6B214C0(0);
      v9 = swift_allocObject();
      *(v9 + 32) = 0;
      *(v9 + 16) = xmmword_1C6D7E620;
      v8[3] = v6;
      v8[4] = v9;
      v8[2] = v5;
      a2[3] = UserInterestVectorProvider;
      result = sub_1C6B0FEE4(qword_1EDCE00A8, type metadata accessor for SmarterFetchUserInterestVectorProvider, &unk_1C6D82C40);
      a2[4] = result;
      *a2 = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ClusteringJournalEntry(uint64_t a1)
{
  result = qword_1EDCE1E78;
  if (!qword_1EDCE1E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6B214C0(uint64_t a1)
{
  if (!qword_1EDCDF788)
  {
    sub_1C6B16F8C(255, &qword_1EDCE63A0, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1C6D79D90();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF788);
    }
  }
}

uint64_t sub_1C6B2154C(uint64_t a1)
{
  result = sub_1C6D75DE0();
  if (v2 <= 0x3F)
  {
    result = sub_1C6D75F50();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_1C6B215D0()
{
  v53 = *MEMORY[0x1E69E9840];
  v0 = sub_1C6D75DE0();
  v49 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v48 = v44 - v6;
  v7 = type metadata accessor for ClusteringJournalEntry(0);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_1C6D75D30();
  sub_1C6B206A0(0, &qword_1EDCE7CE0, type metadata accessor for URLResourceKey, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C6D7E630;
  v14 = *MEMORY[0x1E695DAA8];
  *(v13 + 32) = *MEMORY[0x1E695DAA8];
  type metadata accessor for URLResourceKey(0);
  v15 = v14;
  v16 = sub_1C6D79760();

  v51 = 0;
  v17 = [v11 contentsOfDirectoryAtURL:v12 includingPropertiesForKeys:v16 options:0 error:&v51];

  v18 = v51;
  if (v17)
  {
    v19 = sub_1C6D79780();
    v20 = v18;

    v21 = *(v19 + 16);
    if (v21)
    {
      v51 = MEMORY[0x1E69E7CC0];
      sub_1C6B21C04(0, v21, 0);
      v22 = v51;
      v23 = *(v49 + 16);
      v24 = v19 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
      v25 = *(v49 + 72);
      v44[1] = v19;
      v45 = v25;
      v49 += 16;
      v26 = (v49 - 8);
      do
      {
        v27 = v48;
        v23(v48, v24, v0);
        v23(v3, v27, v0);
        v23(v10, v3, v0);
        sub_1C6B224DC(&v10[*(v47 + 20)]);
        v28 = *v26;
        (*v26)(v3, v0);
        v28(v27, v0);
        v51 = v22;
        v30 = v22[2];
        v29 = v22[3];
        if (v30 >= v29 >> 1)
        {
          sub_1C6B21C04((v29 > 1), v30 + 1, 1);
          v22 = v51;
        }

        v22[2] = v30 + 1;
        sub_1C6B22BB0(v10, v22 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v30);
        v24 += v45;
        --v21;
      }

      while (v21);
    }

    else
    {

      v22 = MEMORY[0x1E69E7CC0];
    }

    v51 = v22;

    sub_1C6B22D30(&v51, sub_1C6C71F5C, sub_1C6B230C8);

    return v51;
  }

  else
  {
    v31 = v51;
    v32 = sub_1C6D75CC0();

    swift_willThrow();
    if (qword_1EDCE2068 != -1)
    {
      swift_once();
    }

    v33 = qword_1EDCE2070;
    v34 = sub_1C6D79AA0();
    sub_1C6B1D314(0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1C6D7EB10;
    sub_1C6B20604(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v36 = sub_1C6D7A0E0();
    v38 = v37;
    v39 = MEMORY[0x1E69E6158];
    *(v35 + 56) = MEMORY[0x1E69E6158];
    v40 = sub_1C6B2064C();
    *(v35 + 64) = v40;
    *(v35 + 32) = v36;
    *(v35 + 40) = v38;
    v51 = 0;
    v52 = 0xE000000000000000;
    v50 = v32;
    sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
    sub_1C6D79E60();
    v41 = v51;
    v42 = v52;
    *(v35 + 96) = v39;
    *(v35 + 104) = v40;
    *(v35 + 72) = v41;
    *(v35 + 80) = v42;
    sub_1C6D78D30("Error getting contents of journal directory at %{public}@. Error: %{public}@", 76, 2, &dword_1C6B09000, v33, v34, v35);

    return MEMORY[0x1E69E7CC0];
  }
}

void *sub_1C6B21C04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B39F38(a1, a2, a3, *v3, &qword_1EDCDF530, type metadata accessor for ClusteringJournalEntry, type metadata accessor for ClusteringJournalEntry);
  *v3 = result;
  return result;
}

void sub_1C6B21C54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B21CB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_1C6B21D1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &unk_1EDCEA8D0, 0x1E69B5568);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, qword_1EDCE8438, &protocol descriptor for SportsLocationRecommendationMappingsServiceType, 1);
  result = sub_1C6D77FE0();
  if (!v74)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &qword_1EDCE8D30, &protocol descriptor for SportsTaxonomyGraphTagServiceType, 1);
  result = sub_1C6D77FE0();
  if (!v72)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &qword_1EDCE8F58, &protocol descriptor for SportsTopicMappingServiceType, 1);
  result = sub_1C6D77FE0();
  if (!v70)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCDFC90, MEMORY[0x1E69B6160], 1);
  result = sub_1C6D77FE0();
  if (!v68)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ComputeServiceCohortMembershipService();
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v54 = result;
  v55 = v6;
  v56 = v5;
  v57 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, qword_1EDCE92B0, &protocol descriptor for UserContextProviderType, 1);
  result = sub_1C6D77FE0();
  if (v66)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
    v53 = v49;
    v8 = MEMORY[0x1EEE9AC00](v7, v7);
    v10 = (v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v71, v72);
    v52 = v49;
    v13 = MEMORY[0x1EEE9AC00](v12, v12);
    v15 = (v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
    v51 = v49;
    v18 = MEMORY[0x1EEE9AC00](v17, v17);
    v20 = (v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = *v10;
    v23 = *v15;
    v24 = *v20;
    v25 = type metadata accessor for SportsLocationRecommendationMappingsService();
    v64[3] = v25;
    v64[4] = &off_1F46739A0;
    v64[0] = v22;
    v26 = type metadata accessor for SportsTaxonomyGraphTagService();
    v62 = v26;
    v63 = &off_1F4673B88;
    v61[0] = v23;
    v27 = type metadata accessor for SportsTopicMappingService();
    v59 = v27;
    v60 = &off_1F4673AB0;
    v58[0] = v24;
    v50 = type metadata accessor for SportsRecommendationService();
    v28 = swift_allocObject();
    v29 = __swift_mutable_project_boxed_opaque_existential_1(v64, v25);
    v49[2] = v49;
    v30 = MEMORY[0x1EEE9AC00](v29, v29);
    v32 = (v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v33 + 16))(v32, v30);
    v34 = __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
    v49[1] = v49;
    v35 = MEMORY[0x1EEE9AC00](v34, v34);
    v37 = (v49 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37, v35);
    v39 = __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
    v40 = MEMORY[0x1EEE9AC00](v39, v39);
    v42 = (v49 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v43 + 16))(v42, v40);
    v44 = *v32;
    v45 = *v37;
    v46 = *v42;
    v28[7] = v25;
    v28[8] = &off_1F46739A0;
    v28[4] = v44;
    v28[12] = v26;
    v28[13] = &off_1F4673B88;
    v28[9] = v45;
    v28[17] = v27;
    v28[18] = &off_1F4673AB0;
    v28[14] = v46;
    v47 = v55;
    v28[2] = v56;
    v28[3] = v47;
    sub_1C6B15E34(&v67, (v28 + 19));
    v28[24] = v54;
    sub_1C6B15E34(&v65, (v28 + 25));
    __swift_destroy_boxed_opaque_existential_1(v58);
    __swift_destroy_boxed_opaque_existential_1(v61);
    __swift_destroy_boxed_opaque_existential_1(v64);
    __swift_destroy_boxed_opaque_existential_1(v69);
    __swift_destroy_boxed_opaque_existential_1(v71);
    result = __swift_destroy_boxed_opaque_existential_1(v73);
    v48 = v57;
    v57[3] = v50;
    v48[4] = &protocol witness table for SportsRecommendationService;
    *v48 = v28;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C6B224DC@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B21CB8(0, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v23 - v4;
  v6 = sub_1C6D75CA0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B21CB8(0, &qword_1EDCE7CE0, type metadata accessor for URLResourceKey, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v23 = xmmword_1C6D7E630;
  *(inited + 16) = xmmword_1C6D7E630;
  v12 = *MEMORY[0x1E695DAA8];
  *(inited + 32) = *MEMORY[0x1E695DAA8];
  v13 = v12;
  sub_1C6B20798(inited);
  swift_setDeallocating();
  sub_1C6B229D4(inited + 32);
  sub_1C6D75CE0();

  sub_1C6D75C60();
  (*(v7 + 8))(v10, v6);
  v14 = sub_1C6D75F50();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v5, 1, v14) != 1)
  {
    return (*(v15 + 32))(a1, v5, v14);
  }

  sub_1C6C358F8(v5);
  if (qword_1EDCE2068 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDCE2070;
  v17 = sub_1C6D79AA0();
  sub_1C6B1D314(0);
  v18 = swift_allocObject();
  *(v18 + 16) = v23;
  sub_1C6D75DE0();
  sub_1C6B476D4();
  v19 = sub_1C6D7A0E0();
  v21 = v20;
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = sub_1C6B2064C();
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  sub_1C6D78D30("Got nil creation date for clustering journal at URL %{public}@", 62, 2, &dword_1C6B09000, v16, v17, v18);

  return sub_1C6D75EB0();
}

id sub_1C6B22940(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7DE0, &protocolRef_FCPersonalizationDataGeneratorType);
  result = sub_1C6D77FD0();
  if (result)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69B5568]) initWithGenerator_];
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B229D4(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1C6B22A30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &qword_1EDCDF8C8, &protocolRef_FCContentContext);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE7F90, MEMORY[0x1E69B6398], 1);
  result = sub_1C6D77FE0();
  if (v10)
  {
    v7 = type metadata accessor for SportsLocationRecommendationMappingsService();
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v6;
    result = sub_1C6B15E34(&v9, v8 + 32);
    a2[3] = v7;
    a2[4] = &off_1F46739A0;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C6B22BB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClusteringJournalEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1C6B22C14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCDFC70, MEMORY[0x1E69B6788], 1);
  result = sub_1C6D77FE0();
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B0C7D4(0, &unk_1EDCDFC90, MEMORY[0x1E69B6160], 1);
    result = sub_1C6D77FE0();
    if (v8)
    {
      v5 = type metadata accessor for SportsTaxonomyGraphTagService();
      v6 = swift_allocObject();
      sub_1C6B15E34(&v9, v6 + 16);
      result = sub_1C6B15E34(&v7, v6 + 56);
      a2[3] = v5;
      a2[4] = &off_1F4673B88;
      *a2 = v6;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B22D30(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ClusteringJournalEntry(0) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1C6B22E48(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_1C6B22F68(v10, a2, a3);
  *a1 = v7;
  return result;
}

void *sub_1C6B22E5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1C6D77FD0();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B0C7D4(0, &unk_1EDCDFC90, MEMORY[0x1E69B6160], 1);
    result = sub_1C6D77FE0();
    if (v9)
    {
      v6 = type metadata accessor for SportsTopicMappingService();
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      result = sub_1C6B15E34(&v8, v7 + 24);
      a2[3] = v6;
      a2[4] = &off_1F4673AB0;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B22F68(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1C6D7A0C0();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ClusteringJournalEntry(0);
        v10 = sub_1C6D797F0();
        *(v10 + 16) = v9;
      }

      v11 = *(type metadata accessor for ClusteringJournalEntry(0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_1C6B230C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ClusteringJournalEntry(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v37 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v29 - v18;
  v31 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v36 = v20;
    v30 = v21;
    v25 = v20 + v21 * a3;
LABEL_5:
    v34 = v22;
    v35 = a3;
    v32 = v25;
    v33 = v24;
    while (1)
    {
      sub_1C6B23588(v25, v19);
      sub_1C6B23588(v22, v14);
      v26 = sub_1C6D75EE0();
      sub_1C6B19E08(v14, type metadata accessor for ClusteringJournalEntry);
      sub_1C6B19E08(v19, type metadata accessor for ClusteringJournalEntry);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v22 = v34 + v30;
        v24 = v33 - 1;
        v25 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_1C6B22BB0(v25, v37);
      swift_arrayInitWithTakeFrontToBack();
      sub_1C6B22BB0(v27, v22);
      v22 += v23;
      v25 += v23;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1C6B232EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ClusteringJournalEntry(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v37 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v28 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v28 - v18;
  v30 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    sub_1C6D75F50();
    v21 = *(v9 + 72);
    v22 = v20 + v21 * (a3 - 1);
    v35 = -v21;
    v36 = v20;
    v23 = a1 - a3;
    v29 = v21;
    v24 = v20 + v21 * a3;
LABEL_5:
    v33 = v22;
    v34 = a3;
    v31 = v24;
    v32 = v23;
    while (1)
    {
      sub_1C6B23588(v24, v19);
      sub_1C6B23588(v22, v15);
      sub_1C6B20604(&qword_1EDCE6388, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v25 = sub_1C6D79540();
      sub_1C6B19E08(v15, type metadata accessor for ClusteringJournalEntry);
      sub_1C6B19E08(v19, type metadata accessor for ClusteringJournalEntry);
      if (v25)
      {
LABEL_4:
        a3 = v34 + 1;
        v22 = v33 + v29;
        v23 = v32 - 1;
        v24 = v31 + v29;
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
      sub_1C6B22BB0(v24, v37);
      swift_arrayInitWithTakeFrontToBack();
      sub_1C6B22BB0(v26, v22);
      v22 += v35;
      v24 += v35;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C6B23588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClusteringJournalEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_destroy_helper_13(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

uint64_t sub_1C6B2368C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for ChannelPickerSuggestionsService();
  result = sub_1C6D77FD0();
  if (result)
  {
    a2[3] = v3;
    a2[4] = &protocol witness table for ChannelPickerSuggestionsService;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C6B23700(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E10, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_27;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B37F88(0);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B23B48(0);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, qword_1EDCE92B0, &protocol descriptor for UserContextProviderType);
  result = sub_1C6D77FE0();
  if (!v27)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &qword_1EDCDF890, &protocolRef_FCLocalAreasManager);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE66C8, &protocolRef_TSLocationDetectionManagerType);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, &unk_1EDCE9290, &protocol descriptor for ConfigurationManagerType);
  result = sub_1C6D77FE0();
  if (v25)
  {
    type metadata accessor for ChannelPickerSuggestionsService();
    v8 = swift_allocObject();
    v9 = [v3 cachedSubscription];
    if (objc_getAssociatedObject(v9, v9 + 1))
    {
      sub_1C6D79C50();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v22 = v20;
    v23 = v21;
    if (*(&v21 + 1))
    {
      sub_1C6B18500();
      if (swift_dynamicCast())
      {
        v10 = v19;
        v11 = [v19 integerValue];
        if (v11 == -1)
        {
          goto LABEL_24;
        }

        goto LABEL_17;
      }
    }

    else
    {
      sub_1C6B79FDC(&v22);
    }

    v10 = 0;
    v11 = 0;
LABEL_17:
    if (objc_getAssociatedObject(v9, ~v11))
    {
      sub_1C6D79C50();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v22 = v20;
    v23 = v21;
    if (*(&v21 + 1))
    {
      sub_1C6B18500();
      if (swift_dynamicCast())
      {
        v12 = v7;
        v13 = v6;
        v14 = v5;
        v15 = v4;
        v16 = v19;
        v17 = [v16 integerValue];

        v4 = v15;
        v5 = v14;
        v6 = v13;
        v7 = v12;

        swift_unknownObjectRelease();
        v18 = v17 - 101;
LABEL_25:
        *(v8 + 16) = ((v18 ^ v11) & 1) == 0;
        *(v8 + 24) = v4;
        *(v8 + 32) = v5;
        sub_1C6B15E34(&v26, v8 + 40);
        *(v8 + 80) = v6;
        *(v8 + 88) = v7;
        sub_1C6B15E34(&v24, v8 + 96);
        return v8;
      }
    }

    else
    {
      sub_1C6B79FDC(&v22);
    }

LABEL_24:

    swift_unknownObjectRelease();
    v18 = -101;
    goto LABEL_25;
  }

LABEL_32:
  __break(1u);
  return result;
}

void sub_1C6B23B48(uint64_t a1)
{
  if (!qword_1EDCE96F0[0])
  {
    v2 = type metadata accessor for UserEventHistorySessionUnarchiver();
    v4 = type metadata accessor for SessionDataProvider(a1, v2, &protocol witness table for UserEventHistorySessionUnarchiver, v3);
    if (!v5)
    {
      atomic_store(v4, qword_1EDCE96F0);
    }
  }
}

uint64_t sub_1C6B23BC4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AutoFavoritesService();
  result = sub_1C6D77FB0();
  if (result)
  {
    *a2 = result;
    a2[1] = &off_1F4679BD0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C6B23C38(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, qword_1EDCE26E0, &protocol descriptor for LocalNewsAutoFavoritesProviderType, 1);
  result = sub_1C6D77FE0();
  if (!v76)
  {
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &qword_1EDCE8A30, &protocol descriptor for EventHistoryAutoFavoritesProviderType, 1);
  result = sub_1C6D77FE0();
  if (!v74)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, qword_1EDCE88D8, &protocol descriptor for ExternalSignalAutoFavoritesProviderType, 1);
  result = sub_1C6D77FE0();
  if (!v72)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for ArticleAutoFavoritesServiceConfigurationProvider();
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v69 = v3;
  v70 = &off_1F4679798;
  *&v68 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, qword_1EDCE92B0, &protocol descriptor for UserContextProviderType, 1);
  result = sub_1C6D77FE0();
  if (!v67)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7DF0, &protocolRef_FCPersonalizationAllowlistProvider);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCDFC90, MEMORY[0x1E69B6160], 1);
  result = sub_1C6D77FE0();
  if (!v65)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B15828(0, qword_1EDCE96F0, type metadata accessor for UserEventHistorySessionUnarchiver, &protocol witness table for UserEventHistorySessionUnarchiver);
  v6 = v5;
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = result;
  v62 = v6;
  v63 = sub_1C6B24B20(&qword_1EDCE2318, qword_1EDCE96F0, type metadata accessor for UserEventHistorySessionUnarchiver, &protocol witness table for UserEventHistorySessionUnarchiver);
  *&v61 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_1C6B0C69C(0, &qword_1EDCE7E50, 0x1E69B5610);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v44 = v4;
  v59 = v8;
  v60 = &off_1F467A550;
  *&v58 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = type metadata accessor for ArticleAutoFavoritesGroupingEligibilityPolicy();
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
  v43 = &v41;
  v12 = MEMORY[0x1EEE9AC00](v11, v11);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v71, v72);
  v42 = &v41;
  v17 = MEMORY[0x1EEE9AC00](v16, v16);
  v19 = (&v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v14;
  v22 = *v19;
  v23 = type metadata accessor for EventHistoryAutoFavoritesProvider();
  v57[3] = v23;
  v57[4] = &off_1F46760B0;
  v57[0] = v21;
  v24 = type metadata accessor for ExternalSignalAutoFavoritesProvider();
  v55 = v24;
  v56 = &off_1F4673E58;
  v54[0] = v22;
  v52 = v9;
  v53 = &off_1F467ABD8;
  *&v51 = v10;
  type metadata accessor for AutoFavoritesService();
  v25 = swift_allocObject();
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v57, v23);
  v41 = &v41;
  v27 = MEMORY[0x1EEE9AC00](v26, v26);
  v29 = (&v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
  v32 = MEMORY[0x1EEE9AC00](v31, v31);
  v34 = (&v41 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34, v32);
  v36 = *v29;
  v37 = *v34;
  v49 = v23;
  v50 = &off_1F46760B0;
  v47 = &off_1F4673E58;
  *&v48 = v36;
  v46 = v24;
  *&v45 = v37;
  v38 = qword_1EDCE23B8;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = qword_1EDCE23C0;
  v40 = sub_1C6D79AC0();
  sub_1C6D78D30("Initializing AutoFavorites Service", 34, 2, &dword_1C6B09000, v39, v40, MEMORY[0x1E69E7CC0], v41, v42, v43);

  sub_1C6B15E34(&v75, v25 + 16);
  sub_1C6B15E34(&v48, v25 + 56);
  sub_1C6B15E34(&v45, v25 + 96);
  sub_1C6B15E34(&v68, v25 + 136);
  sub_1C6B15E34(&v66, v25 + 176);
  *(v25 + 216) = v44;
  sub_1C6B15E34(&v64, v25 + 224);
  sub_1C6B15E34(&v61, v25 + 264);
  sub_1C6B15E34(&v58, v25 + 304);
  sub_1C6B15E34(&v51, v25 + 344);
  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_destroy_boxed_opaque_existential_1(v57);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_destroy_boxed_opaque_existential_1(v73);
  return v25;
}

void *sub_1C6B24444@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE8F48, &protocol descriptor for TagSuggestionsDataServiceType, 1);
  result = sub_1C6D77FE0();
  if (!v10)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7DA8, &protocolRef_FCPersonalizationBundleIDMappingProvider);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7DD0, &protocolRef_FCPersonalizationURLMappingProvider);
  result = sub_1C6D77FD0();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for ExternalSignalAutoFavoritesProvider();
    v8 = swift_allocObject();
    result = sub_1C6B15E34(&v9, v8 + 16);
    *(v8 + 56) = v5;
    *(v8 + 64) = v6;
    a2[3] = v7;
    a2[4] = &off_1F4673E58;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1C6B24598(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1C6D77F80();
  MEMORY[0x1EEE9AC00](v6, v7);
  v3[2] = a1;
  sub_1C6B16F28(a2, (v3 + 3));
  sub_1C6B24980(0);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = 0;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  v3[9] = v9;
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  v3[10] = v10;
  sub_1C6B24A00(&qword_1EDCE7AB0, 255, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  sub_1C6B24A48(0);
  sub_1C6B24A00(&qword_1EDCE6660, 255, sub_1C6B24A48, MEMORY[0x1E69E6328]);
  swift_retain_n();
  swift_unknownObjectRetain();

  sub_1C6D79CB0();
  sub_1C6B24AA0(0, &qword_1EDCE5E00, &qword_1EDCDF828, &unk_1EDCDF830, 0x1E69B5490);
  swift_allocObject();
  v3[11] = sub_1C6D781B0();

  sub_1C6D79CB0();
  sub_1C6B24AA0(0, &qword_1EDCE5DE8, &qword_1EDCDF7E0, &unk_1EDCDF7E8, 0x1E69B5440);
  swift_allocObject();
  v3[12] = sub_1C6D781B0();

  sub_1C6D79CB0();
  sub_1C6B24AA0(0, &unk_1EDCE5DF0, &qword_1EDCDF808, &qword_1EDCDF810, 0x1E69B5488);
  swift_allocObject();
  v11 = sub_1C6D781B0();

  __swift_destroy_boxed_opaque_existential_1(a2);
  v3[13] = v11;
  return v3;
}

void sub_1C6B24928(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1C6B0C69C(255, a3, a4);
    v5 = sub_1C6D79C00();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C6B24980(uint64_t a1)
{
  if (!qword_1EDCDF760)
  {
    sub_1C6B24928(255, &unk_1EDCDF8F8, &qword_1EDCE7F20, 0x1E69B5598);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1C6D79D90();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF760);
    }
  }
}

uint64_t sub_1C6B24A00(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C6B24A48(uint64_t a1)
{
  if (!qword_1EDCE6670)
  {
    sub_1C6D77F80();
    v1 = sub_1C6D79820();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6670);
    }
  }
}

void sub_1C6B24AA0(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_1C6B24928(255, a3, a4, a5);
    v6 = sub_1C6D781C0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1C6B24B20(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C6B15828(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6B24B70()
{
  type metadata accessor for RecipeAutoFavoritesPersistence();
  v0 = swift_allocObject();
  sub_1C6B24BC8(0);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  return v0;
}

void sub_1C6B24BC8(uint64_t a1)
{
  if (!qword_1EDCDF768)
  {
    sub_1C6B0F658(255, &qword_1EDCE65D0, sub_1C6B11374, MEMORY[0x1E69E6720]);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1C6D79D90();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF768);
    }
  }
}

uint64_t sub_1C6B24C60()
{
  type metadata accessor for RecipeAutoFavoritesGroupingEligibilityPolicy();

  return swift_allocObject();
}

uint64_t sub_1C6B24C94()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE23C0 = result;
  return result;
}

void *sub_1C6B24DB8(void *a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v3 = [result possiblyUnfetchedAppConfiguration];
  swift_unknownObjectRelease();
  if ([v3 respondsToSelector_])
  {
    v4 = [v3 enableNewsPersonalizationAutoFavorites];
    swift_unknownObjectRelease();
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B0F7A8(0, &unk_1EDCE7E60, &protocolRef_FCAutoFavoritesPreparer);
    if (sub_1C6D77FB0())
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  swift_unknownObjectRelease();
LABEL_7:
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E60, &protocolRef_FCAutoFavoritesPreparer);
  result = sub_1C6D77FB0();
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

LABEL_8:
  MEMORY[0x1CCA55C20]();
  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C6D797C0();
  }

  sub_1C6D79800();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E60, &protocolRef_FCAutoFavoritesPreparer);
  result = sub_1C6D77FB0();
  if (!result)
  {
    goto LABEL_15;
  }

  MEMORY[0x1CCA55C20]();
  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C6D797C0();
  }

  sub_1C6D79800();
  type metadata accessor for AutoFavoritesPreparer();
  result = swift_allocObject();
  result[2] = v5;
  return result;
}

unint64_t sub_1C6B25098()
{
  result = qword_1EDCE6650;
  if (!qword_1EDCE6650)
  {
    sub_1C6B11310(255, &qword_1EDCE6658, MEMORY[0x1E69D67A0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE6650);
  }

  return result;
}

void sub_1C6B25120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6B25184()
{
  sub_1C6B25120(0, &qword_1EDCDF5A0, MEMORY[0x1E69D68C8], MEMORY[0x1E69E6F90]);
  v0 = sub_1C6D78120();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6D7E630;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x1E69D68C0], v0);
  v4 = sub_1C6B252D0(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

uint64_t sub_1C6B252D0(uint64_t a1)
{
  v2 = sub_1C6D78120();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_1C6B255E4(0);
    v11 = sub_1C6D79D30();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_1C6C07A7C(&qword_1EDCE5E10, MEMORY[0x1E69D68C8], MEMORY[0x1E69D68D0]);
      v18 = sub_1C6D79500();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_1C6C07A7C(&qword_1EC1D7AB8, MEMORY[0x1E69D68C8], MEMORY[0x1E69D68D8]);
          v25 = sub_1C6D79560();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1C6B255E4(uint64_t a1)
{
  if (!qword_1EDCDF790)
  {
    sub_1C6D78120();
    sub_1C6C07A7C(&qword_1EDCE5E10, MEMORY[0x1E69D68C8], MEMORY[0x1E69D68D0]);
    v1 = sub_1C6D79D40();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF790);
    }
  }
}

void *sub_1C6B25698(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &qword_1EDCE86E0, &protocol descriptor for BundleSubscriptionIsSubscribedProviderType, 1);
  result = sub_1C6D77FE0();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B37F88(0);
    result = sub_1C6D77FD0();
    if (result)
    {
      v3 = result;
      type metadata accessor for TagEvaluator();
      v4 = swift_allocObject();
      sub_1C6B15E34(&v5, v4 + 16);
      *(v4 + 56) = v3;
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C6B2579C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE9290, &protocol descriptor for ConfigurationManagerType, 1);
  result = sub_1C6D77FE0();
  v3 = v9;
  if (v9)
  {
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v4 + 8))(v6, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v8);
    if (v6[4] && (v7 & 1) != 0)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      type metadata accessor for EventHistoryAggregateStoreStateModeResolver();
      result = sub_1C6D77FD0();
      if (result)
      {
LABEL_7:
        v5 = result;
        sub_1C6B11190(v6);
        return v5;
      }

      __break(1u);
    }

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B0C69C(0, &qword_1EDCE7E80, 0x1E69B5448);
    result = sub_1C6D77FD0();
    if (result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C6B25928@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B37F88(0);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, &unk_1EDCDFC90, MEMORY[0x1E69B6160]);
  result = sub_1C6D77FE0();
  if (!v12)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, qword_1EDCE92B0, &protocol descriptor for UserContextProviderType);
  result = sub_1C6D77FE0();
  if (v10)
  {
    sub_1C6D30E5C(0);
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    sub_1C6B15E34(&v11, v8 + 24);
    result = sub_1C6B15E34(&v9, v8 + 64);
    a2[3] = v7;
    a2[4] = &off_1F4679418;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C6B25A90(uint64_t a1)
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

uint64_t sub_1C6B25B48(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1C6D75BE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D75BD0();
  v11 = a1;
  a4(v10);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1C6B25C38()
{
  if (qword_1EDCE2398 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDCE23A0;
  sub_1C6B1D314(0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C6D7E630;
  sub_1C6D75BE0();
  sub_1C6CBFBA8();
  v2 = sub_1C6D7A0E0();
  v4 = v3;
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 64) = sub_1C6B2064C();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  v5 = sub_1C6D79AC0();
  sub_1C6D78D30("applicationDidBecomeActive, notification=%{public}@", 51, 2, &dword_1C6B09000, v0, v5, v1, 1, 2);

  sub_1C6D74728(v11);
  v6 = v11[3];

  v7 = [v6 unloadGraphOnBackgroundConfiguration];

  LODWORD(v6) = [v7 enabled];
  v8 = sub_1C6D79AC0();
  if (v6)
  {
    sub_1C6D78D30("See app becoming active", 23, 2, &dword_1C6B09000, v0, v8, MEMORY[0x1E69E7CC0]);
    return sub_1C6D784B0();
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];

    return sub_1C6D78D30("See app becoming active but unload graph on background as disabled, doing nothing to work service", 97, 2, &dword_1C6B09000, v0, v8, v10);
  }
}

uint64_t sub_1C6B25F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}