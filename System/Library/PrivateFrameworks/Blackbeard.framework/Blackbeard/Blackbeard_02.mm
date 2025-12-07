uint64_t objectdestroy_5Tm()
{
  v1 = (type metadata accessor for AppEnvironment(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  swift_unknownObjectRelease();
  v3 = v1[8];
  v4 = type metadata accessor for AccountService();
  (*(v4[-1].Description + 1))(v2 + v3, v4);
  v5 = v1[9];
  v6 = type metadata accessor for AppStateService();
  (*(v6[-1].Description + 1))(v2 + v5, v6);
  v7 = v1[10];
  v8 = type metadata accessor for ArchivedSessionService();
  (*(v8[-1].Description + 1))(v2 + v7, v8);
  v9 = v1[11];
  v10 = type metadata accessor for AssetService();
  (*(v10[-1].Description + 1))(v2 + v9, v10);
  v11 = v1[12];
  v12 = type metadata accessor for AwardsService();
  (*(v12[-1].Description + 1))(v2 + v11, v12);
  v13 = v1[13];
  v14 = type metadata accessor for BookmarkService();
  (*(v14[-1].Description + 1))(v2 + v13, v14);
  v15 = v1[14];
  v16 = type metadata accessor for CatalogService();
  (*(v16[-1].Description + 1))(v2 + v15, v16);
  v17 = v1[15];
  v18 = type metadata accessor for ConfigurationService();
  (*(v18[-1].Description + 1))(v2 + v17, v18);
  v19 = v1[16];
  v20 = type metadata accessor for ContentAvailabilityService();
  (*(v20[-1].Description + 1))(v2 + v19, v20);
  v21 = v1[17];
  v22 = type metadata accessor for EngagementService();
  (*(v22[-1].Description + 1))(v2 + v21, v22);
  v23 = v1[18];
  v24 = type metadata accessor for HealthDataService();
  (*(v24[-1].Description + 1))(v2 + v23, v24);
  v25 = v1[19];
  v26 = type metadata accessor for InteropService();
  (*(v26[-1].Description + 1))(v2 + v25, v26);
  v27 = v1[20];
  v28 = type metadata accessor for LocalizationService();
  (*(v28[-1].Description + 1))(v2 + v27, v28);
  v29 = v1[21];
  v30 = type metadata accessor for MarketingService();
  (*(v30[-1].Description + 1))(v2 + v29, v30);
  v31 = v1[22];
  v32 = type metadata accessor for MetricService();
  (*(v32[-1].Description + 1))(v2 + v31, v32);
  v33 = v1[23];
  v34 = type metadata accessor for PersonalizationService();
  (*(v34[-1].Description + 1))(v2 + v33, v34);
  v35 = v1[24];
  v36 = type metadata accessor for PlayerService();
  (*(v36[-1].Description + 1))(v2 + v35, v36);
  v37 = v1[25];
  v38 = type metadata accessor for PrivacyPreferenceService();
  (*(v38[-1].Description + 1))(v2 + v37, v38);
  v39 = v1[26];
  v40 = type metadata accessor for RecommendationService();
  (*(v40[-1].Description + 1))(v2 + v39, v40);
  v41 = v1[27];
  v42 = type metadata accessor for RemoteBrowsingService();
  (*(v42[-1].Description + 1))(v2 + v41, v42);
  v43 = v1[28];
  v44 = type metadata accessor for SearchService();
  (*(v44[-1].Description + 1))(v2 + v43, v44);
  v45 = v1[29];
  v46 = type metadata accessor for ServiceSubscriptionService();
  (*(v46[-1].Description + 1))(v2 + v45, v46);
  v47 = v1[30];
  v48 = type metadata accessor for SessionService();
  (*(v48[-1].Description + 1))(v2 + v47, v48);
  v49 = v1[31];
  v50 = type metadata accessor for SharePlayService();
  (*(v50[-1].Description + 1))(v2 + v49, v50);
  v51 = v1[32];
  v52 = type metadata accessor for SiriService();
  (*(v52[-1].Description + 1))(v2 + v51, v52);
  v53 = v1[33];
  v54 = type metadata accessor for SyncService();
  (*(v54[-1].Description + 1))(v2 + v53, v54);

  v55 = v1[35];
  QueueService = type metadata accessor for UpNextQueueService();
  (*(QueueService[-1].Description + 1))(v2 + v55, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v2 + v1[36]));

  v57 = v1[38];
  v58 = type metadata accessor for WorkoutPlanService();
  (*(v58[-1].Description + 1))(v2 + v57, v58);

  return swift_deallocObject();
}

uint64_t objectdestroy_153Tm()
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

uint64_t objectdestroy_5Tm_0()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_1(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  swift_unknownObjectRelease();
  if (v1[5] >= 0xCuLL)
  {
  }

  if (v1[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v1 + 7);
  }

  __swift_destroy_boxed_opaque_existential_1(v1 + 12);
  (*(v3 + 8))(v1 + ((v4 + 136) & ~v4), v2);

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_2(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1E5E224F8()
{

  sub_1E65E4CF8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5E22578(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E5E225D8(v3);
  }

  return result;
}

uint64_t sub_1E5E225D8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A30, &qword_1E65EEA70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v45 - v5;
  v7 = type metadata accessor for NavigationControllerRoutingContext(0);
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10Blackbeard9AppRouter_routingContexts;
  swift_beginAccess();

  v11 = sub_1E5E22A94(v10);
  if (*(v11 + 16) <= *(a1 + 16) >> 3)
  {
    *&v53 = a1;

    sub_1E5E22C9C(v11);

    v50 = v53;
  }

  else
  {

    v50 = sub_1E5E22DDC(v11, a1);
  }

  v13 = sub_1E5E22A94(v12);
  v14 = *(a1 + 16);
  v15 = *(v13 + 16);
  v47 = v6;
  if (v14 <= v15 >> 3)
  {
    *&v53 = v13;
    sub_1E5E22C9C(a1);
    v49 = v53;
  }

  else
  {
    v49 = sub_1E5E22DDC(a1, v13);
  }

  v16 = v50 + 56;
  v17 = 1 << *(v50 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v50 + 56);
  v20 = (v17 + 63) >> 6;

  v22 = 0;
  v23 = v48;
  if (v19)
  {
    while (1)
    {
      v24 = v22;
LABEL_15:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v53 = *(*(v50 + 48) + ((v24 << 10) | (16 * v25)));
      v26 = *(&v53 + 1);
      v27 = v53;
      sub_1E5E05374(v53, *(&v53 + 1));
      sub_1E5E24114(&v53, v23);
      sub_1E5E263A0(v23, type metadata accessor for NavigationControllerRoutingContext);
      result = sub_1E5E0476C(v27, v26);
      if (!v19)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v24 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v24);
    ++v22;
    if (v19)
    {
      v22 = v24;
      goto LABEL_15;
    }
  }

  v28 = v49 + 56;
  v29 = 1 << *(v49 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v49 + 56);
  v32 = (v29 + 63) >> 6;
  v50 = v45 + 56;

  v33 = 0;
  v51 = v9;
  while (v31)
  {
LABEL_27:
    v37 = (*(v49 + 48) + ((v33 << 10) | (16 * __clz(__rbit64(v31)))));
    v38 = *v37;
    v39 = v37[1];
    swift_beginAccess();
    sub_1E5E05374(v38, v39);
    v40 = sub_1E5E2575C(v38, v39);
    if (v41)
    {
      v42 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = *(v2 + v9);
      v52 = v44;
      *(v2 + v9) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1E6423C40();
        v44 = v52;
      }

      sub_1E5E0476C(*(*(v44 + 48) + 16 * v42), *(*(v44 + 48) + 16 * v42 + 8));
      v35 = v47;
      sub_1E5E24844(*(v44 + 56) + *(v45 + 72) * v42, v47, type metadata accessor for NavigationControllerRoutingContext);
      sub_1E641F10C(v42, v44);
      *(v2 + v51) = v44;

      v34 = 0;
    }

    else
    {
      v34 = 1;
      v35 = v47;
    }

    v31 &= v31 - 1;
    (*v50)(v35, v34, 1, v46);
    sub_1E5DFE50C(v35, &qword_1ED072A30, &qword_1E65EEA70);
    swift_endAccess();
    result = sub_1E5E0476C(v38, v39);
    v9 = v51;
  }

  while (1)
  {
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v36 >= v32)
    {
    }

    v31 = *(v28 + 8 * v36);
    ++v33;
    if (v31)
    {
      v33 = v36;
      goto LABEL_27;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1E5E22A94(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E5DFCE18();
  result = MEMORY[0x1E694DC60](v2, &type metadata for RootItem, v3);
  v5 = 0;
  v16 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_1E5E0476C(v15[0], v15[1]))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_1E5E05374(*v12, v14);
    sub_1E60F4FA8(v15, v13, v14);
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v16;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5E22BB8(uint64_t a1)
{
  v2 = sub_1E65E39E8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppState(0);
  (*(v3 + 16))(v5, a1 + *(v6 + 280), v2);
  return sub_1E65E3A98();
}

uint64_t sub_1E5E22C9C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        sub_1E5E05374(*v11, v13);
        sub_1E5FCC8BC(v12, v13, &v14);
        sub_1E5E0476C(v12, v13);
        result = sub_1E5E07DA0(v14, *(&v14 + 1));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1E5E22DDC(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v84 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v61 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v66 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v74 = (a2 + 56);

  v15 = 0;
  v68 = v13;
  v69 = v7;
  v67 = v12;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_142;
      }

      if (v17 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        goto LABEL_11;
      }
    }

LABEL_139:
    sub_1E5E24EE4(v13);
    return v5;
  }

  while (1)
  {
LABEL_11:
    v18 = (*(v13 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v11)))));
    v19 = v18[1];
    v70 = *v18;
    sub_1E65E6D28();
    v71 = v15;
    if (v19 > 2)
    {
      if (v19 != 3 && v19 != 4 && v19 != 5)
      {
LABEL_19:
        v75 = 0x7974696C61646F6DLL;
        v76 = 0xE90000000000003ALL;
        sub_1E5E05374(v70, v19);
        MEMORY[0x1E694D7C0](v70, v19);
      }
    }

    else if (v19 > 2)
    {
      goto LABEL_19;
    }

    v11 &= v11 - 1;
    sub_1E65E5D78();

    v20 = sub_1E65E6D78();
    v21 = -1 << *(v5 + 32);
    v4 = v20 & ~v21;
    v3 = v4 >> 6;
    v7 = 1 << v4;
    if (((1 << v4) & v74[v4 >> 6]) != 0)
    {
      break;
    }

