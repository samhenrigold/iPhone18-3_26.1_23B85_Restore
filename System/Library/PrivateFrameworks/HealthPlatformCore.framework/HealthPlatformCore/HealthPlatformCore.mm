void sub_228700DF8()
{
  v0 = *MEMORY[0x277CCE378];
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = v0;
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    sub_228700E7C(0);
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    qword_280DE14F8 = v4;
  }

  else
  {
    __break(1u);
  }
}

void sub_228700E7C(uint64_t a1)
{
  if (!qword_280DE1660)
  {
    v2 = type metadata accessor for BasicPluginInfo();
    v3 = sub_228700F00();
    v5 = type metadata accessor for PluginBundleProvider(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_280DE1660);
    }
  }
}

unint64_t sub_228700F00()
{
  result = qword_280DE1768;
  if (!qword_280DE1768)
  {
    type metadata accessor for BasicPluginInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1768);
  }

  return result;
}

uint64_t type metadata accessor for HealthExperienceStoreCoreSpotlightOperation(uint64_t a1)
{
  result = qword_280DE1778;
  if (!qword_280DE1778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id HealthExperienceStoreCoreSpotlightOperation.init(store:)(void *a1)
{
  sub_2287010E4(a1, v1 + qword_280DE10F8);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HealthExperienceStoreCoreSpotlightOperation(0);
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_2287010E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

void sub_228701194(void *a1)
{
  v1 = a1;
  sub_2287011DC();
}

void sub_2287011DC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_2287CAA50();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*((*MEMORY[0x277D85000] & *v0) + class metadata base offset for HealthExperienceStoreCoreSpotlightOperation + 16))(v4);
  [v7 startSpotlightIndexing];
  sub_2287CA9C0();
  v8 = v7;
  v9 = sub_2287CAA40();
  v10 = sub_2287CB610();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = v3;
    v12 = v11;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22[0] = v14;
    v22[1] = ObjectType;
    *v12 = 136315394;
    swift_getMetatypeMetadata();
    v15 = sub_2287CB250();
    v17 = sub_2287031D8(v15, v16, v22);
    v20 = v2;
    v18 = v17;

    *(v12 + 4) = v18;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v8;
    *v13 = v8;
    v19 = v8;
    _os_log_impl(&dword_2286FF000, v9, v10, "[%s] spotlightDelegate: %@", v12, 0x16u);
    sub_2287038A4(v13);
    MEMORY[0x22AABFD90](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AABFD90](v14, -1, -1);
    MEMORY[0x22AABFD90](v12, -1, -1);

    (*(v21 + 8))(v6, v20);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  sub_2287CA880();
}

uint64_t type metadata accessor for HealthExperienceStoreCoreSpotlightDelegate(uint64_t a1)
{
  result = qword_280DE1100;
  if (!qword_280DE1100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2287014C4(uint64_t a1)
{
  if (!qword_280DE1200)
  {
    sub_2287015EC();
    v1 = sub_2287C9BB0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1200);
    }
  }
}

void sub_22870151C(uint64_t a1)
{
  sub_2287014C4(319);
  if (v1 <= 0x3F)
  {
    sub_2287CA9B0();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2287015EC()
{
  if (!qword_280DE3650)
  {
    v0 = sub_2287CB820();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE3650);
    }
  }
}

void *HealthExperienceStoreCoreSpotlightDelegate.__allocating_init(for:)(void *a1)
{
  v3 = sub_2287CA970();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2287CA9B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(v1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_2287C99D0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_2287C99C0();
  v13 = [v10 initForStoreWithDescription:v11 coordinator:v12];

  (*(v7 + 16))(v9, v13 + OBJC_IVAR____TtC18HealthPlatformCore42HealthExperienceStoreCoreSpotlightDelegate_signposter, v6);
  v14 = v13;
  sub_2287CA960();
  v15 = sub_2287CA9A0();
  v16 = sub_2287CB720();
  if (sub_2287CB800())
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_2287CA950();
    _os_signpost_emit_with_name_impl(&dword_2286FF000, v15, v16, v18, "HealthExperienceStoreCoreSpotlightDelegate init", "", v17, 2u);
    MEMORY[0x22AABFD90](v17, -1, -1);
  }

  (*(v25 + 8))(v5, v26);
  (*(v7 + 8))(v9, v6);
  v19 = [objc_opt_self() defaultCenter];
  v20 = *MEMORY[0x277CBE260];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = v14;
  v22 = sub_2287C99C0();
  [v19 addObserver:v21 selector:sel_indexSearchableItemsToCurrentHistoryToken name:v20 object:v22];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = sub_2287C99E0();
  (*((*MEMORY[0x277D85000] & *v21) + 0xB8))();

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v21;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_228701A80(uint64_t a1, uint64_t a2)
{
  v4 = sub_2287CAA50();
  MEMORY[0x28223BE20](v4 - 8);
  if (qword_280DE1138 != -1)
  {
    swift_once();
  }

  v5 = objc_opt_self();

  v6 = [v5 standardUserDefaults];
  sub_2287015EC();
  v12 = 0;
  v13 = 0;
  sub_2287C9BA0();
  if (qword_280DE1110 != -1)
  {
    swift_once();
  }

  v7 = [v5 standardUserDefaults];
  sub_2287C9BA0();
  v8 = [v5 standardUserDefaults];
  v12 = 0;
  v13 = 0;
  sub_2287C9BA0();
  sub_2287CAA10();
  sub_2287CA990();
  v11.receiver = v2;
  v11.super_class = type metadata accessor for HealthExperienceStoreCoreSpotlightDelegate(0);
  return objc_msgSendSuper2(&v11, sel_initForStoreWithDescription_coordinator_, a1, a2);
}

uint64_t sub_228701CCC(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, void *a4)
{
  sub_2287C98D0();
  result = a2();
  *a3 = result;
  *a4 = v8;
  return result;
}

void sub_228701D60(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_2287014C4(0);
  v153 = v4;
  v151 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v152 = &v138[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2287CAA50();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v138[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v138[-v12];
  v14 = MEMORY[0x28223BE20](v11);
  v148 = &v138[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v149 = &v138[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v150 = &v138[-v19];
  MEMORY[0x28223BE20](v18);
  v21 = &v138[-v20];
  v22 = &unk_278607000;
  v23 = [a1 persistentStoreCoordinator];
  v24 = [v23 persistentStores];

  sub_228703004(0, &qword_280DE39E0, 0x277CBE4D0);
  v25 = sub_2287CB3A0();

  if (v25 >> 62)
  {
    if (sub_2287CB920())
    {
LABEL_3:
      if ((v25 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x22AABF120](0, v25);
      }

      else
      {
        if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_65;
        }

        v26 = *(v25 + 32);
      }

      v24 = v26;

      v27 = [a1 persistentStoreCoordinator];
      v28 = [v27 metadataForPersistentStore_];

      v10 = sub_2287CB140();
      if (qword_280DE1138 != -1)
      {
        swift_once();
      }

      v22 = v6;
      if (!*(v10 + 2) || (v29 = sub_22870304C(qword_280DE1140, *algn_280DE1148), (v30 & 1) == 0))
      {

        v6 = v7;
LABEL_20:
        sub_2287CAA10();
        v71 = sub_2287CAA40();
        v72 = sub_2287CB5F0();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = v24;
          v75 = swift_slowAlloc();
          v159 = v75;
          *v73 = 136446210;
          v76 = sub_2287CBE60();
          v78 = sub_2287031D8(v76, v77, &v159);

          *(v73 + 4) = v78;
          _os_log_impl(&dword_2286FF000, v71, v72, "[%{public}s] Could not get version or locale from metadata", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v75);
          MEMORY[0x22AABFD90](v75, -1, -1);
          MEMORY[0x22AABFD90](v73, -1, -1);
        }

        else
        {
        }

        (*(v6 + 8))(v13, v22);
        return;
      }

      sub_22870317C(*(v10 + 7) + 32 * v29, &v159);
      v6 = v7;
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_67:

        goto LABEL_20;
      }

      v7 = v155;
      a1 = v156;
      if (qword_280DE1110 == -1)
      {
        if (*(v10 + 2))
        {
          goto LABEL_13;
        }

        goto LABEL_66;
      }

LABEL_65:
      swift_once();
      if (*(v10 + 2))
      {
LABEL_13:
        v31 = sub_22870304C(qword_280DE1118, qword_280DE1120);
        if (v32)
        {
          sub_22870317C(*(v10 + 7) + 32 * v31, &v159);

          if (swift_dynamicCast())
          {
            v144 = v7;
            v142 = v155;
            v146 = v156;
            sub_2287CAA10();

            v33 = v2;
            v34 = sub_2287CAA40();
            v35 = sub_2287CB610();

            v36 = os_log_type_enabled(v34, v35);
            v147 = a1;
            v141 = v24;
            if (v36)
            {
              v37 = swift_slowAlloc();
              LODWORD(v143) = v35;
              v38 = a1;
              v39 = v37;
              v145 = swift_slowAlloc();
              v155 = v145;
              *v39 = 136446722;
              v40 = sub_2287CBE60();
              v42 = sub_2287031D8(v40, v41, &v155);

              *(v39 + 4) = v42;
              *(v39 + 12) = 2080;
              *(v39 + 14) = sub_2287031D8(v144, v38, &v155);
              *(v39 + 22) = 2080;
              v43 = OBJC_IVAR____TtC18HealthPlatformCore42HealthExperienceStoreCoreSpotlightDelegate__defaultsVersion;
              swift_beginAccess();
              v44 = v151;
              v45 = &v33[v43];
              v46 = v152;
              v47 = v153;
              (*(v151 + 16))(v152, v45, v153);
              sub_2287C9B80();
              (*(v44 + 8))(v46, v47);
              sub_2287015EC();
              v48 = sub_2287CB250();
              v50 = sub_2287031D8(v48, v49, &v155);

              *(v39 + 24) = v50;
              _os_log_impl(&dword_2286FF000, v34, v143, "[%{public}s] Comparing versions '%s' and '%s'", v39, 0x20u);
              v51 = v145;
              swift_arrayDestroy();
              MEMORY[0x22AABFD90](v51, -1, -1);
              MEMORY[0x22AABFD90](v39, -1, -1);
            }

            v143 = *(v6 + 8);
            v143(v21, v22);
            v52 = v150;
            sub_2287CAA10();
            v53 = v33;
            v54 = v146;

            v55 = sub_2287CAA40();
            v56 = sub_2287CB610();

            v57 = os_log_type_enabled(v55, v56);
            v145 = v53;
            if (v57)
            {
              v58 = swift_slowAlloc();
              v140 = swift_slowAlloc();
              v155 = v140;
              *v58 = 136446722;
              v59 = sub_2287CBE60();
              v139 = v56;
              v61 = sub_2287031D8(v59, v60, &v155);

              *(v58 + 4) = v61;
              *(v58 + 12) = 2080;
              *(v58 + 14) = sub_2287031D8(v142, v54, &v155);
              *(v58 + 22) = 2080;
              v62 = OBJC_IVAR____TtC18HealthPlatformCore42HealthExperienceStoreCoreSpotlightDelegate__defaultsLocale;
              swift_beginAccess();
              v63 = v151;
              v64 = v152;
              v65 = v153;
              (*(v151 + 16))(v152, v145 + v62, v153);
              sub_2287C9B80();
              (*(v63 + 8))(v64, v65);
              sub_2287015EC();
              v66 = sub_2287CB250();
              v68 = sub_2287031D8(v66, v67, &v155);

              *(v58 + 24) = v68;
              _os_log_impl(&dword_2286FF000, v55, v139, "[%{public}s] Comparing locales '%s' and '%s'", v58, 0x20u);
              v69 = v140;
              swift_arrayDestroy();
              MEMORY[0x22AABFD90](v69, -1, -1);
              v70 = v58;
              v53 = v145;
              MEMORY[0x22AABFD90](v70, -1, -1);

              v143(v150, v22);
            }

            else
            {

              v143(v52, v22);
              v64 = v152;
              v65 = v153;
              v63 = v151;
            }

            v79 = OBJC_IVAR____TtC18HealthPlatformCore42HealthExperienceStoreCoreSpotlightDelegate__defaultsVersion;
            swift_beginAccess();
            v80 = *(v63 + 16);
            v150 = v79;
            v80(v64, &v53[v79], v65);

            sub_2287C9B80();
            v83 = *(v63 + 8);
            v81 = v63 + 8;
            v82 = v83;
            v83(v64, v65);
            v84 = v146;
            if (!v156)
            {
              goto LABEL_47;
            }

            if (v144 == v155 && v156 == v147)
            {
            }

            else
            {
              v85 = sub_2287CBD00();

              if ((v85 & 1) == 0)
              {
                goto LABEL_47;
              }
            }

            v86 = OBJC_IVAR____TtC18HealthPlatformCore42HealthExperienceStoreCoreSpotlightDelegate__defaultsLocale;
            v87 = v145;
            swift_beginAccess();
            v88 = v87 + v86;
            v89 = v152;
            v90 = v153;
            v80(v152, v88, v153);

            sub_2287C9B80();
            v82(v89, v90);
            if (!v156)
            {
LABEL_46:

              goto LABEL_47;
            }

            if (v142 == v155 && v156 == v84)
            {

              goto LABEL_37;
            }

            v91 = sub_2287CBD00();

            if (v91)
            {
LABEL_37:
              v151 = v81;
              v92 = [v141 identifier];
              if (v92)
              {
                v93 = v92;
                v140 = sub_2287CB220();
                v95 = v94;
              }

              else
              {
                v140 = 0;
                v95 = 0;
              }

              v96 = v152;
              v97 = OBJC_IVAR____TtC18HealthPlatformCore42HealthExperienceStoreCoreSpotlightDelegate__defaultsStoreIdentifier;
              v98 = v145;
              swift_beginAccess();
              v99 = v98 + v97;
              v100 = v96;
              v101 = v96;
              v102 = v153;
              v80(v100, v99, v153);
              sub_2287C9B80();
              v82(v101, v102);
              if (v95)
              {
                if (v156)
                {
                  if (v140 == v155 && v95 == v156)
                  {

LABEL_56:

                    v123 = v148;
                    sub_2287CAA20();
                    v124 = sub_2287CAA40();
                    v125 = sub_2287CB610();
                    if (os_log_type_enabled(v124, v125))
                    {
                      v126 = swift_slowAlloc();
                      v127 = swift_slowAlloc();
                      v155 = v127;
                      *v126 = 136446210;
                      v128 = sub_2287CBE60();
                      v130 = sub_2287031D8(v128, v129, &v155);

                      *(v126 + 4) = v130;
                      _os_log_impl(&dword_2286FF000, v124, v125, "[%{public}s] Version, locale, and store identifier match up; we don't need to do anything here!", v126, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v127);
                      MEMORY[0x22AABFD90](v127, -1, -1);
                      MEMORY[0x22AABFD90](v126, -1, -1);
                    }

                    v143(v123, v22);
                    return;
                  }

                  v122 = sub_2287CBD00();

                  if (v122)
                  {
LABEL_55:

                    goto LABEL_56;
                  }

                  goto LABEL_47;
                }
              }

              else if (!v156)
              {
                goto LABEL_55;
              }

              goto LABEL_46;
            }

LABEL_47:
            sub_2287558C4();
            v103 = v149;
            sub_2287CAA10();
            v104 = v147;

            v105 = sub_2287CAA40();
            v106 = sub_2287CB610();

            if (os_log_type_enabled(v105, v106))
            {
              v107 = swift_slowAlloc();
              v108 = swift_slowAlloc();
              v155 = v108;
              *v107 = 136446722;
              v109 = sub_2287CBE60();
              v111 = sub_2287031D8(v109, v110, &v155);

              *(v107 + 4) = v111;
              *(v107 + 12) = 2080;
              v112 = v144;
              v113 = sub_2287031D8(v144, v147, &v155);

              *(v107 + 14) = v113;
              *(v107 + 22) = 2080;
              v114 = v142;
              *(v107 + 24) = sub_2287031D8(v142, v146, &v155);
              _os_log_impl(&dword_2286FF000, v105, v106, "[%{public}s] Updating UserDefaults with new version: %s and locale: %s", v107, 0x20u);
              swift_arrayDestroy();
              v115 = v108;
              v104 = v147;
              MEMORY[0x22AABFD90](v115, -1, -1);
              MEMORY[0x22AABFD90](v107, -1, -1);

              v143(v149, v22);
              v116 = v141;
            }

            else
            {

              v143(v103, v22);
              v116 = v141;
              v112 = v144;
              v114 = v142;
            }

            v157 = v112;
            v158 = v104;
            swift_beginAccess();
            sub_2287C9B90();
            swift_endAccess();
            v157 = v114;
            v158 = v146;
            swift_beginAccess();
            sub_2287C9B90();
            swift_endAccess();
            v117 = [v116 identifier];
            if (v117)
            {
              v118 = v117;
              v119 = sub_2287CB220();
              v121 = v120;
            }

            else
            {
              v119 = 0;
              v121 = 0;
            }

            v157 = v119;
            v158 = v121;
            swift_beginAccess();
            sub_2287C9B90();
            swift_endAccess();

            return;
          }

          goto LABEL_67;
        }
      }

LABEL_66:

      goto LABEL_67;
    }
  }

  else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  sub_2287CAA10();
  v131 = sub_2287CAA40();
  v132 = sub_2287CB5F0();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v159 = v134;
    *v133 = 136446210;
    v135 = sub_2287CBE60();
    v137 = sub_2287031D8(v135, v136, &v159);

    *(v133 + 4) = v137;
    _os_log_impl(&dword_2286FF000, v131, v132, "[%{public}s] No persistent store exists", v133, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v134);
    MEMORY[0x22AABFD90](v134, -1, -1);
    MEMORY[0x22AABFD90](v133, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
}

uint64_t sub_228703004(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_22870304C(uint64_t a1, uint64_t a2)
{
  sub_2287CBD80();
  sub_2287CB290();
  v4 = sub_2287CBDB0();

  return sub_2287030C4(a1, a2, v4);
}

unint64_t sub_2287030C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2287CBD00())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_22870317C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2287031D8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2287032A4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_22870317C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2287032A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_228703558(a5, a6);
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
    result = sub_2287CBA80();
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

void *sub_2287033B0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_2287035A4(0, &qword_280DE3998, MEMORY[0x277D84B78]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_228703428(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2287033B0(v5, 0);
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

  result = sub_2287CBA80();
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
        v10 = sub_2287CB2D0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2287033B0(v10, 0);
        result = sub_2287CBA10();
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

void *sub_228703558(uint64_t a1, unint64_t a2)
{
  v3 = sub_228703428(a1, a2);
  sub_228703694(&unk_283BBFE00);
  return v3;
}

void sub_2287035A4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2287CBCD0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2287035F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_228703640(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_228703694(uint64_t result)
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

  result = sub_22870E76C(result, v11, 1, v3);
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

uint64_t sub_22870386C()
{
  result = sub_2287CB220();
  qword_280DE62C8 = result;
  unk_280DE62D0 = v1;
  return result;
}

uint64_t sub_2287038A4(uint64_t a1)
{
  sub_228703900(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228703900(uint64_t a1)
{
  if (!qword_280DE1278)
  {
    sub_228703004(255, &qword_280DE39B8, 0x277D82BB8);
    v1 = sub_2287CB820();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1278);
    }
  }
}

uint64_t sub_2287039F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = sub_2287C9910();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C99B0();
  v13 = sub_2287C99A0();
  a4(a1, a2, a3);

  if (!v4)
  {
    v13 = sub_2287C9900();
    (*(v10 + 8))(v12, v9);
  }

  return v13;
}

void sub_228703B34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor12contentKinds7hkTypes17relevantDateRange14sourceProfilesSo11NSPredicateCSayAA11ContentKindOG_SaySo12HKObjectTypeCGSg10Foundation0M8IntervalVSgSayAA13SourceProfileOGSgtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  sub_228703B34(0, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v41 - v8;
  v9 = sub_2287C9590();
  v47 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v44 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2287C9B20();
  v11 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v41 = v9;
    v42 = a4;
    v43 = a2;
    v52 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v14, 0);
    v15 = v52;
    v17 = *(v11 + 16);
    v16 = v11 + 16;
    v18 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v49 = *(v16 + 56);
    v50 = v17;
    v48 = (v16 - 8);
    do
    {
      v19 = v51;
      v20 = v16;
      v50(v13, v18, v51);
      v21 = sub_2287C9B10();
      v23 = v22;
      (*v48)(v13, v19);
      v52 = v15;
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2287042D4((v24 > 1), v25 + 1, 1);
        v15 = v52;
      }

      *(v15 + 16) = v25 + 1;
      v26 = v15 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v18 += v49;
      --v14;
      v16 = v20;
    }

    while (v14);
    a4 = v42;
    a2 = v43;
    v9 = v41;
  }

  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2287CCFF0;
  v28 = MEMORY[0x277D837D0];
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = sub_2287043F8();
  *(v27 + 32) = 0xD000000000000013;
  *(v27 + 40) = 0x80000002287D03B0;
  sub_2287035F0(0, &qword_280DE3A00, v28, MEMORY[0x277D83940]);
  *(v27 + 96) = v29;
  *(v27 + 104) = sub_22870444C();
  *(v27 + 72) = v15;
  v30 = sub_2287CB550();
  sub_2287035F0(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2287CCC50;
  *(v31 + 32) = v30;
  v52 = v31;
  v32 = v46;
  sub_2287044C8(v45, v46);
  v33 = v47;
  if ((*(v47 + 48))(v32, 1, v9) == 1)
  {
    v34 = v30;
    sub_22870455C(v32);
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v35 = v44;
  (*(v33 + 32))(v44, v32, v9);
  v36 = v30;
  _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor17relevantDateRangeSo11NSPredicateC10Foundation0I8IntervalV_tFZ_0();
  MEMORY[0x22AABEA50]();
  if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2287CB3E0();
    v35 = v44;
  }

  sub_2287CB420();
  (*(v33 + 8))(v35, v9);
  if (a4)
  {
LABEL_13:
    sub_2287CA800();
    MEMORY[0x22AABDEC0](a4);
    MEMORY[0x22AABEA50]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2287CB3E0();
    }

    sub_2287CB420();
  }

LABEL_16:
  if (a2)
  {
    v37 = _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor10objectypesSo11NSPredicateCSaySo12HKObjectTypeCG_tFZ_0(a2);
    MEMORY[0x22AABEA50]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2287CB3E0();
    }

    sub_2287CB420();
  }

  v38 = sub_2287CB390();

  v39 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v39;
}

char *sub_2287041B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287042F4(0, &qword_280DE39A8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2287042D4(char *a1, int64_t a2, char a3)
{
  result = sub_2287041B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2287042F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_228704344(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_228704394()
{
  result = qword_280DE3840;
  if (!qword_280DE3840)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DE3840);
  }

  return result;
}

unint64_t sub_2287043F8()
{
  result = qword_280DE38A8[0];
  if (!qword_280DE38A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DE38A8);
  }

  return result;
}

unint64_t sub_22870444C()
{
  result = qword_280DE38A0;
  if (!qword_280DE38A0)
  {
    sub_2287035F0(255, &qword_280DE3A00, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE38A0);
  }

  return result;
}

uint64_t sub_2287044C8(uint64_t a1, uint64_t a2)
{
  sub_228703B34(0, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22870455C(uint64_t a1)
{
  sub_228703B34(0, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2287045E8()
{
  type metadata accessor for BaseFeedPopulationManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280DE1288 = result;
  return result;
}

uint64_t static FoundationPluginBundleProvider.sharedInstance.getter()
{
  if (qword_280DE14F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_228704724(uint64_t (*a1)(void))
{
  v2 = sub_2287C9910();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C99B0();
  sub_2287C99A0();
  v6 = a1();

  v18 = MEMORY[0x277D84F90];
  v7 = *(v6 + 16);
  if (v7)
  {
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = (*(v8 + 64) + 32) & ~*(v8 + 64);
    v17[1] = v6;
    v12 = v6 + v11;
    v13 = *(v8 + 56);
    do
    {
      v9(v5, v12, v2);
      sub_2287C9900();
      v14 = (*(v8 - 8))(v5, v2);
      MEMORY[0x22AABEA50](v14);
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17[0] = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2287CB3E0();
      }

      sub_2287CB420();
      v12 += v13;
      --v7;
    }

    while (v7);
    v15 = v18;

    return v15;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

id static FeedItem.predicateFor(contentKinds:keyword:relevantDateRange:sourceProfiles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v34 = a4;
  v32 = a1;
  v7 = sub_2287C9590();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228703B34(0, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2287CCFF0;
  v17 = MEMORY[0x277D837D0];
  *(v16 + 56) = MEMORY[0x277D837D0];
  v18 = sub_2287043F8();
  *(v16 + 32) = 0x7364726F7779656BLL;
  *(v16 + 40) = 0xE800000000000000;
  *(v16 + 96) = v17;
  *(v16 + 104) = v18;
  *(v16 + 64) = v18;
  *(v16 + 72) = a2;
  *(v16 + 80) = a3;

  v19 = sub_2287CB550();
  (*(v8 + 56))(v15, 1, 1, v7);
  v20 = _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor12contentKinds7hkTypes17relevantDateRange14sourceProfilesSo11NSPredicateCSayAA11ContentKindOG_SaySo12HKObjectTypeCGSg10Foundation0M8IntervalVSgSayAA13SourceProfileOGSgtFZ_0(v32, 0, v15, v33);
  sub_22870455C(v15);
  sub_2287035F0(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2287CCFD0;
  *(v21 + 32) = v19;
  *(v21 + 40) = v20;
  v35 = v21;
  sub_2287044C8(v34, v13);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    v22 = v19;
    v23 = v20;
    sub_22870455C(v13);
  }

  else
  {
    v24 = v31;
    (*(v8 + 32))(v31, v13, v7);
    v25 = v19;
    v26 = v20;
    _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor17relevantDateRangeSo11NSPredicateC10Foundation0I8IntervalV_tFZ_0();
    MEMORY[0x22AABEA50]();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2287CB3E0();
    }

    sub_2287CB420();
    (*(v8 + 8))(v24, v7);
  }

  v27 = sub_2287CB390();

  v28 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v28;
}

id static FeedItem.predicateForMissingKeyword(_:)(uint64_t a1, uint64_t a2)
{
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2287CCFF0;
  v5 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v6 = sub_2287043F8();
  *(v4 + 32) = 0x7364726F7779656BLL;
  *(v4 + 40) = 0xE800000000000000;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 64) = v6;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;

  v7 = sub_2287CB550();
  v8 = [objc_opt_self() notPredicateWithSubpredicate_];

  return v8;
}

id _sSo22NSManagedObjectContextC18HealthPlatformCoreE22makeFeedItemsPredicate3for27associatedProfileIdentifierSo11NSPredicateC0dE00H0C4KindO_So09HKProfileN0CSgtF_0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  sub_228705538(0, &qword_280DE3A98, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - v4;
  v6 = sub_2287C97C0();
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA640();
  v8 = sub_2287CA630();
  v9 = sub_2287CB210();
  v10 = objc_opt_self();
  v11 = [v10 expressionForKeyPath_];

  v12 = v8;
  v13 = sub_2287CB210();
  v14 = [v10 expressionForSubquery:v11 usingIteratorVariable:v13 predicate:v12];

  v35 = v14;
  v15 = [v14 predicate];
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_22870558C(0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2287CCFE0;
  *(v16 + 56) = MEMORY[0x277D837D0];
  v17 = sub_2287043F8();
  *(v16 + 64) = v17;
  strcpy((v16 + 32), "hideInDiscover");
  *(v16 + 47) = -18;
  v18 = sub_2287CB550();
  sub_2287035A4(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2287CCFD0;
  *(v19 + 32) = v15;
  *(v19 + 40) = v18;
  v36 = v19;
  v33 = v15;
  v20 = v18;
  v21 = v5;
  v22 = v20;
  LOBYTE(v20) = v2;
  v23 = v34;
  Feed.Kind.earliestDisplayDateUpdated.getter(v20, v5);
  if ((*(v23 + 48))(v5, 1, v6) == 1)
  {
    sub_228705C28(v5);
  }

  else
  {
    v24 = v32;
    (*(v23 + 32))(v32, v21, v6);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2287CCFF0;
    *(v25 + 56) = MEMORY[0x277D837D0];
    *(v25 + 64) = v17;
    *(v25 + 32) = 0xD00000000000001CLL;
    *(v25 + 40) = 0x80000002287CFF10;
    v26 = sub_2287C9770();
    *(v25 + 96) = sub_228703004(0, &qword_280DE1928, 0x277CBEAA8);
    *(v25 + 104) = sub_228705E60();
    *(v25 + 72) = v26;
    v27 = sub_2287CB550();
    MEMORY[0x22AABEA50]();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2287CB3E0();
    }

    sub_2287CB420();

    (*(v23 + 8))(v24, v6);
  }

  v28 = sub_2287CB390();

  v29 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v29;
}

id NSManagedObjectContext.makeFeedItemsFetchedResultsController(for:associatedProfileIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_2287CA800();
  v6 = MEMORY[0x22AABDDF0]();
  v7 = _sSo22NSManagedObjectContextC18HealthPlatformCoreE22makeFeedItemsPredicate3for27associatedProfileIdentifierSo11NSPredicateC0dE00H0C4KindO_So09HKProfileN0CSgtF_0(a1, a2);
  [v6 setPredicate_];

  v8 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v9 = sub_2287CB210();
  v10 = [v8 initWithKey:v9 ascending:1];

  v11 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v12 = sub_2287CB210();
  v13 = [v11 initWithKey:v12 ascending:1];

  sub_2287035A4(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2287CCFD0;
  *(v14 + 32) = v10;
  *(v14 + 40) = v13;
  sub_228703004(0, &qword_280DE3878, 0x277CCAC98);
  v15 = v10;
  v16 = v13;
  v17 = sub_2287CB390();

  [v6 setSortDescriptors_];

  v18 = [objc_allocWithZone(MEMORY[0x277CBE430]) initWithFetchRequest:v6 managedObjectContext:v3 sectionNameKeyPath:0 cacheName:0];
  return v18;
}

void sub_228705538(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2287CB820();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22870558C(uint64_t a1)
{
  if (!qword_280DE3848)
  {
    sub_22870D3A8(255, &qword_280DE3840, MEMORY[0x277D84D98]);
    v1 = sub_2287CBCD0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE3848);
    }
  }
}

uint64_t Feed.Kind.earliestDisplayDateUpdated.getter@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v35 = a1;
  v2 = sub_2287C97C0();
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_228705B74(0, &qword_280DE3958, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  sub_228705B74(0, &unk_280DE3960, MEMORY[0x277CC99E8], v4);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  sub_228705BD8(0, &qword_280DE17C0, MEMORY[0x277D83B88], MEMORY[0x277D11E70]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = sub_2287C9610();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2287C9870();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v35 == 2)
  {
    sub_2287C9850();
    if (qword_280DE1430 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v12, qword_280DE1438);
    (*(v13 + 16))(v15, v23, v12);
    sub_2287C9B80();
    result = (*(v13 + 8))(v15, v12);
    if (__OFSUB__(0, v36))
    {
      __break(1u);
    }

    else
    {
      sub_2287C9850();
      (*(v20 + 56))(v10, 0, 1, v19);
      v25 = sub_2287C98A0();
      (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
      sub_2287C9600();
      v26 = v32;
      sub_2287C97B0();
      sub_2287C9840();
      (*(v34 + 8))(v26, v2);
      (*(v30 + 8))(v18, v31);
      return (*(v20 + 8))(v22, v19);
    }
  }

  else
  {
    v27 = v33;
    v28 = *(v34 + 56);

    return v28(v27, 1, 1, v2);
  }

  return result;
}

void sub_228705B74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_228705BD8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_228705C28(uint64_t a1)
{
  sub_228705C84(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228705C84(uint64_t a1)
{
  if (!qword_280DE3A98)
  {
    sub_2287C97C0();
    v1 = sub_2287CB820();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE3A98);
    }
  }
}

uint64_t sub_228705CDC()
{
  sub_228705BD8(0, &qword_280DE17C0, MEMORY[0x277D83B88], MEMORY[0x277D11E70]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_280DE1438);
  __swift_project_value_buffer(v1, qword_280DE1438);
  sub_2287CB220();
  sub_228703004(0, &qword_280DE3890, 0x277CBEBD0);
  sub_2287CB640();
  return sub_2287C9BA0();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_228705E60()
{
  result = qword_280DE1920;
  if (!qword_280DE1920)
  {
    sub_228703004(255, &qword_280DE1928, 0x277CBEAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1920);
  }

  return result;
}

id FeedItem.associatedDisplayCategory.getter()
{
  v1 = [v0 categoryIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_opt_self() categoryWithName_];

  return v3;
}

void *BasicPluginInfo.init(bundle:)(void *a1)
{
  v2 = sub_228705FD4(a1);

  return v2;
}

void *sub_228705FD4(void *a1)
{
  v1[2] = a1;
  v2 = a1;
  v3 = [v2 bundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2287CB220();
    v7 = v6;

    v1[3] = v5;
    v1[4] = v7;
    return v1;
  }

  else
  {
    sub_2287CBA20();

    v9 = [v2 description];
    v10 = sub_2287CB220();
    v12 = v11;

    MEMORY[0x22AABE980](v10, v12);

    MEMORY[0x22AABE980](0xD00000000000001BLL, 0x80000002287D1460);
    result = sub_2287CBB90();
    __break(1u);
  }

  return result;
}

uint64_t ForYouSectionKind.localizedTitle.getter(unsigned __int8 a1)
{
  type metadata accessor for SummaryTabFeedPopulationManager(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_2287C9620();

  return v3;
}

uint64_t type metadata accessor for SummaryTabFeedPopulationManager(uint64_t a1)
{
  result = qword_280DE1418;
  if (!qword_280DE1418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_228706364(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2287063C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id static SummaryTabRelevanceEngineCoordinator.defaultModelContainerURL.getter@<X0>(uint64_t a1@<X8>)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v2 = sub_2287C9700();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - v7;
  sub_2287C9F10();
  sub_2287C9F00();
  sub_2287C96C0();
  (*(v3 + 8))(v6, v2);
  v9 = [objc_opt_self() defaultManager];
  v10 = sub_2287C96A0();
  v19[0] = 0;
  v11 = [v9 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:v19];

  v18[0] = v19[0];
  if (v11)
  {
    (*(v3 + 32))(a1, v8, v2);
    v12 = v18[0];

    return v12;
  }

  else
  {
    v14 = v18[0];
    v15 = sub_2287C9640();

    swift_willThrow();
    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    sub_2287CBA20();
    MEMORY[0x22AABE980](0xD000000000000036, 0x80000002287D1500);
    v18[1] = v15;
    v16 = v15;
    sub_22874A0A4();
    v17 = sub_2287CB270();
    MEMORY[0x22AABE980](v17);

    result = sub_2287CBB90();
    __break(1u);
  }

  return result;
}

void sub_2287066F4(uint64_t a1)
{
  sub_2287063C8(319, &qword_280DE17B8, MEMORY[0x277D12000], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_228706808@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_228706830(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2287C9E70();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_2287068DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2287C9E70();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_228706998()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2287069F0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_228706A30@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFinished];
  *a2 = result;
  return result;
}

uint64_t sub_228706A64()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228706A9C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228706AD4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_228706AEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228706B24()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228706B5C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_228706BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_22872C8E0(0, &qword_280DE3A98, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_228706C9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    sub_22872C8E0(0, &qword_280DE3A98, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_228706D8C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2287C9B20();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_13:
    v15 = *(v8 + 48);

    return v15(a1 + v9, a2, v7);
  }

  sub_22872C8E0(0, &qword_280DE3398, MEMORY[0x277D12080], MEMORY[0x277D83D88]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_13;
  }

  sub_22872C8E0(0, &qword_280DE33C8, MEMORY[0x277D12030], MEMORY[0x277D83D88]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[8];
    goto LABEL_13;
  }

  v12 = sub_2287C97C0();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[9];
    goto LABEL_13;
  }

  sub_22872C8E0(0, &qword_280DE33E0, MEMORY[0x277D11FA8], MEMORY[0x277D83D88]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v7 = v13;
    v8 = *(v13 - 8);
    v9 = a3[12];
    goto LABEL_13;
  }

  sub_22872C8E0(0, &qword_280DE3400, MEMORY[0x277D11F48], MEMORY[0x277D83D88]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v7 = v14;
    v8 = *(v14 - 8);
    v9 = a3[13];
    goto LABEL_13;
  }

  v17 = *(a1 + a3[14] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

void sub_228707078(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2287C9B20();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    sub_22872C8E0(0, &qword_280DE3398, MEMORY[0x277D12080], MEMORY[0x277D83D88]);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[7];
    }

    else
    {
      sub_22872C8E0(0, &qword_280DE33C8, MEMORY[0x277D12030], MEMORY[0x277D83D88]);
      if (*(*(v13 - 8) + 84) == a3)
      {
        v9 = v13;
        v10 = *(v13 - 8);
        v11 = a4[8];
      }

      else
      {
        v14 = sub_2287C97C0();
        if (*(*(v14 - 8) + 84) == a3)
        {
          v9 = v14;
          v10 = *(v14 - 8);
          v11 = a4[9];
        }

        else
        {
          sub_22872C8E0(0, &qword_280DE33E0, MEMORY[0x277D11FA8], MEMORY[0x277D83D88]);
          if (*(*(v15 - 8) + 84) == a3)
          {
            v9 = v15;
            v10 = *(v15 - 8);
            v11 = a4[12];
          }

          else
          {
            sub_22872C8E0(0, &qword_280DE3400, MEMORY[0x277D11F48], MEMORY[0x277D83D88]);
            if (*(*(v16 - 8) + 84) != a3)
            {
              *(a1 + a4[14] + 8) = (a2 - 1);
              return;
            }

            v9 = v16;
            v10 = *(v16 - 8);
            v11 = a4[13];
          }
        }
      }
    }
  }

  v17 = *(v10 + 56);

  v17(a1 + v11, a2, a2, v9);
}

uint64_t sub_228707378()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2287073B0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_228739D88();
}

__n128 sub_228707424(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_228707430@<X0>(void *a1@<X8>)
{
  v2 = sub_228739DBC();
  *a1 = v2;

  return v2;
}

uint64_t sub_2287074A4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_228739DF0();
}

uint64_t sub_228707518()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_228707558()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2287075B8()
{
  MEMORY[0x22AABFE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2287075F0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_228707640()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = (type metadata accessor for GeneratorPipelineManagerWrapper(0, AssociatedTypeWitness, v2, v3) - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(*v4 + 64);
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v6, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_0((v0 + v6 + v4[9]));
  v8 = v4[10];
  v9 = sub_2287C9ED0();
  (*(*(v9 - 8) + 8))(v0 + v6 + v8, v9);
  v10 = v4[11];
  v11 = sub_2287C9810();
  (*(*(v11 - 8) + 8))(v0 + v6 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_2287077E4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = (type metadata accessor for GeneratorPipelineManagerWrapper(0, AssociatedTypeWitness, v2, v3) - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(*v4 + 64);
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v6, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_0((v0 + v6 + v4[9]));
  v8 = v4[10];
  v9 = sub_2287C9ED0();
  (*(*(v9 - 8) + 8))(v0 + v6 + v8, v9);
  v10 = v4[11];
  v11 = sub_2287C9810();
  (*(*(v11 - 8) + 8))(v0 + v6 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_2287079C8()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_228707A04()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228707A3C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228707A74()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_228707AC8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228707B04()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228707B3C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228707BD0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_228707C28()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228707C60()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_228707C98()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

id sub_228707CE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_228707D44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_228707D94@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
  return swift_unknownObjectRetain();
}

id sub_228707DE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

uint64_t sub_228707E44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_228707E8C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 56) = v2;
  return result;
}

uint64_t sub_228707ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2287CA1F0();
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

uint64_t sub_228707F94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2287CA1F0();
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

uint64_t sub_22870804C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

id sub_2287080A4@<X0>(void *a1@<X8>)
{
  v2 = sub_228749F18();
  *a1 = v2;

  return v2;
}

__n128 sub_228708118(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_228708124()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22870816C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_2287081AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22874D558();
  *a1 = result;
  return result;
}

void sub_2287081D8(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___trainingContext);
  *(*a2 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___trainingContext) = *a1;
  v3 = v2;
}

id sub_228708228@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22874DAE4();
  *a1 = result;
  return result;
}

void sub_228708254(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___relevanceEngine);
  *(*a2 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___relevanceEngine) = *a1;
  v3 = v2;
}

void sub_2287082A4(unsigned __int8 *a1@<X8>)
{
  v2 = sub_22874DAE4();
  v3 = [v2 automaticallyResumeEngine];

  *a1 = v3;
}

void sub_2287082F0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_22874DAE4();
  [v2 setAutomaticallyResumeEngine_];
}

uint64_t sub_228708348()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228708380()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2287083C4()
{
  if (MEMORY[0x277D85020])
  {
    sub_2287507F0();
  }
}

uint64_t sub_22870840C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2287C9E70();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_2287084B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2287C9E70();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_228708570()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2287085D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 256);
}

uint64_t sub_228708624()
{
  sub_22877017C(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2287086C0()
{
  sub_2287691F4(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(*(v1 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = v0 + v4;

  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + 8));
  v7 = *(v2 + 40);
  v8 = sub_2287C9ED0();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = *(v2 + 44);
  v10 = sub_2287C9810();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_22870881C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2287088B4()
{
  sub_228771868(0);
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v1 - 8) + 64);

  sub_2287715EC(0, &qword_280DE2E58, &qword_280DE1A10, MEMORY[0x277D120A0], type metadata accessor for AnyGenerator);
  v7 = *(v6 + 44);
  v8 = sub_2287C9E70();
  (*(*(v8 - 8) + 8))(v0 + v4 + v7, v8);

  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + v2[9]));
  v9 = v2[10];
  v10 = sub_2287C9ED0();
  (*(*(v10 - 8) + 8))(v0 + v4 + v9, v10);
  v11 = v2[11];
  v12 = sub_2287C9810();
  (*(*(v12 - 8) + 8))(v0 + v4 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_228708AA8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228708AE0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228708B20()
{
  MEMORY[0x22AABFE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228708B60()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228708B98()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_228708C18()
{
  sub_2287691F4(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(*(v1 - 8) + 64);

  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + 8));
  v6 = *(v2 + 40);
  v7 = sub_2287C9ED0();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);
  v8 = *(v2 + 44);
  v9 = sub_2287C9810();
  (*(*(v9 - 8) + 8))(v0 + v4 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_228708D58()
{
  sub_2287691F4(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(*(v1 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = v0 + v4;

  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + 8));
  v7 = *(v2 + 40);
  v8 = sub_2287C9ED0();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = *(v2 + 44);
  v10 = sub_2287C9810();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_228708E9C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228708ED4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228708F68()
{
  sub_228774694(0);
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v1 - 8) + 64);

  sub_22870CAC4(0);
  v7 = *(v6 + 44);
  v8 = sub_2287C9E70();
  (*(*(v8 - 8) + 8))(v0 + v4 + v7, v8);

  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + v2[9]));
  v9 = v2[10];
  v10 = sub_2287C9ED0();
  (*(*(v10 - 8) + 8))(v0 + v4 + v9, v10);
  v11 = v2[11];
  v12 = sub_2287C9810();
  (*(*(v12 - 8) + 8))(v0 + v4 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2287091D0()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_228709240()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228709278()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2287092B0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_228709300@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_2287010E4(v3 + 16, a2);
}

uint64_t sub_228709358()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2287093B0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2287093EC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

id sub_228709424@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_228709480@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

id sub_2287094D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22877FAF8();
  *a1 = result;
  return result;
}

uint64_t sub_228709510()
{
  MEMORY[0x22AABFE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228709564()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2287095E4()
{
  sub_228770F78(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v1 - 8) + 64);

  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + 8));
  v6 = *(v2 + 40);
  v7 = sub_2287C9ED0();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);
  v8 = *(v2 + 44);
  v9 = sub_2287C9810();
  (*(*(v9 - 8) + 8))(v0 + v4 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22870971C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2287C97C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 8)
    {
      return v10 - 7;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2287097D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2287C97C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 7;
  }

  return result;
}

uint64_t sub_22870988C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2287953E4(0, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 8)
    {
      return v10 - 7;
    }

    else
    {
      return 0;
    }
  }
}

void sub_228709974(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2287953E4(0, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 7;
  }
}

uint64_t sub_228709A60()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228709A98()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228709AD8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_228709B20()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_228798C94(*(v0 + 16), *(v0 + 24), v1 & 1);
  }

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_228709B68()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228709BB8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228709BF8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228709C34()
{

  sub_228746048(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_228709C90()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_2287C9700();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_228709DE8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_228709EC4()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228709F04()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228709F3C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_228709FE4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_22870A07C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22870A160()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22870A198()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22870A1D0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_22870A290()
{
  v1 = sub_2287C9810();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2287CA970();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_22870A3E4()
{
  v1 = sub_2287C9810();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2287CA970();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (v9 + *(v7 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_22870A534()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22870A56C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22870A5A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22870A5DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22870A614()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22870A654()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22870A68C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22870A6C4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22870A714()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22870A7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2287C9700();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_2287C97C0();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22870A8C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2287C9700();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_2287C97C0();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22870AA08()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  if (*(v0 + 72))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22870AA60()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22870AAB8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22870AAF8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22870AB40()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22870AB98()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22870ABDC()
{
  v1 = sub_2287C9E70();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22870AC64()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22870ACAC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22870ACE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for FeedPopulationListenerSchedulerConfiguration(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v15 = *(*v6 + 64);
  v8 = (v7 + 32) & ~v7;
  (*(*(v5 - 8) + 8))(v4 + v8, v5);
  v9 = v6[11];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v4 + v8 + v9, AssociatedTypeWitness);
  v11 = v6[12];
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v4 + v8 + v11, 1, v12))
  {
    (*(v13 + 8))(v4 + v8 + v11, v12);
  }

  return MEMORY[0x2821FE8E8](v4, ((((v15 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v7 | 7);
}

uint64_t sub_22870AF20()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22870AF58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22870AFCC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22870B01C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22870B054()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22870B0B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22870B0EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22870B124()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22870B15C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_22870B1AC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_22870B20C()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22870B26C()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22870B2D4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22870B33C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_publisher;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22870B39C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_22870B608(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DateRangeRelevanceProviderManager();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22870B688()
{
  v1 = *v0;
  sub_2287CBD80();
  MEMORY[0x22AABF460](v1);
  return sub_2287CBDB0();
}

uint64_t sub_22870B6D0(uint64_t a1)
{
  v2 = *v1;
  sub_2287CBD80();
  MEMORY[0x22AABF460](v2);
  return sub_2287CBDB0();
}

uint64_t sub_22870B714(uint64_t a1, uint64_t a2)
{
  v19 = sub_2287C97C0();
  v2 = *(v19 - 8);
  v3 = MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = sub_2287C9590();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA250();
  v12 = sub_2287C9580();
  v13 = *(v9 + 8);
  result = v13(v11, v8);
  if ((v12 & 1) == 0)
  {
    sub_2287CA250();
    sub_2287C9570();
    v13(v11, v8);
    v15 = sub_2287C9780();
    v18 = *(v2 + 8);
    v18(v7, v19);
    if (v15)
    {
      sub_2287CA240();
      sub_2287CA250();
      sub_2287C9570();
      v13(v11, v8);
    }

    else
    {
      sub_2287CA250();
      sub_2287C9540();
      v13(v11, v8);
      sub_2287CA230();
    }

    sub_2287C9730();
    sub_2287C9730();
    sub_2287C9730();
    REPercentThroughRange();
    v17 = v18;
    v16 = v19;
    v18(v5, v19);
    return v17(v7, v16);
  }

  return result;
}

id sub_22870BA4C(void *a1, void *a2)
{
  v4 = sub_2287CA280();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228705C84(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2287C97C0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (v15 = [a2 attributeForKey_]) != 0)
  {
    v22[1] = v15;
    sub_22870BE00();
    v16 = swift_dynamicCast();
    (*(v12 + 56))(v10, v16 ^ 1u, 1, v11);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      (*(v12 + 32))(v14, v10, v11);
      goto LABEL_8;
    }
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_2287C97B0();
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    sub_228705C28(v10);
  }

LABEL_8:
  type metadata accessor for DateRangeRelevanceProvider(0);
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    (*(v5 + 16))(v7, v17 + OBJC_IVAR____TtC18HealthPlatformCore26DateRangeRelevanceProvider_relevantDateInterval, v4);
    v18 = a1;
    sub_22870B714(v7, v14);
    v20 = [objc_opt_self() featureValueWithDouble_];

    (*(v5 + 8))(v7, v4);
    (*(v12 + 8))(v14, v11);
    return v20;
  }

  else
  {
    result = sub_2287CBB90();
    __break(1u);
  }

  return result;
}

unint64_t sub_22870BE00()
{
  result = qword_27D8509E0;
  if (!qword_27D8509E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D8509E0);
  }

  return result;
}

unint64_t sub_22870BE64()
{
  result = qword_280DE35E0;
  if (!qword_280DE35E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE35E0);
  }

  return result;
}

void sub_22870BF00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_22870BFE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AnyPipeline.domain.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_2287C9E70();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AnyPipeline.wrappedTypeName.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t AnyPipeline.debugDescription.getter(uint64_t a1)
{
  v3 = sub_2287C9E70();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = sub_2287CBE60();
  v10[1] = v7;
  MEMORY[0x22AABE980](95, 0xE100000000000000);
  MEMORY[0x22AABE980](*(v1 + *(a1 + 40)), *(v1 + *(a1 + 40) + 8));
  MEMORY[0x22AABE980](95, 0xE100000000000000);
  (*(v4 + 16))(v6, v1 + *(a1 + 36), v3);
  v8 = sub_2287CB250();
  MEMORY[0x22AABE980](v8);

  return v10[0];
}

uint64_t sub_22870C298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22870D2EC(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = sub_2287C9F90();
  v8 = MEMORY[0x277D12200];
  sub_22870D284(0, &qword_280DE1B50, &qword_280DE3358, MEMORY[0x277D12200]);
  sub_22870C510(0);
  sub_22870D404(&qword_280DE1B58, &qword_280DE1B50, &qword_280DE3358, v8);
  sub_2287CAF70();

  sub_22870CB7C(&qword_280DE1C58, sub_22870D2EC, MEMORY[0x277CBCC08]);
  v9 = sub_2287CAF40();
  (*(v5 + 8))(v7, v4);
  return v9;
}

void sub_22870C47C(uint64_t a1)
{
  if (!qword_280DE2F00)
  {
    sub_22870C510(255);
    v3 = v2;
    v4 = sub_22870CB7C(qword_280DE2E60, sub_22870C510, &protocol conformance descriptor for AnyGenerator<A, B>);
    v6 = type metadata accessor for AnyPipeline(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_280DE2F00);
    }
  }
}

void sub_22870C530()
{
  if (!qword_280DE1A10)
  {
    v0 = sub_2287CB450();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1A10);
    }
  }
}

uint64_t sub_22870C5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a4)(void)@<X3>, void (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v21 = a5;
  v22 = a6;
  v12 = *(a1 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v12 + 16))(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v7, a1);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  (*(v12 + 32))(v15 + v14, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v16 = a4(0);
  v21(a1, a2);
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();
  result = sub_2287CB250();
  *a7 = v22;
  a7[1] = v15;
  v18 = (a7 + *(v16 + 40));
  *v18 = result;
  v18[1] = v19;
  return result;
}

uint64_t sub_22870C788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22870D1C8(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = sub_2287CA4E0();
  v8 = MEMORY[0x277D120C8];
  sub_22870D284(0, &qword_280DE1B60, &qword_280DE3388, MEMORY[0x277D120C8]);
  sub_22870CAC4(0);
  sub_22870D404(&qword_280DE1B68, &qword_280DE1B60, &qword_280DE3388, v8);
  sub_2287CAF70();

  sub_22870CB7C(&qword_280DE1C68, sub_22870D1C8, MEMORY[0x277CBCC08]);
  v9 = sub_2287CAF40();
  (*(v5 + 8))(v7, v4);
  return v9;
}

uint64_t objectdestroyTm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_22870CA30(uint64_t a1)
{
  if (!qword_280DE2EF0)
  {
    sub_22870CAC4(255);
    v3 = v2;
    v4 = sub_22870CB7C(&qword_280DE2E50, sub_22870CAC4, &protocol conformance descriptor for AnyGenerator<A, B>);
    v6 = type metadata accessor for AnyPipeline(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_280DE2EF0);
    }
  }
}

void sub_22870CAE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    v5 = a3(255);
    v6 = type metadata accessor for AnyGenerator(a1, v5, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_22870CB7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22870CBDC(void *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return a2(v3, v4);
}

void sub_22870CC98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22870CCFC(uint64_t a1)
{
  if (!qword_280DE2DB0)
  {
    sub_22870C47C(255);
    v3 = v2;
    v4 = sub_22870CB7C(qword_280DE2F10, sub_22870C47C, "!'?[\\m");
    v6 = type metadata accessor for AnyPipelineProvider(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_280DE2DB0);
    }
  }
}

uint64_t sub_22870CDE4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22870CC98(0, a3, a4, type metadata accessor for GeneratorPipelineProviderWrapper);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_22870CE64(uint64_t a1)
{
  if (!qword_280DE2DA0)
  {
    sub_22870CA30(255);
    v3 = v2;
    v4 = sub_22870CB7C(&qword_280DE2EF8, sub_22870CA30, "!'?[\\m");
    v6 = type metadata accessor for AnyPipelineProvider(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_280DE2DA0);
    }
  }
}

uint64_t sub_22870CF00(uint64_t a1)
{
  result = sub_22870CFB4();
  if (v2 <= 0x3F)
  {
    result = sub_2287C9E70();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22870CFB4()
{
  result = qword_280DDFDF0;
  if (!qword_280DDFDF0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280DDFDF0);
  }

  return result;
}

uint64_t sub_22870D018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22870D06C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22870D0B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_22870D114(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_22870D15C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_22870D1C8(uint64_t a1)
{
  if (!qword_280DE1C60)
  {
    v1 = MEMORY[0x277D120C8];
    sub_22870D284(255, &qword_280DE1B60, &qword_280DE3388, MEMORY[0x277D120C8]);
    sub_22870CAC4(255);
    sub_22870D404(&qword_280DE1B68, &qword_280DE1B60, &qword_280DE3388, v1);
    v2 = sub_2287CAB50();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE1C60);
    }
  }
}

void sub_22870D284(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_22870D3A8(255, a3, a4);
    v5 = sub_2287CACD0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22870D2EC(uint64_t a1)
{
  if (!qword_280DE1C50)
  {
    v1 = MEMORY[0x277D12200];
    sub_22870D284(255, &qword_280DE1B50, &qword_280DE3358, MEMORY[0x277D12200]);
    sub_22870C510(255);
    sub_22870D404(&qword_280DE1B58, &qword_280DE1B50, &qword_280DE3358, v1);
    v2 = sub_2287CAB50();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE1C50);
    }
  }
}

uint64_t sub_22870D3A8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_22870D404(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22870D284(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t NSManagedObjectContext.getEligibleFeedItems(for:sourceProfiles:)(uint64_t a1, uint64_t a2)
{
  sub_2287CA800();
  v4 = MEMORY[0x22AABDDF0]();
  v5 = [v4 relationshipKeyPathsForPrefetching];
  if (v5)
  {
    v6 = v5;
    sub_2287CB3A0();
  }

  sub_22870E098(&unk_283BBFE28);
  v7 = sub_2287CB390();

  [v4 setRelationshipKeyPathsForPrefetching_];

  v8 = _s14HealthPlatform8FeedItemC0aB4CoreE020predicateForEligibleC5Items3for14sourceProfilesSo11NSPredicateCAA0C0C4KindO_SayAA13SourceProfileOGtFZ_0(a1, a2);
  [v4 setPredicate_];

  v9 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v10 = sub_2287CB210();
  v11 = [v9 initWithKey:v10 ascending:1];

  sub_2287035A4(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2287CCC50;
  *(v12 + 32) = v11;
  sub_228703004(0, &qword_280DE3878, 0x277CCAC98);
  v13 = v11;
  v14 = sub_2287CB390();

  [v4 setSortDescriptors_];

  v15 = sub_2287CB7B0();
  return v15;
}

uint64_t NSManagedObjectContext.doesFeedEligibleForDisplayExist(kind:associatedProfileIdentifier:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a1;
  sub_228705538(0, &qword_280DE3838, MEMORY[0x277CC95F0]);
  v100 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v96 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v96 - v13;
  v15 = sub_2287CAA50();
  v101 = *(v15 - 8);
  v102 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v96 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v96 - v22;
  sub_2287CA640();
  v99 = v5;
  v24 = sub_2287CA630();
  v25 = sub_2287CA300();

  if (!v25)
  {
    sub_2287CA9E0();
    v37 = a2;
    v38 = v3;
    v39 = sub_2287CAA40();
    v40 = sub_2287CB610();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v103 = v98;
      *v41 = 136446722;
      v42 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      v44 = sub_2287031D8(v42, v43, &v103);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2082;
      if (a2)
      {
        v45 = [v37 identifier];
        sub_2287C97F0();

        v46 = 0;
      }

      else
      {
        v46 = 1;
      }

      v58 = sub_2287C9810();
      (*(*(v58 - 8) + 56))(v9, v46, 1, v58);
      v59 = sub_2287CB250();
      v61 = sub_2287031D8(v59, v60, &v103);

      *(v41 + 14) = v61;
      *(v41 + 22) = 2082;
      v62 = v38;
      v63 = [v62 description];
      v64 = sub_2287CB220();
      v66 = v65;

      v67 = sub_2287031D8(v64, v66, &v103);

      *(v41 + 24) = v67;
      _os_log_impl(&dword_2286FF000, v39, v40, "No feed of kind %{public}s for profile %{public}s detected; eligible for display FALSE; %{public}s", v41, 0x20u);
      v68 = v98;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v68, -1, -1);
      MEMORY[0x22AABFD90](v41, -1, -1);
    }

    (*(v101 + 8))(v18, v102);
    return 0;
  }

  if (Feed.isTooOldForDisplay.getter())
  {
    sub_2287CA9E0();
    v26 = a2;
    v27 = v25;
    v28 = v3;
    v29 = sub_2287CAA40();
    v30 = sub_2287CB610();

    if (os_log_type_enabled(v29, v30))
    {
      LODWORD(v98) = v30;
      v31 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v103 = v97;
      *v31 = 136446978;
      v32 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      v34 = sub_2287031D8(v32, v33, &v103);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2082;
      if (a2)
      {
        v35 = [v26 identifier];
        sub_2287C97F0();

        v36 = 0;
      }

      else
      {
        v36 = 1;
      }

      v69 = sub_2287C9810();
      (*(*(v69 - 8) + 56))(v14, v36, 1, v69);
      v70 = sub_2287CB250();
      v72 = sub_2287031D8(v70, v71, &v103);

      *(v31 + 14) = v72;
      *(v31 + 22) = 2114;
      v73 = [v27 dateUpdated];
      *(v31 + 24) = v73;
      v74 = v96;
      *v96 = v73;
      *(v31 + 32) = 2082;
      v75 = v28;
      v76 = [v75 description];
      v77 = sub_2287CB220();
      v79 = v78;

      v80 = sub_2287031D8(v77, v79, &v103);

      *(v31 + 34) = v80;
      _os_log_impl(&dword_2286FF000, v29, v98, "Found feed of kind %{public}s for profile %{public}s too old for display (last updated %{public}@); eligible for display FALSE; %{public}s", v31, 0x2Au);
      sub_2287038A4(v74);
      MEMORY[0x22AABFD90](v74, -1, -1);
      v81 = v97;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v81, -1, -1);
      MEMORY[0x22AABFD90](v31, -1, -1);
    }

    else
    {
    }

    (*(v101 + 8))(v23, v102);
    return 0;
  }

  sub_2287CA9E0();
  v47 = a2;
  v48 = v25;
  v49 = v3;
  v50 = sub_2287CAA40();
  v51 = sub_2287CB610();

  if (os_log_type_enabled(v50, v51))
  {
    LODWORD(v98) = v51;
    v52 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v103 = v97;
    *v52 = 136446978;
    v53 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
    v55 = sub_2287031D8(v53, v54, &v103);

    *(v52 + 4) = v55;
    *(v52 + 12) = 2082;
    if (a2)
    {
      v56 = [v47 identifier];
      sub_2287C97F0();

      v57 = 0;
    }

    else
    {
      v57 = 1;
    }

    v83 = sub_2287C9810();
    (*(*(v83 - 8) + 56))(v12, v57, 1, v83);
    v84 = sub_2287CB250();
    v86 = sub_2287031D8(v84, v85, &v103);

    *(v52 + 14) = v86;
    *(v52 + 22) = 2114;
    v87 = [v48 dateUpdated];
    *(v52 + 24) = v87;
    v88 = v96;
    *v96 = v87;
    *(v52 + 32) = 2082;
    v89 = v49;
    v90 = [v89 description];
    v91 = sub_2287CB220();
    v93 = v92;

    v94 = sub_2287031D8(v91, v93, &v103);

    *(v52 + 34) = v94;
    _os_log_impl(&dword_2286FF000, v50, v98, "Feed of kind %{public}s for profile %{public}s is new enough; eligible for display TRUE (last updated %{public}@); %{public}s", v52, 0x2Au);
    sub_2287038A4(v88);
    MEMORY[0x22AABFD90](v88, -1, -1);
    v95 = v97;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v95, -1, -1);
    MEMORY[0x22AABFD90](v52, -1, -1);
  }

  else
  {
  }

  (*(v101 + 8))(v21, v102);
  return 1;
}

uint64_t sub_22870E098(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_228722DF0(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22870E1E4(unint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_2287CB920();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_2287CB920();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_22870E310(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = v4[3] >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_228723670(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = v4[3] >> 1;
  }

  v11 = v4[2];
  v12 = (v9 - v11);
  result = sub_22872A220(&v48, &v4[3 * v11 + 4], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = v4[2];
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v51 = v23;
          v52 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v45 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    v4[2] = v18;
  }

  result = v48;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v3 = v4[2];
  v13 = v49;
  v14 = v50;
  v2 = v51;
  v47 = v49;
  if (!v52)
  {
    goto LABEL_19;
  }

  v19 = (v52 - 1) & v52;
  v20 = __clz(__rbit64(v52)) | (v51 << 6);
  v45 = v50;
  v21 = (v50 + 64) >> 6;
LABEL_27:
  v46 = result;
  v26 = (result[6] + 16 * v20);
  v28 = *v26;
  v27 = v26[1];
  v29 = *(result[7] + 8 * v20);

  v30 = v29;
  v31 = v29;
  v32 = v47;
LABEL_29:
  while (1)
  {
    v33 = v4[3];
    v34 = v33 >> 1;
    if ((v33 >> 1) < v3 + 1)
    {
      break;
    }

    if (v3 < v34)
    {
      goto LABEL_31;
    }

LABEL_28:
    v4[2] = v3;
  }

  v42 = v31;
  v43 = sub_228723670((v33 > 1), v3 + 1, 1, v4);
  v32 = v47;
  v4 = v43;
  v31 = v42;
  v34 = v4[3] >> 1;
  if (v3 >= v34)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v35 = &v4[3 * v3 + 4];
    *v35 = v28;
    v35[1] = v27;
    v35[2] = v31;
    ++v3;
    if (!v19)
    {
      break;
    }

    result = v46;
LABEL_38:
    v38 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v39 = v38 | (v2 << 6);
    v40 = (result[6] + 16 * v39);
    v28 = *v40;
    v27 = v40[1];
    v41 = *(result[7] + 8 * v39);

    v31 = v41;
    v32 = v47;
    if (v3 == v34)
    {
      v3 = v34;
      v4[2] = v34;
      goto LABEL_29;
    }
  }

  v36 = v2;
  result = v46;
  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v37 >= v21)
    {
      break;
    }

    v19 = *(v32 + 8 * v37);
    ++v36;
    if (v19)
    {
      v2 = v37;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v44 = v2 + 1;
  }

  else
  {
    v44 = v21;
  }

  v50 = v45;
  v51 = v44 - 1;
  v52 = 0;
  v4[2] = v3;
LABEL_13:
  result = sub_22870B3D4(result);
  *v1 = v4;
  return result;
}

uint64_t sub_22870E628(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
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

char *sub_22870E76C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287035A4(0, &qword_280DE3998, MEMORY[0x277D84B78]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t static FeedPopulationListenerSupport.makeThrottledFeedItemSubmissionPublisher<A>(config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a2;
  v57 = a4;
  v52 = a1;
  v54 = sub_2287CAB40();
  v49 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v8 = &v41 - v7;
  v9 = sub_2287CB730();
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22870EED8(0);
  v13 = v12;
  v45 = v12;
  v51 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v55 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x277CBCC08];
  v46 = sub_22870EF84(&qword_280DE0570, sub_22870EED8, MEMORY[0x277CBCC08]);
  v58 = v13;
  v59 = a3;
  v60 = v46;
  v61 = a5;
  v15 = sub_2287CAAB0();
  v50 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v43 = &v41 - v16;
  v17 = sub_2287CA1F0();
  WitnessTable = swift_getWitnessTable();
  v41 = v17;
  v18 = sub_2287CAB50();
  v19 = *(v18 - 8);
  v47 = v18;
  v48 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - v20;
  v22 = [objc_opt_self() defaultCenter];
  v23 = sub_2287CB6F0();
  sub_2287CB740();

  v24 = swift_allocObject();
  v25 = v57;
  v24[2] = v56;
  v24[3] = a3;
  v24[4] = v25;
  v24[5] = a5;
  sub_22870EF84(&qword_280DDFEF0, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  sub_2287CAF70();

  (*(v42 + 8))(v11, v9);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(swift_getTupleTypeMetadata2() + 48);
  v28 = v52;
  (*(*(a3 - 8) + 16))(v8, v52, a3);
  v30 = type metadata accessor for FeedPopulationListenerSchedulerConfiguration(0, a3, a5, v29);
  (*(*(AssociatedTypeWitness - 8) + 16))(&v8[v27], v28 + *(v30 + 36), AssociatedTypeWitness);
  v31 = v49;
  v32 = v54;
  (*(v49 + 104))(v8, *MEMORY[0x277CBCBF8], v54);
  v33 = v43;
  v34 = v45;
  v35 = v55;
  sub_2287CAFD0();
  (*(v31 + 8))(v8, v32);
  (*(v51 + 8))(v35, v34);
  v36 = swift_allocObject();
  v37 = v57;
  v36[2] = v56;
  v36[3] = a3;
  v36[4] = v37;
  v36[5] = a5;
  sub_2287CAF70();

  (*(v50 + 8))(v33, v15);
  v38 = v47;
  swift_getWitnessTable();
  v39 = sub_2287CAF40();
  (*(v48 + 8))(v21, v38);
  return v39;
}

void sub_22870EED8(uint64_t a1)
{
  if (!qword_280DE0568)
  {
    sub_2287CB730();
    sub_2287CA1F0();
    sub_22870EF84(&qword_280DDFEF0, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
    v1 = sub_2287CAB50();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0568);
    }
  }
}

uint64_t sub_22870EF84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22870EFCC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2287CA1F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2287CAA50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228710834(0, &qword_280DE17B8, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34 - v13;
  v15 = sub_2287C95C0();
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = v15;
  v37 = sub_2287CA1B0();
  v38 = v17;
  sub_2287CB9B0();
  if (!*(v16 + 16) || (v18 = sub_228756AB4(v39), (v19 & 1) == 0))
  {

    sub_2287109BC(v39);
LABEL_11:
    v40 = 0u;
    v41 = 0u;
    goto LABEL_12;
  }

  sub_22870317C(*(v16 + 56) + 32 * v18, &v40);
  sub_2287109BC(v39);

  if (!*(&v41 + 1))
  {
LABEL_12:
    sub_228710894(&v40);
    (*(v5 + 56))(v14, 1, 1, v4);
    goto LABEL_13;
  }

  v36 = v9;
  v20 = swift_dynamicCast();
  (*(v5 + 56))(v14, v20 ^ 1u, 1, v4);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
LABEL_13:
    sub_228710944(v14);
    result = sub_2287CBB90();
    __break(1u);
    return result;
  }

  (*(v5 + 32))(a2, v14, v4);
  sub_2287CA9E0();
  (*(v5 + 16))(v7, a2, v4);
  v21 = sub_2287CAA40();
  v22 = sub_2287CB5E0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v35 = v8;
    v25 = v24;
    v39[0] = v24;
    *v23 = 136446466;
    *&v40 = a1;
    swift_getMetatypeMetadata();
    v26 = sub_2287CB250();
    v28 = sub_2287031D8(v26, v27, v39);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2082;
    sub_22870EF84(&qword_280DE11B0, MEMORY[0x277D12000], MEMORY[0x277D12008]);
    v29 = sub_2287CBCC0();
    v31 = v30;
    (*(v5 + 8))(v7, v4);
    v32 = sub_2287031D8(v29, v31, v39);

    *(v23 + 14) = v32;
    _os_log_impl(&dword_2286FF000, v21, v22, "[%{public}s]: ChangeDomain received from feedItemSubmissionOccurred (will be throttled): %{public}s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v25, -1, -1);
    MEMORY[0x22AABFD90](v23, -1, -1);

    return (*(v36 + 8))(v11, v35);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    return (*(v36 + 8))(v11, v8);
  }
}

uint64_t sub_22870F50C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v5 = sub_2287CAA50();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2287CA1F0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v35 = *a1;
  sub_2287CA160();
  sub_228710834(0, &qword_280DDFFF8, MEMORY[0x277D83940]);
  sub_2287107C0();
  sub_2287CB320();
  v15 = *(v9 + 8);
  v15(v14, v8);
  sub_2287CA9E0();
  (*(v9 + 16))(v12, a3, v8);
  v16 = v7;
  v17 = sub_2287CAA40();
  v18 = sub_2287CB610();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v35 = v30;
    *v19 = 136446466;
    v34 = v31;
    swift_getMetatypeMetadata();
    v20 = sub_2287CB250();
    v22 = sub_2287031D8(v20, v21, &v35);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    sub_22870EF84(&qword_280DE11B0, MEMORY[0x277D12000], MEMORY[0x277D12008]);
    v23 = sub_2287CBCC0();
    v25 = v24;
    v15(v12, v8);
    v26 = sub_2287031D8(v23, v25, &v35);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_2286FF000, v17, v18, "[%{public}s]: Collected this changeDomain, emitting: %s", v19, 0x16u);
    v27 = v30;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v27, -1, -1);
    MEMORY[0x22AABFD90](v19, -1, -1);
  }

  else
  {

    v15(v12, v8);
  }

  return (*(v32 + 8))(v16, v33);
}

uint64_t sub_22870F8E0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_2287CA1F0();
  (*(*(v5 - 8) + 16))(a3, a1, v5);
  return sub_2287CA1C0();
}

