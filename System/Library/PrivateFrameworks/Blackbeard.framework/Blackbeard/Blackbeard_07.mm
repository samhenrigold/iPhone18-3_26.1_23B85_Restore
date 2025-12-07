uint64_t sub_1E5EE98D0()
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

uint64_t sub_1E5EE992C()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EE9984()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EE9A8C()
{
  MEMORY[0x1E694F2D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5EE9B00()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EE9B40()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EE9C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppComposer(0);
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1E5EE9CF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppComposer(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E5EEA1CC()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  swift_unknownObjectRelease();
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

uint64_t sub_1E5EEAEEC()
{
  v123 = type metadata accessor for AppComposer(0);
  v119 = *(*(v123 - 1) + 80);
  v1 = (v119 + 16) & ~v119;
  v2 = v1 + *(*(v123 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480);
  v116 = *(*(v3 - 8) + 80);
  v111 = v2 + v116;
  v115 = *(*(v3 - 8) + 64);
  v4 = sub_1E65D76F8();
  v117 = *(v4 - 8);
  v118 = v4;
  v114 = *(v117 + 80);
  v113 = *(v117 + 64);
  v5 = sub_1E65DEC18();
  v120 = *(v5 - 8);
  v121 = v5;
  v112 = *(v120 + 80);
  v122 = v0;
  v108 = v0 + v1;

  v6 = v0 + v1 + v123[5];
  swift_unknownObjectRelease();
  v7 = type metadata accessor for AppEnvironment(0);
  v8 = v7[6];
  v110 = type metadata accessor for AccountService();
  v109 = *(v110[-1].Description + 1);
  v109(v6 + v8, v110);
  v9 = v7[7];
  v107 = type metadata accessor for AppStateService();
  v106 = *(v107[-1].Description + 1);
  v106(v6 + v9, v107);
  v10 = v7[8];
  v105 = type metadata accessor for ArchivedSessionService();
  v104 = *(v105[-1].Description + 1);
  v104(v6 + v10, v105);
  v11 = v7[9];
  v103 = type metadata accessor for AssetService();
  v102 = *(v103[-1].Description + 1);
  v102(v6 + v11, v103);
  v12 = v7[10];
  v101 = type metadata accessor for AwardsService();
  v100 = *(v101[-1].Description + 1);
  v100(v6 + v12, v101);
  v13 = v7[11];
  v99 = type metadata accessor for BookmarkService();
  v98 = *(v99[-1].Description + 1);
  v98(v6 + v13, v99);
  v14 = v7[12];
  v97 = type metadata accessor for CatalogService();
  v96 = *(v97[-1].Description + 1);
  v96(v6 + v14, v97);
  v15 = v7[13];
  v95 = type metadata accessor for ConfigurationService();
  v94 = *(v95[-1].Description + 1);
  v94(v6 + v15, v95);
  v16 = v7[14];
  v93 = type metadata accessor for ContentAvailabilityService();
  v92 = *(v93[-1].Description + 1);
  v92(v6 + v16, v93);
  v17 = v7[15];
  v91 = type metadata accessor for EngagementService();
  v90 = *(v91[-1].Description + 1);
  v90(v6 + v17, v91);
  v18 = v7[16];
  v89 = type metadata accessor for HealthDataService();
  v88 = *(v89[-1].Description + 1);
  v88(v6 + v18, v89);
  v19 = v7[17];
  v87 = type metadata accessor for InteropService();
  v86 = *(v87[-1].Description + 1);
  v86(v6 + v19, v87);
  v20 = v7[18];
  v85 = type metadata accessor for LocalizationService();
  v84 = *(v85[-1].Description + 1);
  v84(v6 + v20, v85);
  v21 = v7[19];
  v83 = type metadata accessor for MarketingService();
  v82 = *(v83[-1].Description + 1);
  v82(v6 + v21, v83);
  v22 = v7[20];
  v81 = type metadata accessor for MetricService();
  v80 = *(v81[-1].Description + 1);
  v80(v6 + v22, v81);
  v23 = v7[21];
  v79 = type metadata accessor for PersonalizationService();
  v78 = *(v79[-1].Description + 1);
  v78(v6 + v23, v79);
  v24 = v7[22];
  v77 = type metadata accessor for PlayerService();
  v76 = *(v77[-1].Description + 1);
  v76(v6 + v24, v77);
  v25 = v7[23];
  v75 = type metadata accessor for PrivacyPreferenceService();
  v74 = *(v75[-1].Description + 1);
  v74(v6 + v25, v75);
  v26 = v7[24];
  v73 = type metadata accessor for RecommendationService();
  v72 = *(v73[-1].Description + 1);
  v72(v6 + v26, v73);
  v27 = v7[25];
  v71 = type metadata accessor for RemoteBrowsingService();
  v70 = *(v71[-1].Description + 1);
  v70(v6 + v27, v71);
  v28 = v7[26];
  v69 = type metadata accessor for SearchService();
  v68 = *(v69[-1].Description + 1);
  v68(v6 + v28, v69);
  v29 = v7[27];
  v67 = type metadata accessor for ServiceSubscriptionService();
  v66 = *(v67[-1].Description + 1);
  v66(v6 + v29, v67);
  v30 = v7[28];
  v60 = type metadata accessor for SessionService();
  v65 = *(v60[-1].Description + 1);
  v65(v6 + v30, v60);
  v31 = v7[29];
  v32 = type metadata accessor for SharePlayService();
  v64 = *(v32[-1].Description + 1);
  v64(v6 + v31, v32);
  v33 = v7[30];
  v34 = type metadata accessor for SiriService();
  v63 = *(v34[-1].Description + 1);
  v63(v6 + v33, v34);
  v35 = v7[31];
  v36 = type metadata accessor for SyncService();
  v62 = *(v36[-1].Description + 1);
  v62(v6 + v35, v36);

  v37 = v7[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v61 = *(QueueService[-1].Description + 1);
  v61(v6 + v37, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v6 + v7[34]));

  v39 = v7[36];
  v40 = type metadata accessor for WorkoutPlanService();
  v59 = *(v40[-1].Description + 1);
  v59(v6 + v39, v40);

  v41 = v108 + v123[7];

  v42 = v41 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v109(v42 + v7[6], v110);
  v106(v42 + v7[7], v107);
  v104(v42 + v7[8], v105);
  v102(v42 + v7[9], v103);
  v100(v42 + v7[10], v101);
  v98(v42 + v7[11], v99);
  v96(v42 + v7[12], v97);
  v94(v42 + v7[13], v95);
  v92(v42 + v7[14], v93);
  v90(v42 + v7[15], v91);
  v88(v42 + v7[16], v89);
  v86(v42 + v7[17], v87);
  v84(v42 + v7[18], v85);
  v82(v42 + v7[19], v83);
  v80(v42 + v7[20], v81);
  v78(v42 + v7[21], v79);
  v76(v42 + v7[22], v77);
  v74(v42 + v7[23], v75);
  v72(v42 + v7[24], v73);
  v70(v42 + v7[25], v71);
  v68(v42 + v7[26], v69);
  v66(v42 + v7[27], v67);
  v65(v42 + v7[28], v60);
  v64(v42 + v7[29], v32);
  v63(v42 + v7[30], v34);
  v62(v42 + v7[31], v36);

  v61(v42 + v7[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v42 + v7[34]));

  v59(v42 + v7[36], v40);
  swift_unknownObjectRelease();
  if (*(v108 + v123[9] + 8) >= 0xCuLL)
  {
  }

  v43 = v111 & ~v116;
  v44 = (v108 + v123[10]);
  if (v44[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v46 = v122 + v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C0, &unk_1E65F7310) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v47 = swift_getEnumCaseMultiPayload();
    switch(v47)
    {
      case 2:

        break;
      case 1:
        v49 = sub_1E65DE788();
        (*(*(v49 - 8) + 8))(v46, v49);
        v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v51 = sub_1E65D76A8();
        (*(*(v51 - 8) + 8))(v46 + v50, v51);
        break;
      case 0:
        v48 = sub_1E65DE788();
        (*(*(v48 - 8) + 8))(v46, v48);
        break;
    }

    v52 = v46 + *(type metadata accessor for DynamicStartWorkoutButtonLoadState(0) + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v53 = swift_getEnumCaseMultiPayload();
    if (v53 == 2)
    {
    }

    else if (v53 == 1)
    {
      v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v55 = sub_1E65D76A8();
      (*(*(v55 - 8) + 8))(v52 + v54, v55);
    }
  }

  v56 = (((v115 + v43 + 7) & 0xFFFFFFFFFFFFFFF8) + v114 + 8) & ~v114;
  v57 = (v113 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v117 + 8))(v122 + v56, v118);
  __swift_destroy_boxed_opaque_existential_1((v122 + v57));
  swift_unknownObjectRelease();

  (*(v120 + 8))(v122 + ((((v57 + 47) & 0xFFFFFFFFFFFFFFF8) + v112 + 80) & ~v112), v121);

  return swift_deallocObject();
}

uint64_t sub_1E5EEBFA4()
{
  v113 = type metadata accessor for AppComposer(0);
  v111 = *(*(v113 - 1) + 80);
  v1 = (v111 + 32) & ~v111;
  v2 = *(*(v113 - 1) + 64);
  v3 = sub_1E65DEB68();
  v108 = *(*(v3 - 8) + 80);
  v101 = v1 + v2 + v108;
  v106 = *(*(v3 - 8) + 64);
  v4 = sub_1E65DEA28();
  v109 = *(v4 - 8);
  v110 = v4;
  v104 = *(v109 + 80);
  v103 = *(v109 + 64);
  v107 = sub_1E65DEC18();
  v105 = *(v107 - 8);
  v102 = *(v105 + 80);
  swift_unknownObjectRelease();
  v112 = v0;
  v98 = v0 + v1;

  v5 = v0 + v1 + v113[5];
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment(0);
  v7 = v6[6];
  v100 = type metadata accessor for AccountService();
  v99 = *(v100[-1].Description + 1);
  v99(v5 + v7, v100);
  v8 = v6[7];
  v97 = type metadata accessor for AppStateService();
  v96 = *(v97[-1].Description + 1);
  v96(v5 + v8, v97);
  v9 = v6[8];
  v95 = type metadata accessor for ArchivedSessionService();
  v94 = *(v95[-1].Description + 1);
  v94(v5 + v9, v95);
  v10 = v6[9];
  v93 = type metadata accessor for AssetService();
  v92 = *(v93[-1].Description + 1);
  v92(v5 + v10, v93);
  v11 = v6[10];
  v91 = type metadata accessor for AwardsService();
  v90 = *(v91[-1].Description + 1);
  v90(v5 + v11, v91);
  v12 = v6[11];
  v89 = type metadata accessor for BookmarkService();
  v88 = *(v89[-1].Description + 1);
  v88(v5 + v12, v89);
  v13 = v6[12];
  v87 = type metadata accessor for CatalogService();
  v86 = *(v87[-1].Description + 1);
  v86(v5 + v13, v87);
  v14 = v6[13];
  v85 = type metadata accessor for ConfigurationService();
  v84 = *(v85[-1].Description + 1);
  v84(v5 + v14, v85);
  v15 = v6[14];
  v83 = type metadata accessor for ContentAvailabilityService();
  v82 = *(v83[-1].Description + 1);
  v82(v5 + v15, v83);
  v16 = v6[15];
  v81 = type metadata accessor for EngagementService();
  v80 = *(v81[-1].Description + 1);
  v80(v5 + v16, v81);
  v17 = v6[16];
  v79 = type metadata accessor for HealthDataService();
  v78 = *(v79[-1].Description + 1);
  v78(v5 + v17, v79);
  v18 = v6[17];
  v77 = type metadata accessor for InteropService();
  v76 = *(v77[-1].Description + 1);
  v76(v5 + v18, v77);
  v19 = v6[18];
  v75 = type metadata accessor for LocalizationService();
  v74 = *(v75[-1].Description + 1);
  v74(v5 + v19, v75);
  v20 = v6[19];
  v73 = type metadata accessor for MarketingService();
  v72 = *(v73[-1].Description + 1);
  v72(v5 + v20, v73);
  v21 = v6[20];
  v71 = type metadata accessor for MetricService();
  v70 = *(v71[-1].Description + 1);
  v70(v5 + v21, v71);
  v22 = v6[21];
  v69 = type metadata accessor for PersonalizationService();
  v68 = *(v69[-1].Description + 1);
  v68(v5 + v22, v69);
  v23 = v6[22];
  v67 = type metadata accessor for PlayerService();
  v66 = *(v67[-1].Description + 1);
  v66(v5 + v23, v67);
  v24 = v6[23];
  v65 = type metadata accessor for PrivacyPreferenceService();
  v64 = *(v65[-1].Description + 1);
  v64(v5 + v24, v65);
  v25 = v6[24];
  v63 = type metadata accessor for RecommendationService();
  v62 = *(v63[-1].Description + 1);
  v62(v5 + v25, v63);
  v26 = v6[25];
  v61 = type metadata accessor for RemoteBrowsingService();
  v60 = *(v61[-1].Description + 1);
  v60(v5 + v26, v61);
  v27 = v6[26];
  v59 = type metadata accessor for SearchService();
  v58 = *(v59[-1].Description + 1);
  v58(v5 + v27, v59);
  v28 = v6[27];
  v57 = type metadata accessor for ServiceSubscriptionService();
  v56 = *(v57[-1].Description + 1);
  v56(v5 + v28, v57);
  v29 = v6[28];
  v50 = type metadata accessor for SessionService();
  v55 = *(v50[-1].Description + 1);
  v55(v5 + v29, v50);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v54 = *(v31[-1].Description + 1);
  v54(v5 + v30, v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v53 = *(v33[-1].Description + 1);
  v53(v5 + v32, v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v52 = *(v35[-1].Description + 1);
  v52(v5 + v34, v35);

  v36 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v51 = *(QueueService[-1].Description + 1);
  v51(v5 + v36, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v5 + v6[34]));

  v38 = v6[36];
  v39 = type metadata accessor for WorkoutPlanService();
  v49 = *(v39[-1].Description + 1);
  v49(v5 + v38, v39);

  v40 = v98 + v113[7];

  v41 = v40 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v99(v41 + v6[6], v100);
  v96(v41 + v6[7], v97);
  v94(v41 + v6[8], v95);
  v92(v41 + v6[9], v93);
  v90(v41 + v6[10], v91);
  v88(v41 + v6[11], v89);
  v86(v41 + v6[12], v87);
  v84(v41 + v6[13], v85);
  v82(v41 + v6[14], v83);
  v80(v41 + v6[15], v81);
  v78(v41 + v6[16], v79);
  v76(v41 + v6[17], v77);
  v74(v41 + v6[18], v75);
  v72(v41 + v6[19], v73);
  v70(v41 + v6[20], v71);
  v68(v41 + v6[21], v69);
  v66(v41 + v6[22], v67);
  v64(v41 + v6[23], v65);
  v62(v41 + v6[24], v63);
  v60(v41 + v6[25], v61);
  v58(v41 + v6[26], v59);
  v56(v41 + v6[27], v57);
  v55(v41 + v6[28], v50);
  v54(v41 + v6[29], v31);
  v53(v41 + v6[30], v33);
  v52(v41 + v6[31], v35);

  v51(v41 + v6[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v41 + v6[34]));

  v49(v41 + v6[36], v39);
  swift_unknownObjectRelease();
  if (*(v98 + v113[9] + 8) >= 0xCuLL)
  {
  }

  v42 = v101 & ~v108;
  v43 = (v98 + v113[10]);
  if (v43[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v45 = sub_1E65D76A8();
      (*(*(v45 - 8) + 8))(v112 + v42, v45);
      break;
    case 2:

      break;
    case 1:

      break;
  }

  v46 = (v42 + v106 + v104) & ~v104;
  v47 = (v46 + v103 + v102) & ~v102;
  (*(v109 + 8))(v112 + v46, v110);
  (*(v105 + 8))(v112 + v47, v107);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EECED0()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EECF08()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v4 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C0, &unk_1E65F7310) + 48);
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

    v10 = v4 + *(type metadata accessor for DynamicStartWorkoutButtonLoadState(0) + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 == 2)
    {
    }

    else if (v11 == 1)
    {
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v13 = sub_1E65D76A8();
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1E5EED1A8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5EED290()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EED2D0()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EED308()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EED34C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PlatformAlertViewModifier(255, a1[1], a1[3], a4);
  sub_1E65E3DE8();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5EED3E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PlatformAlertViewModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1E65E41A8();
  sub_1E65E3DE8();
  sub_1E65E4148();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5EED4E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D74E8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E5EED550(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D74E8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E5EED5C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5EED5F8()
{
  v99 = type metadata accessor for AppComposer(0);
  v97 = *(*(v99 - 1) + 80);
  v93 = *(*(v99 - 1) + 64);
  v96 = sub_1E65E1A48();
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

uint64_t sub_1E5EEE394()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EEE3F4()
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

uint64_t sub_1E5EEF0F8()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EEF130()
{
  v1 = sub_1E65E1998();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EEF238()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EEF290()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EEF354()
{
  MEMORY[0x1E694F2D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5EEF3A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073930, &qword_1E65EDCC0);
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

uint64_t sub_1E5EF0100()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EF0148()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EF0180()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360) - 8);
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
    v9 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D60, &unk_1E65F72D0) + 48);
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
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1E5EF0394()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v2, *(v2 + 8), *(v2 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v4 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D60, &unk_1E65F72D0) + 48);
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
  }

  return swift_deallocObject();
}

uint64_t sub_1E5EF0568()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EF05B0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EF0610()
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

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v95 + ((((((v92 + v93 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1E5EF1350()
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

uint64_t sub_1E5EF22B0()
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

uint64_t sub_1E5EF2FF8()
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

uint64_t sub_1E5EF3210()
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

uint64_t sub_1E5EF33D8()
{
  v104 = type metadata accessor for AppComposer(0);
  v102 = *(*(v104 - 1) + 80);
  v1 = (v102 + 16) & ~v102;
  v2 = v1 + *(*(v104 - 1) + 64);
  v101 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8) - 8) + 80);
  v100 = v2 + v101;
  v103 = v0;
  v97 = v0 + v1;

  v3 = v0 + v1 + v104[5];
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment(0);
  v5 = v4[6];
  v99 = type metadata accessor for AccountService();
  v98 = *(v99[-1].Description + 1);
  v98(v3 + v5, v99);
  v6 = v4[7];
  v96 = type metadata accessor for AppStateService();
  v95 = *(v96[-1].Description + 1);
  v95(v3 + v6, v96);
  v7 = v4[8];
  v94 = type metadata accessor for ArchivedSessionService();
  v93 = *(v94[-1].Description + 1);
  v93(v3 + v7, v94);
  v8 = v4[9];
  v92 = type metadata accessor for AssetService();
  v91 = *(v92[-1].Description + 1);
  v91(v3 + v8, v92);
  v9 = v4[10];
  v90 = type metadata accessor for AwardsService();
  v89 = *(v90[-1].Description + 1);
  v89(v3 + v9, v90);
  v10 = v4[11];
  v88 = type metadata accessor for BookmarkService();
  v87 = *(v88[-1].Description + 1);
  v87(v3 + v10, v88);
  v11 = v4[12];
  v86 = type metadata accessor for CatalogService();
  v85 = *(v86[-1].Description + 1);
  v85(v3 + v11, v86);
  v12 = v4[13];
  v84 = type metadata accessor for ConfigurationService();
  v83 = *(v84[-1].Description + 1);
  v83(v3 + v12, v84);
  v13 = v4[14];
  v82 = type metadata accessor for ContentAvailabilityService();
  v81 = *(v82[-1].Description + 1);
  v81(v3 + v13, v82);
  v14 = v4[15];
  v80 = type metadata accessor for EngagementService();
  v79 = *(v80[-1].Description + 1);
  v79(v3 + v14, v80);
  v15 = v4[16];
  v78 = type metadata accessor for HealthDataService();
  v77 = *(v78[-1].Description + 1);
  v77(v3 + v15, v78);
  v16 = v4[17];
  v76 = type metadata accessor for InteropService();
  v75 = *(v76[-1].Description + 1);
  v75(v3 + v16, v76);
  v17 = v4[18];
  v74 = type metadata accessor for LocalizationService();
  v73 = *(v74[-1].Description + 1);
  v73(v3 + v17, v74);
  v18 = v4[19];
  v72 = type metadata accessor for MarketingService();
  v71 = *(v72[-1].Description + 1);
  v71(v3 + v18, v72);
  v19 = v4[20];
  v70 = type metadata accessor for MetricService();
  v69 = *(v70[-1].Description + 1);
  v69(v3 + v19, v70);
  v20 = v4[21];
  v68 = type metadata accessor for PersonalizationService();
  v67 = *(v68[-1].Description + 1);
  v67(v3 + v20, v68);
  v21 = v4[22];
  v66 = type metadata accessor for PlayerService();
  v65 = *(v66[-1].Description + 1);
  v65(v3 + v21, v66);
  v22 = v4[23];
  v64 = type metadata accessor for PrivacyPreferenceService();
  v63 = *(v64[-1].Description + 1);
  v63(v3 + v22, v64);
  v23 = v4[24];
  v62 = type metadata accessor for RecommendationService();
  v61 = *(v62[-1].Description + 1);
  v61(v3 + v23, v62);
  v24 = v4[25];
  v60 = type metadata accessor for RemoteBrowsingService();
  v59 = *(v60[-1].Description + 1);
  v59(v3 + v24, v60);
  v25 = v4[26];
  v58 = type metadata accessor for SearchService();
  v57 = *(v58[-1].Description + 1);
  v57(v3 + v25, v58);
  v26 = v4[27];
  v56 = type metadata accessor for ServiceSubscriptionService();
  v55 = *(v56[-1].Description + 1);
  v55(v3 + v26, v56);
  v27 = v4[28];
  v49 = type metadata accessor for SessionService();
  v54 = *(v49[-1].Description + 1);
  v54(v3 + v27, v49);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v53 = *(v29[-1].Description + 1);
  v53(v3 + v28, v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v52 = *(v31[-1].Description + 1);
  v52(v3 + v30, v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v51 = *(v33[-1].Description + 1);
  v51(v3 + v32, v33);

  v34 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v50 = *(QueueService[-1].Description + 1);
  v50(v3 + v34, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v3 + v4[34]));

  v36 = v4[36];
  v37 = type metadata accessor for WorkoutPlanService();
  v48 = *(v37[-1].Description + 1);
  v48(v3 + v36, v37);

  v38 = v97 + v104[7];

  v39 = v38 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v98(v39 + v4[6], v99);
  v95(v39 + v4[7], v96);
  v93(v39 + v4[8], v94);
  v91(v39 + v4[9], v92);
  v89(v39 + v4[10], v90);
  v87(v39 + v4[11], v88);
  v85(v39 + v4[12], v86);
  v83(v39 + v4[13], v84);
  v81(v39 + v4[14], v82);
  v79(v39 + v4[15], v80);
  v77(v39 + v4[16], v78);
  v75(v39 + v4[17], v76);
  v73(v39 + v4[18], v74);
  v71(v39 + v4[19], v72);
  v69(v39 + v4[20], v70);
  v67(v39 + v4[21], v68);
  v65(v39 + v4[22], v66);
  v63(v39 + v4[23], v64);
  v61(v39 + v4[24], v62);
  v59(v39 + v4[25], v60);
  v57(v39 + v4[26], v58);
  v55(v39 + v4[27], v56);
  v54(v39 + v4[28], v49);
  v53(v39 + v4[29], v29);
  v52(v39 + v4[30], v31);
  v51(v39 + v4[31], v33);

  v50(v39 + v4[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v39 + v4[34]));

  v48(v39 + v4[36], v37);
  swift_unknownObjectRelease();
  if (*(v97 + v104[9] + 8) >= 0xCuLL)
  {
  }

  v40 = (v97 + v104[10]);
  if (v40[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v41 = v103 + (v100 & ~v101);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v41, *(v41 + 8), *(v41 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v43 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E00, &unk_1E65F4350) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v44 = swift_getEnumCaseMultiPayload();
    if (v44 == 2)
    {
    }

    else if (v44 == 1)
    {
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v46 = sub_1E65D76A8();
      (*(*(v46 - 8) + 8))(v43 + v45, v46);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1E5EF421C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EF4260()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  swift_unknownObjectRelease();
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

uint64_t sub_1E5EF4F50()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5EF4F88()
{
  v1 = sub_1E65D76F8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v8 = v0 + v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073878, &unk_1E65F8490) + 48);
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

  return swift_deallocObject();
}

uint64_t sub_1E5EF5220()
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

uint64_t sub_1E5EF5418()
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

uint64_t sub_1E5EF61C0()
{
  v99 = type metadata accessor for AppComposer(0);
  v96 = *(*(v99 - 1) + 80);
  v93 = *(*(v99 - 1) + 64);
  v97 = sub_1E65D76F8();
  v95 = *(v97 - 8);
  v92 = *(v95 + 80);
  v98 = v0;
  v94 = (v96 + 16) & ~v96;
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
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EF70C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E5EF7148()
{
  v0 = sub_1E5EF7244();

  return v0;
}

uint64_t sub_1E5EF71FC()
{
  MEMORY[0x1E694F2D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5EF7254()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EF72B0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5EF72E8()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EF7320()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EF7358()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EF7398()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EF7400()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782D0, &qword_1E65FBC98);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1E5EF7430()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EF746C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EF74D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5EF7510()
{
  v1 = type metadata accessor for CatalogService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 16) & ~*(Description + 80);
  v4 = (((Description[8] + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (Description[1])(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + v4));

  return swift_deallocObject();
}

uint64_t sub_1E5EF75BC()
{
  v1 = type metadata accessor for RemoteBrowsingService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 32) & ~*(Description + 80);
  v4 = v3 + Description[8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782E8, &qword_1E65FBE20);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (Description[1])(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1E5EF771C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  sub_1E5F94E00(*(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t sub_1E5EF7770()
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

uint64_t sub_1E5EF8434()
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

uint64_t sub_1E5EF9130()
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

uint64_t sub_1E5EF9E24()
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

uint64_t sub_1E5EFAB1C()
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

uint64_t sub_1E5EFB7EC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5EFB824()
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

uint64_t sub_1E5EFC528()
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

uint64_t sub_1E5EFD20C()
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

uint64_t sub_1E5EFDEFC()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EFDF34()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EFDF6C()
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

uint64_t sub_1E5EFEC84()
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

uint64_t sub_1E5EFFA38()
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

uint64_t sub_1E5F00760()
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

uint64_t sub_1E5F00B8C()
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

uint64_t sub_1E5F01914()
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

uint64_t sub_1E5F025F8()
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

uint64_t sub_1E5F032F4()
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

uint64_t sub_1E5F03FE8()
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

uint64_t sub_1E5F04CE0()
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

uint64_t sub_1E5F05A04()
{
  v1 = type metadata accessor for PageMetricsClick(0);
  v2 = (*(*(v1 - 1) + 80) + 112) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  v4 = sub_1E65D9D78();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = v1[5];
  v7 = sub_1E65D8C68();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);
  v8 = v1[6];
  v9 = sub_1E65D74E8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v1[8];
  v12 = sub_1E65DA208();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v3 + v11, v12);
  }

  v14 = v1[14];
  v15 = sub_1E65D8F28();
  (*(*(v15 - 8) + 8))(v3 + v14, v15);
  v16 = v1[15];
  v17 = sub_1E65D9908();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v3 + v16, 1, v17))
  {
    (*(v18 + 8))(v3 + v16, v17);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5F05D88()
{
  v1 = *(sub_1E65E1188() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1E65E1458();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = sub_1E65E1118();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2, 6, v7))
  {
    (*(v8 + 8))(v0 + v2, v7);
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5F05FC8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5F06030(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078578, &unk_1E65FD7B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5F060A0()
{

  return swift_deallocObject();
}

uint64_t sub_1E5F060D8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5F06110()
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

uint64_t sub_1E5F06E14()
{
  v1 = sub_1E65E19C8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v97 = type metadata accessor for AppComposer(0);
  v96 = *(*(v97 - 1) + 80);
  swift_unknownObjectRelease();
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

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5F07BA4()
{
  v1 = sub_1E65E19C8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v97 = type metadata accessor for AppComposer(0);
  v96 = *(*(v97 - 1) + 80);
  swift_unknownObjectRelease();
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

uint64_t sub_1E5F0890C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5F089E4()
{
  v1 = v0;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for NavigationControllerRoutingContext(0);
  v153 = *(*(v5 - 8) + 80);
  v6 = (v3 + v4 + v153) & ~v153;
  v7 = v1 + v3;
  v8 = type metadata accessor for RouteDestination(0);
  v154 = v6;
  v155 = v5;
  if (!(*(*(v8 - 8) + 48))(v1 + v3, 1, v8))
  {
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
        goto LABEL_17;
      case 1u:
        v42 = sub_1E65D76F8();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v7, 1, v42))
        {
          (*(v43 + 8))(v7, v42);
        }

        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);

        v45 = *(v44 + 64);
        v46 = sub_1E65E2CF8();
        v47 = *(v46 - 8);
        if (!(*(v47 + 48))(v7 + v45, 1, v46))
        {
          (*(v47 + 8))(v7 + v45, v46);
        }

        v22 = *(v44 + 96);
        v48 = sub_1E65E1FC8();
        goto LABEL_47;
      case 3u:

        v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
        v29 = sub_1E65D72D8();
        goto LABEL_45;
      case 4u:
        sub_1E65E0B48();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 3)
        {
          if (EnumCaseMultiPayload > 6 && EnumCaseMultiPayload != 7)
          {
LABEL_82:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280);

LABEL_52:
            v53 = v7 + *(v8 + 20);
            type metadata accessor for RouteSource(0);
            v54 = swift_getEnumCaseMultiPayload();
            if (v54 <= 1)
            {
              if (v54)
              {
                if (v54 != 1)
                {
                  goto LABEL_66;
                }
              }

              else
              {
                type metadata accessor for AppLaunchScope(0);
                if (swift_getEnumCaseMultiPayload() > 1)
                {
                  goto LABEL_66;
                }
              }
            }

            else if (v54 != 2)
            {
              if (v54 == 3)
              {
                v55 = sub_1E65D74E8();
              }

              else
              {
                if (v54 != 4)
                {
LABEL_66:

                  break;
                }

                v55 = sub_1E65D8D48();
              }

              (*(*(v55 - 8) + 8))(v53, v55);
              goto LABEL_66;
            }

            v56 = sub_1E65D74E8();
            v57 = *(v56 - 8);
            v58 = *(v57 + 8);
            v58(v53, v56);
            v59 = *(type metadata accessor for URLContext(0) + 20);
            if (!(*(v57 + 48))(v53 + v59, 1, v56))
            {
              v58(v53 + v59, v56);
            }

            v6 = v154;
            goto LABEL_66;
          }
        }

        else if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v50 = sub_1E65E0FD8();
            (*(*(v50 - 8) + 8))(v1 + v3, v50);
          }

          goto LABEL_82;
        }

        goto LABEL_82;
      case 6u:

        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
        v27 = *(v26 + 48);
        v28 = sub_1E65DB848();
        (*(*(v28 - 8) + 8))(v7 + v27, v28);
        v12 = *(v26 + 64);
        v29 = sub_1E65E1518();
        goto LABEL_45;
      case 7u:
        v37 = sub_1E65DB848();
        (*(*(v37 - 8) + 8))(v1 + v3, v37);
        v38 = &unk_1ED0720D0;
        v39 = &unk_1E65EA290;
        goto LABEL_43;
      case 8u:
      case 9u:

        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
        v10 = *(v9 + 48);
        v11 = sub_1E65DB848();
        (*(*(v11 - 8) + 8))(v7 + v10, v11);
        v12 = *(v9 + 64);
        goto LABEL_44;
      case 0xCu:

        sub_1E5F94E00(*(v7 + 16), *(v7 + 24));
        goto LABEL_52;
      case 0xEu:
        v25 = sub_1E65DB718();
        goto LABEL_51;
      case 0x11u:

        v38 = &unk_1ED0720E0;
        v39 = &unk_1E65EA2A0;
LABEL_43:
        v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v38, v39) + 48);
LABEL_44:
        v29 = sub_1E65D74E8();
        goto LABEL_45;
      case 0x12u:
        sub_1E5F94E14(*v7, *(v7 + 8), *(v7 + 16));
        goto LABEL_52;
      case 0x13u:
        goto LABEL_24;
      case 0x14u:

        goto LABEL_52;
      case 0x15u:

        v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
        v48 = sub_1E65D96F8();
LABEL_47:
        v23 = v48;
        v24 = *(v48 - 8);
        if (!(*(v24 + 48))(v7 + v22, 1, v48))
        {
          goto LABEL_48;
        }

        goto LABEL_52;
      case 0x16u:
        __swift_destroy_boxed_opaque_existential_1((v1 + v3));
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
        v14 = v13[12];
        v15 = sub_1E65D74E8();
        (*(*(v15 - 8) + 8))(v7 + v14, v15);

        v16 = v13[20];
        v17 = sub_1E65DB3E8();
        v18 = *(v17 - 8);
        if (!(*(v18 + 48))(v7 + v16, 1, v17))
        {
          (*(v18 + 8))(v7 + v16, v17);
        }

        v19 = v13[32];
        v20 = sub_1E65DB5D8();
        v21 = *(v20 - 8);
        if (!(*(v21 + 48))(v7 + v19, 1, v20))
        {
          (*(v21 + 8))(v7 + v19, v20);
        }

        v22 = v13[36];
        v23 = sub_1E65D7A38();
        v24 = *(v23 - 8);
        if (!(*(v24 + 48))(v7 + v22, 1, v23))
        {
LABEL_48:
          (*(v24 + 8))(v7 + v22, v23);
        }

        goto LABEL_52;
      case 0x17u:
        v33 = sub_1E65E57D8();
        (*(*(v33 - 8) + 8))(v1 + v3, v33);
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
        v35 = *(v34 + 48);
        v36 = sub_1E65E5528();
        (*(*(v36 - 8) + 8))(v7 + v35, v36);
        if (*(v7 + *(v34 + 64) + 8) >= 0xCuLL)
        {
          goto LABEL_17;
        }

        goto LABEL_52;
      case 0x18u:

        v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
        v29 = sub_1E65DB848();
        goto LABEL_45;
      case 0x1Au:
        sub_1E65E52B8();
        v41 = swift_getEnumCaseMultiPayload();
        if (v41 == 1)
        {
        }

        else if (!v41)
        {
LABEL_24:
          v25 = sub_1E65D74E8();
LABEL_51:
          (*(*(v25 - 8) + 8))(v1 + v3, v25);
        }

        goto LABEL_52;
      case 0x1Bu:
        type metadata accessor for PlaylistType(0);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          goto LABEL_17;
        }

        v25 = sub_1E65DAEB8();
        goto LABEL_51;
      case 0x1Cu:
        v25 = sub_1E65D76F8();
        goto LABEL_51;
      case 0x1Du:
        v52 = sub_1E65E55E8();
        (*(*(v52 - 8) + 8))(v1 + v3, v52);
        v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
        v29 = sub_1E65D7EB8();
LABEL_45:
        (*(*(v29 - 8) + 8))(v7 + v12, v29);
        goto LABEL_52;
      case 0x1Eu:
        v30 = sub_1E65E56B8();
        (*(*(v30 - 8) + 8))(v1 + v3, v30);
        v31 = &unk_1ED072110;
        v32 = &unk_1E65EA2D0;
        goto LABEL_38;
      case 0x1Fu:
        v40 = sub_1E65DA308();
        (*(*(v40 - 8) + 8))(v1 + v3, v40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810);
        goto LABEL_17;
      case 0x20u:
        v51 = sub_1E65E58D8();
        (*(*(v51 - 8) + 8))(v1 + v3, v51);
        v31 = &qword_1ED072120;
        v32 = &qword_1E65EA2E0;
LABEL_38:
        __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);

LABEL_17:

        goto LABEL_52;
      case 0x21u:
        v25 = sub_1E65D9048();
        goto LABEL_51;
      default:
        goto LABEL_52;
    }
  }

  v152 = v1 + v6;
  v149 = v1 + v6 + *(v5 + 20);

  v156 = type metadata accessor for AppComposer(0);
  v60 = v149 + v156[5];
  swift_unknownObjectRelease();
  v61 = type metadata accessor for AppEnvironment(0);
  v62 = v61[6];
  v151 = type metadata accessor for AccountService();
  v150 = *(v151[-1].Description + 1);
  v150(v60 + v62, v151);
  v63 = v61[7];
  v148 = type metadata accessor for AppStateService();
  v147 = *(v148[-1].Description + 1);
  v147(v60 + v63, v148);
  v64 = v61[8];
  v146 = type metadata accessor for ArchivedSessionService();
  v145 = *(v146[-1].Description + 1);
  v145(v60 + v64, v146);
  v65 = v61[9];
  v144 = type metadata accessor for AssetService();
  v143 = *(v144[-1].Description + 1);
  v143(v60 + v65, v144);
  v66 = v61[10];
  v142 = type metadata accessor for AwardsService();
  v141 = *(v142[-1].Description + 1);
  v141(v60 + v66, v142);
  v67 = v61[11];
  v140 = type metadata accessor for BookmarkService();
  v139 = *(v140[-1].Description + 1);
  v139(v60 + v67, v140);
  v68 = v61[12];
  v138 = type metadata accessor for CatalogService();
  v137 = *(v138[-1].Description + 1);
  v137(v60 + v68, v138);
  v69 = v61[13];
  v136 = type metadata accessor for ConfigurationService();
  v135 = *(v136[-1].Description + 1);
  v135(v60 + v69, v136);
  v70 = v61[14];
  v134 = type metadata accessor for ContentAvailabilityService();
  v133 = *(v134[-1].Description + 1);
  v133(v60 + v70, v134);
  v71 = v61[15];
  v132 = type metadata accessor for EngagementService();
  v131 = *(v132[-1].Description + 1);
  v131(v60 + v71, v132);
  v72 = v61[16];
  v130 = type metadata accessor for HealthDataService();
  v129 = *(v130[-1].Description + 1);
  v129(v60 + v72, v130);
  v73 = v61[17];
  v128 = type metadata accessor for InteropService();
  v127 = *(v128[-1].Description + 1);
  v127(v60 + v73, v128);
  v74 = v61[18];
  v126 = type metadata accessor for LocalizationService();
  v125 = *(v126[-1].Description + 1);
  v125(v60 + v74, v126);
  v75 = v61[19];
  v124 = type metadata accessor for MarketingService();
  v123 = *(v124[-1].Description + 1);
  v123(v60 + v75, v124);
  v76 = v61[20];
  v122 = type metadata accessor for MetricService();
  v121 = *(v122[-1].Description + 1);
  v121(v60 + v76, v122);
  v77 = v61[21];
  v120 = type metadata accessor for PersonalizationService();
  v119 = *(v120[-1].Description + 1);
  v119(v60 + v77, v120);
  v78 = v61[22];
  v118 = type metadata accessor for PlayerService();
  v117 = *(v118[-1].Description + 1);
  v117(v60 + v78, v118);
  v79 = v61[23];
  v116 = type metadata accessor for PrivacyPreferenceService();
  v115 = *(v116[-1].Description + 1);
  v115(v60 + v79, v116);
  v80 = v61[24];
  v114 = type metadata accessor for RecommendationService();
  v113 = *(v114[-1].Description + 1);
  v113(v60 + v80, v114);
  v81 = v61[25];
  v112 = type metadata accessor for RemoteBrowsingService();
  v111 = *(v112[-1].Description + 1);
  v111(v60 + v81, v112);
  v82 = v61[26];
  v110 = type metadata accessor for SearchService();
  v109 = *(v110[-1].Description + 1);
  v109(v60 + v82, v110);
  v83 = v61[27];
  v103 = type metadata accessor for ServiceSubscriptionService();
  v108 = *(v103[-1].Description + 1);
  v108(v60 + v83, v103);
  v84 = v61[28];
  v101 = type metadata accessor for SessionService();
  v107 = *(v101[-1].Description + 1);
  v107(v60 + v84, v101);
  v85 = v61[29];
  v86 = type metadata accessor for SharePlayService();
  v106 = *(v86[-1].Description + 1);
  v106(v60 + v85, v86);
  v87 = v61[30];
  v88 = type metadata accessor for SiriService();
  v105 = *(v88[-1].Description + 1);
  v105(v60 + v87, v88);
  v89 = v61[31];
  v90 = type metadata accessor for SyncService();
  v104 = *(v90[-1].Description + 1);
  v104(v60 + v89, v90);

  v91 = v61[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v102 = *(QueueService[-1].Description + 1);
  v102(v60 + v91, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v60 + v61[34]));

  v93 = v61[36];
  v94 = type metadata accessor for WorkoutPlanService();
  v95 = *(v94[-1].Description + 1);
  v95(v60 + v93, v94);

  v96 = v149 + v156[7];

  v97 = v96 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v150(v97 + v61[6], v151);
  v147(v97 + v61[7], v148);
  v145(v97 + v61[8], v146);
  v143(v97 + v61[9], v144);
  v141(v97 + v61[10], v142);
  v139(v97 + v61[11], v140);
  v137(v97 + v61[12], v138);
  v135(v97 + v61[13], v136);
  v133(v97 + v61[14], v134);
  v131(v97 + v61[15], v132);
  v129(v97 + v61[16], v130);
  v127(v97 + v61[17], v128);
  v125(v97 + v61[18], v126);
  v123(v97 + v61[19], v124);
  v121(v97 + v61[20], v122);
  v119(v97 + v61[21], v120);
  v117(v97 + v61[22], v118);
  v115(v97 + v61[23], v116);
  v113(v97 + v61[24], v114);
  v111(v97 + v61[25], v112);
  v109(v97 + v61[26], v110);
  v108(v97 + v61[27], v103);
  v107(v97 + v61[28], v101);
  v106(v97 + v61[29], v86);
  v105(v97 + v61[30], v88);
  v104(v97 + v61[31], v90);

  v102(v97 + v61[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v97 + v61[34]));

  v95(v97 + v61[36], v94);
  swift_unknownObjectRelease();
  if (*(v149 + v156[9] + 8) >= 0xCuLL)
  {
  }

  v98 = (v149 + v156[10]);
  if (v98[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v98);
  }

  swift_unknownObjectRelease();
  v99 = (v152 + *(v155 + 28));
  if (v99[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v99);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5F0A380@<X0>(void *a2@<X8>)
{
  result = sub_1E65E4EC8();
  *a2 = v4;
  return result;
}

uint64_t sub_1E5F0A440()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5F0A478()
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

uint64_t sub_1E5F0B1FC()
{

  return swift_deallocObject();
}

uint64_t sub_1E5F0B23C()
{
  MEMORY[0x1E694F2D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5F0B274()
{

  return swift_deallocObject();
}

uint64_t sub_1E5F0B2BC()
{
  v1 = type metadata accessor for PageMetricsClick(0);
  v2 = (*(*(v1 - 1) + 80) + 112) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  v4 = sub_1E65D9D78();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = v1[5];
  v7 = sub_1E65D8C68();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);
  v8 = v1[6];
  v9 = sub_1E65D74E8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v1[8];
  v12 = sub_1E65DA208();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v3 + v11, v12);
  }

  v14 = v1[14];
  v15 = sub_1E65D8F28();
  (*(*(v15 - 8) + 8))(v3 + v14, v15);
  v16 = v1[15];
  v17 = sub_1E65D9908();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v3 + v16, 1, v17))
  {
    (*(v18 + 8))(v3 + v16, v17);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5F0B640(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE0, &qword_1E65EA1E0);
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

uint64_t sub_1E5F0B6B8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE0, &qword_1E65EA1E0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1E5F0B748()
{
  v153 = type metadata accessor for AppComposer(0);
  v149 = *(*(v153 - 1) + 80);
  v1 = (v149 + 40) & ~v149;
  v2 = *(*(v153 - 1) + 64);
  v3 = type metadata accessor for RouteDestination(0);
  v151 = *(*(v3 - 8) + 80);
  v152 = v3;
  v148 = v1 + v2 + v151;
  swift_unknownObjectRelease();

  v150 = v0;
  v145 = v0 + v1;

  v4 = v0 + v1 + v153[5];
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment(0);
  v6 = v5[6];
  v147 = type metadata accessor for AccountService();
  v146 = *(v147[-1].Description + 1);
  v146(v4 + v6, v147);
  v7 = v5[7];
  v144 = type metadata accessor for AppStateService();
  v143 = *(v144[-1].Description + 1);
  v143(v4 + v7, v144);
  v8 = v5[8];
  v142 = type metadata accessor for ArchivedSessionService();
  v141 = *(v142[-1].Description + 1);
  v141(v4 + v8, v142);
  v9 = v5[9];
  v140 = type metadata accessor for AssetService();
  v139 = *(v140[-1].Description + 1);
  v139(v4 + v9, v140);
  v10 = v5[10];
  v138 = type metadata accessor for AwardsService();
  v137 = *(v138[-1].Description + 1);
  v137(v4 + v10, v138);
  v11 = v5[11];
  v136 = type metadata accessor for BookmarkService();
  v135 = *(v136[-1].Description + 1);
  v135(v4 + v11, v136);
  v12 = v5[12];
  v134 = type metadata accessor for CatalogService();
  v133 = *(v134[-1].Description + 1);
  v133(v4 + v12, v134);
  v13 = v5[13];
  v132 = type metadata accessor for ConfigurationService();
  v131 = *(v132[-1].Description + 1);
  v131(v4 + v13, v132);
  v14 = v5[14];
  v130 = type metadata accessor for ContentAvailabilityService();
  v129 = *(v130[-1].Description + 1);
  v129(v4 + v14, v130);
  v15 = v5[15];
  v128 = type metadata accessor for EngagementService();
  v127 = *(v128[-1].Description + 1);
  v127(v4 + v15, v128);
  v16 = v5[16];
  v126 = type metadata accessor for HealthDataService();
  v125 = *(v126[-1].Description + 1);
  v125(v4 + v16, v126);
  v17 = v5[17];
  v124 = type metadata accessor for InteropService();
  v123 = *(v124[-1].Description + 1);
  v123(v4 + v17, v124);
  v18 = v5[18];
  v122 = type metadata accessor for LocalizationService();
  v121 = *(v122[-1].Description + 1);
  v121(v4 + v18, v122);
  v19 = v5[19];
  v120 = type metadata accessor for MarketingService();
  v119 = *(v120[-1].Description + 1);
  v119(v4 + v19, v120);
  v20 = v5[20];
  v118 = type metadata accessor for MetricService();
  v117 = *(v118[-1].Description + 1);
  v117(v4 + v20, v118);
  v21 = v5[21];
  v116 = type metadata accessor for PersonalizationService();
  v115 = *(v116[-1].Description + 1);
  v115(v4 + v21, v116);
  v22 = v5[22];
  v114 = type metadata accessor for PlayerService();
  v113 = *(v114[-1].Description + 1);
  v113(v4 + v22, v114);
  v23 = v5[23];
  v112 = type metadata accessor for PrivacyPreferenceService();
  v111 = *(v112[-1].Description + 1);
  v111(v4 + v23, v112);
  v24 = v5[24];
  v110 = type metadata accessor for RecommendationService();
  v109 = *(v110[-1].Description + 1);
  v109(v4 + v24, v110);
  v25 = v5[25];
  v108 = type metadata accessor for RemoteBrowsingService();
  v107 = *(v108[-1].Description + 1);
  v107(v4 + v25, v108);
  v26 = v5[26];
  v106 = type metadata accessor for SearchService();
  v105 = *(v106[-1].Description + 1);
  v105(v4 + v26, v106);
  v27 = v5[27];
  v104 = type metadata accessor for ServiceSubscriptionService();
  v103 = *(v104[-1].Description + 1);
  v103(v4 + v27, v104);
  v28 = v5[28];
  v97 = type metadata accessor for SessionService();
  v102 = *(v97[-1].Description + 1);
  v102(v4 + v28, v97);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v101 = *(v30[-1].Description + 1);
  v101(v4 + v29, v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v100 = *(v32[-1].Description + 1);
  v100(v4 + v31, v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v99 = *(v34[-1].Description + 1);
  v99(v4 + v33, v34);

  v35 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v98 = *(QueueService[-1].Description + 1);
  v98(v4 + v35, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v4 + v5[34]));

  v37 = v5[36];
  v38 = type metadata accessor for WorkoutPlanService();
  v96 = *(v38[-1].Description + 1);
  v96(v4 + v37, v38);

  v39 = v145 + v153[7];

  v40 = v39 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v146(v40 + v5[6], v147);
  v143(v40 + v5[7], v144);
  v141(v40 + v5[8], v142);
  v139(v40 + v5[9], v140);
  v137(v40 + v5[10], v138);
  v135(v40 + v5[11], v136);
  v133(v40 + v5[12], v134);
  v131(v40 + v5[13], v132);
  v129(v40 + v5[14], v130);
  v127(v40 + v5[15], v128);
  v125(v40 + v5[16], v126);
  v123(v40 + v5[17], v124);
  v121(v40 + v5[18], v122);
  v119(v40 + v5[19], v120);
  v117(v40 + v5[20], v118);
  v115(v40 + v5[21], v116);
  v113(v40 + v5[22], v114);
  v111(v40 + v5[23], v112);
  v109(v40 + v5[24], v110);
  v107(v40 + v5[25], v108);
  v105(v40 + v5[26], v106);
  v103(v40 + v5[27], v104);
  v102(v40 + v5[28], v97);
  v101(v40 + v5[29], v30);
  v100(v40 + v5[30], v32);
  v99(v40 + v5[31], v34);

  v98(v40 + v5[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v40 + v5[34]));

  v96(v40 + v5[36], v38);
  swift_unknownObjectRelease();
  if (*(v145 + v153[9] + 8) >= 0xCuLL)
  {
  }

  v41 = v148 & ~v151;
  v42 = (v145 + v153[10]);
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v43 = v150 + v41;
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
      goto LABEL_20;
    case 1u:
      v77 = sub_1E65D76F8();
      v78 = *(v77 - 8);
      if (!(*(v78 + 48))(v150 + v41, 1, v77))
      {
        (*(v78 + 8))(v150 + v41, v77);
      }

      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);

      v80 = *(v79 + 64);
      v81 = sub_1E65E2CF8();
      v82 = *(v81 - 8);
      if (!(*(v82 + 48))(v43 + v80, 1, v81))
      {
        (*(v82 + 8))(v43 + v80, v81);
      }

      v57 = *(v79 + 96);
      v83 = sub_1E65E1FC8();
      goto LABEL_50;
    case 3u:

      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v64 = sub_1E65D72D8();
      goto LABEL_48;
    case 4u:
      sub_1E65E0B48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v85 = sub_1E65E0FD8();
            (*(*(v85 - 8) + 8))(v150 + v41, v85);
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

LABEL_55:
      v88 = v43 + *(v152 + 20);
      type metadata accessor for RouteSource(0);
      v89 = swift_getEnumCaseMultiPayload();
      if (v89 <= 1)
      {
        if (v89)
        {
          if (v89 != 1)
          {
            goto LABEL_69;
          }
        }

        else
        {
          type metadata accessor for AppLaunchScope(0);
          if (swift_getEnumCaseMultiPayload() > 1)
          {
            goto LABEL_69;
          }
        }

        goto LABEL_66;
      }

      switch(v89)
      {
        case 2:
LABEL_66:
          v91 = sub_1E65D74E8();
          v92 = *(v91 - 8);
          v93 = *(v92 + 8);
          v93(v88, v91);
          v94 = *(type metadata accessor for URLContext(0) + 20);
          if (!(*(v92 + 48))(v88 + v94, 1, v91))
          {
            v93(v88 + v94, v91);
          }

          goto LABEL_69;
        case 3:
          v90 = sub_1E65D74E8();
          break;
        case 4:
          v90 = sub_1E65D8D48();
          break;
        default:
          goto LABEL_69;
      }

      (*(*(v90 - 8) + 8))(v88, v90);
LABEL_69:

      swift_unknownObjectRelease();

      return swift_deallocObject();
    case 6u:

      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v62 = *(v61 + 48);
      v63 = sub_1E65DB848();
      (*(*(v63 - 8) + 8))(v43 + v62, v63);
      v47 = *(v61 + 64);
      v64 = sub_1E65E1518();
      goto LABEL_48;
    case 7u:
      v72 = sub_1E65DB848();
      (*(*(v72 - 8) + 8))(v150 + v41, v72);
      v73 = &unk_1ED0720D0;
      v74 = &unk_1E65EA290;
      goto LABEL_46;
    case 8u:
    case 9u:

      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v45 = *(v44 + 48);
      v46 = sub_1E65DB848();
      (*(*(v46 - 8) + 8))(v43 + v45, v46);
      v47 = *(v44 + 64);
      goto LABEL_47;
    case 0xCu:

      sub_1E5F94E00(*(v43 + 16), *(v43 + 24));
      goto LABEL_55;
    case 0xEu:
      v60 = sub_1E65DB718();
      goto LABEL_54;
    case 0x11u:

      v73 = &unk_1ED0720E0;
      v74 = &unk_1E65EA2A0;
LABEL_46:
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v73, v74) + 48);
LABEL_47:
      v64 = sub_1E65D74E8();
      goto LABEL_48;
    case 0x12u:
      sub_1E5F94E14(*v43, *(v43 + 8), *(v43 + 16));
      goto LABEL_55;
    case 0x13u:
      goto LABEL_27;
    case 0x14u:

      goto LABEL_55;
    case 0x15u:

      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v83 = sub_1E65D96F8();
LABEL_50:
      v58 = v83;
      v59 = *(v83 - 8);
      if (!(*(v59 + 48))(v43 + v57, 1, v83))
      {
        goto LABEL_51;
      }

      goto LABEL_55;
    case 0x16u:
      __swift_destroy_boxed_opaque_existential_1((v150 + v41));
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v49 = v48[12];
      v50 = sub_1E65D74E8();
      (*(*(v50 - 8) + 8))(v43 + v49, v50);

      v51 = v48[20];
      v52 = sub_1E65DB3E8();
      v53 = *(v52 - 8);
      if (!(*(v53 + 48))(v43 + v51, 1, v52))
      {
        (*(v53 + 8))(v43 + v51, v52);
      }

      v54 = v48[32];
      v55 = sub_1E65DB5D8();
      v56 = *(v55 - 8);
      if (!(*(v56 + 48))(v43 + v54, 1, v55))
      {
        (*(v56 + 8))(v43 + v54, v55);
      }

      v57 = v48[36];
      v58 = sub_1E65D7A38();
      v59 = *(v58 - 8);
      if (!(*(v59 + 48))(v43 + v57, 1, v58))
      {
LABEL_51:
        (*(v59 + 8))(v43 + v57, v58);
      }

      goto LABEL_55;
    case 0x17u:
      v68 = sub_1E65E57D8();
      (*(*(v68 - 8) + 8))(v150 + v41, v68);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v70 = *(v69 + 48);
      v71 = sub_1E65E5528();
      (*(*(v71 - 8) + 8))(v43 + v70, v71);
      if (*(v43 + *(v69 + 64) + 8) >= 0xCuLL)
      {
        goto LABEL_20;
      }

      goto LABEL_55;
    case 0x18u:

      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v64 = sub_1E65DB848();
      goto LABEL_48;
    case 0x1Au:
      sub_1E65E52B8();
      v76 = swift_getEnumCaseMultiPayload();
      if (v76 == 1)
      {
      }

      else if (!v76)
      {
LABEL_27:
        v60 = sub_1E65D74E8();
LABEL_54:
        (*(*(v60 - 8) + 8))(v150 + v41, v60);
      }

      goto LABEL_55;
    case 0x1Bu:
      type metadata accessor for PlaylistType(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_20;
      }

      v60 = sub_1E65DAEB8();
      goto LABEL_54;
    case 0x1Cu:
      v60 = sub_1E65D76F8();
      goto LABEL_54;
    case 0x1Du:
      v87 = sub_1E65E55E8();
      (*(*(v87 - 8) + 8))(v150 + v41, v87);
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v64 = sub_1E65D7EB8();
LABEL_48:
      (*(*(v64 - 8) + 8))(v43 + v47, v64);
      goto LABEL_55;
    case 0x1Eu:
      v65 = sub_1E65E56B8();
      (*(*(v65 - 8) + 8))(v150 + v41, v65);
      v66 = &unk_1ED072110;
      v67 = &unk_1E65EA2D0;
      goto LABEL_41;
    case 0x1Fu:
      v75 = sub_1E65DA308();
      (*(*(v75 - 8) + 8))(v150 + v41, v75);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810);
      goto LABEL_20;
    case 0x20u:
      v86 = sub_1E65E58D8();
      (*(*(v86 - 8) + 8))(v150 + v41, v86);
      v66 = &qword_1ED072120;
      v67 = &qword_1E65EA2E0;
LABEL_41:
      __swift_instantiateConcreteTypeFromMangledNameV2(v66, v67);

LABEL_20:

      goto LABEL_55;
    case 0x21u:
      v60 = sub_1E65D9048();
      goto LABEL_54;
    default:
      goto LABEL_55;
  }
}

uint64_t sub_1E5F0D074()
{
  v153 = type metadata accessor for AppComposer(0);
  v149 = *(*(v153 - 1) + 80);
  v1 = (v149 + 24) & ~v149;
  v2 = *(*(v153 - 1) + 64);
  v3 = type metadata accessor for RouteDestination(0);
  v151 = *(*(v3 - 8) + 80);
  v152 = v3;
  v148 = v1 + v2 + v151;

  v150 = v0;
  v145 = v0 + v1;

  v4 = v0 + v1 + v153[5];
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment(0);
  v6 = v5[6];
  v147 = type metadata accessor for AccountService();
  v146 = *(v147[-1].Description + 1);
  v146(v4 + v6, v147);
  v7 = v5[7];
  v144 = type metadata accessor for AppStateService();
  v143 = *(v144[-1].Description + 1);
  v143(v4 + v7, v144);
  v8 = v5[8];
  v142 = type metadata accessor for ArchivedSessionService();
  v141 = *(v142[-1].Description + 1);
  v141(v4 + v8, v142);
  v9 = v5[9];
  v140 = type metadata accessor for AssetService();
  v139 = *(v140[-1].Description + 1);
  v139(v4 + v9, v140);
  v10 = v5[10];
  v138 = type metadata accessor for AwardsService();
  v137 = *(v138[-1].Description + 1);
  v137(v4 + v10, v138);
  v11 = v5[11];
  v136 = type metadata accessor for BookmarkService();
  v135 = *(v136[-1].Description + 1);
  v135(v4 + v11, v136);
  v12 = v5[12];
  v134 = type metadata accessor for CatalogService();
  v133 = *(v134[-1].Description + 1);
  v133(v4 + v12, v134);
  v13 = v5[13];
  v132 = type metadata accessor for ConfigurationService();
  v131 = *(v132[-1].Description + 1);
  v131(v4 + v13, v132);
  v14 = v5[14];
  v130 = type metadata accessor for ContentAvailabilityService();
  v129 = *(v130[-1].Description + 1);
  v129(v4 + v14, v130);
  v15 = v5[15];
  v128 = type metadata accessor for EngagementService();
  v127 = *(v128[-1].Description + 1);
  v127(v4 + v15, v128);
  v16 = v5[16];
  v126 = type metadata accessor for HealthDataService();
  v125 = *(v126[-1].Description + 1);
  v125(v4 + v16, v126);
  v17 = v5[17];
  v124 = type metadata accessor for InteropService();
  v123 = *(v124[-1].Description + 1);
  v123(v4 + v17, v124);
  v18 = v5[18];
  v122 = type metadata accessor for LocalizationService();
  v121 = *(v122[-1].Description + 1);
  v121(v4 + v18, v122);
  v19 = v5[19];
  v120 = type metadata accessor for MarketingService();
  v119 = *(v120[-1].Description + 1);
  v119(v4 + v19, v120);
  v20 = v5[20];
  v118 = type metadata accessor for MetricService();
  v117 = *(v118[-1].Description + 1);
  v117(v4 + v20, v118);
  v21 = v5[21];
  v116 = type metadata accessor for PersonalizationService();
  v115 = *(v116[-1].Description + 1);
  v115(v4 + v21, v116);
  v22 = v5[22];
  v114 = type metadata accessor for PlayerService();
  v113 = *(v114[-1].Description + 1);
  v113(v4 + v22, v114);
  v23 = v5[23];
  v112 = type metadata accessor for PrivacyPreferenceService();
  v111 = *(v112[-1].Description + 1);
  v111(v4 + v23, v112);
  v24 = v5[24];
  v110 = type metadata accessor for RecommendationService();
  v109 = *(v110[-1].Description + 1);
  v109(v4 + v24, v110);
  v25 = v5[25];
  v108 = type metadata accessor for RemoteBrowsingService();
  v107 = *(v108[-1].Description + 1);
  v107(v4 + v25, v108);
  v26 = v5[26];
  v106 = type metadata accessor for SearchService();
  v105 = *(v106[-1].Description + 1);
  v105(v4 + v26, v106);
  v27 = v5[27];
  v104 = type metadata accessor for ServiceSubscriptionService();
  v103 = *(v104[-1].Description + 1);
  v103(v4 + v27, v104);
  v28 = v5[28];
  v97 = type metadata accessor for SessionService();
  v102 = *(v97[-1].Description + 1);
  v102(v4 + v28, v97);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v101 = *(v30[-1].Description + 1);
  v101(v4 + v29, v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v100 = *(v32[-1].Description + 1);
  v100(v4 + v31, v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v99 = *(v34[-1].Description + 1);
  v99(v4 + v33, v34);

  v35 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v98 = *(QueueService[-1].Description + 1);
  v98(v4 + v35, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v4 + v5[34]));

  v37 = v5[36];
  v38 = type metadata accessor for WorkoutPlanService();
  v96 = *(v38[-1].Description + 1);
  v96(v4 + v37, v38);

  v39 = v145 + v153[7];

  v40 = v39 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v146(v40 + v5[6], v147);
  v143(v40 + v5[7], v144);
  v141(v40 + v5[8], v142);
  v139(v40 + v5[9], v140);
  v137(v40 + v5[10], v138);
  v135(v40 + v5[11], v136);
  v133(v40 + v5[12], v134);
  v131(v40 + v5[13], v132);
  v129(v40 + v5[14], v130);
  v127(v40 + v5[15], v128);
  v125(v40 + v5[16], v126);
  v123(v40 + v5[17], v124);
  v121(v40 + v5[18], v122);
  v119(v40 + v5[19], v120);
  v117(v40 + v5[20], v118);
  v115(v40 + v5[21], v116);
  v113(v40 + v5[22], v114);
  v111(v40 + v5[23], v112);
  v109(v40 + v5[24], v110);
  v107(v40 + v5[25], v108);
  v105(v40 + v5[26], v106);
  v103(v40 + v5[27], v104);
  v102(v40 + v5[28], v97);
  v101(v40 + v5[29], v30);
  v100(v40 + v5[30], v32);
  v99(v40 + v5[31], v34);

  v98(v40 + v5[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v40 + v5[34]));

  v96(v40 + v5[36], v38);
  swift_unknownObjectRelease();
  if (*(v145 + v153[9] + 8) >= 0xCuLL)
  {
  }

  v41 = v148 & ~v151;
  v42 = (v145 + v153[10]);
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v43 = v150 + v41;
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
      goto LABEL_20;
    case 1u:
      v77 = sub_1E65D76F8();
      v78 = *(v77 - 8);
      if (!(*(v78 + 48))(v150 + v41, 1, v77))
      {
        (*(v78 + 8))(v150 + v41, v77);
      }

      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);

      v80 = *(v79 + 64);
      v81 = sub_1E65E2CF8();
      v82 = *(v81 - 8);
      if (!(*(v82 + 48))(v43 + v80, 1, v81))
      {
        (*(v82 + 8))(v43 + v80, v81);
      }

      v57 = *(v79 + 96);
      v83 = sub_1E65E1FC8();
      goto LABEL_50;
    case 3u:

      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v64 = sub_1E65D72D8();
      goto LABEL_48;
    case 4u:
      sub_1E65E0B48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v85 = sub_1E65E0FD8();
            (*(*(v85 - 8) + 8))(v150 + v41, v85);
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

LABEL_55:
      v88 = v43 + *(v152 + 20);
      type metadata accessor for RouteSource(0);
      v89 = swift_getEnumCaseMultiPayload();
      if (v89 <= 1)
      {
        if (v89)
        {
          if (v89 != 1)
          {
            goto LABEL_69;
          }
        }

        else
        {
          type metadata accessor for AppLaunchScope(0);
          if (swift_getEnumCaseMultiPayload() > 1)
          {
            goto LABEL_69;
          }
        }

        goto LABEL_66;
      }

      switch(v89)
      {
        case 2:
LABEL_66:
          v91 = sub_1E65D74E8();
          v92 = *(v91 - 8);
          v93 = *(v92 + 8);
          v93(v88, v91);
          v94 = *(type metadata accessor for URLContext(0) + 20);
          if (!(*(v92 + 48))(v88 + v94, 1, v91))
          {
            v93(v88 + v94, v91);
          }

          goto LABEL_69;
        case 3:
          v90 = sub_1E65D74E8();
          break;
        case 4:
          v90 = sub_1E65D8D48();
          break;
        default:
          goto LABEL_69;
      }

      (*(*(v90 - 8) + 8))(v88, v90);
LABEL_69:

      return swift_deallocObject();
    case 6u:

      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v62 = *(v61 + 48);
      v63 = sub_1E65DB848();
      (*(*(v63 - 8) + 8))(v43 + v62, v63);
      v47 = *(v61 + 64);
      v64 = sub_1E65E1518();
      goto LABEL_48;
    case 7u:
      v72 = sub_1E65DB848();
      (*(*(v72 - 8) + 8))(v150 + v41, v72);
      v73 = &unk_1ED0720D0;
      v74 = &unk_1E65EA290;
      goto LABEL_46;
    case 8u:
    case 9u:

      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v45 = *(v44 + 48);
      v46 = sub_1E65DB848();
      (*(*(v46 - 8) + 8))(v43 + v45, v46);
      v47 = *(v44 + 64);
      goto LABEL_47;
    case 0xCu:

      sub_1E5F94E00(*(v43 + 16), *(v43 + 24));
      goto LABEL_55;
    case 0xEu:
      v60 = sub_1E65DB718();
      goto LABEL_54;
    case 0x11u:

      v73 = &unk_1ED0720E0;
      v74 = &unk_1E65EA2A0;
LABEL_46:
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v73, v74) + 48);
LABEL_47:
      v64 = sub_1E65D74E8();
      goto LABEL_48;
    case 0x12u:
      sub_1E5F94E14(*v43, *(v43 + 8), *(v43 + 16));
      goto LABEL_55;
    case 0x13u:
      goto LABEL_27;
    case 0x14u:

      goto LABEL_55;
    case 0x15u:

      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v83 = sub_1E65D96F8();
