uint64_t type metadata accessor for JournalRotator(uint64_t a1)
{
  result = qword_1EE2DAA00;
  if (!qword_1EE2DAA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5DEC494(uint64_t a1)
{
  result = sub_1E65D74E8();
  if (v2 <= 0x3F)
  {
    result = sub_1E5DEC528();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E5DEC528()
{
  result = qword_1EE2D4598;
  if (!qword_1EE2D4598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2D4598);
  }

  return result;
}

uint64_t JournalRotator.init(containerDirectory:limit:queue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a2;
  v7 = type metadata accessor for JournalRotator(0);
  *&a4[*(v7 + 24)] = a3;
  v8 = *(v7 + 20);
  v9 = sub_1E65D74E8();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a4[v8], a1, v9);
}

uint64_t sub_1E5DEC618(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E65D74E8();
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

uint64_t sub_1E5DEC6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E65D74E8();
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

uint64_t type metadata accessor for AppCoordinator(uint64_t a1)
{
  result = qword_1EE2DAE18;
  if (!qword_1EE2DAE18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5DEC7F4(uint64_t a1)
{
  result = type metadata accessor for AppComposer(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t type metadata accessor for AppComposer(uint64_t a1)
{
  result = qword_1EE2DBA40;
  if (!qword_1EE2DBA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DEC91C(uint64_t a1)
{
  if (!qword_1EE2D4A08)
  {
    type metadata accessor for AppFeature(255);
    sub_1E5DED16C();
    v1 = sub_1E65E4F18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4A08);
    }
  }
}

void sub_1E5DEC980(uint64_t a1)
{
  sub_1E5DEC91C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AppEnvironment(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AppStateResolver(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AppDataItemResolver(319);
        if (v4 <= 0x3F)
        {
          sub_1E5DED2BC();
          if (v5 <= 0x3F)
          {
            sub_1E5DED31C(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for AppFeature(uint64_t a1)
{
  result = qword_1EE2DBD80;
  if (!qword_1EE2DBD80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5DECAB8(uint64_t a1)
{
  result = type metadata accessor for AppEnvironment(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for AppEnvironment(uint64_t a1)
{
  result = qword_1EE2DACF8;
  if (!qword_1EE2DACF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5DECB78(uint64_t a1)
{
  result = sub_1E5DECED0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AccountService();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for AppStateService();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ArchivedSessionService();
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for AssetService();
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for AwardsService();
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for BookmarkService();
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for CatalogService();
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for ConfigurationService();
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for ContentAvailabilityService();
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for EngagementService();
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for HealthDataService();
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for InteropService();
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for LocalizationService();
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for MarketingService();
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for MetricService();
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for PersonalizationService();
                                  if (v18 <= 0x3F)
                                  {
                                    result = type metadata accessor for PlayerService();
                                    if (v19 <= 0x3F)
                                    {
                                      result = type metadata accessor for PrivacyPreferenceService();
                                      if (v20 <= 0x3F)
                                      {
                                        result = type metadata accessor for RecommendationService();
                                        if (v21 <= 0x3F)
                                        {
                                          result = type metadata accessor for RemoteBrowsingService();
                                          if (v22 <= 0x3F)
                                          {
                                            result = type metadata accessor for SearchService();
                                            if (v23 <= 0x3F)
                                            {
                                              result = type metadata accessor for ServiceSubscriptionService();
                                              if (v24 <= 0x3F)
                                              {
                                                result = type metadata accessor for SessionService();
                                                if (v25 <= 0x3F)
                                                {
                                                  result = type metadata accessor for SharePlayService();
                                                  if (v26 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for SiriService();
                                                    if (v27 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for SyncService();
                                                      if (v28 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for UpNextQueueService();
                                                        if (v29 <= 0x3F)
                                                        {
                                                          result = sub_1E5DED0C4();
                                                          if (v30 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for WindowSceneObserver();
                                                            if (v31 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for WorkoutPlanService();
                                                              if (v32 <= 0x3F)
                                                              {
                                                                swift_cvw_initStructMetadataWithLayoutString();
                                                                return 0;
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1E5DECED0()
{
  result = qword_1EE2D4698;
  if (!qword_1EE2D4698)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE2D4698);
  }

  return result;
}

unint64_t sub_1E5DED0C4()
{
  result = qword_1EE2D6D60;
  if (!qword_1EE2D6D60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE2D6D60);
  }

  return result;
}

unint64_t sub_1E5DED16C()
{
  result = qword_1EE2DBD90;
  if (!qword_1EE2DBD90)
  {
    type metadata accessor for AppFeature(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DBD90);
  }

  return result;
}

uint64_t type metadata accessor for AppStateResolver(uint64_t a1)
{
  result = qword_1EE2DA5C0;
  if (!qword_1EE2DA5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5DED210(uint64_t a1)
{
  result = type metadata accessor for AppEnvironment(319);
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

unint64_t sub_1E5DED2BC()
{
  result = qword_1EE2D6D48;
  if (!qword_1EE2D6D48)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE2D6D48);
  }

  return result;
}

void sub_1E5DED31C(uint64_t a1)
{
  if (!qword_1EE2DA970[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0758E8, &unk_1E65F2000);
    v1 = sub_1E65E6668();
    if (!v2)
    {
      atomic_store(v1, qword_1EE2DA970);
    }
  }
}

uint64_t sub_1E5DED3A0(uint64_t a1, uint64_t a2)
{
  v167 = type metadata accessor for RouteDetourPresenter.State(0);
  MEMORY[0x1EEE9AC00](v167);
  v168 = (&v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v193 = type metadata accessor for ServiceSubscriptionService();
  Description = v193[-1].Description;
  MEMORY[0x1EEE9AC00](v193);
  v181 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for MetricService();
  v180 = v192[-1].Description;
  MEMORY[0x1EEE9AC00](v192);
  v191 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for EngagementService();
  v178 = v179[-1].Description;
  v8 = MEMORY[0x1EEE9AC00](v179);
  v166 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v189 = &v147 - v10;
  v190 = type metadata accessor for AccountService();
  v176 = v190[-1].Description;
  MEMORY[0x1EEE9AC00](v190);
  v175 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for AppDataItemResolver(0);
  MEMORY[0x1EEE9AC00](v156);
  v158 = (&v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for AppState(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v153 = (&v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for AppFeature(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v152 = &v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3B0, &qword_1E66065E0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v150 = &v147 - v18;
  v171 = sub_1E65E4CE8();
  v173 = *(v171 - 8);
  v19 = MEMORY[0x1EEE9AC00](v171);
  v151 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v188 = &v147 - v21;
  v157 = type metadata accessor for AppComposer(0);
  v22 = MEMORY[0x1EEE9AC00](v157);
  v177 = &v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v147 - v24;
  *&v169 = type metadata accessor for AppEnvironment(0);
  v26 = MEMORY[0x1EEE9AC00](v169);
  v154 = (&v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x1EEE9AC00](v26);
  v155 = (&v147 - v29);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v147 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v147 - v33;
  *(v2 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_legacyEngagementPresentationEnabledOverride) = 1;
  v35 = (v2 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_onTerminateApplication);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v2 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_onDeactivateApplication);
  v37 = sub_1E65E60A8();
  *v36 = 0;
  v36[1] = 0;
  v38 = a2;
  v39 = v31;
  v40 = *(v37 - 8);
  v41 = *(v40 + 56);
  v161 = v37;
  v160 = v41;
  v159 = v40 + 56;
  (v41)(v34, 1, 1);
  v187 = v38;
  sub_1E5DFD1CC(v38, &v197, &qword_1ED0782C0, &qword_1E65FBB50);
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  v43 = v198;
  *(v42 + 32) = v197;
  *(v42 + 48) = v43;
  *(v42 + 64) = v199;
  sub_1E63399BC(0, 0, v34, &unk_1E66065F0, v42);

  v162 = v34;
  sub_1E5DFE50C(v34, &unk_1ED0735B0, &qword_1E65EA000);
  sub_1E65D7F18();
  v164 = v197;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A3C0, &qword_1E66065F8);
  sub_1E65D7F18();
  v185 = v2;
  sub_1E5DF599C(&v197, v2 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_legacyEngagementCoordinator);
  v163 = sub_1E65E56E8();
  swift_allocObject();

  v184 = sub_1E65E56D8();

  v45 = sub_1E5DF4D5C(v44);
  v183 = a1;
  static AppEnvironment.live(with:)(a1, v39);
  v46 = *(v39 + 8);
  v47 = sub_1E5E03F70(*(v39 + 8));
  v174 = type metadata accessor for AppRouter(0);
  sub_1E5E05224(v46, &v197);
  v48 = *(&v197 + 1);
  if (*(&v197 + 1) == 6)
  {
    goto LABEL_6;
  }

  v49 = v197;
  sub_1E5E05374(v197, *(&v197 + 1));
  v50 = sub_1E5E25298(v49, v48, v47);
  sub_1E5E07DA0(v49, v48);
  if ((v50 & 1) == 0)
  {
    sub_1E5E07DA0(v49, v48);
    goto LABEL_6;
  }

  if (v48 == 4)
  {
LABEL_6:
    swift_beginAccess();
    v48 = qword_1ED075950;
    v49 = qword_1ED075948;
    sub_1E5E05374(qword_1ED075948, qword_1ED075950);
  }

  v51 = v48;
  v172 = v45;
  v186 = v25;
  sub_1E5DFD1CC(v187, &v197, &qword_1ED0782C0, &qword_1E65FBB50);
  v52 = *(&v198 + 1);
  if (*(&v198 + 1))
  {
    v53 = v199;
    __swift_project_boxed_opaque_existential_1(&v197, *(&v198 + 1));
    v54 = v52;
    v55 = v150;
    (*(v53 + 8))(v54, v53);
    v56 = v173;
    v57 = v171;
    (*(v173 + 56))(v55, 0, 1, v171);
    __swift_destroy_boxed_opaque_existential_1(&v197);
    v58 = (*(v56 + 48))(v55, 1, v57);
    v59 = v152;
    if (v58 != 1)
    {
      (*(v56 + 32))(v188, v55, v57);
      goto LABEL_13;
    }
  }

  else
  {
    sub_1E5DFE50C(&v197, &qword_1ED0782C0, &qword_1E65FBB50);
    v56 = v173;
    v55 = v150;
    v57 = v171;
    (*(v173 + 56))(v150, 1, 1, v171);
    v59 = v152;
  }

  (*(v56 + 104))(v188, *MEMORY[0x1E6999AF8], v57);
  if ((*(v56 + 48))(v55, 1, v57) != 1)
  {
    sub_1E5DFE50C(v55, &unk_1ED07A3B0, &qword_1E66065E0);
  }

LABEL_13:
  v60 = sub_1E65E56C8();
  v62 = v61;
  sub_1E5DFAA48(v39, v59, type metadata accessor for AppEnvironment);
  sub_1E65E4CC8();
  *&v197 = v49;
  *(&v197 + 1) = v51;
  v170 = v46;
  v152 = v60;
  v150 = v62;
  if (v46 > 1)
  {
    if (v46 != 3)
    {
      result = sub_1E65E69D8();
      __break(1u);
      return result;
    }

    v63 = 2;
  }

  else if (v46)
  {
    v63 = 3;
  }

  else
  {
    v63 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A3C8, &qword_1E6606600);
  v149 = v51;
  sub_1E5E05374(v49, v51);

  v148 = v49;
  sub_1E5DF83E0(v64, &v197, v63, v153);
  (*(v56 + 16))(v151, v188, v57);
  v65 = sub_1E65E4EF8();
  v66 = v155;
  sub_1E5DFAA48(v39, v155, type metadata accessor for AppEnvironment);
  type metadata accessor for AppStateResolver(0);
  v67 = v56;
  v68 = swift_allocObject();
  sub_1E5DFAA48(v66, v68 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment, type metadata accessor for AppEnvironment);
  *(v68 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store) = v65;
  v69 = sub_1E5E09ED0(MEMORY[0x1E69E7CC0]);

  v153 = type metadata accessor for AppEnvironment;
  sub_1E5E09E70(v66, type metadata accessor for AppEnvironment);
  *(v68 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_resolvers) = v69;
  v70 = v154;
  sub_1E5DFAA48(v39, v154, type metadata accessor for AppEnvironment);
  sub_1E5DFAA48(v39, v66, type metadata accessor for AppEnvironment);
  v173 = v39;
  v71 = v158;
  *(v158 + 1) = v65;
  sub_1E5DFAA48(v66, v71 + *(v156 + 24), type metadata accessor for AppEnvironment);

  v72 = sub_1E6018B3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A3D0, &qword_1E6606608);
  v73 = swift_allocObject();
  *(v73 + 24) = 0;

  sub_1E5E09E70(v66, type metadata accessor for AppEnvironment);
  *(v73 + 16) = v72;

  *v71 = v73;
  v74 = sub_1E65DAE38();
  v75 = sub_1E65DAE38();
  sub_1E5E0476C(v148, v149);
  (*(v67 + 8))(v188, v171);
  v76 = v173;
  if (v74 == v75)
  {
    v77 = 10;
  }

  else
  {
    v77 = 0;
  }

  v78 = v157;
  v79 = v186;
  v80 = v186 + *(v157 + 40);
  *(v80 + 4) = 0;
  *v80 = 0u;
  *(v80 + 1) = 0u;
  *v79 = v65;
  sub_1E5DFAC50(v70, v79 + v78[5], type metadata accessor for AppEnvironment);
  *(v79 + v78[6]) = v68;
  sub_1E5DFAC50(v71, v79 + v78[7], type metadata accessor for AppDataItemResolver);
  v81 = (v79 + v78[8]);
  v82 = v150;
  *v81 = v152;
  v81[1] = v82;
  v83 = (v79 + v78[9]);
  *v83 = 0;
  v83[1] = v77;
  v84 = v172;

  v85 = v183;
  static AppEnvironment.live(with:)(v183, v66);

  v86 = sub_1E5E0A0F0(v85);
  v87 = v177;
  v158 = type metadata accessor for AppComposer;
  sub_1E5DFAA48(v79, v177, type metadata accessor for AppComposer);
  v88 = swift_allocObject();
  v89 = sub_1E5E0C5D4(v87, v86, v84, v88);
  sub_1E5E09E70(v66, v153);

  v90 = v185;
  sub_1E5DFAA48(v79, v185 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_composer, type metadata accessor for AppComposer);
  v91 = (v90 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_urlResolver);
  v91[3] = &type metadata for AppURLResolver;
  v91[4] = &off_1F5FAB4F8;
  *v91 = v89;
  v92 = v89;
  v188 = v89;
  v93 = (v90 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_detourPresenter);
  *v93 = v84;
  v93[1] = &off_1F5FB2698;
  v94 = v169;
  v95 = *(v169 + 24);
  v155 = v176[2];
  v96 = v175;
  (v155)(v175, v76 + v95, v190);
  v171 = *v76;
  v97 = v94[15];
  v156 = v178[2];
  (v156)(v189, v76 + v97, v179);
  v98 = v94[20];
  v153 = *(v180 + 2);
  (v153)(v191, v76 + v98, v192);
  v99 = v94[27];
  v154 = Description[2];
  v100 = v181;
  (v154)(v181, v76 + v99, v193);
  v101 = (v92 + OBJC_IVAR____TtC10Blackbeard9AppRouter_taskScheduler);
  v157 = v101;
  type metadata accessor for EngagementMessagePresenter(0);
  v102 = swift_allocObject();
  v103 = OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_accountService;
  v169 = *v101;
  *(v102 + OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_placement) = 3;
  (v155)(v102 + v103, v96, v190);
  *(v102 + OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_bag) = v171;
  v104 = v189;
  v105 = v179;
  v106 = v156;
  (v156)(v102 + OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_engagementService, v189, v179);
  (v153)(v102 + OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_metricService, v191, v192);
  v107 = v185;
  *(v102 + OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_platform) = v170;
  (v154)(v102 + OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_serviceSubscriptionService, v100, v193);
  *(v102 + OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_taskScheduler) = v169;
  v108 = v162;
  v160(v162, 1, 1, v161);
  v109 = v166;
  v106(v166, v104, v105);
  v110 = v178;
  v111 = (*(v178 + 80) + 32) & ~*(v178 + 80);
  v112 = v111 + v165;
  v113 = swift_allocObject();
  *(v113 + 16) = 0;
  *(v113 + 24) = 0;
  (v110[4])(v113 + v111, v109, v105);
  *(v113 + v112) = 3;

  v114 = v188;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1E64B80F8(0, 0, v108, &unk_1E6606610, v113);

  (Description[1])(v181, v193);
  (*(v180 + 1))(v191, v192);
  (v110[1])(v189, v105);
  (v176[1])(v175, v190);
  *(v107 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_engagementMessagePresenter) = v102;
  v115 = objc_allocWithZone(sub_1E65E51F8());

  v116 = sub_1E65E51D8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072350, &unk_1E660BBE0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077610, &qword_1E660BBF0);
  sub_1E65D7F18();
  v117 = v196;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  v118 = v194;
  v119 = v195;
  v120 = objc_allocWithZone(type metadata accessor for SubscriptionPurchasePresenter());
  v121 = sub_1E5E1B07C(&v197, v117, v118, v119);

  *(v107 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_subscriptionPurchasePresenter) = v121;
  v122 = v177;
  sub_1E5DFAA48(v114 + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer, v177, v158);
  v124 = *v157;
  v123 = *(v157 + 8);
  v125 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for ToastPresenter(0);
  swift_allocObject();
  *(v107 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_toastPresenter) = sub_1E5E1B880(v122, v124, v123, sub_1E64C007C, v125);
  *(*(v114 + OBJC_IVAR____TtC10Blackbeard9AppRouter_offlineRoutingContext) + OBJC_IVAR____TtC10Blackbeard20NavigationController_pictureInPictureSurrogate + 8) = MEMORY[0x1E69CD6C8];
  swift_unknownObjectWeakAssign();
  v126 = swift_allocObject();
  *(v126 + 16) = v116;
  swift_unknownObjectRetain();
  v127 = v116;
  v128 = sub_1E627FA08(v114, sub_1E64C0084, v126, v164);

  v129 = (v107 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router);
  v129[3] = v174;
  v129[4] = &off_1F5FBE858;
  *v129 = v114;
  v130 = MEMORY[0x1E69CD8E8];
  v131 = (v107 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker);
  v131[3] = v163;
  v131[4] = v130;
  *v131 = v184;
  *(v107 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_rootViewController) = v128;
  *(v107 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_pictureInPicturePresenter) = v127;
  sub_1E5E0E7A0(qword_1EE2DAE30, type metadata accessor for AppCoordinator, &protocol conformance descriptor for AppCoordinator);

  v132 = v127;

  v133 = v128;

  v193 = v132;
  sub_1E65E51E8();
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v134 = sub_1E65E3B68();
  __swift_project_value_buffer(v134, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v135 = v168;
  *v168 = v133;
  swift_storeEnumTagMultiPayload();
  v136 = OBJC_IVAR____TtC10Blackbeard20RouteDetourPresenter_state;
  v137 = v172;
  swift_beginAccess();
  v138 = v133;
  sub_1E61CFF50(v135, v137 + v136);
  swift_endAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v139 = swift_allocObject();
  swift_weakInit();
  v140 = v137;
  v141 = v137[3];
  v142 = v137[4];
  v140[3] = sub_1E64C00B4;
  v140[4] = v139;

  sub_1E5F9169C(v141, v142);

  v143 = swift_allocObject();
  swift_weakInit();

  v144 = v140[5];
  v145 = v140[6];
  v140[5] = sub_1E64C00D8;
  v140[6] = v143;

  sub_1E5F9169C(v144, v145);

  sub_1E61E2908();
  sub_1E65E3B38();
  __swift_project_boxed_opaque_existential_1((v107 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_legacyEngagementCoordinator), *(v107 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_legacyEngagementCoordinator + 24));
  sub_1E5E0E7A0(&qword_1EE2DAE28, type metadata accessor for AppCoordinator, &protocol conformance descriptor for AppCoordinator);
  sub_1E65E59A8();

  sub_1E5DFE50C(v187, &qword_1ED0782C0, &qword_1E65FBB50);
  sub_1E5E09E70(v186, type metadata accessor for AppComposer);
  sub_1E5E09E70(v173, type metadata accessor for AppEnvironment);
  return v107;
}

uint64_t sub_1E5DEED00()
{
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return swift_deallocObject();
}

uint64_t sub_1E5DEED48()
{
  v1 = type metadata accessor for EngagementService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 32) & ~*(Description + 80);
  swift_unknownObjectRelease();
  Description[1](v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5DEEE10()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5DEEE48()
{

  return swift_deallocObject();
}

uint64_t AppCoordinator.init(dependencies:journalRotator:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E5DED3A0(a1, a2);

  return v2;
}

uint64_t sub_1E5DEEEB8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DEEEF0(uint64_t a1)
{
  sub_1E5DEEF64();
  if (v1 <= 0x3F)
  {
    sub_1E5DEEFAC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E5DEEF64()
{
  if (!qword_1EE2D4638)
  {
    v0 = sub_1E5DEF094();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4638);
    }
  }
}

void sub_1E5DEEFAC(uint64_t a1)
{
  if (!qword_1EE2DA058[0])
  {
    type metadata accessor for RouteDestination(255);
    sub_1E5DEF094();
    _s20NavigationControllerCMa(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, qword_1EE2DA058);
    }
  }
}

uint64_t type metadata accessor for RouteDestination(uint64_t a1)
{
  result = qword_1EE2DA048;
  if (!qword_1EE2DA048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5DEF094()
{
  result = qword_1EE2D4630;
  if (!qword_1EE2D4630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2D4630);
  }

  return result;
}

void sub_1E5DEF0E0(uint64_t a1)
{
  type metadata accessor for RouteResource(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RouteSource(319);
    if (v2 <= 0x3F)
    {
      sub_1E5DF022C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for RouteResource(uint64_t a1)
{
  result = qword_1EE2DB240;
  if (!qword_1EE2DB240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DEF1C8(uint64_t a1)
{
  sub_1E5DF13E4();
  if (v1 <= 0x3F)
  {
    sub_1E61B74B0(319);
    if (v2 <= 0x3F)
    {
      sub_1E5DEF56C();
      if (v3 <= 0x3F)
      {
        sub_1E5DF1414(319);
        if (v4 <= 0x3F)
        {
          sub_1E5DF1534(319);
          if (v5 <= 0x3F)
          {
            sub_1E5DF1640();
            if (v6 <= 0x3F)
            {
              sub_1E5DF15A0(319, &qword_1EE2D44F8, MEMORY[0x1E699E860], "account metricConfiguration placement ");
              if (v7 <= 0x3F)
              {
                sub_1E5DF1868(319, &qword_1EE2D6D28, MEMORY[0x1E69CD620], MEMORY[0x1E6968FB0], "metricConfiguration url ");
                if (v8 <= 0x3F)
                {
                  sub_1E5DF15A0(319, &qword_1EE2D44F0, MEMORY[0x1E6968FB0], "account metricConfiguration url ");
                  if (v9 <= 0x3F)
                  {
                    sub_1E5DEF59C();
                    if (v10 <= 0x3F)
                    {
                      sub_1E5DF1670();
                      if (v11 <= 0x3F)
                      {
                        sub_1E5DF16D4(319, &qword_1EE2D6D40, MEMORY[0x1E69CD5A8]);
                        if (v12 <= 0x3F)
                        {
                          sub_1E5DF1720(319);
                          if (v13 <= 0x3F)
                          {
                            sub_1E5DF16D4(319, &qword_1EE2D71E8, MEMORY[0x1E6968FB0]);
                            if (v14 <= 0x3F)
                            {
                              sub_1E5DEF5CC(319);
                              if (v15 <= 0x3F)
                              {
                                sub_1E5DEF780(319);
                                if (v16 <= 0x3F)
                                {
                                  sub_1E5DEF8E8(319);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1E5DEFA94(319);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_1E5DEFBB8(319);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_1E5DEFC3C();
                                        if (v20 <= 0x3F)
                                        {
                                          sub_1E65E52B8();
                                          if (v21 <= 0x3F)
                                          {
                                            type metadata accessor for PlaylistType(319);
                                            if (v22 <= 0x3F)
                                            {
                                              sub_1E5DF16D4(319, &qword_1EE2D71B8, MEMORY[0x1E69695A8]);
                                              if (v23 <= 0x3F)
                                              {
                                                sub_1E5DF1868(319, &unk_1EE2D49A0, MEMORY[0x1E69CD8B0], MEMORY[0x1E69CB0E0], "swapping plan ");
                                                if (v24 <= 0x3F)
                                                {
                                                  sub_1E5DEFD2C(319);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    sub_1E5DEFDD0(319);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      sub_1E5DEFE50(319);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        sub_1E5DEFED4(319);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1E5DEF56C()
{
  result = qword_1EE2D4908;
  if (!qword_1EE2D4908)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE2D4908);
  }

  return result;
}

uint64_t sub_1E5DEF59C()
{
  result = qword_1EE2D48F0;
  if (!qword_1EE2D48F0)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE2D48F0);
  }

  return result;
}

void sub_1E5DEF5CC(uint64_t a1)
{
  if (!qword_1EE2D48B0)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072978, &unk_1E65F0E80);
    sub_1E5DEF738(255, &qword_1EE2D4670, 0x1E698C988);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2D48B0);
    }
  }
}

uint64_t sub_1E5DEF738(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_1E5DEF780(uint64_t a1)
{
  if (!qword_1EE2D48B8)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072978, &unk_1E65F0E80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077780, &unk_1E66097F0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2D48B8);
    }
  }
}

void sub_1E5DEF8E8(uint64_t a1)
{
  if (!qword_1EE2D44E8)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1E65D74E8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072978, &unk_1E65F0E80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076220, &unk_1E65FA4A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077770, &unk_1E660C190);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED07B500, &qword_1E65F0EE0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2D44E8);
    }
  }
}

void sub_1E5DEFA94(uint64_t a1)
{
  if (!qword_1EE2D4980)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1E65E57D8();
    sub_1E65E5528();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2D4980);
    }
  }
}

void sub_1E5DEFBB8(uint64_t a1)
{
  if (!qword_1EE2D46D8)
  {
    sub_1E5DEF738(255, &qword_1EE2D46D0, 0x1E698C818);
    sub_1E65DB848();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D46D8);
    }
  }
}

uint64_t sub_1E5DEFC3C()
{
  result = qword_1EE2D46F0;
  if (!qword_1EE2D46F0)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1EE2D46F0);
  }

  return result;
}

uint64_t type metadata accessor for PlaylistType(uint64_t a1)
{
  result = qword_1EE2DB2F8;
  if (!qword_1EE2DB2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5DEFCB8(uint64_t a1)
{
  result = sub_1E5DEF56C();
  if (v2 <= 0x3F)
  {
    result = sub_1E65DAEB8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1E5DEFD2C(uint64_t a1)
{
  if (!qword_1EE2D4988)
  {
    sub_1E65E56B8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0762C0, &qword_1E65F5300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072908, &qword_1E660F010);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2D4988);
    }
  }
}

void sub_1E5DEFDD0(uint64_t a1)
{
  if (!qword_1EE2D6FD8)
  {
    sub_1E65DA308();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072908, &qword_1E660F010);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D6FD8);
    }
  }
}

void sub_1E5DEFE50(uint64_t a1)
{
  if (!qword_1EE2D4978)
  {
    sub_1E65E58D8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072908, &qword_1E660F010);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2D4978);
    }
  }
}

void sub_1E5DEFED4(uint64_t a1)
{
  if (!qword_1EE2D70B8)
  {
    sub_1E65D9048();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2D70B8);
    }
  }
}

void sub_1E5DEFF84(uint64_t a1)
{
  type metadata accessor for AppLaunchScope(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for URLContext(319);
    if (v2 <= 0x3F)
    {
      sub_1E65D74E8();
      if (v3 <= 0x3F)
      {
        sub_1E5DF01E4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E5DF0020(uint64_t a1)
{
  result = type metadata accessor for URLContext(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E5DF00A0(uint64_t a1)
{
  sub_1E65D74E8();
  if (v1 <= 0x3F)
  {
    sub_1E5DF013C(319);
    if (v2 <= 0x3F)
    {
      sub_1E5DF0194();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E5DF013C(uint64_t a1)
{
  if (!qword_1EE2D71D8)
  {
    sub_1E65D74E8();
    v1 = sub_1E65E6668();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D71D8);
    }
  }
}

void sub_1E5DF0194()
{
  if (!qword_1EE2D48A8)
  {
    v0 = sub_1E65E6668();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D48A8);
    }
  }
}

void sub_1E5DF01E4()
{
  if (!qword_1EE2D70F0)
  {
    v0 = sub_1E65D8D48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D70F0);
    }
  }
}

void sub_1E5DF022C(uint64_t a1)
{
  if (!qword_1EE2D4728)
  {
    sub_1E5DF0288();
    v1 = sub_1E65E6278();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4728);
    }
  }
}

unint64_t sub_1E5DF0288()
{
  result = qword_1EE2DA5E8[0];
  if (!qword_1EE2DA5E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2DA5E8);
  }

  return result;
}

unint64_t sub_1E5DF02E0()
{
  result = qword_1EE2DA5E0;
  if (!qword_1EE2DA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DA5E0);
  }

  return result;
}

uint64_t _s20NavigationControllerCMa(uint64_t a1)
{
  result = qword_1EE2D9590;
  if (!qword_1EE2D9590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF0380(uint64_t a1)
{
  sub_1E5DF0444();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E5DF0444()
{
  if (!qword_1EE2D6AF8)
  {
    v0 = sub_1E65DDC78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D6AF8);
    }
  }
}

uint64_t type metadata accessor for AppState(uint64_t a1)
{
  result = qword_1EE2D7778;
  if (!qword_1EE2D7778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF04F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    v5 = a3(255);
    v8 = type metadata accessor for Resettable(a1, v5, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1E5DF0544(uint64_t a1)
{
  sub_1E65DE668();
  if (v1 <= 0x3F)
  {
    sub_1E5DF04F0(319, &qword_1EE2DBB98, MEMORY[0x1E699CE20]);
    if (v2 <= 0x3F)
    {
      sub_1E5DF178C(319);
      if (v3 <= 0x3F)
      {
        sub_1E5DF449C(319);
        if (v4 <= 0x3F)
        {
          sub_1E5DF19A0(319);
          if (v5 <= 0x3F)
          {
            sub_1E5DF1A34(319, &qword_1EE2DBB68, MEMORY[0x1E699F640], type metadata accessor for Resettable);
            if (v6 <= 0x3F)
            {
              sub_1E5DF4530(319, &qword_1EE2D4AA8, &qword_1ED074678, &qword_1E660D860, &qword_1EE2D4700);
              if (v7 <= 0x3F)
              {
                sub_1E5DF4010(319, &qword_1EE2DBB00, &qword_1ED0746B0, &qword_1E65F0FA8);
                if (v8 <= 0x3F)
                {
                  sub_1E5DF1A84(319);
                  if (v9 <= 0x3F)
                  {
                    sub_1E5DF45CC(319);
                    if (v10 <= 0x3F)
                    {
                      sub_1E5DF4010(319, &qword_1EE2DBB30, &qword_1ED074720, &qword_1E65F0FC8);
                      if (v11 <= 0x3F)
                      {
                        sub_1E5DF4010(319, &qword_1EE2DBAF0, &qword_1ED074768, &qword_1E65F0FD8);
                        if (v12 <= 0x3F)
                        {
                          sub_1E5DF4010(319, &qword_1EE2DBB28, &qword_1ED0747E0, &qword_1E65F0FF0);
                          if (v13 <= 0x3F)
                          {
                            sub_1E5DF4010(319, &qword_1EE2DBB20, &qword_1ED074828, &qword_1E65F1000);
                            if (v14 <= 0x3F)
                            {
                              sub_1E5DF4010(319, &qword_1EE2DBBC0, &qword_1ED074870, &qword_1E65F1010);
                              if (v15 <= 0x3F)
                              {
                                sub_1E5DF04F0(319, &qword_1EE2DBBB8, MEMORY[0x1E699D2B0]);
                                if (v16 <= 0x3F)
                                {
                                  sub_1E60DE628(319);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1E5DF4530(319, &qword_1EE2D4AA0, &qword_1ED0748E0, &qword_1E660F180, &qword_1EE2D46F8);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_1E5DF1B2C(319);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_1E5DF1BC8(319);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_1E5DF4010(319, &qword_1EE2DBB10, &qword_1ED074928, &qword_1E65F1020);
                                          if (v21 <= 0x3F)
                                          {
                                            sub_1E5DF4010(319, &qword_1EE2DBB18, &qword_1ED074970, &qword_1E65F1030);
                                            if (v22 <= 0x3F)
                                            {
                                              sub_1E5DF04F0(319, &qword_1EE2DBB88, MEMORY[0x1E699D6B8]);
                                              if (v23 <= 0x3F)
                                              {
                                                sub_1E5DF04F0(319, &qword_1EE2DBB78, MEMORY[0x1E699F288]);
                                                if (v24 <= 0x3F)
                                                {
                                                  sub_1E5DFCC30(319);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    sub_1E5DFCCAC(319);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      sub_1E5DFCD68(319);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        sub_1E5E0138C(319, &qword_1EE2D4930, MEMORY[0x1E699EB58]);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          sub_1E5DF4010(319, &qword_1EE2DBB38, &qword_1ED074A60, &qword_1E65F1058);
                                                          if (v29 <= 0x3F)
                                                          {
                                                            sub_1E5DF1A34(319, &qword_1EE2DBBA8, MEMORY[0x1E699E1C0], type metadata accessor for Resettable);
                                                            if (v30 <= 0x3F)
                                                            {
                                                              sub_1E5E013F0(319);
                                                              if (v31 <= 0x3F)
                                                              {
                                                                sub_1E5DF04F0(319, &qword_1EE2DBBB0, MEMORY[0x1E699E100]);
                                                                if (v32 <= 0x3F)
                                                                {
                                                                  sub_1E5DFC0C4(319);
                                                                  if (v33 <= 0x3F)
                                                                  {
                                                                    sub_1E5E01484();
                                                                    if (v34 <= 0x3F)
                                                                    {
                                                                      sub_1E5E014DC(319);
                                                                      if (v35 <= 0x3F)
                                                                      {
                                                                        sub_1E5DF4010(319, &qword_1EE2DBB48, &qword_1ED074B68, &qword_1E65F1098);
                                                                        if (v36 <= 0x3F)
                                                                        {
                                                                          sub_1E5DF4010(319, &qword_1EE2DBB40, &qword_1ED074BC0, &qword_1E65F10A8);
                                                                          if (v37 <= 0x3F)
                                                                          {
                                                                            sub_1E5DF04F0(319, &qword_1EE2DBB90, MEMORY[0x1E699E698]);
                                                                            if (v38 <= 0x3F)
                                                                            {
                                                                              sub_1E5DF4124(319);
                                                                              if (v39 <= 0x3F)
                                                                              {
                                                                                sub_1E5E01570(319);
                                                                                if (v40 <= 0x3F)
                                                                                {
                                                                                  sub_1E5DF1A34(319, &qword_1EE2DBB50, &type metadata for ModalPresentationState, type metadata accessor for Resettable);
                                                                                  if (v41 <= 0x3F)
                                                                                  {
                                                                                    sub_1E5DF04F0(319, qword_1EE2DBBC8, MEMORY[0x1E699D0E8]);
                                                                                    if (v42 <= 0x3F)
                                                                                    {
                                                                                      sub_1E5DF6D94(319, &qword_1EE2D4B08, sub_1E5E01620, MEMORY[0x1E69CBB48], MEMORY[0x1E6999AA8]);
                                                                                      if (v43 <= 0x3F)
                                                                                      {
                                                                                        sub_1E60DE704(319, &qword_1EE2D4AD0, &qword_1ED074CB0, &unk_1E660F800, sub_1E60DB408);
                                                                                        if (v44 <= 0x3F)
                                                                                        {
                                                                                          sub_1E60DE704(319, &qword_1EE2D4AD8, &qword_1ED074CD0, &qword_1E660EF60, sub_1E5E01674);
                                                                                          if (v45 <= 0x3F)
                                                                                          {
                                                                                            sub_1E5DF04F0(319, &qword_1EE2DBB80, MEMORY[0x1E699E9E0]);
                                                                                            if (v46 <= 0x3F)
                                                                                            {
                                                                                              sub_1E5DF4010(319, &qword_1EE2DBB58, &qword_1ED073568, &qword_1E65FD8A0);
                                                                                              if (v47 <= 0x3F)
                                                                                              {
                                                                                                sub_1E5E01728(319);
                                                                                                if (v48 <= 0x3F)
                                                                                                {
                                                                                                  sub_1E5DF04F0(319, &qword_1EE2DBB70, MEMORY[0x1E699F370]);
                                                                                                  if (v49 <= 0x3F)
                                                                                                  {
                                                                                                    sub_1E5DF4010(319, &qword_1EE2DBB08, &qword_1ED074D80, &qword_1E65F10F0);
                                                                                                    if (v50 <= 0x3F)
                                                                                                    {
                                                                                                      sub_1E5E017BC(319);
                                                                                                      if (v51 <= 0x3F)
                                                                                                      {
                                                                                                        sub_1E5DF04F0(319, &qword_1EE2DBB60, MEMORY[0x1E699ED68]);
                                                                                                        if (v52 <= 0x3F)
                                                                                                        {
                                                                                                          sub_1E5DF1A34(319, &qword_1EE2D74F0, &type metadata for RootItem, MEMORY[0x1E69E6720]);
                                                                                                          if (v53 <= 0x3F)
                                                                                                          {
                                                                                                            sub_1E5DF6D94(319, &qword_1EE2D4710, sub_1E5DFCE18, &type metadata for RootItem, MEMORY[0x1E69E64E8]);
                                                                                                            if (v54 <= 0x3F)
                                                                                                            {
                                                                                                              type metadata accessor for UIEdgeInsets(319);
                                                                                                              if (v55 <= 0x3F)
                                                                                                              {
                                                                                                                sub_1E60DE774(319);
                                                                                                                if (v56 <= 0x3F)
                                                                                                                {
                                                                                                                  sub_1E5DF42B8(319);
                                                                                                                  if (v57 <= 0x3F)
                                                                                                                  {
                                                                                                                    sub_1E5DF4010(319, &qword_1EE2DBAE8, &qword_1ED0748E0, &qword_1E660F180);
                                                                                                                    if (v58 <= 0x3F)
                                                                                                                    {
                                                                                                                      sub_1E5DF04F0(319, &qword_1EE2DBBA0, MEMORY[0x1E699EF28]);
                                                                                                                      if (v59 <= 0x3F)
                                                                                                                      {
                                                                                                                        sub_1E65E39E8();
                                                                                                                        if (v60 <= 0x3F)
                                                                                                                        {
                                                                                                                          sub_1E60DE82C(319);
                                                                                                                          if (v61 <= 0x3F)
                                                                                                                          {
                                                                                                                            sub_1E65E1D58();
                                                                                                                            if (v62 <= 0x3F)
                                                                                                                            {
                                                                                                                              sub_1E60DE8D4(319);
                                                                                                                              if (v63 <= 0x3F)
                                                                                                                              {
                                                                                                                                sub_1E5DF4388(319);
                                                                                                                                if (v64 <= 0x3F)
                                                                                                                                {
                                                                                                                                  sub_1E60DE704(319, &qword_1EE2D4AC0, &qword_1ED074F18, &qword_1E65F1150, sub_1E60DB4BC);
                                                                                                                                  if (v65 <= 0x3F)
                                                                                                                                  {
                                                                                                                                    sub_1E5E0138C(319, &qword_1EE2D4928, MEMORY[0x1E699ECC8]);
                                                                                                                                    if (v66 <= 0x3F)
                                                                                                                                    {
                                                                                                                                      sub_1E5DF4BD4(319);
                                                                                                                                      if (v67 <= 0x3F)
                                                                                                                                      {
                                                                                                                                        sub_1E5E0138C(319, &qword_1EE2D4938, MEMORY[0x1E699EA38]);
                                                                                                                                        if (v68 <= 0x3F)
                                                                                                                                        {
                                                                                                                                          sub_1E5DF4010(319, &qword_1EE2DBAF8, &qword_1ED074F88, &qword_1E65F1170);
                                                                                                                                          if (v69 <= 0x3F)
                                                                                                                                          {
                                                                                                                                            sub_1E60DE968(319);
                                                                                                                                            if (v70 <= 0x3F)
                                                                                                                                            {
                                                                                                                                              sub_1E60DEA18(319);
                                                                                                                                              if (v71 <= 0x3F)
                                                                                                                                              {
                                                                                                                                                swift_cvw_initStructMetadataWithLayoutString();
                                                                                                                                              }
                                                                                                                                            }
                                                                                                                                          }
                                                                                                                                        }
                                                                                                                                      }
                                                                                                                                    }
                                                                                                                                  }
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1E5DF1170(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E5DF11E0()
{
  result = qword_1EE2D9EF8;
  if (!qword_1EE2D9EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9EF8);
  }

  return result;
}

unint64_t sub_1E5DF1238()
{
  result = qword_1EE2D9ED8;
  if (!qword_1EE2D9ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9ED8);
  }

  return result;
}

unint64_t sub_1E5DF1290()
{
  result = qword_1EE2D9EF0;
  if (!qword_1EE2D9EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9EF0);
  }

  return result;
}

unint64_t sub_1E5DF12E4()
{
  result = qword_1EE2D9EE8;
  if (!qword_1EE2D9EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9EE8);
  }

  return result;
}

unint64_t sub_1E5DF1338()
{
  result = qword_1EE2DB328;
  if (!qword_1EE2DB328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB328);
  }

  return result;
}

unint64_t sub_1E5DF138C()
{
  result = qword_1EE2DB308;
  if (!qword_1EE2DB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB308);
  }

  return result;
}

uint64_t sub_1E5DF13E4()
{
  result = qword_1EE2D48C0;
  if (!qword_1EE2D48C0)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE2D48C0);
  }

  return result;
}

void sub_1E5DF1414(uint64_t a1)
{
  if (!qword_1EE2D4910)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1E65D72D8();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2D4910);
    }
  }
}

void sub_1E5DF1534(uint64_t a1)
{
  if (!qword_1EE2D6548)
  {
    sub_1E65E0B48();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D6548);
    }
  }
}

void sub_1E5DF15A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072A38, &qword_1E65EC320);
    sub_1E65DB848();
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t sub_1E5DF1640()
{
  result = qword_1EE2D67A8;
  if (!qword_1EE2D67A8)
  {
    result = MEMORY[0x1E699E678];
    atomic_store(MEMORY[0x1E699E678], &qword_1EE2D67A8);
  }

  return result;
}

void sub_1E5DF1670()
{
  if (!qword_1EE2D4900)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D4900);
    }
  }
}

void sub_1E5DF16D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E5DF1720(uint64_t a1)
{
  if (!qword_1EE2D4920)
  {
    sub_1E65D74E8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D4920);
    }
  }
}

void sub_1E5DF178C(uint64_t a1)
{
  if (!qword_1EE2D6580)
  {
    sub_1E5DF11E0();
    sub_1E5DF1338();
    v1 = sub_1E65E0718();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D6580);
    }
  }
}

unint64_t sub_1E5DF1808()
{
  result = qword_1EE2D9EE0;
  if (!qword_1EE2D9EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9EE0);
  }

  return result;
}

void sub_1E5DF1868(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1E5DF18F0()
{
  result = qword_1EE2DB320;
  if (!qword_1EE2DB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB320);
  }

  return result;
}

unint64_t sub_1E5DF1944()
{
  result = qword_1EE2DB318;
  if (!qword_1EE2DB318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB318);
  }

  return result;
}

void sub_1E5DF19A0(uint64_t a1)
{
  if (!qword_1EE2D4B10)
  {
    sub_1E65D7EB8();
    sub_1E60DE6BC(&qword_1EE2D7160, MEMORY[0x1E69CB0E0], MEMORY[0x1E69CB0F8]);
    v1 = sub_1E65E4CB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4B10);
    }
  }
}

void sub_1E5DF1A34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1E5DF1A84(uint64_t a1)
{
  if (!qword_1EE2D4AF0)
  {
    sub_1E65E1618();
    sub_1E60DE6BC(&qword_1EE2D64D8, MEMORY[0x1E699E8D8], MEMORY[0x1E699E8E8]);
    v1 = sub_1E65E4CB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4AF0);
    }
  }
}

void sub_1E5DF1B2C(uint64_t a1)
{
  if (!qword_1EE2D4A88)
  {
    sub_1E5DF46C8();
    v1 = sub_1E65E4D68();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4A88);
    }
  }
}

void sub_1E5DF1BC8(uint64_t a1)
{
  if (!qword_1EE2D4B28)
  {
    type metadata accessor for BrowsingIdentity(255);
    sub_1E60DE6BC(qword_1EE2DA468, type metadata accessor for BrowsingIdentity, &protocol conformance descriptor for BrowsingIdentity);
    v1 = sub_1E65E4CB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4B28);
    }
  }
}

uint64_t sub_1E5DF1C5C(uint64_t a1)
{
  result = sub_1E65D8DE8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E5DF1CDC(uint64_t a1)
{
  result = sub_1E65D76F8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ActionButtonDescriptor.Kind(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1E5DF1D80(uint64_t a1)
{
  sub_1E5DF1EC4();
  if (v1 <= 0x3F)
  {
    sub_1E5DF4064(319);
    if (v2 <= 0x3F)
    {
      sub_1E64F0520(319);
      if (v3 <= 0x3F)
      {
        sub_1E5DF1EF4(319);
        if (v4 <= 0x3F)
        {
          sub_1E64F0650();
          if (v5 <= 0x3F)
          {
            sub_1E5DF1F70(319, &qword_1EE2D48F8, MEMORY[0x1E699E7C0], "workoutIdentifier placement ");
            if (v6 <= 0x3F)
            {
              sub_1E5DF1F70(319, &qword_1EE2D4918, MEMORY[0x1E69CC140], "identifier referenceType ");
              if (v7 <= 0x3F)
              {
                sub_1E64F0698(319);
                if (v8 <= 0x3F)
                {
                  sub_1E5DF211C();
                  if (v9 <= 0x3F)
                  {
                    sub_1E5DF20A4(319);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1E5DF1EC4()
{
  result = qword_1EE2D48C8;
  if (!qword_1EE2D48C8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE2D48C8);
  }

  return result;
}

void sub_1E5DF1EF4(uint64_t a1)
{
  if (!qword_1EE2D72A0)
  {
    sub_1E65D72D8();
    sub_1E65D74E8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2D72A0);
    }
  }
}

void sub_1E5DF1F70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t type metadata accessor for GalleryDescriptor(uint64_t a1)
{
  result = qword_1EE2D9CF8;
  if (!qword_1EE2D9CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5DF2010(uint64_t a1)
{
  result = sub_1E65D72D8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E5DF20A4(uint64_t a1)
{
  if (!qword_1EE2D6908[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073648, &qword_1E6607560);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EE2D6908);
    }
  }
}

ValueMetadata *sub_1E5DF211C()
{
  result = qword_1EE2D87A0;
  if (!qword_1EE2D87A0)
  {
    result = &type metadata for ViewPlanButtonPlacement;
    atomic_store(&type metadata for ViewPlanButtonPlacement, &qword_1EE2D87A0);
  }

  return result;
}

uint64_t type metadata accessor for WorkoutActionsMenuLoadState(uint64_t a1)
{
  result = qword_1EE2D8288;
  if (!qword_1EE2D8288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF2198(uint64_t a1)
{
  sub_1E5DF2250(319);
  if (v1 <= 0x3F)
  {
    sub_1E5DF232C();
    if (v2 <= 0x3F)
    {
      sub_1E5DF2384(319);
      if (v3 <= 0x3F)
      {
        sub_1E5DF2434(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E5DF2250(uint64_t a1)
{
  if (!qword_1EE2D4A18)
  {
    sub_1E65DE788();
    sub_1E5DF22E4(&qword_1EE2D6880, MEMORY[0x1E699CC08], MEMORY[0x1E699CC20]);
    v1 = sub_1E65E4DC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4A18);
    }
  }
}

uint64_t sub_1E5DF22E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E5DF232C()
{
  if (!qword_1EE2D4A10)
  {
    v0 = sub_1E65E4DC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4A10);
    }
  }
}

void sub_1E5DF2384(uint64_t a1)
{
  if (!qword_1EE2D4A20)
  {
    sub_1E5DF23E0();
    v1 = sub_1E65E4DC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4A20);
    }
  }
}

unint64_t sub_1E5DF23E0()
{
  result = qword_1EE2D68B0;
  if (!qword_1EE2D68B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D68B0);
  }

  return result;
}

void sub_1E5DF2434(uint64_t a1)
{
  if (!qword_1EE2D4A28)
  {
    sub_1E65DE508();
    sub_1E5DF22E4(&qword_1EE2D68D8, MEMORY[0x1E699CAD0], MEMORY[0x1E699CAE8]);
    v1 = sub_1E65E4DC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4A28);
    }
  }
}

uint64_t type metadata accessor for ArtworkDescriptor(uint64_t a1)
{
  result = qword_1EE2D9E88;
  if (!qword_1EE2D9E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF255C(uint64_t a1)
{
  type metadata accessor for ArtworkContent(319);
  if (v1 <= 0x3F)
  {
    sub_1E5DF2968(319);
    if (v2 <= 0x3F)
    {
      sub_1E5DF0194();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for ArtworkContent(uint64_t a1)
{
  result = qword_1EE2DAAA8;
  if (!qword_1EE2DAAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF265C(uint64_t a1)
{
  sub_1E5DF2754();
  if (v1 <= 0x3F)
  {
    sub_1E5DF270C();
    if (v2 <= 0x3F)
    {
      sub_1E5DF1EC4();
      if (v3 <= 0x3F)
      {
        sub_1E5DF2860(319);
        if (v4 <= 0x3F)
        {
          sub_1E5DF28E0(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E5DF270C()
{
  if (!qword_1EE2D6B90)
  {
    sub_1E5DF2784(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D6B90);
    }
  }
}

uint64_t sub_1E5DF2754()
{
  result = qword_1EE2D48E8;
  if (!qword_1EE2D48E8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE2D48E8);
  }

  return result;
}

void sub_1E5DF2784(uint64_t a1)
{
  if (!qword_1EE2D6B80)
  {
    sub_1E65DB268();
    sub_1E5DF2818(&qword_1EE2D6D80, MEMORY[0x1E699D120], MEMORY[0x1E699D118]);
    v1 = sub_1E65DC428();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D6B80);
    }
  }
}

uint64_t sub_1E5DF2818(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E5DF2860(uint64_t a1)
{
  if (!qword_1EE2D6D88)
  {
    sub_1E65DB268();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073548, &qword_1E65ED508);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D6D88);
    }
  }
}

void sub_1E5DF28E0(uint64_t a1)
{
  if (!qword_1EE2D71C0)
  {
    sub_1E65D76F8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075D78, &qword_1E65F38F8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2D71C0);
    }
  }
}

void sub_1E5DF2968(uint64_t a1)
{
  if (!qword_1EE2D4720)
  {
    sub_1E5DF29C4();
    v1 = sub_1E65E6278();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4720);
    }
  }
}

unint64_t sub_1E5DF29C4()
{
  result = qword_1EE2D9DC8;
  if (!qword_1EE2D9DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9DC8);
  }

  return result;
}

unint64_t sub_1E5DF2A1C()
{
  result = qword_1EE2D9DC0;
  if (!qword_1EE2D9DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9DC0);
  }

  return result;
}

uint64_t sub_1E5DF2A90(uint64_t a1)
{
  result = sub_1E65D76F8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ContextMenu.Context(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1E5DF2B34(uint64_t a1)
{
  sub_1E5DF2BD8(319);
  if (v3 <= 0x3F)
  {
    v4 = v2;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
  }
}

void sub_1E5DF2BD8(uint64_t a1)
{
  if (!qword_1EE2D68F8)
  {
    type metadata accessor for WorkoutContextMenuLoadState(255);
    sub_1E5DF2D50(&qword_1EE2D81C0, type metadata accessor for WorkoutContextMenuLoadState, &unk_1E66051FC);
    sub_1E5DF2D50(&qword_1EE2D81D8, type metadata accessor for WorkoutContextMenuLoadState, &unk_1E66051D4);
    sub_1E5DF2D50(&qword_1EE2D81D0, type metadata accessor for WorkoutContextMenuLoadState, &unk_1E6605194);
    v1 = sub_1E65DE4B8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D68F8);
    }
  }
}

uint64_t type metadata accessor for WorkoutContextMenuLoadState(uint64_t a1)
{
  result = qword_1EE2D81B0;
  if (!qword_1EE2D81B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5DF2D50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5DF2DE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5DF2E28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5DF2E70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ItemContext(uint64_t a1)
{
  result = qword_1EE2DB708;
  if (!qword_1EE2DB708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF2F04(uint64_t a1)
{
  sub_1E5DF30F8();
  if (v1 <= 0x3F)
  {
    sub_1E5DF3128(319, &qword_1EE2D9DB8, type metadata accessor for BrowseItemContext);
    if (v2 <= 0x3F)
    {
      sub_1E5DF32C8();
      if (v3 <= 0x3F)
      {
        sub_1E5DF3128(319, &qword_1EE2D6B50, MEMORY[0x1E699E0B0]);
        if (v4 <= 0x3F)
        {
          sub_1E5DF3128(319, qword_1EE2D9AE8, type metadata accessor for LibraryItemContext);
          if (v5 <= 0x3F)
          {
            sub_1E5DF3128(319, &qword_1EE2D65C0, MEMORY[0x1E699D680]);
            if (v6 <= 0x3F)
            {
              sub_1E5DF3128(319, &qword_1EE2D6088, MEMORY[0x1E699EC90]);
              if (v7 <= 0x3F)
              {
                sub_1E5DF3128(319, qword_1EE2D86F0, type metadata accessor for ProgramDetailItemContext);
                if (v8 <= 0x3F)
                {
                  sub_1E5DF3128(319, &qword_1EE2D9B98, type metadata accessor for SearchItemContext);
                  if (v9 <= 0x3F)
                  {
                    sub_1E5DF3128(319, &qword_1EE2D6218, MEMORY[0x1E699F400]);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

ValueMetadata *sub_1E5DF30F8()
{
  result = qword_1EE2D8B60;
  if (!qword_1EE2D8B60)
  {
    result = &type metadata for AwardDetailItemContext;
    atomic_store(&type metadata for AwardDetailItemContext, &qword_1EE2D8B60);
  }

  return result;
}

void sub_1E5DF3128(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for BrowseItemContext(uint64_t a1)
{
  result = qword_1EE2D9DA8;
  if (!qword_1EE2D9DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5DF31C0(uint64_t a1)
{
  result = sub_1E65DFF38();
  if (v2 <= 0x3F)
  {
    result = sub_1E5DEF56C();
    if (v3 <= 0x3F)
    {
      result = sub_1E65DF978();
      if (v4 <= 0x3F)
      {
        result = sub_1E5DF3298();
        if (v5 <= 0x3F)
        {
          result = sub_1E65DFDA8();
          if (v6 <= 0x3F)
          {
            result = sub_1E65DFC88();
            if (v7 <= 0x3F)
            {
              result = sub_1E65E0128();
              if (v8 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E5DF3298()
{
  result = qword_1EE2D65A8;
  if (!qword_1EE2D65A8)
  {
    result = MEMORY[0x1E699D700];
    atomic_store(MEMORY[0x1E699D700], &qword_1EE2D65A8);
  }

  return result;
}

ValueMetadata *sub_1E5DF32C8()
{
  result = qword_1EE2D9D08[0];
  if (!qword_1EE2D9D08[0])
  {
    result = &type metadata for FilterItemContext;
    atomic_store(&type metadata for FilterItemContext, qword_1EE2D9D08);
  }

  return result;
}

uint64_t type metadata accessor for LibraryItemContext(uint64_t a1)
{
  result = qword_1EE2D9AD8;
  if (!qword_1EE2D9AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF3344(uint64_t a1)
{
  sub_1E5DEF56C();
  if (v1 <= 0x3F)
  {
    sub_1E5DF33B8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E5DF33B8()
{
  if (!qword_1EE2D67B8)
  {
    v0 = sub_1E65DF3B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D67B8);
    }
  }
}

uint64_t type metadata accessor for ProgramDetailItemContext(uint64_t a1)
{
  result = qword_1EE2D86E0;
  if (!qword_1EE2D86E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF344C(uint64_t a1)
{
  sub_1E5DEF56C();
  if (v1 <= 0x3F)
  {
    sub_1E5DF34C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E5DF34C0()
{
  if (!qword_1EE2D6080)
  {
    v0 = sub_1E65E3578();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D6080);
    }
  }
}

uint64_t type metadata accessor for SearchItemContext(uint64_t a1)
{
  result = qword_1EE2D9B88;
  if (!qword_1EE2D9B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF3554(uint64_t a1)
{
  sub_1E5DF3600(319, &qword_1EE2D6B10, MEMORY[0x1E699EF00]);
  if (v1 <= 0x3F)
  {
    sub_1E5DF3600(319, &qword_1EE2D6B18, MEMORY[0x1E699EED0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E5DF3600(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for ItemMetrics(uint64_t a1)
{
  result = qword_1EE2DB620;
  if (!qword_1EE2DB620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF3698(uint64_t a1)
{
  sub_1E65D8C68();
  if (v1 <= 0x3F)
  {
    sub_1E5DF0194();
    if (v2 <= 0x3F)
    {
      sub_1E65D9908();
      if (v3 <= 0x3F)
      {
        sub_1E65D8F28();
        if (v4 <= 0x3F)
        {
          sub_1E65D9F88();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for SectionHeaderSubtitleDescriptor(uint64_t a1)
{
  result = qword_1EE2D7D58;
  if (!qword_1EE2D7D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF37C8(uint64_t a1)
{
  sub_1E5DF383C(319);
  if (v1 <= 0x3F)
  {
    sub_1E5DF38A4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E5DF383C(uint64_t a1)
{
  if (!qword_1EE2D7298)
  {
    sub_1E65D72D8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D7298);
    }
  }
}

void sub_1E5DF38A4(uint64_t a1)
{
  if (!qword_1EE2D7278)
  {
    sub_1E65D72D8();
    v1 = sub_1E65E6668();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D7278);
    }
  }
}

uint64_t type metadata accessor for SectionMetrics(uint64_t a1)
{
  result = qword_1EE2DA920;
  if (!qword_1EE2DA920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF3948(uint64_t a1)
{
  sub_1E65D8F28();
  if (v1 <= 0x3F)
  {
    sub_1E5DF39E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5DF39E4()
{
  if (!qword_1EE2D4948)
  {
    v0 = sub_1E65E5B28();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4948);
    }
  }
}

uint64_t type metadata accessor for ViewDescriptor(uint64_t a1)
{
  result = qword_1EE2DA688;
  if (!qword_1EE2DA688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF3AAC(uint64_t a1)
{
  sub_1E5DF1EC4();
  if (v1 <= 0x3F)
  {
    sub_1E5DF2754();
    if (v2 <= 0x3F)
    {
      sub_1E5DF3B98(319);
      if (v3 <= 0x3F)
      {
        sub_1E5DF4860();
        if (v4 <= 0x3F)
        {
          sub_1E647E838(319);
          if (v5 <= 0x3F)
          {
            sub_1E5DF4890();
            if (v6 <= 0x3F)
            {
              sub_1E5DF48C0(319);
              if (v7 <= 0x3F)
              {
                sub_1E647E994(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E5DF3B98(uint64_t a1)
{
  if (!qword_1EE2D48D0)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1E65DFAE8();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2D48D0);
    }
  }
}

uint64_t sub_1E5DF3DD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5DF3F80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E5DF4010(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = type metadata accessor for Resettable(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1E5DF4064(uint64_t a1)
{
  if (!qword_1EE2D6258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072978, &unk_1E65F0E80);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D6258);
    }
  }
}

void sub_1E5DF4124(uint64_t a1)
{
  if (!qword_1EE2D4A78)
  {
    sub_1E65E1518();
    sub_1E65E1458();
    sub_1E60DE6BC(&qword_1EE2D64F0, MEMORY[0x1E699E860], MEMORY[0x1E699E870]);
    sub_1E60DE6BC(&qword_1EE2D6508, MEMORY[0x1E699E810], MEMORY[0x1E699E828]);
    v1 = sub_1E65E4D68();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4A78);
    }
  }
}

unint64_t sub_1E5DF4210()
{
  result = qword_1EE2D9358[0];
  if (!qword_1EE2D9358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2D9358);
  }

  return result;
}

unint64_t sub_1E5DF4264()
{
  result = qword_1EE2D9350;
  if (!qword_1EE2D9350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9350);
  }

  return result;
}

void sub_1E5DF42B8(uint64_t a1)
{
  if (!qword_1EE2D4A30)
  {
    sub_1E5DF4334();
    v1 = sub_1E65E4D68();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4A30);
    }
  }
}

unint64_t sub_1E5DF4334()
{
  result = qword_1EE2D6828;
  if (!qword_1EE2D6828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6828);
  }

  return result;
}

void sub_1E5DF4388(uint64_t a1)
{
  if (!qword_1EE2D4A70)
  {
    sub_1E65D8418();
    sub_1E60DE6BC(&qword_1EE2D7128, MEMORY[0x1E69CB3C8], MEMORY[0x1E69CB3D8]);
    v1 = sub_1E65E4D68();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4A70);
    }
  }
}

unint64_t sub_1E5DF4448()
{
  result = qword_1EE2DB310;
  if (!qword_1EE2DB310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB310);
  }

  return result;
}

void sub_1E5DF449C(uint64_t a1)
{
  if (!qword_1EE2D4B18)
  {
    sub_1E65D7848();
    sub_1E60DE6BC(&qword_1EE2D7188, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
    v1 = sub_1E65E4CB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4B18);
    }
  }
}

void sub_1E5DF4530(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    sub_1E5FED46C(a5, a3, a4, MEMORY[0x1E69E6500]);
    v9 = sub_1E65E4CB8();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1E5DF45CC(uint64_t a1)
{
  if (!qword_1EE2D4A38)
  {
    sub_1E65DBAB8();
    sub_1E60DE6BC(&qword_1EE2D6BE8, MEMORY[0x1E699D1D0], MEMORY[0x1E699D1E0]);
    v1 = sub_1E65E4D68();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4A38);
    }
  }
}

void sub_1E5DF467C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1E5DF46C8()
{
  result = qword_1EE2D9690;
  if (!qword_1EE2D9690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9690);
  }

  return result;
}

unint64_t sub_1E5DF4720()
{
  result = qword_1EE2D9688;
  if (!qword_1EE2D9688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9688);
  }

  return result;
}

uint64_t sub_1E5DF4774(uint64_t a1)
{
  sub_1E5DF47EC(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1E5DF47EC(uint64_t a1)
{
  if (!qword_1EE2D8AB0)
  {
    type metadata accessor for RemoteParticipantScope(255);
    sub_1E65DA2A8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D8AB0);
    }
  }
}

uint64_t sub_1E5DF4860()
{
  result = qword_1EE2D48E0;
  if (!qword_1EE2D48E0)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE2D48E0);
  }

  return result;
}

uint64_t sub_1E5DF4890()
{
  result = qword_1EE2D48D8;
  if (!qword_1EE2D48D8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE2D48D8);
  }

  return result;
}

void sub_1E5DF48C0(uint64_t a1)
{
  if (!qword_1EE2D6518)
  {
    sub_1E65E1458();
    sub_1E65E1518();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D6518);
    }
  }
}

uint64_t sub_1E5DF4934(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5DF4A9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5DF4B74(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E5DF4BD4(uint64_t a1)
{
  if (!qword_1EE2D4A60)
  {
    sub_1E65D9658();
    sub_1E60DE6BC(&qword_1EE2D7078, MEMORY[0x1E69CC1B0], MEMORY[0x1E69CC1C0]);
    v1 = sub_1E65E4D68();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4A60);
    }
  }
}

uint64_t sub_1E5DF4C84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5DF4CF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5DF4D5C(uint64_t a1)
{
  sub_1E65D7F18();
  v1 = 30;
  if (v4 <= 1u)
  {
    if (!v4)
    {
      v1 = 2;
    }

    goto LABEL_6;
  }

  if (v4 == 3)
  {
LABEL_6:

    type metadata accessor for RouteDetourPresenter(0);
    v2 = swift_allocObject();
    *(v2 + 24) = 0u;
    *(v2 + 40) = 0u;
    type metadata accessor for RouteDetourPresenter.State(0);
    swift_storeEnumTagMultiPayload();
    *(v2 + 16) = v1;
    return v2;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E5DF4E8C(uint64_t a1)
{
  result = type metadata accessor for RouteDetourPresenter.State(319);
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

double static AccountService.live(with:)@<D0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072350, &unk_1E660BBE0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077610, &qword_1E660BBF0);
  sub_1E65D7F18();
  *(&v54 + 1) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B260, &unk_1E660BBF8);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  *(v57 + 8) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B270, &qword_1E660BC08);
  sub_1E65D7F18();
  sub_1E65D7F18();
  v58 = v43;
  sub_1E5DF53D0(v53, &v43);
  v2 = swift_allocObject();
  v3 = v50;
  *(v2 + 112) = v49;
  *(v2 + 128) = v3;
  *(v2 + 144) = v51;
  *(v2 + 160) = v52;
  v4 = v46;
  *(v2 + 48) = v45;
  *(v2 + 64) = v4;
  v5 = v48;
  *(v2 + 80) = v47;
  *(v2 + 96) = v5;
  v6 = v44;
  *(v2 + 16) = v43;
  *(v2 + 32) = v6;
  sub_1E5DF53D0(v53, &v43);
  v7 = swift_allocObject();
  v8 = v50;
  *(v7 + 112) = v49;
  *(v7 + 128) = v8;
  *(v7 + 144) = v51;
  *(v7 + 160) = v52;
  v9 = v46;
  *(v7 + 48) = v45;
  *(v7 + 64) = v9;
  v10 = v48;
  *(v7 + 80) = v47;
  *(v7 + 96) = v10;
  v11 = v44;
  *(v7 + 16) = v43;
  *(v7 + 32) = v11;
  sub_1E5DF53D0(v53, &v43);
  v12 = swift_allocObject();
  v13 = v50;
  *(v12 + 112) = v49;
  *(v12 + 128) = v13;
  *(v12 + 144) = v51;
  *(v12 + 160) = v52;
  v14 = v46;
  *(v12 + 48) = v45;
  *(v12 + 64) = v14;
  v15 = v48;
  *(v12 + 80) = v47;
  *(v12 + 96) = v15;
  v16 = v44;
  *(v12 + 16) = v43;
  *(v12 + 32) = v16;
  sub_1E5DF53D0(v53, &v43);
  v17 = swift_allocObject();
  v18 = v50;
  *(v17 + 112) = v49;
  *(v17 + 128) = v18;
  *(v17 + 144) = v51;
  *(v17 + 160) = v52;
  v19 = v46;
  *(v17 + 48) = v45;
  *(v17 + 64) = v19;
  v20 = v48;
  *(v17 + 80) = v47;
  *(v17 + 96) = v20;
  v21 = v44;
  *(v17 + 16) = v43;
  *(v17 + 32) = v21;
  sub_1E5DF53D0(v53, &v43);
  v22 = swift_allocObject();
  v23 = v50;
  *(v22 + 112) = v49;
  *(v22 + 128) = v23;
  *(v22 + 144) = v51;
  *(v22 + 160) = v52;
  v24 = v46;
  *(v22 + 48) = v45;
  *(v22 + 64) = v24;
  v25 = v48;
  *(v22 + 80) = v47;
  *(v22 + 96) = v25;
  v26 = v44;
  *(v22 + 16) = v43;
  *(v22 + 32) = v26;
  sub_1E5DF53D0(v53, &v43);
  v27 = swift_allocObject();
  v28 = v50;
  *(v27 + 112) = v49;
  *(v27 + 128) = v28;
  *(v27 + 144) = v51;
  *(v27 + 160) = v52;
  v29 = v46;
  *(v27 + 48) = v45;
  *(v27 + 64) = v29;
  v30 = v48;
  *(v27 + 80) = v47;
  *(v27 + 96) = v30;
  v31 = v44;
  *(v27 + 16) = v43;
  *(v27 + 32) = v31;
  sub_1E5DF53D0(v53, &v43);
  v32 = swift_allocObject();
  v33 = v50;
  *(v32 + 112) = v49;
  *(v32 + 128) = v33;
  *(v32 + 144) = v51;
  *(v32 + 160) = v52;
  v34 = v46;
  *(v32 + 48) = v45;
  *(v32 + 64) = v34;
  v35 = v48;
  *(v32 + 80) = v47;
  *(v32 + 96) = v35;
  v36 = v44;
  *(v32 + 16) = v43;
  *(v32 + 32) = v36;
  v37 = swift_allocObject();
  v38 = v57[2];
  *(v37 + 112) = v57[1];
  *(v37 + 128) = v38;
  *(v37 + 144) = v57[3];
  *(v37 + 160) = v58;
  v39 = v55;
  *(v37 + 48) = v54;
  *(v37 + 64) = v39;
  v40 = v57[0];
  *(v37 + 80) = v56;
  *(v37 + 96) = v40;
  result = *v53;
  v42 = v53[1];
  *(v37 + 16) = v53[0];
  *(v37 + 32) = v42;
  *a1 = &unk_1E660BC18;
  a1[1] = v2;
  a1[2] = &unk_1E660BC28;
  a1[3] = v7;
  a1[4] = &unk_1E660BC38;
  a1[5] = v12;
  a1[6] = &unk_1E660BC48;
  a1[7] = v17;
  a1[8] = &unk_1E660BC58;
  a1[9] = v22;
  a1[10] = &unk_1E660BC68;
  a1[11] = v27;
  a1[12] = &unk_1E660BC78;
  a1[13] = v32;
  a1[14] = &unk_1E660BC88;
  a1[15] = v37;
  return result;
}

uint64_t static AppStateService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  type metadata accessor for LiveAppStateService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = v4;
  *a1 = &unk_1E660ABC0;
  a1[1] = v2;
  a1[2] = &unk_1E660ABD0;
  a1[3] = v2;
  a1[4] = &unk_1E660ABE0;
  a1[5] = v2;
  a1[6] = &unk_1E660ABF0;
  a1[7] = v2;
  a1[8] = &unk_1E660AC00;
  a1[9] = v2;
  a1[10] = &unk_1E660AC10;
  a1[11] = v2;
  a1[12] = &unk_1E660AC20;
  a1[13] = v2;
  return swift_retain_n();
}

uint64_t static ArchivedSessionService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC78, &unk_1E6609370);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  type metadata accessor for LiveArchivedSessionService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E5DF599C(v5, v2 + 112);
  *(v2 + 152) = v4;
  *a1 = &unk_1E6609388;
  a1[1] = v2;
  a1[2] = &unk_1E6609398;
  a1[3] = v2;
  a1[4] = &unk_1E66093A8;
  a1[5] = v2;
  a1[6] = &unk_1E66093B8;
  a1[7] = v2;
  a1[8] = &unk_1E66093C8;
  a1[9] = v2;
  a1[10] = &unk_1E66093D8;
  a1[11] = v2;
  a1[12] = &unk_1E66093E8;
  a1[13] = v2;
  a1[14] = &unk_1E66093F8;
  a1[15] = v2;
  return swift_retain_n();
}

uint64_t static BookmarkService.live(with:)@<X0>(void *a2@<X8>)
{
  type metadata accessor for LiveBookmarkService();
  swift_allocObject();

  v4 = sub_1E5DF58D4(v3);

  *a2 = &unk_1E660C7C8;
  a2[1] = v4;
  a2[2] = &unk_1E660C7D8;
  a2[3] = v4;
  a2[4] = &unk_1E660C7E8;
  a2[5] = v4;
  a2[6] = &unk_1E660C7F8;
  a2[7] = v4;
  a2[8] = &unk_1E660C808;
  a2[9] = v4;
  a2[10] = &unk_1E660C818;
  a2[11] = v4;
  a2[12] = &unk_1E660C828;
  a2[13] = v4;
  a2[14] = &unk_1E660C838;
  a2[15] = v4;
  a2[16] = &unk_1E660C848;
  a2[17] = v4;
  a2[18] = &unk_1E660C858;
  a2[19] = v4;
  a2[20] = &unk_1E660C868;
  a2[21] = v4;
  a2[22] = &unk_1E660C878;
  a2[23] = v4;
  a2[24] = &unk_1E660C888;
  a2[25] = v4;
  a2[26] = &unk_1E660C898;
  a2[27] = v4;
  a2[28] = &unk_1E660C8A8;
  a2[29] = v4;
  a2[30] = &unk_1E660C8B8;
  a2[31] = v4;
  a2[32] = &unk_1E660C8C8;
  a2[33] = v4;
  a2[34] = &unk_1E660C8D8;
  a2[35] = v4;
  return swift_retain_n();
}

uint64_t sub_1E5DF58D4(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  *(v2 + 152) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFC8, &unk_1E660AB90);
  sub_1E65D7F18();
  sub_1E6557D7C(v5, v2 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  *(v2 + 160) = v5[0];
  sub_1E65D7F18();
  *(v2 + 176) = v5[0];
  return v2;
}

uint64_t sub_1E5DF599C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t static CatalogService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD00, &unk_1E660EBA0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBD8, &qword_1E660EBB0);
  sub_1E65D7F18();
  type metadata accessor for LiveCatalogService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E5DF599C(&v5, v2 + 112);
  *(v2 + 152) = *(&v4[2] + 8);
  sub_1E5DF599C(v4, v2 + 168);
  *a1 = &unk_1E660EBC0;
  a1[1] = v2;
  a1[2] = &unk_1E660EBD0;
  a1[3] = v2;
  a1[4] = &unk_1E660EBE0;
  a1[5] = v2;
  a1[6] = &unk_1E660EBF0;
  a1[7] = v2;
  a1[8] = &unk_1E660EC00;
  a1[9] = v2;
  a1[10] = &unk_1E660EC10;
  a1[11] = v2;
  a1[12] = &unk_1E660EC20;
  a1[13] = v2;
  a1[14] = &unk_1E660EC30;
  a1[15] = v2;
  a1[16] = &unk_1E660EC40;
  a1[17] = v2;
  a1[18] = &unk_1E660EC50;
  a1[19] = v2;
  a1[20] = &unk_1E660EC60;
  a1[21] = v2;
  a1[22] = &unk_1E660EC70;
  a1[23] = v2;
  a1[24] = &unk_1E660EC80;
  a1[25] = v2;
  a1[26] = &unk_1E660EC90;
  a1[27] = v2;
  a1[28] = &unk_1E660ECA0;
  a1[29] = v2;
  a1[30] = &unk_1E660ECB0;
  a1[31] = v2;
  a1[32] = &unk_1E660ECC0;
  a1[33] = v2;
  a1[34] = &unk_1E660ECD0;
  a1[35] = v2;
  a1[36] = &unk_1E660ECE0;
  a1[37] = v2;
  a1[38] = &unk_1E660ECF0;
  a1[39] = v2;
  a1[40] = &unk_1E660ED00;
  a1[41] = v2;
  a1[42] = &unk_1E660ED10;
  a1[43] = v2;
  a1[44] = &unk_1E660ED20;
  a1[45] = v2;
  a1[46] = &unk_1E660ED30;
  a1[47] = v2;
  a1[48] = &unk_1E660ED40;
  a1[49] = v2;
  a1[50] = &unk_1E660ED50;
  a1[51] = v2;
  a1[52] = &unk_1E660ED60;
  a1[53] = v2;
  a1[54] = &unk_1E660ED70;
  a1[55] = v2;
  a1[56] = &unk_1E660ED80;
  a1[57] = v2;
  a1[58] = &unk_1E660ED90;
  a1[59] = v2;
  a1[60] = &unk_1E660EDA0;
  a1[61] = v2;
  a1[62] = &unk_1E660EDB0;
  a1[63] = v2;
  a1[64] = &unk_1E660EDC0;
  a1[65] = v2;
  a1[66] = &unk_1E660EDD0;
  a1[67] = v2;
  a1[68] = &unk_1E660EDE0;
  a1[69] = v2;
  return swift_retain_n();
}

uint64_t static ConfigurationService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEE0, &qword_1E660A720);
  sub_1E65D7F18();
  type metadata accessor for LiveConfigurationService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E5DF599C(&v4, v2 + 112);
  *a1 = &unk_1E660A730;
  a1[1] = v2;
  a1[2] = &unk_1E660A740;
  a1[3] = v2;
}

uint64_t static ContentAvailabilityService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B8D0, &unk_1E660D6C0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B8D8, &qword_1E660D6D0);
  sub_1E65D7F18();
  type metadata accessor for LiveContentAvailabilityService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E5DF599C(&v5, v2 + 112);
  *(v2 + 152) = *(&v4[2] + 8);
  sub_1E5DF599C(v4, v2 + 168);
  *a1 = &unk_1E660D6E0;
  a1[1] = v2;
  a1[2] = &unk_1E660D6F0;
  a1[3] = v2;
  a1[4] = &unk_1E660D700;
  a1[5] = v2;
  a1[6] = &unk_1E660D710;
  a1[7] = v2;
  a1[8] = &unk_1E660D720;
  a1[9] = v2;
  a1[10] = &unk_1E660D730;
  a1[11] = v2;
  a1[12] = &unk_1E660D740;
  a1[13] = v2;
  a1[14] = &unk_1E660D750;
  a1[15] = v2;
  a1[16] = &unk_1E660D760;
  a1[17] = v2;
  a1[18] = &unk_1E660D770;
  a1[19] = v2;
  a1[20] = &unk_1E660D780;
  a1[21] = v2;
  return swift_retain_n();
}

uint64_t static EngagementService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077610, &qword_1E660BBF0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782B8, &qword_1E660CD20);
  sub_1E65D7F18();
  type metadata accessor for LiveEngagementService();
  swift_allocObject();
  v2 = sub_1E5DF61E4(v4[5], v4);
  swift_unknownObjectRelease();
  *a1 = &unk_1E660CD30;
  a1[1] = v2;
  a1[2] = &unk_1E660CD40;
  a1[3] = v2;
  a1[4] = &unk_1E660CD50;
  a1[5] = v2;
  a1[6] = &unk_1E660CD60;
  a1[7] = v2;
  a1[8] = &unk_1E660CD70;
  a1[9] = v2;
  a1[10] = &unk_1E660CD80;
  a1[11] = v2;
  a1[12] = &unk_1E660CD90;
  a1[13] = v2;
  a1[14] = &unk_1E660CDA0;
  a1[15] = v2;
  a1[16] = &unk_1E660CDB0;
  a1[17] = v2;
  return swift_retain_n();
}

uint64_t sub_1E5DF61E4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1E65DDE68();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23[-1] - v12;
  swift_defaultActor_initialize();
  *(v3 + 112) = a1;
  sub_1E5DF650C(a2, v3 + 120);
  (*(v7 + 104))(v9, *MEMORY[0x1E69CAB78], v6);
  LOBYTE(v23[0]) = 0;
  swift_unknownObjectRetain();
  sub_1E65DDC88();
  sub_1E65DDC48();
  LODWORD(v9) = LOBYTE(v23[0]);
  v14 = [objc_allocWithZone(MEMORY[0x1E698C8D8]) initWithBag_];
  if (v9 == 1)
  {
    v15 = swift_allocObject();
    v15[5] = sub_1E5DFC17C();
    v15[6] = &off_1F5FCBDA0;
    v15[2] = v14;
    v16 = &off_1F5FCBE78;
    v17 = &type metadata for TestEngagementMessageFetcher;
    v14 = v15;
  }

  else
  {
    v17 = sub_1E5DFC17C();
    v16 = &off_1F5FCBDA0;
  }

  v23[3] = v17;
  v23[4] = v16;
  v23[0] = v14;
  type metadata accessor for EngagementPlacementRegistry();
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  v19 = MEMORY[0x1E69E7CC0];
  v18[22] = sub_1E5DFC1EC(MEMORY[0x1E69E7CC0]);
  v18[23] = sub_1E5E09FFC(v19);
  sub_1E5DF650C(v23, (v18 + 14));
  v18[19] = 0x7373656E746966;
  v18[20] = 0xE700000000000000;
  v20 = sub_1E659C210(v19);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v11 + 8))(v13, v10);
  __swift_destroy_boxed_opaque_existential_1(v23);
  v18[21] = v20;
  *(v3 + 160) = v18;
  return v3;
}

uint64_t sub_1E5DF64D4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5DF650C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t static LocalizationService.live(with:)@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC08, &unk_1E6608E80);
  sub_1E65D7F18();
  type metadata accessor for LiveLocalizationService(0);
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_dateComponentsFormatter;
  *(v2 + v3) = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  v4 = OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_numberFormatter;
  *(v2 + v4) = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1E5DF650C(v6, v2 + OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_storefrontLocalizer);
  sub_1E65D77A8();
  __swift_destroy_boxed_opaque_existential_1(v6);
  *a1 = sub_1E651E19C;
  a1[1] = v2;
  a1[2] = sub_1E651E1A4;
  a1[3] = v2;
  a1[4] = sub_1E651E32C;
  a1[5] = v2;
  return swift_retain_n();
}

uint64_t type metadata accessor for LiveLocalizationService(uint64_t a1)
{
  result = qword_1EE2D55B8;
  if (!qword_1EE2D55B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5DF66E8(uint64_t a1)
{
  result = sub_1E65D7848();
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

double static MarketingService.live(with:)@<D0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077610, &qword_1E660BBF0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B960, &qword_1E660DC18);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072360, &qword_1E65EAB90);
  sub_1E65D7F18();
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B970, &unk_1E6603F00);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B978, &qword_1E660DC20);
  sub_1E65D7F18();
  *v59 = v58;
  *&v59[8] = v45;
  BYTE8(v64) = v57;
  sub_1E65A44A8(v59, &v45);
  v2 = swift_allocObject();
  v3 = v54;
  v2[9] = v53;
  v2[10] = v3;
  v4 = v56;
  v2[11] = v55;
  v2[12] = v4;
  v5 = v50;
  v2[5] = v49;
  v2[6] = v5;
  v6 = v52;
  v2[7] = v51;
  v2[8] = v6;
  v7 = v46;
  v2[1] = v45;
  v2[2] = v7;
  v8 = v48;
  v2[3] = v47;
  v2[4] = v8;
  sub_1E65A44A8(v59, &v45);
  v9 = swift_allocObject();
  v10 = v54;
  v9[9] = v53;
  v9[10] = v10;
  v11 = v56;
  v9[11] = v55;
  v9[12] = v11;
  v12 = v50;
  v9[5] = v49;
  v9[6] = v12;
  v13 = v52;
  v9[7] = v51;
  v9[8] = v13;
  v14 = v46;
  v9[1] = v45;
  v9[2] = v14;
  v15 = v48;
  v9[3] = v47;
  v9[4] = v15;
  sub_1E65A44A8(v59, &v45);
  v16 = swift_allocObject();
  v17 = v54;
  v16[9] = v53;
  v16[10] = v17;
  v18 = v56;
  v16[11] = v55;
  v16[12] = v18;
  v19 = v50;
  v16[5] = v49;
  v16[6] = v19;
  v20 = v52;
  v16[7] = v51;
  v16[8] = v20;
  v21 = v46;
  v16[1] = v45;
  v16[2] = v21;
  v22 = v48;
  v16[3] = v47;
  v16[4] = v22;
  sub_1E65A44A8(v59, &v45);
  v23 = swift_allocObject();
  v24 = v54;
  v23[9] = v53;
  v23[10] = v24;
  v25 = v56;
  v23[11] = v55;
  v23[12] = v25;
  v26 = v50;
  v23[5] = v49;
  v23[6] = v26;
  v27 = v52;
  v23[7] = v51;
  v23[8] = v27;
  v28 = v46;
  v23[1] = v45;
  v23[2] = v28;
  v29 = v48;
  v23[3] = v47;
  v23[4] = v29;
  sub_1E65A44A8(v59, &v45);
  v30 = swift_allocObject();
  v31 = v54;
  v30[9] = v53;
  v30[10] = v31;
  v32 = v56;
  v30[11] = v55;
  v30[12] = v32;
  v33 = v50;
  v30[5] = v49;
  v30[6] = v33;
  v34 = v52;
  v30[7] = v51;
  v30[8] = v34;
  v35 = v46;
  v30[1] = v45;
  v30[2] = v35;
  v36 = v48;
  v30[3] = v47;
  v30[4] = v36;
  v37 = swift_allocObject();
  v38 = v67;
  v37[9] = v66;
  v37[10] = v38;
  v39 = v69;
  v37[11] = v68;
  v37[12] = v39;
  v40 = v63;
  v37[5] = v62;
  v37[6] = v40;
  v41 = v65;
  v37[7] = v64;
  v37[8] = v41;
  v42 = *&v59[16];
  v37[1] = *v59;
  v37[2] = v42;
  result = *&v60;
  v44 = v61;
  v37[3] = v60;
  v37[4] = v44;
  *a1 = &unk_1E660DC30;
  a1[1] = v2;
  a1[2] = &unk_1E660DC40;
  a1[3] = v9;
  a1[4] = &unk_1E660DC50;
  a1[5] = v16;
  a1[6] = &unk_1E660DC60;
  a1[7] = v23;
  a1[8] = &unk_1E660DC70;
  a1[9] = v30;
  a1[10] = &unk_1E660DC80;
  a1[11] = v37;
  return result;
}

uint64_t sub_1E5DF6B78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5DF6BC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E5DF6CE4()
{
  result = qword_1EE2D7500;
  if (!qword_1EE2D7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7500);
  }

  return result;
}

unint64_t sub_1E5DF6D3C()
{
  result = qword_1EE2D7518;
  if (!qword_1EE2D7518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7518);
  }

  return result;
}

void sub_1E5DF6D94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1E5DF6E00()
{
  result = qword_1EE2D7520;
  if (!qword_1EE2D7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7520);
  }

  return result;
}

uint64_t sub_1E5DF6E84()
{
  v0 = sub_1E65E3B68();
  __swift_allocate_value_buffer(v0, qword_1EE2EA2A0);
  __swift_project_value_buffer(v0, qword_1EE2EA2A0);
  return sub_1E65E3B58();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static AwardsService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB38, &unk_1E660E5A0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  type metadata accessor for LiveAwardsService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E5DF599C(&v5, v2 + 112);
  *(v2 + 152) = v4;
  *a1 = &unk_1E660E5B8;
  a1[1] = v2;
  a1[2] = &unk_1E660E5C8;
  a1[3] = v2;
  a1[4] = &unk_1E660E5D8;
  a1[5] = v2;
  a1[6] = &unk_1E660E5E8;
  a1[7] = v2;
  a1[8] = &unk_1E660E5F8;
  a1[9] = v2;
  a1[10] = &unk_1E660E608;
  a1[11] = v2;
  a1[12] = &unk_1E660E618;
  a1[13] = v2;
  a1[14] = &unk_1E660E628;
  a1[15] = v2;
  return swift_retain_n();
}

uint64_t static AppEnvironment.live(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077610, &qword_1E660BBF0);
  sub_1E65D7F18();
  v4 = sub_1E65DAE28();
  v5 = type metadata accessor for AppEnvironment(0);
  static AccountService.live(with:)((a2 + v5[6]));
  static AppStateService.live(with:)((a2 + v5[7]));
  static ArchivedSessionService.live(with:)((a2 + v5[8]));
  static AssetService.live(with:)((a2 + v5[9]));
  static AwardsService.live(with:)((a2 + v5[10]));
  static BookmarkService.live(with:)((a2 + v5[11]));
  static CatalogService.live(with:)((a2 + v5[12]));
  static ConfigurationService.live(with:)((a2 + v5[13]));
  static ContentAvailabilityService.live(with:)((a2 + v5[14]));
  static EngagementService.live(with:)((a2 + v5[15]));
  static HealthDataService.live(with:)((a2 + v5[16]));
  static InteropService.default(with:)(a1, (a2 + v5[17]));
  static LocalizationService.live(with:)((a2 + v5[18]));
  static MarketingService.live(with:)((a2 + v5[19]));
  static MetricService.live(with:)((a2 + v5[20]));
  static PersonalizationService.live(with:)((a2 + v5[21]));
  static PlayerService.default(with:)(a1, (a2 + v5[22]));
  static PrivacyPreferenceService.live(with:)((a2 + v5[23]));
  static RecommendationService.live(with:)((a2 + v5[24]));
  static RemoteBrowsingService.live(with:)((a2 + v5[25]));
  static SearchService.live(with:)((a2 + v5[26]));
  static ServiceSubscriptionService.live(with:)((a2 + v5[27]));
  static SessionService.live(with:)((a2 + v5[28]));
  static SharePlayService.live(with:)((a2 + v5[29]));
  static SiriService.live(with:)((a2 + v5[30]));
  static SyncService.live(with:)((a2 + v5[31]));
  type metadata accessor for LiveToastService();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B40, &qword_1E65EC560);
  *(v6 + 112) = sub_1E65E17A8();
  v7 = v5[33];
  swift_retain_n();
  static UpNextQueueService.live(with:)((a2 + v7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077620, &qword_1E65F3398);
  sub_1E65D7F18();
  type metadata accessor for WindowSceneObserver();
  swift_allocObject();
  v8 = WindowSceneObserver.init()();
  result = static WorkoutPlanService.live(with:)((a2 + v5[36]));
  *a2 = v11;
  *(a2 + 8) = v4;
  v10 = (a2 + v5[32]);
  *v10 = &unk_1E65EC570;
  v10[1] = v6;
  v10[2] = &unk_1E65EC580;
  v10[3] = v6;
  v10[4] = &unk_1E65EC590;
  v10[5] = v6;
  *(a2 + v5[35]) = v8;
  return result;
}

uint64_t sub_1E5DF73BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E5DF7474(a1, v4);
}

uint64_t sub_1E5DF7474(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA880;

  return v6(a1);
}

void sub_1E5DF756C()
{
  v1 = v0;
  v76[1] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for JournalRotator(0);
  MEMORY[0x1EEE9AC00](v2);
  v72 = (&v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1E65D74E8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v75 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v73 = &v67 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v67 - v10;
  v74 = objc_opt_self();
  v12 = [v74 defaultManager];
  v13 = sub_1E65D7448();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078150, &qword_1E65FB6D8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E65EA670;
  v15 = *MEMORY[0x1E695DB78];
  *(v14 + 32) = *MEMORY[0x1E695DB78];
  type metadata accessor for URLResourceKey(0);
  v16 = v15;
  v17 = sub_1E65E5EF8();

  v76[0] = 0;
  v18 = [v12 contentsOfDirectoryAtURL:v13 includingPropertiesForKeys:v17 options:7 error:v76];

  v19 = v76[0];
  v69 = v4;
  if (v18)
  {
    v20 = sub_1E65E5F18();
    v21 = v19;

    v72 = *(v20 + 16);
    if (v72)
    {
      v22 = 0;
      v70 = (v5 + 32);
      v71 = v5 + 16;
      v67 = (v5 + 8);
      v23 = MEMORY[0x1E69E7CC0];
      v24 = v69;
      v68 = v5;
      while (v22 < *(v20 + 16))
      {
        v25 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v26 = *(v5 + 72);
        (*(v5 + 16))(v11, v20 + v25 + v26 * v22, v24);
        sub_1E65D7438();
        v27 = sub_1E65E5E28();

        if (v27)
        {
          (*v67)(v11, v24);
        }

        else
        {
          v28 = *v70;
          (*v70)(v73, v11, v24);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v76[0] = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E5DFE56C(0, v23[2] + 1, 1);
            v23 = v76[0];
          }

          v31 = v23[2];
          v30 = v23[3];
          if (v31 >= v30 >> 1)
          {
            sub_1E5DFE56C((v30 > 1), v31 + 1, 1);
            v23 = v76[0];
          }

          v23[2] = v31 + 1;
          v32 = v23 + v25 + v31 * v26;
          v24 = v69;
          v28(v32, v73, v69);
          v5 = v68;
        }

        if (v72 == ++v22)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC0];
      v24 = v69;
LABEL_18:
      v72 = v23;

      if (qword_1EE2D7790 == -1)
      {
        goto LABEL_19;
      }
    }

    swift_once();
LABEL_19:
    v46 = sub_1E65E3B68();
    __swift_project_value_buffer(v46, qword_1EE2EA2A0);
    v47 = v72;

    v48 = sub_1E65E3B48();
    v49 = sub_1E65E6338();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v76[0] = v51;
      *v50 = 136315138;
      v52 = MEMORY[0x1E694D940](v47, v24);
      v54 = sub_1E5DFD4B0(v52, v53, v76);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_1E5DE9000, v48, v49, "Sanitizing non-Journals: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x1E694F1C0](v51, -1, -1);
      MEMORY[0x1E694F1C0](v50, -1, -1);
    }

    v55 = *(v47 + 16);
    if (v55)
    {
      v57 = *(v5 + 16);
      v56 = v5 + 16;
      v73 = v57;
      v58 = v47 + ((*(v56 + 64) + 32) & ~*(v56 + 64));
      v59 = *(v56 + 56);
      (v57)(v75, v58, v24);
      while (1)
      {
        v62 = [v74 defaultManager];
        sub_1E65D7498();
        v63 = sub_1E65E5C48();

        v76[0] = 0;
        v64 = [v62 removeItemAtPath:v63 error:v76];

        if (v64)
        {
          v60 = v76[0];
        }

        else
        {
          v65 = v76[0];
          v66 = sub_1E65D73B8();

          swift_willThrow();
        }

        v61 = v75;
        (*(v56 - 8))(v75, v24);
        v58 += v59;
        if (!--v55)
        {
          break;
        }

        (v73)(v61, v58, v24);
      }
    }

    return;
  }

  v33 = v76[0];
  v34 = sub_1E65D73B8();

  swift_willThrow();
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v35 = sub_1E65E3B68();
  __swift_project_value_buffer(v35, qword_1EE2EA2A0);
  sub_1E5E057B0(v1, v72);
  v36 = sub_1E65E3B48();
  v37 = sub_1E65E6328();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = v72;
    v40 = v38;
    v41 = swift_slowAlloc();
    v76[0] = v41;
    *v40 = 136315138;
    sub_1E5DFA51C(&qword_1EE2D71E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v42 = sub_1E65E6BC8();
    v44 = v43;
    sub_1E5E05BCC(v39);
    v45 = sub_1E5DFD4B0(v42, v44, v76);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_1E5DE9000, v36, v37, "Unable to list contents of %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1E694F1C0](v41, -1, -1);
    MEMORY[0x1E694F1C0](v40, -1, -1);
  }

  else
  {

    sub_1E5E05BCC(v72);
  }
}

void *sub_1E5DF7D84(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B280, &unk_1E660AAC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1E5DF7E0C(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v51[4] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v45 - v6;
  v8 = sub_1E65D76A8();
  v9 = *(v8 - 8);
  v48 = v8;
  v49 = v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v45[0] = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = v45 - v12;
  v13 = objc_opt_self();
  v14 = [v13 defaultManager];
  sub_1E65D7498();
  v15 = sub_1E65E5C48();

  v51[0] = 0;
  v16 = [v14 attributesOfItemAtPath:v15 error:v51];

  v17 = v51[0];
  if (!v16)
  {
    v29 = v51[0];
LABEL_11:
    sub_1E65D73B8();

    swift_willThrow();
    return v29 & 1;
  }

  v45[1] = v2;
  type metadata accessor for FileAttributeKey(0);
  sub_1E5DFA51C(&qword_1EE2D45F8, type metadata accessor for FileAttributeKey, &unk_1E65E9948);
  v18 = sub_1E65E5B08();
  v19 = v17;

  v20 = [v13 defaultManager];
  sub_1E65D7498();
  v21 = sub_1E65E5C48();

  v51[0] = 0;
  v22 = [v20 attributesOfItemAtPath:v21 error:v51];

  v23 = v51[0];
  if (!v22)
  {
    v29 = v51[0];

    goto LABEL_11;
  }

  v24 = sub_1E65E5B08();
  v25 = v23;

  if (!*(v18 + 16) || (v26 = *MEMORY[0x1E696A350], v27 = sub_1E5E0E040(*MEMORY[0x1E696A350]), (v28 & 1) == 0))
  {

    (*(v49 + 56))(v7, 1, 1, v48);
    goto LABEL_9;
  }

  sub_1E5DFA11C(*(v18 + 56) + 32 * v27, v51);

  v29 = v48;
  v30 = swift_dynamicCast();
  v31 = v49;
  v32 = *(v49 + 56);
  v32(v7, v30 ^ 1u, 1, v29);
  v33 = *(v31 + 48);
  if (v33(v7, 1, v29) == 1)
  {

LABEL_9:
    sub_1E62E3040(v7);
    LOBYTE(v29) = 0;
    return v29 & 1;
  }

  v35 = v7;
  v36 = *(v31 + 32);
  v36(v47, v35, v29);
  if (*(v24 + 16) && (v37 = sub_1E5E0E040(v26), v29 = v48, (v38 & 1) != 0))
  {
    sub_1E5DFA11C(*(v24 + 56) + 32 * v37, v51);

    v39 = v46;
    v40 = swift_dynamicCast();
    v32(v39, v40 ^ 1u, 1, v29);
    if (v33(v39, 1, v29) != 1)
    {
      v41 = v45[0];
      v36(v45[0], v39, v29);
      v42 = v47;
      v43 = v29;
      LOBYTE(v29) = sub_1E65D7668();
      v44 = *(v49 + 8);
      v44(v41, v43);
      v44(v42, v43);
      return v29 & 1;
    }

    (*(v49 + 8))(v47, v29);
  }

  else
  {

    (*(v49 + 8))(v47, v29);
    v39 = v46;
    v32(v46, 1, 1, v29);
  }

  sub_1E62E3040(v39);
  LOBYTE(v29) = 1;
  return v29 & 1;
}

uint64_t sub_1E5DF83E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v143 = a3;
  v142 = a1;
  v6 = sub_1E65E07B8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v141 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074FF0, &qword_1E65F1180);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v138 = &v131 - v9;
  v10 = sub_1E65DF6C8();
  v136 = *(v10 - 8);
  v137 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v135 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65DF658();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v134 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for BrowsingIdentity(0);
  MEMORY[0x1EEE9AC00](v132);
  v15 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E65D7848();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E65DE688();
  MEMORY[0x1EEE9AC00](v19);
  v21 = *a2;
  v139 = a2[1];
  v140 = v21;
  (*(v22 + 104))(&v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E699CBC0]);
  sub_1E65DE658();
  v23 = type metadata accessor for AppState(0);
  v24 = a4 + v23[5];
  sub_1E65DEEC8();
  swift_storeEnumTagMultiPayload();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745E0, &qword_1E65F0F90);
  sub_1E5E05C28(v24, v24 + *(v25 + 28), MEMORY[0x1E699CE20]);
  v133 = v18;
  sub_1E65D77C8();
  sub_1E60DE6BC(&qword_1EE2D7188, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
  sub_1E65E4C48();
  sub_1E65D7EB8();
  sub_1E60DE6BC(&qword_1EE2D7160, MEMORY[0x1E69CB0E0], MEMORY[0x1E69CB0F8]);
  sub_1E65E4CA8();
  *(a4 + v23[9]) = 257;
  v145 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074678, &qword_1E660D860);
  v26 = MEMORY[0x1E69E6500];
  sub_1E5FED46C(&qword_1EE2D4700, &qword_1ED074678, &qword_1E660D860, MEMORY[0x1E69E6500]);
  sub_1E65E4C48();
  v27 = (a4 + v23[11]);
  v28 = MEMORY[0x1E69E7CC0];
  v29 = sub_1E5E05C90(MEMORY[0x1E69E7CC0]);
  *v27 = v29;
  v27[1] = v29;
  sub_1E65E1618();
  sub_1E60DE6BC(&qword_1EE2D64D8, MEMORY[0x1E699E8D8], MEMORY[0x1E699E8E8]);

  sub_1E65E4CA8();
  sub_1E65DBAB8();
  sub_1E60DE6BC(&qword_1EE2D6BE8, MEMORY[0x1E699D1D0], MEMORY[0x1E699D1E0]);
  sub_1E65E4D58();
  v30 = (a4 + v23[14]);
  v31 = sub_1E5E05D8C(v28);
  *v30 = v31;
  v30[1] = v31;
  v32 = (a4 + v23[15]);

  v33 = sub_1E5E05F74(v28);
  *v32 = v33;
  v32[1] = v33;
  v34 = (a4 + v23[16]);

  v35 = sub_1E5E06078(v28);
  *v34 = v35;
  v34[1] = v35;
  v36 = (a4 + v23[17]);

  v37 = sub_1E5E06264(v28);
  *v36 = v37;
  v36[1] = v37;
  v38 = a4 + v23[18];
  v39 = sub_1E65DBB88();
  (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074858, &qword_1E65F1008);
  sub_1E5DFD1CC(v38, v38 + *(v40 + 28), &qword_1ED074870, &qword_1E65F1010);
  v41 = a4 + v23[19];
  v42 = *MEMORY[0x1E699D2A8];
  v43 = sub_1E65DBD48();
  v44 = *(v43 - 8);
  (*(v44 + 104))(v41, v42, v43);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48);
  (*(v44 + 16))(v41 + *(v45 + 28), v41, v43);
  sub_1E65D9AC8();
  sub_1E60DE6BC(&qword_1EE2D7048, MEMORY[0x1E69CC658], MEMORY[0x1E69CC670]);

  sub_1E65E4CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0748E0, &qword_1E660F180);
  sub_1E5FED46C(&qword_1EE2D46F8, &qword_1ED0748E0, &qword_1E660F180, v26);
  sub_1E65E4CA8();
  sub_1E5DF46C8();
  sub_1E65E4D58();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  (*(*(v46 - 8) + 56))(v15, 1, 1, v46);
  sub_1E60DE6BC(qword_1EE2DA468, type metadata accessor for BrowsingIdentity, &protocol conformance descriptor for BrowsingIdentity);
  sub_1E65E4C48();
  v47 = (a4 + v23[24]);
  v48 = sub_1E5E06378(v28);
  *v47 = v48;
  v47[1] = v48;
  v49 = (a4 + v23[25]);

  v50 = sub_1E5E06564(v28);
  *v49 = v50;
  v49[1] = v50;
  v51 = a4 + v23[26];
  v52 = *MEMORY[0x1E699D6A8];
  v53 = sub_1E65E02A8();
  v54 = *(v53 - 8);
  (*(v54 + 104))(v51, v52, v53);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0749A0, &qword_1E65F1038);
  (*(v54 + 16))(v51 + *(v55 + 28), v51, v53);
  v56 = a4 + v23[27];

  sub_1E65E2378();
  v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0) + 28);
  v58 = sub_1E65E23A8();
  (*(*(v58 - 8) + 16))(v56 + v57, v56, v58);
  *(a4 + v23[28]) = 0x3FF0000000000000;
  sub_1E5DF23E0();
  sub_1E65E4D58();
  v59 = v23[30];
  *(a4 + v59) = sub_1E5E0675C(v28);
  sub_1E65E61D8();
  sub_1E65DA8C8();
  sub_1E60DE6BC(&qword_1EE2D6FC8, MEMORY[0x1E69CD000], MEMORY[0x1E69CD010]);
  sub_1E65E4D38();
  v60 = v23[32];
  *(a4 + v60) = sub_1E5E06988(v28);
  v61 = (a4 + v23[33]);
  v62 = sub_1E5E06B74(v28);
  *v61 = v62;
  v61[1] = v62;
  v63 = a4 + v23[34];
  *v63 = 0;
  *(v63 + 8) = 0;
  *(v63 + 16) = 0;
  *(v63 + 24) = 2;
  *(v63 + 25) = v145;
  *(v63 + 28) = *(&v145 + 3);
  *(v63 + 40) = 0;
  *(v63 + 48) = 0;
  *(v63 + 32) = 0;
  *(v63 + 56) = 2;
  v64 = a4 + v23[35];
  *v64 = 0;
  *(v64 + 8) = 2;
  v65 = a4 + v23[36];

  sub_1E65DC5D8();
  v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072800, &qword_1E65EBDF8) + 28);
  v67 = sub_1E65DC638();
  (*(*(v67 - 8) + 16))(v65 + v66, v65, v67);
  v68 = v23[37];
  *(a4 + v68) = sub_1E5DFE000(v28);
  sub_1E65E61D8();
  sub_1E65E4C68();
  *(a4 + v23[39]) = 0;
  *(a4 + v23[40]) = 0;
  sub_1E65E61D8();
  sub_1E65E4C68();
  sub_1E65E61D8();
  sub_1E65D76A8();
  sub_1E60DE6BC(&qword_1EE2D71D0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  sub_1E65E4C68();
  v69 = (a4 + v23[43]);
  v70 = sub_1E5DFE1E8(v28);
  *v69 = v70;
  v69[1] = v70;
  v71 = (a4 + v23[44]);

  v72 = sub_1E5DFE3F8(v28);
  *v71 = v72;
  v71[1] = v72;
  v73 = a4 + v23[45];
  (*(v136 + 104))(v135, *MEMORY[0x1E699E6F0], v137);

  sub_1E65DF638();
  sub_1E65D77C8();
  sub_1E65DF598();
  v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BD8, &qword_1E65F10B0) + 28);
  v75 = sub_1E65DF608();
  (*(*(v75 - 8) + 16))(v73 + v74, v73, v75);
  sub_1E65E61D8();
  sub_1E65E1518();
  sub_1E65E1458();
  sub_1E60DE6BC(&qword_1EE2D64F0, MEMORY[0x1E699E860], MEMORY[0x1E699E870]);
  sub_1E60DE6BC(&qword_1EE2D6508, MEMORY[0x1E699E810], MEMORY[0x1E699E828]);
  sub_1E65E4D38();
  sub_1E65E61D8();
  sub_1E65D9798();
  sub_1E60DE6BC(&qword_1EE2D7070, MEMORY[0x1E69CC2C8], MEMORY[0x1E69CC2D8]);
  sub_1E65E4D38();
  v76 = (a4 + v23[48]);
  v77 = v28;
  v78 = sub_1E5DF9D44(v28);
  v79 = sub_1E5E06D90(v28);
  v80 = sub_1E5E06FB4(v28);
  v81 = sub_1E5E071AC(v28);
  v82 = sub_1E5E06D90(v28);
  v83 = sub_1E5E073A4(v77);
  v84 = sub_1E5DF9D44(v77);
  v135 = v78;
  v136 = v79;
  *v76 = v78;
  v76[1] = v79;
  v137 = v80;
  v76[2] = v80;
  v76[3] = v81;
  v76[4] = v82;
  v76[5] = v83;
  v76[6] = v84;
  v76[7] = v78;
  v76[8] = v79;
  v76[9] = v80;
  v76[10] = v81;
  v76[11] = v82;
  v76[12] = v83;
  v76[13] = v84;
  v85 = a4 + v23[49];
  v86 = *MEMORY[0x1E699D0E0];
  v87 = sub_1E65DB1C8();
  v88 = *(v87 - 8);
  (*(v88 + 104))(v85, v86, v87);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C70, &qword_1E65F10D0);
  (*(v88 + 16))(v85 + *(v89 + 28), v85, v87);
  sub_1E5E01620();

  sub_1E65E4CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CB0, &unk_1E660F800);
  sub_1E60DB408();
  sub_1E65E4CA8();
  sub_1E65E4CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CD0, &qword_1E660EF60);
  sub_1E5E01674();
  sub_1E65E4CA8();
  v90 = a4 + v23[54];
  v91 = sub_1E65E1BA8();
  (*(*(v91 - 8) + 56))(v138, 1, 1, v91);
  v92 = MEMORY[0x1E69E7CD0];
  sub_1E65E1AB8();
  v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8) + 28);
  v94 = sub_1E65E1B08();
  (*(*(v94 - 8) + 16))(v90 + v93, v90, v94);
  v95 = a4 + v23[55];
  sub_1E65E1B28();
  sub_1E60DE6BC(&qword_1EE2D6490, MEMORY[0x1E699EA00], MEMORY[0x1E699EA10]);
  sub_1E65E4CA8();
  v96 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073560, &qword_1E65ED560) + 28);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073568, &qword_1E65FD8A0);
  (*(*(v97 - 8) + 16))(v95 + v96, v95, v97);
  sub_1E65E1F68();
  sub_1E60DE6BC(&unk_1EE2D62B0, MEMORY[0x1E699F160], MEMORY[0x1E699F170]);
  sub_1E65E4CA8();
  v98 = a4 + v23[57];
  v99 = *MEMORY[0x1E699F368];
  v100 = sub_1E65E2628();
  v101 = *(v100 - 8);
  (*(v101 + 104))(v98, v99, v100);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745B0, &qword_1E65F0F38);
  (*(v101 + 16))(v98 + *(v102 + 28), v98, v100);
  v103 = (a4 + v23[58]);
  v104 = MEMORY[0x1E69E7CC0];
  v105 = sub_1E5E0759C(MEMORY[0x1E69E7CC0]);
  *v103 = v105;
  v103[1] = v105;

  sub_1E65E61D8();
  sub_1E65D94D8();
  sub_1E60DE6BC(&qword_1EE2D7090, MEMORY[0x1E69CC100], MEMORY[0x1E69CC110]);
  sub_1E65E4D38();
  v106 = a4 + v23[60];
  v107 = *MEMORY[0x1E699ED60];
  v108 = sub_1E65E3838();
  v109 = *(v108 - 8);
  (*(v109 + 104))(v106, v107, v108);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DD0, &qword_1E65F1100);
  (*(v109 + 16))(v106 + *(v110 + 28), v106, v108);
  *(a4 + v23[61]) = 0;
  v111 = a4 + v23[62];
  *v111 = xmmword_1E65EAE00;
  v112 = (a4 + v23[64]);
  v113 = *(MEMORY[0x1E69DDCE0] + 16);
  *v112 = *MEMORY[0x1E69DDCE0];
  v112[1] = v113;
  sub_1E65E3668();
  sub_1E5DF4210();
  sub_1E60DE6BC(&qword_1EE2D6070, MEMORY[0x1E699EDB0], MEMORY[0x1E699EDC0]);
  sub_1E65E4D58();
  sub_1E65E61D8();
  sub_1E5DF4334();
  sub_1E65E4D38();
  v114 = (a4 + v23[67]);
  *v114 = v92;
  v114[1] = v92;
  v115 = (a4 + v23[68]);
  *v115 = v92;
  v115[1] = v92;
  v116 = a4 + v23[69];
  sub_1E65DD098();
  v117 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128) + 28);
  v118 = sub_1E65DD0A8();
  (*(*(v118 - 8) + 16))(v116 + v117, v116, v118);
  v119 = v23[70];
  v120 = *MEMORY[0x1E699EF98];
  v121 = sub_1E65E39E8();
  (*(*(v121 - 8) + 104))(a4 + v119, v120, v121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E98, &qword_1E65F1138);
  sub_1E60D4048(&qword_1EE2D4860, &qword_1EE2D67F8, MEMORY[0x1E699CEB0], MEMORY[0x1E69E6320]);
  sub_1E65E4CA8();
  v122 = v23[72];
  v123 = *MEMORY[0x1E699EFF0];
  v124 = sub_1E65E1D58();
  (*(*(v124 - 8) + 104))(a4 + v122, v123, v124);
  sub_1E65D92D8();
  sub_1E60DE6BC(&qword_1EE2D7098, MEMORY[0x1E69CBFD8], MEMORY[0x1E69CBFF0]);
  sub_1E65E4CA8();
  sub_1E65E61D8();
  sub_1E65D8418();
  sub_1E60DE6BC(&qword_1EE2D7128, MEMORY[0x1E69CB3C8], MEMORY[0x1E69CB3D8]);
  sub_1E65E4D38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
  sub_1E60DB4BC();
  sub_1E65E4CA8();
  v125 = v23[76];
  *(a4 + v125) = sub_1E5E077DC(v104);
  sub_1E65E61D8();
  sub_1E65D9658();
  sub_1E60DE6BC(&qword_1EE2D7078, MEMORY[0x1E69CC1B0], MEMORY[0x1E69CC1C0]);
  sub_1E65E4D38();
  v126 = v23[78];
  *(a4 + v126) = sub_1E5E079C8(v104);
  v127 = (a4 + v23[79]);
  v128 = sub_1E5E07BB4(v104);
  *v127 = v128;
  v127[1] = v128;
  sub_1E65DADD8();
  sub_1E60DE6BC(&qword_1EE2D6FB0, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2F0]);

  sub_1E65E4D58();
  sub_1E65E4D58();
  sub_1E65E4D58();
  sub_1E65E4D58();
  sub_1E65DAEB8();
  sub_1E60DE6BC(&qword_1EE2D6FA8, MEMORY[0x1E69CD370], MEMORY[0x1E69CD388]);
  sub_1E65E4D58();
  *(a4 + v23[63]) = v142;
  sub_1E5E07DA0(*v111, *(v111 + 8));
  v129 = v139;
  *v111 = v140;
  *(v111 + 8) = v129;
  v144 = v143;
  sub_1E65E0778();
  sub_1E5E0024C(v104);
  sub_1E5DF11E0();
  sub_1E5DF1338();
  return sub_1E65E06E8();
}

unint64_t sub_1E5DF9D44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079580, &qword_1E66016B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0792E8, &qword_1E6601468);
    v7 = sub_1E65E6A28();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v9, v5, &qword_1ED079580, &qword_1E66016B0);
      v12 = *v5;
      v11 = v5[1];
      result = sub_1E6215038(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void *sub_1E5DF9F3C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_1E5DFA11C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1E5DFA178(uint64_t a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1E65D74E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v7 = sub_1E65E3B68();
  __swift_project_value_buffer(v7, qword_1EE2EA2A0);
  (*(v4 + 16))(v6, a1, v3);
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v24[1] = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v24[0] = a1;
    v13 = v12;
    v25[0] = v12;
    *v11 = 136315138;
    sub_1E5DFA51C(&qword_1EE2D71E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v14 = sub_1E65E6BC8();
    v16 = v15;
    (*(v4 + 8))(v6, v3);
    v17 = sub_1E5DFD4B0(v14, v16, v25);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "Removing %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E694F1C0](v13, -1, -1);
    MEMORY[0x1E694F1C0](v11, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v18 = [objc_opt_self() defaultManager];
  v19 = sub_1E65D7448();
  v25[0] = 0;
  v20 = [v18 removeItemAtURL:v19 error:v25];

  if (v20)
  {
    v21 = v25[0];
  }

  else
  {
    v22 = v25[0];
    v23 = sub_1E65D73B8();

    swift_willThrow();
  }
}

uint64_t sub_1E5DFA4D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5DFA51C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5DFA564(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E5DFA618(a1, v4, v5, v6);
}

uint64_t sub_1E5DFA638()
{
  swift_getObjectType();
  sub_1E65DE008();
  swift_allocObject();
  swift_weakInit();
  sub_1E65DDDF8();

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5DFA754()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5DFA78C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E5DFA880()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E5DFA978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5DFA9E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5DFAA48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5DFAAB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5DFAB18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5DFAB80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5DFABE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5DFAC50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AppFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v139 = a4;
  v135 = a3;
  v140 = a2;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v130 = &v129 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E58, &qword_1E65EA150);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v132 = &v129 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E60, &qword_1E65EA158);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v129 - v8;
  v10 = type metadata accessor for BrowsingIdentity(0);
  v131 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v129 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v129 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v129 - v20;
  v22 = type metadata accessor for AppEnvironment(0);
  v144 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v143 = v23;
  v142 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075360, &qword_1E65F18B0);
  v145 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v25 = &v129 - v24;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v136 = &v129 - v26;
  v27 = type metadata accessor for AppAction(0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5DFBE08(v139, v29, type metadata accessor for AppAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v57 = v132;
    v58 = v131;
    v143 = v16;
    v144 = v10;
    v145 = v13;
    v146 = v21;
    v59 = v133;
    v60 = v134;
    if (EnumCaseMultiPayload)
    {
      v114 = *v29;
      result = type metadata accessor for AppState(0);
      *(v140 + *(result + 160)) = v114;
    }

    else
    {
      v61 = v146;
      sub_1E5DFAAB0(v29, v146, type metadata accessor for BrowsingIdentity);
      v142 = *(type metadata accessor for AppState(0) + 92);
      sub_1E65E4C98();
      v62 = v9;
      sub_1E60EE7BC(v9);
      sub_1E5DFE50C(v57, &qword_1ED071E58, &qword_1E65EA150);
      v63 = *(v58 + 48);
      v64 = v144;
      if (v63(v62, 1, v144) == 1)
      {
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
        (*(*(v65 - 8) + 56))(v19, 1, 1, v65);
        if (v63(v62, 1, v64) != 1)
        {
          sub_1E5DFE50C(v62, &qword_1ED071E60, &qword_1E65EA158);
        }
      }

      else
      {
        sub_1E5DFAAB0(v62, v19, type metadata accessor for BrowsingIdentity);
      }

      v115 = _s10Blackbeard16BrowsingIdentityO2eeoiySbAC_ACtFZ_0(v61, v19);
      sub_1E5E00614(v19, type metadata accessor for BrowsingIdentity);
      v116 = v130;
      if (!v115)
      {
        v117 = v145;
        if (qword_1EE2D7790 != -1)
        {
          swift_once();
        }

        v118 = sub_1E65E3B68();
        __swift_project_value_buffer(v118, qword_1EE2EA2A0);
        v119 = v143;
        sub_1E5DFBE08(v61, v143, type metadata accessor for BrowsingIdentity);
        v120 = sub_1E65E3B48();
        v121 = sub_1E65E6338();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          *&v150[0] = v123;
          *v122 = 141558274;
          *(v122 + 4) = 1752392040;
          *(v122 + 12) = 2080;
          sub_1E5DFBE08(v119, v117, type metadata accessor for BrowsingIdentity);
          v124 = sub_1E65E5CE8();
          v126 = v125;
          sub_1E5E00614(v119, type metadata accessor for BrowsingIdentity);
          v127 = sub_1E5DFD4B0(v124, v126, v150);

          *(v122 + 14) = v127;
          _os_log_impl(&dword_1E5DE9000, v120, v121, "Resetting state since remote browsing identity has changed: %{mask.hash}s", v122, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v123);
          v128 = v123;
          v116 = v130;
          MEMORY[0x1E694F1C0](v128, -1, -1);
          MEMORY[0x1E694F1C0](v122, -1, -1);
        }

        else
        {

          sub_1E5E00614(v119, type metadata accessor for BrowsingIdentity);
        }

        sub_1E60CBEE8();
        v61 = v146;
      }

      sub_1E5DFBE08(v61, v145, type metadata accessor for BrowsingIdentity);
      sub_1E5E00864(qword_1EE2DA468, type metadata accessor for BrowsingIdentity, &protocol conformance descriptor for BrowsingIdentity);
      sub_1E65E4C48();
      sub_1E5E00614(v61, type metadata accessor for BrowsingIdentity);
      return (*(v59 + 40))(v140 + v142, v116, v60);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v66 = *v29;
    v67 = *(v29 + 1);
    v68 = type metadata accessor for AppState(0);
    sub_1E5E05374(v66, v67);
    v69 = v140;
    sub_1E60F4FA8(v150, v66, v67);
    sub_1E5E0476C(*&v150[0], *(&v150[0] + 1));
    v70 = v69 + *(v68 + 248);
    result = sub_1E5E07DA0(*v70, *(v70 + 8));
    *v70 = v66;
    *(v70 + 8) = v67;
  }

  else
  {
    v31 = v140;
    if (EnumCaseMultiPayload == 3)
    {
      v32 = *v29;
      v33 = *(v29 + 1);
      v34 = *(v29 + 2);
      v35 = *(v29 + 3);
      v36 = v29[32];
      v37 = *(v29 + 5);
      v38 = v29[80];
      v39 = type metadata accessor for AppState(0);
      *(v31 + v39[28]) = v37;
      v40 = (v31 + v39[64]);
      v41 = *(v29 + 4);
      *v40 = *(v29 + 3);
      v40[1] = v41;
      if (v38 != 12)
      {
        if (qword_1EE2D7790 != -1)
        {
          swift_once();
        }

        v42 = sub_1E65E3B68();
        __swift_project_value_buffer(v42, qword_1EE2EA2A0);
        v43 = sub_1E65E3B48();
        v44 = sub_1E65E6338();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = v31;
          v47 = swift_slowAlloc();
          *&v150[0] = v47;
          *v45 = 136315138;
          LOBYTE(v148[0]) = v38;
          v48 = sub_1E65E5CE8();
          v50 = sub_1E5DFD4B0(v48, v49, v150);

          *(v45 + 4) = v50;
          _os_log_impl(&dword_1E5DE9000, v43, v44, "Dynamic Type Size: %s", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v47);
          v51 = v47;
          v31 = v46;
          MEMORY[0x1E694F1C0](v51, -1, -1);
          MEMORY[0x1E694F1C0](v45, -1, -1);
        }

        v52 = v39[6];
        v53 = v136;
        v54 = v138;
        sub_1E65E0698();
        (*(v137 + 40))(v31 + v52, v53, v54);
      }

      v55 = v136;
      sub_1E60F0798(v31, v36, v136, v32, v33, v34, v35);
      return (*(v137 + 40))(v31 + v39[6], v55, v138);
    }

    else
    {
      WindowSceneObserver.bounds.getter(v148);
      if ((v149 & 1) == 0)
      {
        v71 = *v148;
        v72 = *&v148[1];
        v73 = *&v148[2];
        v74 = *&v148[3];
        v75 = WindowSceneObserver.interfaceOrientation.getter();
        if ((v76 & 1) == 0)
        {
          v77 = v136;
          sub_1E60F0798(v31, v75 == 1, v136, v71, v72, v73, v74);
          v78 = type metadata accessor for AppState(0);
          (*(v137 + 40))(v31 + *(v78 + 24), v77, v138);
        }
      }

      v79 = WindowSceneObserver.preferredContentSizeCategory.getter();
      v80 = sub_1E5E00BB4(v79);

      if (v80 != 12)
      {
        if (qword_1EE2D7790 != -1)
        {
          swift_once();
        }

        v81 = sub_1E65E3B68();
        __swift_project_value_buffer(v81, qword_1EE2EA2A0);
        v82 = sub_1E65E3B48();
        v83 = sub_1E65E6338();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          *&v150[0] = v85;
          *v84 = 136315138;
          v147 = v80;
          v86 = sub_1E65E5CE8();
          v88 = sub_1E5DFD4B0(v86, v87, v150);

          *(v84 + 4) = v88;
          _os_log_impl(&dword_1E5DE9000, v82, v83, "Dynamic Type Size: %s", v84, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v85);
          MEMORY[0x1E694F1C0](v85, -1, -1);
          MEMORY[0x1E694F1C0](v84, -1, -1);
        }

        v89 = *(type metadata accessor for AppState(0) + 24);
        v90 = v136;
        v91 = v138;
        sub_1E65E0698();
        (*(v137 + 40))(v31 + v89, v90, v91);
      }

      v92 = WindowSceneObserver.displayScale.getter();
      if ((v93 & 1) == 0)
      {
        *(v31 + *(type metadata accessor for AppState(0) + 112)) = v92;
      }

      WindowSceneObserver.safeAreaEdgeInsets.getter(v150);
      if ((v151 & 1) == 0)
      {
        v94 = (v31 + *(type metadata accessor for AppState(0) + 256));
        v95 = v150[1];
        *v94 = v150[0];
        v94[1] = v95;
      }

      v96 = 0;
      v97 = (v145 + 104);
      v98 = *v135;
      LODWORD(v139) = *MEMORY[0x1E6999B40];
      LODWORD(v140) = *MEMORY[0x1E6999B58];
      v138 = (v145 + 32);
      LODWORD(v137) = *MEMORY[0x1E6999AD8];
      v99 = v142;
      do
      {
        v100 = byte_1F5FA8580[v96 + 32];
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072948, &qword_1E65EC0D8);
        v102 = v101[16];
        v103 = v101[20];
        v104 = v101[24];
        if (v100)
        {
          if (v100 == 1)
          {
            v147 = 1;
            sub_1E5E00974();
            sub_1E65E6848();
            sub_1E65E6088();
            v105 = &unk_1E65F18C0;
          }

          else
          {
            v147 = 2;
            sub_1E5E00974();
            sub_1E65E6848();
            sub_1E65E6068();
            v105 = &unk_1E65F18B8;
          }
        }

        else
        {
          v147 = 0;
          sub_1E5E00974();
          sub_1E65E6848();
          sub_1E65E6068();
          v105 = &unk_1E65F18C8;
        }

        v106 = &v25[v104];
        v107 = sub_1E65E4EA8();
        (*(*(v107 - 8) + 104))(&v25[v103], v139, v107);
        sub_1E5DFBE08(v146, v99, type metadata accessor for AppEnvironment);
        v108 = (*(v144 + 80) + 16) & ~*(v144 + 80);
        v109 = swift_allocObject();
        sub_1E5DFAAB0(v99, v109 + v108, type metadata accessor for AppEnvironment);
        *v106 = v105;
        *(v106 + 1) = v109;
        v110 = sub_1E65E4EB8();
        (*(*(v110 - 8) + 104))(&v25[v102], v140, v110);
        v111 = v141;
        (*v97)(v25, v137, v141);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_1E5DFBE70(0, v98[2] + 1, 1, v98);
        }

        v113 = v98[2];
        v112 = v98[3];
        if (v113 >= v112 >> 1)
        {
          v98 = sub_1E5DFBE70((v112 > 1), v113 + 1, 1, v98);
        }

        ++v96;
        v98[2] = v113 + 1;
        result = (*(v145 + 4))(v98 + ((v145[80] + 32) & ~v145[80]) + *(v145 + 9) * v113, v25, v111);
      }

      while (v96 != 3);
      *v135 = v98;
    }
  }

  return result;
}

uint64_t sub_1E5DFBE08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1E5DFBEDC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

void sub_1E5DFC0C4(uint64_t a1)
{
  if (!qword_1EE2D4958)
  {
    sub_1E65DB048();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074B10, &qword_1E65F1078);
    sub_1E60DE6BC(&qword_1EE2D6DB8, MEMORY[0x1E699CFF0], MEMORY[0x1E699D000]);
    v1 = sub_1E65E5B28();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4958);
    }
  }
}

unint64_t sub_1E5DFC17C()
{
  result = qword_1EE2D46B0;
  if (!qword_1EE2D46B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2D46B0);
  }

  return result;
}

unint64_t sub_1E5DFC1EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B888, &qword_1E660D310);
    v3 = sub_1E65E6A28();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 16);
      v6 = *(i - 1);
      v7 = *i;
      sub_1E659B890(v6, *i);
      result = sub_1E5E1B97C(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = v3[7] + 16 * result;
      *v10 = v6;
      *(v10 + 8) = v7;
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

__n128 static HealthDataService.live(with:)@<Q0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  type metadata accessor for LiveHealthDataService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  result = v4;
  *(v2 + 112) = v4;
  *a1 = &unk_1E6608FA0;
  a1[1] = v2;
  return result;
}

uint64_t static InteropService.default(with:)@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  sub_1E65D7F18();
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = v25;
  *(v24 + 32) = v26;
  *(v24 + 40) = v25;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v25;
  *(v23 + 32) = v26;
  *(v23 + 40) = v25;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = v25;
  *(v22 + 32) = v26;
  *(v22 + 40) = v25;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = v25;
  *(v21 + 32) = v26;
  *(v21 + 40) = v25;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = v25;
  *(v20 + 32) = v26;
  *(v20 + 40) = v25;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v25;
  *(v19 + 32) = v26;
  *(v19 + 40) = v25;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v25;
  *(v18 + 32) = v26;
  *(v18 + 40) = v25;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v25;
  *(v17 + 32) = v26;
  *(v17 + 40) = v25;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v25;
  *(v16 + 32) = v26;
  *(v16 + 40) = v25;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v25;
  *(v15 + 32) = v26;
  *(v15 + 40) = v25;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v25;
  *(v14 + 32) = v26;
  *(v14 + 40) = v25;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v25;
  *(v13 + 32) = v26;
  *(v13 + 40) = v25;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v25;
  *(v12 + 32) = v26;
  *(v12 + 40) = v25;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v25;
  *(v11 + 32) = v26;
  *(v11 + 40) = v25;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v25;
  *(v4 + 32) = v26;
  *(v4 + 40) = v25;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v25;
  *(v5 + 32) = v26;
  *(v5 + 40) = v25;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v25;
  *(v6 + 32) = v26;
  *(v6 + 40) = v25;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v25;
  *(v7 + 32) = v26;
  *(v7 + 40) = v25;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = v25;
  *(v8 + 32) = v26;
  *(v8 + 40) = v25;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v25;
  *(v9 + 32) = v26;
  *(v9 + 40) = v25;
  *a2 = sub_1E65D3A8C;
  a2[1] = v24;
  a2[2] = sub_1E65D3B5C;
  a2[3] = v23;
  a2[4] = sub_1E65D3CAC;
  a2[5] = v22;
  a2[6] = sub_1E65D3CF8;
  a2[7] = v21;
  a2[8] = sub_1E65D3DC8;
  a2[9] = v20;
  a2[10] = sub_1E65D3DD8;
  a2[11] = v19;
  a2[12] = sub_1E65D3FB8;
  a2[13] = v18;
  a2[14] = sub_1E65D3FE8;
  a2[15] = v17;
  a2[16] = sub_1E65D44F0;
  a2[17] = v16;
  a2[18] = sub_1E65D46AC;
  a2[19] = v15;
  a2[20] = sub_1E65D46DC;
  a2[21] = v14;
  a2[22] = sub_1E65D4858;
  a2[23] = v13;
  a2[24] = sub_1E65D4A2C;
  a2[25] = v12;
  a2[26] = sub_1E65D4B74;
  a2[27] = v11;
  a2[28] = sub_1E65D4E54;
  a2[29] = v4;
  a2[30] = sub_1E65D5100;
  a2[31] = v5;
  a2[32] = sub_1E65D53FC;
  a2[33] = v6;
  a2[34] = sub_1E65D56B0;
  a2[35] = v7;
  a2[36] = sub_1E65D5970;
  a2[37] = v8;
  a2[38] = sub_1E65D5B28;
  a2[39] = v9;
  swift_retain_n();
  return swift_unknownObjectRetain_n();
}

uint64_t sub_1E5DFC960(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5DFCAC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E5DFCC30(uint64_t a1)
{
  if (!qword_1EE2D4A90)
  {
    sub_1E5DF46C8();
    sub_1E5DF23E0();
    v1 = sub_1E65E4D68();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4A90);
    }
  }
}

void sub_1E5DFCCAC(uint64_t a1)
{
  if (!qword_1EE2D4950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074A08, &qword_1E65F3920);
    sub_1E65DAFD8();
    sub_1E5FED46C(&qword_1EE2D6B88, &qword_1ED074A08, &qword_1E65F3920, MEMORY[0x1E699DC20]);
    v1 = sub_1E65E5B28();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4950);
    }
  }
}

void sub_1E5DFCD68(uint64_t a1)
{
  if (!qword_1EE2D4A50)
  {
    sub_1E65DA8C8();
    sub_1E60DE6BC(&qword_1EE2D6FC8, MEMORY[0x1E69CD000], MEMORY[0x1E69CD010]);
    v1 = sub_1E65E4D68();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4A50);
    }
  }
}

unint64_t sub_1E5DFCE18()
{
  result = qword_1EE2D7510;
  if (!qword_1EE2D7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7510);
  }

  return result;
}

unint64_t sub_1E5DFCE6C()
{
  result = qword_1EE2D74F8;
  if (!qword_1EE2D74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D74F8);
  }

  return result;
}

uint64_t sub_1E5DFCEC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5DF6E64(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E5DFCF74()
{
  sub_1E5DFD1CC(*(v0 + 96), v0 + 56, &qword_1ED0782C0, &qword_1E65FBB50);
  if (*(v0 + 80))
  {
    sub_1E5DF599C((v0 + 56), v0 + 16);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v1 = sub_1E65E3B68();
    __swift_project_value_buffer(v1, qword_1EE2EA2A0);
    v2 = sub_1E65E3B48();
    v3 = sub_1E65E6338();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1E5DE9000, v2, v3, "Attempting to rotate journals", v4, 2u);
      MEMORY[0x1E694F1C0](v4, -1, -1);
    }

    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    v10 = (*(v6 + 16) + **(v6 + 16));
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_1E5E1CF84;

    return v10(v5, v6);
  }

  else
  {
    sub_1E5DFE50C(v0 + 56, &qword_1ED0782C0, &qword_1E65FBB50);
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1E5DFD1CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t static AssetService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B510, &qword_1E6609F00);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE30, &qword_1E660C1A0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  type metadata accessor for LiveAssetService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E5DF599C(&v6, v2 + 112);
  sub_1E5DF599C(&v5, v2 + 152);
  *(v2 + 192) = v4;
  *a1 = &unk_1E6609F10;
  a1[1] = v2;
  a1[2] = &unk_1E6609F20;
  a1[3] = v2;
  a1[4] = &unk_1E6609F30;
  a1[5] = v2;
  a1[6] = &unk_1E6609F40;
  a1[7] = v2;
  a1[8] = &unk_1E6609F50;
  a1[9] = v2;
  a1[10] = &unk_1E6609F60;
  a1[11] = v2;
  a1[12] = &unk_1E6609F70;
  a1[13] = v2;
  a1[14] = &unk_1E6609F80;
  a1[15] = v2;
  a1[16] = &unk_1E6609F90;
  a1[17] = v2;
  a1[18] = &unk_1E6609FA0;
  a1[19] = v2;
  a1[20] = &unk_1E6609FB0;
  a1[21] = v2;
  a1[22] = &unk_1E6609FC0;
  a1[23] = v2;
  a1[24] = &unk_1E6609FD0;
  a1[25] = v2;
  return swift_retain_n();
}

unint64_t sub_1E5DFD4B0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E5DFE5B0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1E5DFA11C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
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

uint64_t sub_1E5DFD5C8(unint64_t a1, uint64_t a2)
{
  v81 = a2;
  v95[2] = *MEMORY[0x1E69E9840];
  v3 = sub_1E65D74E8();
  v92 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v85 = &v78 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v84 = &v78 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v90 = &v78 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v78 - v13;
  if (qword_1EE2D7790 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v14 = sub_1E65E3B68();
    v82 = __swift_project_value_buffer(v14, qword_1EE2EA2A0);
    sub_1E65E3B38();
    sub_1E5DF756C();
    v15 = [objc_opt_self() defaultManager];
    type metadata accessor for JournalRotator(0);
    v80 = a1;
    v16 = sub_1E65D7448();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078150, &qword_1E65FB6D8);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1E65EA670;
    v18 = *MEMORY[0x1E695DB78];
    *(v17 + 32) = *MEMORY[0x1E695DB78];
    type metadata accessor for URLResourceKey(0);
    v19 = v18;
    v20 = sub_1E65E5EF8();

    v95[0] = 0;
    v21 = [v15 contentsOfDirectoryAtURL:v16 includingPropertiesForKeys:v20 options:7 error:v95];

    v22 = v95[0];
    if (!v21)
    {
      v36 = v95[0];
      v90 = sub_1E65D73B8();

      swift_willThrow();
      v37 = v90;
      v38 = v90;
      v39 = sub_1E65E3B48();
      v40 = sub_1E65E6328();

      if (os_log_type_enabled(v39, v40))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v95[0] = v43;
        *v42 = 136446210;
        v94 = v90;
        v44 = v90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
        v45 = sub_1E65E5CE8();
        v47 = sub_1E5DFD4B0(v45, v46, v95);

        *(v42 + 4) = v47;
        _os_log_impl(&dword_1E5DE9000, v39, v40, "Failed to rotate journals: %{public}s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x1E694F1C0](v43, -1, -1);
        MEMORY[0x1E694F1C0](v42, -1, -1);
      }

      v95[0] = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
      return sub_1E65E5FE8();
    }

    v79 = v6;
    v23 = sub_1E65E5F18();
    v24 = v22;

    v25 = *(v23 + 16);
    v91 = v3;
    v89 = v25;
    if (v25)
    {
      a1 = 0;
      v88 = (v92 + 16);
      v86 = (v92 + 8);
      v6 = (v92 + 32);
      v26 = MEMORY[0x1E69E7CC0];
      v27 = v87;
      while (a1 < *(v23 + 16))
      {
        v28 = (*(v92 + 80) + 32) & ~*(v92 + 80);
        v29 = *(v92 + 72);
        (*(v92 + 16))(v27, v23 + v28 + v29 * a1, v3);
        sub_1E65D7438();
        v30 = sub_1E65E5E28();

        if (v30)
        {
          v31 = *v6;
          (*v6)(v90, v27, v3);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v95[0] = v26;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E5DFE56C(0, v26[2] + 1, 1);
            v26 = v95[0];
          }

          v34 = v26[2];
          v33 = v26[3];
          if (v34 >= v33 >> 1)
          {
            sub_1E5DFE56C((v33 > 1), v34 + 1, 1);
            v26 = v95[0];
          }

          v26[2] = v34 + 1;
          v35 = v26 + v28 + v34 * v29;
          v3 = v91;
          v31(v35, v90, v91);
          v27 = v87;
        }

        else
        {
          (*v86)(v27, v3);
        }

        if (v89 == ++a1)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_45;
    }

    v26 = MEMORY[0x1E69E7CC0];
LABEL_16:

    v95[0] = v26;
    a1 = 0;
    sub_1E5E0D894(v95);
    v90 = 0;
    v49 = v95[0];
    v89 = *(v95[0] + 2);
    if (!v89)
    {
      break;
    }

    v50 = 0;
    v86 = (v92 + 32);
    v87 = (v92 + 16);
    v83 = (v92 + 8);
    v3 = MEMORY[0x1E69E7CC0];
    v51 = v84;
    v88 = v95[0];
    while (v50 < *(v49 + 2))
    {
      a1 = v91;
      v6 = ((*(v92 + 80) + 32) & ~*(v92 + 80));
      v52 = *(v92 + 72);
      (*(v92 + 16))(v51, &v6[v49 + v52 * v50], v91);
      sub_1E65D7438();
      v95[0] = 1598310736;
      v95[1] = 0xE400000000000000;
      v93 = getpid();
      v53 = sub_1E65E6BC8();
      v54 = v51;
      MEMORY[0x1E694D7C0](v53);

      MEMORY[0x1E694D7C0](95, 0xE100000000000000);
      v55 = sub_1E65E5E28();

      if (v55)
      {
        (*v83)(v51, a1);
        v49 = v88;
      }

      else
      {
        v56 = *v86;
        (*v86)(v85, v54, a1);
        v57 = swift_isUniquelyReferenced_nonNull_native();
        v94 = v3;
        if ((v57 & 1) == 0)
        {
          sub_1E5DFE56C(0, *(v3 + 16) + 1, 1);
          v3 = v94;
        }

        v49 = v88;
        v59 = *(v3 + 16);
        v58 = *(v3 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_1E5DFE56C((v58 > 1), v59 + 1, 1);
          v3 = v94;
        }

        *(v3 + 16) = v59 + 1;
        (v56)(&v6[v3 + v59 * v52], v85, v91);
        v51 = v84;
      }

      if (v89 == ++v50)
      {
        goto LABEL_32;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_32:

  v60 = sub_1E65E3B48();
  v61 = sub_1E65E6338();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v95[0] = v63;
    *v62 = 136315138;
    v64 = MEMORY[0x1E694D940](v3, v91);
    v66 = sub_1E5DFD4B0(v64, v65, v95);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_1E5DE9000, v60, v61, "Rotating Journals: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x1E694F1C0](v63, -1, -1);
    MEMORY[0x1E694F1C0](v62, -1, -1);
  }

  v67 = v80;
  v68 = *(v3 + 16);

  v69 = *v67;
  if (*v67 >= v68)
  {
LABEL_43:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
    return sub_1E65E5FF8();
  }

  v70 = v68 - v69;
  if (__OFSUB__(v68, v69))
  {
    __break(1u);
    goto LABEL_49;
  }

  if ((v70 & 0x8000000000000000) != 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  v89 = v3;
  if (v68 < v70)
  {
    goto LABEL_50;
  }

  a1 = v91;
  v71 = v79;
  if (!v70)
  {
    goto LABEL_43;
  }

  v6 = 0;
  v72 = v89 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
  v73 = *(v92 + 16);
  v74 = *(v92 + 72);
  v75 = (v92 + 8);
  while (1)
  {
    v3 = v70;
    v73(v71, v72, a1);
    v76 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_46;
    }

    v77 = v90;
    sub_1E5DFA178(v71);
    v90 = v77;
    if (v77)
    {
      break;
    }

    a1 = v91;
    (*v75)(v71, v91);
    ++v6;
    v72 += v74;
    v70 = v3;
    if (v76 == v3)
    {
      goto LABEL_43;
    }
  }

  result = (*v75)(v71, v91);
  __break(1u);
  return result;
}

unint64_t sub_1E5DFE000(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079598, &qword_1E66016C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079308, &qword_1E6601480);
    v7 = sub_1E65E6A28();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v9, v5, &qword_1ED079598, &qword_1E66016C8);
      result = sub_1E6416C60(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1E65DB048();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1E5DFE1E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079590, &qword_1E66016C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079520, &qword_1E6601658);
    v7 = sub_1E65E6A28();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v9, v5, &qword_1ED079590, &qword_1E66016C0);
      v11 = *v5;
      result = sub_1E64170B8(*v5, MEMORY[0x1E699E670], MEMORY[0x1E699E670]);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1E65DF438();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1E5DFE3F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079588, &qword_1E66016B8);
    v3 = sub_1E65E6A28();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1E64170B8(v5, MEMORY[0x1E699E670], MEMORY[0x1E699E670]);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_1E5DFE50C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_1E5DFE56C(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0731E0, &qword_1E65ED038, MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

unint64_t sub_1E5DFE5B0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1E5E00918(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1E65E6908();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _s10Blackbeard8AppStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1E65DE638() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AppState(0);
  v5 = v4[5];
  v6 = a1 + v5;
  v7 = a2 + v5;
  if ((MEMORY[0x1E69468C0](a1 + v5, a2 + v5) & 1) == 0)
  {
    return 0;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745E0, &qword_1E65F0F90);
  if ((MEMORY[0x1E69468C0](v6 + *(v8 + 28), v7 + *(v8 + 28)) & 1) == 0)
  {
    return 0;
  }

  sub_1E5DF11E0();
  sub_1E5DF1338();
  if ((sub_1E65E06D8() & 1) == 0)
  {
    return 0;
  }

  sub_1E65D7848();
  sub_1E60DE6BC(&qword_1EE2D7188, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  sub_1E65D7EB8();
  sub_1E60DE6BC(&qword_1EE2D7160, MEMORY[0x1E69CB0E0], MEMORY[0x1E69CB0F8]);
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E65E2E68() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E65E2E68() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074678, &qword_1E660D860);
  sub_1E5FED46C(&qword_1EE2D4700, &qword_1ED074678, &qword_1E660D860, MEMORY[0x1E69E6500]);
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  v9 = v4[11];
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v13 = v12[1];
  if ((sub_1E6285524(v10, *v12) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6285524(v11, v13) & 1) == 0)
  {
    return 0;
  }

  sub_1E65E1618();
  sub_1E60DE6BC(&qword_1EE2D64D8, MEMORY[0x1E699E8D8], MEMORY[0x1E699E8E8]);
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  sub_1E65DBAB8();
  sub_1E60DE6BC(&qword_1EE2D6BE8, MEMORY[0x1E699D1D0], MEMORY[0x1E699D1E0]);
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  v14 = v4[14];
  v15 = *(a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v17[1];
  if ((sub_1E6285090(v15, *v17) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6285090(v16, v18) & 1) == 0)
  {
    return 0;
  }

  v19 = v4[15];
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v22[1];
  if ((sub_1E6284AA0(v20, *v22) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6284AA0(v21, v23) & 1) == 0)
  {
    return 0;
  }

  v24 = v4[16];
  v25 = *(a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if ((sub_1E6284590(v25, *v27) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6284590(v26, v28) & 1) == 0)
  {
    return 0;
  }

  v29 = v4[17];
  v30 = *(a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if ((sub_1E6284424(v30, *v32) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6284424(v31, v33) & 1) == 0)
  {
    return 0;
  }

  if (!sub_1E60DAE8C(a1 + v4[18], a2 + v4[18]))
  {
    return 0;
  }

  sub_1E65DBD48();
  sub_1E60DE6BC(&qword_1EE2D6BC8, MEMORY[0x1E699D2B0], MEMORY[0x1E699D2C0]);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  sub_1E65D9AC8();
  sub_1E60DE6BC(&qword_1EE2D7048, MEMORY[0x1E69CC658], MEMORY[0x1E69CC670]);
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0748E0, &qword_1E660F180);
  sub_1E5FED46C(&qword_1EE2D46F8, &qword_1ED0748E0, &qword_1E660F180, MEMORY[0x1E69E6500]);
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  sub_1E5DF46C8();
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for BrowsingIdentity(0);
  sub_1E60DE6BC(qword_1EE2DA468, type metadata accessor for BrowsingIdentity, &protocol conformance descriptor for BrowsingIdentity);
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  v34 = v4[24];
  v35 = *(a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = v37[1];
  if ((sub_1E6283F14(v35, *v37) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6283F14(v36, v38) & 1) == 0)
  {
    return 0;
  }

  v39 = v4[25];
  v40 = *(a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = v42[1];
  if ((sub_1E62839FC(v40, *v42) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E62839FC(v41, v43) & 1) == 0)
  {
    return 0;
  }

  sub_1E65E02A8();
  sub_1E60DE6BC(&qword_1EE2D65B8, MEMORY[0x1E699D6B8], MEMORY[0x1E699D6C8]);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0749A0, &qword_1E65F1038);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  sub_1E65E23A8();
  sub_1E60DE6BC(&qword_1EE2D6248, MEMORY[0x1E699F288], MEMORY[0x1E699F298]);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[28]) != *(a2 + v4[28]))
  {
    return 0;
  }

  sub_1E5DF23E0();
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6280378(*(a1 + v4[30]), *(a2 + v4[30])) & 1) == 0)
  {
    return 0;
  }

  sub_1E65DA8C8();
  sub_1E60DE6BC(&qword_1EE2D6FC8, MEMORY[0x1E69CD000], MEMORY[0x1E69CD010]);
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E62809C8(*(a1 + v4[32]), *(a2 + v4[32])) & 1) == 0)
  {
    return 0;
  }

  v44 = v4[33];
  v45 = *(a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  v48 = v47[1];
  if ((sub_1E62833E8(v45, *v47) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E62833E8(v46, v48) & 1) == 0)
  {
    return 0;
  }

  v49 = v4[34];
  v50 = a1 + v49;
  v51 = *(a1 + v49);
  v52 = *(a1 + v49 + 8);
  v53 = *(a1 + v49 + 16);
  v54 = *(a1 + v49 + 40);
  v111 = *(a1 + v49 + 32);
  v55 = *(a1 + v49 + 48);
  v56 = *(a1 + v49 + 56);
  v57 = a2 + v49;
  v58 = *(v57 + 32);
  v59 = *(v57 + 40);
  v60 = *(v57 + 48);
  v61 = *(v57 + 56);
  if ((MEMORY[0x1E69443E0](v51, v52, v53, *(v50 + 24), *v57, *(v57 + 8), *(v57 + 16), *(v57 + 24)) & 1) == 0)
  {
    return 0;
  }

  if ((MEMORY[0x1E69443E0](v111, v54, v55, v56, v58, v59, v60, v61) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ArtworkDescriptor(0);
  sub_1E60DE6BC(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  if ((sub_1E65DC598() & 1) == 0)
  {
    return 0;
  }

  sub_1E65DC638();
  sub_1E60DE6BC(&qword_1EE2D6B30, MEMORY[0x1E699E100], MEMORY[0x1E699E110]);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072800, &qword_1E65EBDF8);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6280ED8(*(a1 + v4[37]), *(a2 + v4[37])) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[39]) != *(a2 + v4[39]))
  {
    return 0;
  }

  if (*(a1 + v4[40]) != *(a2 + v4[40]))
  {
    return 0;
  }

  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  sub_1E65D76A8();
  sub_1E60DE6BC(&qword_1EE2D71D0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  v62 = v4[43];
  v63 = *(a1 + v62);
  v64 = *(a1 + v62 + 8);
  v65 = (a2 + v62);
  v66 = v65[1];
  if ((sub_1E62828AC(v63, *v65) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E62828AC(v64, v66) & 1) == 0)
  {
    return 0;
  }

  v67 = v4[44];
  v68 = *(a1 + v67);
  v69 = *(a1 + v67 + 8);
  v70 = (a2 + v67);
  v71 = v70[1];
  if ((sub_1E62827A4(v68, *v70) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E62827A4(v69, v71) & 1) == 0)
  {
    return 0;
  }

  sub_1E65DF608();
  sub_1E60DE6BC(&qword_1EE2D67A0, MEMORY[0x1E699E698], MEMORY[0x1E699E6A8]);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BD8, &qword_1E65F10B0);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  sub_1E65E1518();
  sub_1E65E1458();
  sub_1E60DE6BC(&qword_1EE2D64F0, MEMORY[0x1E699E860], MEMORY[0x1E699E870]);
  sub_1E60DE6BC(&qword_1EE2D6508, MEMORY[0x1E699E810], MEMORY[0x1E699E828]);
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  sub_1E65D9798();
  sub_1E60DE6BC(&qword_1EE2D7070, MEMORY[0x1E69CC2C8], MEMORY[0x1E69CC2D8]);
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  v72 = v4[48];
  v73 = *(a1 + v72 + 16);
  v117[0] = *(a1 + v72);
  v117[1] = v73;
  v117[2] = *(a1 + v72 + 32);
  v118 = *(a1 + v72 + 48);
  v74 = *(a1 + v72 + 72);
  v113[0] = *(a1 + v72 + 56);
  v113[1] = v74;
  v113[2] = *(a1 + v72 + 88);
  v114 = *(a1 + v72 + 104);
  v75 = (a2 + v72);
  v76 = *v75;
  v77 = v75[1];
  v78 = v75[2];
  v120 = *(v75 + 6);
  v119[1] = v77;
  v119[2] = v78;
  v119[0] = v76;
  v79 = *(v75 + 72);
  v115[0] = *(v75 + 56);
  v115[1] = v79;
  v115[2] = *(v75 + 88);
  v116 = *(v75 + 13);
  if ((sub_1E6287A14(v117, v119) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6287A14(v113, v115) & 1) == 0)
  {
    return 0;
  }

  sub_1E65DB1C8();
  sub_1E60DE6BC(&qword_1EE2D6D90, MEMORY[0x1E699D0E8], MEMORY[0x1E699D0F8]);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C70, &qword_1E65F10D0);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  sub_1E5E01620();
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CB0, &unk_1E660F800);
  sub_1E60DB408();
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CD0, &qword_1E660EF60);
  sub_1E5E01674();
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  sub_1E65E1B08();
  sub_1E60DE6BC(&qword_1EE2D64A0, MEMORY[0x1E699E9E0], MEMORY[0x1E699E9F0]);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073568, &qword_1E65FD8A0);
  sub_1E5FED46C(&qword_1EE2D4AE8, &qword_1ED073568, &qword_1E65FD8A0, MEMORY[0x1E6999AB8]);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073560, &qword_1E65ED560);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  sub_1E65E1F68();
  sub_1E60DE6BC(&unk_1EE2D62B0, MEMORY[0x1E699F160], MEMORY[0x1E699F170]);
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  sub_1E65E2628();
  sub_1E60DE6BC(&qword_1EE2D6220, MEMORY[0x1E699F370], MEMORY[0x1E699F380]);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745B0, &qword_1E65F0F38);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  v80 = v4[58];
  v81 = *(a1 + v80);
  v82 = *(a1 + v80 + 8);
  v83 = (a2 + v80);
  v84 = v83[1];
  if ((sub_1E6282294(v81, *v83) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6282294(v82, v84) & 1) == 0)
  {
    return 0;
  }

  sub_1E65D94D8();
  sub_1E60DE6BC(&qword_1EE2D7090, MEMORY[0x1E69CC100], MEMORY[0x1E69CC110]);
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  sub_1E65E3838();
  sub_1E60DE6BC(&qword_1EE2D6050, MEMORY[0x1E699ED68], MEMORY[0x1E699ED78]);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DD0, &qword_1E65F1100);
  if ((sub_1E65E5B98() & 1) == 0 || *(a1 + v4[61]) != *(a2 + v4[61]))
  {
    return 0;
  }

  v85 = v4[62];
  v86 = *(a1 + v85 + 8);
  v112 = *(a1 + v85);
  v87 = (a2 + v85);
  v88 = *v87;
  v89 = v87[1];
  if (v86 != 6)
  {
    if (v89 == 6)
    {
      goto LABEL_88;
    }

    v90 = 0x65726F6C707865;
    if (v86 > 2)
    {
      switch(v86)
      {
        case 3:
          sub_1E5FED40C(v112, 3uLL);
          sub_1E5FED40C(v88, v89);
          v91 = 0xE600000000000000;
          v92 = 0x686372616573;
          goto LABEL_103;
        case 4:
          sub_1E5FED40C(v112, 4uLL);
          sub_1E5FED40C(v88, v89);
          v91 = 0xE600000000000000;
          v92 = 0x7478654E7075;
          goto LABEL_103;
        case 5:
          sub_1E5FED40C(v112, 5uLL);
          sub_1E5FED40C(v88, v89);
          v91 = 0xE500000000000000;
          v92 = 0x736E616C70;
          goto LABEL_103;
      }
    }

    else
    {
      switch(v86)
      {
        case 0:
          sub_1E5FED40C(v112, 0);
          sub_1E5FED40C(v88, v89);
          v91 = 0xE700000000000000;
          v92 = 0x65726F6C707865;
          goto LABEL_103;
        case 1:
          sub_1E5FED40C(v112, 1uLL);
          sub_1E5FED40C(v88, v89);
          v91 = 0xE600000000000000;
          v92 = 0x756F59726F66;
          goto LABEL_103;
        case 2:
          sub_1E5FED40C(v112, 2uLL);
          sub_1E5FED40C(v88, v89);
          v91 = 0xE700000000000000;
          v92 = 0x7972617262696CLL;
          goto LABEL_103;
      }
    }

    sub_1E5FED40C(v112, v86);
    sub_1E5FED40C(v88, v89);
    MEMORY[0x1E694D7C0](v112, v86);
    v92 = 0x7974696C61646F6DLL;
    v91 = 0xE90000000000003ALL;
LABEL_103:
    if (v89 > 2)
    {
      switch(v89)
      {
        case 3:
          v93 = 0xE600000000000000;
          v90 = 0x686372616573;
          goto LABEL_117;
        case 4:
          v93 = 0xE600000000000000;
          v90 = 0x7478654E7075;
          goto LABEL_117;
        case 5:
          v93 = 0xE500000000000000;
          v90 = 0x736E616C70;
          goto LABEL_117;
      }
    }

    else
    {
      switch(v89)
      {
        case 0:
          v93 = 0xE700000000000000;
          goto LABEL_117;
        case 1:
          v93 = 0xE600000000000000;
          v90 = 0x756F59726F66;
          goto LABEL_117;
        case 2:
          v93 = 0xE700000000000000;
          v90 = 0x7972617262696CLL;
          goto LABEL_117;
      }
    }

    MEMORY[0x1E694D7C0](v88, v89);
    v90 = 0x7974696C61646F6DLL;
    v93 = 0xE90000000000003ALL;
LABEL_117:
    if (v92 == v90 && v91 == v93)
    {
      sub_1E5E07DA0(v88, v89);

      goto LABEL_120;
    }

    v94 = sub_1E65E6C18();
    sub_1E5E07DA0(v88, v89);

    sub_1E5E07DA0(v112, v86);
    if (v94)
    {
      goto LABEL_122;
    }

    return 0;
  }

  if (v89 != 6)
  {
LABEL_88:
    sub_1E5FED40C(v112, v86);
    sub_1E5FED40C(v88, v89);
    sub_1E5E07DA0(v112, v86);
    sub_1E5E07DA0(v88, v89);
    return 0;
  }

  v86 = 6;
  sub_1E5FED40C(v112, 6uLL);
  sub_1E5FED40C(v88, 6uLL);
LABEL_120:
  sub_1E5E07DA0(v112, v86);
LABEL_122:
  if ((sub_1E63D9C04(*(a1 + v4[63]), *(a2 + v4[63])) & 1) == 0)
  {
    return 0;
  }

  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + v4[64]), *(a2 + v4[64])), vceqq_f64(*(a1 + v4[64] + 16), *(a2 + v4[64] + 16))))) & 1) == 0)
  {
    return 0;
  }

  sub_1E65E3668();
  sub_1E5DF4210();
  sub_1E60DE6BC(&qword_1EE2D6070, MEMORY[0x1E699EDB0], MEMORY[0x1E699EDC0]);
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  sub_1E5DF4334();
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  v95 = v4[67];
  v96 = *(a1 + v95);
  v97 = *(a1 + v95 + 8);
  v98 = (a2 + v95);
  v99 = v98[1];
  if ((sub_1E63DA160(v96, *v98) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E63DA160(v97, v99) & 1) == 0)
  {
    return 0;
  }

  v100 = v4[68];
  v101 = *(a1 + v100);
  v102 = *(a1 + v100 + 8);
  v103 = (a2 + v100);
  v104 = v103[1];
  if ((sub_1E63DA160(v101, *v103) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E63DA160(v102, v104) & 1) == 0)
  {
    return 0;
  }

  sub_1E65DD0A8();
  sub_1E60DE6BC(&qword_1EE2D6B08, MEMORY[0x1E699EF28], MEMORY[0x1E699EF38]);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E65E39D8() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E98, &qword_1E65F1138);
  sub_1E60D4048(&qword_1EE2D4860, &qword_1EE2D67F8, MEMORY[0x1E699CEB0], MEMORY[0x1E69E6320]);
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E65E1D48() & 1) == 0)
  {
    return 0;
  }

  sub_1E65D92D8();
  sub_1E60DE6BC(&qword_1EE2D7098, MEMORY[0x1E69CBFD8], MEMORY[0x1E69CBFF0]);
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  sub_1E65D8418();
  sub_1E60DE6BC(&qword_1EE2D7128, MEMORY[0x1E69CB3C8], MEMORY[0x1E69CB3D8]);
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
  sub_1E60DB4BC();
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6281364(*(a1 + v4[76]), *(a2 + v4[76])) & 1) == 0)
  {
    return 0;
  }

  sub_1E65D9658();
  sub_1E60DE6BC(&qword_1EE2D7078, MEMORY[0x1E69CC1B0], MEMORY[0x1E69CC1C0]);
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6281874(*(a1 + v4[78]), *(a2 + v4[78])) & 1) == 0)
  {
    return 0;
  }

  v105 = v4[79];
  v106 = *(a1 + v105);
  v107 = *(a1 + v105 + 8);
  v108 = (a2 + v105);
  v109 = v108[1];
  if ((sub_1E6281D84(v106, *v108) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6281D84(v107, v109) & 1) == 0)
  {
    return 0;
  }

  sub_1E65DADD8();
  sub_1E60DE6BC(&qword_1EE2D6FB0, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2F0]);
  if ((sub_1E65E4D28() & 1) == 0 || (sub_1E65E4D28() & 1) == 0 || (sub_1E65E4D28() & 1) == 0 || (sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  sub_1E65DAEB8();
  sub_1E60DE6BC(&qword_1EE2D6FA8, MEMORY[0x1E69CD370], MEMORY[0x1E69CD388]);

  return sub_1E65E4D28();
}

unint64_t sub_1E5E0024C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079438, &qword_1E6601590);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079440, &qword_1E6601598);
    v7 = sub_1E65E6A28();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1E5DFD1CC(v9, v5, &qword_1ED079438, &qword_1E6601590);
      result = sub_1E5E008AC(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_1E65E05C8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

uint64_t sub_1E5E00428(uint64_t a1)
{
  v2 = sub_1E65E2628();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for AppState(0) + 228);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745B0, &qword_1E65F0F38);
  (*(v3 + 16))(v5, v6 + *(v7 + 28), v2);
  return sub_1E65E25D8();
}

uint64_t sub_1E5E00528(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1E6009ECC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1E5E00614(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5E00674(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5E006D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1E5E00734(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E5DF7D84(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1E65E6908();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1E65E5DC8();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E5DF7D84(v10, 0);
        result = sub_1E65E6898();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E5E00864(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E5E008AC(uint64_t a1)
{
  v1 = a1;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  v2 = sub_1E65E6D78();
  return sub_1E5E01200(v1, v2);
}

void *sub_1E5E00918(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E5E00734(a1, a2);
  sub_1E5E00528(&unk_1F5FA7EE0);
  return v3;
}

unint64_t sub_1E5E00974()
{
  result = qword_1EE2DBDA0;
  if (!qword_1EE2DBDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DBDA0);
  }

  return result;
}

id WindowSceneObserver.preferredContentSizeCategory.getter()
{
  v0 = [objc_opt_self() system];
  v1 = [v0 preferredContentSizeCategory];

  return v1;
}

uint64_t sub_1E5E00A28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Blackbeard8RootItemO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t type metadata accessor for AppAction(uint64_t a1)
{
  result = qword_1EE2D7458;
  if (!qword_1EE2D7458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5E00ADC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t WindowSceneObserver.displayScale.getter()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 screen];
  [v3 scale];
  v5 = v4;

  return v5;
}

uint64_t sub_1E5E00BB4(uint64_t a1)
{
  v1 = sub_1E65E5C78();
  v3 = v2;
  if (v1 == sub_1E65E5C78() && v3 == v4)
  {

    return 0;
  }

  else
  {
    v6 = sub_1E65E6C18();

    result = 0;
    if ((v6 & 1) == 0)
    {
      v8 = sub_1E65E5C78();
      v10 = v9;
      if (v8 == sub_1E65E5C78() && v10 == v11)
      {

        return 1;
      }

      else
      {
        v13 = sub_1E65E6C18();

        if (v13)
        {
          return 1;
        }

        else
        {
          v14 = sub_1E65E5C78();
          v16 = v15;
          if (v14 == sub_1E65E5C78() && v16 == v17)
          {

            return 2;
          }

          else
          {
            v18 = sub_1E65E6C18();

            if (v18)
            {
              return 2;
            }

            else
            {
              v19 = sub_1E65E5C78();
              v21 = v20;
              if (v19 == sub_1E65E5C78() && v21 == v22)
              {

                return 3;
              }

              else
              {
                v23 = sub_1E65E6C18();

                if (v23)
                {
                  return 3;
                }

                else
                {
                  v24 = sub_1E65E5C78();
                  v26 = v25;
                  if (v24 == sub_1E65E5C78() && v26 == v27)
                  {

                    return 4;
                  }

                  else
                  {
                    v28 = sub_1E65E6C18();

                    if (v28)
                    {
                      return 4;
                    }

                    else
                    {
                      v29 = sub_1E65E5C78();
                      v31 = v30;
                      if (v29 == sub_1E65E5C78() && v31 == v32)
                      {

                        return 5;
                      }

                      else
                      {
                        v33 = sub_1E65E6C18();

                        if (v33)
                        {
                          return 5;
                        }

                        else
                        {
                          v34 = sub_1E65E5C78();
                          v36 = v35;
                          if (v34 == sub_1E65E5C78() && v36 == v37)
                          {

                            return 6;
                          }

                          else
                          {
                            v38 = sub_1E65E6C18();

                            if (v38)
                            {
                              return 6;
                            }

                            else
                            {
                              v39 = sub_1E65E5C78();
                              v41 = v40;
                              if (v39 == sub_1E65E5C78() && v41 == v42)
                              {

                                return 7;
                              }

                              else
                              {
                                v43 = sub_1E65E6C18();

                                if (v43)
                                {
                                  return 7;
                                }

                                else
                                {
                                  v44 = sub_1E65E5C78();
                                  v46 = v45;
                                  if (v44 == sub_1E65E5C78() && v46 == v47)
                                  {

                                    return 8;
                                  }

                                  else
                                  {
                                    v48 = sub_1E65E6C18();

                                    if (v48)
                                    {
                                      return 8;
                                    }

                                    else
                                    {
                                      v49 = sub_1E65E5C78();
                                      v51 = v50;
                                      if (v49 == sub_1E65E5C78() && v51 == v52)
                                      {

                                        return 9;
                                      }

                                      else
                                      {
                                        v53 = sub_1E65E6C18();

                                        if (v53)
                                        {
                                          return 9;
                                        }

                                        else
                                        {
                                          v54 = sub_1E65E5C78();
                                          v56 = v55;
                                          if (v54 == sub_1E65E5C78() && v56 == v57)
                                          {

                                            return 10;
                                          }

                                          else
                                          {
                                            v58 = sub_1E65E6C18();

                                            if (v58)
                                            {
                                              return 10;
                                            }

                                            else
                                            {
                                              v59 = sub_1E65E5C78();
                                              v61 = v60;
                                              if (v59 == sub_1E65E5C78() && v61 == v62)
                                              {

                                                return 11;
                                              }

                                              else
                                              {
                                                v63 = sub_1E65E6C18();

                                                if (v63)
                                                {
                                                  return 11;
                                                }

                                                else
                                                {
                                                  return 12;
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1E5E01200(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E5E01278()
{
  result = qword_1EE2DBD98;
  if (!qword_1EE2DBD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DBD98);
  }

  return result;
}

uint64_t sub_1E5E012CC()
{
  v1 = v0[2] + v0[5];
  v0[9] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  v0[10] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6335624, v3, v2);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_1E5E0138C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E65E5B28();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E5E013F0(uint64_t a1)
{
  if (!qword_1EE2D6B38)
  {
    type metadata accessor for ArtworkDescriptor(255);
    sub_1E60DE6BC(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    v1 = sub_1E65DC5A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D6B38);
    }
  }
}

void sub_1E5E01484()
{
  if (!qword_1EE2D4AB0)
  {
    v0 = sub_1E65E4CB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4AB0);
    }
  }
}

void sub_1E5E014DC(uint64_t a1)
{
  if (!qword_1EE2D4B20)
  {
    sub_1E65D76A8();
    sub_1E60DE6BC(&qword_1EE2D71D0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    v1 = sub_1E65E4CB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4B20);
    }
  }
}

void sub_1E5E01570(uint64_t a1)
{
  if (!qword_1EE2D4A58)
  {
    sub_1E65D9798();
    sub_1E60DE6BC(&qword_1EE2D7070, MEMORY[0x1E69CC2C8], MEMORY[0x1E69CC2D8]);
    v1 = sub_1E65E4D68();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4A58);
    }
  }
}

unint64_t sub_1E5E01620()
{
  result = qword_1EE2D70E0;
  if (!qword_1EE2D70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D70E0);
  }

  return result;
}

unint64_t sub_1E5E01674()
{
  result = qword_1EE2D4890;
  if (!qword_1EE2D4890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074CD0, &qword_1E660EF60);
    sub_1E60DE6BC(&qword_1EE2D7138, MEMORY[0x1E69CB2E0], MEMORY[0x1E69CB2F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4890);
  }

  return result;
}

void sub_1E5E01728(uint64_t a1)
{
  if (!qword_1EE2D4AE0)
  {
    sub_1E65E1F68();
    sub_1E60DE6BC(&unk_1EE2D62B0, MEMORY[0x1E699F160], MEMORY[0x1E699F170]);
    v1 = sub_1E65E4CB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4AE0);
    }
  }
}

void sub_1E5E017BC(uint64_t a1)
{
  if (!qword_1EE2D4A68)
  {
    sub_1E65D94D8();
    sub_1E60DE6BC(&qword_1EE2D7090, MEMORY[0x1E69CC100], MEMORY[0x1E69CC110]);
    v1 = sub_1E65E4D68();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4A68);
    }
  }
}

unint64_t sub_1E5E01870()
{
  result = qword_1EE2D7508;
  if (!qword_1EE2D7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7508);
  }

  return result;
}

double static MetricService.live(with:)@<D0>(uint64_t (**a1)()@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072360, &qword_1E65EAB90);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBC0, &qword_1E65F1460);
  sub_1E65D7F18();
  v29[0] = v23;
  sub_1E5E01B24(v29, &v23);
  v2 = swift_allocObject();
  v3 = v26;
  *(v2 + 3) = v25;
  *(v2 + 4) = v3;
  v4 = v28;
  *(v2 + 5) = v27;
  *(v2 + 6) = v4;
  v5 = v24;
  *(v2 + 1) = v23;
  *(v2 + 2) = v5;
  sub_1E5E01B24(v29, &v23);
  v6 = swift_allocObject();
  v7 = v26;
  *(v6 + 3) = v25;
  *(v6 + 4) = v7;
  v8 = v28;
  *(v6 + 5) = v27;
  *(v6 + 6) = v8;
  v9 = v24;
  *(v6 + 1) = v23;
  *(v6 + 2) = v9;
  sub_1E5E01B24(v29, &v23);
  v10 = swift_allocObject();
  v11 = v26;
  *(v10 + 3) = v25;
  *(v10 + 4) = v11;
  v12 = v28;
  *(v10 + 5) = v27;
  *(v10 + 6) = v12;
  v13 = v24;
  *(v10 + 1) = v23;
  *(v10 + 2) = v13;
  sub_1E5E01B24(v29, &v23);
  v14 = swift_allocObject();
  v15 = v26;
  *(v14 + 3) = v25;
  *(v14 + 4) = v15;
  v16 = v28;
  *(v14 + 5) = v27;
  *(v14 + 6) = v16;
  v17 = v24;
  *(v14 + 1) = v23;
  *(v14 + 2) = v17;
  v18 = swift_allocObject();
  v19 = v29[3];
  *(v18 + 3) = v29[2];
  *(v18 + 4) = v19;
  v20 = v29[5];
  *(v18 + 5) = v29[4];
  *(v18 + 6) = v20;
  result = *v29;
  v22 = v29[1];
  *(v18 + 1) = v29[0];
  *(v18 + 2) = v22;
  *a1 = sub_1E6547E1C;
  a1[1] = v2;
  a1[2] = sub_1E6547F4C;
  a1[3] = v6;
  a1[4] = sub_1E6548124;
  a1[5] = v10;
  a1[6] = sub_1E65482FC;
  a1[7] = v14;
  a1[8] = &unk_1E660A5E0;
  a1[9] = v18;
  return result;
}

uint64_t static PersonalizationService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BAF8, &qword_1E660E360);
  sub_1E65D7F18();
  type metadata accessor for LivePersonalizationService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E5DF599C(&v4, v2 + 112);
  *a1 = &unk_1E660E370;
  a1[1] = v2;
  a1[2] = &unk_1E660E380;
  a1[3] = v2;
  a1[4] = &unk_1E660E390;
  a1[5] = v2;
  return swift_retain_n();
}

uint64_t static PlayerService.default(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B478, &qword_1E660C0C8);
  v4 = sub_1E65E17A8();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = v14;
  v5[5] = v15;
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = a1;
  v6[4] = v14;
  v6[5] = v15;
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = a1;
  v7[4] = v14;
  v7[5] = v15;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1E6574C80;
  *(v13 + 24) = v7;
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = a1;
  v8[4] = v14;
  v8[5] = v15;
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = v14;
  v9[5] = v15;
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a1;
  v10[4] = v14;
  v10[5] = v15;
  v11 = swift_allocObject();
  v11[2] = v4;
  v11[3] = a1;
  v11[4] = v14;
  v11[5] = v15;
  *a2 = &unk_1E660C0D8;
  a2[1] = v5;
  a2[2] = &unk_1E660C0E8;
  a2[3] = v6;
  a2[4] = sub_1E6574DB0;
  a2[5] = v13;
  a2[6] = sub_1E6575060;
  a2[7] = v8;
  a2[8] = &unk_1E660C0F8;
  a2[9] = v9;
  a2[10] = &unk_1E660C108;
  a2[11] = v10;
  a2[12] = &unk_1E660C118;
  a2[13] = v11;
  swift_retain_n();
  swift_retain_n();
  return swift_unknownObjectRetain_n();
}

uint64_t sub_1E5E01E9C()
{

  return swift_deallocObject();
}

uint64_t static PrivacyPreferenceService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B970, &unk_1E6603F00);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  type metadata accessor for LivePrivacyPreferenceService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E5DF599C(&v5, v2 + 128);
  *(v2 + 112) = v4;
  *a1 = &unk_1E660BE98;
  a1[1] = v2;
  a1[2] = &unk_1E660BEA8;
  a1[3] = v2;
  a1[4] = &unk_1E660BEB8;
  a1[5] = v2;
  a1[6] = &unk_1E660BEC8;
  a1[7] = v2;
  a1[8] = &unk_1E660BED8;
  a1[9] = v2;
  a1[10] = &unk_1E660BEE8;
  a1[11] = v2;
  a1[12] = &unk_1E660BEF8;
  a1[13] = v2;
  return swift_retain_n();
}

uint64_t static RecommendationService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B8D8, &qword_1E660D6D0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BAF8, &qword_1E660E360);
  sub_1E65D7F18();
  type metadata accessor for LiveRecommendationService();
  swift_allocObject();
  v2 = sub_1E5E02230(v5[5], v5[6], v5, &v4);
  swift_unknownObjectRelease();
  *a1 = &unk_1E660F6D0;
  a1[1] = v2;
  a1[2] = &unk_1E660F6E0;
  a1[3] = v2;
  a1[4] = &unk_1E660F6F0;
  a1[5] = v2;
  a1[6] = &unk_1E660F700;
  a1[7] = v2;
  a1[8] = &unk_1E660F710;
  a1[9] = v2;
  a1[10] = &unk_1E660F720;
  a1[11] = v2;
  a1[12] = &unk_1E660F730;
  a1[13] = v2;
  a1[14] = &unk_1E660F740;
  a1[15] = v2;
  a1[16] = &unk_1E660F750;
  a1[17] = v2;
  return swift_retain_n();
}

uint64_t sub_1E5E02230(uint64_t a1, uint64_t a2, void *a3, __int128 *a4)
{
  swift_defaultActor_initialize();
  sub_1E5DF650C(a4, &v13);
  sub_1E5DF650C(a3, v12);
  v9 = type metadata accessor for OnboardingDetailCache(0);
  swift_allocObject();
  swift_unknownObjectRetain();
  v10 = sub_1E5E0257C(&v13, a1, a2, v12);
  *(v4 + 112) = a1;
  *(v4 + 120) = a2;
  v14 = v9;
  v15 = &off_1F5FCD760;
  *&v13 = v10;
  __swift_destroy_boxed_opaque_existential_1(a3);
  sub_1E5DF599C(&v13, v4 + 128);
  sub_1E5DF599C(a4, v4 + 168);
  return v4;
}

uint64_t sub_1E5E02330(uint64_t a1)
{
  result = type metadata accessor for OnboardingDetailCache.State(319);
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

void sub_1E5E02410(uint64_t a1)
{
  sub_1E5E02498(319);
  if (v1 <= 0x3F)
  {
    sub_1E65D8A78();
    if (v2 <= 0x3F)
    {
      sub_1E5E02518();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1E5E02498(uint64_t a1)
{
  if (!qword_1EE2D4828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07BE70, &qword_1E660F878);
    sub_1E65D76F8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D4828);
    }
  }
}

unint64_t sub_1E5E02518()
{
  result = qword_1EE2D4450;
  if (!qword_1EE2D4450)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE2D4450);
  }

  return result;
}

uint64_t sub_1E5E0257C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - v11;
  swift_defaultActor_initialize();
  type metadata accessor for OnboardingDetailCache.State(0);
  swift_storeEnumTagMultiPayload();
  sub_1E5DF650C(a1, v5 + OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_recommendationClient);
  v13 = (v5 + OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_eventHub);
  *v13 = a2;
  v13[1] = a3;
  sub_1E5DF650C(a4, v5 + OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_networkEvaluator);
  sub_1E65DDEB8();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  *(v5 + OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_subscriptionToken) = sub_1E65DDEA8();
  v14 = sub_1E65E60A8();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v5;

  sub_1E64B80F8(0, 0, v12, &unk_1E660F958, v15);

  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

uint64_t sub_1E5E02758()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t static RemoteBrowsingService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B168, "ʸ\a");
  v4 = *&v7[5];
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B170, "ʸ\a");
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B178, "ʸ\a");
  sub_1E65D7F18();
  type metadata accessor for LiveRemoteBrowsingService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 248) = 0;
  *(v2 + 112) = v4;
  sub_1E5DF599C(v7, v2 + 128);
  sub_1E5DF599C(&v6, v2 + 168);
  sub_1E5DF599C(&v5, v2 + 208);
  *a1 = &unk_1E660B718;
  a1[1] = v2;
  a1[2] = &unk_1E660B728;
  a1[3] = v2;
  a1[4] = &unk_1E660B738;
  a1[5] = v2;
  a1[6] = &unk_1E660B748;
  a1[7] = v2;
  a1[8] = &unk_1E660B758;
  a1[9] = v2;
  a1[10] = &unk_1E660B768;
  a1[11] = v2;
  a1[12] = &unk_1E660B778;
  a1[13] = v2;
  a1[14] = &unk_1E660B788;
  a1[15] = v2;
  a1[16] = &unk_1E660B798;
  a1[17] = v2;
  a1[18] = &unk_1E660B7A8;
  a1[19] = v2;
  a1[20] = &unk_1E660B7B8;
  a1[21] = v2;
  a1[22] = &unk_1E660B7C8;
  a1[23] = v2;
  a1[24] = &unk_1E660B7D8;
  a1[25] = v2;
  a1[26] = &unk_1E660B7E8;
  a1[27] = v2;
  a1[28] = &unk_1E660B7F8;
  a1[29] = v2;
  return swift_retain_n();
}

double static SearchService.live(with:)@<D0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC10, &qword_1E66090E0);
  *&v23[0] = sub_1E65E1838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC18, &qword_1E66090E8);
  sub_1E65D7F18();
  sub_1E65D7F18();
  v25 = v19;
  sub_1E5E02D58(v23, &v19);
  v2 = swift_allocObject();
  v3 = v20;
  *(v2 + 16) = v19;
  *(v2 + 32) = v3;
  *(v2 + 48) = v21;
  *(v2 + 64) = v22;
  sub_1E5E02D58(v23, &v19);
  v4 = swift_allocObject();
  v5 = v20;
  *(v4 + 16) = v19;
  *(v4 + 32) = v5;
  *(v4 + 48) = v21;
  *(v4 + 64) = v22;
  sub_1E5E02D58(v23, &v19);
  v6 = swift_allocObject();
  v7 = v20;
  *(v6 + 16) = v19;
  *(v6 + 32) = v7;
  *(v6 + 48) = v21;
  *(v6 + 64) = v22;
  sub_1E5E02D58(v23, &v19);
  v8 = swift_allocObject();
  v9 = v20;
  *(v8 + 16) = v19;
  *(v8 + 32) = v9;
  *(v8 + 48) = v21;
  *(v8 + 64) = v22;
  sub_1E5E02D58(v23, &v19);
  v10 = swift_allocObject();
  v11 = v20;
  *(v10 + 16) = v19;
  *(v10 + 32) = v11;
  *(v10 + 48) = v21;
  *(v10 + 64) = v22;
  sub_1E5E02D58(v23, &v19);
  v12 = swift_allocObject();
  v13 = v20;
  *(v12 + 16) = v19;
  *(v12 + 32) = v13;
  *(v12 + 48) = v21;
  *(v12 + 64) = v22;
  sub_1E5E02D58(v23, &v19);
  v14 = swift_allocObject();
  v15 = v20;
  *(v14 + 16) = v19;
  *(v14 + 32) = v15;
  *(v14 + 48) = v21;
  *(v14 + 64) = v22;
  v16 = swift_allocObject();
  v17 = v23[1];
  *(v16 + 16) = v23[0];
  *(v16 + 32) = v17;
  result = *&v24;
  *(v16 + 48) = v24;
  *(v16 + 64) = v25;
  *a1 = &unk_1E66090F8;
  a1[1] = v2;
  a1[2] = &unk_1E6609108;
  a1[3] = v4;
  a1[4] = &unk_1E6609118;
  a1[5] = v6;
  a1[6] = &unk_1E6609128;
  a1[7] = v8;
  a1[8] = &unk_1E6609138;
  a1[9] = v10;
  a1[10] = &unk_1E6609148;
  a1[11] = v12;
  a1[12] = &unk_1E6609158;
  a1[13] = v14;
  a1[14] = &unk_1E6609168;
  a1[15] = v16;
  return result;
}

double static ServiceSubscriptionService.live(with:)@<D0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072350, &unk_1E660BBE0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077610, &qword_1E660BBF0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBC0, &qword_1E65F1460);
  v25 = v30;
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBC8, &qword_1E660E900);
  v2 = sub_1E65E17A8();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v26);
  *(&v33 + 1) = v2;
  v31[0] = v25;
  sub_1E65B31DC(v31, &v26);
  v3 = swift_allocObject();
  v4 = v27;
  v3[1] = v26;
  v3[2] = v4;
  v5 = v29;
  v3[3] = v28;
  v3[4] = v5;
  sub_1E65B31DC(v31, &v26);
  v6 = swift_allocObject();
  v7 = v27;
  v6[1] = v26;
  v6[2] = v7;
  v8 = v29;
  v6[3] = v28;
  v6[4] = v8;
  sub_1E65B31DC(v31, &v26);
  v9 = swift_allocObject();
  v10 = v27;
  v9[1] = v26;
  v9[2] = v10;
  v11 = v29;
  v9[3] = v28;
  v9[4] = v11;
  sub_1E65B31DC(v31, &v26);
  v12 = swift_allocObject();
  v13 = v27;
  v12[1] = v26;
  v12[2] = v13;
  v14 = v29;
  v12[3] = v28;
  v12[4] = v14;
  sub_1E65B31DC(v31, &v26);
  v15 = swift_allocObject();
  v16 = v27;
  v15[1] = v26;
  v15[2] = v16;
  v17 = v29;
  v15[3] = v28;
  v15[4] = v17;
  sub_1E65B31DC(v31, &v26);
  v18 = swift_allocObject();
  v19 = v27;
  v18[1] = v26;
  v18[2] = v19;
  v20 = v29;
  v18[3] = v28;
  v18[4] = v20;
  v21 = swift_allocObject();
  v22 = v31[1];
  v21[1] = v31[0];
  v21[2] = v22;
  result = *&v32;
  v24 = v33;
  v21[3] = v32;
  v21[4] = v24;
  *a1 = &unk_1E660E910;
  a1[1] = v3;
  a1[2] = &unk_1E660E920;
  a1[3] = v6;
  a1[4] = &unk_1E660E930;
  a1[5] = v9;
  a1[6] = &unk_1E660E940;
  a1[7] = v12;
  a1[8] = &unk_1E660E950;
  a1[9] = v15;
  a1[10] = &unk_1E660E960;
  a1[11] = v18;
  a1[12] = &unk_1E660E970;
  a1[13] = v21;
  return result;
}

uint64_t type metadata accessor for SubscriptionPurchaseRequest(uint64_t a1)
{
  result = qword_1EE2DBE38;
  if (!qword_1EE2DBE38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5E03110(uint64_t a1)
{
  sub_1E5DEF738(319, &qword_1EE2D46D0, 0x1E698C818);
  if (v1 <= 0x3F)
  {
    sub_1E5E031A4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5E031A4(uint64_t a1)
{
  if (!qword_1EE2D47F0)
  {
    sub_1E5DEF738(255, &unk_1EE2D4618, 0x1E698CAF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07B740, &qword_1E65ED600);
    v1 = sub_1E65E6008();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D47F0);
    }
  }
}

uint64_t static SessionService.live(with:)@<X0>(void *a2@<X8>)
{
  type metadata accessor for LiveSessionService();
  swift_allocObject();

  v4 = sub_1E5E0336C(v3);

  *a2 = &unk_1E660A978;
  a2[1] = v4;
  a2[2] = &unk_1E660A988;
  a2[3] = v4;
  a2[4] = &unk_1E660A998;
  a2[5] = v4;
  a2[6] = &unk_1E660A9A8;
  a2[7] = v4;
  a2[8] = &unk_1E660A9B8;
  a2[9] = v4;
  a2[10] = &unk_1E660A9C8;
  a2[11] = v4;
  a2[12] = &unk_1E660A9D8;
  a2[13] = v4;
  a2[14] = &unk_1E660A9E8;
  a2[15] = v4;
  a2[16] = &unk_1E660A9F8;
  a2[17] = v4;
  return swift_retain_n();
}

uint64_t sub_1E5E0336C(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC78, &unk_1E6609370);
  sub_1E65D7F18();
  sub_1E5DF599C(v5, v2 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFC8, &unk_1E660AB90);
  sub_1E65D7F18();
  sub_1E5DF599C(v5, v2 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD00, &unk_1E660EBA0);
  sub_1E65D7F18();
  sub_1E5DF599C(v5, v2 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEE0, &qword_1E660A720);
  sub_1E65D7F18();
  sub_1E5DF599C(v5, v2 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  *(v2 + 280) = v5[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFD0, &qword_1E660ABA0);
  sub_1E65D7F18();
  sub_1E5DF599C(v5, v2 + 296);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B520, &qword_1E660ABA8);
  sub_1E65D7F18();
  sub_1E5DF599C(v5, v2 + 336);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFD8, &qword_1E660ABB0);
  sub_1E65D7F18();
  sub_1E5DF599C(v5, v2 + 376);
  return v2;
}

uint64_t static SharePlayService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BA08, &unk_1E660DEB0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  type metadata accessor for LiveSharePlayService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E5DF599C(&v5, v2 + 112);
  *(v2 + 152) = v4;
  *a1 = &unk_1E660DEC8;
  a1[1] = v2;
  a1[2] = &unk_1E660DED8;
  a1[3] = v2;
  a1[4] = &unk_1E660DEE8;
  a1[5] = v2;
  a1[6] = &unk_1E660DEF8;
  a1[7] = v2;
  return swift_retain_n();
}

uint64_t static SiriService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFE8, &unk_1E660AE20);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  type metadata accessor for LiveSiriService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E5DF599C(&v5, v2 + 112);
  *(v2 + 152) = v4;
  *a1 = &unk_1E660AE38;
  a1[1] = v2;
  a1[2] = &unk_1E660AE48;
  a1[3] = v2;
}