LABEL_63:
    sub_1E5E0476C(v70, v19);
    v13 = v68;
    v7 = v69;
    v15 = v71;
    v12 = v67;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v72 = ~v21;
  v73 = v5;
  while (1)
  {
    v22 = (*(v5 + 48) + 16 * v4);
    v23 = *v22;
    v2 = v22[1];
    if (v2 > 2)
    {
      if (v2 == 3)
      {
        v24 = 0xE600000000000000;
        v25 = 0x686372616573;
        if (v19 <= 2)
        {
          goto LABEL_40;
        }

        goto LABEL_34;
      }

      if (v2 != 4)
      {
        if (v2 == 5)
        {
          v24 = 0xE500000000000000;
          v25 = 0x736E616C70;
          if (v19 <= 2)
          {
            goto LABEL_40;
          }

          goto LABEL_34;
        }

        goto LABEL_49;
      }

      v24 = 0xE600000000000000;
      v25 = 0x7478654E7075;
      if (v19 <= 2)
      {
LABEL_40:
        if (v19)
        {
          if (v19 == 1)
          {
            v26 = 0xE600000000000000;
            if (v25 != 0x756F59726F66)
            {
              goto LABEL_61;
            }
          }

          else
          {
            if (v19 != 2)
            {
              goto LABEL_51;
            }

            v26 = 0xE700000000000000;
            if (v25 != 0x7972617262696CLL)
            {
              goto LABEL_61;
            }
          }
        }

        else
        {
          v26 = 0xE700000000000000;
          if (v25 != 0x65726F6C707865)
          {
            goto LABEL_61;
          }
        }

        goto LABEL_60;
      }
    }

    else
    {
      if (!v2)
      {
        v24 = 0xE700000000000000;
        v25 = 0x65726F6C707865;
        if (v19 <= 2)
        {
          goto LABEL_40;
        }

        goto LABEL_34;
      }

      if (v2 != 1)
      {
        if (v2 == 2)
        {
          v24 = 0xE700000000000000;
          v25 = 0x7972617262696CLL;
          if (v19 <= 2)
          {
            goto LABEL_40;
          }

          goto LABEL_34;
        }

LABEL_49:
        v77 = 0x7974696C61646F6DLL;
        v78 = 0xE90000000000003ALL;
        sub_1E5E05374(v23, v2);
        MEMORY[0x1E694D7C0](v23, v2);
        v25 = 0x7974696C61646F6DLL;
        v24 = 0xE90000000000003ALL;
        if (v19 <= 2)
        {
          goto LABEL_40;
        }

        goto LABEL_34;
      }

      v24 = 0xE600000000000000;
      v25 = 0x756F59726F66;
      if (v19 <= 2)
      {
        goto LABEL_40;
      }
    }

LABEL_34:
    switch(v19)
    {
      case 3:
        v26 = 0xE600000000000000;
        if (v25 != 0x686372616573)
        {
          goto LABEL_61;
        }

        break;
      case 4:
        v26 = 0xE600000000000000;
        if (v25 != 0x7478654E7075)
        {
          goto LABEL_61;
        }

        break;
      case 5:
        v26 = 0xE500000000000000;
        if (v25 != 0x736E616C70)
        {
          goto LABEL_61;
        }

        break;
      default:
LABEL_51:
        v77 = 0x7974696C61646F6DLL;
        v78 = 0xE90000000000003ALL;
        MEMORY[0x1E694D7C0](v70, v19);
        v26 = 0xE90000000000003ALL;
        if (v25 != 0x7974696C61646F6DLL)
        {
          goto LABEL_61;
        }

        break;
    }

LABEL_60:
    if (v24 == v26)
    {
      v81 = v66;
      v82 = v71;
      v83 = v11;
      v79 = v68;
      v80 = v69;
      v28 = v2;
      v2 = v68;
      sub_1E5E0476C(v23, v28);

      goto LABEL_69;
    }

LABEL_61:
    v27 = sub_1E65E6C18();
    sub_1E5E0476C(v23, v2);

    if (v27)
    {
      break;
    }

    v5 = v73;
    v4 = (v4 + 1) & v72;
    v3 = v4 >> 6;
    v7 = 1 << v4;
    if ((v74[v4 >> 6] & (1 << v4)) == 0)
    {
      goto LABEL_63;
    }
  }

  v81 = v66;
  v82 = v71;
  v83 = v11;
  v2 = v68;
  v79 = v68;
  v80 = v69;
LABEL_69:
  v8 = v73;
  v29 = sub_1E5E0476C(v70, v19);
  v30 = *(v73 + 32);
  v62 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v62;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_143;
  }

  while (2)
  {
    v63 = &v60;
    MEMORY[0x1EEE9AC00](v29);
    v32 = &v60 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v74, v31);
    v33 = *&v32[8 * v3] & ~v7;
    v34 = *(v8 + 16);
    v65 = v32;
    *&v32[8 * v3] = v33;
    v35 = v34 - 1;
    v7 = v69;
    v36 = v71;
    v37 = v67;
LABEL_71:
    v64 = v35;
LABEL_73:
    while (2)
    {
      if (v11)
      {
LABEL_79:
        v40 = (*(v2 + 48) + ((v36 << 10) | (16 * __clz(__rbit64(v11)))));
        v4 = v40[1];
        v70 = *v40;
        sub_1E65E6D28();
        v71 = v36;
        if (v4 > 2)
        {
          if (v4 == 3 || v4 == 4 || v4 == 5)
          {
            goto LABEL_88;
          }
        }

        else if (v4 <= 2)
        {
          goto LABEL_88;
        }

        v75 = 0x7974696C61646F6DLL;
        v76 = 0xE90000000000003ALL;
        v41 = v70;
        sub_1E5E05374(v70, v4);
        MEMORY[0x1E694D7C0](v41, v4);
LABEL_88:
        v11 &= v11 - 1;
        sub_1E65E5D78();

        v42 = sub_1E65E6D78();
        v43 = -1 << *(v8 + 32);
        v44 = v42 & ~v43;
        v45 = v44 >> 6;
        v3 = 1 << v44;
        if (((1 << v44) & v74[v44 >> 6]) == 0)
        {
LABEL_72:
          sub_1E5E0476C(v70, v4);
          v2 = v68;
          v7 = v69;
          v36 = v71;
          v37 = v67;
          continue;
        }

        v72 = ~v43;
        while (1)
        {
          v46 = (*(v8 + 48) + 16 * v44);
          v47 = *v46;
          v48 = v46[1];
          if (v48 > 2)
          {
            if (v48 == 3)
            {
              v49 = 0xE600000000000000;
              v50 = 0x686372616573;
              if (v4 <= 2)
              {
                goto LABEL_108;
              }

              goto LABEL_102;
            }

            if (v48 != 4)
            {
              if (v48 == 5)
              {
                v49 = 0xE500000000000000;
                v50 = 0x736E616C70;
                if (v4 <= 2)
                {
                  goto LABEL_108;
                }

                goto LABEL_102;
              }

              goto LABEL_117;
            }

            v49 = 0xE600000000000000;
            v50 = 0x7478654E7075;
            if (v4 <= 2)
            {
LABEL_108:
              if (v4)
              {
                if (v4 == 1)
                {
                  v51 = 0xE600000000000000;
                  if (v50 != 0x756F59726F66)
                  {
                    goto LABEL_129;
                  }
                }

                else
                {
                  if (v4 != 2)
                  {
                    goto LABEL_119;
                  }

                  v51 = 0xE700000000000000;
                  if (v50 != 0x7972617262696CLL)
                  {
                    goto LABEL_129;
                  }
                }
              }

              else
              {
                v51 = 0xE700000000000000;
                if (v50 != 0x65726F6C707865)
                {
                  goto LABEL_129;
                }
              }

              goto LABEL_128;
            }
          }

          else
          {
            if (!v48)
            {
              v49 = 0xE700000000000000;
              v50 = 0x65726F6C707865;
              if (v4 <= 2)
              {
                goto LABEL_108;
              }

              goto LABEL_102;
            }

            if (v48 != 1)
            {
              if (v48 == 2)
              {
                v49 = 0xE700000000000000;
                v50 = 0x7972617262696CLL;
                if (v4 <= 2)
                {
                  goto LABEL_108;
                }

                goto LABEL_102;
              }

LABEL_117:
              v77 = 0x7974696C61646F6DLL;
              v78 = 0xE90000000000003ALL;
              sub_1E5E05374(v47, v48);
              MEMORY[0x1E694D7C0](v47, v48);
              v50 = v77;
              v49 = v78;
              if (v4 <= 2)
              {
                goto LABEL_108;
              }

              goto LABEL_102;
            }

            v49 = 0xE600000000000000;
            v50 = 0x756F59726F66;
            if (v4 <= 2)
            {
              goto LABEL_108;
            }
          }

LABEL_102:
          switch(v4)
          {
            case 3:
              v51 = 0xE600000000000000;
              if (v50 != 0x686372616573)
              {
                goto LABEL_129;
              }

              break;
            case 4:
              v51 = 0xE600000000000000;
              if (v50 != 0x7478654E7075)
              {
                goto LABEL_129;
              }

              break;
            case 5:
              v51 = 0xE500000000000000;
              if (v50 != 0x736E616C70)
              {
                goto LABEL_129;
              }

              break;
            default:
LABEL_119:
              v77 = 0x7974696C61646F6DLL;
              v78 = 0xE90000000000003ALL;
              v52 = v50;
              MEMORY[0x1E694D7C0](v70, v4);
              v51 = v78;
              if (v52 != v77)
              {
                goto LABEL_129;
              }

              break;
          }

LABEL_128:
          if (v49 == v51)
          {
            sub_1E5E0476C(v47, v48);

LABEL_133:
            sub_1E5E0476C(v70, v4);
            v54 = v65[v45];
            v65[v45] = v54 & ~v3;
            v8 = v73;
            v2 = v68;
            v7 = v69;
            v36 = v71;
            v37 = v67;
            if ((v54 & v3) != 0)
            {
              v35 = v64 - 1;
              if (__OFSUB__(v64, 1))
              {
                __break(1u);
              }

              if (v64 == 1)
              {

                v5 = MEMORY[0x1E69E7CD0];
                goto LABEL_138;
              }

              goto LABEL_71;
            }

            goto LABEL_73;
          }

LABEL_129:
          v53 = sub_1E65E6C18();
          sub_1E5E0476C(v47, v48);

          if (v53)
          {
            goto LABEL_133;
          }

          v8 = v73;
          v44 = (v44 + 1) & v72;
          v45 = v44 >> 6;
          v3 = 1 << v44;
          if ((v74[v44 >> 6] & (1 << v44)) == 0)
          {
            goto LABEL_72;
          }
        }
      }

      break;
    }

    v38 = v36;
    while (1)
    {
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v39 >= v37)
      {
        v5 = sub_1E6089080(v65, v62, v64, v8);
        goto LABEL_138;
      }

      v11 = *(v7 + 8 * v39);
      ++v38;
      if (v11)
      {
        v36 = v39;
        goto LABEL_79;
      }
    }

    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    v56 = v14;

    v57 = v56;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v58 = swift_slowAlloc();
  memcpy(v58, v74, v57);
  v59 = v61;
  v5 = sub_1E6338228(v58, v62, v8, v4, &v79);

  if (!v59)
  {

    MEMORY[0x1E694F1C0](v58, -1, -1);
    v2 = v79;
    v66 = v81;
LABEL_138:
    v13 = v2;
    goto LABEL_139;
  }

  result = MEMORY[0x1E694F1C0](v58, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1E5E23B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E5E23BC8(a1, v6, a2);
}