LABEL_50:
      v58 = v83;
      v59 = *(v83 - 8);
      if (!(*(v59 + 48))(v43 + v57, 1, v83))
      {
        goto LABEL_51;
      }

      goto LABEL_55;
    case 0x16u:
      __swift_destroy_boxed_opaque_existential_1((v150 + v41));
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v49 = v48[12];
      v50 = sub_1E65D74E8();
      (*(*(v50 - 8) + 8))(v43 + v49, v50);

      v51 = v48[20];
      v52 = sub_1E65DB3E8();
      v53 = *(v52 - 8);
      if (!(*(v53 + 48))(v43 + v51, 1, v52))
      {
        (*(v53 + 8))(v43 + v51, v52);
      }

      v54 = v48[32];
      v55 = sub_1E65DB5D8();
      v56 = *(v55 - 8);
      if (!(*(v56 + 48))(v43 + v54, 1, v55))
      {
        (*(v56 + 8))(v43 + v54, v55);
      }

      v57 = v48[36];
      v58 = sub_1E65D7A38();
      v59 = *(v58 - 8);
      if (!(*(v59 + 48))(v43 + v57, 1, v58))
      {
LABEL_51:
        (*(v59 + 8))(v43 + v57, v58);
      }

      goto LABEL_55;
    case 0x17u:
      v68 = sub_1E65E57D8();
      (*(*(v68 - 8) + 8))(v150 + v41, v68);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v70 = *(v69 + 48);
      v71 = sub_1E65E5528();
      (*(*(v71 - 8) + 8))(v43 + v70, v71);
      if (*(v43 + *(v69 + 64) + 8) >= 0xCuLL)
      {
        goto LABEL_20;
      }

      goto LABEL_55;
    case 0x18u:

      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v64 = sub_1E65DB848();
      goto LABEL_48;
    case 0x1Au:
      sub_1E65E52B8();
      v76 = swift_getEnumCaseMultiPayload();
      if (v76 == 1)
      {
      }

      else if (!v76)
      {
LABEL_27:
        v60 = sub_1E65D74E8();
LABEL_54:
        (*(*(v60 - 8) + 8))(v150 + v41, v60);
      }

      goto LABEL_55;
    case 0x1Bu:
      type metadata accessor for PlaylistType(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_20;
      }

      v60 = sub_1E65DAEB8();
      goto LABEL_54;
    case 0x1Cu:
      v60 = sub_1E65D76F8();
      goto LABEL_54;
    case 0x1Du:
      v87 = sub_1E65E55E8();
      (*(*(v87 - 8) + 8))(v150 + v41, v87);
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v64 = sub_1E65D7EB8();
LABEL_48:
      (*(*(v64 - 8) + 8))(v43 + v47, v64);
      goto LABEL_55;
    case 0x1Eu:
      v65 = sub_1E65E56B8();
      (*(*(v65 - 8) + 8))(v150 + v41, v65);
      v66 = &unk_1ED072110;
      v67 = &unk_1E65EA2D0;
      goto LABEL_41;
    case 0x1Fu:
      v75 = sub_1E65DA308();
      (*(*(v75 - 8) + 8))(v150 + v41, v75);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810);
      goto LABEL_20;
    case 0x20u:
      v86 = sub_1E65E58D8();
      (*(*(v86 - 8) + 8))(v150 + v41, v86);
      v66 = &qword_1ED072120;
      v67 = &qword_1E65EA2E0;
