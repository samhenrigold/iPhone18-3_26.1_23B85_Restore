uint64_t sub_1E5E923DC@<X0>(uint64_t *a1@<X8>)
{
  result = RootItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E5E92474()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1E65D76F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v7, *(v7 + 8), *(v7 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v9 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E00, &unk_1E65F4350) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v10 = swift_getEnumCaseMultiPayload();
    if (v10 == 2)
    {
    }

    else if (v10 == 1)
    {
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v12 = sub_1E65D76A8();
      (*(*(v12 - 8) + 8))(v9 + v11, v12);
    }
  }

  (*(v5 + 8))(v0 + ((v3 + v2 + v6 + 1) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1E5E9268C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v2, *(v2 + 8), *(v2 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v4 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E00, &unk_1E65F4350) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v5 = swift_getEnumCaseMultiPayload();
    if (v5 == 2)
    {
    }

    else if (v5 == 1)
    {
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v7 = sub_1E65D76A8();
      (*(*(v7 - 8) + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E92810()
{
  v103 = type metadata accessor for AppComposer(0);
  v101 = *(*(v103 - 1) + 80);
  v1 = (v101 + 16) & ~v101;
  v99 = (*(*(v103 - 1) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v100 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8) - 8) + 80);
  v102 = v0;
  v96 = v0 + v1;

  v2 = v0 + v1 + v103[5];
  swift_unknownObjectRelease();
  v3 = type metadata accessor for AppEnvironment(0);
  v4 = v3[6];
  v98 = type metadata accessor for AccountService();
  v97 = *(v98[-1].Description + 1);
  v97(v2 + v4, v98);
  v5 = v3[7];
  v95 = type metadata accessor for AppStateService();
  v94 = *(v95[-1].Description + 1);
  v94(v2 + v5, v95);
  v6 = v3[8];
  v93 = type metadata accessor for ArchivedSessionService();
  v92 = *(v93[-1].Description + 1);
  v92(v2 + v6, v93);
  v7 = v3[9];
  v91 = type metadata accessor for AssetService();
  v90 = *(v91[-1].Description + 1);
  v90(v2 + v7, v91);
  v8 = v3[10];
  v89 = type metadata accessor for AwardsService();
  v88 = *(v89[-1].Description + 1);
  v88(v2 + v8, v89);
  v9 = v3[11];
  v87 = type metadata accessor for BookmarkService();
  v86 = *(v87[-1].Description + 1);
  v86(v2 + v9, v87);
  v10 = v3[12];
  v85 = type metadata accessor for CatalogService();
  v84 = *(v85[-1].Description + 1);
  v84(v2 + v10, v85);
  v11 = v3[13];
  v83 = type metadata accessor for ConfigurationService();
  v82 = *(v83[-1].Description + 1);
  v82(v2 + v11, v83);
  v12 = v3[14];
  v81 = type metadata accessor for ContentAvailabilityService();
  v80 = *(v81[-1].Description + 1);
  v80(v2 + v12, v81);
  v13 = v3[15];
  v79 = type metadata accessor for EngagementService();
  v78 = *(v79[-1].Description + 1);
  v78(v2 + v13, v79);
  v14 = v3[16];
  v77 = type metadata accessor for HealthDataService();
  v76 = *(v77[-1].Description + 1);
  v76(v2 + v14, v77);
  v15 = v3[17];
  v75 = type metadata accessor for InteropService();
  v74 = *(v75[-1].Description + 1);
  v74(v2 + v15, v75);
  v16 = v3[18];
  v73 = type metadata accessor for LocalizationService();
  v72 = *(v73[-1].Description + 1);
  v72(v2 + v16, v73);
  v17 = v3[19];
  v71 = type metadata accessor for MarketingService();
  v70 = *(v71[-1].Description + 1);
  v70(v2 + v17, v71);
  v18 = v3[20];
  v69 = type metadata accessor for MetricService();
  v68 = *(v69[-1].Description + 1);
  v68(v2 + v18, v69);
  v19 = v3[21];
  v67 = type metadata accessor for PersonalizationService();
  v66 = *(v67[-1].Description + 1);
  v66(v2 + v19, v67);
  v20 = v3[22];
  v65 = type metadata accessor for PlayerService();
  v64 = *(v65[-1].Description + 1);
  v64(v2 + v20, v65);
  v21 = v3[23];
  v63 = type metadata accessor for PrivacyPreferenceService();
  v62 = *(v63[-1].Description + 1);
  v62(v2 + v21, v63);
  v22 = v3[24];
  v61 = type metadata accessor for RecommendationService();
  v60 = *(v61[-1].Description + 1);
  v60(v2 + v22, v61);
  v23 = v3[25];
  v59 = type metadata accessor for RemoteBrowsingService();
  v58 = *(v59[-1].Description + 1);
  v58(v2 + v23, v59);
  v24 = v3[26];
  v57 = type metadata accessor for SearchService();
  v56 = *(v57[-1].Description + 1);
  v56(v2 + v24, v57);
  v25 = v3[27];
  v55 = type metadata accessor for ServiceSubscriptionService();
  v54 = *(v55[-1].Description + 1);
  v54(v2 + v25, v55);
  v26 = v3[28];
  v48 = type metadata accessor for SessionService();
  v53 = *(v48[-1].Description + 1);
  v53(v2 + v26, v48);
  v27 = v3[29];
  v28 = type metadata accessor for SharePlayService();
  v52 = *(v28[-1].Description + 1);
  v52(v2 + v27, v28);
  v29 = v3[30];
  v30 = type metadata accessor for SiriService();
  v51 = *(v30[-1].Description + 1);
  v51(v2 + v29, v30);
  v31 = v3[31];
  v32 = type metadata accessor for SyncService();
  v50 = *(v32[-1].Description + 1);
  v50(v2 + v31, v32);

  v33 = v3[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v49 = *(QueueService[-1].Description + 1);
  v49(v2 + v33, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v2 + v3[34]));

  v35 = v3[36];
  v36 = type metadata accessor for WorkoutPlanService();
  v47 = *(v36[-1].Description + 1);
  v47(v2 + v35, v36);

  v37 = v96 + v103[7];

  v38 = v37 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v97(v38 + v3[6], v98);
  v94(v38 + v3[7], v95);
  v92(v38 + v3[8], v93);
  v90(v38 + v3[9], v91);
  v88(v38 + v3[10], v89);
  v86(v38 + v3[11], v87);
  v84(v38 + v3[12], v85);
  v82(v38 + v3[13], v83);
  v80(v38 + v3[14], v81);
  v78(v38 + v3[15], v79);
  v76(v38 + v3[16], v77);
  v74(v38 + v3[17], v75);
  v72(v38 + v3[18], v73);
  v70(v38 + v3[19], v71);
  v68(v38 + v3[20], v69);
  v66(v38 + v3[21], v67);
  v64(v38 + v3[22], v65);
  v62(v38 + v3[23], v63);
  v60(v38 + v3[24], v61);
  v58(v38 + v3[25], v59);
  v56(v38 + v3[26], v57);
  v54(v38 + v3[27], v55);
  v53(v38 + v3[28], v48);
  v52(v38 + v3[29], v28);
  v51(v38 + v3[30], v30);
  v50(v38 + v3[31], v32);

  v49(v38 + v3[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v38 + v3[34]));

  v47(v38 + v3[36], v36);
  swift_unknownObjectRelease();
  if (*(v96 + v103[9] + 8) >= 0xCuLL)
  {
  }

  v39 = (v96 + v103[10]);
  if (v39[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  swift_unknownObjectRelease();

  v40 = v102 + ((v99 + v100 + 80) & ~v100);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v40, *(v40 + 8), *(v40 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v42 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E00, &unk_1E65F4350) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v43 = swift_getEnumCaseMultiPayload();
    if (v43 == 2)
    {
    }

    else if (v43 == 1)
    {
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v45 = sub_1E65D76A8();
      (*(*(v45 - 8) + 8))(v42 + v44, v45);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E93670()
{

  return swift_deallocObject();
}

uint64_t sub_1E5E936A8()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E937D0()
{
  if (v0[3] >= 0xCuLL)
  {
  }

  if (v0[8])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 10);

  return swift_deallocObject();
}

uint64_t sub_1E5E9382C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5E93864()
{
  v99 = type metadata accessor for AppComposer(0);
  v97 = *(*(v99 - 1) + 80);
  v93 = *(*(v99 - 1) + 64);
  v96 = sub_1E65DF4A8();
  v94 = *(v96 - 8);
  v92 = *(v94 + 80);
  v98 = v0;
  v95 = (v97 + 16) & ~v97;
  v89 = v0 + v95;

  v1 = v0 + v95 + v99[5];
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

  (*(v94 + 8))(v98 + ((v95 + v93 + v92) & ~v92), v96);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E945F4()
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

uint64_t sub_1E5E952F8()
{

  return swift_deallocObject();
}

uint64_t sub_1E5E95330()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E953A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_1E5E95560(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1E5E95728()
{

  return swift_deallocObject();
}

uint64_t sub_1E5E95760()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1E5E957B0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5E957E8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1E5E95838()
{
  v1 = sub_1E65E43E8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E965A8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E5E96620(uint64_t a1, int a2, uint64_t a3)
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

uint64_t sub_1E5E966AC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E966EC()
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

uint64_t sub_1E5E973CC()
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

uint64_t sub_1E5E980A8()
{

  return swift_deallocObject();
}

uint64_t sub_1E5E980E0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5E98118()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5E98150()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1E5E98190()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1E5E981D4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5E9824C()
{
  v101 = type metadata accessor for AppComposer(0);
  v97 = *(*(v101 - 1) + 80);
  v95 = *(*(v101 - 1) + 64);
  v1 = sub_1E65D76F8();
  v98 = *(v1 - 8);
  v99 = v1;
  v94 = *(v98 + 80);
  v100 = v0;
  v96 = (v97 + 16) & ~v97;
  v91 = v0 + v96;

  v2 = v0 + v96 + v101[5];
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

  v37 = v91 + v101[7];

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
  if (*(v91 + v101[9] + 8) >= 0xCuLL)
  {
  }

  v39 = (v91 + v101[10]);
  if (v39[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v40 = (((v95 + v96 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_1((v100 + v40));
  (*(v98 + 8))(v100 + ((v40 + v94 + 40) & ~v94), v99);

  return swift_deallocObject();
}

uint64_t sub_1E5E99014()
{

  return swift_deallocObject();
}

uint64_t sub_1E5E9904C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1E5E9908C()
{
  v1 = sub_1E65D76F8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v97 = type metadata accessor for AppComposer(0);
  v96 = *(*(v97 - 1) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v93 = v0 + ((v3 + v4 + v96) & ~v96);

  v5 = v93 + v97[5];
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment(0);
  v7 = v6[6];
  v95 = type metadata accessor for AccountService();
  v94 = *(v95[-1].Description + 1);
  v94(v5 + v7, v95);
  v8 = v6[7];
  v92 = type metadata accessor for AppStateService();
  v91 = *(v92[-1].Description + 1);
  v91(v5 + v8, v92);
  v9 = v6[8];
  v90 = type metadata accessor for ArchivedSessionService();
  v89 = *(v90[-1].Description + 1);
  v89(v5 + v9, v90);
  v10 = v6[9];
  v88 = type metadata accessor for AssetService();
  v87 = *(v88[-1].Description + 1);
  v87(v5 + v10, v88);
  v11 = v6[10];
  v86 = type metadata accessor for AwardsService();
  v85 = *(v86[-1].Description + 1);
  v85(v5 + v11, v86);
  v12 = v6[11];
  v84 = type metadata accessor for BookmarkService();
  v83 = *(v84[-1].Description + 1);
  v83(v5 + v12, v84);
  v13 = v6[12];
  v82 = type metadata accessor for CatalogService();
  v81 = *(v82[-1].Description + 1);
  v81(v5 + v13, v82);
  v14 = v6[13];
  v80 = type metadata accessor for ConfigurationService();
  v79 = *(v80[-1].Description + 1);
  v79(v5 + v14, v80);
  v15 = v6[14];
  v78 = type metadata accessor for ContentAvailabilityService();
  v77 = *(v78[-1].Description + 1);
  v77(v5 + v15, v78);
  v16 = v6[15];
  v76 = type metadata accessor for EngagementService();
  v75 = *(v76[-1].Description + 1);
  v75(v5 + v16, v76);
  v17 = v6[16];
  v74 = type metadata accessor for HealthDataService();
  v73 = *(v74[-1].Description + 1);
  v73(v5 + v17, v74);
  v18 = v6[17];
  v72 = type metadata accessor for InteropService();
  v71 = *(v72[-1].Description + 1);
  v71(v5 + v18, v72);
  v19 = v6[18];
  v70 = type metadata accessor for LocalizationService();
  v69 = *(v70[-1].Description + 1);
  v69(v5 + v19, v70);
  v20 = v6[19];
  v68 = type metadata accessor for MarketingService();
  v67 = *(v68[-1].Description + 1);
  v67(v5 + v20, v68);
  v21 = v6[20];
  v66 = type metadata accessor for MetricService();
  v65 = *(v66[-1].Description + 1);
  v65(v5 + v21, v66);
  v22 = v6[21];
  v64 = type metadata accessor for PersonalizationService();
  v63 = *(v64[-1].Description + 1);
  v63(v5 + v22, v64);
  v23 = v6[22];
  v62 = type metadata accessor for PlayerService();
  v61 = *(v62[-1].Description + 1);
  v61(v5 + v23, v62);
  v24 = v6[23];
  v60 = type metadata accessor for PrivacyPreferenceService();
  v59 = *(v60[-1].Description + 1);
  v59(v5 + v24, v60);
  v25 = v6[24];
  v58 = type metadata accessor for RecommendationService();
  v57 = *(v58[-1].Description + 1);
  v57(v5 + v25, v58);
  v26 = v6[25];
  v56 = type metadata accessor for RemoteBrowsingService();
  v55 = *(v56[-1].Description + 1);
  v55(v5 + v26, v56);
  v27 = v6[26];
  v54 = type metadata accessor for SearchService();
  v53 = *(v54[-1].Description + 1);
  v53(v5 + v27, v54);
  v28 = v6[27];
  v52 = type metadata accessor for ServiceSubscriptionService();
  v51 = *(v52[-1].Description + 1);
  v51(v5 + v28, v52);
  v29 = v6[28];
  v45 = type metadata accessor for SessionService();
  v50 = *(v45[-1].Description + 1);
  v50(v5 + v29, v45);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v49 = *(v31[-1].Description + 1);
  v49(v5 + v30, v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v48 = *(v33[-1].Description + 1);
  v48(v5 + v32, v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v47 = *(v35[-1].Description + 1);
  v47(v5 + v34, v35);

  v36 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v46 = *(QueueService[-1].Description + 1);
  v46(v5 + v36, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v5 + v6[34]));

  v38 = v6[36];
  v39 = type metadata accessor for WorkoutPlanService();
  v44 = *(v39[-1].Description + 1);
  v44(v5 + v38, v39);

  v40 = v93 + v97[7];

  v41 = v40 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v94(v41 + v6[6], v95);
  v91(v41 + v6[7], v92);
  v89(v41 + v6[8], v90);
  v87(v41 + v6[9], v88);
  v85(v41 + v6[10], v86);
  v83(v41 + v6[11], v84);
  v81(v41 + v6[12], v82);
  v79(v41 + v6[13], v80);
  v77(v41 + v6[14], v78);
  v75(v41 + v6[15], v76);
  v73(v41 + v6[16], v74);
  v71(v41 + v6[17], v72);
  v69(v41 + v6[18], v70);
  v67(v41 + v6[19], v68);
  v65(v41 + v6[20], v66);
  v63(v41 + v6[21], v64);
  v61(v41 + v6[22], v62);
  v59(v41 + v6[23], v60);
  v57(v41 + v6[24], v58);
  v55(v41 + v6[25], v56);
  v53(v41 + v6[26], v54);
  v51(v41 + v6[27], v52);
  v50(v41 + v6[28], v45);
  v49(v41 + v6[29], v31);
  v48(v41 + v6[30], v33);
  v47(v41 + v6[31], v35);

  v46(v41 + v6[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v41 + v6[34]));

  v44(v41 + v6[36], v39);
  swift_unknownObjectRelease();
  if (*(v93 + v97[9] + 8) >= 0xCuLL)
  {
  }

  v42 = (v93 + v97[10]);
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E99DDC()
{
  v99 = type metadata accessor for AppComposer(0);
  v97 = *(*(v99 - 1) + 80);
  v94 = *(*(v99 - 1) + 64);
  v96 = sub_1E65D76F8();
  v92 = *(*(v96 - 8) + 80);
  v93 = *(v96 - 8);
  v98 = v0;
  v95 = (v97 + 16) & ~v97;
  v89 = v0 + v95;

  v1 = v0 + v95 + v99[5];
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

  (*(v93 + 8))(v98 + ((v95 + v94 + v92) & ~v92), v96);

  return swift_deallocObject();
}

uint64_t sub_1E5E9AB84()
{
  v1 = sub_1E65D74E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for RouteSource(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v3, v1);
  v9 = v0 + v6;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v11 = v7;
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      type metadata accessor for AppLaunchScope(0);
      v13 = swift_getEnumCaseMultiPayload();
      v11 = v7;
      if (v13 == 1)
      {
        v8(v9, v1);
        v16 = *(type metadata accessor for URLContext(0) + 20);
        if ((*(v2 + 48))(v9 + v16, 1, v1))
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      if (v13)
      {
        goto LABEL_18;
      }
    }

    v8(v9, v1);
    v16 = *(type metadata accessor for URLContext(0) + 20);
    if ((*(v2 + 48))(v9 + v16, 1, v1))
    {
LABEL_17:

      goto LABEL_18;
    }

LABEL_16:
    v8(v9 + v16, v1);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v8(v0 + v6, v1);
    v15 = *(type metadata accessor for URLContext(0) + 20);
    v11 = v7;
    if (!(*(v2 + 48))(v9 + v15, 1, v1))
    {
      v8(v9 + v15, v1);
    }

    goto LABEL_17;
  }

  v11 = v7;
  if (EnumCaseMultiPayload == 3)
  {
    v8(v9, v1);
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v12 = sub_1E65D8D48();
    (*(*(v12 - 8) + 8))(v9, v12);
  }

LABEL_18:

  if (*(v0 + v11 + 8) >= 6uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E9AF0C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5E9AF78()
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

uint64_t sub_1E5E9BC3C()
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

  return swift_deallocObject();
}

uint64_t sub_1E5E9C91C()
{
  v1 = type metadata accessor for AppComposer(0);
  v94 = *(*(v1 - 8) + 80);
  v2 = (v94 + 96) & ~v94;
  if (*(v0 + 16))
  {
    swift_unknownObjectRelease();
  }

  v91 = v0 + v2;

  v3 = v0 + v2 + *(v1 + 20);
  swift_unknownObjectRelease();
  v95 = v1;
  v4 = type metadata accessor for AppEnvironment(0);
  v5 = v4[6];
  v93 = type metadata accessor for AccountService();
  v92 = *(v93[-1].Description + 1);
  v92(v3 + v5, v93);
  v6 = v4[7];
  v90 = type metadata accessor for AppStateService();
  v89 = *(v90[-1].Description + 1);
  v89(v3 + v6, v90);
  v7 = v4[8];
  v88 = type metadata accessor for ArchivedSessionService();
  v87 = *(v88[-1].Description + 1);
  v87(v3 + v7, v88);
  v8 = v4[9];
  v86 = type metadata accessor for AssetService();
  v85 = *(v86[-1].Description + 1);
  v85(v3 + v8, v86);
  v9 = v4[10];
  v84 = type metadata accessor for AwardsService();
  v83 = *(v84[-1].Description + 1);
  v83(v3 + v9, v84);
  v10 = v4[11];
  v82 = type metadata accessor for BookmarkService();
  v81 = *(v82[-1].Description + 1);
  v81(v3 + v10, v82);
  v11 = v4[12];
  v80 = type metadata accessor for CatalogService();
  v79 = *(v80[-1].Description + 1);
  v79(v3 + v11, v80);
  v12 = v4[13];
  v78 = type metadata accessor for ConfigurationService();
  v77 = *(v78[-1].Description + 1);
  v77(v3 + v12, v78);
  v13 = v4[14];
  v76 = type metadata accessor for ContentAvailabilityService();
  v75 = *(v76[-1].Description + 1);
  v75(v3 + v13, v76);
  v14 = v4[15];
  v74 = type metadata accessor for EngagementService();
  v73 = *(v74[-1].Description + 1);
  v73(v3 + v14, v74);
  v15 = v4[16];
  v72 = type metadata accessor for HealthDataService();
  v71 = *(v72[-1].Description + 1);
  v71(v3 + v15, v72);
  v16 = v4[17];
  v70 = type metadata accessor for InteropService();
  v69 = *(v70[-1].Description + 1);
  v69(v3 + v16, v70);
  v17 = v4[18];
  v68 = type metadata accessor for LocalizationService();
  v67 = *(v68[-1].Description + 1);
  v67(v3 + v17, v68);
  v18 = v4[19];
  v66 = type metadata accessor for MarketingService();
  v65 = *(v66[-1].Description + 1);
  v65(v3 + v18, v66);
  v19 = v4[20];
  v64 = type metadata accessor for MetricService();
  v63 = *(v64[-1].Description + 1);
  v63(v3 + v19, v64);
  v20 = v4[21];
  v62 = type metadata accessor for PersonalizationService();
  v61 = *(v62[-1].Description + 1);
  v61(v3 + v20, v62);
  v21 = v4[22];
  v60 = type metadata accessor for PlayerService();
  v59 = *(v60[-1].Description + 1);
  v59(v3 + v21, v60);
  v22 = v4[23];
  v58 = type metadata accessor for PrivacyPreferenceService();
  v57 = *(v58[-1].Description + 1);
  v57(v3 + v22, v58);
  v23 = v4[24];
  v56 = type metadata accessor for RecommendationService();
  v55 = *(v56[-1].Description + 1);
  v55(v3 + v23, v56);
  v24 = v4[25];
  v54 = type metadata accessor for RemoteBrowsingService();
  v53 = *(v54[-1].Description + 1);
  v53(v3 + v24, v54);
  v25 = v4[26];
  v52 = type metadata accessor for SearchService();
  v51 = *(v52[-1].Description + 1);
  v51(v3 + v25, v52);
  v26 = v4[27];
  v45 = type metadata accessor for ServiceSubscriptionService();
  v50 = *(v45[-1].Description + 1);
  v50(v3 + v26, v45);
  v27 = v4[28];
  v43 = type metadata accessor for SessionService();
  v49 = *(v43[-1].Description + 1);
  v49(v3 + v27, v43);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v48 = *(v29[-1].Description + 1);
  v48(v3 + v28, v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v47 = *(v31[-1].Description + 1);
  v47(v3 + v30, v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v46 = *(v33[-1].Description + 1);
  v46(v3 + v32, v33);

  v34 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v44 = *(QueueService[-1].Description + 1);
  v44(v3 + v34, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v3 + v4[34]));

  v36 = v4[36];
  v37 = type metadata accessor for WorkoutPlanService();
  v42 = *(v37[-1].Description + 1);
  v42(v3 + v36, v37);

  v38 = v91 + v95[7];

  v39 = v38 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v92(v39 + v4[6], v93);
  v89(v39 + v4[7], v90);
  v87(v39 + v4[8], v88);
  v85(v39 + v4[9], v86);
  v83(v39 + v4[10], v84);
  v81(v39 + v4[11], v82);
  v79(v39 + v4[12], v80);
  v77(v39 + v4[13], v78);
  v75(v39 + v4[14], v76);
  v73(v39 + v4[15], v74);
  v71(v39 + v4[16], v72);
  v69(v39 + v4[17], v70);
  v67(v39 + v4[18], v68);
  v65(v39 + v4[19], v66);
  v63(v39 + v4[20], v64);
  v61(v39 + v4[21], v62);
  v59(v39 + v4[22], v60);
  v57(v39 + v4[23], v58);
  v55(v39 + v4[24], v56);
  v53(v39 + v4[25], v54);
  v51(v39 + v4[26], v52);
  v50(v39 + v4[27], v45);
  v49(v39 + v4[28], v43);
  v48(v39 + v4[29], v29);
  v47(v39 + v4[30], v31);
  v46(v39 + v4[31], v33);

  v44(v39 + v4[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v39 + v4[34]));

  v42(v39 + v4[36], v37);
  swift_unknownObjectRelease();
  if (*(v91 + v95[9] + 8) >= 0xCuLL)
  {
  }

  v40 = (v91 + v95[10]);
  if (v40[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E9D614()
{

  return swift_deallocObject();
}

uint64_t sub_1E5E9D64C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E9D6AC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5E9D6E4()
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

uint64_t sub_1E5E9E3A8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for AppComposer(0);
  v98 = *(*(v4 - 8) + 80);
  v5 = (v3 + v98 + 16) & ~v98;

  v6 = sub_1E65E20A8();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v2, 1, v6))
  {
    (*(v7 + 8))(v0 + v2, v6);
  }

  v99 = v0 + v5;

  v100 = v4;
  v8 = v0 + v5 + *(v4 + 20);
  swift_unknownObjectRelease();
  v9 = type metadata accessor for AppEnvironment(0);
  v10 = v9[6];
  v97 = type metadata accessor for AccountService();
  v96 = *(v97[-1].Description + 1);
  v96(v8 + v10, v97);
  v11 = v9[7];
  v95 = type metadata accessor for AppStateService();
  v94 = *(v95[-1].Description + 1);
  v94(v8 + v11, v95);
  v12 = v9[8];
  v93 = type metadata accessor for ArchivedSessionService();
  v92 = *(v93[-1].Description + 1);
  v92(v8 + v12, v93);
  v13 = v9[9];
  v91 = type metadata accessor for AssetService();
  v90 = *(v91[-1].Description + 1);
  v90(v8 + v13, v91);
  v14 = v9[10];
  v89 = type metadata accessor for AwardsService();
  v88 = *(v89[-1].Description + 1);
  v88(v8 + v14, v89);
  v15 = v9[11];
  v87 = type metadata accessor for BookmarkService();
  v86 = *(v87[-1].Description + 1);
  v86(v8 + v15, v87);
  v16 = v9[12];
  v85 = type metadata accessor for CatalogService();
  v84 = *(v85[-1].Description + 1);
  v84(v8 + v16, v85);
  v17 = v9[13];
  v83 = type metadata accessor for ConfigurationService();
  v82 = *(v83[-1].Description + 1);
  v82(v8 + v17, v83);
  v18 = v9[14];
  v81 = type metadata accessor for ContentAvailabilityService();
  v80 = *(v81[-1].Description + 1);
  v80(v8 + v18, v81);
  v19 = v9[15];
  v79 = type metadata accessor for EngagementService();
  v78 = *(v79[-1].Description + 1);
  v78(v8 + v19, v79);
  v20 = v9[16];
  v77 = type metadata accessor for HealthDataService();
  v76 = *(v77[-1].Description + 1);
  v76(v8 + v20, v77);
  v21 = v9[17];
  v75 = type metadata accessor for InteropService();
  v74 = *(v75[-1].Description + 1);
  v74(v8 + v21, v75);
  v22 = v9[18];
  v73 = type metadata accessor for LocalizationService();
  v72 = *(v73[-1].Description + 1);
  v72(v8 + v22, v73);
  v23 = v9[19];
  v71 = type metadata accessor for MarketingService();
  v70 = *(v71[-1].Description + 1);
  v70(v8 + v23, v71);
  v24 = v9[20];
  v69 = type metadata accessor for MetricService();
  v68 = *(v69[-1].Description + 1);
  v68(v8 + v24, v69);
  v25 = v9[21];
  v67 = type metadata accessor for PersonalizationService();
  v66 = *(v67[-1].Description + 1);
  v66(v8 + v25, v67);
  v26 = v9[22];
  v65 = type metadata accessor for PlayerService();
  v64 = *(v65[-1].Description + 1);
  v64(v8 + v26, v65);
  v27 = v9[23];
  v63 = type metadata accessor for PrivacyPreferenceService();
  v62 = *(v63[-1].Description + 1);
  v62(v8 + v27, v63);
  v28 = v9[24];
  v61 = type metadata accessor for RecommendationService();
  v60 = *(v61[-1].Description + 1);
  v60(v8 + v28, v61);
  v29 = v9[25];
  v59 = type metadata accessor for RemoteBrowsingService();
  v58 = *(v59[-1].Description + 1);
  v58(v8 + v29, v59);
  v30 = v9[26];
  v57 = type metadata accessor for SearchService();
  v56 = *(v57[-1].Description + 1);
  v56(v8 + v30, v57);
  v31 = v9[27];
  v50 = type metadata accessor for ServiceSubscriptionService();
  v55 = *(v50[-1].Description + 1);
  v55(v8 + v31, v50);
  v32 = v9[28];
  v48 = type metadata accessor for SessionService();
  v54 = *(v48[-1].Description + 1);
  v54(v8 + v32, v48);
  v33 = v9[29];
  v34 = type metadata accessor for SharePlayService();
  v53 = *(v34[-1].Description + 1);
  v53(v8 + v33, v34);
  v35 = v9[30];
  v36 = type metadata accessor for SiriService();
  v52 = *(v36[-1].Description + 1);
  v52(v8 + v35, v36);
  v37 = v9[31];
  v38 = type metadata accessor for SyncService();
  v51 = *(v38[-1].Description + 1);
  v51(v8 + v37, v38);

  v39 = v9[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v49 = *(QueueService[-1].Description + 1);
  v49(v8 + v39, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v8 + v9[34]));

  v41 = v9[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v43 = *(v42[-1].Description + 1);
  v43(v8 + v41, v42);

  v44 = v99 + v100[7];

  v45 = v44 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v96(v45 + v9[6], v97);
  v94(v45 + v9[7], v95);
  v92(v45 + v9[8], v93);
  v90(v45 + v9[9], v91);
  v88(v45 + v9[10], v89);
  v86(v45 + v9[11], v87);
  v84(v45 + v9[12], v85);
  v82(v45 + v9[13], v83);
  v80(v45 + v9[14], v81);
  v78(v45 + v9[15], v79);
  v76(v45 + v9[16], v77);
  v74(v45 + v9[17], v75);
  v72(v45 + v9[18], v73);
  v70(v45 + v9[19], v71);
  v68(v45 + v9[20], v69);
  v66(v45 + v9[21], v67);
  v64(v45 + v9[22], v65);
  v62(v45 + v9[23], v63);
  v60(v45 + v9[24], v61);
  v58(v45 + v9[25], v59);
  v56(v45 + v9[26], v57);
  v55(v45 + v9[27], v50);
  v54(v45 + v9[28], v48);
  v53(v45 + v9[29], v34);
  v52(v45 + v9[30], v36);
  v51(v45 + v9[31], v38);

  v49(v45 + v9[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v45 + v9[34]));

  v43(v45 + v9[36], v42);
  swift_unknownObjectRelease();
  if (*(v99 + v100[9] + 8) >= 0xCuLL)
  {
  }

  v46 = (v99 + v100[10]);
  if (v46[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E9F16C()
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

uint64_t sub_1E5E9FE70()
{

  return swift_deallocObject();
}

uint64_t sub_1E5E9FEF0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E9FF28()
{

  return swift_deallocObject();
}

uint64_t sub_1E5E9FF6C()
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

uint64_t sub_1E5EA0C50()
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

uint64_t sub_1E5EA1918()
{
  v1 = *(type metadata accessor for BrowsePage(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for AppComposer(0);
  v100 = *(*(v4 - 1) + 80);
  v5 = (v2 + v3 + v100) & ~v100;
  v6 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
    v9 = sub_1E65D72D8();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  v101 = v0 + v5;

  v10 = v0 + v5 + v4[5];
  swift_unknownObjectRelease();
  v11 = type metadata accessor for AppEnvironment(0);
  v12 = v11[6];
  v99 = type metadata accessor for AccountService();
  v98 = *(v99[-1].Description + 1);
  v98(v10 + v12, v99);
  v13 = v11[7];
  v97 = type metadata accessor for AppStateService();
  v96 = *(v97[-1].Description + 1);
  v96(v10 + v13, v97);
  v14 = v11[8];
  v95 = type metadata accessor for ArchivedSessionService();
  v94 = *(v95[-1].Description + 1);
  v94(v10 + v14, v95);
  v15 = v11[9];
  v93 = type metadata accessor for AssetService();
  v92 = *(v93[-1].Description + 1);
  v92(v10 + v15, v93);
  v16 = v11[10];
  v91 = type metadata accessor for AwardsService();
  v90 = *(v91[-1].Description + 1);
  v90(v10 + v16, v91);
  v17 = v11[11];
  v89 = type metadata accessor for BookmarkService();
  v88 = *(v89[-1].Description + 1);
  v88(v10 + v17, v89);
  v18 = v11[12];
  v87 = type metadata accessor for CatalogService();
  v86 = *(v87[-1].Description + 1);
  v86(v10 + v18, v87);
  v19 = v11[13];
  v85 = type metadata accessor for ConfigurationService();
  v84 = *(v85[-1].Description + 1);
  v84(v10 + v19, v85);
  v20 = v11[14];
  v83 = type metadata accessor for ContentAvailabilityService();
  v82 = *(v83[-1].Description + 1);
  v82(v10 + v20, v83);
  v21 = v11[15];
  v81 = type metadata accessor for EngagementService();
  v80 = *(v81[-1].Description + 1);
  v80(v10 + v21, v81);
  v22 = v11[16];
  v79 = type metadata accessor for HealthDataService();
  v78 = *(v79[-1].Description + 1);
  v78(v10 + v22, v79);
  v23 = v11[17];
  v77 = type metadata accessor for InteropService();
  v76 = *(v77[-1].Description + 1);
  v76(v10 + v23, v77);
  v24 = v11[18];
  v75 = type metadata accessor for LocalizationService();
  v74 = *(v75[-1].Description + 1);
  v74(v10 + v24, v75);
  v25 = v11[19];
  v73 = type metadata accessor for MarketingService();
  v72 = *(v73[-1].Description + 1);
  v72(v10 + v25, v73);
  v26 = v11[20];
  v71 = type metadata accessor for MetricService();
  v70 = *(v71[-1].Description + 1);
  v70(v10 + v26, v71);
  v27 = v11[21];
  v69 = type metadata accessor for PersonalizationService();
  v68 = *(v69[-1].Description + 1);
  v68(v10 + v27, v69);
  v28 = v11[22];
  v67 = type metadata accessor for PlayerService();
  v66 = *(v67[-1].Description + 1);
  v66(v10 + v28, v67);
  v29 = v11[23];
  v65 = type metadata accessor for PrivacyPreferenceService();
  v64 = *(v65[-1].Description + 1);
  v64(v10 + v29, v65);
  v30 = v11[24];
  v63 = type metadata accessor for RecommendationService();
  v62 = *(v63[-1].Description + 1);
  v62(v10 + v30, v63);
  v31 = v11[25];
  v61 = type metadata accessor for RemoteBrowsingService();
  v60 = *(v61[-1].Description + 1);
  v60(v10 + v31, v61);
  v32 = v11[26];
  v59 = type metadata accessor for SearchService();
  v58 = *(v59[-1].Description + 1);
  v58(v10 + v32, v59);
  v33 = v11[27];
  v57 = type metadata accessor for ServiceSubscriptionService();
  v56 = *(v57[-1].Description + 1);
  v56(v10 + v33, v57);
  v34 = v11[28];
  v51 = type metadata accessor for SessionService();
  v55 = *(v51[-1].Description + 1);
  v55(v10 + v34, v51);
  v35 = v11[29];
  v49 = type metadata accessor for SharePlayService();
  v54 = *(v49[-1].Description + 1);
  v54(v10 + v35, v49);
  v36 = v11[30];
  v37 = type metadata accessor for SiriService();
  v53 = *(v37[-1].Description + 1);
  v53(v10 + v36, v37);
  v38 = v11[31];
  v39 = type metadata accessor for SyncService();
  v52 = *(v39[-1].Description + 1);
  v52(v10 + v38, v39);

  v40 = v11[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v50 = *(QueueService[-1].Description + 1);
  v50(v10 + v40, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v10 + v11[34]));

  v42 = v11[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v44 = *(v43[-1].Description + 1);
  v44(v10 + v42, v43);

  v45 = v101 + v4[7];

  v46 = v45 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v98(v46 + v11[6], v99);
  v96(v46 + v11[7], v97);
  v94(v46 + v11[8], v95);
  v92(v46 + v11[9], v93);
  v90(v46 + v11[10], v91);
  v88(v46 + v11[11], v89);
  v86(v46 + v11[12], v87);
  v84(v46 + v11[13], v85);
  v82(v46 + v11[14], v83);
  v80(v46 + v11[15], v81);
  v78(v46 + v11[16], v79);
  v76(v46 + v11[17], v77);
  v74(v46 + v11[18], v75);
  v72(v46 + v11[19], v73);
  v70(v46 + v11[20], v71);
  v68(v46 + v11[21], v69);
  v66(v46 + v11[22], v67);
  v64(v46 + v11[23], v65);
  v62(v46 + v11[24], v63);
  v60(v46 + v11[25], v61);
  v58(v46 + v11[26], v59);
  v56(v46 + v11[27], v57);
  v55(v46 + v11[28], v51);
  v54(v46 + v11[29], v49);
  v53(v46 + v11[30], v37);
  v52(v46 + v11[31], v39);

  v50(v46 + v11[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v46 + v11[34]));

  v44(v46 + v11[36], v43);
  swift_unknownObjectRelease();
  if (*(v101 + v4[9] + 8) >= 0xCuLL)
  {
  }

  v47 = (v101 + v4[10]);
  if (v47[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5EA26B8()
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

uint64_t sub_1E5EA33B4()
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

uint64_t sub_1E5EA40A8()
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

uint64_t sub_1E5EA4DA0()
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

uint64_t sub_1E5EA5A78()
{
  QueueService = type metadata accessor for UpNextQueueService();
  (*(QueueService[-1].Description + 1))(v0 + ((*(QueueService[-1].Description + 80) + 16) & ~*(QueueService[-1].Description + 80)), QueueService);

  return swift_deallocObject();
}

uint64_t sub_1E5EA5B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E5EA5C6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E5EA5D80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1E65D8C68();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[7]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[8];
      goto LABEL_7;
    }

    v18 = sub_1E65D8F28();
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[14];
      goto LABEL_7;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[15];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_1E5EA5FFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1E65D8C68();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
    return result;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_7;
  }

  v18 = sub_1E65D8F28();
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[14];
    goto LABEL_7;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[15];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_1E5EA6278()
{
  v1 = type metadata accessor for CatalogService();
  (*(v1[-1].Description + 1))(v0 + ((*(v1[-1].Description + 80) + 16) & ~*(v1[-1].Description + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5EA6300()
{
  v1 = type metadata accessor for CatalogService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 32) & ~*(Description + 80);
  swift_unknownObjectRelease();
  Description[1](v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5EA63E8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EA642C()
{
  v1 = type metadata accessor for RouteDestination(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  swift_unknownObjectRelease();

  if (*(v0 + 48) >= 6uLL)
  {
  }

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
      goto LABEL_18;
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
      goto LABEL_48;
    case 3u:

      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v25 = sub_1E65D72D8();
      goto LABEL_46;
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

          goto LABEL_78;
        }

LABEL_77:

        goto LABEL_78;
      }

      if (EnumCaseMultiPayload <= 6 || EnumCaseMultiPayload == 7)
      {
        goto LABEL_77;
      }

LABEL_78:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280);

LABEL_53:
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
            goto LABEL_69;
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

          goto LABEL_68;
        }

        if (v50 != 1)
        {
          goto LABEL_69;
        }

LABEL_60:
        v52 = sub_1E65D74E8();
        v53 = *(v52 - 8);
        v54 = *(v53 + 8);
        v54(v49, v52);
        v55 = *(type metadata accessor for URLContext(0) + 20);
        if (!(*(v53 + 48))(v49 + v55, 1, v52))
        {
          v54(v49 + v55, v52);
        }

LABEL_68:

        goto LABEL_69;
      }

      switch(v50)
      {
        case 2:
          goto LABEL_60;
        case 3:
          v51 = sub_1E65D74E8();
          break;
        case 4:
          v51 = sub_1E65D8D48();
          break;
        default:
          goto LABEL_69;
      }

      (*(*(v51 - 8) + 8))(v49, v51);
LABEL_69:

      return swift_deallocObject();
    case 6u:

      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v23 = *(v22 + 48);
      v24 = sub_1E65DB848();
      (*(*(v24 - 8) + 8))(v4 + v23, v24);
      v8 = *(v22 + 64);
      v25 = sub_1E65E1518();
      goto LABEL_46;
    case 7u:
      v33 = sub_1E65DB848();
      (*(*(v33 - 8) + 8))(v0 + v3, v33);
      v34 = &unk_1ED0720D0;
      v35 = &unk_1E65EA290;
      goto LABEL_44;
    case 8u:
    case 9u:

      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v6 = *(v5 + 48);
      v7 = sub_1E65DB848();
      (*(*(v7 - 8) + 8))(v4 + v6, v7);
      v8 = *(v5 + 64);
      goto LABEL_45;
    case 0xCu:

      sub_1E5F94E00(*(v4 + 16), *(v4 + 24));
      goto LABEL_53;
    case 0xEu:
      v21 = sub_1E65DB718();
      goto LABEL_52;
    case 0x11u:

      v34 = &unk_1ED0720E0;
      v35 = &unk_1E65EA2A0;
LABEL_44:
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v34, v35) + 48);
LABEL_45:
      v25 = sub_1E65D74E8();
      goto LABEL_46;
    case 0x12u:
      sub_1E5F94E14(*v4, *(v4 + 8), *(v4 + 16));
      goto LABEL_53;
    case 0x13u:
      goto LABEL_25;
    case 0x14u:

      goto LABEL_53;
    case 0x15u:

      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v44 = sub_1E65D96F8();
LABEL_48:
      v19 = v44;
      v20 = *(v44 - 8);
      if (!(*(v20 + 48))(v4 + v18, 1, v44))
      {
        goto LABEL_49;
      }

      goto LABEL_53;
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
LABEL_49:
        (*(v20 + 8))(v4 + v18, v19);
      }

      goto LABEL_53;
    case 0x17u:
      v29 = sub_1E65E57D8();
      (*(*(v29 - 8) + 8))(v0 + v3, v29);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v31 = *(v30 + 48);
      v32 = sub_1E65E5528();
      (*(*(v32 - 8) + 8))(v4 + v31, v32);
      if (*(v4 + *(v30 + 64) + 8) >= 0xCuLL)
      {
        goto LABEL_18;
      }

      goto LABEL_53;
    case 0x18u:

      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v25 = sub_1E65DB848();
      goto LABEL_46;
    case 0x1Au:
      sub_1E65E52B8();
      v37 = swift_getEnumCaseMultiPayload();
      if (v37 == 1)
      {
      }

      else if (!v37)
      {
LABEL_25:
        v21 = sub_1E65D74E8();
LABEL_52:
        (*(*(v21 - 8) + 8))(v0 + v3, v21);
      }

      goto LABEL_53;
    case 0x1Bu:
      type metadata accessor for PlaylistType(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_18;
      }

      v21 = sub_1E65DAEB8();
      goto LABEL_52;
    case 0x1Cu:
      v21 = sub_1E65D76F8();
      goto LABEL_52;
    case 0x1Du:
      v48 = sub_1E65E55E8();
      (*(*(v48 - 8) + 8))(v0 + v3, v48);
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v25 = sub_1E65D7EB8();
LABEL_46:
      (*(*(v25 - 8) + 8))(v4 + v8, v25);
      goto LABEL_53;
    case 0x1Eu:
      v26 = sub_1E65E56B8();
      (*(*(v26 - 8) + 8))(v0 + v3, v26);
      v27 = &unk_1ED072110;
      v28 = &unk_1E65EA2D0;
      goto LABEL_39;
    case 0x1Fu:
      v36 = sub_1E65DA308();
      (*(*(v36 - 8) + 8))(v0 + v3, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810);
      goto LABEL_18;
    case 0x20u:
      v47 = sub_1E65E58D8();
      (*(*(v47 - 8) + 8))(v0 + v3, v47);
      v27 = &qword_1ED072120;
      v28 = &qword_1E65EA2E0;
LABEL_39:
      __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);

LABEL_18:

      goto LABEL_53;
    case 0x21u:
      v21 = sub_1E65D9048();
      goto LABEL_52;
    default:
      goto LABEL_53;
  }
}

uint64_t sub_1E5EA71BC()
{
  v1 = sub_1E65D74E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1E65E5388();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1E5EA7318()
{
  v1 = sub_1E65E5388();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5EA73E4()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EA741C()
{
  v1 = sub_1E65E5288();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for AppEnvironment(0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = (*(*v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  swift_unknownObjectRelease();
  v8 = v5[8];
  v9 = type metadata accessor for AccountService();
  (*(v9[-1].Description + 1))(v0 + v6 + v8, v9);
  v10 = v5[9];
  v11 = type metadata accessor for AppStateService();
  (*(v11[-1].Description + 1))(v0 + v6 + v10, v11);
  v12 = v5[10];
  v13 = type metadata accessor for ArchivedSessionService();
  (*(v13[-1].Description + 1))(v0 + v6 + v12, v13);
  v14 = v5[11];
  v15 = type metadata accessor for AssetService();
  (*(v15[-1].Description + 1))(v0 + v6 + v14, v15);
  v16 = v5[12];
  v17 = type metadata accessor for AwardsService();
  (*(v17[-1].Description + 1))(v0 + v6 + v16, v17);
  v18 = v5[13];
  v19 = type metadata accessor for BookmarkService();
  (*(v19[-1].Description + 1))(v0 + v6 + v18, v19);
  v20 = v5[14];
  v21 = type metadata accessor for CatalogService();
  (*(v21[-1].Description + 1))(v0 + v6 + v20, v21);
  v22 = v5[15];
  v23 = type metadata accessor for ConfigurationService();
  (*(v23[-1].Description + 1))(v0 + v6 + v22, v23);
  v24 = v5[16];
  v25 = type metadata accessor for ContentAvailabilityService();
  (*(v25[-1].Description + 1))(v0 + v6 + v24, v25);
  v26 = v5[17];
  v27 = type metadata accessor for EngagementService();
  (*(v27[-1].Description + 1))(v0 + v6 + v26, v27);
  v28 = v5[18];
  v29 = type metadata accessor for HealthDataService();
  (*(v29[-1].Description + 1))(v0 + v6 + v28, v29);
  v30 = v5[19];
  v31 = type metadata accessor for InteropService();
  (*(v31[-1].Description + 1))(v0 + v6 + v30, v31);
  v32 = v5[20];
  v33 = type metadata accessor for LocalizationService();
  (*(v33[-1].Description + 1))(v0 + v6 + v32, v33);
  v34 = v5[21];
  v35 = type metadata accessor for MarketingService();
  (*(v35[-1].Description + 1))(v0 + v6 + v34, v35);
  v36 = v5[22];
  v37 = type metadata accessor for MetricService();
  (*(v37[-1].Description + 1))(v0 + v6 + v36, v37);
  v38 = v5[23];
  v39 = type metadata accessor for PersonalizationService();
  (*(v39[-1].Description + 1))(v0 + v6 + v38, v39);
  v40 = v5[24];
  v41 = type metadata accessor for PlayerService();
  (*(v41[-1].Description + 1))(v0 + v6 + v40, v41);
  v42 = v5[25];
  v43 = type metadata accessor for PrivacyPreferenceService();
  (*(v43[-1].Description + 1))(v0 + v6 + v42, v43);
  v44 = v5[26];
  v45 = type metadata accessor for RecommendationService();
  (*(v45[-1].Description + 1))(v0 + v6 + v44, v45);
  v46 = v5[27];
  v47 = type metadata accessor for RemoteBrowsingService();
  (*(v47[-1].Description + 1))(v0 + v6 + v46, v47);
  v48 = v5[28];
  v49 = type metadata accessor for SearchService();
  (*(v49[-1].Description + 1))(v0 + v6 + v48, v49);
  v50 = v5[29];
  v51 = type metadata accessor for ServiceSubscriptionService();
  (*(v51[-1].Description + 1))(v0 + v6 + v50, v51);
  v52 = v5[30];
  v53 = type metadata accessor for SessionService();
  (*(v53[-1].Description + 1))(v0 + v6 + v52, v53);
  v54 = v5[31];
  v55 = type metadata accessor for SharePlayService();
  (*(v55[-1].Description + 1))(v0 + v6 + v54, v55);
  v56 = v5[32];
  v57 = type metadata accessor for SiriService();
  (*(v57[-1].Description + 1))(v0 + v6 + v56, v57);
  v58 = v5[33];
  v59 = type metadata accessor for SyncService();
  (*(v59[-1].Description + 1))(v0 + v6 + v58, v59);

  v60 = v5[35];
  QueueService = type metadata accessor for UpNextQueueService();
  (*(QueueService[-1].Description + 1))(v0 + v6 + v60, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v0 + v6 + v5[36]));

  v62 = v5[38];
  v63 = type metadata accessor for WorkoutPlanService();
  (*(v63[-1].Description + 1))(v0 + v6 + v62, v63);
  __swift_destroy_boxed_opaque_existential_1((v0 + v7));

  return swift_deallocObject();
}

uint64_t sub_1E5EA7C40()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EA7C78()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5EA7CB0()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EA7E88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5EA7F58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5EA8030()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EA8078()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EA80C4()
{
  v99 = type metadata accessor for AppComposer(0);
  v97 = *(*(v99 - 1) + 80);
  v94 = *(*(v99 - 1) + 64);
  v96 = sub_1E65DCA88();
  v93 = *(v96 - 8);
  v92 = *(v93 + 80);
  v98 = v0;
  v95 = (v97 + 16) & ~v97;
  v89 = v0 + v95;

  v1 = v0 + v95 + v99[5];
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

  (*(v93 + 8))(v98 + ((v95 + v94 + v92) & ~v92), v96);

  return swift_deallocObject();
}

uint64_t sub_1E5EA8E34()
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

  return swift_deallocObject();
}

uint64_t sub_1E5EA9B14()
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

uint64_t sub_1E5EAA818()
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

uint64_t sub_1E5EAB508()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EAB540()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EAB584()
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

uint64_t sub_1E5EABB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RouteResource(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for RouteSource(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1E5EABC60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for RouteResource(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for RouteSource(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E5EABD68()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EABDC0()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EABE00()
{
  v1 = sub_1E65E1668();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EABF1C()
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

uint64_t sub_1E5EACBE0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076468, &qword_1E65F56B8);
  sub_1E61BEE9C();
  sub_1E65DF7C8();
  return swift_getWitnessTable();
}

uint64_t sub_1E5EACC5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5EACCCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5EACD3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5EACDA4()
{
  v99 = type metadata accessor for AppComposer(0);
  v97 = *(*(v99 - 1) + 80);
  v94 = *(*(v99 - 1) + 64);
  v96 = sub_1E65D76F8();
  v92 = *(*(v96 - 8) + 80);
  v93 = *(v96 - 8);
  v98 = v0;
  v95 = (v97 + 16) & ~v97;
  v89 = v0 + v95;

  v1 = v0 + v95 + v99[5];
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

  (*(v93 + 8))(v98 + ((v95 + v94 + v92) & ~v92), v96);

  return swift_deallocObject();
}

uint64_t sub_1E5EADB44()
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

uint64_t sub_1E5EAE82C()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EAE868()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EAE8A4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EAE8E4()
{
  v1 = sub_1E65D76F8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5EAE984()
{
  v1 = type metadata accessor for ArchivedSessionService();
  (*(v1[-1].Description + 1))(v0 + ((*(v1[-1].Description + 80) + 16) & ~*(v1[-1].Description + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5EAEA0C()
{
  v1 = type metadata accessor for ArchivedSessionService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 32) & ~*(Description + 80);
  swift_unknownObjectRelease();
  Description[1](v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5EAEAE4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EAEB2C()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EAEB64()
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

  __swift_destroy_boxed_opaque_existential_1((v95 + ((((v92 + v93 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EAF888()
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

uint64_t sub_1E5EB05A0()
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

uint64_t sub_1E5EB1354()
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

uint64_t sub_1E5EB2078(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076530, &qword_1E65F5860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5EB20E8()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EB2120()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EB2178()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5EB21FC()
{
  v1 = type metadata accessor for RemoteBrowsingService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 32) & ~*(Description + 80);
  v4 = (Description[8] + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (Description[1])(v0 + v3, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v4));

  return swift_deallocObject();
}

uint64_t sub_1E5EB22EC()
{
  v1 = type metadata accessor for ServiceSubscriptionService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 32) & ~*(Description + 80);
  v4 = Description[8];
  v5 = type metadata accessor for RemoteBrowsingService();
  v6 = v5[-1].Description;
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (Description[1])(v0 + v3, v1);
  v6[1](v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1E5EB2440()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5EB2478()
{
  v1 = type metadata accessor for RouteDestination(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;

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

uint64_t sub_1E5EB31EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EB3248()
{
  v158 = type metadata accessor for AppComposer(0);
  v156 = *(*(v158 - 1) + 80);
  v1 = (v156 + 16) & ~v156;
  v2 = v1 + *(*(v158 - 1) + 64);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  v155 = *(*(v152 - 8) + 80);
  v150 = (v2 + v155) & ~v155;
  v3 = *(*(v152 - 8) + 64);
  v151 = type metadata accessor for ContextMenu(0);
  v154 = *(*(v151 - 8) + 80);
  v153 = *(*(v151 - 8) + 64);
  v157 = v0;
  v147 = v0 + v1;

  v4 = v0 + v1 + v158[5];
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment(0);
  v6 = v5[6];
  v149 = type metadata accessor for AccountService();
  v148 = *(v149[-1].Description + 1);
  v148(v4 + v6, v149);
  v7 = v5[7];
  v146 = type metadata accessor for AppStateService();
  v145 = *(v146[-1].Description + 1);
  v145(v4 + v7, v146);
  v8 = v5[8];
  v144 = type metadata accessor for ArchivedSessionService();
  v143 = *(v144[-1].Description + 1);
  v143(v4 + v8, v144);
  v9 = v5[9];
  v142 = type metadata accessor for AssetService();
  v141 = *(v142[-1].Description + 1);
  v141(v4 + v9, v142);
  v10 = v5[10];
  v140 = type metadata accessor for AwardsService();
  v139 = *(v140[-1].Description + 1);
  v139(v4 + v10, v140);
  v11 = v5[11];
  v138 = type metadata accessor for BookmarkService();
  v137 = *(v138[-1].Description + 1);
  v137(v4 + v11, v138);
  v12 = v5[12];
  v136 = type metadata accessor for CatalogService();
  v135 = *(v136[-1].Description + 1);
  v135(v4 + v12, v136);
  v13 = v5[13];
  v134 = type metadata accessor for ConfigurationService();
  v133 = *(v134[-1].Description + 1);
  v133(v4 + v13, v134);
  v14 = v5[14];
  v132 = type metadata accessor for ContentAvailabilityService();
  v131 = *(v132[-1].Description + 1);
  v131(v4 + v14, v132);
  v15 = v5[15];
  v130 = type metadata accessor for EngagementService();
  v129 = *(v130[-1].Description + 1);
  v129(v4 + v15, v130);
  v16 = v5[16];
  v128 = type metadata accessor for HealthDataService();
  v127 = *(v128[-1].Description + 1);
  v127(v4 + v16, v128);
  v17 = v5[17];
  v126 = type metadata accessor for InteropService();
  v125 = *(v126[-1].Description + 1);
  v125(v4 + v17, v126);
  v18 = v5[18];
  v124 = type metadata accessor for LocalizationService();
  v123 = *(v124[-1].Description + 1);
  v123(v4 + v18, v124);
  v19 = v5[19];
  v122 = type metadata accessor for MarketingService();
  v121 = *(v122[-1].Description + 1);
  v121(v4 + v19, v122);
  v20 = v5[20];
  v120 = type metadata accessor for MetricService();
  v119 = *(v120[-1].Description + 1);
  v119(v4 + v20, v120);
  v21 = v5[21];
  v118 = type metadata accessor for PersonalizationService();
  v117 = *(v118[-1].Description + 1);
  v117(v4 + v21, v118);
  v22 = v5[22];
  v116 = type metadata accessor for PlayerService();
  v115 = *(v116[-1].Description + 1);
  v115(v4 + v22, v116);
  v23 = v5[23];
  v114 = type metadata accessor for PrivacyPreferenceService();
  v113 = *(v114[-1].Description + 1);
  v113(v4 + v23, v114);
  v24 = v5[24];
  v112 = type metadata accessor for RecommendationService();
  v111 = *(v112[-1].Description + 1);
  v111(v4 + v24, v112);
  v25 = v5[25];
  v110 = type metadata accessor for RemoteBrowsingService();
  v109 = *(v110[-1].Description + 1);
  v109(v4 + v25, v110);
  v26 = v5[26];
  v108 = type metadata accessor for SearchService();
  v107 = *(v108[-1].Description + 1);
  v107(v4 + v26, v108);
  v27 = v5[27];
  v106 = type metadata accessor for ServiceSubscriptionService();
  v105 = *(v106[-1].Description + 1);
  v105(v4 + v27, v106);
  v28 = v5[28];
  v99 = type metadata accessor for SessionService();
  v104 = *(v99[-1].Description + 1);
  v104(v4 + v28, v99);
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
  v100 = *(QueueService[-1].Description + 1);
  v100(v4 + v35, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v4 + v5[34]));

  v37 = v5[36];
  v38 = type metadata accessor for WorkoutPlanService();
  v98 = *(v38[-1].Description + 1);
  v98(v4 + v37, v38);

  v39 = v147 + v158[7];

  v40 = v39 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v148(v40 + v5[6], v149);
  v145(v40 + v5[7], v146);
  v143(v40 + v5[8], v144);
  v141(v40 + v5[9], v142);
  v139(v40 + v5[10], v140);
  v137(v40 + v5[11], v138);
  v135(v40 + v5[12], v136);
  v133(v40 + v5[13], v134);
  v131(v40 + v5[14], v132);
  v129(v40 + v5[15], v130);
  v127(v40 + v5[16], v128);
  v125(v40 + v5[17], v126);
  v123(v40 + v5[18], v124);
  v121(v40 + v5[19], v122);
  v119(v40 + v5[20], v120);
  v117(v40 + v5[21], v118);
  v115(v40 + v5[22], v116);
  v113(v40 + v5[23], v114);
  v111(v40 + v5[24], v112);
  v109(v40 + v5[25], v110);
  v107(v40 + v5[26], v108);
  v105(v40 + v5[27], v106);
  v104(v40 + v5[28], v99);
  v103(v40 + v5[29], v30);
  v102(v40 + v5[30], v32);
  v101(v40 + v5[31], v34);

  v100(v40 + v5[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v40 + v5[34]));

  v98(v40 + v5[36], v38);
  swift_unknownObjectRelease();
  if (*(v147 + v158[9] + 8) >= 0xCuLL)
  {
  }

  v41 = (v147 + v158[10]);
  if (v41[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v42 = (v150 + v3 + v154) & ~v154;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v44 = v157 + v150 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v45 = swift_getEnumCaseMultiPayload();
    switch(v45)
    {
      case 2:

        break;
      case 1:
        v47 = sub_1E65DE788();
        (*(*(v47 - 8) + 8))(v44, v47);
        v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v49 = sub_1E65D76A8();
        (*(*(v49 - 8) + 8))(v44 + v48, v49);
        break;
      case 0:
        v46 = sub_1E65DE788();
        (*(*(v46 - 8) + 8))(v44, v46);
        break;
    }

    State = type metadata accessor for WorkoutContextMenuLoadState(0);
    v51 = v44 + State[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v52 = swift_getEnumCaseMultiPayload();
    if (v52 == 2)
    {
    }

    else if (v52 == 1)
    {
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v54 = sub_1E65D76A8();
      (*(*(v54 - 8) + 8))(v51 + v53, v54);
    }

    v55 = v44 + State[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v56 = swift_getEnumCaseMultiPayload();
    if (v56 == 2)
    {
    }

    else if (v56 == 1)
    {
      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v58 = sub_1E65D76A8();
      (*(*(v58 - 8) + 8))(v55 + v57, v58);
    }

    v59 = v44 + State[7];
    v60 = swift_getEnumCaseMultiPayload();
    if (v60 == 2)
    {
    }

    else if (v60 == 1)
    {
      v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v62 = sub_1E65D76A8();
      (*(*(v62 - 8) + 8))(v59 + v61, v62);
    }

    v63 = v44 + State[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    v64 = swift_getEnumCaseMultiPayload();
    switch(v64)
    {
      case 2:

        break;
      case 1:
        v66 = sub_1E65DE508();
        (*(*(v66 - 8) + 8))(v63, v66);
        v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A400, &unk_1E65F7150) + 48);
        v68 = sub_1E65D76A8();
        (*(*(v68 - 8) + 8))(v63 + v67, v68);
        break;
      case 0:
        v65 = sub_1E65DE508();
        (*(*(v65 - 8) + 8))(v63, v65);
        break;
    }
  }

  v69 = sub_1E65D76F8();
  (*(*(v69 - 8) + 8))(v157 + v42, v69);
  v70 = v157 + v42 + *(v151 + 20);
  v71 = swift_getEnumCaseMultiPayload();

  if (v71 == 1)
  {
    v72 = v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v73 = swift_getEnumCaseMultiPayload();
    switch(v73)
    {
      case 2:

        break;
      case 1:
        v75 = sub_1E65DE788();
        (*(*(v75 - 8) + 8))(v72, v75);
        v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v77 = sub_1E65D76A8();
        (*(*(v77 - 8) + 8))(v72 + v76, v77);
        break;
      case 0:
        v74 = sub_1E65DE788();
        (*(*(v74 - 8) + 8))(v72, v74);
        break;
    }

    v78 = type metadata accessor for WorkoutContextMenuLoadState(0);
    v79 = v72 + v78[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v80 = swift_getEnumCaseMultiPayload();
    if (v80 == 2)
    {
    }

    else if (v80 == 1)
    {
      v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v82 = sub_1E65D76A8();
      (*(*(v82 - 8) + 8))(v79 + v81, v82);
    }

    v83 = v72 + v78[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v84 = swift_getEnumCaseMultiPayload();
    if (v84 == 2)
    {
    }

    else if (v84 == 1)
    {
      v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v86 = sub_1E65D76A8();
      (*(*(v86 - 8) + 8))(v83 + v85, v86);
    }

    v87 = v72 + v78[7];
    v88 = swift_getEnumCaseMultiPayload();
    if (v88 == 2)
    {
    }

    else if (v88 == 1)
    {
      v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v90 = sub_1E65D76A8();
      (*(*(v90 - 8) + 8))(v87 + v89, v90);
    }

    v91 = v72 + v78[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    v92 = swift_getEnumCaseMultiPayload();
    switch(v92)
    {
      case 2:

        break;
      case 1:
        v94 = sub_1E65DE508();
        (*(*(v94 - 8) + 8))(v91, v94);
        v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A400, &unk_1E65F7150) + 48);
        v96 = sub_1E65D76A8();
        (*(*(v96 - 8) + 8))(v91 + v95, v96);
        break;
      case 0:
        v93 = sub_1E65DE508();
        (*(*(v93 - 8) + 8))(v91, v93);
        break;
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v157 + ((v153 + v42 + 7) & 0xFFFFFFFFFFFFFFF8)));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EB48FC()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EB4934()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1E65D76F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v7, *(v7 + 8), *(v7 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v9 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073868, &unk_1E65FA930) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v10 = swift_getEnumCaseMultiPayload();
    if (v10 == 2)
    {
    }

    else if (v10 == 1)
    {
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v12 = sub_1E65D76A8();
      (*(*(v12 - 8) + 8))(v9 + v11, v12);
    }

    v13 = v9 + *(type metadata accessor for RemoveLibraryActionLoadState(0) + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 == 2)
    {
    }

    else if (v14 == 1)
    {
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v16 = sub_1E65D76A8();
      (*(*(v16 - 8) + 8))(v13 + v15, v16);
    }
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1E5EB4BF0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v2, *(v2 + 8), *(v2 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v4 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073868, &unk_1E65FA930) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v5 = swift_getEnumCaseMultiPayload();
    if (v5 == 2)
    {
    }

    else if (v5 == 1)
    {
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v7 = sub_1E65D76A8();
      (*(*(v7 - 8) + 8))(v4 + v6, v7);
    }

    v8 = v4 + *(type metadata accessor for RemoveLibraryActionLoadState(0) + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 == 2)
    {
    }

    else if (v9 == 1)
    {
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v11 = sub_1E65D76A8();
      (*(*(v11 - 8) + 8))(v8 + v10, v11);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1E5EB4E18()
{
  v107 = type metadata accessor for AppComposer(0);
  v105 = *(*(v107 - 1) + 80);
  v1 = (v105 + 16) & ~v105;
  v103 = (*(*(v107 - 1) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v104 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900) - 8) + 80);
  v106 = v0;
  v100 = v0 + v1;

  v2 = v0 + v1 + v107[5];
  swift_unknownObjectRelease();
  v3 = type metadata accessor for AppEnvironment(0);
  v4 = v3[6];
  v102 = type metadata accessor for AccountService();
  v101 = *(v102[-1].Description + 1);
  v101(v2 + v4, v102);
  v5 = v3[7];
  v99 = type metadata accessor for AppStateService();
  v98 = *(v99[-1].Description + 1);
  v98(v2 + v5, v99);
  v6 = v3[8];
  v97 = type metadata accessor for ArchivedSessionService();
  v96 = *(v97[-1].Description + 1);
  v96(v2 + v6, v97);
  v7 = v3[9];
  v95 = type metadata accessor for AssetService();
  v94 = *(v95[-1].Description + 1);
  v94(v2 + v7, v95);
  v8 = v3[10];
  v93 = type metadata accessor for AwardsService();
  v92 = *(v93[-1].Description + 1);
  v92(v2 + v8, v93);
  v9 = v3[11];
  v91 = type metadata accessor for BookmarkService();
  v90 = *(v91[-1].Description + 1);
  v90(v2 + v9, v91);
  v10 = v3[12];
  v89 = type metadata accessor for CatalogService();
  v88 = *(v89[-1].Description + 1);
  v88(v2 + v10, v89);
  v11 = v3[13];
  v87 = type metadata accessor for ConfigurationService();
  v86 = *(v87[-1].Description + 1);
  v86(v2 + v11, v87);
  v12 = v3[14];
  v85 = type metadata accessor for ContentAvailabilityService();
  v84 = *(v85[-1].Description + 1);
  v84(v2 + v12, v85);
  v13 = v3[15];
  v83 = type metadata accessor for EngagementService();
  v82 = *(v83[-1].Description + 1);
  v82(v2 + v13, v83);
  v14 = v3[16];
  v81 = type metadata accessor for HealthDataService();
  v80 = *(v81[-1].Description + 1);
  v80(v2 + v14, v81);
  v15 = v3[17];
  v79 = type metadata accessor for InteropService();
  v78 = *(v79[-1].Description + 1);
  v78(v2 + v15, v79);
  v16 = v3[18];
  v77 = type metadata accessor for LocalizationService();
  v76 = *(v77[-1].Description + 1);
  v76(v2 + v16, v77);
  v17 = v3[19];
  v75 = type metadata accessor for MarketingService();
  v74 = *(v75[-1].Description + 1);
  v74(v2 + v17, v75);
  v18 = v3[20];
  v73 = type metadata accessor for MetricService();
  v72 = *(v73[-1].Description + 1);
  v72(v2 + v18, v73);
  v19 = v3[21];
  v71 = type metadata accessor for PersonalizationService();
  v70 = *(v71[-1].Description + 1);
  v70(v2 + v19, v71);
  v20 = v3[22];
  v69 = type metadata accessor for PlayerService();
  v68 = *(v69[-1].Description + 1);
  v68(v2 + v20, v69);
  v21 = v3[23];
  v67 = type metadata accessor for PrivacyPreferenceService();
  v66 = *(v67[-1].Description + 1);
  v66(v2 + v21, v67);
  v22 = v3[24];
  v65 = type metadata accessor for RecommendationService();
  v64 = *(v65[-1].Description + 1);
  v64(v2 + v22, v65);
  v23 = v3[25];
  v63 = type metadata accessor for RemoteBrowsingService();
  v62 = *(v63[-1].Description + 1);
  v62(v2 + v23, v63);
  v24 = v3[26];
  v61 = type metadata accessor for SearchService();
  v60 = *(v61[-1].Description + 1);
  v60(v2 + v24, v61);
  v25 = v3[27];
  v59 = type metadata accessor for ServiceSubscriptionService();
  v58 = *(v59[-1].Description + 1);
  v58(v2 + v25, v59);
  v26 = v3[28];
  v52 = type metadata accessor for SessionService();
  v57 = *(v52[-1].Description + 1);
  v57(v2 + v26, v52);
  v27 = v3[29];
  v28 = type metadata accessor for SharePlayService();
  v56 = *(v28[-1].Description + 1);
  v56(v2 + v27, v28);
  v29 = v3[30];
  v30 = type metadata accessor for SiriService();
  v55 = *(v30[-1].Description + 1);
  v55(v2 + v29, v30);
  v31 = v3[31];
  v32 = type metadata accessor for SyncService();
  v54 = *(v32[-1].Description + 1);
  v54(v2 + v31, v32);

  v33 = v3[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v53 = *(QueueService[-1].Description + 1);
  v53(v2 + v33, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v2 + v3[34]));

  v35 = v3[36];
  v36 = type metadata accessor for WorkoutPlanService();
  v51 = *(v36[-1].Description + 1);
  v51(v2 + v35, v36);

  v37 = v100 + v107[7];

  v38 = v37 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v101(v38 + v3[6], v102);
  v98(v38 + v3[7], v99);
  v96(v38 + v3[8], v97);
  v94(v38 + v3[9], v95);
  v92(v38 + v3[10], v93);
  v90(v38 + v3[11], v91);
  v88(v38 + v3[12], v89);
  v86(v38 + v3[13], v87);
  v84(v38 + v3[14], v85);
  v82(v38 + v3[15], v83);
  v80(v38 + v3[16], v81);
  v78(v38 + v3[17], v79);
  v76(v38 + v3[18], v77);
  v74(v38 + v3[19], v75);
  v72(v38 + v3[20], v73);
  v70(v38 + v3[21], v71);
  v68(v38 + v3[22], v69);
  v66(v38 + v3[23], v67);
  v64(v38 + v3[24], v65);
  v62(v38 + v3[25], v63);
  v60(v38 + v3[26], v61);
  v58(v38 + v3[27], v59);
  v57(v38 + v3[28], v52);
  v56(v38 + v3[29], v28);
  v55(v38 + v3[30], v30);
  v54(v38 + v3[31], v32);

  v53(v38 + v3[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v38 + v3[34]));

  v51(v38 + v3[36], v36);
  swift_unknownObjectRelease();
  if (*(v100 + v107[9] + 8) >= 0xCuLL)
  {
  }

  v39 = (v100 + v107[10]);
  if (v39[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  swift_unknownObjectRelease();

  v40 = v106 + ((v103 + v104 + 80) & ~v104);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v40, *(v40 + 8), *(v40 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v42 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073868, &unk_1E65FA930) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v43 = swift_getEnumCaseMultiPayload();
    if (v43 == 2)
    {
    }

    else if (v43 == 1)
    {
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v45 = sub_1E65D76A8();
      (*(*(v45 - 8) + 8))(v42 + v44, v45);
    }

    v46 = v42 + *(type metadata accessor for RemoveLibraryActionLoadState(0) + 20);
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

  return swift_deallocObject();
}

uint64_t sub_1E5EB5D1C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5EB5D54()
{
  v108 = type metadata accessor for AppComposer(0);
  v106 = *(*(v108 - 1) + 80);
  v1 = (v106 + 16) & ~v106;
  v2 = v1 + *(*(v108 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0);
  v105 = *(*(v3 - 8) + 80);
  v103 = v2 + v105;
  v104 = *(*(v3 - 8) + 64);
  v107 = v0;
  v100 = v0 + v1;

  v4 = v0 + v1 + v108[5];
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment(0);
  v6 = v5[6];
  v102 = type metadata accessor for AccountService();
  v101 = *(v102[-1].Description + 1);
  v101(v4 + v6, v102);
  v7 = v5[7];
  v99 = type metadata accessor for AppStateService();
  v98 = *(v99[-1].Description + 1);
  v98(v4 + v7, v99);
  v8 = v5[8];
  v97 = type metadata accessor for ArchivedSessionService();
  v96 = *(v97[-1].Description + 1);
  v96(v4 + v8, v97);
  v9 = v5[9];
  v95 = type metadata accessor for AssetService();
  v94 = *(v95[-1].Description + 1);
  v94(v4 + v9, v95);
  v10 = v5[10];
  v93 = type metadata accessor for AwardsService();
  v92 = *(v93[-1].Description + 1);
  v92(v4 + v10, v93);
  v11 = v5[11];
  v91 = type metadata accessor for BookmarkService();
  v90 = *(v91[-1].Description + 1);
  v90(v4 + v11, v91);
  v12 = v5[12];
  v89 = type metadata accessor for CatalogService();
  v88 = *(v89[-1].Description + 1);
  v88(v4 + v12, v89);
  v13 = v5[13];
  v87 = type metadata accessor for ConfigurationService();
  v86 = *(v87[-1].Description + 1);
  v86(v4 + v13, v87);
  v14 = v5[14];
  v85 = type metadata accessor for ContentAvailabilityService();
  v84 = *(v85[-1].Description + 1);
  v84(v4 + v14, v85);
  v15 = v5[15];
  v83 = type metadata accessor for EngagementService();
  v82 = *(v83[-1].Description + 1);
  v82(v4 + v15, v83);
  v16 = v5[16];
  v81 = type metadata accessor for HealthDataService();
  v80 = *(v81[-1].Description + 1);
  v80(v4 + v16, v81);
  v17 = v5[17];
  v79 = type metadata accessor for InteropService();
  v78 = *(v79[-1].Description + 1);
  v78(v4 + v17, v79);
  v18 = v5[18];
  v77 = type metadata accessor for LocalizationService();
  v76 = *(v77[-1].Description + 1);
  v76(v4 + v18, v77);
  v19 = v5[19];
  v75 = type metadata accessor for MarketingService();
  v74 = *(v75[-1].Description + 1);
  v74(v4 + v19, v75);
  v20 = v5[20];
  v73 = type metadata accessor for MetricService();
  v72 = *(v73[-1].Description + 1);
  v72(v4 + v20, v73);
  v21 = v5[21];
  v71 = type metadata accessor for PersonalizationService();
  v70 = *(v71[-1].Description + 1);
  v70(v4 + v21, v71);
  v22 = v5[22];
  v69 = type metadata accessor for PlayerService();
  v68 = *(v69[-1].Description + 1);
  v68(v4 + v22, v69);
  v23 = v5[23];
  v67 = type metadata accessor for PrivacyPreferenceService();
  v66 = *(v67[-1].Description + 1);
  v66(v4 + v23, v67);
  v24 = v5[24];
  v65 = type metadata accessor for RecommendationService();
  v64 = *(v65[-1].Description + 1);
  v64(v4 + v24, v65);
  v25 = v5[25];
  v63 = type metadata accessor for RemoteBrowsingService();
  v62 = *(v63[-1].Description + 1);
  v62(v4 + v25, v63);
  v26 = v5[26];
  v61 = type metadata accessor for SearchService();
  v60 = *(v61[-1].Description + 1);
  v60(v4 + v26, v61);
  v27 = v5[27];
  v59 = type metadata accessor for ServiceSubscriptionService();
  v58 = *(v59[-1].Description + 1);
  v58(v4 + v27, v59);
  v28 = v5[28];
  v52 = type metadata accessor for SessionService();
  v57 = *(v52[-1].Description + 1);
  v57(v4 + v28, v52);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v56 = *(v30[-1].Description + 1);
  v56(v4 + v29, v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v55 = *(v32[-1].Description + 1);
  v55(v4 + v31, v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v54 = *(v34[-1].Description + 1);
  v54(v4 + v33, v34);

  v35 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v53 = *(QueueService[-1].Description + 1);
  v53(v4 + v35, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v4 + v5[34]));

  v37 = v5[36];
  v38 = type metadata accessor for WorkoutPlanService();
  v51 = *(v38[-1].Description + 1);
  v51(v4 + v37, v38);

  v39 = v100 + v108[7];

  v40 = v39 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v101(v40 + v5[6], v102);
  v98(v40 + v5[7], v99);
  v96(v40 + v5[8], v97);
  v94(v40 + v5[9], v95);
  v92(v40 + v5[10], v93);
  v90(v40 + v5[11], v91);
  v88(v40 + v5[12], v89);
  v86(v40 + v5[13], v87);
  v84(v40 + v5[14], v85);
  v82(v40 + v5[15], v83);
  v80(v40 + v5[16], v81);
  v78(v40 + v5[17], v79);
  v76(v40 + v5[18], v77);
  v74(v40 + v5[19], v75);
  v72(v40 + v5[20], v73);
  v70(v40 + v5[21], v71);
  v68(v40 + v5[22], v69);
  v66(v40 + v5[23], v67);
  v64(v40 + v5[24], v65);
  v62(v40 + v5[25], v63);
  v60(v40 + v5[26], v61);
  v58(v40 + v5[27], v59);
  v57(v40 + v5[28], v52);
  v56(v40 + v5[29], v30);
  v55(v40 + v5[30], v32);
  v54(v40 + v5[31], v34);

  v53(v40 + v5[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v40 + v5[34]));

  v51(v40 + v5[36], v38);
  swift_unknownObjectRelease();
  if (*(v100 + v108[9] + 8) >= 0xCuLL)
  {
  }

  v41 = v103 & ~v105;
  v42 = (v100 + v108[10]);
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v44 = v107 + v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073878, &unk_1E65F8490) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v45 = swift_getEnumCaseMultiPayload();
    switch(v45)
    {
      case 2:

        break;
      case 1:
        v47 = sub_1E65DE788();
        (*(*(v47 - 8) + 8))(v44, v47);
        v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v49 = sub_1E65D76A8();
        (*(*(v49 - 8) + 8))(v44 + v48, v49);
        break;
      case 0:
        v46 = sub_1E65DE788();
        (*(*(v46 - 8) + 8))(v44, v46);
        break;
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v107 + ((v104 + v41 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1E5EB6C00()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1E65D76F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v8 = v0 + v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073878, &unk_1E65F8490) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v9 = swift_getEnumCaseMultiPayload();
    switch(v9)
    {
      case 2:

        break;
      case 1:
        v11 = sub_1E65DE788();
        (*(*(v11 - 8) + 8))(v8, v11);
        v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v13 = sub_1E65D76A8();
        (*(*(v13 - 8) + 8))(v8 + v12, v13);
        break;
      case 0:
        v10 = sub_1E65DE788();
        (*(*(v10 - 8) + 8))(v8, v10);
        break;
    }
  }

  (*(v5 + 8))(v0 + ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1E5EB6E9C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v4 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073878, &unk_1E65F8490) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v5 = swift_getEnumCaseMultiPayload();
    switch(v5)
    {
      case 2:

        break;
      case 1:
        v7 = sub_1E65DE788();
        (*(*(v7 - 8) + 8))(v4, v7);
        v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v9 = sub_1E65D76A8();
        (*(*(v9 - 8) + 8))(v4 + v8, v9);
        break;
      case 0:
        v6 = sub_1E65DE788();
        (*(*(v6 - 8) + 8))(v4, v6);
        break;
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1E5EB7094()
{
  v100 = type metadata accessor for AppComposer(0);
  v96 = *(*(v100 - 1) + 80);
  v94 = *(*(v100 - 1) + 64);
  v1 = sub_1E65DEC18();
  v97 = *(v1 - 8);
  v98 = v1;
  v93 = *(v97 + 80);
  v99 = v0;
  v95 = (v96 + 16) & ~v96;
  v90 = v0 + v95;

  v2 = v0 + v95 + v100[5];
  swift_unknownObjectRelease();
  v3 = type metadata accessor for AppEnvironment(0);
  v4 = v3[6];
  v92 = type metadata accessor for AccountService();
  v91 = *(v92[-1].Description + 1);
  v91(v2 + v4, v92);
  v5 = v3[7];
  v89 = type metadata accessor for AppStateService();
  v88 = *(v89[-1].Description + 1);
  v88(v2 + v5, v89);
  v6 = v3[8];
  v87 = type metadata accessor for ArchivedSessionService();
  v86 = *(v87[-1].Description + 1);
  v86(v2 + v6, v87);
  v7 = v3[9];
  v85 = type metadata accessor for AssetService();
  v84 = *(v85[-1].Description + 1);
  v84(v2 + v7, v85);
  v8 = v3[10];
  v83 = type metadata accessor for AwardsService();
  v82 = *(v83[-1].Description + 1);
  v82(v2 + v8, v83);
  v9 = v3[11];
  v81 = type metadata accessor for BookmarkService();
  v80 = *(v81[-1].Description + 1);
  v80(v2 + v9, v81);
  v10 = v3[12];
  v79 = type metadata accessor for CatalogService();
  v78 = *(v79[-1].Description + 1);
  v78(v2 + v10, v79);
  v11 = v3[13];
  v77 = type metadata accessor for ConfigurationService();
  v76 = *(v77[-1].Description + 1);
  v76(v2 + v11, v77);
  v12 = v3[14];
  v75 = type metadata accessor for ContentAvailabilityService();
  v74 = *(v75[-1].Description + 1);
  v74(v2 + v12, v75);
  v13 = v3[15];
  v73 = type metadata accessor for EngagementService();
  v72 = *(v73[-1].Description + 1);
  v72(v2 + v13, v73);
  v14 = v3[16];
  v71 = type metadata accessor for HealthDataService();
  v70 = *(v71[-1].Description + 1);
  v70(v2 + v14, v71);
  v15 = v3[17];
  v69 = type metadata accessor for InteropService();
  v68 = *(v69[-1].Description + 1);
  v68(v2 + v15, v69);
  v16 = v3[18];
  v67 = type metadata accessor for LocalizationService();
  v66 = *(v67[-1].Description + 1);
  v66(v2 + v16, v67);
  v17 = v3[19];
  v65 = type metadata accessor for MarketingService();
  v64 = *(v65[-1].Description + 1);
  v64(v2 + v17, v65);
  v18 = v3[20];
  v63 = type metadata accessor for MetricService();
  v62 = *(v63[-1].Description + 1);
  v62(v2 + v18, v63);
  v19 = v3[21];
  v61 = type metadata accessor for PersonalizationService();
  v60 = *(v61[-1].Description + 1);
  v60(v2 + v19, v61);
  v20 = v3[22];
  v59 = type metadata accessor for PlayerService();
  v58 = *(v59[-1].Description + 1);
  v58(v2 + v20, v59);
  v21 = v3[23];
  v57 = type metadata accessor for PrivacyPreferenceService();
  v56 = *(v57[-1].Description + 1);
  v56(v2 + v21, v57);
  v22 = v3[24];
  v55 = type metadata accessor for RecommendationService();
  v54 = *(v55[-1].Description + 1);
  v54(v2 + v22, v55);
  v23 = v3[25];
  v53 = type metadata accessor for RemoteBrowsingService();
  v52 = *(v53[-1].Description + 1);
  v52(v2 + v23, v53);
  v24 = v3[26];
  v51 = type metadata accessor for SearchService();
  v50 = *(v51[-1].Description + 1);
  v50(v2 + v24, v51);
  v25 = v3[27];
  v49 = type metadata accessor for ServiceSubscriptionService();
  v48 = *(v49[-1].Description + 1);
  v48(v2 + v25, v49);
  v26 = v3[28];
  v42 = type metadata accessor for SessionService();
  v47 = *(v42[-1].Description + 1);
  v47(v2 + v26, v42);
  v27 = v3[29];
  v28 = type metadata accessor for SharePlayService();
  v46 = *(v28[-1].Description + 1);
  v46(v2 + v27, v28);
  v29 = v3[30];
  v30 = type metadata accessor for SiriService();
  v45 = *(v30[-1].Description + 1);
  v45(v2 + v29, v30);
  v31 = v3[31];
  v32 = type metadata accessor for SyncService();
  v44 = *(v32[-1].Description + 1);
  v44(v2 + v31, v32);

  v33 = v3[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v43 = *(QueueService[-1].Description + 1);
  v43(v2 + v33, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v2 + v3[34]));

  v35 = v3[36];
  v36 = type metadata accessor for WorkoutPlanService();
  v41 = *(v36[-1].Description + 1);
  v41(v2 + v35, v36);

  v37 = v90 + v100[7];

  v38 = v37 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v91(v38 + v3[6], v92);
  v88(v38 + v3[7], v89);
  v86(v38 + v3[8], v87);
  v84(v38 + v3[9], v85);
  v82(v38 + v3[10], v83);
  v80(v38 + v3[11], v81);
  v78(v38 + v3[12], v79);
  v76(v38 + v3[13], v77);
  v74(v38 + v3[14], v75);
  v72(v38 + v3[15], v73);
  v70(v38 + v3[16], v71);
  v68(v38 + v3[17], v69);
  v66(v38 + v3[18], v67);
  v64(v38 + v3[19], v65);
  v62(v38 + v3[20], v63);
  v60(v38 + v3[21], v61);
  v58(v38 + v3[22], v59);
  v56(v38 + v3[23], v57);
  v54(v38 + v3[24], v55);
  v52(v38 + v3[25], v53);
  v50(v38 + v3[26], v51);
  v48(v38 + v3[27], v49);
  v47(v38 + v3[28], v42);
  v46(v38 + v3[29], v28);
  v45(v38 + v3[30], v30);
  v44(v38 + v3[31], v32);

  v43(v38 + v3[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v38 + v3[34]));

  v41(v38 + v3[36], v36);
  swift_unknownObjectRelease();
  if (*(v90 + v100[9] + 8) >= 0xCuLL)
  {
  }

  v39 = (v90 + v100[10]);
  if (v39[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  swift_unknownObjectRelease();

  (*(v97 + 8))(v99 + ((((v94 + v95 + 7) & 0xFFFFFFFFFFFFFFF8) + v93 + 80) & ~v93), v98);

  return swift_deallocObject();
}

uint64_t sub_1E5EB7E24()
{
  v127 = type metadata accessor for AppComposer(0);
  v125 = *(*(v127 - 1) + 80);
  v1 = (v125 + 16) & ~v125;
  v2 = v1 + *(*(v127 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  v124 = *(*(v3 - 8) + 80);
  v122 = v2 + v124;
  v123 = *(*(v3 - 8) + 64);
  v126 = v0;
  v119 = v0 + v1;

  v4 = v0 + v1 + v127[5];
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment(0);
  v6 = v5[6];
  v121 = type metadata accessor for AccountService();
  v120 = *(v121[-1].Description + 1);
  v120(v4 + v6, v121);
  v7 = v5[7];
  v118 = type metadata accessor for AppStateService();
  v117 = *(v118[-1].Description + 1);
  v117(v4 + v7, v118);
  v8 = v5[8];
  v116 = type metadata accessor for ArchivedSessionService();
  v115 = *(v116[-1].Description + 1);
  v115(v4 + v8, v116);
  v9 = v5[9];
  v114 = type metadata accessor for AssetService();
  v113 = *(v114[-1].Description + 1);
  v113(v4 + v9, v114);
  v10 = v5[10];
  v112 = type metadata accessor for AwardsService();
  v111 = *(v112[-1].Description + 1);
  v111(v4 + v10, v112);
  v11 = v5[11];
  v110 = type metadata accessor for BookmarkService();
  v109 = *(v110[-1].Description + 1);
  v109(v4 + v11, v110);
  v12 = v5[12];
  v108 = type metadata accessor for CatalogService();
  v107 = *(v108[-1].Description + 1);
  v107(v4 + v12, v108);
  v13 = v5[13];
  v106 = type metadata accessor for ConfigurationService();
  v105 = *(v106[-1].Description + 1);
  v105(v4 + v13, v106);
  v14 = v5[14];
  v104 = type metadata accessor for ContentAvailabilityService();
  v103 = *(v104[-1].Description + 1);
  v103(v4 + v14, v104);
  v15 = v5[15];
  v102 = type metadata accessor for EngagementService();
  v101 = *(v102[-1].Description + 1);
  v101(v4 + v15, v102);
  v16 = v5[16];
  v100 = type metadata accessor for HealthDataService();
  v99 = *(v100[-1].Description + 1);
  v99(v4 + v16, v100);
  v17 = v5[17];
  v98 = type metadata accessor for InteropService();
  v97 = *(v98[-1].Description + 1);
  v97(v4 + v17, v98);
  v18 = v5[18];
  v96 = type metadata accessor for LocalizationService();
  v95 = *(v96[-1].Description + 1);
  v95(v4 + v18, v96);
  v19 = v5[19];
  v94 = type metadata accessor for MarketingService();
  v93 = *(v94[-1].Description + 1);
  v93(v4 + v19, v94);
  v20 = v5[20];
  v92 = type metadata accessor for MetricService();
  v91 = *(v92[-1].Description + 1);
  v91(v4 + v20, v92);
  v21 = v5[21];
  v90 = type metadata accessor for PersonalizationService();
  v89 = *(v90[-1].Description + 1);
  v89(v4 + v21, v90);
  v22 = v5[22];
  v88 = type metadata accessor for PlayerService();
  v87 = *(v88[-1].Description + 1);
  v87(v4 + v22, v88);
  v23 = v5[23];
  v86 = type metadata accessor for PrivacyPreferenceService();
  v85 = *(v86[-1].Description + 1);
  v85(v4 + v23, v86);
  v24 = v5[24];
  v84 = type metadata accessor for RecommendationService();
  v83 = *(v84[-1].Description + 1);
  v83(v4 + v24, v84);
  v25 = v5[25];
  v82 = type metadata accessor for RemoteBrowsingService();
  v81 = *(v82[-1].Description + 1);
  v81(v4 + v25, v82);
  v26 = v5[26];
  v80 = type metadata accessor for SearchService();
  v79 = *(v80[-1].Description + 1);
  v79(v4 + v26, v80);
  v27 = v5[27];
  v78 = type metadata accessor for ServiceSubscriptionService();
  v77 = *(v78[-1].Description + 1);
  v77(v4 + v27, v78);
  v28 = v5[28];
  v71 = type metadata accessor for SessionService();
  v76 = *(v71[-1].Description + 1);
  v76(v4 + v28, v71);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v75 = *(v30[-1].Description + 1);
  v75(v4 + v29, v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v74 = *(v32[-1].Description + 1);
  v74(v4 + v31, v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v73 = *(v34[-1].Description + 1);
  v73(v4 + v33, v34);

  v35 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v72 = *(QueueService[-1].Description + 1);
  v72(v4 + v35, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v4 + v5[34]));

  v37 = v5[36];
  v38 = type metadata accessor for WorkoutPlanService();
  v70 = *(v38[-1].Description + 1);
  v70(v4 + v37, v38);

  v39 = v119 + v127[7];

  v40 = v39 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v120(v40 + v5[6], v121);
  v117(v40 + v5[7], v118);
  v115(v40 + v5[8], v116);
  v113(v40 + v5[9], v114);
  v111(v40 + v5[10], v112);
  v109(v40 + v5[11], v110);
  v107(v40 + v5[12], v108);
  v105(v40 + v5[13], v106);
  v103(v40 + v5[14], v104);
  v101(v40 + v5[15], v102);
  v99(v40 + v5[16], v100);
  v97(v40 + v5[17], v98);
  v95(v40 + v5[18], v96);
  v93(v40 + v5[19], v94);
  v91(v40 + v5[20], v92);
  v89(v40 + v5[21], v90);
  v87(v40 + v5[22], v88);
  v85(v40 + v5[23], v86);
  v83(v40 + v5[24], v84);
  v81(v40 + v5[25], v82);
  v79(v40 + v5[26], v80);
  v77(v40 + v5[27], v78);
  v76(v40 + v5[28], v71);
  v75(v40 + v5[29], v30);
  v74(v40 + v5[30], v32);
  v73(v40 + v5[31], v34);

  v72(v40 + v5[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v40 + v5[34]));

  v70(v40 + v5[36], v38);
  swift_unknownObjectRelease();
  if (*(v119 + v127[9] + 8) >= 0xCuLL)
  {
  }

  v41 = v122 & ~v124;
  v42 = (v119 + v127[10]);
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v44 = v126 + v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v45 = swift_getEnumCaseMultiPayload();
    switch(v45)
    {
      case 2:

        break;
      case 1:
        v47 = sub_1E65DE788();
        (*(*(v47 - 8) + 8))(v44, v47);
        v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v49 = sub_1E65D76A8();
        (*(*(v49 - 8) + 8))(v44 + v48, v49);
        break;
      case 0:
        v46 = sub_1E65DE788();
        (*(*(v46 - 8) + 8))(v44, v46);
        break;
    }

    State = type metadata accessor for WorkoutContextMenuLoadState(0);
    v51 = v44 + State[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v52 = swift_getEnumCaseMultiPayload();
    if (v52 == 2)
    {
    }

    else if (v52 == 1)
    {
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v54 = sub_1E65D76A8();
      (*(*(v54 - 8) + 8))(v51 + v53, v54);
    }

    v55 = v44 + State[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v56 = swift_getEnumCaseMultiPayload();
    if (v56 == 2)
    {
    }

    else if (v56 == 1)
    {
      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v58 = sub_1E65D76A8();
      (*(*(v58 - 8) + 8))(v55 + v57, v58);
    }

    v59 = v44 + State[7];
    v60 = swift_getEnumCaseMultiPayload();
    if (v60 == 2)
    {
    }

    else if (v60 == 1)
    {
      v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v62 = sub_1E65D76A8();
      (*(*(v62 - 8) + 8))(v59 + v61, v62);
    }

    v63 = v44 + State[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    v64 = swift_getEnumCaseMultiPayload();
    switch(v64)
    {
      case 2:

        break;
      case 1:
        v66 = sub_1E65DE508();
        (*(*(v66 - 8) + 8))(v63, v66);
        v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A400, &unk_1E65F7150) + 48);
        v68 = sub_1E65D76A8();
        (*(*(v68 - 8) + 8))(v63 + v67, v68);
        break;
      case 0:
        v65 = sub_1E65DE508();
        (*(*(v65 - 8) + 8))(v63, v65);
        break;
    }
  }

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v126 + ((((v123 + v41 + 7) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1E5EB8FE8()
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

uint64_t sub_1E5EB9CCC()
{
  v112 = type metadata accessor for AppComposer(0);
  v110 = *(*(v112 - 1) + 80);
  v1 = (v110 + 16) & ~v110;
  v2 = v1 + *(*(v112 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v109 = *(*(v3 - 8) + 80);
  v106 = *(*(v3 - 8) + 64);
  v4 = sub_1E65D76F8();
  v107 = *(v4 - 8);
  v108 = v4;
  v105 = *(v107 + 80);
  v111 = v0;
  v102 = v0 + v1;

  v5 = v0 + v1 + v112[5];
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment(0);
  v7 = v6[6];
  v104 = type metadata accessor for AccountService();
  v103 = *(v104[-1].Description + 1);
  v103(v5 + v7, v104);
  v8 = v6[7];
  v101 = type metadata accessor for AppStateService();
  v100 = *(v101[-1].Description + 1);
  v100(v5 + v8, v101);
  v9 = v6[8];
  v99 = type metadata accessor for ArchivedSessionService();
  v98 = *(v99[-1].Description + 1);
  v98(v5 + v9, v99);
  v10 = v6[9];
  v97 = type metadata accessor for AssetService();
  v96 = *(v97[-1].Description + 1);
  v96(v5 + v10, v97);
  v11 = v6[10];
  v95 = type metadata accessor for AwardsService();
  v94 = *(v95[-1].Description + 1);
  v94(v5 + v11, v95);
  v12 = v6[11];
  v93 = type metadata accessor for BookmarkService();
  v92 = *(v93[-1].Description + 1);
  v92(v5 + v12, v93);
  v13 = v6[12];
  v91 = type metadata accessor for CatalogService();
  v90 = *(v91[-1].Description + 1);
  v90(v5 + v13, v91);
  v14 = v6[13];
  v89 = type metadata accessor for ConfigurationService();
  v88 = *(v89[-1].Description + 1);
  v88(v5 + v14, v89);
  v15 = v6[14];
  v87 = type metadata accessor for ContentAvailabilityService();
  v86 = *(v87[-1].Description + 1);
  v86(v5 + v15, v87);
  v16 = v6[15];
  v85 = type metadata accessor for EngagementService();
  v84 = *(v85[-1].Description + 1);
  v84(v5 + v16, v85);
  v17 = v6[16];
  v83 = type metadata accessor for HealthDataService();
  v82 = *(v83[-1].Description + 1);
  v82(v5 + v17, v83);
  v18 = v6[17];
  v81 = type metadata accessor for InteropService();
  v80 = *(v81[-1].Description + 1);
  v80(v5 + v18, v81);
  v19 = v6[18];
  v79 = type metadata accessor for LocalizationService();
  v78 = *(v79[-1].Description + 1);
  v78(v5 + v19, v79);
  v20 = v6[19];
  v77 = type metadata accessor for MarketingService();
  v76 = *(v77[-1].Description + 1);
  v76(v5 + v20, v77);
  v21 = v6[20];
  v75 = type metadata accessor for MetricService();
  v74 = *(v75[-1].Description + 1);
  v74(v5 + v21, v75);
  v22 = v6[21];
  v73 = type metadata accessor for PersonalizationService();
  v72 = *(v73[-1].Description + 1);
  v72(v5 + v22, v73);
  v23 = v6[22];
  v71 = type metadata accessor for PlayerService();
  v70 = *(v71[-1].Description + 1);
  v70(v5 + v23, v71);
  v24 = v6[23];
  v69 = type metadata accessor for PrivacyPreferenceService();
  v68 = *(v69[-1].Description + 1);
  v68(v5 + v24, v69);
  v25 = v6[24];
  v67 = type metadata accessor for RecommendationService();
  v66 = *(v67[-1].Description + 1);
  v66(v5 + v25, v67);
  v26 = v6[25];
  v65 = type metadata accessor for RemoteBrowsingService();
  v64 = *(v65[-1].Description + 1);
  v64(v5 + v26, v65);
  v27 = v6[26];
  v63 = type metadata accessor for SearchService();
  v62 = *(v63[-1].Description + 1);
  v62(v5 + v27, v63);
  v28 = v6[27];
  v61 = type metadata accessor for ServiceSubscriptionService();
  v60 = *(v61[-1].Description + 1);
  v60(v5 + v28, v61);
  v29 = v6[28];
  v54 = type metadata accessor for SessionService();
  v59 = *(v54[-1].Description + 1);
  v59(v5 + v29, v54);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v58 = *(v31[-1].Description + 1);
  v58(v5 + v30, v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v57 = *(v33[-1].Description + 1);
  v57(v5 + v32, v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v56 = *(v35[-1].Description + 1);
  v56(v5 + v34, v35);

  v36 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v55 = *(QueueService[-1].Description + 1);
  v55(v5 + v36, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v5 + v6[34]));

  v38 = v6[36];
  v39 = type metadata accessor for WorkoutPlanService();
  v53 = *(v39[-1].Description + 1);
  v53(v5 + v38, v39);

  v40 = v102 + v112[7];

  v41 = v40 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v103(v41 + v6[6], v104);
  v100(v41 + v6[7], v101);
  v98(v41 + v6[8], v99);
  v96(v41 + v6[9], v97);
  v94(v41 + v6[10], v95);
  v92(v41 + v6[11], v93);
  v90(v41 + v6[12], v91);
  v88(v41 + v6[13], v89);
  v86(v41 + v6[14], v87);
  v84(v41 + v6[15], v85);
  v82(v41 + v6[16], v83);
  v80(v41 + v6[17], v81);
  v78(v41 + v6[18], v79);
  v76(v41 + v6[19], v77);
  v74(v41 + v6[20], v75);
  v72(v41 + v6[21], v73);
  v70(v41 + v6[22], v71);
  v68(v41 + v6[23], v69);
  v66(v41 + v6[24], v67);
  v64(v41 + v6[25], v65);
  v62(v41 + v6[26], v63);
  v60(v41 + v6[27], v61);
  v59(v41 + v6[28], v54);
  v58(v41 + v6[29], v31);
  v57(v41 + v6[30], v33);
  v56(v41 + v6[31], v35);

  v55(v41 + v6[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v41 + v6[34]));

  v53(v41 + v6[36], v39);
  swift_unknownObjectRelease();
  if (*(v102 + v112[9] + 8) >= 0xCuLL)
  {
  }

  v42 = (v2 + v109) & ~v109;
  v43 = (v102 + v112[10]);
  if (v43[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v44 = v111 + v42;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v44, *(v44 + 8), *(v44 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v46 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3F0, &unk_1E65F7290) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    v47 = swift_getEnumCaseMultiPayload();
    switch(v47)
    {
      case 2:

        break;
      case 1:
        v49 = sub_1E65DE508();
        (*(*(v49 - 8) + 8))(v46, v49);
        v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A400, &unk_1E65F7150) + 48);
        v51 = sub_1E65D76A8();
        (*(*(v51 - 8) + 8))(v46 + v50, v51);
        break;
      case 0:
        v48 = sub_1E65DE508();
        (*(*(v48 - 8) + 8))(v46, v48);
        break;
    }
  }

  (*(v107 + 8))(v111 + ((v42 + v106 + v105) & ~v105), v108);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EBAC44()
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

uint64_t sub_1E5EBBB50()
{
  v2 = *(v0 + 40);
  v8 = *(v0 + 16);
  v1 = v8;
  v9 = *(v0 + 24);
  v7 = v9;
  v10 = v2;
  v3 = (type metadata accessor for ContextMenuViewModifier(0, &v8) - 8);
  v4 = v0 + ((*(*v3 + 80) + 48) & ~*(*v3 + 80));
  v5 = sub_1E65D7848();
  (*(*(v5 - 8) + 8))(v4, v5);
  (*(*(v1 - 8) + 8))(v4 + v3[15], v1);
  (*(*(v7 - 8) + 8))(v4 + v3[16]);

  return swift_deallocObject();
}

uint64_t sub_1E5EBBCCC(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_1E65E3DE8();
  v9 = v2;
  v10 = v3;
  v11 = *(a1 + 16);
  type metadata accessor for ContextMenuViewModifier(255, &v9);
  swift_getWitnessTable();
  v4 = sub_1E65E41A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076978, &unk_1E65F7320);
  v5 = sub_1E65E4148();
  WitnessTable = swift_getWitnessTable();
  sub_1E61F6934();
  v7 = swift_getWitnessTable();
  v9 = v4;
  v10 = v5;
  *&v11 = WitnessTable;
  *(&v11 + 1) = v7;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E65E4BF8();
  swift_getWitnessTable();
  sub_1E65E4AC8();
  return swift_getWitnessTable();
}

uint64_t sub_1E5EBBE7C(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 40);
  sub_1E65E3DE8();
  v12 = v3;
  v13 = v2;
  v14 = v4;
  v15 = *(a1 + 24);
  v11 = v15;
  v16 = v5;
  type metadata accessor for ContextMenuPreviewViewModifier(255, &v12);
  swift_getWitnessTable();
  v6 = sub_1E65E41A8();
  v7 = sub_1E65E3DE8();
  WitnessTable = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  v12 = v6;
  v13 = v3;
  v14 = v7;
  *&v15 = WitnessTable;
  *(&v15 + 1) = v11;
  v16 = v9;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E65E4BF8();
  swift_getWitnessTable();
  sub_1E65E4AC8();
  return swift_getWitnessTable();
}

uint64_t sub_1E5EBC09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArtworkContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E5EBC158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ArtworkContent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E5EBC218()
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