uint64_t sub_1E5E23BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075800, &unk_1E6606280);
  MEMORY[0x1EEE9AC00](v42);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075808, &qword_1E65F1DC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v41 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v39 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33 - v12;
  v14 = sub_1E65D7848();
  v38 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for AppState(0);
  v17 = *(a1 + *(v44 + 252));
  v18 = *(a2 + *(type metadata accessor for AppComposer(0) + 20) + 8);
  v19 = *(v17 + 16);
  v40 = v14;
  if (v19)
  {
    v34 = v13;
    v35 = v16;
    v36 = v6;
    v37 = a1;
    v20 = sub_1E5E24758(v19, 0);
    v21 = sub_1E5E24964(&v45, v20 + 2, v19, v17);
    v22 = v45;

    sub_1E5E24EE4(v22);
    if (v21 != v19)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v6 = v36;
    a1 = v37;
    v13 = v34;
    v16 = v35;
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v45 = v20;
  sub_1E5E24AC8(&v45, v18);
  v23 = v45;
  v24 = a1 + *(v44 + 248);
  v25 = *v24;
  v26 = *(v24 + 8);
  if (v26 != 6)
  {
    sub_1E5E05374(*v24, *(v24 + 8));
    if ((sub_1E5E25298(v25, v26, v17) & 1) == 0)
    {
      sub_1E5E07DA0(v25, v26);
      v25 = 0;
      v26 = 6;
    }
  }

  v45 = v25;
  v46 = v26;
  sub_1E5E25708();
  v36 = sub_1E65E5F58();
  v27 = sub_1E5E07DA0(v45, v46);
  MEMORY[0x1EEE9AC00](v27);
  *(&v33 - 2) = a1;
  v37 = sub_1E5E26400(sub_1E5E26E7C, (&v33 - 4), v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v28 = v39;
  sub_1E65E4C98();
  sub_1E5E1F544(v13);
  sub_1E5DFE50C(v28, &qword_1ED071F78, &unk_1E65EA3F0);
  v29 = v38;
  v30 = *(v38 + 48);
  v31 = v40;
  if (v30(v13, 1, v40) == 1)
  {
    sub_1E65D77C8();
    if (v30(v13, 1, v31) != 1)
    {
      sub_1E5DFE50C(v13, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v29 + 32))(v16, v13, v31);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F00, &unk_1E66062A0);
  sub_1E65E4C98();
  sub_1E65E4DA8();
  sub_1E5DFE50C(v6, &qword_1ED075800, &unk_1E6606280);
  return sub_1E65DEE68();
}

void sub_1E5E24114(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A30, &qword_1E65EEA70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v46 - v7;
  v9 = type metadata accessor for AppComposer(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NavigationControllerRoutingContext(0);
  v55 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v17 = sub_1E65E3B68();
  __swift_project_value_buffer(v17, qword_1EE2EA2A0);
  sub_1E65E3B28();
  v18 = OBJC_IVAR____TtC10Blackbeard9AppRouter_routingContexts;
  swift_beginAccess();
  v54 = v18;
  v19 = *(v3 + v18);
  if (*(v19 + 16) && (v20 = sub_1E5E2575C(v15, v16), (v21 & 1) != 0))
  {
    sub_1E5E246F0(*(v19 + 56) + *(v55 + 72) * v20, v14, type metadata accessor for NavigationControllerRoutingContext);
    sub_1E5E24844(v14, a2, type metadata accessor for NavigationControllerRoutingContext);
    swift_endAccess();
  }

  else
  {
    v48 = v12;
    swift_endAccess();
    v50 = v3;
    v22 = (v3 + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer);
    v23 = v3 + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer + v9[5];
    v52 = v8;
    v53 = a2;
    if (v16 == 2 || v16 == 5)
    {
      v24 = sub_1E65DAE38();
      v25 = v24 == sub_1E65DAE38();
    }

    else
    {
      v26 = sub_1E65DAE38();
      v25 = v26 != sub_1E65DAE38();
    }

    v27 = v11;
    v28 = type metadata accessor for NavigationController();
    v49 = [objc_allocWithZone(v28) init];
    v29 = [v49 navigationBar];
    [v29 setPrefersLargeTitles_];

    v51 = v15;
    v30 = v15;
    v31 = v16;
    if (v16 < 6)
    {
      v30 = 0;
      v31 = qword_1E65FD388[v16];
    }

    v47 = *v22;
    v32 = v47;
    v33 = v27;
    sub_1E5E246F0(v23, v27 + v9[5], type metadata accessor for AppEnvironment);
    v34 = *(v22 + v9[6]);
    sub_1E5E246F0(v22 + v9[7], v27 + v9[7], type metadata accessor for AppDataItemResolver);
    v35 = v9[10];
    v56 = *(v22 + v9[8]);
    sub_1E5DFD1CC(v22 + v35, v27 + v35, &unk_1ED074320, &unk_1E65EA730);
    *v27 = v32;
    *(v27 + v9[6]) = v34;
    *(v27 + v9[8]) = v56;
    v36 = (v27 + v9[9]);
    *v36 = v30;
    v36[1] = v31;
    v37 = v48;
    v38 = v48[7];
    v39 = v50;
    v56 = *(v50 + OBJC_IVAR____TtC10Blackbeard9AppRouter_taskScheduler);
    v40 = v53;
    sub_1E5DFD1CC(v50 + OBJC_IVAR____TtC10Blackbeard9AppRouter_detourResolver, v53 + v38, &unk_1ED072050, &unk_1E65EEAB0);
    v41 = *(v39 + 16);
    v42 = objc_allocWithZone(v28);
    v43 = v51;
    sub_1E5E05374(v51, v16);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    *v40 = [v42 init];
    sub_1E5E24844(v33, v40 + v37[5], type metadata accessor for AppComposer);
    *(v40 + v37[6]) = v56;
    *(v40 + v37[8]) = v41;
    v44 = v40;
    v45 = v52;
    sub_1E5E246F0(v44, v52, type metadata accessor for NavigationControllerRoutingContext);
    (*(v55 + 56))(v45, 0, 1, v37);
    swift_beginAccess();
    sub_1E5E05374(v43, v16);
    sub_1E5E24B3C(v45, v43, v16);
    swift_endAccess();
  }
}

uint64_t sub_1E5E24688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E246F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1E5E24758(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073250, &qword_1E65ED0A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_1E5E247DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E24844(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1E5E248C0(void *result, uint64_t a2, int a3, uint64_t a4)
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

void *sub_1E5E24964(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        sub_1E5E05374(v18, *(&v18 + 1));
        goto LABEL_24;
      }

      ++v11;
      sub_1E5E05374(v18, *(&v18 + 1));
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1E5E24AC8(char **a1, uint64_t a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1E636B208(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  result = sub_1E5E24D18(v7, a2);
  *a1 = v4;
  return result;
}

uint64_t sub_1E5E24B3C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A30, &qword_1E65EEA70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for NavigationControllerRoutingContext(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED072A30, &qword_1E65EEA70);
    sub_1E641824C(a2, a3, v9);
    sub_1E5E0476C(a2, a3);
    return sub_1E5DFE50C(v9, &qword_1ED072A30, &qword_1E65EEA70);
  }

  else
  {
    sub_1E5E24EEC(a1, v12, type metadata accessor for NavigationControllerRoutingContext);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1E5E25128(v12, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_1E5E0476C(a2, a3);
    *v3 = v17;
  }

  return result;
}

uint64_t sub_1E5E24D18(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1[1];
  result = sub_1E65E6BA8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v7 = sub_1E65E5F98();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = (v7 + 32);
      v9[1] = (v4 / 2);
      v8 = v7;
      sub_1E64C5CFC(v9, v10, a1, v6, v2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_1E5E24F54(0, v4, 1, a1, v2);
  }

  return result;
}

uint64_t sub_1E5E24E30(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1E5E24EEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E24F54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 a5)
{
  if (a3 == a2)
  {
    return result;
  }

  if (a5 == 2)
  {
    goto LABEL_40;
  }

  v5 = *a4;
  v6 = *a4 + 16 * a3;
  v7 = result - a3;
LABEL_6:
  v8 = *(v5 + 16 * a3 + 8);
  v9 = v7;
  v10 = v6;
  while (1)
  {
    v11 = *(v10 - 1);
    if (a5 > 1u)
    {
      if (v8 > 5)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
        if (v11 <= 2)
        {
LABEL_25:
          switch(v11)
          {
            case 0:
              goto LABEL_30;
            case 1:
              goto LABEL_34;
            case 2:
              v11 = 4;
              goto LABEL_34;
          }

          goto LABEL_33;
        }
      }

      else
      {
        v12 = qword_1E6606A50[v8];
        if (v11 <= 2)
        {
          goto LABEL_25;
        }
      }

      switch(v11)
      {
        case 4:
LABEL_29:
          v11 = 5;
          goto LABEL_34;
        case 5:
LABEL_23:
          v11 = 3;
          goto LABEL_34;
        case 3:
          goto LABEL_5;
      }
    }

    else
    {
      if (v8 >= 6)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
        if (v11 > 2)
        {
LABEL_10:
          switch(v11)
          {
            case 3:
              goto LABEL_29;
            case 4:
              goto LABEL_34;
            case 5:
LABEL_30:
              v11 = 2;
              goto LABEL_34;
          }

          goto LABEL_33;
        }
      }

      else
      {
        v12 = qword_1E6606A20[v8];
        if (v11 > 2)
        {
          goto LABEL_10;
        }
      }

      switch(v11)
      {
        case 0:
          v11 = 1;
          goto LABEL_34;
        case 2:
          goto LABEL_23;
        case 1:
          goto LABEL_5;
      }
    }

LABEL_33:
    v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_34:
    if (v12 >= v11)
    {
      goto LABEL_5;
    }

    if (!v5)
    {
      break;
    }

    v13 = *v10;
    *v10 = *(v10 - 1);
    *(v10 - 1) = v8;
    *(v10 - 2) = v13;
    v10 -= 2;
    if (__CFADD__(v9++, 1))
    {
LABEL_5:
      ++a3;
      v6 += 16;
      --v7;
      if (a3 == a2)
      {
        return result;
      }

      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_40:
  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E5E25128(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1E5E2575C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for NavigationControllerRoutingContext(0);
      return sub_1E6428DCC(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for NavigationControllerRoutingContext);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1E6423C40();
    goto LABEL_7;
  }

  sub_1E5E25CB4(v15, a4 & 1);
  v22 = sub_1E5E2575C(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1E65E6C68();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1E5E26234(v12, a2, a3, a1, v18);

  return sub_1E5E05374(a2, a3);
}

uint64_t sub_1E5E25298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    goto LABEL_55;
  }

  sub_1E65E6D28();
  if (a2 <= 2)
  {
    if (a2 <= 2)
    {
      goto LABEL_11;
    }

LABEL_10:
    MEMORY[0x1E694D7C0](a1, a2);
    goto LABEL_11;
  }

  if (a2 != 3 && a2 != 4 && a2 != 5)
  {
    goto LABEL_10;
  }

LABEL_11:
  sub_1E65E5D78();

  v6 = sub_1E65E6D78();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if ((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v19 = a1;
    v9 = ~v7;
    while (1)
    {
      v10 = (*(a3 + 48) + 16 * v8);
      v11 = *v10;
      v12 = v10[1];
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v13 = 0xE600000000000000;
          v14 = 0x686372616573;
          if (a2 <= 2)
          {
            goto LABEL_39;
          }

          goto LABEL_31;
        }

        if (v12 != 4)
        {
          if (v12 == 5)
          {
            v13 = 0xE500000000000000;
            v14 = 0x736E616C70;
            if (a2 <= 2)
            {
              goto LABEL_39;
            }

            goto LABEL_31;
          }

          goto LABEL_28;
        }

        v13 = 0xE600000000000000;
        v14 = 0x7478654E7075;
        if (a2 <= 2)
        {
LABEL_39:
          if (a2)
          {
            if (a2 == 1)
            {
              v15 = 0xE600000000000000;
              if (v14 != 0x756F59726F66)
              {
                goto LABEL_52;
              }
            }

            else
            {
              if (a2 != 2)
              {
                goto LABEL_46;
              }

              v15 = 0xE700000000000000;
              if (v14 != 0x7972617262696CLL)
              {
                goto LABEL_52;
              }
            }
          }

          else
          {
            v15 = 0xE700000000000000;
            if (v14 != 0x65726F6C707865)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_51;
        }
      }

      else
      {
        if (!v12)
        {
          v13 = 0xE700000000000000;
          v14 = 0x65726F6C707865;
          if (a2 <= 2)
          {
            goto LABEL_39;
          }

          goto LABEL_31;
        }

        if (v12 != 1)
        {
          if (v12 == 2)
          {
            v13 = 0xE700000000000000;
            v14 = 0x7972617262696CLL;
            if (a2 <= 2)
            {
              goto LABEL_39;
            }

            goto LABEL_31;
          }

LABEL_28:
          sub_1E5E05374(v11, v12);
          MEMORY[0x1E694D7C0](v11, v12);
          v14 = 0x7974696C61646F6DLL;
          v13 = 0xE90000000000003ALL;
          if (a2 <= 2)
          {
            goto LABEL_39;
          }

          goto LABEL_31;
        }

        v13 = 0xE600000000000000;
        v14 = 0x756F59726F66;
        if (a2 <= 2)
        {
          goto LABEL_39;
        }
      }

LABEL_31:
      switch(a2)
      {
        case 3:
          v15 = 0xE600000000000000;
          if (v14 != 0x686372616573)
          {
            goto LABEL_52;
          }

          break;
        case 4:
          v15 = 0xE600000000000000;
          if (v14 != 0x7478654E7075)
          {
            goto LABEL_52;
          }

          break;
        case 5:
          v15 = 0xE500000000000000;
          if (v14 != 0x736E616C70)
          {
            goto LABEL_52;
          }

          break;
        default:
LABEL_46:
          v16 = v14;
          MEMORY[0x1E694D7C0](v19, a2);
          v15 = 0xE90000000000003ALL;
          if (v16 != 0x7974696C61646F6DLL)
          {
            goto LABEL_52;
          }

          break;
      }

LABEL_51:
      if (v13 == v15)
      {
        sub_1E5E0476C(v11, v12);

        v17 = 1;
        return v17 & 1;
      }

LABEL_52:
      v17 = sub_1E65E6C18();
      sub_1E5E0476C(v11, v12);

      if ((v17 & 1) == 0)
      {
        v8 = (v8 + 1) & v9;
        if ((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          continue;
        }
      }

      return v17 & 1;
    }
  }

LABEL_55:
  v17 = 0;
  return v17 & 1;
}

unint64_t sub_1E5E25708()
{
  result = qword_1EE2D7528;
  if (!qword_1EE2D7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7528);
  }

  return result;
}

unint64_t sub_1E5E2575C(uint64_t a1, uint64_t a2)
{
  sub_1E65E6D28();
  if (a2 <= 2)
  {
    if (a2 <= 2)
    {
      goto LABEL_10;
    }

LABEL_9:
    MEMORY[0x1E694D7C0](a1, a2);
    goto LABEL_10;
  }

  if (a2 != 3 && a2 != 4 && a2 != 5)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_1E65E5D78();

  v4 = sub_1E65E6D78();

  return sub_1E5E258C0(a1, a2, v4);
}

unint64_t sub_1E5E258C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v9 = ~v5;
    while (1)
    {
      v10 = (*(v7 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v13 = 0xE600000000000000;
          v14 = 0x686372616573;
          if (a2 <= 2)
          {
            goto LABEL_29;
          }

          goto LABEL_21;
        }

        if (v12 != 4)
        {
          if (v12 == 5)
          {
            v13 = 0xE500000000000000;
            v14 = 0x736E616C70;
            if (a2 <= 2)
            {
              goto LABEL_29;
            }

            goto LABEL_21;
          }

          goto LABEL_18;
        }

        v13 = 0xE600000000000000;
        v14 = 0x7478654E7075;
        if (a2 <= 2)
        {
LABEL_29:
          if (a2)
          {
            if (a2 == 1)
            {
              v15 = 0xE600000000000000;
              if (v14 != 0x756F59726F66)
              {
                goto LABEL_42;
              }
            }

            else
            {
              if (a2 != 2)
              {
                goto LABEL_36;
              }

              v15 = 0xE700000000000000;
              if (v14 != 0x7972617262696CLL)
              {
                goto LABEL_42;
              }
            }
          }

          else
          {
            v15 = 0xE700000000000000;
            if (v14 != 0x65726F6C707865)
            {
              goto LABEL_42;
            }
          }

          goto LABEL_41;
        }
      }

      else
      {
        if (!v12)
        {
          v13 = 0xE700000000000000;
          v14 = 0x65726F6C707865;
          if (a2 <= 2)
          {
            goto LABEL_29;
          }

          goto LABEL_21;
        }

        if (v12 != 1)
        {
          if (v12 == 2)
          {
            v13 = 0xE700000000000000;
            v14 = 0x7972617262696CLL;
            if (a2 <= 2)
            {
              goto LABEL_29;
            }

            goto LABEL_21;
          }

LABEL_18:
          sub_1E5E05374(v11, v12);
          MEMORY[0x1E694D7C0](v11, v12);
          v14 = 0x7974696C61646F6DLL;
          v13 = 0xE90000000000003ALL;
          if (a2 <= 2)
          {
            goto LABEL_29;
          }

          goto LABEL_21;
        }

        v13 = 0xE600000000000000;
        v14 = 0x756F59726F66;
        if (a2 <= 2)
        {
          goto LABEL_29;
        }
      }

LABEL_21:
      switch(a2)
      {
        case 3:
          v15 = 0xE600000000000000;
          if (v14 != 0x686372616573)
          {
            goto LABEL_42;
          }

          break;
        case 4:
          v15 = 0xE600000000000000;
          if (v14 != 0x7478654E7075)
          {
            goto LABEL_42;
          }

          break;
        case 5:
          v15 = 0xE500000000000000;
          if (v14 != 0x736E616C70)
          {
            goto LABEL_42;
          }

          break;
        default:
LABEL_36:
          v16 = v14;
          MEMORY[0x1E694D7C0](a1, a2);
          v15 = 0xE90000000000003ALL;
          if (v16 != 0x7974696C61646F6DLL)
          {
            goto LABEL_42;
          }

          break;
      }

LABEL_41:
      if (v13 == v15)
      {
        sub_1E5E0476C(v11, v12);

        return v6;
      }

LABEL_42:
      v17 = sub_1E65E6C18();
      sub_1E5E0476C(v11, v12);

      if ((v17 & 1) == 0)
      {
        v6 = (v6 + 1) & v9;
        if ((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v6;
    }
  }

  return v6;
}

uint64_t sub_1E5E25C1C()
{
  v0 = RootItem.id.getter();
  v2 = v1;
  if (v0 == RootItem.id.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E65E6C18();
  }

  return v5 & 1;
}

uint64_t sub_1E5E25CB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for NavigationControllerRoutingContext(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079488, &qword_1E66015D0);
  v37 = v4;
  result = sub_1E65E6A18();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (1)
    {
      if (!v14)
      {
        v23 = v10;
        while (1)
        {
          v10 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
            goto LABEL_45;
          }

          if (v10 >= v15)
          {
            break;
          }

          v24 = v11[v10];
          ++v23;
          if (v24)
          {
            v22 = __clz(__rbit64(v24));
            v14 = (v24 - 1) & v24;
            goto LABEL_16;
          }
        }

        if ((v37 & 1) == 0)
        {

          v3 = v35;
          goto LABEL_43;
        }

        v34 = 1 << *(v7 + 32);
        v3 = v35;
        if (v34 >= 64)
        {
          bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v11 = -1 << v34;
        }

        *(v7 + 16) = 0;
        break;
      }

      v22 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_16:
      v25 = v22 | (v10 << 6);
      v26 = *(v36 + 72);
      v27 = *(v7 + 56) + v26 * v25;
      v28 = *(*(v7 + 48) + 16 * v25 + 8);
      v39 = *(*(v7 + 48) + 16 * v25);
      if (v37)
      {
        sub_1E5E24EEC(v27, v38, type metadata accessor for NavigationControllerRoutingContext);
      }

      else
      {
        sub_1E6429004(v27, v38, type metadata accessor for NavigationControllerRoutingContext);
        sub_1E5E05374(v39, v28);
      }

      sub_1E65E6D28();
      if (v28 > 2)
      {
        v29 = v39;
        if (v28 != 3 && v28 != 4 && v28 != 5)
        {
LABEL_34:
          v40 = 0x7974696C61646F6DLL;
          v41 = 0xE90000000000003ALL;
          MEMORY[0x1E694D7C0](v29, v28);
        }
      }

      else
      {
        v29 = v39;
        if (v28 > 2)
        {
          goto LABEL_34;
        }
      }

      sub_1E65E5D78();

      result = sub_1E65E6D78();
      v17 = -1 << *(v9 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v16 + 8 * (v18 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v17) >> 6;
        v21 = v39;
        while (++v19 != v31 || (v30 & 1) == 0)
        {
          v32 = v19 == v31;
          if (v19 == v31)
          {
            v19 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v19);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v19 << 6);
            goto LABEL_8;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v16 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
      v21 = v39;
LABEL_8:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v9 + 48) + 16 * v20) = v21;
      result = sub_1E5E24EEC(v38, *(v9 + 56) + v26 * v20, type metadata accessor for NavigationControllerRoutingContext);
      ++*(v9 + 16);
    }
  }

LABEL_43:
  *v3 = v9;
  return result;
}

