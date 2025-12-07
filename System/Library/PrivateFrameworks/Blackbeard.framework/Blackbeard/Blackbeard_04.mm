uint64_t sub_1E5E67618()
{
  v110 = type metadata accessor for AppComposer(0);
  v108 = *(*(v110 - 1) + 80);
  v1 = (v108 + 16) & ~v108;
  v2 = v1 + *(*(v110 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v107 = *(*(v3 - 8) + 80);
  v104 = *(*(v3 - 8) + 64);
  v4 = sub_1E65D76F8();
  v105 = *(v4 - 8);
  v106 = v4;
  v103 = *(v105 + 80);
  v109 = v0;
  v100 = v0 + v1;

  v5 = v0 + v1 + v110[5];
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment(0);
  v7 = v6[6];
  v102 = type metadata accessor for AccountService();
  v101 = *(v102[-1].Description + 1);
  v101(v5 + v7, v102);
  v8 = v6[7];
  v99 = type metadata accessor for AppStateService();
  v98 = *(v99[-1].Description + 1);
  v98(v5 + v8, v99);
  v9 = v6[8];
  v97 = type metadata accessor for ArchivedSessionService();
  v96 = *(v97[-1].Description + 1);
  v96(v5 + v9, v97);
  v10 = v6[9];
  v95 = type metadata accessor for AssetService();
  v94 = *(v95[-1].Description + 1);
  v94(v5 + v10, v95);
  v11 = v6[10];
  v93 = type metadata accessor for AwardsService();
  v92 = *(v93[-1].Description + 1);
  v92(v5 + v11, v93);
  v12 = v6[11];
  v91 = type metadata accessor for BookmarkService();
  v90 = *(v91[-1].Description + 1);
  v90(v5 + v12, v91);
  v13 = v6[12];
  v89 = type metadata accessor for CatalogService();
  v88 = *(v89[-1].Description + 1);
  v88(v5 + v13, v89);
  v14 = v6[13];
  v87 = type metadata accessor for ConfigurationService();
  v86 = *(v87[-1].Description + 1);
  v86(v5 + v14, v87);
  v15 = v6[14];
  v85 = type metadata accessor for ContentAvailabilityService();
  v84 = *(v85[-1].Description + 1);
  v84(v5 + v15, v85);
  v16 = v6[15];
  v83 = type metadata accessor for EngagementService();
  v82 = *(v83[-1].Description + 1);
  v82(v5 + v16, v83);
  v17 = v6[16];
  v81 = type metadata accessor for HealthDataService();
  v80 = *(v81[-1].Description + 1);
  v80(v5 + v17, v81);
  v18 = v6[17];
  v79 = type metadata accessor for InteropService();
  v78 = *(v79[-1].Description + 1);
  v78(v5 + v18, v79);
  v19 = v6[18];
  v77 = type metadata accessor for LocalizationService();
  v76 = *(v77[-1].Description + 1);
  v76(v5 + v19, v77);
  v20 = v6[19];
  v75 = type metadata accessor for MarketingService();
  v74 = *(v75[-1].Description + 1);
  v74(v5 + v20, v75);
  v21 = v6[20];
  v73 = type metadata accessor for MetricService();
  v72 = *(v73[-1].Description + 1);
  v72(v5 + v21, v73);
  v22 = v6[21];
  v71 = type metadata accessor for PersonalizationService();
  v70 = *(v71[-1].Description + 1);
  v70(v5 + v22, v71);
  v23 = v6[22];
  v69 = type metadata accessor for PlayerService();
  v68 = *(v69[-1].Description + 1);
  v68(v5 + v23, v69);
  v24 = v6[23];
  v67 = type metadata accessor for PrivacyPreferenceService();
  v66 = *(v67[-1].Description + 1);
  v66(v5 + v24, v67);
  v25 = v6[24];
  v65 = type metadata accessor for RecommendationService();
  v64 = *(v65[-1].Description + 1);
  v64(v5 + v25, v65);
  v26 = v6[25];
  v63 = type metadata accessor for RemoteBrowsingService();
  v62 = *(v63[-1].Description + 1);
  v62(v5 + v26, v63);
  v27 = v6[26];
  v61 = type metadata accessor for SearchService();
  v60 = *(v61[-1].Description + 1);
  v60(v5 + v27, v61);
  v28 = v6[27];
  v59 = type metadata accessor for ServiceSubscriptionService();
  v58 = *(v59[-1].Description + 1);
  v58(v5 + v28, v59);
  v29 = v6[28];
  v52 = type metadata accessor for SessionService();
  v57 = *(v52[-1].Description + 1);
  v57(v5 + v29, v52);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v56 = *(v31[-1].Description + 1);
  v56(v5 + v30, v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v55 = *(v33[-1].Description + 1);
  v55(v5 + v32, v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v54 = *(v35[-1].Description + 1);
  v54(v5 + v34, v35);

  v36 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v53 = *(QueueService[-1].Description + 1);
  v53(v5 + v36, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v5 + v6[34]));

  v38 = v6[36];
  v39 = type metadata accessor for WorkoutPlanService();
  v51 = *(v39[-1].Description + 1);
  v51(v5 + v38, v39);

  v40 = v100 + v110[7];

  v41 = v40 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v101(v41 + v6[6], v102);
  v98(v41 + v6[7], v99);
  v96(v41 + v6[8], v97);
  v94(v41 + v6[9], v95);
  v92(v41 + v6[10], v93);
  v90(v41 + v6[11], v91);
  v88(v41 + v6[12], v89);
  v86(v41 + v6[13], v87);
  v84(v41 + v6[14], v85);
  v82(v41 + v6[15], v83);
  v80(v41 + v6[16], v81);
  v78(v41 + v6[17], v79);
  v76(v41 + v6[18], v77);
  v74(v41 + v6[19], v75);
  v72(v41 + v6[20], v73);
  v70(v41 + v6[21], v71);
  v68(v41 + v6[22], v69);
  v66(v41 + v6[23], v67);
  v64(v41 + v6[24], v65);
  v62(v41 + v6[25], v63);
  v60(v41 + v6[26], v61);
  v58(v41 + v6[27], v59);
  v57(v41 + v6[28], v52);
  v56(v41 + v6[29], v31);
  v55(v41 + v6[30], v33);
  v54(v41 + v6[31], v35);

  v53(v41 + v6[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v41 + v6[34]));

  v51(v41 + v6[36], v39);
  swift_unknownObjectRelease();
  if (*(v100 + v110[9] + 8) >= 0xCuLL)
  {
  }

  v42 = (v2 + v107) & ~v107;
  v43 = (v100 + v110[10]);
  if (v43[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v44 = v109 + v42;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v44, *(v44 + 8), *(v44 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v46 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D60, &unk_1E65F72D0) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v47 = swift_getEnumCaseMultiPayload();
    if (v47 == 2)
    {
    }

    else if (v47 == 1)
    {
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v49 = sub_1E65D76A8();
      (*(*(v49 - 8) + 8))(v46 + v48, v49);
    }
  }

  (*(v105 + 8))(v109 + ((v42 + v104 + v103) & ~v103), v106);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E68528()
{
  v110 = type metadata accessor for AppComposer(0);
  v108 = *(*(v110 - 1) + 80);
  v1 = (v108 + 16) & ~v108;
  v2 = v1 + *(*(v110 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  v107 = *(*(v3 - 8) + 80);
  v104 = *(*(v3 - 8) + 64);
  v4 = sub_1E65D76F8();
  v105 = *(v4 - 8);
  v106 = v4;
  v103 = *(v105 + 80);
  v109 = v0;
  v100 = v0 + v1;

  v5 = v0 + v1 + v110[5];
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment(0);
  v7 = v6[6];
  v102 = type metadata accessor for AccountService();
  v101 = *(v102[-1].Description + 1);
  v101(v5 + v7, v102);
  v8 = v6[7];
  v99 = type metadata accessor for AppStateService();
  v98 = *(v99[-1].Description + 1);
  v98(v5 + v8, v99);
  v9 = v6[8];
  v97 = type metadata accessor for ArchivedSessionService();
  v96 = *(v97[-1].Description + 1);
  v96(v5 + v9, v97);
  v10 = v6[9];
  v95 = type metadata accessor for AssetService();
  v94 = *(v95[-1].Description + 1);
  v94(v5 + v10, v95);
  v11 = v6[10];
  v93 = type metadata accessor for AwardsService();
  v92 = *(v93[-1].Description + 1);
  v92(v5 + v11, v93);
  v12 = v6[11];
  v91 = type metadata accessor for BookmarkService();
  v90 = *(v91[-1].Description + 1);
  v90(v5 + v12, v91);
  v13 = v6[12];
  v89 = type metadata accessor for CatalogService();
  v88 = *(v89[-1].Description + 1);
  v88(v5 + v13, v89);
  v14 = v6[13];
  v87 = type metadata accessor for ConfigurationService();
  v86 = *(v87[-1].Description + 1);
  v86(v5 + v14, v87);
  v15 = v6[14];
  v85 = type metadata accessor for ContentAvailabilityService();
  v84 = *(v85[-1].Description + 1);
  v84(v5 + v15, v85);
  v16 = v6[15];
  v83 = type metadata accessor for EngagementService();
  v82 = *(v83[-1].Description + 1);
  v82(v5 + v16, v83);
  v17 = v6[16];
  v81 = type metadata accessor for HealthDataService();
  v80 = *(v81[-1].Description + 1);
  v80(v5 + v17, v81);
  v18 = v6[17];
  v79 = type metadata accessor for InteropService();
  v78 = *(v79[-1].Description + 1);
  v78(v5 + v18, v79);
  v19 = v6[18];
  v77 = type metadata accessor for LocalizationService();
  v76 = *(v77[-1].Description + 1);
  v76(v5 + v19, v77);
  v20 = v6[19];
  v75 = type metadata accessor for MarketingService();
  v74 = *(v75[-1].Description + 1);
  v74(v5 + v20, v75);
  v21 = v6[20];
  v73 = type metadata accessor for MetricService();
  v72 = *(v73[-1].Description + 1);
  v72(v5 + v21, v73);
  v22 = v6[21];
  v71 = type metadata accessor for PersonalizationService();
  v70 = *(v71[-1].Description + 1);
  v70(v5 + v22, v71);
  v23 = v6[22];
  v69 = type metadata accessor for PlayerService();
  v68 = *(v69[-1].Description + 1);
  v68(v5 + v23, v69);
  v24 = v6[23];
  v67 = type metadata accessor for PrivacyPreferenceService();
  v66 = *(v67[-1].Description + 1);
  v66(v5 + v24, v67);
  v25 = v6[24];
  v65 = type metadata accessor for RecommendationService();
  v64 = *(v65[-1].Description + 1);
  v64(v5 + v25, v65);
  v26 = v6[25];
  v63 = type metadata accessor for RemoteBrowsingService();
  v62 = *(v63[-1].Description + 1);
  v62(v5 + v26, v63);
  v27 = v6[26];
  v61 = type metadata accessor for SearchService();
  v60 = *(v61[-1].Description + 1);
  v60(v5 + v27, v61);
  v28 = v6[27];
  v59 = type metadata accessor for ServiceSubscriptionService();
  v58 = *(v59[-1].Description + 1);
  v58(v5 + v28, v59);
  v29 = v6[28];
  v52 = type metadata accessor for SessionService();
  v57 = *(v52[-1].Description + 1);
  v57(v5 + v29, v52);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v56 = *(v31[-1].Description + 1);
  v56(v5 + v30, v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v55 = *(v33[-1].Description + 1);
  v55(v5 + v32, v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v54 = *(v35[-1].Description + 1);
  v54(v5 + v34, v35);

  v36 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v53 = *(QueueService[-1].Description + 1);
  v53(v5 + v36, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v5 + v6[34]));

  v38 = v6[36];
  v39 = type metadata accessor for WorkoutPlanService();
  v51 = *(v39[-1].Description + 1);
  v51(v5 + v38, v39);

  v40 = v100 + v110[7];

  v41 = v40 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v101(v41 + v6[6], v102);
  v98(v41 + v6[7], v99);
  v96(v41 + v6[8], v97);
  v94(v41 + v6[9], v95);
  v92(v41 + v6[10], v93);
  v90(v41 + v6[11], v91);
  v88(v41 + v6[12], v89);
  v86(v41 + v6[13], v87);
  v84(v41 + v6[14], v85);
  v82(v41 + v6[15], v83);
  v80(v41 + v6[16], v81);
  v78(v41 + v6[17], v79);
  v76(v41 + v6[18], v77);
  v74(v41 + v6[19], v75);
  v72(v41 + v6[20], v73);
  v70(v41 + v6[21], v71);
  v68(v41 + v6[22], v69);
  v66(v41 + v6[23], v67);
  v64(v41 + v6[24], v65);
  v62(v41 + v6[25], v63);
  v60(v41 + v6[26], v61);
  v58(v41 + v6[27], v59);
  v57(v41 + v6[28], v52);
  v56(v41 + v6[29], v31);
  v55(v41 + v6[30], v33);
  v54(v41 + v6[31], v35);

  v53(v41 + v6[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v41 + v6[34]));

  v51(v41 + v6[36], v39);
  swift_unknownObjectRelease();
  if (*(v100 + v110[9] + 8) >= 0xCuLL)
  {
  }

  v42 = (v2 + v107) & ~v107;
  v43 = (v100 + v110[10]);
  if (v43[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v44 = v109 + v42;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v44, *(v44 + 8), *(v44 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v46 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E00, &unk_1E65F4350) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v47 = swift_getEnumCaseMultiPayload();
    if (v47 == 2)
    {
    }

    else if (v47 == 1)
    {
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v49 = sub_1E65D76A8();
      (*(*(v49 - 8) + 8))(v46 + v48, v49);
    }
  }

  (*(v105 + 8))(v109 + ((v104 + v42 + v103 + 1) & ~v103), v106);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E69424()
{
  v109 = type metadata accessor for AppComposer(0);
  v107 = *(*(v109 - 1) + 80);
  v1 = (v107 + 16) & ~v107;
  v2 = v1 + *(*(v109 - 1) + 64);
  v106 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0) - 8) + 80);
  v105 = v2 + v106;
  v108 = v0;
  v102 = v0 + v1;

  v3 = v0 + v1 + v109[5];
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment(0);
  v5 = v4[6];
  v104 = type metadata accessor for AccountService();
  v103 = *(v104[-1].Description + 1);
  v103(v3 + v5, v104);
  v6 = v4[7];
  v101 = type metadata accessor for AppStateService();
  v100 = *(v101[-1].Description + 1);
  v100(v3 + v6, v101);
  v7 = v4[8];
  v99 = type metadata accessor for ArchivedSessionService();
  v98 = *(v99[-1].Description + 1);
  v98(v3 + v7, v99);
  v8 = v4[9];
  v97 = type metadata accessor for AssetService();
  v96 = *(v97[-1].Description + 1);
  v96(v3 + v8, v97);
  v9 = v4[10];
  v95 = type metadata accessor for AwardsService();
  v94 = *(v95[-1].Description + 1);
  v94(v3 + v9, v95);
  v10 = v4[11];
  v93 = type metadata accessor for BookmarkService();
  v92 = *(v93[-1].Description + 1);
  v92(v3 + v10, v93);
  v11 = v4[12];
  v91 = type metadata accessor for CatalogService();
  v90 = *(v91[-1].Description + 1);
  v90(v3 + v11, v91);
  v12 = v4[13];
  v89 = type metadata accessor for ConfigurationService();
  v88 = *(v89[-1].Description + 1);
  v88(v3 + v12, v89);
  v13 = v4[14];
  v87 = type metadata accessor for ContentAvailabilityService();
  v86 = *(v87[-1].Description + 1);
  v86(v3 + v13, v87);
  v14 = v4[15];
  v85 = type metadata accessor for EngagementService();
  v84 = *(v85[-1].Description + 1);
  v84(v3 + v14, v85);
  v15 = v4[16];
  v83 = type metadata accessor for HealthDataService();
  v82 = *(v83[-1].Description + 1);
  v82(v3 + v15, v83);
  v16 = v4[17];
  v81 = type metadata accessor for InteropService();
  v80 = *(v81[-1].Description + 1);
  v80(v3 + v16, v81);
  v17 = v4[18];
  v79 = type metadata accessor for LocalizationService();
  v78 = *(v79[-1].Description + 1);
  v78(v3 + v17, v79);
  v18 = v4[19];
  v77 = type metadata accessor for MarketingService();
  v76 = *(v77[-1].Description + 1);
  v76(v3 + v18, v77);
  v19 = v4[20];
  v75 = type metadata accessor for MetricService();
  v74 = *(v75[-1].Description + 1);
  v74(v3 + v19, v75);
  v20 = v4[21];
  v73 = type metadata accessor for PersonalizationService();
  v72 = *(v73[-1].Description + 1);
  v72(v3 + v20, v73);
  v21 = v4[22];
  v71 = type metadata accessor for PlayerService();
  v70 = *(v71[-1].Description + 1);
  v70(v3 + v21, v71);
  v22 = v4[23];
  v69 = type metadata accessor for PrivacyPreferenceService();
  v68 = *(v69[-1].Description + 1);
  v68(v3 + v22, v69);
  v23 = v4[24];
  v67 = type metadata accessor for RecommendationService();
  v66 = *(v67[-1].Description + 1);
  v66(v3 + v23, v67);
  v24 = v4[25];
  v65 = type metadata accessor for RemoteBrowsingService();
  v64 = *(v65[-1].Description + 1);
  v64(v3 + v24, v65);
  v25 = v4[26];
  v63 = type metadata accessor for SearchService();
  v62 = *(v63[-1].Description + 1);
  v62(v3 + v25, v63);
  v26 = v4[27];
  v61 = type metadata accessor for ServiceSubscriptionService();
  v60 = *(v61[-1].Description + 1);
  v60(v3 + v26, v61);
  v27 = v4[28];
  v54 = type metadata accessor for SessionService();
  v59 = *(v54[-1].Description + 1);
  v59(v3 + v27, v54);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v58 = *(v29[-1].Description + 1);
  v58(v3 + v28, v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v57 = *(v31[-1].Description + 1);
  v57(v3 + v30, v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v56 = *(v33[-1].Description + 1);
  v56(v3 + v32, v33);

  v34 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v55 = *(QueueService[-1].Description + 1);
  v55(v3 + v34, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v3 + v4[34]));

  v36 = v4[36];
  v37 = type metadata accessor for WorkoutPlanService();
  v53 = *(v37[-1].Description + 1);
  v53(v3 + v36, v37);

  v38 = v102 + v109[7];

  v39 = v38 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v103(v39 + v4[6], v104);
  v100(v39 + v4[7], v101);
  v98(v39 + v4[8], v99);
  v96(v39 + v4[9], v97);
  v94(v39 + v4[10], v95);
  v92(v39 + v4[11], v93);
  v90(v39 + v4[12], v91);
  v88(v39 + v4[13], v89);
  v86(v39 + v4[14], v87);
  v84(v39 + v4[15], v85);
  v82(v39 + v4[16], v83);
  v80(v39 + v4[17], v81);
  v78(v39 + v4[18], v79);
  v76(v39 + v4[19], v77);
  v74(v39 + v4[20], v75);
  v72(v39 + v4[21], v73);
  v70(v39 + v4[22], v71);
  v68(v39 + v4[23], v69);
  v66(v39 + v4[24], v67);
  v64(v39 + v4[25], v65);
  v62(v39 + v4[26], v63);
  v60(v39 + v4[27], v61);
  v59(v39 + v4[28], v54);
  v58(v39 + v4[29], v29);
  v57(v39 + v4[30], v31);
  v56(v39 + v4[31], v33);

  v55(v39 + v4[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v39 + v4[34]));

  v53(v39 + v4[36], v37);
  swift_unknownObjectRelease();
  if (*(v102 + v109[9] + 8) >= 0xCuLL)
  {
  }

  v40 = (v102 + v109[10]);
  if (v40[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v42 = v108 + (v105 & ~v106) + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E10, &unk_1E65FABA0) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v43 = swift_getEnumCaseMultiPayload();
    switch(v43)
    {
      case 2:

        break;
      case 1:
        v45 = sub_1E65DE788();
        (*(*(v45 - 8) + 8))(v42, v45);
        v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v47 = sub_1E65D76A8();
        (*(*(v47 - 8) + 8))(v42 + v46, v47);
        break;
      case 0:
        v44 = sub_1E65DE788();
        (*(*(v44 - 8) + 8))(v42, v44);
        break;
    }

    v48 = v42 + *(type metadata accessor for StackButtonLoadState(0) + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v49 = swift_getEnumCaseMultiPayload();
    if (v49 == 2)
    {
    }

    else if (v49 == 1)
    {
      v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v51 = sub_1E65D76A8();
      (*(*(v51 - 8) + 8))(v48 + v50, v51);
    }
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E6A3A8()
{
  v92 = type metadata accessor for AppComposer(0);
  v1 = (*(*(v92 - 1) + 80) + 16) & ~*(*(v92 - 1) + 80);
  v96 = *(*(v92 - 1) + 64) + v1 + 7;
  v97 = v0;
  v2 = v0 + v1;
  v93 = v0 + v1;

  v3 = v2 + v92[5];
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment(0);
  v5 = v4[6];
  v95 = type metadata accessor for AccountService();
  v94 = *(v95[-1].Description + 1);
  v94(v3 + v5, v95);
  v6 = v4[7];
  v91 = type metadata accessor for AppStateService();
  v90 = *(v91[-1].Description + 1);
  v90(v3 + v6, v91);
  v7 = v4[8];
  v89 = type metadata accessor for ArchivedSessionService();
  v88 = *(v89[-1].Description + 1);
  v88(v3 + v7, v89);
  v8 = v4[9];
  v87 = type metadata accessor for AssetService();
  v86 = *(v87[-1].Description + 1);
  v86(v3 + v8, v87);
  v9 = v4[10];
  v85 = type metadata accessor for AwardsService();
  v84 = *(v85[-1].Description + 1);
  v84(v3 + v9, v85);
  v10 = v4[11];
  v83 = type metadata accessor for BookmarkService();
  v82 = *(v83[-1].Description + 1);
  v82(v3 + v10, v83);
  v11 = v4[12];
  v81 = type metadata accessor for CatalogService();
  v80 = *(v81[-1].Description + 1);
  v80(v3 + v11, v81);
  v12 = v4[13];
  v79 = type metadata accessor for ConfigurationService();
  v78 = *(v79[-1].Description + 1);
  v78(v3 + v12, v79);
  v13 = v4[14];
  v77 = type metadata accessor for ContentAvailabilityService();
  v76 = *(v77[-1].Description + 1);
  v76(v3 + v13, v77);
  v14 = v4[15];
  v75 = type metadata accessor for EngagementService();
  v74 = *(v75[-1].Description + 1);
  v74(v3 + v14, v75);
  v15 = v4[16];
  v73 = type metadata accessor for HealthDataService();
  v72 = *(v73[-1].Description + 1);
  v72(v3 + v15, v73);
  v16 = v4[17];
  v71 = type metadata accessor for InteropService();
  v70 = *(v71[-1].Description + 1);
  v70(v3 + v16, v71);
  v17 = v4[18];
  v69 = type metadata accessor for LocalizationService();
  v68 = *(v69[-1].Description + 1);
  v68(v3 + v17, v69);
  v18 = v4[19];
  v67 = type metadata accessor for MarketingService();
  v66 = *(v67[-1].Description + 1);
  v66(v3 + v18, v67);
  v19 = v4[20];
  v65 = type metadata accessor for MetricService();
  v64 = *(v65[-1].Description + 1);
  v64(v3 + v19, v65);
  v20 = v4[21];
  v63 = type metadata accessor for PersonalizationService();
  v62 = *(v63[-1].Description + 1);
  v62(v3 + v20, v63);
  v21 = v4[22];
  v61 = type metadata accessor for PlayerService();
  v60 = *(v61[-1].Description + 1);
  v60(v3 + v21, v61);
  v22 = v4[23];
  v59 = type metadata accessor for PrivacyPreferenceService();
  v58 = *(v59[-1].Description + 1);
  v58(v3 + v22, v59);
  v23 = v4[24];
  v57 = type metadata accessor for RecommendationService();
  v56 = *(v57[-1].Description + 1);
  v56(v3 + v23, v57);
  v24 = v4[25];
  v55 = type metadata accessor for RemoteBrowsingService();
  v54 = *(v55[-1].Description + 1);
  v54(v3 + v24, v55);
  v25 = v4[26];
  v53 = type metadata accessor for SearchService();
  v52 = *(v53[-1].Description + 1);
  v52(v3 + v25, v53);
  v26 = v4[27];
  v46 = type metadata accessor for ServiceSubscriptionService();
  v51 = *(v46[-1].Description + 1);
  v51(v3 + v26, v46);
  v27 = v4[28];
  v44 = type metadata accessor for SessionService();
  v50 = *(v44[-1].Description + 1);
  v50(v3 + v27, v44);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v49 = *(v29[-1].Description + 1);
  v49(v3 + v28, v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v48 = *(v31[-1].Description + 1);
  v48(v3 + v30, v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v47 = *(v33[-1].Description + 1);
  v47(v3 + v32, v33);

  v34 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v45 = *(QueueService[-1].Description + 1);
  v45(v3 + v34, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v3 + v4[34]));

  v36 = v4[36];
  v37 = type metadata accessor for WorkoutPlanService();
  v38 = *(v37[-1].Description + 1);
  v38(v3 + v36, v37);

  v39 = v93 + v92[7];

  v40 = v39 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v94(v40 + v4[6], v95);
  v90(v40 + v4[7], v91);
  v88(v40 + v4[8], v89);
  v86(v40 + v4[9], v87);
  v84(v40 + v4[10], v85);
  v82(v40 + v4[11], v83);
  v80(v40 + v4[12], v81);
  v78(v40 + v4[13], v79);
  v76(v40 + v4[14], v77);
  v74(v40 + v4[15], v75);
  v72(v40 + v4[16], v73);
  v70(v40 + v4[17], v71);
  v68(v40 + v4[18], v69);
  v66(v40 + v4[19], v67);
  v64(v40 + v4[20], v65);
  v62(v40 + v4[21], v63);
  v60(v40 + v4[22], v61);
  v58(v40 + v4[23], v59);
  v56(v40 + v4[24], v57);
  v54(v40 + v4[25], v55);
  v52(v40 + v4[26], v53);
  v51(v40 + v4[27], v46);
  v50(v40 + v4[28], v44);
  v49(v40 + v4[29], v29);
  v48(v40 + v4[30], v31);
  v47(v40 + v4[31], v33);

  v45(v40 + v4[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v40 + v4[34]));

  v38(v40 + v4[36], v37);
  swift_unknownObjectRelease();
  if (*(v93 + v92[9] + 8) >= 0xCuLL)
  {
  }

  v41 = v96 & 0xFFFFFFFFFFFFFFF8;
  v42 = (v93 + v92[10]);
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  if (*(v97 + v41))
  {
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1((v97 + ((v41 + 87) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1E5E6B0BC()
{
  v118 = type metadata accessor for AppComposer(0);
  v116 = *(*(v118 - 1) + 80);
  v1 = (v116 + 16) & ~v116;
  v2 = v1 + *(*(v118 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480);
  v115 = *(*(v3 - 8) + 80);
  v112 = *(*(v3 - 8) + 64);
  v4 = sub_1E65D76F8();
  v113 = *(v4 - 8);
  v114 = v4;
  v111 = *(v113 + 80);
  v110 = *(v113 + 64);
  v117 = v0;
  v107 = v0 + v1;

  v5 = v0 + v1 + v118[5];
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment(0);
  v7 = v6[6];
  v109 = type metadata accessor for AccountService();
  v108 = *(v109[-1].Description + 1);
  v108(v5 + v7, v109);
  v8 = v6[7];
  v106 = type metadata accessor for AppStateService();
  v105 = *(v106[-1].Description + 1);
  v105(v5 + v8, v106);
  v9 = v6[8];
  v104 = type metadata accessor for ArchivedSessionService();
  v103 = *(v104[-1].Description + 1);
  v103(v5 + v9, v104);
  v10 = v6[9];
  v102 = type metadata accessor for AssetService();
  v101 = *(v102[-1].Description + 1);
  v101(v5 + v10, v102);
  v11 = v6[10];
  v100 = type metadata accessor for AwardsService();
  v99 = *(v100[-1].Description + 1);
  v99(v5 + v11, v100);
  v12 = v6[11];
  v98 = type metadata accessor for BookmarkService();
  v97 = *(v98[-1].Description + 1);
  v97(v5 + v12, v98);
  v13 = v6[12];
  v96 = type metadata accessor for CatalogService();
  v95 = *(v96[-1].Description + 1);
  v95(v5 + v13, v96);
  v14 = v6[13];
  v94 = type metadata accessor for ConfigurationService();
  v93 = *(v94[-1].Description + 1);
  v93(v5 + v14, v94);
  v15 = v6[14];
  v92 = type metadata accessor for ContentAvailabilityService();
  v91 = *(v92[-1].Description + 1);
  v91(v5 + v15, v92);
  v16 = v6[15];
  v90 = type metadata accessor for EngagementService();
  v89 = *(v90[-1].Description + 1);
  v89(v5 + v16, v90);
  v17 = v6[16];
  v88 = type metadata accessor for HealthDataService();
  v87 = *(v88[-1].Description + 1);
  v87(v5 + v17, v88);
  v18 = v6[17];
  v86 = type metadata accessor for InteropService();
  v85 = *(v86[-1].Description + 1);
  v85(v5 + v18, v86);
  v19 = v6[18];
  v84 = type metadata accessor for LocalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(v5 + v19, v84);
  v20 = v6[19];
  v82 = type metadata accessor for MarketingService();
  v81 = *(v82[-1].Description + 1);
  v81(v5 + v20, v82);
  v21 = v6[20];
  v80 = type metadata accessor for MetricService();
  v79 = *(v80[-1].Description + 1);
  v79(v5 + v21, v80);
  v22 = v6[21];
  v78 = type metadata accessor for PersonalizationService();
  v77 = *(v78[-1].Description + 1);
  v77(v5 + v22, v78);
  v23 = v6[22];
  v76 = type metadata accessor for PlayerService();
  v75 = *(v76[-1].Description + 1);
  v75(v5 + v23, v76);
  v24 = v6[23];
  v74 = type metadata accessor for PrivacyPreferenceService();
  v73 = *(v74[-1].Description + 1);
  v73(v5 + v24, v74);
  v25 = v6[24];
  v72 = type metadata accessor for RecommendationService();
  v71 = *(v72[-1].Description + 1);
  v71(v5 + v25, v72);
  v26 = v6[25];
  v70 = type metadata accessor for RemoteBrowsingService();
  v69 = *(v70[-1].Description + 1);
  v69(v5 + v26, v70);
  v27 = v6[26];
  v68 = type metadata accessor for SearchService();
  v67 = *(v68[-1].Description + 1);
  v67(v5 + v27, v68);
  v28 = v6[27];
  v66 = type metadata accessor for ServiceSubscriptionService();
  v65 = *(v66[-1].Description + 1);
  v65(v5 + v28, v66);
  v29 = v6[28];
  v59 = type metadata accessor for SessionService();
  v64 = *(v59[-1].Description + 1);
  v64(v5 + v29, v59);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v63 = *(v31[-1].Description + 1);
  v63(v5 + v30, v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v62 = *(v33[-1].Description + 1);
  v62(v5 + v32, v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v61 = *(v35[-1].Description + 1);
  v61(v5 + v34, v35);

  v36 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v60 = *(QueueService[-1].Description + 1);
  v60(v5 + v36, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v5 + v6[34]));

  v38 = v6[36];
  v39 = type metadata accessor for WorkoutPlanService();
  v58 = *(v39[-1].Description + 1);
  v58(v5 + v38, v39);

  v40 = v107 + v118[7];

  v41 = v40 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v108(v41 + v6[6], v109);
  v105(v41 + v6[7], v106);
  v103(v41 + v6[8], v104);
  v101(v41 + v6[9], v102);
  v99(v41 + v6[10], v100);
  v97(v41 + v6[11], v98);
  v95(v41 + v6[12], v96);
  v93(v41 + v6[13], v94);
  v91(v41 + v6[14], v92);
  v89(v41 + v6[15], v90);
  v87(v41 + v6[16], v88);
  v85(v41 + v6[17], v86);
  v83(v41 + v6[18], v84);
  v81(v41 + v6[19], v82);
  v79(v41 + v6[20], v80);
  v77(v41 + v6[21], v78);
  v75(v41 + v6[22], v76);
  v73(v41 + v6[23], v74);
  v71(v41 + v6[24], v72);
  v69(v41 + v6[25], v70);
  v67(v41 + v6[26], v68);
  v65(v41 + v6[27], v66);
  v64(v41 + v6[28], v59);
  v63(v41 + v6[29], v31);
  v62(v41 + v6[30], v33);
  v61(v41 + v6[31], v35);

  v60(v41 + v6[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v41 + v6[34]));

  v58(v41 + v6[36], v39);
  swift_unknownObjectRelease();
  if (*(v107 + v118[9] + 8) >= 0xCuLL)
  {
  }

  v42 = (v2 + v115) & ~v115;
  v43 = (v107 + v118[10]);
  if (v43[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v45 = v117 + v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C0, &unk_1E65F7310) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v46 = swift_getEnumCaseMultiPayload();
    switch(v46)
    {
      case 2:

        break;
      case 1:
        v48 = sub_1E65DE788();
        (*(*(v48 - 8) + 8))(v45, v48);
        v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v50 = sub_1E65D76A8();
        (*(*(v50 - 8) + 8))(v45 + v49, v50);
        break;
      case 0:
        v47 = sub_1E65DE788();
        (*(*(v47 - 8) + 8))(v45, v47);
        break;
    }

    v51 = v45 + *(type metadata accessor for DynamicStartWorkoutButtonLoadState(0) + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v52 = swift_getEnumCaseMultiPayload();
    if (v52 == 2)
    {
    }

    else if (v52 == 1)
    {
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v54 = sub_1E65D76A8();
      (*(*(v54 - 8) + 8))(v51 + v53, v54);
    }
  }

  v55 = (v42 + v112 + v111) & ~v111;
  v56 = (v110 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v113 + 8))(v117 + v55, v114);
  __swift_destroy_boxed_opaque_existential_1((v117 + v56));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E6C0C8()
{
  v124 = type metadata accessor for AppComposer(0);
  v122 = *(*(v124 - 1) + 80);
  v1 = (v122 + 32) & ~v122;
  v2 = v1 + *(*(v124 - 1) + 64);
  v121 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560) - 8) + 80);
  v120 = v2 + v121;
  swift_unknownObjectRelease();
  v123 = v0;
  v117 = v0 + v1;

  v3 = v0 + v1 + v124[5];
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment(0);
  v5 = v4[6];
  v119 = type metadata accessor for AccountService();
  v118 = *(v119[-1].Description + 1);
  v118(v3 + v5, v119);
  v6 = v4[7];
  v116 = type metadata accessor for AppStateService();
  v115 = *(v116[-1].Description + 1);
  v115(v3 + v6, v116);
  v7 = v4[8];
  v114 = type metadata accessor for ArchivedSessionService();
  v113 = *(v114[-1].Description + 1);
  v113(v3 + v7, v114);
  v8 = v4[9];
  v112 = type metadata accessor for AssetService();
  v111 = *(v112[-1].Description + 1);
  v111(v3 + v8, v112);
  v9 = v4[10];
  v110 = type metadata accessor for AwardsService();
  v109 = *(v110[-1].Description + 1);
  v109(v3 + v9, v110);
  v10 = v4[11];
  v108 = type metadata accessor for BookmarkService();
  v107 = *(v108[-1].Description + 1);
  v107(v3 + v10, v108);
  v11 = v4[12];
  v106 = type metadata accessor for CatalogService();
  v105 = *(v106[-1].Description + 1);
  v105(v3 + v11, v106);
  v12 = v4[13];
  v104 = type metadata accessor for ConfigurationService();
  v103 = *(v104[-1].Description + 1);
  v103(v3 + v12, v104);
  v13 = v4[14];
  v102 = type metadata accessor for ContentAvailabilityService();
  v101 = *(v102[-1].Description + 1);
  v101(v3 + v13, v102);
  v14 = v4[15];
  v100 = type metadata accessor for EngagementService();
  v99 = *(v100[-1].Description + 1);
  v99(v3 + v14, v100);
  v15 = v4[16];
  v98 = type metadata accessor for HealthDataService();
  v97 = *(v98[-1].Description + 1);
  v97(v3 + v15, v98);
  v16 = v4[17];
  v96 = type metadata accessor for InteropService();
  v95 = *(v96[-1].Description + 1);
  v95(v3 + v16, v96);
  v17 = v4[18];
  v94 = type metadata accessor for LocalizationService();
  v93 = *(v94[-1].Description + 1);
  v93(v3 + v17, v94);
  v18 = v4[19];
  v92 = type metadata accessor for MarketingService();
  v91 = *(v92[-1].Description + 1);
  v91(v3 + v18, v92);
  v19 = v4[20];
  v90 = type metadata accessor for MetricService();
  v89 = *(v90[-1].Description + 1);
  v89(v3 + v19, v90);
  v20 = v4[21];
  v88 = type metadata accessor for PersonalizationService();
  v87 = *(v88[-1].Description + 1);
  v87(v3 + v20, v88);
  v21 = v4[22];
  v86 = type metadata accessor for PlayerService();
  v85 = *(v86[-1].Description + 1);
  v85(v3 + v21, v86);
  v22 = v4[23];
  v84 = type metadata accessor for PrivacyPreferenceService();
  v83 = *(v84[-1].Description + 1);
  v83(v3 + v22, v84);
  v23 = v4[24];
  v82 = type metadata accessor for RecommendationService();
  v81 = *(v82[-1].Description + 1);
  v81(v3 + v23, v82);
  v24 = v4[25];
  v80 = type metadata accessor for RemoteBrowsingService();
  v79 = *(v80[-1].Description + 1);
  v79(v3 + v24, v80);
  v25 = v4[26];
  v78 = type metadata accessor for SearchService();
  v77 = *(v78[-1].Description + 1);
  v77(v3 + v25, v78);
  v26 = v4[27];
  v76 = type metadata accessor for ServiceSubscriptionService();
  v75 = *(v76[-1].Description + 1);
  v75(v3 + v26, v76);
  v27 = v4[28];
  v69 = type metadata accessor for SessionService();
  v74 = *(v69[-1].Description + 1);
  v74(v3 + v27, v69);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v73 = *(v29[-1].Description + 1);
  v73(v3 + v28, v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v72 = *(v31[-1].Description + 1);
  v72(v3 + v30, v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v71 = *(v33[-1].Description + 1);
  v71(v3 + v32, v33);

  v34 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v70 = *(QueueService[-1].Description + 1);
  v70(v3 + v34, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v3 + v4[34]));

  v36 = v4[36];
  v37 = type metadata accessor for WorkoutPlanService();
  v68 = *(v37[-1].Description + 1);
  v68(v3 + v36, v37);

  v38 = v117 + v124[7];

  v39 = v38 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v118(v39 + v4[6], v119);
  v115(v39 + v4[7], v116);
  v113(v39 + v4[8], v114);
  v111(v39 + v4[9], v112);
  v109(v39 + v4[10], v110);
  v107(v39 + v4[11], v108);
  v105(v39 + v4[12], v106);
  v103(v39 + v4[13], v104);
  v101(v39 + v4[14], v102);
  v99(v39 + v4[15], v100);
  v97(v39 + v4[16], v98);
  v95(v39 + v4[17], v96);
  v93(v39 + v4[18], v94);
  v91(v39 + v4[19], v92);
  v89(v39 + v4[20], v90);
  v87(v39 + v4[21], v88);
  v85(v39 + v4[22], v86);
  v83(v39 + v4[23], v84);
  v81(v39 + v4[24], v82);
  v79(v39 + v4[25], v80);
  v77(v39 + v4[26], v78);
  v75(v39 + v4[27], v76);
  v74(v39 + v4[28], v69);
  v73(v39 + v4[29], v29);
  v72(v39 + v4[30], v31);
  v71(v39 + v4[31], v33);

  v70(v39 + v4[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v39 + v4[34]));

  v68(v39 + v4[36], v37);
  swift_unknownObjectRelease();
  if (*(v117 + v124[9] + 8) >= 0xCuLL)
  {
  }

  v40 = (v117 + v124[10]);
  if (v40[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v42 = v123 + (v120 & ~v121) + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073880, &qword_1E65EDC20) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v43 = swift_getEnumCaseMultiPayload();
    switch(v43)
    {
      case 2:

        break;
      case 1:
        v45 = sub_1E65DE788();
        (*(*(v45 - 8) + 8))(v42, v45);
        v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v47 = sub_1E65D76A8();
        (*(*(v47 - 8) + 8))(v42 + v46, v47);
        break;
      case 0:
        v44 = sub_1E65DE788();
        (*(*(v44 - 8) + 8))(v42, v44);
        break;
    }

    State = type metadata accessor for WorkoutActionsMenuLoadState(0);
    v49 = v42 + State[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v50 = swift_getEnumCaseMultiPayload();
    if (v50 == 2)
    {
    }

    else if (v50 == 1)
    {
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v52 = sub_1E65D76A8();
      (*(*(v52 - 8) + 8))(v49 + v51, v52);
    }

    v53 = v42 + State[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v54 = swift_getEnumCaseMultiPayload();
    if (v54 == 2)
    {
    }

    else if (v54 == 1)
    {
      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v56 = sub_1E65D76A8();
      (*(*(v56 - 8) + 8))(v53 + v55, v56);
    }

    v57 = v42 + State[7];
    v58 = swift_getEnumCaseMultiPayload();
    if (v58 == 2)
    {
    }

    else if (v58 == 1)
    {
      v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v60 = sub_1E65D76A8();
      (*(*(v60 - 8) + 8))(v57 + v59, v60);
    }

    v61 = v42 + State[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    v62 = swift_getEnumCaseMultiPayload();
    switch(v62)
    {
      case 2:

        break;
      case 1:
        v64 = sub_1E65DE508();
        (*(*(v64 - 8) + 8))(v61, v64);
        v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A400, &unk_1E65F7150) + 48);
        v66 = sub_1E65D76A8();
        (*(*(v66 - 8) + 8))(v61 + v65, v66);
        break;
      case 0:
        v63 = sub_1E65DE508();
        (*(*(v63 - 8) + 8))(v61, v63);
        break;
    }
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E6D308@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1E694B870]();
  *a1 = result;
  return result;
}

uint64_t sub_1E5E6D360@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E65E3F38();
  *a1 = result;
  return result;
}

uint64_t sub_1E5E6D404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E65D76F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    type metadata accessor for ContextMenu.Context(0);
    v10 = *(a3 + 20);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
    v12 = *(*(v11 - 8) + 48);

    return v12(a1 + v10, a2, v11);
  }
}

uint64_t sub_1E5E6D508(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E65D76F8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    type metadata accessor for ContextMenu.Context(0);
    v12 = *(a4 + 20);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
    v14 = *(*(v13 - 8) + 56);

    return v14(a1 + v12, a2, a2, v13);
  }
}

uint64_t sub_1E5E6D628()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5E6D668()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E6D6A8()
{
  v1 = type metadata accessor for AssetService();
  (*(v1[-1].Description + 1))(v0 + ((*(v1[-1].Description + 80) + 16) & ~*(v1[-1].Description + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E6D748()
{
  v1 = type metadata accessor for AppStateService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 32) & ~*(Description + 80);
  swift_unknownObjectRelease();
  Description[1](v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E6D83C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E6D888()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1E5E6D8D8()
{
  v1 = sub_1E65D9D28();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E6D99C()
{
  v1 = sub_1E65D9D28();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E6DA68()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1E5E6DAB8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5E6DB0C()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);

  v89 = v0 + ((v92 + 32) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E6E808()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);

  swift_unknownObjectRelease();
  v89 = v0 + ((v92 + 48) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E6F4FC()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);

  swift_unknownObjectRelease();
  v89 = v0 + ((v92 + 48) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E701F4()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);

  v89 = v0 + ((v92 + 32) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E70EC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DC8, &qword_1E65EEE18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5E70FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s8ResourceOMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483641)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 6;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_1E65D74E8();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1E5E71110(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s8ResourceOMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483641)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 + 5);
  }

  else
  {
    v11 = sub_1E65D74E8();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E5E71254()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5E7128C()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  v89 = v0 + ((v92 + 16) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E71F54()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  v89 = v0 + ((v92 + 16) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E72C1C()
{
  v100 = type metadata accessor for AppComposer(0);
  v97 = *(*(v100 - 1) + 80);
  v95 = *(*(v100 - 1) + 64);
  v98 = type metadata accessor for SectionMetrics(0);
  v94 = *(*(v98 - 8) + 80);
  v99 = v0;
  v96 = (v97 + 16) & ~v97;
  v91 = v0 + v96;

  v1 = v0 + v96 + v100[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v93 = type metadata accessor for AccountService();
  v92 = *(v93[-1].Description + 1);
  v92(v1 + v3, v93);
  v4 = v2[7];
  v90 = type metadata accessor for AppStateService();
  v89 = *(v90[-1].Description + 1);
  v89(v1 + v4, v90);
  v5 = v2[8];
  v88 = type metadata accessor for ArchivedSessionService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v5, v88);
  v6 = v2[9];
  v86 = type metadata accessor for AssetService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v6, v86);
  v7 = v2[10];
  v84 = type metadata accessor for AwardsService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v7, v84);
  v8 = v2[11];
  v82 = type metadata accessor for BookmarkService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v8, v82);
  v9 = v2[12];
  v80 = type metadata accessor for CatalogService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v9, v80);
  v10 = v2[13];
  v78 = type metadata accessor for ConfigurationService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v10, v78);
  v11 = v2[14];
  v76 = type metadata accessor for ContentAvailabilityService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v11, v76);
  v12 = v2[15];
  v74 = type metadata accessor for EngagementService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v12, v74);
  v13 = v2[16];
  v72 = type metadata accessor for HealthDataService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v13, v72);
  v14 = v2[17];
  v70 = type metadata accessor for InteropService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v14, v70);
  v15 = v2[18];
  v68 = type metadata accessor for LocalizationService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v15, v68);
  v16 = v2[19];
  v66 = type metadata accessor for MarketingService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v16, v66);
  v17 = v2[20];
  v64 = type metadata accessor for MetricService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v17, v64);
  v18 = v2[21];
  v62 = type metadata accessor for PersonalizationService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v18, v62);
  v19 = v2[22];
  v60 = type metadata accessor for PlayerService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v19, v60);
  v20 = v2[23];
  v58 = type metadata accessor for PrivacyPreferenceService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v20, v58);
  v21 = v2[24];
  v56 = type metadata accessor for RecommendationService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v21, v56);
  v22 = v2[25];
  v54 = type metadata accessor for RemoteBrowsingService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v22, v54);
  v23 = v2[26];
  v52 = type metadata accessor for SearchService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v23, v52);
  v24 = v2[27];
  v50 = type metadata accessor for ServiceSubscriptionService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v24, v50);
  v25 = v2[28];
  v43 = type metadata accessor for SessionService();
  v48 = *(v43[-1].Description + 1);
  v48(v1 + v25, v43);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v47 = *(v27[-1].Description + 1);
  v47(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v46 = *(v29[-1].Description + 1);
  v46(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v45 = *(v31[-1].Description + 1);
  v45(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v44 = *(QueueService[-1].Description + 1);
  v44(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v42 = *(v35[-1].Description + 1);
  v42(v1 + v34, v35);

  v36 = v91 + v100[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v92(v37 + v2[6], v93);
  v89(v37 + v2[7], v90);
  v87(v37 + v2[8], v88);
  v85(v37 + v2[9], v86);
  v83(v37 + v2[10], v84);
  v81(v37 + v2[11], v82);
  v79(v37 + v2[12], v80);
  v77(v37 + v2[13], v78);
  v75(v37 + v2[14], v76);
  v73(v37 + v2[15], v74);
  v71(v37 + v2[16], v72);
  v69(v37 + v2[17], v70);
  v67(v37 + v2[18], v68);
  v65(v37 + v2[19], v66);
  v63(v37 + v2[20], v64);
  v61(v37 + v2[21], v62);
  v59(v37 + v2[22], v60);
  v57(v37 + v2[23], v58);
  v55(v37 + v2[24], v56);
  v53(v37 + v2[25], v54);
  v51(v37 + v2[26], v52);
  v49(v37 + v2[27], v50);
  v48(v37 + v2[28], v43);
  v47(v37 + v2[29], v27);
  v46(v37 + v2[30], v29);
  v45(v37 + v2[31], v31);

  v44(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v42(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v91 + v100[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v91 + v100[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  swift_unknownObjectRelease();

  v39 = *(v98 + 24);
  v40 = sub_1E65D8F28();
  (*(*(v40 - 8) + 8))(v99 + ((((v95 + v96 + 7) & 0xFFFFFFFFFFFFFFF8) + v94 + 80) & ~v94) + v39, v40);

  return swift_deallocObject();
}

uint64_t sub_1E5E73A04()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074048, &qword_1E65EF200) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v15 = *(v1 + 64);
  v3 = type metadata accessor for SectionMetrics(0);
  v4 = *(*(v3 - 8) + 80);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074050, &qword_1E65EF208);
  if (!(*(*(v6 - 8) + 48))(v0 + v2, 1, v6))
  {
    v7 = sub_1E65D9CC8();
    (*(*(v7 - 8) + 8))(v0 + v2, v7);
    v8 = *(v6 + 48);
    v9 = sub_1E65E0388();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  v11 = v0 + ((v2 + v15 + v4) & ~v4);

  v12 = *(v3 + 24);
  v13 = sub_1E65D8F28();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E73CD0()
{
  v1 = type metadata accessor for BookmarkService();
  (*(v1[-1].Description + 1))(v0 + ((*(v1[-1].Description + 80) + 16) & ~*(v1[-1].Description + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E73D88()
{
  swift_unknownObjectRelease();

  sub_1E6001C2C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1E5E73DD4()
{

  return swift_deallocObject();
}

uint64_t sub_1E5E73E0C()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  v89 = v0 + ((v92 + 16) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E74AD0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppEnvironment(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1E5E74B7C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppEnvironment(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E5E74E74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5E74EEC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1E5E74F80()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v89 = v0 + ((v92 + 56) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E75C60()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);

  v89 = v0 + ((v92 + 24) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E76930()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  v89 = v0 + ((v92 + 16) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E77610()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  swift_unknownObjectRelease();
  v89 = v0 + ((v92 + 33) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E782F0()
{
  v1 = type metadata accessor for UIViewControllerRoutingContext(0);
  v99 = *(*(v1 - 8) + 80);
  v96 = *(*(v1 - 8) + 64);

  v100 = v0;
  v97 = (v99 + 24) & ~v99;
  v2 = (v0 + v97);

  v98 = v1;
  v95 = v2;
  v92 = v2 + *(v1 + 20);

  v101 = type metadata accessor for AppComposer(0);
  v3 = &v92[v101[5]];
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment(0);
  v5 = v4[6];
  v94 = type metadata accessor for AccountService();
  v93 = *(v94[-1].Description + 1);
  v93(&v3[v5], v94);
  v6 = v4[7];
  v91 = type metadata accessor for AppStateService();
  v90 = *(v91[-1].Description + 1);
  v90(&v3[v6], v91);
  v7 = v4[8];
  v89 = type metadata accessor for ArchivedSessionService();
  v88 = *(v89[-1].Description + 1);
  v88(&v3[v7], v89);
  v8 = v4[9];
  v87 = type metadata accessor for AssetService();
  v86 = *(v87[-1].Description + 1);
  v86(&v3[v8], v87);
  v9 = v4[10];
  v85 = type metadata accessor for AwardsService();
  v84 = *(v85[-1].Description + 1);
  v84(&v3[v9], v85);
  v10 = v4[11];
  v83 = type metadata accessor for BookmarkService();
  v82 = *(v83[-1].Description + 1);
  v82(&v3[v10], v83);
  v11 = v4[12];
  v81 = type metadata accessor for CatalogService();
  v80 = *(v81[-1].Description + 1);
  v80(&v3[v11], v81);
  v12 = v4[13];
  v79 = type metadata accessor for ConfigurationService();
  v78 = *(v79[-1].Description + 1);
  v78(&v3[v12], v79);
  v13 = v4[14];
  v77 = type metadata accessor for ContentAvailabilityService();
  v76 = *(v77[-1].Description + 1);
  v76(&v3[v13], v77);
  v14 = v4[15];
  v75 = type metadata accessor for EngagementService();
  v74 = *(v75[-1].Description + 1);
  v74(&v3[v14], v75);
  v15 = v4[16];
  v73 = type metadata accessor for HealthDataService();
  v72 = *(v73[-1].Description + 1);
  v72(&v3[v15], v73);
  v16 = v4[17];
  v71 = type metadata accessor for InteropService();
  v70 = *(v71[-1].Description + 1);
  v70(&v3[v16], v71);
  v17 = v4[18];
  v69 = type metadata accessor for LocalizationService();
  v68 = *(v69[-1].Description + 1);
  v68(&v3[v17], v69);
  v18 = v4[19];
  v67 = type metadata accessor for MarketingService();
  v66 = *(v67[-1].Description + 1);
  v66(&v3[v18], v67);
  v19 = v4[20];
  v65 = type metadata accessor for MetricService();
  v64 = *(v65[-1].Description + 1);
  v64(&v3[v19], v65);
  v20 = v4[21];
  v63 = type metadata accessor for PersonalizationService();
  v62 = *(v63[-1].Description + 1);
  v62(&v3[v20], v63);
  v21 = v4[22];
  v61 = type metadata accessor for PlayerService();
  v60 = *(v61[-1].Description + 1);
  v60(&v3[v21], v61);
  v22 = v4[23];
  v59 = type metadata accessor for PrivacyPreferenceService();
  v58 = *(v59[-1].Description + 1);
  v58(&v3[v22], v59);
  v23 = v4[24];
  v57 = type metadata accessor for RecommendationService();
  v56 = *(v57[-1].Description + 1);
  v56(&v3[v23], v57);
  v24 = v4[25];
  v55 = type metadata accessor for RemoteBrowsingService();
  v54 = *(v55[-1].Description + 1);
  v54(&v3[v24], v55);
  v25 = v4[26];
  v53 = type metadata accessor for SearchService();
  v52 = *(v53[-1].Description + 1);
  v52(&v3[v25], v53);
  v26 = v4[27];
  v46 = type metadata accessor for ServiceSubscriptionService();
  v51 = *(v46[-1].Description + 1);
  v51(&v3[v26], v46);
  v27 = v4[28];
  v44 = type metadata accessor for SessionService();
  v50 = *(v44[-1].Description + 1);
  v50(&v3[v27], v44);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v49 = *(v29[-1].Description + 1);
  v49(&v3[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v48 = *(v31[-1].Description + 1);
  v48(&v3[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v47 = *(v33[-1].Description + 1);
  v47(&v3[v32], v33);

  v34 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v45 = *(QueueService[-1].Description + 1);
  v45(&v3[v34], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v4[34]]);

  v36 = v4[36];
  v37 = type metadata accessor for WorkoutPlanService();
  v38 = *(v37[-1].Description + 1);
  v38(&v3[v36], v37);

  v39 = &v92[v101[7]];

  v40 = &v39[*(type metadata accessor for AppDataItemResolver(0) + 24)];
  swift_unknownObjectRelease();
  v93(&v40[v4[6]], v94);
  v90(&v40[v4[7]], v91);
  v88(&v40[v4[8]], v89);
  v86(&v40[v4[9]], v87);
  v84(&v40[v4[10]], v85);
  v82(&v40[v4[11]], v83);
  v80(&v40[v4[12]], v81);
  v78(&v40[v4[13]], v79);
  v76(&v40[v4[14]], v77);
  v74(&v40[v4[15]], v75);
  v72(&v40[v4[16]], v73);
  v70(&v40[v4[17]], v71);
  v68(&v40[v4[18]], v69);
  v66(&v40[v4[19]], v67);
  v64(&v40[v4[20]], v65);
  v62(&v40[v4[21]], v63);
  v60(&v40[v4[22]], v61);
  v58(&v40[v4[23]], v59);
  v56(&v40[v4[24]], v57);
  v54(&v40[v4[25]], v55);
  v52(&v40[v4[26]], v53);
  v51(&v40[v4[27]], v46);
  v50(&v40[v4[28]], v44);
  v49(&v40[v4[29]], v29);
  v48(&v40[v4[30]], v31);
  v47(&v40[v4[31]], v33);

  v45(&v40[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v40[v4[34]]);

  v38(&v40[v4[36]], v37);
  swift_unknownObjectRelease();
  if (*&v92[v101[9] + 8] >= 0xCuLL)
  {
  }

  v41 = &v92[v101[10]];
  if (*(v41 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  swift_unknownObjectRelease();
  v42 = (v95 + *(v98 + 28));
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  swift_unknownObjectRelease();
  sub_1E5F94E00(*(v100 + ((v97 + v96) & 0xFFFFFFFFFFFFFFF8) + 8), *(v100 + ((v97 + v96) & 0xFFFFFFFFFFFFFFF8) + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5E79030()
{
  v1 = type metadata accessor for UIViewControllerRoutingContext(0);
  v155 = *(*(v1 - 8) + 80);
  v2 = *(*(v1 - 8) + 64);
  v3 = type metadata accessor for RouteDestination(0);
  v157 = *(*(v3 - 8) + 80);
  v158 = v3;
  v150 = v2 + v157;
  v154 = *(*(v3 - 8) + 64);
  v156 = v0;
  v151 = (v155 + 16) & ~v155;

  v152 = v0 + v151;
  v153 = v1;
  v147 = v0 + v151 + *(v1 + 20);

  v146 = type metadata accessor for AppComposer(0);
  v4 = v147 + v146[5];
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment(0);
  v6 = v5[6];
  v149 = type metadata accessor for AccountService();
  v148 = *(v149[-1].Description + 1);
  v148(v4 + v6, v149);
  v7 = v5[7];
  v145 = type metadata accessor for AppStateService();
  v144 = *(v145[-1].Description + 1);
  v144(v4 + v7, v145);
  v8 = v5[8];
  v143 = type metadata accessor for ArchivedSessionService();
  v142 = *(v143[-1].Description + 1);
  v142(v4 + v8, v143);
  v9 = v5[9];
  v141 = type metadata accessor for AssetService();
  v140 = *(v141[-1].Description + 1);
  v140(v4 + v9, v141);
  v10 = v5[10];
  v139 = type metadata accessor for AwardsService();
  v138 = *(v139[-1].Description + 1);
  v138(v4 + v10, v139);
  v11 = v5[11];
  v137 = type metadata accessor for BookmarkService();
  v136 = *(v137[-1].Description + 1);
  v136(v4 + v11, v137);
  v12 = v5[12];
  v135 = type metadata accessor for CatalogService();
  v134 = *(v135[-1].Description + 1);
  v134(v4 + v12, v135);
  v13 = v5[13];
  v133 = type metadata accessor for ConfigurationService();
  v132 = *(v133[-1].Description + 1);
  v132(v4 + v13, v133);
  v14 = v5[14];
  v131 = type metadata accessor for ContentAvailabilityService();
  v130 = *(v131[-1].Description + 1);
  v130(v4 + v14, v131);
  v15 = v5[15];
  v129 = type metadata accessor for EngagementService();
  v128 = *(v129[-1].Description + 1);
  v128(v4 + v15, v129);
  v16 = v5[16];
  v127 = type metadata accessor for HealthDataService();
  v126 = *(v127[-1].Description + 1);
  v126(v4 + v16, v127);
  v17 = v5[17];
  v125 = type metadata accessor for InteropService();
  v124 = *(v125[-1].Description + 1);
  v124(v4 + v17, v125);
  v18 = v5[18];
  v123 = type metadata accessor for LocalizationService();
  v122 = *(v123[-1].Description + 1);
  v122(v4 + v18, v123);
  v19 = v5[19];
  v121 = type metadata accessor for MarketingService();
  v120 = *(v121[-1].Description + 1);
  v120(v4 + v19, v121);
  v20 = v5[20];
  v119 = type metadata accessor for MetricService();
  v118 = *(v119[-1].Description + 1);
  v118(v4 + v20, v119);
  v21 = v5[21];
  v117 = type metadata accessor for PersonalizationService();
  v116 = *(v117[-1].Description + 1);
  v116(v4 + v21, v117);
  v22 = v5[22];
  v115 = type metadata accessor for PlayerService();
  v114 = *(v115[-1].Description + 1);
  v114(v4 + v22, v115);
  v23 = v5[23];
  v113 = type metadata accessor for PrivacyPreferenceService();
  v112 = *(v113[-1].Description + 1);
  v112(v4 + v23, v113);
  v24 = v5[24];
  v111 = type metadata accessor for RecommendationService();
  v110 = *(v111[-1].Description + 1);
  v110(v4 + v24, v111);
  v25 = v5[25];
  v109 = type metadata accessor for RemoteBrowsingService();
  v108 = *(v109[-1].Description + 1);
  v108(v4 + v25, v109);
  v26 = v5[26];
  v107 = type metadata accessor for SearchService();
  v106 = *(v107[-1].Description + 1);
  v106(v4 + v26, v107);
  v27 = v5[27];
  v100 = type metadata accessor for ServiceSubscriptionService();
  v105 = *(v100[-1].Description + 1);
  v105(v4 + v27, v100);
  v28 = v5[28];
  v98 = type metadata accessor for SessionService();
  v104 = *(v98[-1].Description + 1);
  v104(v4 + v28, v98);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v103 = *(v30[-1].Description + 1);
  v103(v4 + v29, v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v102 = *(v32[-1].Description + 1);
  v102(v4 + v31, v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v101 = *(v34[-1].Description + 1);
  v101(v4 + v33, v34);

  v35 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v99 = *(QueueService[-1].Description + 1);
  v99(v4 + v35, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v4 + v5[34]));

  v37 = v5[36];
  v38 = type metadata accessor for WorkoutPlanService();
  v39 = *(v38[-1].Description + 1);
  v39(v4 + v37, v38);

  v40 = v147 + v146[7];

  v41 = v40 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v148(v41 + v5[6], v149);
  v144(v41 + v5[7], v145);
  v142(v41 + v5[8], v143);
  v140(v41 + v5[9], v141);
  v138(v41 + v5[10], v139);
  v136(v41 + v5[11], v137);
  v134(v41 + v5[12], v135);
  v132(v41 + v5[13], v133);
  v130(v41 + v5[14], v131);
  v128(v41 + v5[15], v129);
  v126(v41 + v5[16], v127);
  v124(v41 + v5[17], v125);
  v122(v41 + v5[18], v123);
  v120(v41 + v5[19], v121);
  v118(v41 + v5[20], v119);
  v116(v41 + v5[21], v117);
  v114(v41 + v5[22], v115);
  v112(v41 + v5[23], v113);
  v110(v41 + v5[24], v111);
  v108(v41 + v5[25], v109);
  v106(v41 + v5[26], v107);
  v105(v41 + v5[27], v100);
  v104(v41 + v5[28], v98);
  v103(v41 + v5[29], v30);
  v102(v41 + v5[30], v32);
  v101(v41 + v5[31], v34);

  v99(v41 + v5[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v41 + v5[34]));

  v39(v41 + v5[36], v38);
  swift_unknownObjectRelease();
  if (*(v147 + v146[9] + 8) >= 0xCuLL)
  {
  }

  v42 = (v147 + v146[10]);
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v43 = (v151 + v150) & ~v157;
  swift_unknownObjectRelease();
  v44 = (v152 + *(v153 + 28));
  if (v44[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  swift_unknownObjectRelease();
  v45 = v156 + v43;
  type metadata accessor for RouteResource(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 2u:
    case 0xAu:
    case 0xBu:
    case 0xDu:
    case 0xFu:
    case 0x10u:
      goto LABEL_22;
    case 1u:
      v79 = sub_1E65D76F8();
      v80 = *(v79 - 8);
      if (!(*(v80 + 48))(v156 + v43, 1, v79))
      {
        (*(v80 + 8))(v156 + v43, v79);
      }

      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);

      v82 = *(v81 + 64);
      v83 = sub_1E65E2CF8();
      v84 = *(v83 - 8);
      if (!(*(v84 + 48))(v45 + v82, 1, v83))
      {
        (*(v84 + 8))(v45 + v82, v83);
      }

      v59 = *(v81 + 96);
      v85 = sub_1E65E1FC8();
      goto LABEL_52;
    case 3u:

      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v66 = sub_1E65D72D8();
      goto LABEL_50;
    case 4u:
      sub_1E65E0B48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v87 = sub_1E65E0FD8();
            (*(*(v87 - 8) + 8))(v156 + v43, v87);
          }

          goto LABEL_80;
        }

LABEL_79:

        goto LABEL_80;
      }

      if (EnumCaseMultiPayload <= 6 || EnumCaseMultiPayload == 7)
      {
        goto LABEL_79;
      }

LABEL_80:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280);

LABEL_57:
      v90 = v45 + *(v158 + 20);
      type metadata accessor for RouteSource(0);
      v91 = swift_getEnumCaseMultiPayload();
      if (v91 <= 1)
      {
        if (v91)
        {
          if (v91 != 1)
          {
            goto LABEL_71;
          }
        }

        else
        {
          type metadata accessor for AppLaunchScope(0);
          if (swift_getEnumCaseMultiPayload() > 1)
          {
            goto LABEL_71;
          }
        }

        goto LABEL_68;
      }

      switch(v91)
      {
        case 2:
LABEL_68:
          v93 = sub_1E65D74E8();
          v94 = *(v93 - 8);
          v95 = *(v94 + 8);
          v95(v90, v93);
          v96 = *(type metadata accessor for URLContext(0) + 20);
          if (!(*(v94 + 48))(v90 + v96, 1, v93))
          {
            v95(v90 + v96, v93);
          }

          goto LABEL_71;
        case 3:
          v92 = sub_1E65D74E8();
          break;
        case 4:
          v92 = sub_1E65D8D48();
          break;
        default:
          goto LABEL_71;
      }

      (*(*(v92 - 8) + 8))(v90, v92);
LABEL_71:

      sub_1E5F94E00(*(v156 + ((v43 + v154) & 0xFFFFFFFFFFFFFFF8) + 8), *(v156 + ((v43 + v154) & 0xFFFFFFFFFFFFFFF8) + 16));

      return swift_deallocObject();
    case 6u:

      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v64 = *(v63 + 48);
      v65 = sub_1E65DB848();
      (*(*(v65 - 8) + 8))(v45 + v64, v65);
      v49 = *(v63 + 64);
      v66 = sub_1E65E1518();
      goto LABEL_50;
    case 7u:
      v74 = sub_1E65DB848();
      (*(*(v74 - 8) + 8))(v156 + v43, v74);
      v75 = &unk_1ED0720D0;
      v76 = &unk_1E65EA290;
      goto LABEL_48;
    case 8u:
    case 9u:

      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v47 = *(v46 + 48);
      v48 = sub_1E65DB848();
      (*(*(v48 - 8) + 8))(v45 + v47, v48);
      v49 = *(v46 + 64);
      goto LABEL_49;
    case 0xCu:

      sub_1E5F94E00(*(v45 + 16), *(v45 + 24));
      goto LABEL_57;
    case 0xEu:
      v62 = sub_1E65DB718();
      goto LABEL_56;
    case 0x11u:

      v75 = &unk_1ED0720E0;
      v76 = &unk_1E65EA2A0;
LABEL_48:
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v75, v76) + 48);
LABEL_49:
      v66 = sub_1E65D74E8();
      goto LABEL_50;
    case 0x12u:
      sub_1E5F94E14(*v45, *(v45 + 8), *(v45 + 16));
      goto LABEL_57;
    case 0x13u:
      goto LABEL_29;
    case 0x14u:

      goto LABEL_57;
    case 0x15u:

      v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v85 = sub_1E65D96F8();
LABEL_52:
      v60 = v85;
      v61 = *(v85 - 8);
      if (!(*(v61 + 48))(v45 + v59, 1, v85))
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    case 0x16u:
      __swift_destroy_boxed_opaque_existential_1((v156 + v43));
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v51 = v50[12];
      v52 = sub_1E65D74E8();
      (*(*(v52 - 8) + 8))(v45 + v51, v52);

      v53 = v50[20];
      v54 = sub_1E65DB3E8();
      v55 = *(v54 - 8);
      if (!(*(v55 + 48))(v45 + v53, 1, v54))
      {
        (*(v55 + 8))(v45 + v53, v54);
      }

      v56 = v50[32];
      v57 = sub_1E65DB5D8();
      v58 = *(v57 - 8);
      if (!(*(v58 + 48))(v45 + v56, 1, v57))
      {
        (*(v58 + 8))(v45 + v56, v57);
      }

      v59 = v50[36];
      v60 = sub_1E65D7A38();
      v61 = *(v60 - 8);
      if (!(*(v61 + 48))(v45 + v59, 1, v60))
      {
LABEL_53:
        (*(v61 + 8))(v45 + v59, v60);
      }

      goto LABEL_57;
    case 0x17u:
      v70 = sub_1E65E57D8();
      (*(*(v70 - 8) + 8))(v156 + v43, v70);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v72 = *(v71 + 48);
      v73 = sub_1E65E5528();
      (*(*(v73 - 8) + 8))(v45 + v72, v73);
      if (*(v45 + *(v71 + 64) + 8) >= 0xCuLL)
      {
        goto LABEL_22;
      }

      goto LABEL_57;
    case 0x18u:

      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v66 = sub_1E65DB848();
      goto LABEL_50;
    case 0x1Au:
      sub_1E65E52B8();
      v78 = swift_getEnumCaseMultiPayload();
      if (v78 == 1)
      {
      }

      else if (!v78)
      {
LABEL_29:
        v62 = sub_1E65D74E8();
LABEL_56:
        (*(*(v62 - 8) + 8))(v156 + v43, v62);
      }

      goto LABEL_57;
    case 0x1Bu:
      type metadata accessor for PlaylistType(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_22;
      }

      v62 = sub_1E65DAEB8();
      goto LABEL_56;
    case 0x1Cu:
      v62 = sub_1E65D76F8();
      goto LABEL_56;
    case 0x1Du:
      v89 = sub_1E65E55E8();
      (*(*(v89 - 8) + 8))(v156 + v43, v89);
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v66 = sub_1E65D7EB8();
LABEL_50:
      (*(*(v66 - 8) + 8))(v45 + v49, v66);
      goto LABEL_57;
    case 0x1Eu:
      v67 = sub_1E65E56B8();
      (*(*(v67 - 8) + 8))(v156 + v43, v67);
      v68 = &unk_1ED072110;
      v69 = &unk_1E65EA2D0;
      goto LABEL_43;
    case 0x1Fu:
      v77 = sub_1E65DA308();
      (*(*(v77 - 8) + 8))(v156 + v43, v77);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810);
      goto LABEL_22;
    case 0x20u:
      v88 = sub_1E65E58D8();
      (*(*(v88 - 8) + 8))(v156 + v43, v88);
      v68 = &qword_1ED072120;
      v69 = &qword_1E65EA2E0;
LABEL_43:
      __swift_instantiateConcreteTypeFromMangledNameV2(v68, v69);

LABEL_22:

      goto LABEL_57;
    case 0x21u:
      v62 = sub_1E65D9048();
      goto LABEL_56;
    default:
      goto LABEL_57;
  }
}

uint64_t sub_1E5E7A9A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E7AA38()
{
  v1 = type metadata accessor for UIViewControllerRoutingContext(0);
  v96 = *(*(v1 - 8) + 80);
  v2 = (v0 + ((v96 + 16) & ~v96));

  v97 = v1;
  v95 = v2;
  v92 = v2 + *(v1 + 20);

  v98 = type metadata accessor for AppComposer(0);
  v3 = &v92[v98[5]];
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment(0);
  v5 = v4[6];
  v94 = type metadata accessor for AccountService();
  v93 = *(v94[-1].Description + 1);
  v93(&v3[v5], v94);
  v6 = v4[7];
  v91 = type metadata accessor for AppStateService();
  v90 = *(v91[-1].Description + 1);
  v90(&v3[v6], v91);
  v7 = v4[8];
  v89 = type metadata accessor for ArchivedSessionService();
  v88 = *(v89[-1].Description + 1);
  v88(&v3[v7], v89);
  v8 = v4[9];
  v87 = type metadata accessor for AssetService();
  v86 = *(v87[-1].Description + 1);
  v86(&v3[v8], v87);
  v9 = v4[10];
  v85 = type metadata accessor for AwardsService();
  v84 = *(v85[-1].Description + 1);
  v84(&v3[v9], v85);
  v10 = v4[11];
  v83 = type metadata accessor for BookmarkService();
  v82 = *(v83[-1].Description + 1);
  v82(&v3[v10], v83);
  v11 = v4[12];
  v81 = type metadata accessor for CatalogService();
  v80 = *(v81[-1].Description + 1);
  v80(&v3[v11], v81);
  v12 = v4[13];
  v79 = type metadata accessor for ConfigurationService();
  v78 = *(v79[-1].Description + 1);
  v78(&v3[v12], v79);
  v13 = v4[14];
  v77 = type metadata accessor for ContentAvailabilityService();
  v76 = *(v77[-1].Description + 1);
  v76(&v3[v13], v77);
  v14 = v4[15];
  v75 = type metadata accessor for EngagementService();
  v74 = *(v75[-1].Description + 1);
  v74(&v3[v14], v75);
  v15 = v4[16];
  v73 = type metadata accessor for HealthDataService();
  v72 = *(v73[-1].Description + 1);
  v72(&v3[v15], v73);
  v16 = v4[17];
  v71 = type metadata accessor for InteropService();
  v70 = *(v71[-1].Description + 1);
  v70(&v3[v16], v71);
  v17 = v4[18];
  v69 = type metadata accessor for LocalizationService();
  v68 = *(v69[-1].Description + 1);
  v68(&v3[v17], v69);
  v18 = v4[19];
  v67 = type metadata accessor for MarketingService();
  v66 = *(v67[-1].Description + 1);
  v66(&v3[v18], v67);
  v19 = v4[20];
  v65 = type metadata accessor for MetricService();
  v64 = *(v65[-1].Description + 1);
  v64(&v3[v19], v65);
  v20 = v4[21];
  v63 = type metadata accessor for PersonalizationService();
  v62 = *(v63[-1].Description + 1);
  v62(&v3[v20], v63);
  v21 = v4[22];
  v61 = type metadata accessor for PlayerService();
  v60 = *(v61[-1].Description + 1);
  v60(&v3[v21], v61);
  v22 = v4[23];
  v59 = type metadata accessor for PrivacyPreferenceService();
  v58 = *(v59[-1].Description + 1);
  v58(&v3[v22], v59);
  v23 = v4[24];
  v57 = type metadata accessor for RecommendationService();
  v56 = *(v57[-1].Description + 1);
  v56(&v3[v23], v57);
  v24 = v4[25];
  v55 = type metadata accessor for RemoteBrowsingService();
  v54 = *(v55[-1].Description + 1);
  v54(&v3[v24], v55);
  v25 = v4[26];
  v53 = type metadata accessor for SearchService();
  v52 = *(v53[-1].Description + 1);
  v52(&v3[v25], v53);
  v26 = v4[27];
  v46 = type metadata accessor for ServiceSubscriptionService();
  v51 = *(v46[-1].Description + 1);
  v51(&v3[v26], v46);
  v27 = v4[28];
  v44 = type metadata accessor for SessionService();
  v50 = *(v44[-1].Description + 1);
  v50(&v3[v27], v44);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v49 = *(v29[-1].Description + 1);
  v49(&v3[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v48 = *(v31[-1].Description + 1);
  v48(&v3[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v47 = *(v33[-1].Description + 1);
  v47(&v3[v32], v33);

  v34 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v45 = *(QueueService[-1].Description + 1);
  v45(&v3[v34], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v4[34]]);

  v36 = v4[36];
  v37 = type metadata accessor for WorkoutPlanService();
  v38 = *(v37[-1].Description + 1);
  v38(&v3[v36], v37);

  v39 = &v92[v98[7]];

  v40 = &v39[*(type metadata accessor for AppDataItemResolver(0) + 24)];
  swift_unknownObjectRelease();
  v93(&v40[v4[6]], v94);
  v90(&v40[v4[7]], v91);
  v88(&v40[v4[8]], v89);
  v86(&v40[v4[9]], v87);
  v84(&v40[v4[10]], v85);
  v82(&v40[v4[11]], v83);
  v80(&v40[v4[12]], v81);
  v78(&v40[v4[13]], v79);
  v76(&v40[v4[14]], v77);
  v74(&v40[v4[15]], v75);
  v72(&v40[v4[16]], v73);
  v70(&v40[v4[17]], v71);
  v68(&v40[v4[18]], v69);
  v66(&v40[v4[19]], v67);
  v64(&v40[v4[20]], v65);
  v62(&v40[v4[21]], v63);
  v60(&v40[v4[22]], v61);
  v58(&v40[v4[23]], v59);
  v56(&v40[v4[24]], v57);
  v54(&v40[v4[25]], v55);
  v52(&v40[v4[26]], v53);
  v51(&v40[v4[27]], v46);
  v50(&v40[v4[28]], v44);
  v49(&v40[v4[29]], v29);
  v48(&v40[v4[30]], v31);
  v47(&v40[v4[31]], v33);

  v45(&v40[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v40[v4[34]]);

  v38(&v40[v4[36]], v37);
  swift_unknownObjectRelease();
  if (*&v92[v98[9] + 8] >= 0xCuLL)
  {
  }

  v41 = &v92[v98[10]];
  if (*(v41 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  swift_unknownObjectRelease();
  v42 = (v95 + *(v97 + 28));
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E7B75C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppComposer(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1E5E7B808(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppComposer(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E5E7B8B0()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  v89 = v0 + ((v92 + 17) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E7C574()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E7C5DC()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  v89 = v0 + ((v92 + 16) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E7D2E0()
{

  return swift_deallocObject();
}

uint64_t sub_1E5E7D318(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074368, &qword_1E65F08F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5E7D388()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074368, &qword_1E65F08F8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074370, &qword_1E65F0960);
  if (!swift_getEnumCaseMultiPayload())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074378, &qword_1E65F0968);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
      (*(*(v3 - 8) + 8))(v0 + v2, v3);
    }

    else
    {
      sub_1E5FEBB58(*(v0 + v2), *(v0 + v2 + 8));
    }
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E7D50C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074368, &qword_1E65F08F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5E7D894()
{
  v46 = type metadata accessor for AppComposer(0);
  v99 = *(*(v46 - 1) + 80);
  v97 = *(*(v46 - 1) + 64);
  v1 = sub_1E65D76F8();
  v100 = *(v1 - 8);
  v101 = v1;
  v96 = *(v100 + 80);
  v102 = v0;
  v98 = (v99 + 16) & ~v99;
  v93 = v0 + v98;

  v2 = v0 + v98 + v46[5];
  swift_unknownObjectRelease();
  v3 = type metadata accessor for AppEnvironment(0);
  v4 = v3[6];
  v95 = type metadata accessor for AccountService();
  v94 = *(v95[-1].Description + 1);
  v94(v2 + v4, v95);
  v5 = v3[7];
  v92 = type metadata accessor for AppStateService();
  v91 = *(v92[-1].Description + 1);
  v91(v2 + v5, v92);
  v6 = v3[8];
  v90 = type metadata accessor for ArchivedSessionService();
  v89 = *(v90[-1].Description + 1);
  v89(v2 + v6, v90);
  v7 = v3[9];
  v88 = type metadata accessor for AssetService();
  v87 = *(v88[-1].Description + 1);
  v87(v2 + v7, v88);
  v8 = v3[10];
  v86 = type metadata accessor for AwardsService();
  v85 = *(v86[-1].Description + 1);
  v85(v2 + v8, v86);
  v9 = v3[11];
  v84 = type metadata accessor for BookmarkService();
  v83 = *(v84[-1].Description + 1);
  v83(v2 + v9, v84);
  v10 = v3[12];
  v82 = type metadata accessor for CatalogService();
  v81 = *(v82[-1].Description + 1);
  v81(v2 + v10, v82);
  v11 = v3[13];
  v80 = type metadata accessor for ConfigurationService();
  v79 = *(v80[-1].Description + 1);
  v79(v2 + v11, v80);
  v12 = v3[14];
  v78 = type metadata accessor for ContentAvailabilityService();
  v77 = *(v78[-1].Description + 1);
  v77(v2 + v12, v78);
  v13 = v3[15];
  v76 = type metadata accessor for EngagementService();
  v75 = *(v76[-1].Description + 1);
  v75(v2 + v13, v76);
  v14 = v3[16];
  v74 = type metadata accessor for HealthDataService();
  v73 = *(v74[-1].Description + 1);
  v73(v2 + v14, v74);
  v15 = v3[17];
  v72 = type metadata accessor for InteropService();
  v71 = *(v72[-1].Description + 1);
  v71(v2 + v15, v72);
  v16 = v3[18];
  v70 = type metadata accessor for LocalizationService();
  v69 = *(v70[-1].Description + 1);
  v69(v2 + v16, v70);
  v17 = v3[19];
  v68 = type metadata accessor for MarketingService();
  v67 = *(v68[-1].Description + 1);
  v67(v2 + v17, v68);
  v18 = v3[20];
  v66 = type metadata accessor for MetricService();
  v65 = *(v66[-1].Description + 1);
  v65(v2 + v18, v66);
  v19 = v3[21];
  v64 = type metadata accessor for PersonalizationService();
  v63 = *(v64[-1].Description + 1);
  v63(v2 + v19, v64);
  v20 = v3[22];
  v62 = type metadata accessor for PlayerService();
  v61 = *(v62[-1].Description + 1);
  v61(v2 + v20, v62);
  v21 = v3[23];
  v60 = type metadata accessor for PrivacyPreferenceService();
  v59 = *(v60[-1].Description + 1);
  v59(v2 + v21, v60);
  v22 = v3[24];
  v58 = type metadata accessor for RecommendationService();
  v57 = *(v58[-1].Description + 1);
  v57(v2 + v22, v58);
  v23 = v3[25];
  v56 = type metadata accessor for RemoteBrowsingService();
  v55 = *(v56[-1].Description + 1);
  v55(v2 + v23, v56);
  v24 = v3[26];
  v54 = type metadata accessor for SearchService();
  v53 = *(v54[-1].Description + 1);
  v53(v2 + v24, v54);
  v25 = v3[27];
  v52 = type metadata accessor for ServiceSubscriptionService();
  v51 = *(v52[-1].Description + 1);
  v51(v2 + v25, v52);
  v26 = v3[28];
  v44 = type metadata accessor for SessionService();
  v50 = *(v44[-1].Description + 1);
  v50(v2 + v26, v44);
  v27 = v3[29];
  v28 = type metadata accessor for SharePlayService();
  v49 = *(v28[-1].Description + 1);
  v49(v2 + v27, v28);
  v29 = v3[30];
  v30 = type metadata accessor for SiriService();
  v48 = *(v30[-1].Description + 1);
  v48(v2 + v29, v30);
  v31 = v3[31];
  v32 = type metadata accessor for SyncService();
  v47 = *(v32[-1].Description + 1);
  v47(v2 + v31, v32);

  v33 = v3[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v45 = *(QueueService[-1].Description + 1);
  v45(v2 + v33, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v2 + v3[34]));

  v35 = v3[36];
  v36 = type metadata accessor for WorkoutPlanService();
  v43 = *(v36[-1].Description + 1);
  v43(v2 + v35, v36);

  v37 = v93 + v46[7];

  v38 = v37 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v94(v38 + v3[6], v95);
  v91(v38 + v3[7], v92);
  v89(v38 + v3[8], v90);
  v87(v38 + v3[9], v88);
  v85(v38 + v3[10], v86);
  v83(v38 + v3[11], v84);
  v81(v38 + v3[12], v82);
  v79(v38 + v3[13], v80);
  v77(v38 + v3[14], v78);
  v75(v38 + v3[15], v76);
  v73(v38 + v3[16], v74);
  v71(v38 + v3[17], v72);
  v69(v38 + v3[18], v70);
  v67(v38 + v3[19], v68);
  v65(v38 + v3[20], v66);
  v63(v38 + v3[21], v64);
  v61(v38 + v3[22], v62);
  v59(v38 + v3[23], v60);
  v57(v38 + v3[24], v58);
  v55(v38 + v3[25], v56);
  v53(v38 + v3[26], v54);
  v51(v38 + v3[27], v52);
  v50(v38 + v3[28], v44);
  v49(v38 + v3[29], v28);
  v48(v38 + v3[30], v30);
  v47(v38 + v3[31], v32);

  v45(v38 + v3[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v38 + v3[34]));

  v43(v38 + v3[36], v36);
  swift_unknownObjectRelease();
  if (*(v93 + v46[9] + 8) >= 0xCuLL)
  {
  }

  v39 = (v93 + v46[10]);
  if (v39[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v40 = (v97 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v96 + ((((v40 + 47) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v96;
  __swift_destroy_boxed_opaque_existential_1((v102 + v40));
  swift_unknownObjectRelease();

  (*(v100 + 8))(v102 + v41, v101);

  return swift_deallocObject();
}

uint64_t sub_1E5E7E648()
{
  v96 = type metadata accessor for AppComposer(0);
  v94 = *(*(v96 - 1) + 80);
  v92 = *(*(v96 - 1) + 64);
  v93 = (v94 + 16) & ~v94;
  v95 = v0;
  v89 = v0 + v93;

  v1 = v0 + v93 + v96[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v96[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v96[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v96[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  __swift_destroy_boxed_opaque_existential_1((v95 + ((v92 + v93 + 7) & 0xFFFFFFFFFFFFFFF8)));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E7F36C()
{
  v91 = type metadata accessor for AppComposer(0);
  v97 = *(*(v91 - 1) + 80);
  v95 = *(*(v91 - 1) + 64);
  v1 = sub_1E65D76F8();
  v98 = *(v1 - 8);
  v99 = v1;
  v94 = *(v98 + 80);
  v96 = (v97 + 17) & ~v97;
  v100 = v0;
  v101 = v0 + v96;

  v2 = v0 + v96 + v91[5];
  swift_unknownObjectRelease();
  v3 = type metadata accessor for AppEnvironment(0);
  v4 = v3[6];
  v93 = type metadata accessor for AccountService();
  v92 = *(v93[-1].Description + 1);
  v92(v2 + v4, v93);
  v5 = v3[7];
  v90 = type metadata accessor for AppStateService();
  v89 = *(v90[-1].Description + 1);
  v89(v2 + v5, v90);
  v6 = v3[8];
  v88 = type metadata accessor for ArchivedSessionService();
  v87 = *(v88[-1].Description + 1);
  v87(v2 + v6, v88);
  v7 = v3[9];
  v86 = type metadata accessor for AssetService();
  v85 = *(v86[-1].Description + 1);
  v85(v2 + v7, v86);
  v8 = v3[10];
  v84 = type metadata accessor for AwardsService();
  v83 = *(v84[-1].Description + 1);
  v83(v2 + v8, v84);
  v9 = v3[11];
  v82 = type metadata accessor for BookmarkService();
  v81 = *(v82[-1].Description + 1);
  v81(v2 + v9, v82);
  v10 = v3[12];
  v80 = type metadata accessor for CatalogService();
  v79 = *(v80[-1].Description + 1);
  v79(v2 + v10, v80);
  v11 = v3[13];
  v78 = type metadata accessor for ConfigurationService();
  v77 = *(v78[-1].Description + 1);
  v77(v2 + v11, v78);
  v12 = v3[14];
  v76 = type metadata accessor for ContentAvailabilityService();
  v75 = *(v76[-1].Description + 1);
  v75(v2 + v12, v76);
  v13 = v3[15];
  v74 = type metadata accessor for EngagementService();
  v73 = *(v74[-1].Description + 1);
  v73(v2 + v13, v74);
  v14 = v3[16];
  v72 = type metadata accessor for HealthDataService();
  v71 = *(v72[-1].Description + 1);
  v71(v2 + v14, v72);
  v15 = v3[17];
  v70 = type metadata accessor for InteropService();
  v69 = *(v70[-1].Description + 1);
  v69(v2 + v15, v70);
  v16 = v3[18];
  v68 = type metadata accessor for LocalizationService();
  v67 = *(v68[-1].Description + 1);
  v67(v2 + v16, v68);
  v17 = v3[19];
  v66 = type metadata accessor for MarketingService();
  v65 = *(v66[-1].Description + 1);
  v65(v2 + v17, v66);
  v18 = v3[20];
  v64 = type metadata accessor for MetricService();
  v63 = *(v64[-1].Description + 1);
  v63(v2 + v18, v64);
  v19 = v3[21];
  v62 = type metadata accessor for PersonalizationService();
  v61 = *(v62[-1].Description + 1);
  v61(v2 + v19, v62);
  v20 = v3[22];
  v60 = type metadata accessor for PlayerService();
  v59 = *(v60[-1].Description + 1);
  v59(v2 + v20, v60);
  v21 = v3[23];
  v58 = type metadata accessor for PrivacyPreferenceService();
  v57 = *(v58[-1].Description + 1);
  v57(v2 + v21, v58);
  v22 = v3[24];
  v56 = type metadata accessor for RecommendationService();
  v55 = *(v56[-1].Description + 1);
  v55(v2 + v22, v56);
  v23 = v3[25];
  v54 = type metadata accessor for RemoteBrowsingService();
  v53 = *(v54[-1].Description + 1);
  v53(v2 + v23, v54);
  v24 = v3[26];
  v52 = type metadata accessor for SearchService();
  v51 = *(v52[-1].Description + 1);
  v51(v2 + v24, v52);
  v25 = v3[27];
  v50 = type metadata accessor for ServiceSubscriptionService();
  v49 = *(v50[-1].Description + 1);
  v49(v2 + v25, v50);
  v26 = v3[28];
  v43 = type metadata accessor for SessionService();
  v48 = *(v43[-1].Description + 1);
  v48(v2 + v26, v43);
  v27 = v3[29];
  v28 = type metadata accessor for SharePlayService();
  v47 = *(v28[-1].Description + 1);
  v47(v2 + v27, v28);
  v29 = v3[30];
  v30 = type metadata accessor for SiriService();
  v46 = *(v30[-1].Description + 1);
  v46(v2 + v29, v30);
  v31 = v3[31];
  v32 = type metadata accessor for SyncService();
  v45 = *(v32[-1].Description + 1);
  v45(v2 + v31, v32);

  v33 = v3[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v44 = *(QueueService[-1].Description + 1);
  v44(v2 + v33, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v2 + v3[34]));

  v35 = v3[36];
  v36 = type metadata accessor for WorkoutPlanService();
  v42 = *(v36[-1].Description + 1);
  v42(v2 + v35, v36);

  v37 = v101 + v91[7];

  v38 = v37 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v92(v38 + v3[6], v93);
  v89(v38 + v3[7], v90);
  v87(v38 + v3[8], v88);
  v85(v38 + v3[9], v86);
  v83(v38 + v3[10], v84);
  v81(v38 + v3[11], v82);
  v79(v38 + v3[12], v80);
  v77(v38 + v3[13], v78);
  v75(v38 + v3[14], v76);
  v73(v38 + v3[15], v74);
  v71(v38 + v3[16], v72);
  v69(v38 + v3[17], v70);
  v67(v38 + v3[18], v68);
  v65(v38 + v3[19], v66);
  v63(v38 + v3[20], v64);
  v61(v38 + v3[21], v62);
  v59(v38 + v3[22], v60);
  v57(v38 + v3[23], v58);
  v55(v38 + v3[24], v56);
  v53(v38 + v3[25], v54);
  v51(v38 + v3[26], v52);
  v49(v38 + v3[27], v50);
  v48(v38 + v3[28], v43);
  v47(v38 + v3[29], v28);
  v46(v38 + v3[30], v30);
  v45(v38 + v3[31], v32);

  v44(v38 + v3[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v38 + v3[34]));

  v42(v38 + v3[36], v36);
  swift_unknownObjectRelease();
  if (*(v101 + v91[9] + 8) >= 0xCuLL)
  {
  }

  v39 = (v101 + v91[10]);
  if (v39[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v40 = (((v95 + v96 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_1((v100 + v40));
  swift_unknownObjectRelease();

  (*(v98 + 8))(v100 + ((v94 + ((((v40 + 47) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v94), v99);

  return swift_deallocObject();
}

uint64_t sub_1E5E8013C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E65D7F58();
  *a1 = result;
  return result;
}

uint64_t sub_1E5E80168@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AppState(0) + 172) + 8);
}

uint64_t sub_1E5E801B8()
{
  v1 = type metadata accessor for RouteDestination(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v4 = v0 + v3;
  type metadata accessor for RouteResource(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 2u:
    case 0xAu:
    case 0xBu:
    case 0xDu:
    case 0xFu:
    case 0x10u:
      goto LABEL_16;
    case 1u:
      v38 = sub_1E65D76F8();
      v39 = *(v38 - 8);
      if (!(*(v39 + 48))(v0 + v3, 1, v38))
      {
        (*(v39 + 8))(v0 + v3, v38);
      }

      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);

      v41 = *(v40 + 64);
      v42 = sub_1E65E2CF8();
      v43 = *(v42 - 8);
      if (!(*(v43 + 48))(v4 + v41, 1, v42))
      {
        (*(v43 + 8))(v4 + v41, v42);
      }

      v18 = *(v40 + 96);
      v44 = sub_1E65E1FC8();
      goto LABEL_46;
    case 3u:

      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v25 = sub_1E65D72D8();
      goto LABEL_44;
    case 4u:
      sub_1E65E0B48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v46 = sub_1E65E0FD8();
            (*(*(v46 - 8) + 8))(v0 + v3, v46);
          }

          goto LABEL_76;
        }

LABEL_75:

        goto LABEL_76;
      }

      if (EnumCaseMultiPayload <= 6 || EnumCaseMultiPayload == 7)
      {
        goto LABEL_75;
      }

LABEL_76:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280);

LABEL_51:
      v49 = v4 + *(v1 + 20);
      type metadata accessor for RouteSource(0);
      v50 = swift_getEnumCaseMultiPayload();
      if (v50 <= 1)
      {
        if (!v50)
        {
          type metadata accessor for AppLaunchScope(0);
          if (swift_getEnumCaseMultiPayload() > 1)
          {
            goto LABEL_67;
          }

          v56 = sub_1E65D74E8();
          v57 = *(v56 - 8);
          v60 = *(v57 + 8);
          v60(v49, v56);
          v58 = *(type metadata accessor for URLContext(0) + 20);
          if (!(*(v57 + 48))(v49 + v58, 1, v56))
          {
            v60(v49 + v58, v56);
          }

          goto LABEL_66;
        }

        if (v50 != 1)
        {
          goto LABEL_67;
        }

LABEL_58:
        v52 = sub_1E65D74E8();
        v53 = *(v52 - 8);
        v54 = *(v53 + 8);
        v54(v49, v52);
        v55 = *(type metadata accessor for URLContext(0) + 20);
        if (!(*(v53 + 48))(v49 + v55, 1, v52))
        {
          v54(v49 + v55, v52);
        }

LABEL_66:

        goto LABEL_67;
      }

      switch(v50)
      {
        case 2:
          goto LABEL_58;
        case 3:
          v51 = sub_1E65D74E8();
          break;
        case 4:
          v51 = sub_1E65D8D48();
          break;
        default:
          goto LABEL_67;
      }

      (*(*(v51 - 8) + 8))(v49, v51);
LABEL_67:

      return swift_deallocObject();
    case 6u:

      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v23 = *(v22 + 48);
      v24 = sub_1E65DB848();
      (*(*(v24 - 8) + 8))(v4 + v23, v24);
      v8 = *(v22 + 64);
      v25 = sub_1E65E1518();
      goto LABEL_44;
    case 7u:
      v33 = sub_1E65DB848();
      (*(*(v33 - 8) + 8))(v0 + v3, v33);
      v34 = &unk_1ED0720D0;
      v35 = &unk_1E65EA290;
      goto LABEL_42;
    case 8u:
    case 9u:

      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v6 = *(v5 + 48);
      v7 = sub_1E65DB848();
      (*(*(v7 - 8) + 8))(v4 + v6, v7);
      v8 = *(v5 + 64);
      goto LABEL_43;
    case 0xCu:

      sub_1E5F94E00(*(v4 + 16), *(v4 + 24));
      goto LABEL_51;
    case 0xEu:
      v21 = sub_1E65DB718();
      goto LABEL_50;
    case 0x11u:

      v34 = &unk_1ED0720E0;
      v35 = &unk_1E65EA2A0;
LABEL_42:
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v34, v35) + 48);
LABEL_43:
      v25 = sub_1E65D74E8();
      goto LABEL_44;
    case 0x12u:
      sub_1E5F94E14(*v4, *(v4 + 8), *(v4 + 16));
      goto LABEL_51;
    case 0x13u:
      goto LABEL_23;
    case 0x14u:

      goto LABEL_51;
    case 0x15u:

      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v44 = sub_1E65D96F8();
LABEL_46:
      v19 = v44;
      v20 = *(v44 - 8);
      if (!(*(v20 + 48))(v4 + v18, 1, v44))
      {
        goto LABEL_47;
      }

      goto LABEL_51;
    case 0x16u:
      __swift_destroy_boxed_opaque_existential_1((v0 + v3));
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v10 = v9[12];
      v11 = sub_1E65D74E8();
      (*(*(v11 - 8) + 8))(v4 + v10, v11);

      v12 = v9[20];
      v13 = sub_1E65DB3E8();
      v14 = *(v13 - 8);
      if (!(*(v14 + 48))(v4 + v12, 1, v13))
      {
        (*(v14 + 8))(v4 + v12, v13);
      }

      v15 = v9[32];
      v16 = sub_1E65DB5D8();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v4 + v15, 1, v16))
      {
        (*(v17 + 8))(v4 + v15, v16);
      }

      v18 = v9[36];
      v19 = sub_1E65D7A38();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v4 + v18, 1, v19))
      {
LABEL_47:
        (*(v20 + 8))(v4 + v18, v19);
      }

      goto LABEL_51;
    case 0x17u:
      v29 = sub_1E65E57D8();
      (*(*(v29 - 8) + 8))(v0 + v3, v29);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v31 = *(v30 + 48);
      v32 = sub_1E65E5528();
      (*(*(v32 - 8) + 8))(v4 + v31, v32);
      if (*(v4 + *(v30 + 64) + 8) >= 0xCuLL)
      {
        goto LABEL_16;
      }

      goto LABEL_51;
    case 0x18u:

      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v25 = sub_1E65DB848();
      goto LABEL_44;
    case 0x1Au:
      sub_1E65E52B8();
      v37 = swift_getEnumCaseMultiPayload();
      if (v37 == 1)
      {
      }

      else if (!v37)
      {
LABEL_23:
        v21 = sub_1E65D74E8();
LABEL_50:
        (*(*(v21 - 8) + 8))(v0 + v3, v21);
      }

      goto LABEL_51;
    case 0x1Bu:
      type metadata accessor for PlaylistType(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_16;
      }

      v21 = sub_1E65DAEB8();
      goto LABEL_50;
    case 0x1Cu:
      v21 = sub_1E65D76F8();
      goto LABEL_50;
    case 0x1Du:
      v48 = sub_1E65E55E8();
      (*(*(v48 - 8) + 8))(v0 + v3, v48);
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v25 = sub_1E65D7EB8();
LABEL_44:
      (*(*(v25 - 8) + 8))(v4 + v8, v25);
      goto LABEL_51;
    case 0x1Eu:
      v26 = sub_1E65E56B8();
      (*(*(v26 - 8) + 8))(v0 + v3, v26);
      v27 = &unk_1ED072110;
      v28 = &unk_1E65EA2D0;
      goto LABEL_37;
    case 0x1Fu:
      v36 = sub_1E65DA308();
      (*(*(v36 - 8) + 8))(v0 + v3, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810);
      goto LABEL_16;
    case 0x20u:
      v47 = sub_1E65E58D8();
      (*(*(v47 - 8) + 8))(v0 + v3, v47);
      v27 = &qword_1ED072120;
      v28 = &qword_1E65EA2E0;
LABEL_37:
      __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);

LABEL_16:

      goto LABEL_51;
    case 0x21u:
      v21 = sub_1E65D9048();
      goto LABEL_50;
    default:
      goto LABEL_51;
  }
}

uint64_t sub_1E5E80FD0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5E81008()
{
  v1 = type metadata accessor for MetricService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 16) & ~*(Description + 80);
  v4 = Description[8];
  v5 = sub_1E65D8C88();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (Description[1])(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1E5E8115C()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  v89 = v0 + ((v92 + 16) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E81F8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5E82004(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1E5E82094()
{
  v1 = sub_1E65D9BA8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1E65D7A18();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v97 = type metadata accessor for AppComposer(0);
  v100 = *(*(v97 - 1) + 80);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);
  v101 = v0 + ((v7 + v8 + v100) & ~v100);

  v9 = v101 + v97[5];
  swift_unknownObjectRelease();
  v10 = type metadata accessor for AppEnvironment(0);
  v11 = v10[6];
  v99 = type metadata accessor for AccountService();
  v98 = *(v99[-1].Description + 1);
  v98(v9 + v11, v99);
  v12 = v10[7];
  v96 = type metadata accessor for AppStateService();
  v95 = *(v96[-1].Description + 1);
  v95(v9 + v12, v96);
  v13 = v10[8];
  v94 = type metadata accessor for ArchivedSessionService();
  v93 = *(v94[-1].Description + 1);
  v93(v9 + v13, v94);
  v14 = v10[9];
  v92 = type metadata accessor for AssetService();
  v91 = *(v92[-1].Description + 1);
  v91(v9 + v14, v92);
  v15 = v10[10];
  v90 = type metadata accessor for AwardsService();
  v89 = *(v90[-1].Description + 1);
  v89(v9 + v15, v90);
  v16 = v10[11];
  v88 = type metadata accessor for BookmarkService();
  v87 = *(v88[-1].Description + 1);
  v87(v9 + v16, v88);
  v17 = v10[12];
  v86 = type metadata accessor for CatalogService();
  v85 = *(v86[-1].Description + 1);
  v85(v9 + v17, v86);
  v18 = v10[13];
  v84 = type metadata accessor for ConfigurationService();
  v83 = *(v84[-1].Description + 1);
  v83(v9 + v18, v84);
  v19 = v10[14];
  v82 = type metadata accessor for ContentAvailabilityService();
  v81 = *(v82[-1].Description + 1);
  v81(v9 + v19, v82);
  v20 = v10[15];
  v80 = type metadata accessor for EngagementService();
  v79 = *(v80[-1].Description + 1);
  v79(v9 + v20, v80);
  v21 = v10[16];
  v78 = type metadata accessor for HealthDataService();
  v77 = *(v78[-1].Description + 1);
  v77(v9 + v21, v78);
  v22 = v10[17];
  v76 = type metadata accessor for InteropService();
  v75 = *(v76[-1].Description + 1);
  v75(v9 + v22, v76);
  v23 = v10[18];
  v74 = type metadata accessor for LocalizationService();
  v73 = *(v74[-1].Description + 1);
  v73(v9 + v23, v74);
  v24 = v10[19];
  v72 = type metadata accessor for MarketingService();
  v71 = *(v72[-1].Description + 1);
  v71(v9 + v24, v72);
  v25 = v10[20];
  v70 = type metadata accessor for MetricService();
  v69 = *(v70[-1].Description + 1);
  v69(v9 + v25, v70);
  v26 = v10[21];
  v68 = type metadata accessor for PersonalizationService();
  v67 = *(v68[-1].Description + 1);
  v67(v9 + v26, v68);
  v27 = v10[22];
  v66 = type metadata accessor for PlayerService();
  v65 = *(v66[-1].Description + 1);
  v65(v9 + v27, v66);
  v28 = v10[23];
  v64 = type metadata accessor for PrivacyPreferenceService();
  v63 = *(v64[-1].Description + 1);
  v63(v9 + v28, v64);
  v29 = v10[24];
  v62 = type metadata accessor for RecommendationService();
  v61 = *(v62[-1].Description + 1);
  v61(v9 + v29, v62);
  v30 = v10[25];
  v60 = type metadata accessor for RemoteBrowsingService();
  v59 = *(v60[-1].Description + 1);
  v59(v9 + v30, v60);
  v31 = v10[26];
  v58 = type metadata accessor for SearchService();
  v57 = *(v58[-1].Description + 1);
  v57(v9 + v31, v58);
  v32 = v10[27];
  v56 = type metadata accessor for ServiceSubscriptionService();
  v55 = *(v56[-1].Description + 1);
  v55(v9 + v32, v56);
  v33 = v10[28];
  v49 = type metadata accessor for SessionService();
  v54 = *(v49[-1].Description + 1);
  v54(v9 + v33, v49);
  v34 = v10[29];
  v35 = type metadata accessor for SharePlayService();
  v53 = *(v35[-1].Description + 1);
  v53(v9 + v34, v35);
  v36 = v10[30];
  v37 = type metadata accessor for SiriService();
  v52 = *(v37[-1].Description + 1);
  v52(v9 + v36, v37);
  v38 = v10[31];
  v39 = type metadata accessor for SyncService();
  v51 = *(v39[-1].Description + 1);
  v51(v9 + v38, v39);

  v40 = v10[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v50 = *(QueueService[-1].Description + 1);
  v50(v9 + v40, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v9 + v10[34]));

  v42 = v10[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v48 = *(v43[-1].Description + 1);
  v48(v9 + v42, v43);

  v44 = v101 + v97[7];

  v45 = v44 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v98(v45 + v10[6], v99);
  v95(v45 + v10[7], v96);
  v93(v45 + v10[8], v94);
  v91(v45 + v10[9], v92);
  v89(v45 + v10[10], v90);
  v87(v45 + v10[11], v88);
  v85(v45 + v10[12], v86);
  v83(v45 + v10[13], v84);
  v81(v45 + v10[14], v82);
  v79(v45 + v10[15], v80);
  v77(v45 + v10[16], v78);
  v75(v45 + v10[17], v76);
  v73(v45 + v10[18], v74);
  v71(v45 + v10[19], v72);
  v69(v45 + v10[20], v70);
  v67(v45 + v10[21], v68);
  v65(v45 + v10[22], v66);
  v63(v45 + v10[23], v64);
  v61(v45 + v10[24], v62);
  v59(v45 + v10[25], v60);
  v57(v45 + v10[26], v58);
  v55(v45 + v10[27], v56);
  v54(v45 + v10[28], v49);
  v53(v45 + v10[29], v35);
  v52(v45 + v10[30], v37);
  v51(v45 + v10[31], v39);

  v50(v45 + v10[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v45 + v10[34]));

  v48(v45 + v10[36], v43);
  swift_unknownObjectRelease();
  if (*(v101 + v97[9] + 8) >= 0xCuLL)
  {
  }

  v46 = (v101 + v97[10]);
  if (v46[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E82E80()
{
  v1 = sub_1E65D9BA8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1E65D7A18();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v101 = type metadata accessor for AppComposer(0);
  v100 = *(*(v101 - 1) + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);
  v97 = v0 + ((v7 + v8 + v100) & ~v100);

  v9 = v97 + v101[5];
  swift_unknownObjectRelease();
  v10 = type metadata accessor for AppEnvironment(0);
  v11 = v10[6];
  v99 = type metadata accessor for AccountService();
  v98 = *(v99[-1].Description + 1);
  v98(v9 + v11, v99);
  v12 = v10[7];
  v96 = type metadata accessor for AppStateService();
  v95 = *(v96[-1].Description + 1);
  v95(v9 + v12, v96);
  v13 = v10[8];
  v94 = type metadata accessor for ArchivedSessionService();
  v93 = *(v94[-1].Description + 1);
  v93(v9 + v13, v94);
  v14 = v10[9];
  v92 = type metadata accessor for AssetService();
  v91 = *(v92[-1].Description + 1);
  v91(v9 + v14, v92);
  v15 = v10[10];
  v90 = type metadata accessor for AwardsService();
  v89 = *(v90[-1].Description + 1);
  v89(v9 + v15, v90);
  v16 = v10[11];
  v88 = type metadata accessor for BookmarkService();
  v87 = *(v88[-1].Description + 1);
  v87(v9 + v16, v88);
  v17 = v10[12];
  v86 = type metadata accessor for CatalogService();
  v85 = *(v86[-1].Description + 1);
  v85(v9 + v17, v86);
  v18 = v10[13];
  v84 = type metadata accessor for ConfigurationService();
  v83 = *(v84[-1].Description + 1);
  v83(v9 + v18, v84);
  v19 = v10[14];
  v82 = type metadata accessor for ContentAvailabilityService();
  v81 = *(v82[-1].Description + 1);
  v81(v9 + v19, v82);
  v20 = v10[15];
  v80 = type metadata accessor for EngagementService();
  v79 = *(v80[-1].Description + 1);
  v79(v9 + v20, v80);
  v21 = v10[16];
  v78 = type metadata accessor for HealthDataService();
  v77 = *(v78[-1].Description + 1);
  v77(v9 + v21, v78);
  v22 = v10[17];
  v76 = type metadata accessor for InteropService();
  v75 = *(v76[-1].Description + 1);
  v75(v9 + v22, v76);
  v23 = v10[18];
  v74 = type metadata accessor for LocalizationService();
  v73 = *(v74[-1].Description + 1);
  v73(v9 + v23, v74);
  v24 = v10[19];
  v72 = type metadata accessor for MarketingService();
  v71 = *(v72[-1].Description + 1);
  v71(v9 + v24, v72);
  v25 = v10[20];
  v70 = type metadata accessor for MetricService();
  v69 = *(v70[-1].Description + 1);
  v69(v9 + v25, v70);
  v26 = v10[21];
  v68 = type metadata accessor for PersonalizationService();
  v67 = *(v68[-1].Description + 1);
  v67(v9 + v26, v68);
  v27 = v10[22];
  v66 = type metadata accessor for PlayerService();
  v65 = *(v66[-1].Description + 1);
  v65(v9 + v27, v66);
  v28 = v10[23];
  v64 = type metadata accessor for PrivacyPreferenceService();
  v63 = *(v64[-1].Description + 1);
  v63(v9 + v28, v64);
  v29 = v10[24];
  v62 = type metadata accessor for RecommendationService();
  v61 = *(v62[-1].Description + 1);
  v61(v9 + v29, v62);
  v30 = v10[25];
  v60 = type metadata accessor for RemoteBrowsingService();
  v59 = *(v60[-1].Description + 1);
  v59(v9 + v30, v60);
  v31 = v10[26];
  v58 = type metadata accessor for SearchService();
  v57 = *(v58[-1].Description + 1);
  v57(v9 + v31, v58);
  v32 = v10[27];
  v56 = type metadata accessor for ServiceSubscriptionService();
  v55 = *(v56[-1].Description + 1);
  v55(v9 + v32, v56);
  v33 = v10[28];
  v49 = type metadata accessor for SessionService();
  v54 = *(v49[-1].Description + 1);
  v54(v9 + v33, v49);
  v34 = v10[29];
  v35 = type metadata accessor for SharePlayService();
  v53 = *(v35[-1].Description + 1);
  v53(v9 + v34, v35);
  v36 = v10[30];
  v37 = type metadata accessor for SiriService();
  v52 = *(v37[-1].Description + 1);
  v52(v9 + v36, v37);
  v38 = v10[31];
  v39 = type metadata accessor for SyncService();
  v51 = *(v39[-1].Description + 1);
  v51(v9 + v38, v39);

  v40 = v10[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v50 = *(QueueService[-1].Description + 1);
  v50(v9 + v40, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v9 + v10[34]));

  v42 = v10[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v48 = *(v43[-1].Description + 1);
  v48(v9 + v42, v43);

  v44 = v97 + v101[7];

  v45 = v44 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v98(v45 + v10[6], v99);
  v95(v45 + v10[7], v96);
  v93(v45 + v10[8], v94);
  v91(v45 + v10[9], v92);
  v89(v45 + v10[10], v90);
  v87(v45 + v10[11], v88);
  v85(v45 + v10[12], v86);
  v83(v45 + v10[13], v84);
  v81(v45 + v10[14], v82);
  v79(v45 + v10[15], v80);
  v77(v45 + v10[16], v78);
  v75(v45 + v10[17], v76);
  v73(v45 + v10[18], v74);
  v71(v45 + v10[19], v72);
  v69(v45 + v10[20], v70);
  v67(v45 + v10[21], v68);
  v65(v45 + v10[22], v66);
  v63(v45 + v10[23], v64);
  v61(v45 + v10[24], v62);
  v59(v45 + v10[25], v60);
  v57(v45 + v10[26], v58);
  v55(v45 + v10[27], v56);
  v54(v45 + v10[28], v49);
  v53(v45 + v10[29], v35);
  v52(v45 + v10[30], v37);
  v51(v45 + v10[31], v39);

  v50(v45 + v10[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v45 + v10[34]));

  v48(v45 + v10[36], v43);
  swift_unknownObjectRelease();
  if (*(v97 + v101[9] + 8) >= 0xCuLL)
  {
  }

  v46 = (v97 + v101[10]);
  if (v46[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E83C64()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  v89 = v0 + ((v92 + 16) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E84968()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5E849A4()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);

  v89 = v0 + ((v92 + 32) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E85694()
{

  return swift_deallocObject();
}

uint64_t sub_1E5E856CC()
{

  return swift_deallocObject();
}

uint64_t sub_1E5E85704()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      goto LABEL_7;
    }

    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_16;
      }

LABEL_12:
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
      goto LABEL_15;
    }

    type metadata accessor for ItemContext(0);
    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 4)
    {
      if (v10 <= 6)
      {
        if (v10 == 5)
        {
          v8 = sub_1E65E0248();
        }

        else
        {
          v8 = sub_1E65E3498();
        }

        goto LABEL_15;
      }

      switch(v10)
      {
        case 7:
          type metadata accessor for ProgramDetailItemContext(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v8 = sub_1E65E3578();
            break;
          }

          goto LABEL_7;
        case 8:
          type metadata accessor for SearchItemContext(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v8 = sub_1E65DCCE8();
          }

          else
          {
            v8 = sub_1E65DCF98();
          }

          break;
        case 9:
          v8 = sub_1E65E26E8();
          break;
        default:
          goto LABEL_16;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v10 != 2)
        {
          if (v10 == 3)
          {
            v8 = sub_1E65DC508();
            goto LABEL_15;
          }

          type metadata accessor for LibraryItemContext(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v8 = sub_1E65DF3B8();
            goto LABEL_15;
          }

LABEL_7:

          goto LABEL_16;
        }

LABEL_39:
        sub_1E5E483B8(*(v0 + v2), *(v0 + v2 + 8));
        goto LABEL_16;
      }

      if (!v10)
      {
        goto LABEL_39;
      }

      if (v10 != 1)
      {
        goto LABEL_16;
      }

      type metadata accessor for BrowseItemContext(0);
      v11 = swift_getEnumCaseMultiPayload();
      if (v11 > 3)
      {
        switch(v11)
        {
          case 4:
            v8 = sub_1E65DFDA8();
            break;
          case 5:
            v8 = sub_1E65DFC88();
            break;
          case 6:
            v8 = sub_1E65E0128();
            break;
          default:
            goto LABEL_16;
        }
      }

      else
      {
        if (!v11)
        {
          v8 = sub_1E65DFF38();
          goto LABEL_15;
        }

        if (v11 == 1)
        {
          goto LABEL_7;
        }

        if (v11 != 2)
        {
          goto LABEL_16;
        }

        v8 = sub_1E65DF978();
      }
    }

LABEL_15:
    (*(*(v8 - 8) + 8))(v0 + v2, v8);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
LABEL_14:
    v8 = sub_1E65D7968();
    goto LABEL_15;
  }

LABEL_16:
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E85B38()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  v89 = v0 + ((v92 + 16) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E867FC()
{
  v96 = type metadata accessor for AppComposer(0);
  v94 = *(*(v96 - 1) + 80);
  v92 = *(*(v96 - 1) + 64);

  v95 = v0;
  v93 = (v94 + 32) & ~v94;
  v89 = v0 + v93;

  v1 = v0 + v93 + v96[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v96[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v96[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v96[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  __swift_destroy_boxed_opaque_existential_1((v95 + ((v92 + v93 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1E5E87514()
{
  v1 = type metadata accessor for CatalogService();
  (*(v1[-1].Description + 1))(v0 + ((*(v1[-1].Description + 80) + 16) & ~*(v1[-1].Description + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E8759C()
{
  v1 = type metadata accessor for CatalogService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 32) & ~*(Description + 80);
  swift_unknownObjectRelease();
  Description[1](v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E87674(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1E65D8C68();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_1E65D9908();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = sub_1E65D8F28();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = sub_1E65D9F88();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[10];

  return v16(v17, a2, v15);
}

uint64_t sub_1E5E87828(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1E65D8C68();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1E65D9908();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = sub_1E65D8F28();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = sub_1E65D9F88();
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E5E879DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEnvironment(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E5E87A48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEnvironment(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E5E87B58()
{

  return swift_deallocObject();
}

uint64_t sub_1E5E87B98()
{
  v99 = type metadata accessor for AppComposer(0);
  v96 = *(*(v99 - 1) + 80);
  v93 = *(*(v99 - 1) + 64);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075700, &qword_1E65F1CD8);
  v95 = *(v97 - 8);
  v92 = *(v95 + 80);
  v94 = (v96 + 16) & ~v96;
  v98 = v0;
  v89 = v0 + v94;

  v1 = v0 + v94 + v99[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v99[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v99[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v99[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  (*(v95 + 8))(v98 + ((((v93 + v94 + 7) & 0xFFFFFFFFFFFFFFF8) + v92 + 16) & ~v92), v97);

  return swift_deallocObject();
}

uint64_t sub_1E5E8891C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756C8, &qword_1E65F1CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5E88984()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075700, &qword_1E65F1CD8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E88A18()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);

  v89 = v0 + ((v92 + 32) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E89714()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);

  swift_unknownObjectRelease();
  v89 = v0 + ((v92 + 48) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E8A408()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);

  swift_unknownObjectRelease();
  v89 = v0 + ((v92 + 48) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E8B170()
{
  v1 = sub_1E65E1118();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E8B234()
{
  v1 = sub_1E65E1118();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E8B300()
{
  v96 = type metadata accessor for AppComposer(0);
  v94 = *(*(v96 - 1) + 80);
  v92 = *(*(v96 - 1) + 64);
  v93 = (v94 + 16) & ~v94;
  v95 = v0;
  v89 = v0 + v93;

  v1 = v0 + v93 + v96[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v96[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v96[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v96[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  __swift_destroy_boxed_opaque_existential_1((v95 + ((((v92 + v93 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1E5E8BFF4()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  v89 = v0 + ((v92 + 16) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E8CCBC()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);

  v89 = v0 + ((v92 + 32) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E8D9B8()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);

  swift_unknownObjectRelease();
  v89 = v0 + ((v92 + 48) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E8E6AC()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);

  swift_unknownObjectRelease();
  v89 = v0 + ((v92 + 48) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E8F3A4()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);

  v89 = v0 + ((v92 + 32) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E90078()
{
  v1 = sub_1E65E3C68();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1E65E3E08();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1E5E901C0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E904F8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  result = sub_1E65DC1A8();
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1E5E90540()
{
  v1 = sub_1E65D7968();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 104) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void *sub_1E5E9062C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AppEnvironment(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AppDataItemResolver(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E5E90750()
{
  v1 = type metadata accessor for AccountService();
  (*(v1[-1].Description + 1))(v0 + ((*(v1[-1].Description + 80) + 16) & ~*(v1[-1].Description + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E90AFC@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072830, &qword_1E65EBE28);
  result = sub_1E65E0518();
  *a1 = result;
  return result;
}

uint64_t sub_1E5E90B40()
{
  v1 = type metadata accessor for ContentAvailabilityService();
  (*(v1[-1].Description + 1))(v0 + ((*(v1[-1].Description + 80) + 17) & ~*(v1[-1].Description + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E90C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = sub_1E65D8998();
  v4 = *(v60 - 8);
  v5 = MEMORY[0x1EEE9AC00](v60);
  v57 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v41 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072FF8, &qword_1E65ECE50);
  v8 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v66 = &v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v64 = &v41 - v14;
  v63 = sub_1E65DAC98();
  v15 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1E65DB268();
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E65DA0B8();
  v47 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v46 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075930, &qword_1E65F2258);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v45 = &v41 - v21;
  v22 = sub_1E65D9D48();
  v23 = *(v22 + 16);
  v48 = a1;
  if (v23)
  {
    v42 = v18;
    v44 = a2;
    v69 = MEMORY[0x1E69E7CC0];
    v24 = v22;
    sub_1E601BE64(0, v23, 0);
    result = v24;
    v26 = 0;
    v27 = v69;
    v53 = v24 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v52 = v4 + 16;
    v43 = v15;
    v50 = v4 + 8;
    v51 = (v15 + 8);
    v49 = v8 + 32;
    v55 = v24;
    v56 = v8;
    v54 = v23;
    v68 = v10;
    while (v26 < *(result + 16))
    {
      v28 = v53 + *(v4 + 72) * v26;
      v67 = v27;
      v29 = *(v4 + 16);
      v31 = v59;
      v30 = v60;
      v29(v59, v28, v60);
      v32 = v57;
      v29(v57, v31, v30);
      v33 = v61;
      sub_1E65D8978();
      sub_1E65DAC38();
      sub_1E65DC2D8();
      sub_1E65DAC78();
      sub_1E65D74C8();

      sub_1E65DB248();
      (*v51)(v33, v63);
      sub_1E65D8988();
      v34 = sub_1E65D8968();
      sub_1E611CCC0(v34);

      sub_1E6134630(&qword_1EE2D6D80, MEMORY[0x1E699D120], MEMORY[0x1E699D118]);
      sub_1E65DC328();
      v35 = *(v4 + 8);
      v35(v32, v30);
      v35(v31, v30);
      v27 = v67;
      v69 = v67;
      v37 = *(v67 + 16);
      v36 = *(v67 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1E601BE64((v36 > 1), v37 + 1, 1);
        v27 = v69;
      }

      ++v26;
      *(v27 + 16) = v37 + 1;
      (*(v56 + 32))(v27 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v37, v68, v58);
      result = v55;
      if (v54 == v26)
      {

        v15 = v43;
        v18 = v42;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:
    v38 = v46;
    sub_1E65D9D38();
    v39 = v61;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DB248();
    (*(v15 + 8))(v39, v63);
    sub_1E65DA0A8();
    sub_1E6134630(&qword_1EE2D6D80, MEMORY[0x1E699D120], MEMORY[0x1E699D118]);
    sub_1E65DC438();
    (*(v47 + 8))(v38, v18);
    sub_1E65DC3F8();
    v40 = sub_1E65D9D58();
    return (*(*(v40 - 8) + 8))(v48, v40);
  }

  return result;
}

uint64_t sub_1E5E91414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = sub_1E65D8998();
  v4 = *(v60 - 8);
  v5 = MEMORY[0x1EEE9AC00](v60);
  v57 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v41 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072FD8, &qword_1E65ECE30);
  v8 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v66 = &v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v64 = &v41 - v14;
  v63 = sub_1E65DAC98();
  v15 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1E65DFA38();
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E65DA0B8();
  v47 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v46 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075908, &qword_1E65F2240);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v45 = &v41 - v21;
  v22 = sub_1E65D9D48();
  v23 = *(v22 + 16);
  v48 = a1;
  if (v23)
  {
    v42 = v18;
    v44 = a2;
    v69 = MEMORY[0x1E69E7CC0];
    v24 = v22;
    sub_1E601C7EC(0, v23, 0);
    result = v24;
    v26 = 0;
    v27 = v69;
    v53 = v24 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v52 = v4 + 16;
    v43 = v15;
    v50 = v4 + 8;
    v51 = (v15 + 8);
    v49 = v8 + 32;
    v55 = v24;
    v56 = v8;
    v54 = v23;
    v68 = v10;
    while (v26 < *(result + 16))
    {
      v28 = v53 + *(v4 + 72) * v26;
      v67 = v27;
      v29 = *(v4 + 16);
      v31 = v59;
      v30 = v60;
      v29(v59, v28, v60);
      v32 = v57;
      v29(v57, v31, v30);
      v33 = v61;
      sub_1E65D8978();
      sub_1E65DAC38();
      sub_1E65DC2D8();
      sub_1E65DAC78();
      sub_1E65D74C8();

      sub_1E65DFA28();
      (*v51)(v33, v63);
      sub_1E65D8988();
      v34 = sub_1E65D8968();
      sub_1E611CCC0(v34);

      sub_1E6134630(&qword_1EE2D6600, MEMORY[0x1E699D480], MEMORY[0x1E699D478]);
      sub_1E65DC328();
      v35 = *(v4 + 8);
      v35(v32, v30);
      v35(v31, v30);
      v27 = v67;
      v69 = v67;
      v37 = *(v67 + 16);
      v36 = *(v67 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1E601C7EC((v36 > 1), v37 + 1, 1);
        v27 = v69;
      }

      ++v26;
      *(v27 + 16) = v37 + 1;
      (*(v56 + 32))(v27 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v37, v68, v58);
      result = v55;
      if (v54 == v26)
      {

        v15 = v43;
        v18 = v42;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:
    v38 = v46;
    sub_1E65D9D38();
    v39 = v61;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DFA28();
    (*(v15 + 8))(v39, v63);
    sub_1E65DA0A8();
    sub_1E6134630(&qword_1EE2D6600, MEMORY[0x1E699D480], MEMORY[0x1E699D478]);
    sub_1E65DC438();
    (*(v47 + 8))(v38, v18);
    sub_1E65DC3F8();
    v40 = sub_1E65D9D58();
    return (*(*(v40 - 8) + 8))(v48, v40);
  }

  return result;
}

uint64_t sub_1E5E91BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = sub_1E65D8998();
  v4 = *(v60 - 8);
  v5 = MEMORY[0x1EEE9AC00](v60);
  v57 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v41 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0731F0, &qword_1E65ED048);
  v8 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v66 = &v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v64 = &v41 - v14;
  v63 = sub_1E65DAC98();
  v15 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1E65E3328();
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E65DA0B8();
  v47 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v46 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075938, &qword_1E65F2260);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v45 = &v41 - v21;
  v22 = sub_1E65D9D48();
  v23 = *(v22 + 16);
  v48 = a1;
  if (v23)
  {
    v42 = v18;
    v44 = a2;
    v69 = MEMORY[0x1E69E7CC0];
    v24 = v22;
    sub_1E601CBD8(0, v23, 0);
    result = v24;
    v26 = 0;
    v27 = v69;
    v53 = v24 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v52 = v4 + 16;
    v43 = v15;
    v50 = v4 + 8;
    v51 = (v15 + 8);
    v49 = v8 + 32;
    v55 = v24;
    v56 = v8;
    v54 = v23;
    v68 = v10;
    while (v26 < *(result + 16))
    {
      v28 = v53 + *(v4 + 72) * v26;
      v67 = v27;
      v29 = *(v4 + 16);
      v31 = v59;
      v30 = v60;
      v29(v59, v28, v60);
      v32 = v57;
      v29(v57, v31, v30);
      v33 = v61;
      sub_1E65D8978();
      sub_1E65DAC38();
      sub_1E65DC2D8();
      sub_1E65DAC78();
      sub_1E65D74C8();

      sub_1E65E3318();
      (*v51)(v33, v63);
      sub_1E65D8988();
      v34 = sub_1E65D8968();
      sub_1E611CCC0(v34);

      sub_1E6134630(&qword_1ED075940, MEMORY[0x1E699EBC8], MEMORY[0x1E699EBC0]);
      sub_1E65DC328();
      v35 = *(v4 + 8);
      v35(v32, v30);
      v35(v31, v30);
      v27 = v67;
      v69 = v67;
      v37 = *(v67 + 16);
      v36 = *(v67 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1E601CBD8((v36 > 1), v37 + 1, 1);
        v27 = v69;
      }

      ++v26;
      *(v27 + 16) = v37 + 1;
      (*(v56 + 32))(v27 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v37, v68, v58);
      result = v55;
      if (v54 == v26)
      {

        v15 = v43;
        v18 = v42;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:
    v38 = v46;
    sub_1E65D9D38();
    v39 = v61;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65E3318();
    (*(v15 + 8))(v39, v63);
    sub_1E65DA0A8();
    sub_1E6134630(&qword_1ED075940, MEMORY[0x1E699EBC8], MEMORY[0x1E699EBC0]);
    sub_1E65DC438();
    (*(v47 + 8))(v38, v18);
    sub_1E65DC3F8();
    v40 = sub_1E65D9D58();
    return (*(*(v40 - 8) + 8))(v48, v40);
  }

  return result;
}