LABEL_41:
      __swift_instantiateConcreteTypeFromMangledNameV2(v66, v67);

LABEL_20:

      goto LABEL_55;
    case 0x21u:
      v60 = sub_1E65D9048();
      goto LABEL_54;
    default:
      goto LABEL_55;
  }
}

uint64_t sub_1E5F0E988()
{
  MEMORY[0x1E694F2D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5F0E9C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785A8, &unk_1E65FD7A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5F0EA68()
{
  v1 = sub_1E65DEB28();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1E65DEC18();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v51 = type metadata accessor for AppComposer(0);
  v101 = *(*(v51 - 1) + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);
  v98 = v0 + ((v7 + v8 + v101) & ~v101);

  v9 = v98 + v51[5];
  swift_unknownObjectRelease();
  v10 = type metadata accessor for AppEnvironment(0);
  v11 = v10[6];
  v100 = type metadata accessor for AccountService();
  v99 = *(v100[-1].Description + 1);
  v99(v9 + v11, v100);
  v12 = v10[7];
  v97 = type metadata accessor for AppStateService();
  v96 = *(v97[-1].Description + 1);
  v96(v9 + v12, v97);
  v13 = v10[8];
  v95 = type metadata accessor for ArchivedSessionService();
  v94 = *(v95[-1].Description + 1);
  v94(v9 + v13, v95);
  v14 = v10[9];
  v93 = type metadata accessor for AssetService();
  v92 = *(v93[-1].Description + 1);
  v92(v9 + v14, v93);
  v15 = v10[10];
  v91 = type metadata accessor for AwardsService();
  v90 = *(v91[-1].Description + 1);
  v90(v9 + v15, v91);
  v16 = v10[11];
  v89 = type metadata accessor for BookmarkService();
  v88 = *(v89[-1].Description + 1);
  v88(v9 + v16, v89);
  v17 = v10[12];
  v87 = type metadata accessor for CatalogService();
  v86 = *(v87[-1].Description + 1);
  v86(v9 + v17, v87);
  v18 = v10[13];
  v85 = type metadata accessor for ConfigurationService();
  v84 = *(v85[-1].Description + 1);
  v84(v9 + v18, v85);
  v19 = v10[14];
  v83 = type metadata accessor for ContentAvailabilityService();
  v82 = *(v83[-1].Description + 1);
  v82(v9 + v19, v83);
  v20 = v10[15];
  v81 = type metadata accessor for EngagementService();
  v80 = *(v81[-1].Description + 1);
  v80(v9 + v20, v81);
  v21 = v10[16];
  v79 = type metadata accessor for HealthDataService();
  v78 = *(v79[-1].Description + 1);
  v78(v9 + v21, v79);
  v22 = v10[17];
  v77 = type metadata accessor for InteropService();
  v76 = *(v77[-1].Description + 1);
  v76(v9 + v22, v77);
  v23 = v10[18];
  v75 = type metadata accessor for LocalizationService();
  v74 = *(v75[-1].Description + 1);
  v74(v9 + v23, v75);
  v24 = v10[19];
  v73 = type metadata accessor for MarketingService();
  v72 = *(v73[-1].Description + 1);
  v72(v9 + v24, v73);
  v25 = v10[20];
  v71 = type metadata accessor for MetricService();
  v70 = *(v71[-1].Description + 1);
  v70(v9 + v25, v71);
  v26 = v10[21];
  v69 = type metadata accessor for PersonalizationService();
  v68 = *(v69[-1].Description + 1);
  v68(v9 + v26, v69);
  v27 = v10[22];
  v67 = type metadata accessor for PlayerService();
  v66 = *(v67[-1].Description + 1);
  v66(v9 + v27, v67);
  v28 = v10[23];
  v65 = type metadata accessor for PrivacyPreferenceService();
  v64 = *(v65[-1].Description + 1);
  v64(v9 + v28, v65);
  v29 = v10[24];
  v63 = type metadata accessor for RecommendationService();
  v62 = *(v63[-1].Description + 1);
  v62(v9 + v29, v63);
  v30 = v10[25];
  v61 = type metadata accessor for RemoteBrowsingService();
  v60 = *(v61[-1].Description + 1);
  v60(v9 + v30, v61);
  v31 = v10[26];
  v59 = type metadata accessor for SearchService();
  v58 = *(v59[-1].Description + 1);
  v58(v9 + v31, v59);
  v32 = v10[27];
  v57 = type metadata accessor for ServiceSubscriptionService();
  v56 = *(v57[-1].Description + 1);
  v56(v9 + v32, v57);
  v33 = v10[28];
  v49 = type metadata accessor for SessionService();
  v55 = *(v49[-1].Description + 1);
  v55(v9 + v33, v49);
  v34 = v10[29];
  v35 = type metadata accessor for SharePlayService();
  v54 = *(v35[-1].Description + 1);
  v54(v9 + v34, v35);
  v36 = v10[30];
  v37 = type metadata accessor for SiriService();
  v53 = *(v37[-1].Description + 1);
  v53(v9 + v36, v37);
  v38 = v10[31];
  v39 = type metadata accessor for SyncService();
  v52 = *(v39[-1].Description + 1);
  v52(v9 + v38, v39);

  v40 = v10[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v50 = *(QueueService[-1].Description + 1);
  v50(v9 + v40, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v9 + v10[34]));

  v42 = v10[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v48 = *(v43[-1].Description + 1);
  v48(v9 + v42, v43);

  v44 = v98 + v51[7];

  v45 = v44 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v99(v45 + v10[6], v100);
  v96(v45 + v10[7], v97);
  v94(v45 + v10[8], v95);
  v92(v45 + v10[9], v93);
  v90(v45 + v10[10], v91);
  v88(v45 + v10[11], v89);
  v86(v45 + v10[12], v87);
  v84(v45 + v10[13], v85);
  v82(v45 + v10[14], v83);
  v80(v45 + v10[15], v81);
  v78(v45 + v10[16], v79);
  v76(v45 + v10[17], v77);
  v74(v45 + v10[18], v75);
  v72(v45 + v10[19], v73);
  v70(v45 + v10[20], v71);
  v68(v45 + v10[21], v69);
  v66(v45 + v10[22], v67);
  v64(v45 + v10[23], v65);
  v62(v45 + v10[24], v63);
  v60(v45 + v10[25], v61);
  v58(v45 + v10[26], v59);
  v56(v45 + v10[27], v57);
  v55(v45 + v10[28], v49);
  v54(v45 + v10[29], v35);
  v53(v45 + v10[30], v37);
  v52(v45 + v10[31], v39);

  v50(v45 + v10[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v45 + v10[34]));

  v48(v45 + v10[36], v43);
  swift_unknownObjectRelease();
  if (*(v98 + v51[9] + 8) >= 0xCuLL)
  {
  }

  v46 = (v98 + v51[10]);
  if (v46[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5F0F880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DB0, &qword_1E65EEE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5F0F8F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DB0, &qword_1E65EEE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5F0F960()
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

uint64_t sub_1E5F10664()
{
  v1 = *(sub_1E65E2258() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1E65D7848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v8 = sub_1E65E21D8();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v0 + v2, 1, v8))
    {
      (*(v9 + 8))(v0 + v2, v8);
    }
  }

  swift_unknownObjectRelease();

  (*(v5 + 8))(v0 + ((((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 80) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1E5F108A4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5F108DC()
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

uint64_t sub_1E5F115C0()
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

uint64_t sub_1E5F122D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078868, &qword_1E65FDC60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5F12348()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5F12380()
{

  return swift_deallocObject();
}

uint64_t sub_1E5F123D8()
{

  return swift_deallocObject();
}

uint64_t sub_1E5F12418()
{
  v100 = type metadata accessor for AppComposer(0);
  v98 = *(*(v100 - 1) + 80);
  v94 = *(*(v100 - 1) + 64);
  v1 = sub_1E65DBE88();
  v96 = *(v1 - 8);
  v97 = v1;
  v93 = *(v96 + 80);
  v99 = v0;
  v95 = (v98 + 16) & ~v98;
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

  (*(v96 + 8))(v99 + ((v95 + v94 + v93) & ~v93), v97);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}