uint64_t _s10Blackbeard8RootItemO2idSSvg_0()
{
  v1 = v0[1];
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return 0x686372616573;
    }

    if (v1 != 4)
    {
      if (v1 == 5)
      {
        return 0x736E616C70;
      }

      goto LABEL_12;
    }

    return 0x7478654E7075;
  }

  else
  {
    if (!v1)
    {
      return 0x65726F6C707865;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0x7972617262696CLL;
      }

LABEL_12:
      MEMORY[0x1E694D7C0](*v0);
      return 0x7974696C61646F6DLL;
    }

    return 0x756F59726F66;
  }
}

uint64_t sub_1E5E26234(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for NavigationControllerRoutingContext(0);
  result = sub_1E5E24EEC(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for NavigationControllerRoutingContext);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1E5E262E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5E26340(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5E263A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5E26400(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17 = a1;
  v18 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072168, &unk_1E65EA8D0);
  v6 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v8 = &v15 - v7;
  v9 = *(a3 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v20 = MEMORY[0x1E69E7CC0];
  sub_1E5E26A3C(0, v9, 0);
  v10 = v20;
  v11 = (a3 + 32);
  v15 = v6 + 32;
  while (1)
  {
    v19 = *v11;
    sub_1E5E05374(v19, *(&v19 + 1));
    v17(&v19);
    if (v4)
    {
      break;
    }

    v4 = 0;
    sub_1E5E0476C(v19, *(&v19 + 1));
    v20 = v10;
    v13 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1E5E26A3C((v12 > 1), v13 + 1, 1);
      v10 = v20;
    }

    *(v10 + 16) = v13 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v8, v16);
    ++v11;
    if (!--v9)
    {
      return v10;
    }
  }

  sub_1E5E0476C(v19, *(&v19 + 1));

  __break(1u);
  return result;
}

uint64_t sub_1E5E265D8()
{
  v2 = *v1;
  v2[36] = v0;

  if (v0)
  {
    v3 = v2[30];
    v4 = v2[31];

    return MEMORY[0x1EEE6DFA0](sub_1E64B925C, v3, v4);
  }

  else
  {
    v5 = v2[28] + *(v2[24] + 128);
    v8 = (*(v5 + 16) + **(v5 + 16));
    v6 = swift_task_alloc();
    v2[37] = v6;
    *v6 = v2;
    v6[1] = sub_1E5E2766C;

    return v8(v2 + 2);
  }
}

void *sub_1E5E267B8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_1E5E269A0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E5E26DAC(a1, v1);
}

void *sub_1E5E26A3C(void *a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED073258, &qword_1E65ED0B0, &qword_1ED072168, &unk_1E65EA8D0);
  *v3 = result;
  return result;
}

uint64_t sub_1E5E26A7C(uint64_t *a1, uint64_t a2)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075800, &unk_1E6606280);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *a1;
  v10 = a1[1];
  if (v10 > 2)
  {
    switch(v10)
    {
      case 3:
        goto LABEL_10;
      case 4:
        v11 = 0xE600000000000000;
        goto LABEL_17;
      case 5:
        goto LABEL_10;
    }
  }

  else if (v10 <= 2)
  {
    goto LABEL_10;
  }

  v17 = 0x7974696C61646F6DLL;
  v18 = 0xE90000000000003ALL;
  MEMORY[0x1E694D7C0](v9, v10);
  v11 = v18;
  if (v17 != 0x7478654E7075)
  {
LABEL_10:
    v12 = sub_1E65E6C18();

    if (v12 & 1) == 0 || (_UISolariumEnabled())
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

LABEL_17:
  if (v11 != 0xE600000000000000)
  {
    goto LABEL_10;
  }

  if (_UISolariumEnabled())
  {
    goto LABEL_22;
  }

LABEL_12:
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F00, &unk_1E66062A0);
  sub_1E65E4C98();
  sub_1E5E26EC4(v8, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_1E5DFE50C(v6, &qword_1ED075800, &unk_1E6606280);
        goto LABEL_22;
      }

      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075810, &qword_1E65F1DC8) + 48);
      v15 = sub_1E65D76A8();
      (*(*(v15 - 8) + 8))(&v6[v14], v15);
    }
  }

LABEL_22:
  v17 = v9;
  v18 = v10;
  sub_1E5E05374(v9, v10);
  sub_1E5E25708();
  return sub_1E65DF058();
}

uint64_t sub_1E5E26DAC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B48, &qword_1E65EC5E0);
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6005634, a2, 0);
}