uint64_t FeedPopulationListenerSchedulerConfiguration.collectInterval.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t FeedPopulationListenerSchedulerConfiguration.options.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  swift_getAssociatedTypeWitness();
  v5 = sub_2287CB820();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t FeedPopulationListenerSchedulerConfiguration.init(scheduler:collectInterval:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v12 = type metadata accessor for FeedPopulationListenerSchedulerConfiguration(0, a4, a5, v11);
  v13 = *(v12 + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a6 + v13, a2, AssociatedTypeWitness);
  v15 = *(v12 + 40);
  swift_getAssociatedTypeWitness();
  v16 = sub_2287CB820();
  v17 = *(*(v16 - 8) + 32);

  return v17(a6 + v15, a3, v16);
}

id static FeedPopulationListenerSchedulerConfiguration.realtime(queue:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  sub_22870FD50(0);
  v4 = v3;
  sub_2287CB690();
  v5 = *(v4 + 40);
  v6 = sub_2287CB680();
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  *a2 = a1;

  return a1;
}

void sub_22870FD50(uint64_t a1)
{
  if (!qword_280DE08D0[0])
  {
    v2 = sub_22870FDE4();
    v3 = sub_22870EF84(&qword_280DE3620, sub_22870FDE4, MEMORY[0x277D85228]);
    v5 = type metadata accessor for FeedPopulationListenerSchedulerConfiguration(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_280DE08D0);
    }
  }
}