uint64_t sub_1E5E26EC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075800, &unk_1E6606280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1E5E26F34()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v6 = sub_1E65E3B68();
  __swift_project_value_buffer(v6, qword_1EE2EA2A0);
  v7 = sub_1E65E3B48();
  v8 = sub_1E65E6338();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24[0] = v10;
    *v9 = 141558274;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2080;
    v22 = v0;
    v11 = sub_1E65E5CE8();
    v13 = sub_1E5DFD4B0(v11, v12, v24);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_1E5DE9000, v7, v8, "[%{mask.hash}s] deinit", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  v14 = OBJC_IVAR____TtC10Blackbeard20NavigationController_pendingPresentation;
  swift_beginAccess();
  v15 = *&v0[v14];
  *&v0[v14] = MEMORY[0x1E69E7CC0];
  if (*(v15 + 16))
  {

    v16 = sub_1E65E3B48();
    v17 = sub_1E65E6338();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = *(v15 + 16);

      _os_log_impl(&dword_1E5DE9000, v16, v17, "Cleaning up %ld pending presentations", v18, 0xCu);
      MEMORY[0x1E694F1C0](v18, -1, -1);
    }

    else
    {
    }

    v19 = sub_1E65E60A8();
    (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v15;
    sub_1E64B80F8(0, 0, v5, &unk_1E66069C0, v20);
  }

  else
  {
  }

  v23.receiver = v1;
  v23.super_class = ObjectType;
  return objc_msgSendSuper2(&v23, sel_dealloc);
}

uint64_t sub_1E5E27278()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E272B8(uint64_t a1)
{
  v2 = sub_1E65E1D58();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppState(0);
  (*(v3 + 16))(v5, a1 + *(v6 + 288), v2);
  return sub_1E65E1DE8();
}

uint64_t sub_1E5E27418(uint64_t a1)
{
  v2 = sub_1E65DBD48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for AppState(0) + 76);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48);
  (*(v3 + 16))(v5, v6 + *(v7 + 28), v2);

  return sub_1E65DC058();
}

uint64_t sub_1E5E275D8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E1788();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5E2766C()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1E64B8C68, v3, v2);
}

unint64_t sub_1E5E27790()
{
  result = qword_1EE2D4A98;
  if (!qword_1EE2D4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4A98);
  }

  return result;
}

uint64_t sub_1E5E277E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5E27804(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1E5E27830(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5E27850(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

BOOL sub_1E5E278F8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1E5E27950@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1E5E27988@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E65E5C78();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E5E279BC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E5E27A34(uint64_t a1, int a2, uint64_t a3)
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

uint64_t sub_1E5E27AC4()
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

uint64_t sub_1E5E287A4()
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

uint64_t sub_1E5E29474(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E5E29484()
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

uint64_t sub_1E5E2A164()
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

uint64_t sub_1E5E2AE3C(unint64_t *a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for AccountService();
  if (*(v8[-1].Description + 21) == a2)
  {
    v9 = v8;
    Description = v8[-1].Description;
    v11 = a3[6];
LABEL_59:
    v38 = Description[6];

    return v38(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for AppStateService();
  if (*(v12[-1].Description + 21) == a2)
  {
    v9 = v12;
    Description = v12[-1].Description;
    v11 = a3[7];
    goto LABEL_59;
  }

  v13 = type metadata accessor for ArchivedSessionService();
  if (*(v13[-1].Description + 21) == a2)
  {
    v9 = v13;
    Description = v13[-1].Description;
    v11 = a3[8];
    goto LABEL_59;
  }

  v14 = type metadata accessor for AssetService();
  if (*(v14[-1].Description + 21) == a2)
  {
    v9 = v14;
    Description = v14[-1].Description;
    v11 = a3[9];
    goto LABEL_59;
  }

  v15 = type metadata accessor for AwardsService();
  if (*(v15[-1].Description + 21) == a2)
  {
    v9 = v15;
    Description = v15[-1].Description;
    v11 = a3[10];
    goto LABEL_59;
  }

  v16 = type metadata accessor for BookmarkService();
  if (*(v16[-1].Description + 21) == a2)
  {
    v9 = v16;
    Description = v16[-1].Description;
    v11 = a3[11];
    goto LABEL_59;
  }

  v17 = type metadata accessor for CatalogService();
  if (*(v17[-1].Description + 21) == a2)
  {
    v9 = v17;
    Description = v17[-1].Description;
    v11 = a3[12];
    goto LABEL_59;
  }

  v18 = type metadata accessor for ConfigurationService();
  if (*(v18[-1].Description + 21) == a2)
  {
    v9 = v18;
    Description = v18[-1].Description;
    v11 = a3[13];
    goto LABEL_59;
  }

  v19 = type metadata accessor for ContentAvailabilityService();
  if (*(v19[-1].Description + 21) == a2)
  {
    v9 = v19;
    Description = v19[-1].Description;
    v11 = a3[14];
    goto LABEL_59;
  }

  v20 = type metadata accessor for EngagementService();
  if (*(v20[-1].Description + 21) == a2)
  {
    v9 = v20;
    Description = v20[-1].Description;
    v11 = a3[15];
    goto LABEL_59;
  }

  v21 = type metadata accessor for HealthDataService();
  if (*(v21[-1].Description + 21) == a2)
  {
    v9 = v21;
    Description = v21[-1].Description;
    v11 = a3[16];
    goto LABEL_59;
  }

  v22 = type metadata accessor for InteropService();
  if (*(v22[-1].Description + 21) == a2)
  {
    v9 = v22;
    Description = v22[-1].Description;
    v11 = a3[17];
    goto LABEL_59;
  }

  v23 = type metadata accessor for LocalizationService();
  if (*(v23[-1].Description + 21) == a2)
  {
    v9 = v23;
    Description = v23[-1].Description;
    v11 = a3[18];
    goto LABEL_59;
  }

  v24 = type metadata accessor for MarketingService();
  if (*(v24[-1].Description + 21) == a2)
  {
    v9 = v24;
    Description = v24[-1].Description;
    v11 = a3[19];
    goto LABEL_59;
  }

  v25 = type metadata accessor for MetricService();
  if (*(v25[-1].Description + 21) == a2)
  {
    v9 = v25;
    Description = v25[-1].Description;
    v11 = a3[20];
    goto LABEL_59;
  }

  v26 = type metadata accessor for PersonalizationService();
  if (*(v26[-1].Description + 21) == a2)
  {
    v9 = v26;
    Description = v26[-1].Description;
    v11 = a3[21];
    goto LABEL_59;
  }

  v27 = type metadata accessor for PlayerService();
  if (*(v27[-1].Description + 21) == a2)
  {
    v9 = v27;
    Description = v27[-1].Description;
    v11 = a3[22];
    goto LABEL_59;
  }

  v28 = type metadata accessor for PrivacyPreferenceService();
  if (*(v28[-1].Description + 21) == a2)
  {
    v9 = v28;
    Description = v28[-1].Description;
    v11 = a3[23];
    goto LABEL_59;
  }

  v29 = type metadata accessor for RecommendationService();
  if (*(v29[-1].Description + 21) == a2)
  {
    v9 = v29;
    Description = v29[-1].Description;
    v11 = a3[24];
    goto LABEL_59;
  }

  v30 = type metadata accessor for RemoteBrowsingService();
  if (*(v30[-1].Description + 21) == a2)
  {
    v9 = v30;
    Description = v30[-1].Description;
    v11 = a3[25];
    goto LABEL_59;
  }

  v31 = type metadata accessor for SearchService();
  if (*(v31[-1].Description + 21) == a2)
  {
    v9 = v31;
    Description = v31[-1].Description;
    v11 = a3[26];
    goto LABEL_59;
  }

  v32 = type metadata accessor for ServiceSubscriptionService();
  if (*(v32[-1].Description + 21) == a2)
  {
    v9 = v32;
    Description = v32[-1].Description;
    v11 = a3[27];
    goto LABEL_59;
  }

  v33 = type metadata accessor for SessionService();
  if (*(v33[-1].Description + 21) == a2)
  {
    v9 = v33;
    Description = v33[-1].Description;
    v11 = a3[28];
    goto LABEL_59;
  }

  v34 = type metadata accessor for SharePlayService();
  if (*(v34[-1].Description + 21) == a2)
  {
    v9 = v34;
    Description = v34[-1].Description;
    v11 = a3[29];
    goto LABEL_59;
  }

  v35 = type metadata accessor for SiriService();
  if (*(v35[-1].Description + 21) == a2)
  {
    v9 = v35;
    Description = v35[-1].Description;
    v11 = a3[30];
    goto LABEL_59;
  }

  v36 = type metadata accessor for SyncService();
  if (*(v36[-1].Description + 21) == a2)
  {
    v9 = v36;
    Description = v36[-1].Description;
    v11 = a3[31];
    goto LABEL_59;
  }

  QueueService = type metadata accessor for UpNextQueueService();
  if (*(QueueService[-1].Description + 21) == a2)
  {
    v9 = QueueService;
    Description = QueueService[-1].Description;
    v11 = a3[33];
    goto LABEL_59;
  }

  v39 = type metadata accessor for WorkoutPlanService();
  v40 = *(v39[-1].Description + 6);
  v41 = a1 + a3[36];

  return v40(v41, a2, v39);
}

char *sub_1E5E2B6B0(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for AccountService();
  if (*(v8[-1].Description + 21) == a3)
  {
    v9 = v8;
    Description = v8[-1].Description;
    v11 = a4[6];
LABEL_57:
    v38 = Description[7];

    return v38(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for AppStateService();
  if (*(v12[-1].Description + 21) == a3)
  {
    v9 = v12;
    Description = v12[-1].Description;
    v11 = a4[7];
    goto LABEL_57;
  }

  v13 = type metadata accessor for ArchivedSessionService();
  if (*(v13[-1].Description + 21) == a3)
  {
    v9 = v13;
    Description = v13[-1].Description;
    v11 = a4[8];
    goto LABEL_57;
  }

  v14 = type metadata accessor for AssetService();
  if (*(v14[-1].Description + 21) == a3)
  {
    v9 = v14;
    Description = v14[-1].Description;
    v11 = a4[9];
    goto LABEL_57;
  }

  v15 = type metadata accessor for AwardsService();
  if (*(v15[-1].Description + 21) == a3)
  {
    v9 = v15;
    Description = v15[-1].Description;
    v11 = a4[10];
    goto LABEL_57;
  }

  v16 = type metadata accessor for BookmarkService();
  if (*(v16[-1].Description + 21) == a3)
  {
    v9 = v16;
    Description = v16[-1].Description;
    v11 = a4[11];
    goto LABEL_57;
  }

  v17 = type metadata accessor for CatalogService();
  if (*(v17[-1].Description + 21) == a3)
  {
    v9 = v17;
    Description = v17[-1].Description;
    v11 = a4[12];
    goto LABEL_57;
  }

  v18 = type metadata accessor for ConfigurationService();
  if (*(v18[-1].Description + 21) == a3)
  {
    v9 = v18;
    Description = v18[-1].Description;
    v11 = a4[13];
    goto LABEL_57;
  }

  v19 = type metadata accessor for ContentAvailabilityService();
  if (*(v19[-1].Description + 21) == a3)
  {
    v9 = v19;
    Description = v19[-1].Description;
    v11 = a4[14];
    goto LABEL_57;
  }

  v20 = type metadata accessor for EngagementService();
  if (*(v20[-1].Description + 21) == a3)
  {
    v9 = v20;
    Description = v20[-1].Description;
    v11 = a4[15];
    goto LABEL_57;
  }

  v21 = type metadata accessor for HealthDataService();
  if (*(v21[-1].Description + 21) == a3)
  {
    v9 = v21;
    Description = v21[-1].Description;
    v11 = a4[16];
    goto LABEL_57;
  }

  v22 = type metadata accessor for InteropService();
  if (*(v22[-1].Description + 21) == a3)
  {
    v9 = v22;
    Description = v22[-1].Description;
    v11 = a4[17];
    goto LABEL_57;
  }

  v23 = type metadata accessor for LocalizationService();
  if (*(v23[-1].Description + 21) == a3)
  {
    v9 = v23;
    Description = v23[-1].Description;
    v11 = a4[18];
    goto LABEL_57;
  }

  v24 = type metadata accessor for MarketingService();
  if (*(v24[-1].Description + 21) == a3)
  {
    v9 = v24;
    Description = v24[-1].Description;
    v11 = a4[19];
    goto LABEL_57;
  }

  v25 = type metadata accessor for MetricService();
  if (*(v25[-1].Description + 21) == a3)
  {
    v9 = v25;
    Description = v25[-1].Description;
    v11 = a4[20];
    goto LABEL_57;
  }

  v26 = type metadata accessor for PersonalizationService();
  if (*(v26[-1].Description + 21) == a3)
  {
    v9 = v26;
    Description = v26[-1].Description;
    v11 = a4[21];
    goto LABEL_57;
  }

  v27 = type metadata accessor for PlayerService();
  if (*(v27[-1].Description + 21) == a3)
  {
    v9 = v27;
    Description = v27[-1].Description;
    v11 = a4[22];
    goto LABEL_57;
  }

  v28 = type metadata accessor for PrivacyPreferenceService();
  if (*(v28[-1].Description + 21) == a3)
  {
    v9 = v28;
    Description = v28[-1].Description;
    v11 = a4[23];
    goto LABEL_57;
  }

  v29 = type metadata accessor for RecommendationService();
  if (*(v29[-1].Description + 21) == a3)
  {
    v9 = v29;
    Description = v29[-1].Description;
    v11 = a4[24];
    goto LABEL_57;
  }

  v30 = type metadata accessor for RemoteBrowsingService();
  if (*(v30[-1].Description + 21) == a3)
  {
    v9 = v30;
    Description = v30[-1].Description;
    v11 = a4[25];
    goto LABEL_57;
  }

  v31 = type metadata accessor for SearchService();
  if (*(v31[-1].Description + 21) == a3)
  {
    v9 = v31;
    Description = v31[-1].Description;
    v11 = a4[26];
    goto LABEL_57;
  }

  v32 = type metadata accessor for ServiceSubscriptionService();
  if (*(v32[-1].Description + 21) == a3)
  {
    v9 = v32;
    Description = v32[-1].Description;
    v11 = a4[27];
    goto LABEL_57;
  }

  v33 = type metadata accessor for SessionService();
  if (*(v33[-1].Description + 21) == a3)
  {
    v9 = v33;
    Description = v33[-1].Description;
    v11 = a4[28];
    goto LABEL_57;
  }

  v34 = type metadata accessor for SharePlayService();
  if (*(v34[-1].Description + 21) == a3)
  {
    v9 = v34;
    Description = v34[-1].Description;
    v11 = a4[29];
    goto LABEL_57;
  }

  v35 = type metadata accessor for SiriService();
  if (*(v35[-1].Description + 21) == a3)
  {
    v9 = v35;
    Description = v35[-1].Description;
    v11 = a4[30];
    goto LABEL_57;
  }

  v36 = type metadata accessor for SyncService();
  if (*(v36[-1].Description + 21) == a3)
  {
    v9 = v36;
    Description = v36[-1].Description;
    v11 = a4[31];
    goto LABEL_57;
  }

  QueueService = type metadata accessor for UpNextQueueService();
  if (*(QueueService[-1].Description + 21) == a3)
  {
    v9 = QueueService;
    Description = QueueService[-1].Description;
    v11 = a4[33];
    goto LABEL_57;
  }

  v39 = type metadata accessor for WorkoutPlanService();
  v40 = *(v39[-1].Description + 7);
  v41 = &v5[a4[36]];

  return v40(v41, a2, a2, v39);
}

uint64_t sub_1E5E2BF24(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E5E2BF9C(uint64_t a1, int a2, uint64_t a3)
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

uint64_t sub_1E5E2C02C()
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

uint64_t sub_1E5E2D958()
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

uint64_t sub_1E5E2F270(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F08, &qword_1E65EA328);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5E2F2E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F08, &qword_1E65EA328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5E2F364()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for RouteDestination(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  (*(v2 + 8))(v0 + v3, v1);
  v8 = v0 + v7;
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
      goto LABEL_15;
    case 1u:
      v43 = sub_1E65D76F8();
      v44 = *(v43 - 8);
      if (!(*(v44 + 48))(v0 + v7, 1, v43))
      {
        (*(v44 + 8))(v0 + v7, v43);
      }

      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);

      v46 = *(v45 + 64);
      v47 = sub_1E65E2CF8();
      v48 = *(v47 - 8);
      if (!(*(v48 + 48))(v8 + v46, 1, v47))
      {
        (*(v48 + 8))(v8 + v46, v47);
      }

      v22 = *(v45 + 96);
      v23 = sub_1E65E1FC8();
      v24 = *(v23 - 8);
      v25 = (*(v24 + 48))(v8 + v22, 1, v23);
      goto LABEL_28;
    case 3u:

      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v30 = sub_1E65D72D8();
      goto LABEL_45;
    case 4u:
      sub_1E65E0B48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v50 = sub_1E65E0FD8();
            (*(*(v50 - 8) + 8))(v0 + v7, v50);
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
      v53 = v8 + *(v5 + 20);
      type metadata accessor for RouteSource(0);
      v54 = swift_getEnumCaseMultiPayload();
      if (v54 <= 1)
      {
        if (!v54)
        {
          type metadata accessor for AppLaunchScope(0);
          if (swift_getEnumCaseMultiPayload() > 1)
          {
            goto LABEL_67;
          }

          v60 = sub_1E65D74E8();
          v61 = *(v60 - 8);
          v62 = *(v61 + 8);
          v62(v53, v60);
          v63 = *(type metadata accessor for URLContext(0) + 20);
          if (!(*(v61 + 48))(v53 + v63, 1, v60))
          {
            v62(v53 + v63, v60);
          }

          goto LABEL_66;
        }

        if (v54 != 1)
        {
          goto LABEL_67;
        }

LABEL_58:
        v56 = sub_1E65D74E8();
        v57 = *(v56 - 8);
        v58 = *(v57 + 8);
        v58(v53, v56);
        v59 = *(type metadata accessor for URLContext(0) + 20);
        if (!(*(v57 + 48))(v53 + v59, 1, v56))
        {
          v58(v53 + v59, v56);
        }

LABEL_66:

        goto LABEL_67;
      }

      switch(v54)
      {
        case 2:
          goto LABEL_58;
        case 3:
          v55 = sub_1E65D74E8();
          break;
        case 4:
          v55 = sub_1E65D8D48();
          break;
        default:
          goto LABEL_67;
      }

      (*(*(v55 - 8) + 8))(v53, v55);
LABEL_67:

      return swift_deallocObject();
    case 6u:

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v28 = *(v27 + 48);
      v29 = sub_1E65DB848();
      (*(*(v29 - 8) + 8))(v8 + v28, v29);
      v12 = *(v27 + 64);
      v30 = sub_1E65E1518();
      goto LABEL_45;
    case 7u:
      v38 = sub_1E65DB848();
      (*(*(v38 - 8) + 8))(v0 + v7, v38);
      v39 = &unk_1ED0720D0;
      v40 = &unk_1E65EA290;
      goto LABEL_43;
    case 8u:
    case 9u:

      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v10 = *(v9 + 48);
      v11 = sub_1E65DB848();
      (*(*(v11 - 8) + 8))(v8 + v10, v11);
      v12 = *(v9 + 64);
      goto LABEL_44;
    case 0xCu:

      sub_1E5F94E00(*(v8 + 16), *(v8 + 24));
      goto LABEL_51;
    case 0xEu:
      v26 = sub_1E65DB718();
      goto LABEL_50;
    case 0x11u:

      v39 = &unk_1ED0720E0;
      v40 = &unk_1E65EA2A0;
LABEL_43:
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v39, v40) + 48);
LABEL_44:
      v30 = sub_1E65D74E8();
      goto LABEL_45;
    case 0x12u:
      sub_1E5F94E14(*v8, *(v8 + 8), *(v8 + 16));
      goto LABEL_51;
    case 0x13u:
      goto LABEL_22;
    case 0x14u:

      goto LABEL_51;
    case 0x15u:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v23 = sub_1E65D96F8();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(v8 + v22, 1, v23))
      {
        goto LABEL_47;
      }

      goto LABEL_51;
    case 0x16u:
      __swift_destroy_boxed_opaque_existential_1((v0 + v7));
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v14 = v13[12];
      v15 = sub_1E65D74E8();
      (*(*(v15 - 8) + 8))(v8 + v14, v15);

      v16 = v13[20];
      v17 = sub_1E65DB3E8();
      v18 = *(v17 - 8);
      if (!(*(v18 + 48))(v8 + v16, 1, v17))
      {
        (*(v18 + 8))(v8 + v16, v17);
      }

      v19 = v13[32];
      v20 = sub_1E65DB5D8();
      v21 = *(v20 - 8);
      if (!(*(v21 + 48))(v8 + v19, 1, v20))
      {
        (*(v21 + 8))(v8 + v19, v20);
      }

      v22 = v13[36];
      v23 = sub_1E65D7A38();
      v24 = *(v23 - 8);
      v25 = (*(v24 + 48))(v8 + v22, 1, v23);
LABEL_28:
      if (!v25)
      {
LABEL_47:
        (*(v24 + 8))(v8 + v22, v23);
      }

      goto LABEL_51;
    case 0x17u:
      v34 = sub_1E65E57D8();
      (*(*(v34 - 8) + 8))(v0 + v7, v34);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v36 = *(v35 + 48);
      v37 = sub_1E65E5528();
      (*(*(v37 - 8) + 8))(v8 + v36, v37);
      if (*(v8 + *(v35 + 64) + 8) >= 0xCuLL)
      {
        goto LABEL_15;
      }

      goto LABEL_51;
    case 0x18u:

      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v30 = sub_1E65DB848();
      goto LABEL_45;
    case 0x1Au:
      sub_1E65E52B8();
      v42 = swift_getEnumCaseMultiPayload();
      if (v42 == 1)
      {
      }

      else if (!v42)
      {
LABEL_22:
        v26 = sub_1E65D74E8();
LABEL_50:
        (*(*(v26 - 8) + 8))(v0 + v7, v26);
      }

      goto LABEL_51;
    case 0x1Bu:
      type metadata accessor for PlaylistType(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_15;
      }

      v26 = sub_1E65DAEB8();
      goto LABEL_50;
    case 0x1Cu:
      v26 = sub_1E65D76F8();
      goto LABEL_50;
    case 0x1Du:
      v52 = sub_1E65E55E8();
      (*(*(v52 - 8) + 8))(v0 + v7, v52);
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v30 = sub_1E65D7EB8();
LABEL_45:
      (*(*(v30 - 8) + 8))(v8 + v12, v30);
      goto LABEL_51;
    case 0x1Eu:
      v31 = sub_1E65E56B8();
      (*(*(v31 - 8) + 8))(v0 + v7, v31);
      v32 = &unk_1ED072110;
      v33 = &unk_1E65EA2D0;
      goto LABEL_38;
    case 0x1Fu:
      v41 = sub_1E65DA308();
      (*(*(v41 - 8) + 8))(v0 + v7, v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810);
      goto LABEL_15;
    case 0x20u:
      v51 = sub_1E65E58D8();
      (*(*(v51 - 8) + 8))(v0 + v7, v51);
      v32 = &qword_1ED072120;
      v33 = &qword_1E65EA2E0;
LABEL_38:
      __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);

LABEL_15:

      goto LABEL_51;
    case 0x21u:
      v26 = sub_1E65D9048();
      goto LABEL_50;
    default:
      goto LABEL_51;
  }
}

uint64_t sub_1E5E301A0()
{
  v1 = type metadata accessor for NavigationControllerRoutingContext(0);
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

uint64_t sub_1E5E30EE0()
{

  sub_1E5F94E00(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1E5E30F2C()
{
  v1 = type metadata accessor for NavigationControllerRoutingContext(0);
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

uint64_t sub_1E5E328A0()
{
  v1 = type metadata accessor for RouteDestination(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
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
      v39 = sub_1E65D76F8();
      v40 = *(v39 - 8);
      if (!(*(v40 + 48))(v0 + v3, 1, v39))
      {
        (*(v40 + 8))(v0 + v3, v39);
      }

      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);

      v42 = *(v41 + 64);
      v43 = sub_1E65E2CF8();
      v44 = *(v43 - 8);
      if (!(*(v44 + 48))(v5 + v42, 1, v43))
      {
        (*(v44 + 8))(v5 + v42, v43);
      }

      v19 = *(v41 + 96);
      v45 = sub_1E65E1FC8();
      goto LABEL_46;
    case 3u:

      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v26 = sub_1E65D72D8();
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
            v47 = sub_1E65E0FD8();
            (*(*(v47 - 8) + 8))(v0 + v3, v47);
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
      v50 = v5 + *(v1 + 20);
      type metadata accessor for RouteSource(0);
      v51 = swift_getEnumCaseMultiPayload();
      if (v51 <= 1)
      {
        if (!v51)
        {
          type metadata accessor for AppLaunchScope(0);
          if (swift_getEnumCaseMultiPayload() > 1)
          {
            goto LABEL_67;
          }

          v62 = v4;
          v63 = (v2 + 16) & ~v2;
          v57 = sub_1E65D74E8();
          v58 = *(v57 - 8);
          v61 = *(v58 + 8);
          v61(v50, v57);
          v59 = *(type metadata accessor for URLContext(0) + 20);
          if (!(*(v58 + 48))(v50 + v59, 1, v57))
          {
            v61(v50 + v59, v57);
          }

          goto LABEL_66;
        }

        if (v51 != 1)
        {
          goto LABEL_67;
        }

LABEL_58:
        v62 = v4;
        v63 = (v2 + 16) & ~v2;
        v53 = sub_1E65D74E8();
        v54 = *(v53 - 8);
        v55 = *(v54 + 8);
        v55(v50, v53);
        v56 = *(type metadata accessor for URLContext(0) + 20);
        if (!(*(v54 + 48))(v50 + v56, 1, v53))
        {
          v55(v50 + v56, v53);
        }

LABEL_66:

        v4 = v62;
        v3 = v63;
        goto LABEL_67;
      }

      switch(v51)
      {
        case 2:
          goto LABEL_58;
        case 3:
          v52 = sub_1E65D74E8();
          break;
        case 4:
          v52 = sub_1E65D8D48();
          break;
        default:
          goto LABEL_67;
      }

      (*(*(v52 - 8) + 8))(v50, v52);
LABEL_67:

      sub_1E5F94E00(*(v0 + ((v3 + v4 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));

      return swift_deallocObject();
    case 6u:

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v24 = *(v23 + 48);
      v25 = sub_1E65DB848();
      (*(*(v25 - 8) + 8))(v5 + v24, v25);
      v9 = *(v23 + 64);
      v26 = sub_1E65E1518();
      goto LABEL_44;
    case 7u:
      v34 = sub_1E65DB848();
      (*(*(v34 - 8) + 8))(v0 + v3, v34);
      v35 = &unk_1ED0720D0;
      v36 = &unk_1E65EA290;
      goto LABEL_42;
    case 8u:
    case 9u:

      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v7 = *(v6 + 48);
      v8 = sub_1E65DB848();
      (*(*(v8 - 8) + 8))(v5 + v7, v8);
      v9 = *(v6 + 64);
      goto LABEL_43;
    case 0xCu:

      sub_1E5F94E00(*(v5 + 16), *(v5 + 24));
      goto LABEL_51;
    case 0xEu:
      v22 = sub_1E65DB718();
      goto LABEL_50;
    case 0x11u:

      v35 = &unk_1ED0720E0;
      v36 = &unk_1E65EA2A0;
LABEL_42:
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v35, v36) + 48);
LABEL_43:
      v26 = sub_1E65D74E8();
      goto LABEL_44;
    case 0x12u:
      sub_1E5F94E14(*v5, *(v5 + 8), *(v5 + 16));
      goto LABEL_51;
    case 0x13u:
      goto LABEL_23;
    case 0x14u:

      goto LABEL_51;
    case 0x15u:

      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v45 = sub_1E65D96F8();
LABEL_46:
      v20 = v45;
      v21 = *(v45 - 8);
      if (!(*(v21 + 48))(v5 + v19, 1, v45))
      {
        goto LABEL_47;
      }

      goto LABEL_51;
    case 0x16u:
      __swift_destroy_boxed_opaque_existential_1((v0 + v3));
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v11 = v10[12];
      v12 = sub_1E65D74E8();
      (*(*(v12 - 8) + 8))(v5 + v11, v12);

      v13 = v10[20];
      v14 = sub_1E65DB3E8();
      v15 = *(v14 - 8);
      if (!(*(v15 + 48))(v5 + v13, 1, v14))
      {
        (*(v15 + 8))(v5 + v13, v14);
      }

      v16 = v10[32];
      v17 = sub_1E65DB5D8();
      v18 = *(v17 - 8);
      if (!(*(v18 + 48))(v5 + v16, 1, v17))
      {
        (*(v18 + 8))(v5 + v16, v17);
      }

      v19 = v10[36];
      v20 = sub_1E65D7A38();
      v21 = *(v20 - 8);
      if (!(*(v21 + 48))(v5 + v19, 1, v20))
      {
LABEL_47:
        (*(v21 + 8))(v5 + v19, v20);
      }

      goto LABEL_51;
    case 0x17u:
      v30 = sub_1E65E57D8();
      (*(*(v30 - 8) + 8))(v0 + v3, v30);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v32 = *(v31 + 48);
      v33 = sub_1E65E5528();
      (*(*(v33 - 8) + 8))(v5 + v32, v33);
      if (*(v5 + *(v31 + 64) + 8) >= 0xCuLL)
      {
        goto LABEL_16;
      }

      goto LABEL_51;
    case 0x18u:

      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v26 = sub_1E65DB848();
      goto LABEL_44;
    case 0x1Au:
      sub_1E65E52B8();
      v38 = swift_getEnumCaseMultiPayload();
      if (v38 == 1)
      {
      }

      else if (!v38)
      {
LABEL_23:
        v22 = sub_1E65D74E8();
LABEL_50:
        (*(*(v22 - 8) + 8))(v0 + v3, v22);
      }

      goto LABEL_51;
    case 0x1Bu:
      type metadata accessor for PlaylistType(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_16;
      }

      v22 = sub_1E65DAEB8();
      goto LABEL_50;
    case 0x1Cu:
      v22 = sub_1E65D76F8();
      goto LABEL_50;
    case 0x1Du:
      v49 = sub_1E65E55E8();
      (*(*(v49 - 8) + 8))(v0 + v3, v49);
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v26 = sub_1E65D7EB8();
LABEL_44:
      (*(*(v26 - 8) + 8))(v5 + v9, v26);
      goto LABEL_51;
    case 0x1Eu:
      v27 = sub_1E65E56B8();
      (*(*(v27 - 8) + 8))(v0 + v3, v27);
      v28 = &unk_1ED072110;
      v29 = &unk_1E65EA2D0;
      goto LABEL_37;
    case 0x1Fu:
      v37 = sub_1E65DA308();
      (*(*(v37 - 8) + 8))(v0 + v3, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810);
      goto LABEL_16;
    case 0x20u:
      v48 = sub_1E65E58D8();
      (*(*(v48 - 8) + 8))(v0 + v3, v48);
      v28 = &qword_1ED072120;
      v29 = &qword_1E65EA2E0;
LABEL_37:
      __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);

LABEL_16:

      goto LABEL_51;
    case 0x21u:
      v22 = sub_1E65D9048();
      goto LABEL_50;
    default:
      goto LABEL_51;
  }
}

uint64_t sub_1E5E33638()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E336D0()
{
  v1 = type metadata accessor for NavigationControllerRoutingContext(0);
  v97 = *(*(v1 - 8) + 80);
  v2 = (v0 + ((v97 + 16) & ~v97));

  v95 = v2;
  v96 = v1;
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
  v42 = (v95 + *(v96 + 28));
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E343F8()
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

uint64_t sub_1E5E35D90()
{
  v1 = type metadata accessor for NavigationControllerRoutingContext(0);
  v152 = *(*(v1 - 8) + 80);
  v2 = *(*(v1 - 8) + 64);
  v3 = type metadata accessor for RouteDestination(0);
  v154 = *(*(v3 - 8) + 80);
  v155 = v3;
  v149 = v2 + v154;
  v153 = v0;
  v150 = (v152 + 16) & ~v152;

  v151 = v1;
  v100 = v0 + v150 + *(v1 + 20);

  v156 = type metadata accessor for AppComposer(0);
  v4 = v100 + v156[5];
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment(0);
  v6 = v5[6];
  v148 = type metadata accessor for AccountService();
  v147 = *(v148[-1].Description + 1);
  v147(v4 + v6, v148);
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
  v97 = *(v38[-1].Description + 1);
  v97(v4 + v37, v38);

  v39 = v100 + v156[7];

  v40 = v39 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v147(v40 + v5[6], v148);
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
  v104(v40 + v5[28], v98);
  v103(v40 + v5[29], v30);
  v102(v40 + v5[30], v32);
  v101(v40 + v5[31], v34);

  v99(v40 + v5[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v40 + v5[34]));

  v97(v40 + v5[36], v38);
  swift_unknownObjectRelease();
  if (*(v100 + v156[9] + 8) >= 0xCuLL)
  {
  }

  v41 = (v100 + v156[10]);
  if (v41[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v42 = (v150 + v149) & ~v154;
  swift_unknownObjectRelease();
  v43 = (v0 + v150 + *(v151 + 28));
  if (v43[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  swift_unknownObjectRelease();
  v44 = v0 + v42;
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
      v78 = sub_1E65D76F8();
      v79 = *(v78 - 8);
      if (!(*(v79 + 48))(v153 + v42, 1, v78))
      {
        (*(v79 + 8))(v153 + v42, v78);
      }

      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);

      v81 = *(v80 + 64);
      v82 = sub_1E65E2CF8();
      v83 = *(v82 - 8);
      if (!(*(v83 + 48))(v44 + v81, 1, v82))
      {
        (*(v83 + 8))(v44 + v81, v82);
      }

      v58 = *(v80 + 96);
      v84 = sub_1E65E1FC8();
      goto LABEL_52;
    case 3u:

      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v65 = sub_1E65D72D8();
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
            v86 = sub_1E65E0FD8();
            (*(*(v86 - 8) + 8))(v0 + v42, v86);
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
      v89 = v44 + *(v155 + 20);
      type metadata accessor for RouteSource(0);
      v90 = swift_getEnumCaseMultiPayload();
      if (v90 <= 1)
      {
        if (v90)
        {
          if (v90 != 1)
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

      switch(v90)
      {
        case 2:
LABEL_68:
          v92 = sub_1E65D74E8();
          v93 = *(v92 - 8);
          v94 = *(v93 + 8);
          v94(v89, v92);
          v95 = *(type metadata accessor for URLContext(0) + 20);
          if (!(*(v93 + 48))(v89 + v95, 1, v92))
          {
            v94(v89 + v95, v92);
          }

          goto LABEL_71;
        case 3:
          v91 = sub_1E65D74E8();
          break;
        case 4:
          v91 = sub_1E65D8D48();
          break;
        default:
          goto LABEL_71;
      }

      (*(*(v91 - 8) + 8))(v89, v91);
LABEL_71:

      return swift_deallocObject();
    case 6u:

      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v63 = *(v62 + 48);
      v64 = sub_1E65DB848();
      (*(*(v64 - 8) + 8))(v44 + v63, v64);
      v48 = *(v62 + 64);
      v65 = sub_1E65E1518();
      goto LABEL_50;
    case 7u:
      v73 = sub_1E65DB848();
      (*(*(v73 - 8) + 8))(v0 + v42, v73);
      v74 = &unk_1ED0720D0;
      v75 = &unk_1E65EA290;
      goto LABEL_48;
    case 8u:
    case 9u:

      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v46 = *(v45 + 48);
      v47 = sub_1E65DB848();
      (*(*(v47 - 8) + 8))(v44 + v46, v47);
      v48 = *(v45 + 64);
      goto LABEL_49;
    case 0xCu:

      sub_1E5F94E00(*(v44 + 16), *(v44 + 24));
      goto LABEL_57;
    case 0xEu:
      v61 = sub_1E65DB718();
      goto LABEL_56;
    case 0x11u:

      v74 = &unk_1ED0720E0;
      v75 = &unk_1E65EA2A0;
LABEL_48:
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v74, v75) + 48);
LABEL_49:
      v65 = sub_1E65D74E8();
      goto LABEL_50;
    case 0x12u:
      sub_1E5F94E14(*v44, *(v44 + 8), *(v44 + 16));
      goto LABEL_57;
    case 0x13u:
      goto LABEL_29;
    case 0x14u:

      goto LABEL_57;
    case 0x15u:

      v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v84 = sub_1E65D96F8();
LABEL_52:
      v59 = v84;
      v60 = *(v84 - 8);
      if (!(*(v60 + 48))(v44 + v58, 1, v84))
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    case 0x16u:
      __swift_destroy_boxed_opaque_existential_1((v0 + v42));
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v50 = v49[12];
      v51 = sub_1E65D74E8();
      (*(*(v51 - 8) + 8))(v44 + v50, v51);

      v52 = v49[20];
      v53 = sub_1E65DB3E8();
      v54 = *(v53 - 8);
      if (!(*(v54 + 48))(v44 + v52, 1, v53))
      {
        (*(v54 + 8))(v44 + v52, v53);
      }

      v55 = v49[32];
      v56 = sub_1E65DB5D8();
      v57 = *(v56 - 8);
      if (!(*(v57 + 48))(v44 + v55, 1, v56))
      {
        (*(v57 + 8))(v44 + v55, v56);
      }

      v58 = v49[36];
      v59 = sub_1E65D7A38();
      v60 = *(v59 - 8);
      if (!(*(v60 + 48))(v44 + v58, 1, v59))
      {
LABEL_53:
        (*(v60 + 8))(v44 + v58, v59);
      }

      goto LABEL_57;
    case 0x17u:
      v69 = sub_1E65E57D8();
      (*(*(v69 - 8) + 8))(v0 + v42, v69);
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v71 = *(v70 + 48);
      v72 = sub_1E65E5528();
      (*(*(v72 - 8) + 8))(v44 + v71, v72);
      if (*(v44 + *(v70 + 64) + 8) >= 0xCuLL)
      {
        goto LABEL_22;
      }

      goto LABEL_57;
    case 0x18u:

      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v65 = sub_1E65DB848();
      goto LABEL_50;
    case 0x1Au:
      sub_1E65E52B8();
      v77 = swift_getEnumCaseMultiPayload();
      if (v77 == 1)
      {
      }

      else if (!v77)
      {
LABEL_29:
        v61 = sub_1E65D74E8();
LABEL_56:
        (*(*(v61 - 8) + 8))(v0 + v42, v61);
      }

      goto LABEL_57;
    case 0x1Bu:
      type metadata accessor for PlaylistType(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_22;
      }

      v61 = sub_1E65DAEB8();
      goto LABEL_56;
    case 0x1Cu:
      v61 = sub_1E65D76F8();
      goto LABEL_56;
    case 0x1Du:
      v88 = sub_1E65E55E8();
      (*(*(v88 - 8) + 8))(v0 + v42, v88);
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v65 = sub_1E65D7EB8();
LABEL_50:
      (*(*(v65 - 8) + 8))(v44 + v48, v65);
      goto LABEL_57;
    case 0x1Eu:
      v66 = sub_1E65E56B8();
      (*(*(v66 - 8) + 8))(v0 + v42, v66);
      v67 = &unk_1ED072110;
      v68 = &unk_1E65EA2D0;
      goto LABEL_43;
    case 0x1Fu:
      v76 = sub_1E65DA308();
      (*(*(v76 - 8) + 8))(v0 + v42, v76);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810);
      goto LABEL_22;
    case 0x20u:
      v87 = sub_1E65E58D8();
      (*(*(v87 - 8) + 8))(v0 + v42, v87);
      v67 = &qword_1ED072120;
      v68 = &qword_1E65EA2E0;
LABEL_43:
      __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);

LABEL_22:

      goto LABEL_57;
    case 0x21u:
      v61 = sub_1E65D9048();
      goto LABEL_56;
    default:
      goto LABEL_57;
  }
}

uint64_t sub_1E5E376F0()
{
  v1 = type metadata accessor for SessionService();
  (*(v1[-1].Description + 1))(v0 + ((*(v1[-1].Description + 80) + 16) & ~*(v1[-1].Description + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E377AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722E0, &qword_1E65EAAA0);
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

uint64_t sub_1E5E37824(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722E0, &qword_1E65EAAA0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1E5E378B0()
{
  v102 = type metadata accessor for AppComposer(0);
  v100 = *(*(v102 - 1) + 80);
  v96 = *(*(v102 - 1) + 64);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  v98 = *(v1 - 8);
  v99 = v1;
  v95 = *(v98 + 80);
  swift_unknownObjectRelease();
  v101 = v0;
  v97 = (v100 + 32) & ~v100;
  v92 = v0 + v97;

  v2 = v0 + v97 + v102[5];
  swift_unknownObjectRelease();
  v3 = type metadata accessor for AppEnvironment(0);
  v4 = v3[6];
  v94 = type metadata accessor for AccountService();
  v93 = *(v94[-1].Description + 1);
  v93(v2 + v4, v94);
  v5 = v3[7];
  v91 = type metadata accessor for AppStateService();
  v90 = *(v91[-1].Description + 1);
  v90(v2 + v5, v91);
  v6 = v3[8];
  v89 = type metadata accessor for ArchivedSessionService();
  v88 = *(v89[-1].Description + 1);
  v88(v2 + v6, v89);
  v7 = v3[9];
  v87 = type metadata accessor for AssetService();
  v86 = *(v87[-1].Description + 1);
  v86(v2 + v7, v87);
  v8 = v3[10];
  v85 = type metadata accessor for AwardsService();
  v84 = *(v85[-1].Description + 1);
  v84(v2 + v8, v85);
  v9 = v3[11];
  v83 = type metadata accessor for BookmarkService();
  v82 = *(v83[-1].Description + 1);
  v82(v2 + v9, v83);
  v10 = v3[12];
  v81 = type metadata accessor for CatalogService();
  v80 = *(v81[-1].Description + 1);
  v80(v2 + v10, v81);
  v11 = v3[13];
  v79 = type metadata accessor for ConfigurationService();
  v78 = *(v79[-1].Description + 1);
  v78(v2 + v11, v79);
  v12 = v3[14];
  v77 = type metadata accessor for ContentAvailabilityService();
  v76 = *(v77[-1].Description + 1);
  v76(v2 + v12, v77);
  v13 = v3[15];
  v75 = type metadata accessor for EngagementService();
  v74 = *(v75[-1].Description + 1);
  v74(v2 + v13, v75);
  v14 = v3[16];
  v73 = type metadata accessor for HealthDataService();
  v72 = *(v73[-1].Description + 1);
  v72(v2 + v14, v73);
  v15 = v3[17];
  v71 = type metadata accessor for InteropService();
  v70 = *(v71[-1].Description + 1);
  v70(v2 + v15, v71);
  v16 = v3[18];
  v69 = type metadata accessor for LocalizationService();
  v68 = *(v69[-1].Description + 1);
  v68(v2 + v16, v69);
  v17 = v3[19];
  v67 = type metadata accessor for MarketingService();
  v66 = *(v67[-1].Description + 1);
  v66(v2 + v17, v67);
  v18 = v3[20];
  v65 = type metadata accessor for MetricService();
  v64 = *(v65[-1].Description + 1);
  v64(v2 + v18, v65);
  v19 = v3[21];
  v63 = type metadata accessor for PersonalizationService();
  v62 = *(v63[-1].Description + 1);
  v62(v2 + v19, v63);
  v20 = v3[22];
  v61 = type metadata accessor for PlayerService();
  v60 = *(v61[-1].Description + 1);
  v60(v2 + v20, v61);
  v21 = v3[23];
  v59 = type metadata accessor for PrivacyPreferenceService();
  v58 = *(v59[-1].Description + 1);
  v58(v2 + v21, v59);
  v22 = v3[24];
  v57 = type metadata accessor for RecommendationService();
  v56 = *(v57[-1].Description + 1);
  v56(v2 + v22, v57);
  v23 = v3[25];
  v55 = type metadata accessor for RemoteBrowsingService();
  v54 = *(v55[-1].Description + 1);
  v54(v2 + v23, v55);
  v24 = v3[26];
  v53 = type metadata accessor for SearchService();
  v52 = *(v53[-1].Description + 1);
  v52(v2 + v24, v53);
  v25 = v3[27];
  v51 = type metadata accessor for ServiceSubscriptionService();
  v50 = *(v51[-1].Description + 1);
  v50(v2 + v25, v51);
  v26 = v3[28];
  v44 = type metadata accessor for SessionService();
  v49 = *(v44[-1].Description + 1);
  v49(v2 + v26, v44);
  v27 = v3[29];
  v28 = type metadata accessor for SharePlayService();
  v48 = *(v28[-1].Description + 1);
  v48(v2 + v27, v28);
  v29 = v3[30];
  v30 = type metadata accessor for SiriService();
  v47 = *(v30[-1].Description + 1);
  v47(v2 + v29, v30);
  v31 = v3[31];
  v32 = type metadata accessor for SyncService();
  v46 = *(v32[-1].Description + 1);
  v46(v2 + v31, v32);

  v33 = v3[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v45 = *(QueueService[-1].Description + 1);
  v45(v2 + v33, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v2 + v3[34]));

  v35 = v3[36];
  v36 = type metadata accessor for WorkoutPlanService();
  v43 = *(v36[-1].Description + 1);
  v43(v2 + v35, v36);

  v37 = v92 + v102[7];

  v38 = v37 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v93(v38 + v3[6], v94);
  v90(v38 + v3[7], v91);
  v88(v38 + v3[8], v89);
  v86(v38 + v3[9], v87);
  v84(v38 + v3[10], v85);
  v82(v38 + v3[11], v83);
  v80(v38 + v3[12], v81);
  v78(v38 + v3[13], v79);
  v76(v38 + v3[14], v77);
  v74(v38 + v3[15], v75);
  v72(v38 + v3[16], v73);
  v70(v38 + v3[17], v71);
  v68(v38 + v3[18], v69);
  v66(v38 + v3[19], v67);
  v64(v38 + v3[20], v65);
  v62(v38 + v3[21], v63);
  v60(v38 + v3[22], v61);
  v58(v38 + v3[23], v59);
  v56(v38 + v3[24], v57);
  v54(v38 + v3[25], v55);
  v52(v38 + v3[26], v53);
  v50(v38 + v3[27], v51);
  v49(v38 + v3[28], v44);
  v48(v38 + v3[29], v28);
  v47(v38 + v3[30], v30);
  v46(v38 + v3[31], v32);

  v45(v38 + v3[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v38 + v3[34]));

  v43(v38 + v3[36], v36);
  swift_unknownObjectRelease();
  if (*(v92 + v102[9] + 8) >= 0xCuLL)
  {
  }

  v39 = (v92 + v102[10]);
  if (v39[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v40 = (v96 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + v95 + 8) & ~v95;

  (*(v98 + 8))(v101 + v41, v99);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E38644()
{

  return swift_deallocObject();
}

uint64_t sub_1E5E3867C()
{

  return swift_deallocObject();
}

uint64_t sub_1E5E386C0()
{
  MEMORY[0x1E694F2D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5E386F8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5E38738()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E38778()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E387D0()
{
  v1 = sub_1E65DB438();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E38894()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5E388CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723B8, &qword_1E65EABF0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E38960()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E389A0()
{
  v99 = type metadata accessor for AppComposer(0);
  v97 = *(*(v99 - 1) + 80);
  v94 = *(*(v99 - 1) + 64);
  v96 = sub_1E65D8D48();
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

uint64_t sub_1E5E39738()
{

  return swift_deallocObject();
}

uint64_t sub_1E5E39770()
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

uint64_t sub_1E5E3A46C()
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

uint64_t sub_1E5E3B160()
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

uint64_t sub_1E5E3BE58()
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

uint64_t sub_1E5E3CB28()
{
  v1 = type metadata accessor for ContentAvailabilityService();
  (*(v1[-1].Description + 1))(v0 + ((*(v1[-1].Description + 80) + 16) & ~*(v1[-1].Description + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E3CBE0(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E5E3CC9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726D0, &qword_1E65EBAB0);
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

uint64_t sub_1E5E3CD14(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726D0, &qword_1E65EBAB0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1E5E3CDA0()
{
  v1 = (type metadata accessor for TaskScheduler.ScheduledTask(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1E65D76F8();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  swift_unknownObjectRelease();

  v7 = v1[8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_1E5E3CF34()
{
  v1 = (type metadata accessor for TaskScheduler.ScheduledTask(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1E65D76F8();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  swift_unknownObjectRelease();

  v7 = v1[8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_1E5E3D0C4()
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

uint64_t sub_1E5E3DDC0()
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