unint64_t sub_22870FDE4()
{
  result = qword_280DE39D0;
  if (!qword_280DE39D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE39D0);
  }

  return result;
}

uint64_t sub_22870FE58(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      result = sub_2287CB820();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22870FF94(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v33 = v6;
  if (v8 > v6)
  {
    v6 = *(v7 + 84);
  }

  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v12 <= v6)
  {
    v12 = v6;
  }

  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v5 + 64) + v13;
  v19 = a1;
  if (a2 > v12)
  {
    v20 = v17 + ((v14 + v15 + (v18 & ~v13)) & ~v15);
    v21 = 8 * v20;
    if (v20 <= 3)
    {
      v23 = ((a2 - v12 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v23))
      {
        v22 = *(a1 + v20);
        if (!v22)
        {
          goto LABEL_33;
        }

        goto LABEL_20;
      }

      if (v23 > 0xFF)
      {
        v22 = *(a1 + v20);
        if (!*(a1 + v20))
        {
          goto LABEL_33;
        }

        goto LABEL_20;
      }

      if (v23 < 2)
      {
LABEL_33:
        if (v12)
        {
          goto LABEL_34;
        }

        return 0;
      }
    }

    v22 = *(a1 + v20);
    if (!*(a1 + v20))
    {
      goto LABEL_33;
    }

LABEL_20:
    v24 = (v22 - 1) << v21;
    if (v20 > 3)
    {
      v24 = 0;
    }

    if (v20)
    {
      if (v20 <= 3)
      {
        v25 = v20;
      }

      else
      {
        v25 = 4;
      }

      if (v25 > 2)
      {
        if (v25 == 3)
        {
          v26 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v26 = *a1;
        }
      }

      else if (v25 == 1)
      {
        v26 = *a1;
      }

      else
      {
        v26 = *a1;
      }
    }

    else
    {
      v26 = 0;
    }

    return v12 + (v26 | v24) + 1;
  }

LABEL_34:
  if (v33 == v12)
  {
    v27 = *(v5 + 48);
    v28 = v33;
    v29 = v4;
  }

  else
  {
    v19 = ((a1 + v18) & ~v13);
    if (v8 != v12)
    {
      v31 = (*(v10 + 48))((v19 + v14 + v15) & ~v15);
      if (v31 >= 2)
      {
        return v31 - 1;
      }

      else
      {
        return 0;
      }
    }

    v27 = *(v7 + 48);
    v28 = v8;
    v29 = AssociatedTypeWitness;
  }

  return v27(v19, v28, v29);
}

void sub_22871031C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *(v4 - 8);
  v43 = v5;
  v6 = *(v5 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = *(v5 + 64);
  v15 = v13 - 1;
  if (!v13)
  {
    v15 = 0;
  }

  if (v15 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v7 + 80);
  v18 = v14 + v17;
  v19 = (v14 + v17) & ~v17;
  v20 = *(v7 + 64);
  v21 = *(v11 + 80);
  v22 = (v20 + v21 + v19) & ~v21;
  v23 = *(v11 + 64);
  if (v13)
  {
    v24 = v23;
  }

  else
  {
    v24 = v23 + 1;
  }

  v25 = v22 + v24;
  if (a3 > v16)
  {
    if (v25 <= 3)
    {
      v26 = ((a3 - v16 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
      if (HIWORD(v26))
      {
        v10 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v10 = v27;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  if (v16 < a2)
  {
    v28 = ~v16 + a2;
    if (v25 < 4)
    {
      v29 = (v28 >> (8 * v25)) + 1;
      if (v25)
      {
        v31 = v28 & ~(-1 << (8 * v25));
        bzero(a1, v25);
        if (v25 != 3)
        {
          if (v25 == 2)
          {
            *a1 = v31;
            if (v10 > 1)
            {
LABEL_64:
              if (v10 == 2)
              {
                *&a1[v25] = v29;
              }

              else
              {
                *&a1[v25] = v29;
              }

              return;
            }
          }

          else
          {
            *a1 = v28;
            if (v10 > 1)
            {
              goto LABEL_64;
            }
          }

          goto LABEL_61;
        }

        *a1 = v31;
        a1[2] = BYTE2(v31);
      }

      if (v10 > 1)
      {
        goto LABEL_64;
      }
    }

    else
    {
      bzero(a1, v25);
      *a1 = v28;
      v29 = 1;
      if (v10 > 1)
      {
        goto LABEL_64;
      }
    }

LABEL_61:
    if (v10)
    {
      a1[v25] = v29;
    }

    return;
  }

  v30 = a1;
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v25] = 0;
  }

  else if (v10)
  {
    a1[v25] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v6 == v16)
  {
    v32 = *(v43 + 56);
    v33 = a2;
    v34 = v6;
    v35 = v4;
LABEL_43:

    v32(v30, v33, v34, v35);
    return;
  }

  v30 = (&a1[v18] & ~v17);
  if (v8 == v16)
  {
    v32 = *(v7 + 56);
    v33 = a2;
    v34 = v8;
    v35 = AssociatedTypeWitness;
    goto LABEL_43;
  }

  v36 = &v30[v20 + v21] & ~v21;
  if (v15 >= a2)
  {
    v40 = *(v12 + 56);
    v41 = &v30[v20 + v21] & ~v21;

    v40(v41, a2 + 1);
  }

  else
  {
    if (v24 <= 3)
    {
      v37 = ~(-1 << (8 * v24));
    }

    else
    {
      v37 = -1;
    }

    if (v24)
    {
      v38 = v37 & (~v15 + a2);
      if (v24 <= 3)
      {
        v39 = v24;
      }

      else
      {
        v39 = 4;
      }

      bzero((&v30[v20 + v21] & ~v21), v24);
      if (v39 > 2)
      {
        if (v39 == 3)
        {
          *v36 = v38;
          *(v36 + 2) = BYTE2(v38);
        }

        else
        {
          *v36 = v38;
        }
      }

      else if (v39 == 1)
      {
        *v36 = v38;
      }

      else
      {
        *v36 = v38;
      }
    }
  }
}

unint64_t sub_2287107C0()
{
  result = qword_280DDFFF0;
  if (!qword_280DDFFF0)
  {
    sub_228710834(255, &qword_280DDFFF8, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDFFF0);
  }

  return result;
}

void sub_228710834(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_2287CA1F0();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_228710894(uint64_t a1)
{
  sub_2287108F0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2287108F0()
{
  if (!qword_280DE3988)
  {
    v0 = sub_2287CB820();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE3988);
    }
  }
}

uint64_t sub_228710944(uint64_t a1)
{
  sub_228710834(0, &qword_280DE17B8, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *HealthExperienceStoreCoreSpotlightOperation.__allocating_init(store:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_2287010E4(a1, v3 + qword_280DE10F8);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

void *sub_228710A84()
{
  type metadata accessor for HealthExperienceStoreCoreSpotlightDelegate(0);
  sub_2287010E4(v0 + qword_280DE10F8, v2);
  return HealthExperienceStoreCoreSpotlightDelegate.__allocating_init(for:)(v2);
}

id HealthExperienceStoreCoreSpotlightOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthExperienceStoreCoreSpotlightOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthExperienceStoreCoreSpotlightOperation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_228710BC4(void *a1)
{
  v1 = a1;
  HealthExperienceStoreCoreSpotlightOperation.description.getter();

  v2 = sub_2287CB210();

  return v2;
}

uint64_t HealthExperienceStoreCoreSpotlightOperation.description.getter()
{
  MEMORY[0x22AABE980](60, 0xE100000000000000);
  swift_getObjectType();
  sub_228710CF4();
  v0 = sub_2287CB250();
  MEMORY[0x22AABE980](v0);

  MEMORY[0x22AABE980](32, 0xE100000000000000);
  sub_2287CBB30();
  MEMORY[0x22AABE980](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_228710CF4()
{
  result = qword_280DE1770;
  if (!qword_280DE1770)
  {
    type metadata accessor for HealthExperienceStoreCoreSpotlightOperation(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DE1770);
  }

  return result;
}

id sub_228710DC8()
{
  v1 = v0;
  v2 = [v0 featureTags];
  sub_2287C9F20();
  sub_228711A10(&qword_280DE11D8, MEMORY[0x277D11F38], MEMORY[0x277D85378]);
  v3 = sub_2287CB470();

  v5 = sub_228711490(v3, v4);

  sub_228710F40();
  sub_22870E18C(v6);
  v7 = [v1 uniqueIdentifier];
  v8 = [objc_allocWithZone(MEMORY[0x277D443E0]) init];
  v9 = objc_allocWithZone(MEMORY[0x277D443F8]);
  sub_228711918();
  v10 = sub_2287CB390();

  v11 = [v9 initWithIdentifier:v7 content:v8 action:0 relevanceProviders:v10];

  return v11;
}

void sub_228710F40()
{
  v1 = v0;
  v39 = sub_2287CA2A0();
  v34 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2287CA010();
  v33 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2287CA0B0();
  v32 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2287C9FB0();
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x277D84F90];
  sub_2287CA7D0();
  sub_228711964();
  v29 = v9;
  inited = swift_initStackObject();
  v28 = xmmword_2287CCC50;
  *(inited + 16) = xmmword_2287CCC50;
  v11 = objc_opt_self();
  if (qword_280DE3820 != -1)
  {
    swift_once();
  }

  v12 = qword_280DE63E0;
  sub_22871B03C();
  v13 = sub_2287CB210();

  v14 = objc_opt_self();
  v15 = [v14 featureValueWithString_];

  v30 = v11;
  v16 = [v11 customRelevanceProviderForFeature:v12 withValue:v15];

  if (v16)
  {
    *(inited + 32) = v16;
    sub_22870E18C(inited);
    sub_2287CA7D0();
    v17 = sub_22878ECFC();
    sub_22870E18C(v17);
    v18 = v35;
    sub_2287CA7D0();
    v19 = sub_22873FBC4();
    sub_22870E18C(v19);
    sub_2287CA7D0();
    v20 = sub_22874620C();
    sub_22870E18C(v20);
    v21 = [v1 localizedTitle];
    if (!v21)
    {
LABEL_9:
      (*(v34 + 8))(v37, v39);
      (*(v33 + 8))(v18, v38);
      (*(v32 + 8))(v5, v36);
      (*(v31 + 8))(v8, v6);
      return;
    }

    v22 = v21;
    sub_2287CB220();

    v23 = swift_allocObject();
    *(v23 + 16) = v28;
    if (qword_280DE0F98 != -1)
    {
      swift_once();
    }

    v24 = qword_280DE6250;
    v25 = sub_2287CB210();
    v26 = [v14 featureValueWithString_];

    v27 = [v30 customRelevanceProviderForFeature:v24 withValue:v26];
    if (v27)
    {
      *(v23 + 32) = v27;

      sub_22870E18C(v23);
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_228711490(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2287CB8D0();
    sub_2287C9F20();
    sub_228711A10(&qword_280DE11D8, MEMORY[0x277D11F38], MEMORY[0x277D85378]);
    result = sub_2287CB4C0();
    v2 = v49[4];
    v4 = v49[5];
    v5 = v49[6];
    v6 = v49[7];
    v7 = v49[8];
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

  v47 = MEMORY[0x277D84F90];
  v11 = (v5 + 64) >> 6;
  v42 = v4;
  v43 = v2;
  while (v2 < 0)
  {
    v17 = sub_2287CB950();
    if (!v17)
    {
      goto LABEL_46;
    }

    v49[10] = v17;
    sub_2287C9F20();
    swift_dynamicCast();
    v16 = v49[0];
    v14 = v6;
    v15 = v7;
    if (!v49[0])
    {
      goto LABEL_46;
    }

LABEL_18:
    sub_228752014();
    v19 = v18;

    v20 = v19 >> 62;
    v46 = v15;
    if (v19 >> 62)
    {
      v21 = sub_2287CB920();
    }

    else
    {
      v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v47;
    v23 = v47 >> 62;
    if (v47 >> 62)
    {
      v41 = sub_2287CB920();
      v25 = v41 + v21;
      if (__OFADD__(v41, v21))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        sub_22870B3D4(v2);
        return v47;
      }
    }

    else
    {
      v24 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = v24 + v21;
      if (__OFADD__(v24, v21))
      {
        goto LABEL_45;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v23)
      {
LABEL_27:
        sub_2287CB920();
      }

LABEL_28:
      result = sub_2287CBA60();
      v22 = result;
      v26 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_29;
    }

    if (v23)
    {
      goto LABEL_27;
    }

    v26 = v47 & 0xFFFFFFFFFFFFFF8;
    if (v25 > *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_28;
    }

LABEL_29:
    v48 = v21;
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);
    if (v20)
    {
      v29 = v19;
      v31 = v26;
      result = sub_2287CB920();
      v26 = v31;
      v30 = result;
      v47 = v22;
      if (result)
      {
        goto LABEL_33;
      }

LABEL_8:

      v6 = v14;
      v7 = v46;
      v11 = (v5 + 64) >> 6;
      if (v48 > 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v29 = v19;
      v30 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v47 = v22;
      if (!v30)
      {
        goto LABEL_8;
      }

LABEL_33:
      if (((v28 >> 1) - v27) < v48)
      {
        goto LABEL_49;
      }

      v32 = v26 + 8 * v27 + 32;
      v45 = v14;
      v44 = v26;
      if (v20)
      {
        if (v30 < 1)
        {
          goto LABEL_51;
        }

        sub_2287119B8(0);
        sub_228711A10(&qword_27D850B78, sub_2287119B8, MEMORY[0x277D83988]);
        v33 = 0;
        v34 = v29;
        do
        {
          v35 = sub_228799C8C(v49, v33, v34);
          v37 = *v36;
          (v35)(v49, 0);
          *(v32 + 8 * v33++) = v37;
        }

        while (v30 != v33);
      }

      else
      {
        sub_228711918();
        swift_arrayInitWithCopy();
      }

      v6 = v45;
      v7 = v46;
      v4 = v42;
      v2 = v43;
      v11 = (v5 + 64) >> 6;
      if (v48 >= 1)
      {
        v38 = *(v44 + 16);
        v39 = __OFADD__(v38, v48);
        v40 = v38 + v48;
        if (v39)
        {
          goto LABEL_50;
        }

        *(v44 + 16) = v40;
        v6 = v45;
        v7 = v46;
      }
    }
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v2 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_46;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_46;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

unint64_t sub_228711918()
{
  result = qword_280DE1960;
  if (!qword_280DE1960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE1960);
  }

  return result;
}

void sub_228711964()
{
  if (!qword_280DE1268)
  {
    v0 = sub_2287CBCD0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1268);
    }
  }
}

void sub_2287119B8(uint64_t a1)
{
  if (!qword_27D850B70)
  {
    sub_228711918();
    v1 = sub_2287CB450();
    if (!v2)
    {
      atomic_store(v1, &qword_27D850B70);
    }
  }
}

uint64_t sub_228711A10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *static FeedPopulationManaging.fetchAndValidateFeedToPopulate(kind:managedObjectContext:associatedProfileIdentifier:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v70 = a4;
  v77 = a2;
  v5 = a1;
  v6 = sub_2287C97C0();
  v76 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2287CAA50();
  v73 = *(v9 - 8);
  v74 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v65 - v13;
  v15 = sub_2287C9810();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v19 = v5;
    v20 = [a3 identifier];
    sub_2287C97F0();

    v5 = v19;
    v69 = sub_2287C97D0();
    v22 = v21;
    (*(v16 + 8))(v18, v15);
  }

  else
  {
    v22 = 0xE400000000000000;
    v69 = 1701736302;
  }

  v23 = sub_2287CA640();
  v75 = a3;
  v24 = sub_2287CA630();
  v25 = v77;
  v26 = sub_2287CA300();
  if (v26)
  {
    v27 = v26;
    v71 = v23;
    v72 = v24;
    sub_2287CA9E0();
    v28 = v27;

    v29 = sub_2287CAA40();
    v30 = sub_2287CB610();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v67 = v6;
      v32 = v31;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v78 = v66;
      *v32 = 136315906;
      v33 = sub_2287CBE60();
      v35 = sub_2287031D8(v33, v34, &v78);
      v68 = v5;
      v36 = v35;

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v37 = sub_2287031D8(v69, v22, &v78);

      *(v32 + 14) = v37;
      *(v32 + 22) = 2082;
      sub_2287CA600();
      v38 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      v40 = sub_2287031D8(v38, v39, &v78);

      *(v32 + 24) = v40;
      *(v32 + 32) = 2114;
      v41 = [v28 dateUpdated];
      *(v32 + 34) = v41;
      v42 = v65;
      *v65 = v41;
      _os_log_impl(&dword_2286FF000, v29, v30, "[%s]_%s: Feed of kind %{public}s and date %{public}@ found; deleting it and creating a new feed", v32, 0x2Au);
      sub_2287038A4(v42);
      MEMORY[0x22AABFD90](v42, -1, -1);
      v43 = v66;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v43, -1, -1);
      v44 = v32;
      v6 = v67;
      MEMORY[0x22AABFD90](v44, -1, -1);
    }

    else
    {
    }

    (*(v73 + 8))(v14, v74);
    [v25 deleteObject_];

    v59 = v75;
    v24 = v72;
  }

  else
  {
    v68 = v5;
    sub_2287CA9E0();

    v45 = sub_2287CAA40();
    v46 = sub_2287CB610();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v72 = v24;
      v48 = v47;
      v49 = swift_slowAlloc();
      v71 = v23;
      v50 = v49;
      v78 = v49;
      *v48 = 136315650;
      v51 = sub_2287CBE60();
      v67 = v6;
      v53 = sub_2287031D8(v51, v52, &v78);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2080;
      v54 = sub_2287031D8(v69, v22, &v78);

      *(v48 + 14) = v54;
      *(v48 + 22) = 2080;
      v55 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      v57 = sub_2287031D8(v55, v56, &v78);
      v25 = v77;

      *(v48 + 24) = v57;
      v6 = v67;
      _os_log_impl(&dword_2286FF000, v45, v46, "[%s]_%s: No feed of kind %s found; creating one", v48, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v50, -1, -1);
      v58 = v48;
      v24 = v72;
      MEMORY[0x22AABFD90](v58, -1, -1);
    }

    else
    {
    }

    (*(v73 + 8))(v12, v74);
    v59 = v75;
  }

  v60 = v59;
  v61 = v25;
  sub_2287C97B0();
  v62 = sub_2287CA620();
  sub_2287CA610();
  sub_2287C97B0();
  v63 = sub_2287C9770();
  (*(v76 + 8))(v8, v6);
  [v62 setDateUpdated_];

  return v62;
}

void *FeedItemREElementDataSource.__allocating_init(store:sourceProfiles:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  sub_2287010E4(a1, &v5[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_store]);
  *&v5[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_sourceProfiles] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

void *FeedItemREElementDataSource.init(store:sourceProfiles:)(void *a1, uint64_t a2)
{
  sub_2287010E4(a1, &v2[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_store]);
  *&v2[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_sourceProfiles] = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FeedItemREElementDataSource();
  v5 = objc_msgSendSuper2(&v7, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

void sub_22871240C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  ObjectType = swift_getObjectType();
  v9 = sub_2287CAA50();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9E0();

  v13 = v4;
  v14 = sub_2287CAA40();
  v15 = sub_2287CB610();

  v52 = v15;
  if (!os_log_type_enabled(v14, v15))
  {

    (*(v10 + 8))(v12, v9);
    v20 = a4;
    v30 = v53;
LABEL_12:
    __swift_project_boxed_opaque_existential_1(&v13[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_store], *&v13[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_store + 24]);
    v38 = sub_2287C99F0();
    v39 = swift_allocObject();
    v39[2] = a1;
    v39[3] = a2;
    v39[4] = v38;
    v39[5] = v13;
    v39[6] = v30;
    v39[7] = v20;
    v39[8] = ObjectType;
    aBlock[4] = sub_228714ADC;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228712EA8;
    aBlock[3] = &block_descriptor;
    v40 = _Block_copy(aBlock);

    v41 = v13;
    v42 = v38;
    sub_228714B08(v30, v20);

    [v42 performBlock_];
    _Block_release(v40);

    return;
  }

  v50 = v10;
  v51 = v9;
  v16 = swift_slowAlloc();
  v49 = swift_slowAlloc();
  aBlock[0] = v49;
  *v16 = 136446466;

  if (a2)
  {
    v47 = v14;
    v48 = a1;
    *(v16 + 4) = sub_2287031D8(a1, a2, aBlock);
    v46 = v16;
    *(v16 + 12) = 2082;
    v17 = *&v13[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_sourceProfiles];
    v18 = *(v17 + 16);
    v19 = MEMORY[0x277D84F90];
    v20 = a4;
    if (v18)
    {
      v43 = ObjectType;
      v44 = a2;
      v45 = a4;
      v54 = MEMORY[0x277D84F90];
      sub_2287042D4(0, v18, 0);
      v19 = v54;
      v21 = (v17 + 32);
      do
      {
        v22 = *v21++;
        v23 = v22;
        v24 = sub_2287C9C40();
        v26 = v25;

        v54 = v19;
        v28 = *(v19 + 16);
        v27 = *(v19 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_2287042D4((v27 > 1), v28 + 1, 1);
          v19 = v54;
        }

        *(v19 + 16) = v28 + 1;
        v29 = v19 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
        --v18;
      }

      while (v18);
      a2 = v44;
      v20 = v45;
      v30 = v53;
      ObjectType = v43;
    }

    else
    {
      v30 = v53;
    }

    v54 = v19;
    sub_2287042F4(0, &qword_280DE3A00, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_228714B18();
    v31 = sub_2287CB1D0();
    v33 = v32;

    v34 = sub_2287031D8(v31, v33, aBlock);

    v35 = v46;
    *(v46 + 14) = v34;
    v36 = v47;
    _os_log_impl(&dword_2286FF000, v47, v52, "Querying Core Data for elements for Relevance Engine section %{public}s for profiles %{public}s", v35, 0x16u);
    v37 = v49;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v37, -1, -1);
    MEMORY[0x22AABFD90](v35, -1, -1);

    (*(v50 + 8))(v12, v51);
    a1 = v48;
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_228712890(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v51 = a7;
  v57 = a4;
  v58 = a1;
  v10 = sub_2287CAA50();
  v54 = *(v10 - 8);
  v55 = v10;
  MEMORY[0x28223BE20](v10);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2287CA5D0();
  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_36;
  }

  v14 = 0;
  while (1)
  {
    if (v14 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_33;
    }

    v15 = *(v12 + v14 + 32);
    v16 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
    if (!a2)
    {

      goto LABEL_4;
    }

    if (v16 == v58 && v17 == a2)
    {
      break;
    }

    v19 = sub_2287CBD00();

    if (v19)
    {
      goto LABEL_14;
    }

LABEL_4:
    if (v13 == ++v14)
    {
      goto LABEL_36;
    }
  }

LABEL_14:

  v52 = a6;
  v53 = a5;
  v20 = NSManagedObjectContext.getEligibleFeedItems(for:sourceProfiles:)(v15, *&v57[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_sourceProfiles]);
  a5 = v20;
  v12 = v20 >> 62;
  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_16;
  }

LABEL_33:
  v21 = sub_2287CB920();
LABEL_16:
  v22 = MEMORY[0x277D84F90];
  v50 = v12;
  if (v21)
  {
    v62 = MEMORY[0x277D84F90];
    sub_2287CBAC0();
    if ((v21 & 0x8000000000000000) == 0)
    {
      v23 = 0;
      v59 = a5 & 0xC000000000000001;
      v60 = a5;
      do
      {
        if (v59)
        {
          v24 = MEMORY[0x22AABF120](v23, a5);
        }

        else
        {
          v24 = *(a5 + 8 * v23 + 32);
        }

        v25 = v24;
        ++v23;
        v26 = [v24 featureTags];
        sub_2287C9F20();
        sub_228714C98(&qword_280DE11D8, MEMORY[0x277D11F38], MEMORY[0x277D85378]);
        v27 = sub_2287CB470();

        v29 = sub_228711490(v27, v28);

        sub_228710F40();
        v61[0] = v29;
        sub_22870E18C(v30);
        v31 = [v25 uniqueIdentifier];
        v32 = [objc_allocWithZone(MEMORY[0x277D443E0]) init];
        v33 = objc_allocWithZone(MEMORY[0x277D443F8]);
        sub_228703004(0, &qword_280DE1960, 0x277D44488);
        v34 = sub_2287CB390();

        [v33 initWithIdentifier:v31 content:v32 action:0 relevanceProviders:v34];

        sub_2287CBA90();
        sub_2287CBAD0();
        sub_2287CBAE0();
        sub_2287CBAA0();
        a5 = v60;
      }

      while (v21 != v23);
      v22 = v62;
      goto LABEL_24;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:

    result = sub_2287CBB90();
    __break(1u);
  }

  else
  {
LABEL_24:
    v35 = v56;
    sub_2287CA9E0();
    swift_bridgeObjectRetain_n();
    v36 = v57;

    v37 = sub_2287CAA40();
    v38 = sub_2287CB610();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v61[0] = v40;
      *v39 = 136315906;
      v62 = v51;
      swift_getMetatypeMetadata();
      v41 = sub_2287CB250();
      v43 = sub_2287031D8(v41, v42, v61);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2082;
      v44 = sub_22871304C();
      v46 = sub_2287031D8(v44, v45, v61);

      *(v39 + 14) = v46;
      *(v39 + 22) = 2050;
      if (v50)
      {
        v47 = sub_2287CB920();
      }

      else
      {
        v47 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v48 = v53;

      *(v39 + 24) = v47;

      *(v39 + 32) = 2082;
      *(v39 + 34) = sub_2287031D8(v58, a2, v61);
      _os_log_impl(&dword_2286FF000, v37, v38, "[%s]_%{public}s: %{public}ld elements converted from Core Data and submitted to engine section %{public}s", v39, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v40, -1, -1);
      MEMORY[0x22AABFD90](v39, -1, -1);

      (*(v54 + 8))(v56, v55);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v54 + 8))(v35, v55);
      v48 = v53;
    }

    if (!v48)
    {
      goto LABEL_35;
    }

    v48(v22);
  }

  return result;
}

uint64_t sub_228712EA8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_228712FC4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_228703004(0, &qword_280DE1900, 0x277D443F8);
    v3 = sub_2287CB390();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_22871304C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_sourceProfiles);
  v2 = *(v1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v2, 0);
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      v5 = v4;
      v6 = sub_2287C9C40();
      v8 = v7;

      v10 = *(v14 + 16);
      v9 = *(v14 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2287042D4((v9 > 1), v10 + 1, 1);
      }

      *(v14 + 16) = v10 + 1;
      v11 = v14 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      --v2;
    }

    while (v2);
  }

  sub_2287042F4(0, &qword_280DE3A00, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_228714B18();
  v12 = sub_2287CB1D0();

  return v12;
}

id FeedItemREElementDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeedItemREElementDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedItemREElementDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2287132AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2287136FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2287132CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228713818(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2287132EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2287147E8(a1, a2, a3, *v3, &qword_27D850B90, MEMORY[0x277CC9260], MEMORY[0x277CC9260]);
  *v3 = result;
  return result;
}

void *sub_22871333C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2287147E8(a1, a2, a3, *v3, &qword_280DE1808, sub_22871511C, sub_22871511C);
  *v3 = result;
  return result;
}

void *sub_22871338C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2287147E8(a1, a2, a3, *v3, &qword_280DE1880, MEMORY[0x277D11EB0], MEMORY[0x277D11EB0]);
  *v3 = result;
  return result;
}

void *sub_2287133DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228713924(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2287133FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228713B7C(a1, a2, a3, *v3, &qword_280DE1890, &qword_280DE3450, &qword_280DE2620, sub_228714CE0);
  *v3 = result;
  return result;
}

void *sub_228713448(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2287145C8(a1, a2, a3, *v3, &qword_280DE1840, &qword_280DE2620, sub_228714CE0, sub_228714CE0);
  *v3 = result;
  return result;
}

char *sub_2287134A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228713D84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2287134C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228713EA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2287134E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228714008(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228713500(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22871425C(a1, a2, a3, *v3, &qword_280DE1818, type metadata accessor for _HKDataTypeCode);
  *v3 = result;
  return result;
}

char *sub_22871353C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228714130(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22871355C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2287147E8(a1, a2, a3, *v3, &qword_280DE1850, type metadata accessor for ModelTrainingEvent, type metadata accessor for ModelTrainingEvent);
  *v3 = result;
  return result;
}

char *sub_2287135AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22871425C(a1, a2, a3, *v3, &qword_280DE35A8, sub_2287150D0);
  *v3 = result;
  return result;
}

void *sub_2287135E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228714370(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_228713608(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228713B7C(a1, a2, a3, *v3, &qword_280DE1898, &qword_280DE3460, &qword_280DE2630, sub_228714E0C);
  *v3 = result;
  return result;
}

void *sub_228713654(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2287145C8(a1, a2, a3, *v3, &qword_280DE1848, &qword_280DE2630, sub_228714E0C, sub_228714E0C);
  *v3 = result;
  return result;
}

void *sub_2287136AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2287147E8(a1, a2, a3, *v3, &qword_280DE1888, MEMORY[0x277D11E88], MEMORY[0x277D11E88]);
  *v3 = result;
  return result;
}

char *sub_2287136FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287042F4(0, &qword_280DE1828, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_228713818(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287042F4(0, &qword_280DDFE58, MEMORY[0x277D121B8], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_228713924(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_228714CE0(0, &qword_280DE1858, MEMORY[0x277D84560]);
  sub_228714D78(0, &qword_280DE2EF0, sub_22870CAC4, &qword_280DE2E50, sub_22870CAC4);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_228714D78(0, &qword_280DE2EF0, sub_22870CAC4, &qword_280DE2E50, sub_22870CAC4);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_228713B7C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t (*)(void, void)))
{
  v12 = result;
  if (a3)
  {
    v13 = a4[3];
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = a4[2];
  if (v14 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v14;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_228714C3C(0, a5, a6, a7, a8);
  sub_228714FC8(0, a6, a7, a8);
  v18 = *(*(v17 - 8) + 72);
  v19 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
  v20 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v19) == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_29;
  }

  v20[2] = v15;
  v20[3] = 2 * ((result - v19) / v18);
LABEL_19:
  sub_228714FC8(0, a6, a7, a8);
  v23 = *(v22 - 8);
  if (v12)
  {
    if (v20 < a4 || (v24 = (*(v23 + 80) + 32) & ~*(v23 + 80), v20 + v24 >= a4 + v24 + *(v23 + 72) * v15))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v20 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v20;
}

char *sub_228713D84(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287042F4(0, &qword_280DE3850, MEMORY[0x277D11E90], MEMORY[0x277D84560]);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_228713EA8(void *result, int64_t a2, char a3, void *a4)
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
    sub_228714BD8(0, &qword_280DE1830, sub_228714F50, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_228714F50(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_228714008(char *result, int64_t a2, char a3, char *a4)
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
    sub_228714BD8(0, &qword_280DE1868, sub_228714EA4, MEMORY[0x277D84560]);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_228714130(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287042F4(0, &qword_280DE3990, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22871425C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_228714BD8(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_228714370(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_228714E0C(0, &qword_280DE1860, MEMORY[0x277D84560]);
  sub_228714D78(0, &qword_280DE2F00, sub_22870C510, qword_280DE2E60, sub_22870C510);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_228714D78(0, &qword_280DE2F00, sub_22870C510, qword_280DE2E60, sub_22870C510);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2287145C8(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t (*)(void, void)), uint64_t (*a8)(void, uint64_t, uint64_t (*)(void, void)))
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
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_228715064(0, a5, a6, a7);
  v16 = *(a8(0, a6, type metadata accessor for GeneratorPipelineManagerWrapper) - 8);
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
  v21 = *(a8(0, a6, type metadata accessor for GeneratorPipelineManagerWrapper) - 8);
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

void *sub_2287147E8(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_228714BD8(0, a5, a6, MEMORY[0x277D84560]);
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

uint64_t sub_2287149DC(uint64_t a1)
{
  v1 = *(sub_2287CA5D0() + 16);
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v1, 0);
    v2 = 32;
    v3 = v12;
    do
    {
      v4 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        v9 = v4;
        v10 = v5;
        sub_2287042D4((v6 > 1), v7 + 1, 1);
        v5 = v10;
        v4 = v9;
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 16 * v7;
      *(v8 + 32) = v4;
      *(v8 + 40) = v5;
      ++v2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_228714B08(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_228714B18()
{
  result = qword_280DE39F8;
  if (!qword_280DE39F8)
  {
    sub_2287042F4(255, &qword_280DE3A00, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE39F8);
  }

  return result;
}

uint64_t sub_228714BC0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_228714BD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_228714C3C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t (*)(void, void)))
{
  if (!*a2)
  {
    sub_228714FC8(255, a3, a4, a5);
    v6 = sub_2287CBCD0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_228714C98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_228714CE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_228714D78(255, &qword_280DE2EF0, sub_22870CAC4, &qword_280DE2E50, sub_22870CAC4);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_228714D78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = sub_228714C98(a4, a5, &protocol conformance descriptor for AnyGenerator<A, B>);
    v12 = type metadata accessor for AnyPipeline(a1, v9, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

void sub_228714E0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_228714D78(255, &qword_280DE2F00, sub_22870C510, qword_280DE2E60, sub_22870C510);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_228714EA4()
{
  result = qword_280DE3348;
  if (!qword_280DE3348)
  {
    sub_228714EEC();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_280DE3348);
  }

  return result;
}

unint64_t sub_228714EEC()
{
  result = qword_280DE3350;
  if (!qword_280DE3350)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DE3350);
  }

  return result;
}

void sub_228714F50(uint64_t a1)
{
  if (!qword_280DE1A30)
  {
    sub_228703004(255, &qword_280DE39B8, 0x277D82BB8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE1A30);
    }
  }
}

void sub_228714FC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t (*)(void, void)))
{
  if (!*a2)
  {
    sub_2287C9810();
    a4(255, a3, type metadata accessor for GeneratorPipelineManagerWrapper);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_228715064(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t (*)(void, void)))
{
  if (!*a2)
  {
    a4(255, a3, type metadata accessor for GeneratorPipelineManagerWrapper);
    v5 = sub_2287CBCD0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2287150D0()
{
  result = qword_280DE3598;
  if (!qword_280DE3598)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_280DE3598);
  }

  return result;
}

void sub_22871511C(uint64_t a1)
{
  if (!qword_280DE1910)
  {
    sub_228703004(255, &qword_280DE1900, 0x277D443F8);
    type metadata accessor for ModelTrainingEvent(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE1910);
    }
  }
}

uint64_t sub_2287151A4(uint64_t a1)
{
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v26 = MEMORY[0x277D84F90];
    sub_2287CBAC0();
    v5 = a1 + 56;
    v6 = sub_2287CB890();
    v7 = 0;
    v8 = *(a1 + 36);
    v22 = v3;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v12 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v23 = v7;
      v13 = (*(a1 + 48) + 16 * v6);
      v14 = v13[1];
      v24[0] = *v13;
      v24[1] = v14;

      sub_228716620(v24, &v25);
      if (v1)
      {
        goto LABEL_28;
      }

      sub_2287CBA90();
      sub_2287CBAD0();
      sub_2287CBAE0();
      sub_2287CBAA0();
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_25;
      }

      v15 = *(v5 + 8 * v12);
      if ((v15 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v16 = v15 & (-2 << (v6 & 0x3F));
      if (v16)
      {
        v9 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v10 = v22;
        v1 = 0;
        v11 = v23;
      }

      else
      {
        v17 = v12 << 6;
        v18 = v12 + 1;
        v10 = v22;
        v19 = (a1 + 64 + 8 * v12);
        while (v18 < (v9 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_228717DF8(v6, v8, 0);
            v9 = __clz(__rbit64(v20)) + v17;
            goto LABEL_19;
          }
        }

        sub_228717DF8(v6, v8, 0);
LABEL_19:
        v11 = v23;
      }

      v7 = v11 + 1;
      v6 = v9;
      if (v7 == v10)
      {
        return v26;
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
LABEL_28:

    __break(1u);
  }

  return result;
}

uint64_t static FeedItem.predicateForKeyword(_:)(uint64_t a1, uint64_t a2)
{
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2287CCFF0;
  v5 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v6 = sub_2287043F8();
  *(v4 + 32) = 0x7364726F7779656BLL;
  *(v4 + 40) = 0xE800000000000000;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 64) = v6;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;

  return sub_2287CB550();
}

id static FeedItem.predicateForNotKeyword(contentKinds:keyword:sourceProfiles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_228703B34(0, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2287CCFF0;
  v12 = MEMORY[0x277D837D0];
  *(v11 + 56) = MEMORY[0x277D837D0];
  v13 = sub_2287043F8();
  *(v11 + 32) = 0x7364726F7779656BLL;
  *(v11 + 40) = 0xE800000000000000;
  *(v11 + 96) = v12;
  *(v11 + 104) = v13;
  *(v11 + 64) = v13;
  *(v11 + 72) = a2;
  *(v11 + 80) = a3;

  v14 = sub_2287CB550();
  v15 = objc_opt_self();
  v16 = [v15 notPredicateWithSubpredicate_];

  v17 = sub_2287C9590();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor12contentKinds7hkTypes17relevantDateRange14sourceProfilesSo11NSPredicateCSayAA11ContentKindOG_SaySo12HKObjectTypeCGSg10Foundation0M8IntervalVSgSayAA13SourceProfileOGSgtFZ_0(a1, 0, v10, a4);
  sub_22870455C(v10);
  sub_2287035F0(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2287CCFD0;
  *(v19 + 32) = v16;
  *(v19 + 40) = v18;
  v20 = v16;
  v21 = v18;
  v22 = sub_2287CB390();

  v23 = [v15 andPredicateWithSubpredicates_];

  return v23;
}

id static FeedItem.predicateFor(contentKinds:keyword:hideInDiscover:sourceProfiles:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_2287035F0(0, &qword_280DE39A8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2287CCFE0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;

  v11 = _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor12contentKinds17atLeastOneKeyword14hideInDiscover14sourceProfilesSo11NSPredicateCSayAA11ContentKindOG_SaySSGSbSgSayAA13SourceProfileOGSgtFZ_0(a1, inited, a4 & 1, a5);
  swift_setDeallocating();
  sub_228717D54(inited + 32);
  return v11;
}

uint64_t static FeedItem.predicateFor(measureIdentifiers:)(uint64_t a1)
{
  v26 = sub_2287C98C0();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v5, 0);
    v6 = v27;
    v8 = *(v2 + 16);
    v7 = v2 + 16;
    v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v24 = *(v7 + 56);
    v25 = v8;
    v23 = (v7 - 8);
    do
    {
      v10 = v26;
      v11 = v7;
      v25(v4, v9, v26);
      v12 = sub_2287C98B0();
      v14 = v13;
      (*v23)(v4, v10);
      v27 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2287042D4((v15 > 1), v16 + 1, 1);
        v6 = v27;
      }

      *(v6 + 16) = v16 + 1;
      v17 = v6 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v9 += v24;
      --v5;
      v7 = v11;
    }

    while (v5);
  }

  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2287CCFF0;
  v19 = MEMORY[0x277D837D0];
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_2287043F8();
  *(v18 + 32) = 0xD000000000000012;
  *(v18 + 40) = 0x80000002287D02A0;
  sub_2287035F0(0, &qword_280DE3A00, v19, MEMORY[0x277D83940]);
  *(v18 + 96) = v20;
  *(v18 + 104) = sub_22870444C();
  *(v18 + 72) = v6;
  return sub_2287CB550();
}

id static FeedItem.predicateFor(healthRecordsOnly:)(char a1)
{
  if (a1)
  {
    sub_2287035F0(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_2287CCFD0;
    sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
    sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2287CCFF0;
    v3 = MEMORY[0x277D837D0];
    *(v2 + 56) = MEMORY[0x277D837D0];
    v4 = sub_2287043F8();
    *(v2 + 64) = v4;
    *(v2 + 32) = 0x7364726F7779656BLL;
    *(v2 + 40) = 0xE800000000000000;
    v5 = sub_2287C9FE0();
    *(v2 + 96) = v3;
    *(v2 + 104) = v4;
    *(v2 + 72) = v5;
    *(v2 + 80) = v6;
    *(v1 + 32) = sub_2287CB550();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2287CCFF0;
    *(v7 + 56) = v3;
    *(v7 + 64) = v4;
    *(v7 + 32) = 0x7364726F7779656BLL;
    *(v7 + 40) = 0xE800000000000000;
    v8 = sub_2287C9FF0();
    *(v7 + 96) = v3;
    *(v7 + 104) = v4;
    *(v7 + 72) = v8;
    *(v7 + 80) = v9;
    *(v1 + 40) = sub_2287CB550();
    v10 = sub_2287CB390();

    v11 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v11;
  }

  else
  {
    sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
    sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2287CCFF0;
    v14 = MEMORY[0x277D837D0];
    *(v13 + 56) = MEMORY[0x277D837D0];
    v15 = sub_2287043F8();
    *(v13 + 64) = v15;
    *(v13 + 32) = 0x7364726F7779656BLL;
    *(v13 + 40) = 0xE800000000000000;
    v16 = sub_2287C9FF0();
    *(v13 + 96) = v14;
    *(v13 + 104) = v15;
    *(v13 + 72) = v16;
    *(v13 + 80) = v17;
    return sub_2287CB550();
  }
}

uint64_t static FeedItem.predicateForHasKeywordHealthRecordsDataType(_:)(char a1)
{
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2287CCFF0;
  v2 = MEMORY[0x277D837D0];
  *(v1 + 56) = MEMORY[0x277D837D0];
  v3 = sub_2287043F8();
  *(v1 + 64) = v3;
  *(v1 + 32) = 0x7364726F7779656BLL;
  *(v1 + 40) = 0xE800000000000000;
  v4 = sub_2287C9FF0();
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  *(v1 + 72) = v4;
  *(v1 + 80) = v5;
  return sub_2287CB550();
}

uint64_t static FeedItem.predicateForHealthRecordsKeyword()()
{
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2287CCFF0;
  v1 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  v2 = sub_2287043F8();
  *(v0 + 64) = v2;
  *(v0 + 32) = 0x7364726F7779656BLL;
  *(v0 + 40) = 0xE800000000000000;
  v3 = sub_2287C9FE0();
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 72) = v3;
  *(v0 + 80) = v4;
  return sub_2287CB550();
}

uint64_t static FeedItem.predicateForAnyUniqueIdentifier(in:)(uint64_t a1)
{
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2287CCFF0;
  sub_2287CA800();
  v3 = sub_2287CA7C0();
  v5 = v4;
  v6 = MEMORY[0x277D837D0];
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2287043F8();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  sub_2287035F0(0, &qword_280DE3A00, v6, MEMORY[0x277D83940]);
  *(v2 + 96) = v7;
  *(v2 + 104) = sub_22870444C();
  *(v2 + 72) = a1;

  return sub_2287CB550();
}

uint64_t sub_2287161B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2287CCFF0;
  sub_2287CA800();
  v7 = sub_2287CA7C0();
  v9 = v8;
  v10 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v11 = sub_2287043F8();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = v10;
  *(v6 + 104) = v11;
  *(v6 + 64) = v11;
  *(v6 + 72) = a1;
  *(v6 + 80) = a2;

  return sub_2287CB550();
}

id static FeedItem.predicateForNoFeedItems()()
{
  v0 = [objc_opt_self() predicateWithValue_];

  return v0;
}

uint64_t static FeedItem.predicateForSectionsBefore(section:)(uint64_t a1)
{
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2287CCFF0;
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_2287043F8();
  *(v1 + 32) = 0xD000000000000015;
  *(v1 + 40) = 0x80000002287D0300;
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
  *(v1 + 96) = sub_228703004(0, &qword_280DE39C0, 0x277CCABB0);
  *(v1 + 104) = sub_228717DA8(&qword_280DDFEA8, &qword_280DE39C0, 0x277CCABB0);
  *(v1 + 72) = v2;
  return sub_2287CB550();
}

id static FeedItem.createFeatureStatusPredicate(with:hkType:)(uint64_t a1, void *a2)
{
  sub_2287151A4(a1);
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  v3 = sub_2287CB390();

  v4 = objc_opt_self();
  v5 = [v4 orPredicateWithSubpredicates_];

  if (!a2)
  {
    return v5;
  }

  sub_2287035F0(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2287CCC50;
  *(inited + 32) = a2;
  v7 = a2;
  v8 = _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor10objectypesSo11NSPredicateCSaySo12HKObjectTypeCG_tFZ_0(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2287CCFD0;
  *(v9 + 32) = v5;
  *(v9 + 40) = v8;
  v10 = v5;
  v11 = v8;
  v12 = sub_2287CB390();

  v13 = [v4 andPredicateWithSubpredicates_];

  return v13;
}

uint64_t sub_228716620@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v49 = a2;
  v44 = sub_2287C9590();
  v50 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228703B34(0, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v39 - v10;
  v43 = &v39 - v10;
  v12 = a1[1];
  v48 = *a1;
  v46 = v12;
  v13 = MEMORY[0x277D84560];
  sub_228703B34(0, &qword_280DE3858, MEMORY[0x277D11E28], MEMORY[0x277D84560]);
  v14 = sub_2287C9B20();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2287CCFE0;
  (*(v15 + 104))(v17 + v16, *MEMORY[0x277D11D80], v14);
  v42 = *(v50 + 56);
  v18 = v44;
  v42(v11, 1, 1, v44);
  v45 = MEMORY[0x277D84560];
  sub_2287035F0(0, &qword_280DE3850, MEMORY[0x277D11E90], MEMORY[0x277D84560]);
  v19 = swift_allocObject();
  v41 = xmmword_2287CCFF0;
  *(v19 + 16) = xmmword_2287CCFF0;
  *(v19 + 32) = sub_2287C9CA0();
  *(v19 + 40) = 0;
  v20 = sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, v13);
  v21 = swift_allocObject();
  *(v21 + 16) = v41;
  v22 = MEMORY[0x277D837D0];
  *(v21 + 56) = MEMORY[0x277D837D0];
  v23 = sub_2287043F8();
  *(v21 + 32) = 0x7364726F7779656BLL;
  *(v21 + 40) = 0xE800000000000000;
  *(v21 + 96) = v22;
  *(v21 + 104) = v23;
  v24 = v48;
  *(v21 + 64) = v23;
  *(v21 + 72) = v24;
  *(v21 + 80) = v46;

  v48 = v20;
  v25 = sub_2287CB550();
  v42(v9, 1, 1, v18);
  v26 = _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor12contentKinds7hkTypes17relevantDateRange14sourceProfilesSo11NSPredicateCSayAA11ContentKindOG_SaySo12HKObjectTypeCGSg10Foundation0M8IntervalVSgSayAA13SourceProfileOGSgtFZ_0(v17, 0, v9, v19);
  v27 = v43;

  v28 = v47;

  sub_22870455C(v9);
  v29 = v50;
  sub_2287035F0(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, v45);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2287CCFD0;
  *(v30 + 32) = v25;
  *(v30 + 40) = v26;
  v51 = v30;
  sub_2287044C8(v27, v28);
  if ((*(v29 + 48))(v28, 1, v18) == 1)
  {
    v31 = v25;
    v32 = v26;
    sub_22870455C(v28);
  }

  else
  {
    v33 = v40;
    (*(v29 + 32))(v40, v28, v18);
    v34 = v25;
    v35 = v26;
    _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor17relevantDateRangeSo11NSPredicateC10Foundation0I8IntervalV_tFZ_0();
    MEMORY[0x22AABEA50]();
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2287CB3E0();
    }

    sub_2287CB420();
    (*(v29 + 8))(v33, v18);
  }

  v36 = sub_2287CB390();

  v37 = [objc_opt_self() andPredicateWithSubpredicates_];

  result = sub_22870455C(v27);
  *v49 = v37;
  return result;
}

uint64_t _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor17relevantDateRangeSo11NSPredicateC10Foundation0I8IntervalV_tFZ_0()
{
  v0 = sub_2287C97C0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v29 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v26 = &v24 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  v27 = "e.codeRaw IN %@).@count > 0";
  v28 = v11;
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2287CD1B0;
  *(v12 + 56) = MEMORY[0x277D837D0];
  v25 = sub_2287043F8();
  *(v12 + 64) = v25;
  *(v12 + 32) = 0xD000000000000011;
  *(v12 + 40) = 0x80000002287D0390;
  sub_2287C9570();
  v13 = sub_2287C9770();
  v14 = *(v1 + 8);
  v14(v10, v0);
  v15 = sub_228703004(0, &qword_280DE1928, 0x277CBEAA8);
  *(v12 + 96) = v15;
  v16 = sub_228717DA8(&qword_280DE1920, &qword_280DE1928, 0x277CBEAA8);
  *(v12 + 104) = v16;
  *(v12 + 72) = v13;
  sub_2287C9540();
  v17 = sub_2287C9770();
  v14(v8, v0);
  *(v12 + 136) = v15;
  *(v12 + 144) = v16;
  *(v12 + 112) = v17;
  v18 = v25;
  v19 = v26;
  *(v12 + 176) = MEMORY[0x277D837D0];
  *(v12 + 184) = v18;
  *(v12 + 152) = 0x746E6176656C6572;
  *(v12 + 160) = 0xEF65746144646E45;
  sub_2287C9570();
  v20 = sub_2287C9770();
  v14(v19, v0);
  *(v12 + 216) = v15;
  *(v12 + 224) = v16;
  *(v12 + 192) = v20;
  v21 = v29;
  sub_2287C9540();
  v22 = sub_2287C9770();
  v14(v21, v0);
  *(v12 + 256) = v15;
  *(v12 + 264) = v16;
  *(v12 + 232) = v22;
  return sub_2287CB550();
}

uint64_t _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor10objectypesSo11NSPredicateCSaySo12HKObjectTypeCG_tFZ_0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2287CB920();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
LABEL_11:
    sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
    sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2287CCFF0;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_2287043F8();
    *(v9 + 32) = 0x6570795461746164;
    *(v9 + 40) = 0xE900000000000073;
    sub_228717E04(0);
    *(v9 + 96) = v10;
    *(v9 + 104) = sub_228717E6C();
    *(v9 + 72) = v3;
    return sub_2287CB550();
  }

  v11 = MEMORY[0x277D84F90];
  result = sub_2287CBAC0();
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AABF120](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v6 code];
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];

      sub_2287CBA90();
      sub_2287CBAD0();
      sub_2287CBAE0();
      sub_2287CBAA0();
    }

    while (v2 != v5);
    v3 = v11;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

id _s14HealthPlatform8FeedItemC0aB4CoreE020predicateForEligibleC5Items3for14sourceProfilesSo11NSPredicateCAA0C0C4KindO_SayAA13SourceProfileOGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = sub_2287CAA50();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228703B34(0, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43 - v8;
  v10 = sub_2287CA5B0();
  v11 = sub_2287C9590();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor12contentKinds7hkTypes17relevantDateRange14sourceProfilesSo11NSPredicateCSayAA11ContentKindOG_SaySo12HKObjectTypeCGSg10Foundation0M8IntervalVSgSayAA13SourceProfileOGSgtFZ_0(v10, 0, v9, a2);

  sub_22870455C(v9);
  sub_2287035F0(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2287CCC50;
  *(v13 + 32) = v12;
  v46 = v13;
  v14 = objc_opt_self();
  v15 = v12;
  v16 = [v14 standardUserDefaults];
  v17 = sub_2287CB210();
  v18 = [v16 arrayForKey_];

  v19 = MEMORY[0x277D837D0];
  if (v18)
  {
    v20 = sub_2287CB3A0();

    v21 = sub_228784298(v20);

    if (v21)
    {
      sub_2287CA9E0();

      v22 = sub_2287CAA40();
      v23 = sub_2287CB610();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v44 = v15;
        v45 = v25;
        v26 = v4;
        v27 = v25;
        *v24 = 136315138;
        v28 = MEMORY[0x22AABEA80](v21, MEMORY[0x277D837D0]);
        v30 = sub_2287031D8(v28, v29, &v45);

        *(v24 + 4) = v30;
        _os_log_impl(&dword_2286FF000, v22, v23, "discoverFeedItemWhitelist key found in defaults, applying whitelist of %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x22AABFD90](v27, -1, -1);
        v31 = v24;
        v19 = MEMORY[0x277D837D0];
        MEMORY[0x22AABFD90](v31, -1, -1);

        (*(v26 + 8))(v6, v3);
        v15 = v44;
      }

      else
      {

        (*(v4 + 8))(v6, v3);
      }

      sub_2287CA800();
      sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
      sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_2287CCFF0;
      v33 = sub_2287CA7C0();
      v35 = v34;
      *(v32 + 56) = v19;
      *(v32 + 64) = sub_2287043F8();
      *(v32 + 32) = v33;
      *(v32 + 40) = v35;
      sub_2287035F0(0, &qword_280DE3A00, v19, MEMORY[0x277D83940]);
      *(v32 + 96) = v36;
      *(v32 + 104) = sub_22870444C();
      *(v32 + 72) = v21;
      v37 = sub_2287CB550();
      MEMORY[0x22AABEA50]();
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2287CB3E0();
      }

      sub_2287CB420();
    }
  }

  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_2287CCFE0;
  *(v38 + 56) = v19;
  *(v38 + 64) = sub_2287043F8();
  strcpy((v38 + 32), "hideInDiscover");
  *(v38 + 47) = -18;
  v39 = sub_2287CB550();
  MEMORY[0x22AABEA50]();
  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2287CB3E0();
  }

  sub_2287CB420();
  v40 = sub_2287CB390();

  v41 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v41;
}

id _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor12contentKinds17atLeastOneKeyword14hideInDiscover14sourceProfilesSo11NSPredicateCSayAA11ContentKindOG_SaySSGSbSgSayAA13SourceProfileOGSgtFZ_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v32 = a1;
  sub_228703B34(0, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v31 = &v29 - v8;
  v9 = *(a2 + 16);
  v10 = MEMORY[0x277D84F90];
  v11 = malloc_size;
  v12 = MEMORY[0x277D837D0];
  if (v9)
  {
    v29 = a4;
    v30 = a3;
    v34 = MEMORY[0x277D84F90];
    sub_2287CBAC0();
    sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
    sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
    v13 = (a2 + 40);
    v33 = xmmword_2287CCFF0;
    do
    {
      v15 = *(v13 - 1);
      v14 = *v13;
      v16 = swift_allocObject();
      *(v16 + 16) = v33;
      *(v16 + 56) = v12;
      v17 = sub_2287043F8();
      *(v16 + 32) = 0x7364726F7779656BLL;
      *(v16 + 40) = 0xE800000000000000;
      *(v16 + 96) = v12;
      *(v16 + 104) = v17;
      *(v16 + 64) = v17;
      *(v16 + 72) = v15;
      *(v16 + 80) = v14;
      swift_bridgeObjectRetain_n();
      sub_2287CB550();

      sub_2287CBA90();
      sub_2287CBAD0();
      sub_2287CBAE0();
      sub_2287CBAA0();
      v13 += 2;
      --v9;
    }

    while (v9);
    v18 = v34;
    LOBYTE(a3) = v30;
    v11 = malloc_size;
    a4 = v29;
    v10 = MEMORY[0x277D84F90];
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v34 = v10;
  if (v18 >> 62)
  {
    if (sub_2287CB920())
    {
      goto LABEL_8;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_8:
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  v19 = sub_2287CB390();

  v20 = [objc_opt_self() orPredicateWithSubpredicates_];

  MEMORY[0x22AABEA50]();
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2287CB3E0();
  }

  sub_2287CB420();
LABEL_13:
  v21 = sub_2287C9590();
  v22 = v31;
  (*(*(v21 - 8) + 56))(v31, 1, 1, v21);
  _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor12contentKinds7hkTypes17relevantDateRange14sourceProfilesSo11NSPredicateCSayAA11ContentKindOG_SaySo12HKObjectTypeCGSg10Foundation0M8IntervalVSgSayAA13SourceProfileOGSgtFZ_0(v32, 0, v22, a4);
  v23 = sub_22870455C(v22);
  MEMORY[0x22AABEA50](v23);
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2287CB3E0();
  }

  sub_2287CB420();
  if (a3 != 2)
  {
    sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
    sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
    v24 = swift_allocObject();
    *(v24 + 16) = *(v11 + 255);
    *(v24 + 56) = v12;
    *(v24 + 64) = sub_2287043F8();
    strcpy((v24 + 32), "hideInDiscover");
    *(v24 + 47) = -18;
    v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    *(v24 + 96) = sub_228703004(0, &qword_280DE39C0, 0x277CCABB0);
    *(v24 + 104) = sub_228717DA8(&qword_280DDFEA8, &qword_280DE39C0, 0x277CCABB0);
    *(v24 + 72) = v25;
    sub_2287CB550();
    MEMORY[0x22AABEA50]();
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2287CB3E0();
    }

    sub_2287CB420();
  }

  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  v26 = sub_2287CB390();

  v27 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v27;
}

uint64_t sub_228717DA8(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_228703004(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228717DF8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_228717E04(uint64_t a1)
{
  if (!qword_280DE1298)
  {
    sub_228703004(255, &qword_280DE39C0, 0x277CCABB0);
    v1 = sub_2287CB450();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1298);
    }
  }
}

unint64_t sub_228717E6C()
{
  result = qword_280DE1290;
  if (!qword_280DE1290)
  {
    sub_228717E04(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1290);
  }

  return result;
}

uint64_t sub_228717EC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain;
  swift_beginAccess();
  v5 = sub_2287C9E70();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_228717F50(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2287C9E70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_228718068@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain;
  swift_beginAccess();
  v4 = sub_2287C9E70();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2287180F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain;
  swift_beginAccess();
  v4 = sub_2287C9E70();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_2287181E0()
{
  v1 = v0;
  v2 = sub_2287C9ED0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_context, v2);
  sub_2287C9E80();
  (*(v3 + 8))(v5, v2);
  sub_2287010E4(v1 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo, &v12);
  v13 = *(v1 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_queue);
  v6 = v13;
  sub_228718330();
  v7 = v6;
  v8 = sub_2287CAF40();
  sub_228718384(v11);
  return v8;
}

unint64_t sub_228718330()
{
  result = qword_280DE0DC0[0];
  if (!qword_280DE0DC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DE0DC0);
  }

  return result;
}