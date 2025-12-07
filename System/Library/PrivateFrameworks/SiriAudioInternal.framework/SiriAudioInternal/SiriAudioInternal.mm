uint64_t variable initialization expression of InternalSignalsManager.lock()
{
  sub_266265D38();
  sub_266265D28();
  sub_266265E98();
  swift_allocObject();
  return sub_266265E78();
}

unint64_t sub_26621B510()
{
  result = qword_280069598;
  if (!qword_280069598)
  {
    type metadata accessor for INMediaItemType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280069598);
  }

  return result;
}

void *sub_26621B568@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26621B584()
{
  v1 = *v0;
  sub_266267158();
  MEMORY[0x266780330](v1);
  return sub_266267178();
}

uint64_t sub_26621B5F8(uint64_t a1)
{
  v2 = *v1;
  sub_266267158();
  MEMORY[0x266780330](v2);
  return sub_266267178();
}

void sub_26621B684(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_26621B6DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800695A8, &qword_266267D88);
  sub_266265BC8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266267D20;
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  result = sub_266265BA8();
  qword_28006A4C0 = v0;
  return result;
}

uint64_t sub_26621BC00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069D20, &qword_266267D80);
  v0 = sub_266266768();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_266267D30;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D609A8], v0);
  v6(v5 + v2, *MEMORY[0x277D60998], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D609A0], v0);
  v6(v5 + 3 * v2, *MEMORY[0x277D60990], v0);
  v6(v5 + 4 * v2, *MEMORY[0x277D60988], v0);
  v6(v5 + 5 * v2, *MEMORY[0x277D609C0], v0);
  v6(v5 + 6 * v2, *MEMORY[0x277D609B0], v0);
  result = (v6)(v5 + 7 * v2, *MEMORY[0x277D609B8], v0);
  qword_28006A4C8 = v4;
  return result;
}

uint64_t sub_26621BDF4()
{
  sub_266266778();
  swift_allocObject();
  result = sub_266266788();
  qword_28006A4D0 = result;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26621BED0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void INLocalSearchProvider.search(for:requesterSharedUserID:bundleIdentifier:intent:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(id), char *a8)
{
  v97 = a6;
  v98 = a2;
  v101 = a4;
  v102 = a5;
  v100 = a3;
  v11 = sub_266266988();
  v108 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v96 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v94 = &v89 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v92 = &v89 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v93 = &v89 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v91 = &v89 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v90 = &v89 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v106 = &v89 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v89 - v26;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v11, static Logger.default);
  swift_beginAccess();
  v29 = v108[2];
  v103 = v28;
  v104 = v29;
  v105 = (v108 + 2);
  v29(v27, v28, v11);
  v30 = a1;
  v31 = a1;
  v32 = sub_266266968();
  v33 = sub_266266D78();

  v34 = v33;
  v35 = os_log_type_enabled(v32, v33);
  v99 = v27;
  v95 = v30;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v109 = v31;
    v110[0] = v37;
    *v36 = 136315138;
    v38 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800695B0, &qword_266267DC8);
    v39 = sub_266266A68();
    v40 = v11;
    v41 = a7;
    v42 = a8;
    v44 = sub_26621EAF0(v39, v43, v110);
    v45 = v42;
    v46 = v41;
    v11 = v40;
    v47 = v108;

    *(v36 + 4) = v44;
    _os_log_impl(&dword_266219000, v32, v34, "INLocalSearchProvider#search Request for local search with INMediaSearch: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x266780880](v37, -1, -1);
    MEMORY[0x266780880](v36, -1, -1);

    v48 = v47[1];
    v48(v99, v11);
  }

  else
  {

    v48 = v108[1];
    v48(v99, v11);
    v46 = a7;
    v45 = a8;
  }

  if (sub_266220A70(v31, v101, v102))
  {
    sub_266220B70();
    v49 = sub_266266CC8();
    v104(v106, v103, v11);
    v50 = v49;
    v51 = sub_266266968();
    v52 = sub_266266D78();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      *(v53 + 4) = v50;
      *v54 = v50;
      v55 = v50;
      _os_log_impl(&dword_266219000, v51, v52, "INLocalSearchProvider#search Request for local search with podcastShow type (or Podcasts app identifier), falling back with synthetic item: %@", v53, 0xCu);
      sub_266220BBC(v54);
      MEMORY[0x266780880](v54, -1, -1);
      MEMORY[0x266780880](v53, -1, -1);
    }

    v48(v106, v11);
    v56 = v50;
    v46(v50);

    return;
  }

  if (!v31)
  {
    sub_266220B70();
    v63 = sub_266266CA8();
    v104(v96, v103, v11);
    v64 = v63;
    v65 = sub_266266968();
    v66 = sub_266266D78();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412290;
      *(v67 + 4) = v64;
      *v68 = v64;
      v69 = v64;
      _os_log_impl(&dword_266219000, v65, v66, "INLocalSearchProvider#search Request for local search with nil INMediaSearch, falling back with synthetic item: %@", v67, 0xCu);
      sub_266220BBC(v68);
      MEMORY[0x266780880](v68, -1, -1);
      MEMORY[0x266780880](v67, -1, -1);
    }

    v48(v96, v11);
    v70 = v64;
    v46(v64);
    goto LABEL_19;
  }

  v57 = v95;
  if (sub_266266ED8())
  {
    v58 = v94;
    v104(v94, v103, v11);
    v59 = sub_266266968();
    v60 = sub_266266D58();
    if (!os_log_type_enabled(v59, v60))
    {
LABEL_15:

      v48(v58, v11);
      v46(0);

      return;
    }

    v61 = swift_slowAlloc();
    *v61 = 0;
    v62 = "INLocalSearchProvider#search SkipWholeLibraryFallbackForPlayThis internal signal present. Returning no results.";
LABEL_14:
    _os_log_impl(&dword_266219000, v59, v60, v62, v61, 2u);
    MEMORY[0x266780880](v61, -1, -1);
    goto LABEL_15;
  }

  if (!sub_26621CC94(v57))
  {
    v71 = [v57 mediaType];
    if (qword_2877D9778 == v71 || qword_2877D9780 == v71 || qword_2877D9788 == v71)
    {
      v58 = v92;
      v104(v92, v103, v11);
      v59 = sub_266266968();
      v60 = sub_266266D58();
      if (!os_log_type_enabled(v59, v60))
      {
        goto LABEL_15;
      }

      v61 = swift_slowAlloc();
      *v61 = 0;
      v62 = "INLocalSearchProvider#search Specified type without search parameter, not searching locally and instead will prompt for value";
      goto LABEL_14;
    }

    sub_266220B70();
    [v57 mediaType];
    v72 = sub_266266CA8();
    v104(v93, v103, v11);
    v73 = v72;
    v74 = sub_266266968();
    v75 = sub_266266D78();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v107 = v11;
      v77 = v76;
      v78 = swift_slowAlloc();
      *v77 = 138412290;
      *(v77 + 4) = v73;
      *v78 = v73;
      v79 = v73;
      _os_log_impl(&dword_266219000, v74, v75, "INLocalSearchProvider#search Request for non-specific local INMediaSearch, falling back with synthetic item: %@", v77, 0xCu);
      sub_266220BBC(v78);
      MEMORY[0x266780880](v78, -1, -1);
      v11 = v107;
      MEMORY[0x266780880](v77, -1, -1);
    }

    v48(v93, v11);
    v70 = v73;
    v46(v73);

LABEL_19:
    return;
  }

  if (sub_266266E08())
  {
    v58 = v91;
    v104(v91, v103, v11);
    v59 = sub_266266968();
    v60 = sub_266266D78();
    if (!os_log_type_enabled(v59, v60))
    {
      goto LABEL_15;
    }

    v61 = swift_slowAlloc();
    *v61 = 0;
    v62 = "INLocalSearchProvider#search Skipping actual local search as isPommesResponse=true";
    goto LABEL_14;
  }

  v106 = v45;
  v80 = v90;
  v104(v90, v103, v11);
  v81 = sub_266266968();
  v82 = sub_266266D58();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_266219000, v81, v82, "INLocalSearchProvider#search using actual local search (likely CoreSpotlight...", v83, 2u);
    MEMORY[0x266780880](v83, -1, -1);
  }

  v48(v80, v11);
  sub_266220C24(v107, v110);
  v107 = v110[4];
  v108 = __swift_project_boxed_opaque_existential_1(v110, v110[3]);
  v105 = sub_266266D28();
  v104 = sub_266266D38();
  sub_266266D18();
  v84 = [v57 genreNames];
  if (v84)
  {
    v85 = v84;
    v86 = v46;
    sub_266266BB8();
  }

  else
  {
    v86 = v46;
  }

  [v57 mediaType];
  v87 = swift_allocObject();
  v87[2] = v86;
  v87[3] = v106;
  v87[4] = v57;
  v88 = v57;

  sub_266266558();

  __swift_destroy_boxed_opaque_existential_1Tm(v110);
}

BOOL sub_26621CAD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_26621CB8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_266220E78(a4, a5, a6);
  }

  while ((sub_266266A38() & 1) == 0);
  return v10 != v11;
}

BOOL sub_26621CC94(void *a1)
{
  v2 = [a1 mediaName];
  if (v2)
  {
    v3 = v2;
    v4 = sub_266266A58();
    v6 = v5;

    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
    v6 = 0xE000000000000000;
  }

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v7;
  }

  if (v8)
  {
    return 1;
  }

  v9 = [a1 artistName];
  if (v9)
  {
    v10 = v9;
    v11 = sub_266266A58();
    v13 = v12;

    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = 0;
    v13 = 0xE000000000000000;
  }

  v15 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v15 = v14;
  }

  if (v15)
  {
    return 1;
  }

  v17 = [a1 genreNames];
  if (v17)
  {
    v18 = v17;
    v19 = sub_266266BB8();

    v20 = *(v19 + 16);

    if (v20)
    {
      return 1;
    }
  }

  v21 = [a1 moodNames];
  if (v21 && (v22 = v21, v23 = sub_266266BB8(), v22, v24 = *(v23 + 16), , v24))
  {
    return 1;
  }

  else
  {
    return [a1 mediaType] == 20;
  }
}

void sub_26621CE10(void *a1, void (*a2)(void *), uint64_t a3, char *a4)
{
  v213 = a4;
  v7 = sub_266265DD8();
  v224 = *(v7 - 8);
  v225 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v219 = &v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v220 = &v192 - v11;
  MEMORY[0x28223BE20](v10);
  v209 = &v192 - v12;
  v223 = sub_266266058();
  v13 = *(v223 - 8);
  v14 = MEMORY[0x28223BE20](v223);
  v222 = &v192 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v221 = &v192 - v16;
  v218 = sub_266266988();
  v17 = *(v218 - 8);
  v18 = MEMORY[0x28223BE20](v218);
  v20 = &v192 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v192 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v25 = MEMORY[0x28223BE20](v24);
  v26 = MEMORY[0x28223BE20](v25);
  v27 = MEMORY[0x28223BE20](v26);
  v28 = MEMORY[0x28223BE20](v27);
  v29 = MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v29);
  v31 = MEMORY[0x28223BE20](&v192 - v30);
  v32 = MEMORY[0x28223BE20](v31);
  v33 = MEMORY[0x28223BE20](v32);
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v192 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v48 = &v192 - v47;
  v226 = a1;
  if (a1)
  {
    if (v226[2])
    {
      v211 = v226[2];
      v204 = v43;
      v207 = v42;
      v200 = v41;
      v210 = v40;
      v201 = v39;
      v197 = v38;
      v202 = v37;
      v198 = v46;
      v199 = v45;
      v196 = v44;
      v212 = v17;
      v205 = a3;
      v206 = a2;
      v208 = (*(v224 + 80) + 32) & ~*(v224 + 80);

      v49 = v221;
      sub_266265D78();
      v50 = *MEMORY[0x277D55648];
      v51 = *(v13 + 104);
      v52 = v222;
      v53 = v223;
      v216 = v13 + 104;
      v215 = v51;
      v51(v222, v50, v223);
      sub_266220E78(&qword_2800695D0, MEMORY[0x277D55650], MEMORY[0x277D55658]);
      v54 = sub_266266A38();
      v55 = *(v13 + 8);
      v55(v52, v53);
      v217 = v13 + 8;
      v214 = v55;
      v55(v49, v53);
      if (v54)
      {
        v56 = v206;
        v57 = v212;
        if (qword_280069528 != -1)
        {
          swift_once();
        }

        v58 = v218;
        v59 = __swift_project_value_buffer(v218, static Logger.default);
        swift_beginAccess();
        (*(v57 + 16))(v23, v59, v58);
        v60 = sub_266266968();
        v61 = sub_266266D78();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_266219000, v60, v61, "INLocalSearchProvider#search Found playlist item as first in results", v62, 2u);
          v63 = v62;
          v57 = v212;
          MEMORY[0x266780880](v63, -1, -1);
        }

        (*(v57 + 8))(v23, v218);
        sub_266220B70();
        sub_266265D68();
        sub_266265DA8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800695D8, &qword_266267E40);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_266267DB0;
        *(v64 + 32) = sub_266265D68();
        *(v64 + 40) = v65;
        v66 = sub_266266C88();

        v56(v66);
LABEL_78:

        return;
      }

      v194 = sub_266265D68();
      v195 = v81;
      v82 = v212;
      if (qword_280069528 != -1)
      {
        swift_once();
      }

      v83 = v218;
      v84 = __swift_project_value_buffer(v218, static Logger.default);
      swift_beginAccess();
      v85 = v82 + 16;
      v203 = *(v82 + 16);
      v203(v36, v84, v83);
      v86 = sub_266266968();
      v87 = sub_266266D78();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = v84;
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_266219000, v86, v87, "INLocalSearchProvider#search Evaluating what the title/artist/sort of INMediaItem should be from results and input", v89, 2u);
        v90 = v89;
        v84 = v88;
        MEMORY[0x266780880](v90, -1, -1);
      }

      v93 = *(v82 + 8);
      v92 = v82 + 8;
      v91 = v93;
      (v93)(v36, v83);
      if (v211 == 1)
      {
        v94 = v209;
        v192 = sub_266265DA8();
        v193 = v95;
        v200 = sub_266265DC8();
        v201 = v96;
        v97 = v204;
        v203(v204, v84, v83);
        v98 = sub_266266968();
        v99 = sub_266266D78();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          *v100 = 0;
          _os_log_impl(&dword_266219000, v98, v99, "INLocalSearchProvider#search Using single-result title/artist", v100, 2u);
          MEMORY[0x266780880](v100, -1, -1);
        }

        (v91)(v97, v83);
        v101 = v225;
        goto LABEL_28;
      }

      v103 = v213;
      v104 = [v213 albumName];
      if (v104)
      {
        v213 = v91;

        v105 = sub_266265D88();
        v107 = v106;
        v200 = sub_266265DC8();
        v201 = v108;
        v203(v207, v84, v83);
        v109 = sub_266266968();
        v110 = sub_266266D78();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          *v111 = 0;
          _os_log_impl(&dword_266219000, v109, v110, "INLocalSearchProvider#search Using album from search request", v111, 2u);
          MEMORY[0x266780880](v111, -1, -1);
        }

        (v213)(v207, v83);
        v203(v210, v84, v83);
        v112 = sub_266266968();
        v113 = sub_266266D78();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          *v114 = 0;
          _os_log_impl(&dword_266219000, v112, v113, "INLocalSearchProvider#search Sorting by album, track", v114, 2u);
          MEMORY[0x266780880](v114, -1, -1);
        }

        (v213)(v210, v83);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v226 = sub_26624ABA8(v226);
        }

        v115 = v226[2];
        v228 = v226 + v208;
        v229 = v115;
        sub_26621F0D0(&v228);
        v193 = v107;
        v192 = v105;
        v102 = v209;
        v101 = v225;
        while (1)
        {
          v117 = v226[2];
          if (!v117)
          {
            break;
          }

          v131 = 0;
          v213 = v226 + v208;
          v212 = v224 + 16;
          LODWORD(v211) = *MEMORY[0x277D55640];
          v207 = (v224 + 8);
          v210 = (v224 + 32);
          v218 = MEMORY[0x277D84F90];
          v144 = v221;
          while (v131 < v226[2])
          {
            v145 = *(v224 + 72);
            (*(v224 + 16))(v102, &v213[v145 * v131], v101);
            sub_266265D78();
            v147 = v222;
            v146 = v223;
            v215(v222, v211, v223);
            v148 = v101;
            v149 = sub_266266048();
            v83 = v214;
            v214(v147, v146);
            v83(v144, v146);
            if (v149)
            {
              v150 = v117;
              v151 = *v210;
              (*v210)(v219, v102, v148);
              v152 = v218;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v228 = v152;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_266261BA4(0, *(v152 + 16) + 1, 1);
                v152 = v228;
              }

              v155 = *(v152 + 16);
              v154 = *(v152 + 24);
              if (v155 >= v154 >> 1)
              {
                sub_266261BA4((v154 > 1), v155 + 1, 1);
                v152 = v228;
              }

              *(v152 + 16) = v155 + 1;
              v218 = v152;
              v101 = v225;
              v151((v152 + v208 + v155 * v145), v219, v225);
              v102 = v209;
              v117 = v150;
            }

            else
            {
              (*v207)(v102, v148);
              v101 = v148;
            }

            if (v117 == ++v131)
            {
              goto LABEL_70;
            }
          }

          __break(1u);
LABEL_91:
          v181 = sub_2662670D8();

          if (v181)
          {
LABEL_92:
            v192 = sub_266265D88();
            v193 = v182;
            v200 = sub_266265DC8();
            v201 = v183;
            v203(v197, v101, v83);
            v184 = sub_266266968();
            v185 = sub_266266D78();
            if (os_log_type_enabled(v184, v185))
            {
              v186 = swift_slowAlloc();
              *v186 = 0;
              _os_log_impl(&dword_266219000, v184, v185, "INLocalSearchProvider#search Matching album from results to trigger album response", v186, 2u);
              MEMORY[0x266780880](v186, -1, -1);
            }

            (v131)(v197, v83);
            v203(v198, v101, v83);
            v187 = sub_266266968();
            v188 = sub_266266D78();
            v189 = os_log_type_enabled(v187, v188);
            v101 = v225;
            if (v189)
            {
              v190 = swift_slowAlloc();
              *v190 = 0;
              _os_log_impl(&dword_266219000, v187, v188, "INLocalSearchProvider#search Sorting by album, track", v190, 2u);
              MEMORY[0x266780880](v190, -1, -1);
            }

            (v131)(v198, v83);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v226 = sub_26624ABA8(v226);
            }

            v191 = v226[2];
            v228 = v226 + v208;
            v229 = v191;
            sub_26621F0D0(&v228);
LABEL_57:
            v102 = v209;
          }

          else
          {
LABEL_81:
            v169 = v213;
            v170 = [v213 v117[179]];
            if (v170)
            {
              v171 = v170;
              v192 = sub_266266A58();
              v193 = v172;
            }

            else
            {
              v192 = 0;
              v193 = 0;
            }

            v94 = v209;
            v173 = [v169 artistName];
            v174 = v101;
            if (v173)
            {
              v175 = v173;
              v200 = sub_266266A58();
              v201 = v176;
            }

            else
            {
              v200 = 0;
              v201 = 0;
            }

            v101 = v225;
            v177 = v199;
            v203(v199, v174, v83);
            v178 = sub_266266968();
            v179 = sub_266266D78();
            if (os_log_type_enabled(v178, v179))
            {
              v180 = swift_slowAlloc();
              *v180 = 0;
              _os_log_impl(&dword_266219000, v178, v179, "INLocalSearchProvider#search Falling back on media name for title", v180, 2u);
              MEMORY[0x266780880](v180, -1, -1);
            }

            (v131)(v177, v83);
LABEL_28:
            v102 = v94;
          }
        }

        v218 = MEMORY[0x277D84F90];
LABEL_70:
        v156 = *(v218 + 16);
        if (v156)
        {
          v157 = v218 + v208;
          v158 = v224 + 16;
          v159 = *(v224 + 16);
          v224 = *(v224 + 72);
          v160 = (v158 - 8);
          v161 = MEMORY[0x277D84F90];
          do
          {
            v162 = v220;
            v159(v220, v157, v101);
            v163 = sub_266265D68();
            v165 = v164;
            (*v160)(v162, v101);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v161 = sub_2662616F4(0, *(v161 + 2) + 1, 1, v161);
            }

            v167 = *(v161 + 2);
            v166 = *(v161 + 3);
            if (v167 >= v166 >> 1)
            {
              v161 = sub_2662616F4((v166 > 1), v167 + 1, 1, v161);
            }

            *(v161 + 2) = v167 + 1;
            v168 = &v161[16 * v167];
            *(v168 + 4) = v163;
            *(v168 + 5) = v165;
            v101 = v225;
            v157 += v224;
            --v156;
          }

          while (v156);
        }

        sub_266220B70();
        v66 = sub_266266C88();

        v206(v66);
        goto LABEL_78;
      }

      v101 = v84;
      v116 = [v103 artistName];
      v117 = &off_279BCA000;
      if (v116)
      {

        v118 = [v103 mediaName];
        if (!v118)
        {
          v192 = sub_266265DC8();
          v193 = v138;
          v139 = v200;
          v203(v200, v101, v83);
          v140 = sub_266266968();
          v141 = sub_266266D78();
          if (os_log_type_enabled(v140, v141))
          {
            v142 = swift_slowAlloc();
            *v142 = 0;
            _os_log_impl(&dword_266219000, v140, v141, "INLocalSearchProvider#search Using artist from search request", v142, 2u);
            MEMORY[0x266780880](v142, -1, -1);
          }

          (v91)(v139, v83);
          v200 = 0;
          v143 = &v227;
          goto LABEL_56;
        }
      }

      v212 = v92;
      v119 = [v103 genreNames];
      if (v119)
      {
        v120 = v119;
        v121 = v85;
        v122 = sub_266266BB8();

        v123 = *(v122 + 16);
        v85 = v121;
        v103 = v213;

        if (v123)
        {
          v192 = sub_266265D98();
          v193 = v124;
          v125 = v201;
          v203(v201, v101, v83);
          v126 = sub_266266968();
          v127 = sub_266266D78();
          v128 = os_log_type_enabled(v126, v127);
          v101 = v225;
          v94 = v209;
          if (v128)
          {
            v129 = swift_slowAlloc();
            *v129 = 0;
            _os_log_impl(&dword_266219000, v126, v127, "INLocalSearchProvider#search Using genre title/artist", v129, 2u);
            MEMORY[0x266780880](v129, -1, -1);
          }

          (v91)(v125, v83);
          v200 = 0;
          v201 = 0;
          goto LABEL_28;
        }
      }

      v130 = [v103 mediaName];
      if (v130)
      {
        v131 = v91;

        sub_266265D88();
        if (!v132)
        {
          goto LABEL_81;
        }

        v211 = v85;

        v133 = sub_266265D88();
        v135 = v134;
        v136 = sub_266265D88();
        if (v135)
        {
          if (v137)
          {
            if (v133 == v136 && v135 == v137)
            {

              goto LABEL_92;
            }

            goto LABEL_91;
          }
        }

        else if (!v137)
        {
          goto LABEL_92;
        }

        goto LABEL_81;
      }

      v200 = 0;
      v201 = 0;
      v192 = 0;
      v143 = &v225;
LABEL_56:
      *(v143 - 32) = 0;
      v101 = v225;
      goto LABEL_57;
    }

    v73 = qword_280069528;

    if (v73 != -1)
    {
      swift_once();
    }

    v74 = v218;
    v75 = __swift_project_value_buffer(v218, static Logger.default);
    swift_beginAccess();
    (*(v17 + 16))(v20, v75, v74);
    v76 = sub_266266968();
    v77 = sub_266266D78();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = v17;
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_266219000, v76, v77, "INLocalSearchProvider#search Results from search non-nil, but empty", v79, 2u);
      v80 = v79;
      v17 = v78;
      MEMORY[0x266780880](v80, -1, -1);
    }

    (*(v17 + 8))(v20, v74);
    a2(0);
  }

  else
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v67 = v218;
    v68 = __swift_project_value_buffer(v218, static Logger.default);
    swift_beginAccess();
    v69 = v17;
    (*(v17 + 16))(v48, v68, v67);
    v70 = sub_266266968();
    v71 = sub_266266D78();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_266219000, v70, v71, "INLocalSearchProvider#search Missing result from local search", v72, 2u);
      MEMORY[0x266780880](v72, -1, -1);
    }

    (*(v69 + 8))(v48, v67);
    a2(0);
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26621EA20(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_26621EA94(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_26621EAF0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_26621EAF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26621EBBC(v11, 0, 0, 1, a1, a2);
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
    sub_266220E18(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_26621EBBC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26621ECC8(a5, a6);
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
    result = sub_266267068();
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

void *sub_26621ECC8(uint64_t a1, unint64_t a2)
{
  v3 = sub_26621ED14(a1, a2);
  sub_26621EE44(&unk_2877D9730);
  return v3;
}

void *sub_26621ED14(uint64_t a1, unint64_t a2)
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

  v6 = sub_266225AD8(v5, 0);
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

  result = sub_266267068();
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
        v10 = sub_266266AF8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_266225AD8(v10, 0);
        result = sub_266267028();
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

uint64_t sub_26621EE44(uint64_t result)
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

  result = sub_26621EF30(result, v11, 1, v3);
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

char *sub_26621EF30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800695C8, &qword_266267E38);
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

_BYTE **sub_26621F024(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_26621F05C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_26621F0D0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2662670B8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_266265DD8();
        v6 = sub_266266BE8();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_266265DD8() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_26621F558(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26621F1FC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26621F1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_266265DD8();
  v9 = MEMORY[0x28223BE20](v8);
  v56 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v59 = &v44 - v12;
  result = MEMORY[0x28223BE20](v11);
  v46 = a2;
  if (a3 != a2)
  {
    v16 = &v44 - v14;
    v17 = *a4;
    v19 = *(v15 + 16);
    v18 = v15 + 16;
    v20 = *(v18 + 56);
    v57 = v19;
    v58 = (v18 - 8);
    v51 = v18;
    v54 = (v18 + 16);
    v55 = v17;
    v21 = v17 + v20 * (a3 - 1);
    v53 = -v20;
    v22 = a1 - a3;
    v45 = v20;
    v23 = v17 + v20 * a3;
LABEL_7:
    v49 = v21;
    v50 = a3;
    v47 = v23;
    v48 = v22;
    v26 = v21;
    while (1)
    {
      v27 = v57;
      v57(v16, v23, v8);
      v27(v59, v26, v8);
      sub_266265D88();
      v28 = v16;
      if (!v29)
      {
        goto LABEL_11;
      }

      sub_266265D88();
      if (!v30)
      {
        v24 = *v58;
LABEL_5:
        v25 = v24;
        v24(v59, v8);
        result = (v25)(v16, v8);
LABEL_6:
        a3 = v50 + 1;
        v21 = v49 + v45;
        v22 = v48 - 1;
        v23 = v47 + v45;
        if (v50 + 1 == v46)
        {
          return result;
        }

        goto LABEL_7;
      }

      v31 = sub_266265DB8();
      v28 = v16;
      if ((v32 & 1) == 0)
      {
        v52 = v31;
        v34 = v59;
        v35 = sub_266265DB8();
        v24 = *v58;
        if (v36)
        {
          v16 = v28;
          goto LABEL_5;
        }

        v37 = v35;
        v38 = *v58;
        v24(v34, v8);
        result = (v38)(v28, v8);
        v16 = v28;
        if (v37 >= v52)
        {
          goto LABEL_6;
        }
      }

      else
      {
LABEL_11:
        v33 = *v58;
        (*v58)(v59, v8);
        result = (v33)(v28, v8);
        v16 = v28;
      }

      if (!v55)
      {
        __break(1u);
        return result;
      }

      v39 = *v54;
      v40 = v16;
      v41 = v56;
      (*v54)(v56, v23, v8);
      swift_arrayInitWithTakeFrontToBack();
      v42 = v41;
      v16 = v40;
      result = (v39)(v26, v42, v8);
      v26 += v53;
      v23 += v53;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t sub_26621F558(char **a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v152 = a1;
  v9 = sub_266265DD8();
  v10 = MEMORY[0x28223BE20](v9);
  v155 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v166 = &v146 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v15 = MEMORY[0x28223BE20](v14);
  v16 = MEMORY[0x28223BE20](v15);
  v163 = &v146 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v146 - v19;
  MEMORY[0x28223BE20](v18);
  result = MEMORY[0x28223BE20](&v146 - v21);
  v27 = a3[1];
  v160 = v24;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_119:
    v5 = *v152;
    if (!*v152)
    {
      goto LABEL_158;
    }

    a4 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v160;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = a4;
LABEL_122:
      v173 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*a3)
        {
          v142 = *(result + 16 * a4);
          v143 = result;
          v144 = *(result + 16 * (a4 - 1) + 40);
          sub_266220150((*a3 + *(v9 + 72) * v142), (*a3 + *(v9 + 72) * *(result + 16 * (a4 - 1) + 32)), (*a3 + *(v9 + 72) * v144), v5);
          if (v6)
          {
          }

          if (v144 < v142)
          {
            goto LABEL_145;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v143 = sub_266220874(v143);
          }

          if (a4 - 2 >= *(v143 + 2))
          {
            goto LABEL_146;
          }

          v145 = &v143[16 * a4];
          *v145 = v142;
          *(v145 + 1) = v144;
          v173 = v143;
          sub_2662207E8(a4 - 1);
          result = v173;
          a4 = *(v173 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_156;
      }
    }

LABEL_152:
    result = sub_266220874(a4);
    goto LABEL_122;
  }

  v147 = &v146 - v23;
  v148 = result;
  v162 = v20;
  v171 = v26;
  v172 = v25;
  v146 = a4;
  v28 = 0;
  v169 = (v24 + 8);
  v170 = v24 + 16;
  v168 = (v24 + 32);
  v29 = MEMORY[0x277D84F90];
  v153 = a3;
  while (2)
  {
    v30 = v28 + 1;
    v151 = v29;
    if (v28 + 1 >= v27)
    {
      goto LABEL_41;
    }

    v158 = v27;
    v31 = *a3;
    v32 = *(v160 + 72);
    v161 = v28 + 1;
    v33 = *(v160 + 16);
    v34 = v147;
    v33(v147, v31 + v32 * v30, v9);
    v164 = v32;
    v35 = v148;
    v157 = v33;
    v33(v148, v31 + v32 * v28, v9);
    sub_266265D88();
    v149 = v6;
    if (!v36)
    {
      goto LABEL_8;
    }

    sub_266265D88();
    if (!v37)
    {
LABEL_11:
      LODWORD(v159) = 0;
      goto LABEL_12;
    }

    v38 = sub_266265DB8();
    if ((v39 & 1) == 0)
    {
      v41 = v38;
      v42 = sub_266265DB8();
      if ((v43 & 1) == 0)
      {
        v40 = v42 < v41;
        goto LABEL_9;
      }

      goto LABEL_11;
    }

LABEL_8:
    v40 = 1;
LABEL_9:
    LODWORD(v159) = v40;
LABEL_12:
    v44 = *v169;
    (*v169)(v35, v9);
    v156 = v44;
    result = (v44)(v34, v9);
    v150 = v28;
    v45 = v28 + 2;
    v46 = v164 * (v28 + 2);
    v5 = (v31 + v46);
    v47 = v161;
    v48 = v164 * v161;
    v49 = v31 + v164 * v161;
    do
    {
      v51 = v45;
      v54 = v47;
      a4 = v48;
      v52 = v46;
      if (v45 >= v158)
      {
        break;
      }

      v165 = v47;
      v167 = v46;
      v55 = v45;
      v56 = v157;
      v157(v162, v5, v9);
      v56(v163, v49, v9);
      sub_266265D88();
      if (v57)
      {

        sub_266265D88();
        v51 = v55;
        if (v58)
        {

          v59 = sub_266265DB8();
          v52 = v167;
          if (v60)
          {
            v50 = 1;
          }

          else
          {
            v61 = sub_266265DB8() < v59;
            v50 = (v62 & 1) == 0 && v61;
          }

          goto LABEL_15;
        }

        v50 = 0;
      }

      else
      {
        v50 = 1;
        v51 = v55;
      }

      v52 = v167;
LABEL_15:
      v6 = v169;
      v53 = v156;
      v156(v163, v9);
      result = (v53)(v162, v9);
      v45 = v51 + 1;
      v54 = v165;
      v5 += v164;
      v49 += v164;
      v47 = v165 + 1;
      v48 = a4 + v164;
      v46 = &v52[v164];
    }

    while (v159 == v50);
    a3 = v153;
    if (!v159)
    {
      goto LABEL_39;
    }

    v63 = v150;
    if (v51 < v150)
    {
      goto LABEL_149;
    }

    if (v150 >= v51)
    {
      v30 = v51;
      v29 = v151;
      v6 = v149;
      v28 = v150;
    }

    else
    {
      v5 = (v150 * v164);
      do
      {
        if (v63 != v54)
        {
          v65 = *a3;
          if (!*a3)
          {
            goto LABEL_155;
          }

          v66 = v54;
          v167 = *v168;
          (v167)(v155, &v5[v65], v9);
          if (v5 < a4 || &v5[v65] >= &v52[v65])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v5 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = (v167)(v65 + a4, v155, v9);
          v54 = v66;
          a3 = v153;
        }

        ++v63;
        a4 -= v164;
        v52 -= v164;
        v5 += v164;
      }

      while (v63 < v54--);
LABEL_39:
      v30 = v51;
      v29 = v151;
      v6 = v149;
      v28 = v150;
    }

LABEL_41:
    v67 = a3[1];
    v161 = v30;
    if (v30 >= v67)
    {
      goto LABEL_66;
    }

    v110 = __OFSUB__(v30, v28);
    v68 = v30 - v28;
    if (v110)
    {
      goto LABEL_148;
    }

    if (v68 >= v146)
    {
LABEL_66:
      if (v161 < v28)
      {
        goto LABEL_147;
      }

      v94 = v29;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v29 = v94;
      }

      else
      {
        result = sub_26622096C(0, *(v94 + 16) + 1, 1, v94);
        v29 = result;
      }

      a4 = *(v29 + 16);
      v95 = *(v29 + 24);
      v96 = a4 + 1;
      if (a4 >= v95 >> 1)
      {
        result = sub_26622096C((v95 > 1), a4 + 1, 1, v29);
        v29 = result;
      }

      *(v29 + 16) = v96;
      v97 = v29 + 16 * a4;
      v98 = v161;
      *(v97 + 32) = v28;
      *(v97 + 40) = v98;
      v5 = *v152;
      if (!*v152)
      {
        goto LABEL_157;
      }

      if (!a4)
      {
LABEL_3:
        v27 = a3[1];
        v28 = v161;
        if (v161 >= v27)
        {
          goto LABEL_119;
        }

        continue;
      }

      while (1)
      {
        v99 = v96 - 1;
        if (v96 >= 4)
        {
          break;
        }

        if (v96 == 3)
        {
          v100 = *(v29 + 32);
          v101 = *(v29 + 40);
          v110 = __OFSUB__(v101, v100);
          v102 = v101 - v100;
          v103 = v110;
LABEL_86:
          if (v103)
          {
            goto LABEL_136;
          }

          v116 = (v29 + 16 * v96);
          v118 = *v116;
          v117 = v116[1];
          v119 = __OFSUB__(v117, v118);
          v120 = v117 - v118;
          v121 = v119;
          if (v119)
          {
            goto LABEL_139;
          }

          v122 = (v29 + 32 + 16 * v99);
          v124 = *v122;
          v123 = v122[1];
          v110 = __OFSUB__(v123, v124);
          v125 = v123 - v124;
          if (v110)
          {
            goto LABEL_142;
          }

          if (__OFADD__(v120, v125))
          {
            goto LABEL_143;
          }

          if (v120 + v125 >= v102)
          {
            if (v102 < v125)
            {
              v99 = v96 - 2;
            }

            goto LABEL_107;
          }

          goto LABEL_100;
        }

        v126 = (v29 + 16 * v96);
        v128 = *v126;
        v127 = v126[1];
        v110 = __OFSUB__(v127, v128);
        v120 = v127 - v128;
        v121 = v110;
LABEL_100:
        if (v121)
        {
          goto LABEL_138;
        }

        v129 = v29 + 16 * v99;
        v131 = *(v129 + 32);
        v130 = *(v129 + 40);
        v110 = __OFSUB__(v130, v131);
        v132 = v130 - v131;
        if (v110)
        {
          goto LABEL_141;
        }

        if (v132 < v120)
        {
          goto LABEL_3;
        }

LABEL_107:
        a4 = v99 - 1;
        if (v99 - 1 >= v96)
        {
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
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        if (!*a3)
        {
          goto LABEL_154;
        }

        v137 = v29;
        v138 = *(v29 + 32 + 16 * a4);
        v139 = *(v29 + 32 + 16 * v99 + 8);
        sub_266220150((*a3 + *(v160 + 72) * v138), (*a3 + *(v160 + 72) * *(v29 + 32 + 16 * v99)), (*a3 + *(v160 + 72) * v139), v5);
        if (v6)
        {
        }

        if (v139 < v138)
        {
          goto LABEL_132;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v137 = sub_266220874(v137);
        }

        if (a4 >= *(v137 + 2))
        {
          goto LABEL_133;
        }

        v140 = &v137[16 * a4];
        *(v140 + 4) = v138;
        *(v140 + 5) = v139;
        v173 = v137;
        result = sub_2662207E8(v99);
        v29 = v173;
        v96 = *(v173 + 16);
        if (v96 <= 1)
        {
          goto LABEL_3;
        }
      }

      v104 = v29 + 32 + 16 * v96;
      v105 = *(v104 - 64);
      v106 = *(v104 - 56);
      v110 = __OFSUB__(v106, v105);
      v107 = v106 - v105;
      if (v110)
      {
        goto LABEL_134;
      }

      v109 = *(v104 - 48);
      v108 = *(v104 - 40);
      v110 = __OFSUB__(v108, v109);
      v102 = v108 - v109;
      v103 = v110;
      if (v110)
      {
        goto LABEL_135;
      }

      v111 = (v29 + 16 * v96);
      v113 = *v111;
      v112 = v111[1];
      v110 = __OFSUB__(v112, v113);
      v114 = v112 - v113;
      if (v110)
      {
        goto LABEL_137;
      }

      v110 = __OFADD__(v102, v114);
      v115 = v102 + v114;
      if (v110)
      {
        goto LABEL_140;
      }

      if (v115 >= v107)
      {
        v133 = (v29 + 32 + 16 * v99);
        v135 = *v133;
        v134 = v133[1];
        v110 = __OFSUB__(v134, v135);
        v136 = v134 - v135;
        if (v110)
        {
          goto LABEL_144;
        }

        if (v102 < v136)
        {
          v99 = v96 - 2;
        }

        goto LABEL_107;
      }

      goto LABEL_86;
    }

    break;
  }

  if (__OFADD__(v28, v146))
  {
    goto LABEL_150;
  }

  if (v28 + v146 >= v67)
  {
    v69 = v67;
  }

  else
  {
    v69 = (v28 + v146);
  }

  if (v69 < v28)
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  v70 = v161;
  if (v161 == v69)
  {
    goto LABEL_66;
  }

  v149 = v6;
  v71 = *a3;
  v72 = *(v160 + 72);
  v167 = *(v160 + 16);
  v73 = v71 + v72 * (v161 - 1);
  v164 = -v72;
  v150 = v28;
  v74 = v28 - v161;
  v165 = v71;
  v154 = v72;
  v5 = (v71 + v161 * v72);
  v156 = v69;
LABEL_54:
  v161 = v70;
  v157 = v5;
  v158 = v74;
  v159 = v73;
  while (1)
  {
    v76 = v9;
    v77 = v171;
    v78 = v167;
    (v167)(v171, v5, v76, v29);
    v79 = v172;
    v80 = v76;
    (v78)(v172, v73, v76);
    sub_266265D88();
    if (!v81)
    {
      goto LABEL_58;
    }

    sub_266265D88();
    if (!v82)
    {
      a4 = v169;
      v75 = *v169;
LABEL_52:
      v9 = v80;
      v75(v172, v80);
      v75(v171, v80);
LABEL_53:
      v70 = v161 + 1;
      v73 = v159 + v154;
      v74 = v158 - 1;
      v5 = v157 + v154;
      if ((v161 + 1) == v156)
      {
        v161 = v156;
        v6 = v149;
        a3 = v153;
        v29 = v151;
        v28 = v150;
        goto LABEL_66;
      }

      goto LABEL_54;
    }

    v79 = v172;
    v83 = sub_266265DB8();
    v77 = v171;
    if ((v84 & 1) == 0)
    {
      v87 = v83;
      v88 = sub_266265DB8();
      a4 = v169;
      v75 = *v169;
      if (v89)
      {
        goto LABEL_52;
      }

      v90 = v88;
      v75(v172, v80);
      v91 = v77;
      v9 = v80;
      result = (v75)(v91, v80);
      if (v90 >= v87)
      {
        goto LABEL_53;
      }
    }

    else
    {
LABEL_58:
      v85 = *v169;
      (*v169)(v79, v80);
      v86 = v77;
      v9 = v80;
      result = (v85)(v86, v80);
    }

    if (!v165)
    {
      break;
    }

    a4 = *v168;
    v92 = v166;
    (*v168)(v166, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    (a4)(v73, v92, v9);
    v73 += v164;
    v5 += v164;
    if (__CFADD__(v74++, 1))
    {
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
  return result;
}

uint64_t sub_266220150(char *a1, char *a2, char *a3, char *a4)
{
  v8 = sub_266265DD8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v70 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v69 = &v59 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v59 - v15;
  result = MEMORY[0x28223BE20](v14);
  v19 = &v59 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_82;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_83;
  }

  v23 = (a2 - a1) / v21;
  v74 = a1;
  v73 = a4;
  v71 = v21;
  if (v23 >= v22 / v21)
  {
    v25 = v22 / v21 * v21;
    if (a4 < a2 || &a2[v25] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_50:
        v43 = &a4[v25];
        if (v25 < 1)
        {
          goto LABEL_79;
        }

        v63 = (v9 + 8);
        v64 = (v9 + 16);
        v44 = -v21;
        v45 = &a4[v25];
        v65 = -v21;
        v66 = a4;
        while (1)
        {
          v60 = v43;
          v46 = a2;
          v47 = &a2[v44];
          v67 = v46;
          v68 = v47;
          while (1)
          {
            if (v46 <= a1)
            {
              v74 = v46;
              v72 = v60;
              goto LABEL_80;
            }

            v48 = a3;
            v62 = v43;
            v49 = *v64;
            v71 = v45 + v44;
            v49(v69);
            (v49)(v70, v47, v8);
            sub_266265D88();
            if (!v50)
            {
              v54 = 1;
              v44 = v65;
              goto LABEL_65;
            }

            sub_266265D88();
            if (!v51)
            {
              goto LABEL_62;
            }

            v52 = sub_266265DB8();
            if ((v53 & 1) == 0)
            {
              v61 = v52;
              v55 = sub_266265DB8();
              if ((v56 & 1) == 0)
              {
                v54 = v55 < v61;
                goto LABEL_64;
              }

LABEL_62:
              v54 = 0;
              goto LABEL_64;
            }

            v54 = 1;
LABEL_64:
            v44 = v65;
LABEL_65:
            a3 += v44;
            v57 = *v63;
            (*v63)(v70, v8);
            v57(v69, v8);
            if (v54)
            {
              break;
            }

            v58 = v71;
            v43 = v71;
            v47 = v68;
            if (v48 < v45 || a3 >= v45)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v48 != v45)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v45 = v43;
            v46 = v67;
            if (v58 <= v66)
            {
              a2 = v67;
              goto LABEL_79;
            }
          }

          a2 = v68;
          if (v48 < v67 || a3 >= v67)
          {
            swift_arrayInitWithTakeFrontToBack();
            v43 = v62;
          }

          else
          {
            v43 = v62;
            if (v48 != v67)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          if (v45 <= v66)
          {
LABEL_79:
            v74 = a2;
            v72 = v43;
            goto LABEL_80;
          }
        }
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v21 = v71;
    goto LABEL_50;
  }

  v24 = v23 * v21;
  if (a4 < a1 || &a1[v24] <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v69 = a3;
  v70 = &a4[v24];
  v72 = &a4[v24];
  if (v24 >= 1 && a2 < a3)
  {
    v27 = *(v9 + 16);
    v67 = (v9 + 16);
    v68 = v27;
    v28 = (v9 + 8);
    while (1)
    {
      v29 = v68;
      (v68)(v19, a2, v8);
      (v29)(v16, a4, v8);
      sub_266265D88();
      if (!v30)
      {
LABEL_24:
        v34 = *v28;
        (*v28)(v16, v8);
        v34(v19, v8);
LABEL_25:
        v35 = v71;
        v36 = &a2[v71];
        if (a1 < a2 || a1 >= v36)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_30:
          v35 = v71;
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_30;
        }

        a2 = v36;
        goto LABEL_43;
      }

      sub_266265D88();
      if (!v31)
      {
        break;
      }

      v32 = sub_266265DB8();
      if (v33)
      {
        goto LABEL_24;
      }

      v66 = v32;
      v37 = a4;
      v39 = sub_266265DB8();
      v38 = *v28;
      if (v40)
      {
        v38(v16, v8);
        goto LABEL_35;
      }

      v42 = v39;
      v38(v16, v8);
      v38(v19, v8);
      a4 = v37;
      if (v42 < v66)
      {
        goto LABEL_25;
      }

LABEL_36:
      v35 = v71;
      v41 = &a4[v71];
      if (a1 < a4 || a1 >= v41)
      {
        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_41;
      }

      if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
LABEL_41:
        v35 = v71;
      }

      v73 = v41;
      a4 = v41;
LABEL_43:
      a1 += v35;
      v74 = a1;
      if (a4 >= v70 || a2 >= v69)
      {
        goto LABEL_80;
      }
    }

    v37 = a4;
    v38 = *v28;
    (*v28)(v16, v8);
LABEL_35:
    v38(v19, v8);
    a4 = v37;
    goto LABEL_36;
  }

LABEL_80:
  sub_266220888(&v74, &v73, &v72);
  return 1;
}

uint64_t sub_2662207E8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_266220874(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_266220888(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_266265DD8();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_26622096C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800695E0, &qword_266267E48);
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

uint64_t sub_266220A70(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
    v6 = sub_26621CC94(v5);

    if (v6)
    {
      return 0;
    }

    v7 = sub_266266D88();
    v8 = [v5 mediaType];
    v9 = v7;
  }

  else
  {
    v9 = sub_266266D88();
    v8 = 0;
  }

  v10 = *(v9 + 16);
  v11 = 32;
  while (v10)
  {
    v12 = *(v9 + v11);
    v11 += 8;
    --v10;
    if (v12 == v8)
    {
      goto LABEL_12;
    }
  }

  v13 = sub_266266278();
  if (!a3)
  {

    return 0;
  }

  if (v13 == a2 && v14 == a3)
  {
LABEL_12:

    return 1;
  }

  v16 = sub_2662670D8();

  return v16 & 1;
}

unint64_t sub_266220B70()
{
  result = qword_2800697A0;
  if (!qword_2800697A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800697A0);
  }

  return result;
}

uint64_t sub_266220BBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069710, &qword_266267DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266220C24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_266220CCC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_266220D78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266220DC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266220E18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_266220E78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266220EC0()
{
  v0 = sub_266266F08();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_266266A18();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266266A08();
  sub_266266EF8();
  v8 = MEMORY[0x26677F180](0xD000000000000029, 0x8000000266268F70, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_2800695F0 = v8;
  return result;
}

id INUpdateMediaAffinityIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id INUpdateMediaAffinityIntentHandler.init()()
{
  v0 = sub_2662662D8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_266266528();
  v5 = sub_266266518();
  sub_2662662C8();
  v6 = sub_2662666A8();
  swift_allocObject();
  v7 = sub_266266698();
  [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  v8 = sub_266266638();
  v9 = sub_266266628();
  v29 = v8;
  v30 = MEMORY[0x277D557B0];
  v28[0] = v9;
  v26 = sub_266266418();
  v27 = MEMORY[0x277D556E0];
  __swift_allocate_boxed_opaque_existential_1(v25);
  sub_266266408();
  v10 = sub_266266088();
  swift_allocObject();
  v11 = sub_266266068();
  v12 = sub_2662668E8();
  v13 = sub_2662668D8();
  v29 = v12;
  v30 = MEMORY[0x277D5F680];
  v28[0] = v13;
  v26 = v4;
  v27 = MEMORY[0x277D55758];
  v25[0] = v5;
  v24[3] = v0;
  v24[4] = MEMORY[0x277D55698];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  v23[3] = v6;
  v23[4] = MEMORY[0x277D557B8];
  v23[0] = v7;
  v22[4] = MEMORY[0x277D55660];
  v22[3] = v10;
  v22[0] = v11;
  v15 = type metadata accessor for INUpdateMediaAffinityIntentHandler();
  v16 = objc_allocWithZone(v15);
  sub_266220C24(v25, &v16[OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_mediaRemoteAPIProvider]);
  sub_266220C24(v24, &v16[OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_nowPlayingProvider]);
  sub_266220C24(v23, &v16[OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_favoriteEntityProvider]);
  sub_266220C24(v28, &v16[OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_playbackController]);
  sub_266220C24(v22, &v16[OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_accountProvider]);
  v17 = &v16[OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_suggestionsDonationProvider];
  *v17 = &type metadata for SuggestionsDonationProvider;
  *(v17 + 1) = &protocol witness table for SuggestionsDonationProvider;
  v21.receiver = v16;
  v21.super_class = v15;
  v18 = objc_msgSendSuper2(&v21, sel_init);
  (*(v1 + 8))(v3, v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v18;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t INUpdateMediaAffinityIntentHandler.resolveMediaItems(for:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_266266988();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_266266968();
  v14 = sub_266266D78();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_266219000, v13, v14, "INUpdateMediaAffinityIntentHandler#resolveMediaItems...", v15, 2u);
    MEMORY[0x266780880](v15, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v16 = [a1 mediaSearch];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 mediaType];
  }

  else
  {
    v18 = 0;
  }

  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_nowPlayingProvider), *(v4 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_nowPlayingProvider + 24));
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = a1;
  *(v19 + 40) = v18;
  *(v19 + 48) = v17 == 0;

  v20 = a1;
  sub_2662663B8();
}

uint64_t sub_266221704(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v175 = a6;
  v177 = a5;
  v170 = a4;
  v179 = a3;
  v180 = a1;
  v182 = a2;
  v6 = sub_266266038();
  v174 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v178 = (&v165 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v166 = &v165 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v169 = &v165 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v165 = &v165 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v165 - v15;
  v17 = sub_266266988();
  v183 = *(v17 - 8);
  v184 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v173 = &v165 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v171 = &v165 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v167 = &v165 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v168 = &v165 - v25;
  MEMORY[0x28223BE20](v24);
  v176 = &v165 - v26;
  v27 = sub_266266398();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v172 = &v165 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v181 = &v165 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v165 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v165 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069700, qword_266268010);
  MEMORY[0x28223BE20](v38);
  v40 = &v165 - v39;
  sub_266228524(v180, &v165 - v39, &unk_280069700, qword_266268010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v180 = v28;
    (*(v28 + 32))(v37, v40, v27);
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v41 = v184;
    v42 = __swift_project_value_buffer(v184, static Logger.default);
    swift_beginAccess();
    v43 = v183;
    v44 = v176;
    (*(v183 + 16))(v176, v42, v41);
    (*(v28 + 16))(v35, v37, v27);
    v45 = sub_266266968();
    v46 = sub_266266D68();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v187 = v178;
      *v47 = 136446210;
      sub_2662285EC(&unk_280069720, MEMORY[0x277D556C8], MEMORY[0x277D556D8]);
      v48 = sub_266267108();
      v49 = v37;
      v51 = v50;
      v52 = v35;
      v53 = *(v28 + 8);
      v53(v52, v27);
      v54 = sub_26621EAF0(v48, v51, &v187);
      v37 = v49;

      *(v47 + 4) = v54;
      _os_log_impl(&dword_266219000, v45, v46, "INUpdateMediaAffinityIntentHandler#resolveMediaItems resolveNowPlayingMediaItem nowPlaying item error: %{public}s", v47, 0xCu);
      v55 = v178;
      __swift_destroy_boxed_opaque_existential_1Tm(v178);
      MEMORY[0x266780880](v55, -1, -1);
      MEMORY[0x266780880](v47, -1, -1);

      (*(v183 + 8))(v44, v184);
    }

    else
    {

      v104 = v35;
      v53 = *(v28 + 8);
      v53(v104, v27);
      (*(v43 + 8))(v44, v41);
    }

    v105 = *(v28 + 104);
    v105(v181, *MEMORY[0x277D556C0], v27);
    sub_2662285EC(&qword_280069718, MEMORY[0x277D556C8], MEMORY[0x277D556D0]);
    sub_266266B78();
    sub_266266B78();
    if (v187 == v185 && v188 == v186)
    {
      v106 = 1;
    }

    else
    {
      v106 = sub_2662670D8();
    }

    v53(v181, v27);

    if (v106)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
      v107 = swift_allocObject();
      *(v107 + 16) = xmmword_266267E70;
      sub_266228130(0, &qword_2800696B8, 0x277CD42C8);
      *(v107 + 32) = [swift_getObjCClassFromMetadata() unsupported];
      v182(v107);
    }

    else
    {
      v108 = v172;
      v105(v172, *MEMORY[0x277D556B8], v27);
      sub_266266B78();
      sub_266266B78();
      if (v187 == v185 && v188 == v186)
      {
        v53(v108, v27);

        v109 = v182;
      }

      else
      {
        v121 = sub_2662670D8();
        v53(v108, v27);

        v109 = v182;
        if ((v121 & 1) == 0)
        {
          return (v53)(v37, v27);
        }
      }

      sub_266266F68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
      v122 = swift_allocObject();
      *(v122 + 16) = xmmword_266267E70;
      sub_266228130(0, &qword_2800696B8, 0x277CD42C8);
      *(v122 + 32) = [swift_getObjCClassFromMetadata() unsupported];
      v109(v122);
    }

    return (v53)(v37, v27);
  }

  v56 = v174;
  (*(v174 + 32))(v16, v40, v6);
  v57 = v6;
  v58 = v16;
  v59 = v183;
  v60 = v56;
  v61 = v177;
  v62 = v178;
  v63 = v175;
  if (v175)
  {
LABEL_14:
    v84 = sub_266266008();
    if ((v85 & 1) == 0)
    {
      v110 = v84;
      v111 = v60;
      v181 = v6;
      sub_266265FF8();
      goto LABEL_30;
    }

    v181 = v58;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v86 = v184;
    v87 = __swift_project_value_buffer(v184, static Logger.default);
    swift_beginAccess();
    v88 = v171;
    (*(v59 + 16))(v171, v87, v86);
    v89 = v59;
    v90 = *(v60 + 16);
    v90(v62, v181, v6);
    v91 = sub_266266968();
    v92 = sub_266266D68();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = v57;
      v94 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v187 = v180;
      *v94 = 136315138;
      v90(v169, v62, v93);
      v95 = sub_266266A68();
      v97 = v96;
      v98 = *(v60 + 8);
      v98(v62, v93);
      v99 = sub_26621EAF0(v95, v97, &v187);

      *(v94 + 4) = v99;
      v100 = v98;
      _os_log_impl(&dword_266219000, v91, v92, "INUpdateMediaAffinityIntentHandler#resolveMediaItems missing songId from nowPlayingInfo: %s", v94, 0xCu);
      v101 = v180;
      __swift_destroy_boxed_opaque_existential_1Tm(v180);
      v102 = v182;
      MEMORY[0x266780880](v101, -1, -1);
      v103 = v94;
      v57 = v93;
      MEMORY[0x266780880](v103, -1, -1);

      (*(v89 + 8))(v171, v184);
    }

    else
    {

      v100 = *(v60 + 8);
      v100(v62, v57);
      (*(v89 + 8))(v88, v86);
      v102 = v182;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v161 = swift_allocObject();
    *(v161 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_2800696B8, 0x277CD42C8);
    *(v161 + 32) = [swift_getObjCClassFromMetadata() unsupported];
    v102(v161);

    return (v100)(v181, v57);
  }

  if (v177 != 2)
  {
    if (v177 == 3)
    {
      v64 = sub_266266028();
      v65 = v168;
      if (v66)
      {
        v67 = v6;
        if (qword_280069528 != -1)
        {
          swift_once();
        }

        v68 = v184;
        v69 = __swift_project_value_buffer(v184, static Logger.default);
        swift_beginAccess();
        (*(v59 + 16))(v65, v69, v68);
        v70 = *(v60 + 16);
        v71 = v165;
        v70(v165, v58, v67);
        v72 = sub_266266968();
        v73 = sub_266266D68();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v181 = v58;
          v75 = v74;
          v76 = swift_slowAlloc();
          v187 = v76;
          *v75 = 136315138;
          v70(v169, v71, v67);
          v77 = sub_266266A68();
          v79 = v78;
          v80 = *(v60 + 8);
          v80(v71, v67);
          v81 = sub_26621EAF0(v77, v79, &v187);
          v82 = v80;

          *(v75 + 4) = v81;
          _os_log_impl(&dword_266219000, v72, v73, "INUpdateMediaAffinityIntentHandler#resolveMediaItems missing artistId from nowPlayingInfo: %s", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v76);
          MEMORY[0x266780880](v76, -1, -1);
          v83 = v75;
          v58 = v181;
          MEMORY[0x266780880](v83, -1, -1);

          (*(v183 + 8))(v168, v184);
        }

        else
        {

          v82 = *(v60 + 8);
          v82(v71, v67);
          (*(v59 + 8))(v65, v184);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v162 = swift_allocObject();
        *(v162 + 16) = xmmword_266267E70;
        sub_266228130(0, &qword_2800696B8, 0x277CD42C8);
        *(v162 + 32) = [swift_getObjCClassFromMetadata() unsupported];
        v182(v162);

        return (v82)(v58, v67);
      }

      v110 = v64;
      v111 = v60;
      v181 = v6;
      sub_266265FC8();
LABEL_30:
      v113 = v112;
      v189 = v110;
      sub_2662670C8();
      if (v63)
      {
        v61 = 1;
      }

      v114 = v58;
      sub_266265FC8();
      v116 = v115;
      v117 = sub_266266A48();

      if (v113)
      {
        v118 = sub_266266A48();

        v119 = v173;
        if (v116)
        {
LABEL_34:
          v120 = sub_266266A48();

LABEL_41:
          v124 = v183;
          v125 = [objc_allocWithZone(MEMORY[0x277CD3DB8]) initWithIdentifier:v117 title:v118 type:v61 artwork:0 artist:v120];

          if (qword_280069528 != -1)
          {
            swift_once();
          }

          v126 = v184;
          v127 = __swift_project_value_buffer(v184, static Logger.default);
          swift_beginAccess();
          (*(v124 + 16))(v119, v127, v126);
          v128 = v125;
          v129 = sub_266266968();
          v130 = sub_266266D78();

          if (os_log_type_enabled(v129, v130))
          {
            v131 = swift_slowAlloc();
            v132 = swift_slowAlloc();
            *v131 = 138412290;
            *(v131 + 4) = v128;
            *v132 = v128;
            v133 = v128;
            _os_log_impl(&dword_266219000, v129, v130, "INUpdateMediaAffinityIntentHandler#resolveMediaItems resolved mediaItem: %@", v131, 0xCu);
            sub_26622858C(v132, &qword_280069710, &qword_266267DC0);
            MEMORY[0x266780880](v132, -1, -1);
            MEMORY[0x266780880](v131, -1, -1);
          }

          (*(v124 + 8))(v119, v184);
          v134 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
          v135 = swift_allocObject();
          *(v135 + 16) = xmmword_266267E70;
          *(v135 + 32) = v128;
          sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
          v136 = v128;
          v137 = sub_266266B98();

          v138 = [v134 successesWithResolvedMediaItems_];

          sub_266228130(0, &qword_2800696B8, 0x277CD42C8);
          v139 = sub_266266BB8();

          v182(v139);

          return (*(v111 + 8))(v114, v181);
        }
      }

      else
      {
        v118 = 0;
        v119 = v173;
        if (v116)
        {
          goto LABEL_34;
        }
      }

      v120 = 0;
      goto LABEL_41;
    }

    goto LABEL_14;
  }

  v140 = sub_266266018();
  if ((v141 & 1) == 0)
  {
    v110 = v140;
    v111 = v60;
    v181 = v6;
    sub_266265FE8();
    goto LABEL_30;
  }

  v181 = v58;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v142 = v184;
  v143 = __swift_project_value_buffer(v184, static Logger.default);
  swift_beginAccess();
  v144 = v167;
  (*(v59 + 16))(v167, v143, v142);
  v145 = v59;
  v146 = *(v60 + 16);
  v147 = v166;
  v146(v166, v181, v6);
  v148 = sub_266266968();
  v149 = sub_266266D68();
  if (os_log_type_enabled(v148, v149))
  {
    v150 = v57;
    v151 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    v187 = v180;
    *v151 = 136315138;
    v152 = v147;
    v146(v169, v147, v150);
    v153 = sub_266266A68();
    v155 = v154;
    v156 = *(v60 + 8);
    v156(v152, v150);
    v157 = sub_26621EAF0(v153, v155, &v187);

    *(v151 + 4) = v157;
    _os_log_impl(&dword_266219000, v148, v149, "INUpdateMediaAffinityIntentHandler#resolveMediaItems missing albumId from nowPlayingInfo: %s", v151, 0xCu);
    v158 = v180;
    __swift_destroy_boxed_opaque_existential_1Tm(v180);
    v159 = v182;
    MEMORY[0x266780880](v158, -1, -1);
    v160 = v151;
    v57 = v150;
    MEMORY[0x266780880](v160, -1, -1);

    (*(v145 + 8))(v167, v184);
  }

  else
  {

    v163 = v147;
    v156 = *(v60 + 8);
    v156(v163, v57);
    (*(v145 + 8))(v144, v142);
    v159 = v182;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
  v164 = swift_allocObject();
  *(v164 + 16) = xmmword_266267E70;
  sub_266228130(0, &qword_2800696B8, 0x277CD42C8);
  *(v164 + 32) = [swift_getObjCClassFromMetadata() unsupported];
  v159(v164);

  return (v156)(v181, v57);
}

void sub_266222D04(uint64_t a1, uint64_t a2)
{
  sub_266228130(0, &qword_2800696B8, 0x277CD42C8);
  v3 = sub_266266B98();
  (*(a2 + 16))(a2, v3);
}

void INUpdateMediaAffinityIntentHandler.handle(intent:completion:)(void *a1, void (*a2)(void), char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069628, &unk_266267E80);
  MEMORY[0x28223BE20](v6 - 8);
  v149 = &v137 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069630, &qword_266268A00);
  MEMORY[0x28223BE20](v8 - 8);
  v144 = &v137 - v9;
  v10 = sub_266266988();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v150 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v148 = &v137 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v145 = (&v137 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v137 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v146 = &v137 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v137 - v23;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v10, static Logger.default);
  swift_beginAccess();
  v26 = *(v11 + 16);
  v152 = v11 + 16;
  v153 = v25;
  v151 = v26;
  v26(v24, v25, v10);
  v27 = a1;
  v28 = sub_266266968();
  v29 = sub_266266D78();

  v30 = os_log_type_enabled(v28, v29);
  v147 = v20;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v142 = v29;
    v32 = v31;
    v141 = swift_slowAlloc();
    v154[0] = v141;
    *v32 = 136315138;
    v155 = [v27 affinityType];
    type metadata accessor for INMediaAffinityType(0);
    v33 = sub_266266A68();
    v35 = v27;
    v36 = sub_26621EAF0(v33, v34, v154);

    *(v32 + 4) = v36;
    v27 = v35;
    _os_log_impl(&dword_266219000, v28, v142, "INUpdateMediaAffinityIntentHandler#handle affinityType: %s", v32, 0xCu);
    v37 = v141;
    __swift_destroy_boxed_opaque_existential_1Tm(v141);
    MEMORY[0x266780880](v37, -1, -1);
    MEMORY[0x266780880](v32, -1, -1);
  }

  v38 = *(v11 + 8);
  v38(v24, v10);
  v39 = [v27 mediaSearch];
  v40 = v39;
  if (v39)
  {
    v41 = [v39 mediaType];

    v42 = v41 != 1;
  }

  else
  {
    v42 = 1;
  }

  v43 = [v27 affinityType];
  if (v43 - 1 > 1)
  {
    v54 = v150;
    v151(v150, v153, v10);
    v55 = sub_266266968();
    v56 = sub_266266D68();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 134217984;
      *(v57 + 4) = v43;
      _os_log_impl(&dword_266219000, v55, v56, "INUpdateMediaAffinityIntentHandler#handle unknown affinityType: %ld)", v57, 0xCu);
      MEMORY[0x266780880](v57, -1, -1);
    }

    v38(v54, v10);
    v58 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v59 = sub_266266A48();
    v60 = [v58 initWithActivityType_];

    goto LABEL_55;
  }

  v44 = [v27 mediaItems];
  if (!v44)
  {
LABEL_52:
    v131 = v148;
    v151(v148, v153, v10);
    v132 = sub_266266968();
    v133 = sub_266266D68();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      *v134 = 0;
      _os_log_impl(&dword_266219000, v132, v133, "INUpdateMediaAffinityIntentHandler#handle missing mediaItem", v134, 2u);
      MEMORY[0x266780880](v134, -1, -1);
    }

    v38(v131, v10);
    v135 = sub_266266398();
    v136 = v149;
    (*(*(v135 - 8) + 56))(v149, 1, 1, v135);
    v60 = sub_26622659C(v43, v136);
    sub_26622858C(v136, &qword_280069628, &unk_266267E80);
LABEL_55:
    v124 = [objc_allocWithZone(MEMORY[0x277CD42C0]) initWithCode:4 userActivity:v60];

    (a2)(v124);
    goto LABEL_56;
  }

  v45 = v44;
  v142 = v42;
  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
  v46 = sub_266266BB8();

  if (!(v46 >> 62))
  {
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    goto LABEL_51;
  }

  if (!sub_266267078())
  {
LABEL_51:

    goto LABEL_52;
  }

LABEL_12:
  v139 = a3;
  if ((v46 & 0xC000000000000001) != 0)
  {
    v47 = MEMORY[0x266780220](0, v46);
  }

  else
  {
    if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_59;
    }

    v47 = *(v46 + 32);
  }

  v48 = v47;
  v141 = v27;

  v150 = v48;
  v49 = [v48 identifier];
  if (v49)
  {
    v50 = v49;
    v51 = sub_266266A58();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0xE000000000000000;
  }

  v140 = v11;
  sub_266223DDC(v51, v53);
  if ((v61 & 1) == 0)
  {
    v148 = v43;
    sub_2662661F8();
    swift_allocObject();
    sub_2662661E8();
    v73 = v150;
    [v150 type];
    v74 = [v73 artist];
    if (v74)
    {
      v75 = v74;
      sub_266266A58();
    }

    v76 = sub_2662661D8();

    v77 = v146;
    v151(v146, v153, v10);
    v78 = v76;
    v79 = sub_266266968();
    v80 = sub_266266D48();

    v81 = os_log_type_enabled(v79, v80);
    v138 = a2;
    if (v81)
    {
      v82 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v154[0] = v145;
      *v82 = 136315138;
      v83 = v78;
      v84 = [v83 description];
      v85 = sub_266266A58();
      v149 = v78;
      v87 = v86;

      v88 = sub_26621EAF0(v85, v87, v154);
      v78 = v149;

      *(v82 + 4) = v88;
      _os_log_impl(&dword_266219000, v79, v80, "INUpdateMediaAffinityIntentHandler#handle model object is %s", v82, 0xCu);
      v89 = v145;
      __swift_destroy_boxed_opaque_existential_1Tm(v145);
      MEMORY[0x266780880](v89, -1, -1);
      MEMORY[0x266780880](v82, -1, -1);

      v90 = v146;
    }

    else
    {

      v90 = v77;
    }

    v38(v90, v10);
    v91 = v148;
    v92 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v93 = (2 * (v91 == 1));
    v94 = sub_266266A48();
    v149 = [v92 initWithActivityType_];

    v95 = v147;
    v151(v147, v153, v10);
    a3 = v78;
    v96 = sub_266266968();
    v97 = sub_266266D68();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      LODWORD(v152) = v97;
      v99 = v98;
      v100 = swift_slowAlloc();
      v153 = v10;
      v154[0] = v100;
      v101 = v100;
      *v99 = 136315394;
      v155 = v93;
      type metadata accessor for FavoriteEntityChangeRequestAction(0);
      v102 = sub_266266A68();
      v151 = v93;
      v104 = sub_26621EAF0(v102, v103, v154);

      *(v99 + 4) = v104;
      *(v99 + 12) = 2080;
      v105 = a3;
      v106 = [v105 description];
      v107 = sub_266266A58();
      v109 = v108;

      v110 = sub_26621EAF0(v107, v109, v154);

      *(v99 + 14) = v110;
      _os_log_impl(&dword_266219000, v96, v152, "INUpdateMediaAffinityIntentHandler#handle sending favorite change request: %s for item: %s and identity: <nil>", v99, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266780880](v101, -1, -1);
      MEMORY[0x266780880](v99, -1, -1);

      v38(v147, v153);
    }

    else
    {

      v38(v95, v10);
    }

    v43 = v138;
    a2 = v143;
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_favoriteEntityProvider), *(a2 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_favoriteEntityProvider + 24));
    sub_2662666B8();
    if (v40)
    {
      v111 = v148 == 2;
    }

    else
    {
      v111 = 0;
    }

    v112 = !v111;
    LOBYTE(v10) = v112 | v142;
    if ((v112 | v142))
    {
      if (v148 == 1)
      {
        v113 = 0;
        v114 = 3;
LABEL_46:
        v116 = v141;
        sub_2662246B0(a3, 0, v114, v113 & 1);
        v117 = v144;
        sub_266266C38();
        v118 = sub_266266C58();
        (*(*(v118 - 8) + 56))(v117, 0, 1, v118);
        v119 = swift_allocObject();
        v119[2] = 0;
        v119[3] = 0;
        v119[4] = a2;
        v119[5] = v116;
        v120 = v116;
        v121 = a2;
        sub_266224324(0, 0, v117, &unk_266267EA0, v119);

        v122 = objc_allocWithZone(MEMORY[0x277CD42C0]);
        v123 = v149;
        v124 = [v122 initWithCode:3 userActivity:v149];
        v43();

        goto LABEL_56;
      }

LABEL_45:
      v113 = v10 ^ 1;
      v114 = 1;
      goto LABEL_46;
    }

    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_mediaRemoteAPIProvider), *(a2 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_mediaRemoteAPIProvider + 24));
    if (qword_2800694C8 == -1)
    {
LABEL_44:
      *(swift_allocObject() + 16) = a2;
      v115 = a2;
      sub_266266588();

      goto LABEL_45;
    }

LABEL_59:
    swift_once();
    goto LABEL_44;
  }

  v62 = v145;
  v151(v145, v153, v10);
  v63 = v150;
  v64 = sub_266266968();
  v65 = sub_266266D68();

  if (os_log_type_enabled(v64, v65))
  {
    v148 = v43;
    v153 = v10;
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v155 = v67;
    *v66 = 136315138;
    v68 = [v63 identifier];
    if (v68)
    {
      v69 = v68;
      v70 = sub_266266A58();
      v72 = v71;
    }

    else
    {
      v70 = 0;
      v72 = 0;
    }

    v154[0] = v70;
    v154[1] = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069640, &qword_266267E90);
    v125 = sub_266266A68();
    v127 = sub_26621EAF0(v125, v126, &v155);

    *(v66 + 4) = v127;
    _os_log_impl(&dword_266219000, v64, v65, "INUpdateMediaAffinityIntentHandler#handle failed to convert identifier: %s into Int64 entityId", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    MEMORY[0x266780880](v67, -1, -1);
    MEMORY[0x266780880](v66, -1, -1);

    v38(v145, v153);
    v43 = v148;
  }

  else
  {

    v38(v62, v10);
  }

  v128 = sub_266266398();
  v129 = v149;
  (*(*(v128 - 8) + 56))(v149, 1, 1, v128);
  v130 = sub_26622659C(v43, v129);
  sub_26622858C(v129, &qword_280069628, &unk_266267E80);
  v124 = [objc_allocWithZone(MEMORY[0x277CD42C0]) initWithCode:4 userActivity:v130];

  (a2)(v124);
LABEL_56:
}

unint64_t sub_266223DDC(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_266267068();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_266225B9C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_2662240DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2662240FC, 0, 0);
}

uint64_t sub_2662240FC()
{
  v1 = (v0[2] + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_suggestionsDonationProvider);
  v2 = *v1;
  v3 = v1[1];
  sub_266265D08();
  v4 = sub_266265CF8();
  if (v4)
  {
    sub_266265CE8();

    v4 = sub_2662668A8();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v0[4] = v6;
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_266224214;
  v8 = v0[3];

  return sub_26622FBB0(v8, v4, v6, v2, v3);
}

uint64_t sub_266224214()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_266224324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069630, &qword_266268A00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_266228524(a3, v25 - v10, &unk_280069630, &qword_266268A00);
  v12 = sub_266266C58();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26622858C(v11, &unk_280069630, &qword_266268A00);
  }

  else
  {
    sub_266266C48();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_266266C08();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_266266A88() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_26622858C(a3, &unk_280069630, &qword_266268A00);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26622858C(a3, &unk_280069630, &qword_266268A00);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2662246B0(void *a1, void *a2, uint64_t a3, int a4)
{
  v5 = v4;
  v34 = a4;
  v33 = a2;
  v8 = sub_266266988();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_266265D18())
  {
    sub_266265CD8();

    sub_266265CA8();
  }

  else
  {
    v39 = 0;
    memset(v38, 0, sizeof(v38));
  }

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_266266968();
  v14 = sub_266266D58();
  v15 = os_log_type_enabled(v13, v14);
  v32 = a3;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v31 = v5;
    v17 = a1;
    v18 = v16;
    v19 = swift_slowAlloc();
    v35 = a3;
    v36[0] = v19;
    *v18 = 136315394;
    type metadata accessor for FavoriteEntityChangeRequestAction(0);
    v20 = sub_266266A68();
    v22 = sub_26621EAF0(v20, v21, v36);

    *(v18 + 4) = v22;
    *(v18 + 12) = 1024;
    *(v18 + 14) = v34 & 1;
    _os_log_impl(&dword_266219000, v13, v14, "INUpdateMediaAffinityIntentHandler#registerCorrection Registering correction/undo with %s, movedToNextTrack: %{BOOL}d", v18, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266780880](v19, -1, -1);
    v23 = v18;
    a1 = v17;
    v5 = v31;
    MEMORY[0x266780880](v23, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  sub_266228524(v38, v36, &qword_2800696D0, &qword_266267FD8);
  if (v37)
  {
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v24 = swift_allocObject();
    v25 = v33;
    *(v24 + 16) = v32;
    *(v24 + 24) = v5;
    *(v24 + 32) = a1;
    *(v24 + 40) = v25;
    *(v24 + 48) = v34 & 1;
    v26 = v25;
    v27 = v5;
    v28 = a1;
    sub_266265C98();

    sub_26622858C(v38, &qword_2800696D0, &qword_266267FD8);
    return __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }

  else
  {
    sub_26622858C(v38, &qword_2800696D0, &qword_266267FD8);
    return sub_26622858C(v36, &qword_2800696D0, &qword_266267FD8);
  }
}

uint64_t sub_266224A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 120) = a6;
  *(v6 + 72) = a4;
  *(v6 + 80) = a5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 48) = a1;
  v7 = sub_266266988();
  *(v6 + 88) = v7;
  *(v6 + 96) = *(v7 - 8);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266224B14, 0, 0);
}

uint64_t sub_266224B14()
{
  v35 = v0;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = __swift_project_value_buffer(v3, static Logger.default);
  swift_beginAccess();
  v33 = *(v2 + 16);
  v33(v1, v4, v3);
  v5 = sub_266266968();
  v6 = sub_266266D58();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 112);
  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  if (v7)
  {
    v11 = *(v0 + 56);
    v32 = *(v0 + 88);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34 = v13;
    *v12 = 136315138;
    *(v0 + 40) = v11;
    type metadata accessor for FavoriteEntityChangeRequestAction(0);
    v14 = sub_266266A68();
    v31 = v8;
    v16 = v4;
    v17 = sub_26621EAF0(v14, v15, &v34);

    *(v12 + 4) = v17;
    v4 = v16;
    _os_log_impl(&dword_266219000, v5, v6, "INUpdateMediaAffinityIntentHandler#registerCorrection executing %s as a correction/undo", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266780880](v13, -1, -1);
    MEMORY[0x266780880](v12, -1, -1);

    v18 = *(v9 + 8);
    v18(v31, v32);
  }

  else
  {

    v18 = *(v9 + 8);
    v18(v8, v10);
  }

  v19 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1((*(v0 + 64) + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_favoriteEntityProvider), *(*(v0 + 64) + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_favoriteEntityProvider + 24));
  sub_2662666B8();
  if (v19 == 1)
  {
    v33(*(v0 + 104), v4, *(v0 + 88));
    v20 = sub_266266968();
    v21 = sub_266266D58();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_266219000, v20, v21, "INUpdateMediaAffinityIntentHandler#registerCorrection moving to previous track as a correction/undo", v22, 2u);
      MEMORY[0x266780880](v22, -1, -1);
    }

    v23 = *(v0 + 104);
    v24 = *(v0 + 88);
    v25 = *(v0 + 64);

    v18(v23, v24);
    __swift_project_boxed_opaque_existential_1((v25 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_playbackController), *(v25 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_playbackController + 24));
    sub_2662668F8();
  }

  v26 = *(v0 + 48);
  *(v26 + 32) = 0;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  v27 = *MEMORY[0x277D5BFD0];
  v28 = sub_266265CC8();
  (*(*(v28 - 8) + 104))(v26, v27, v28);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_266224ED4(uint64_t a1)
{
  v2 = sub_266266908();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - v6;
  v8 = sub_266266988();
  v48 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v47 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800696D8, &unk_266267FF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  sub_266228524(a1, &v43 - v14, &qword_2800696D8, &unk_266267FF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v7, v15, v2);
    v16 = v7;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v17 = v8;
    v18 = __swift_project_value_buffer(v8, static Logger.default);
    swift_beginAccess();
    v19 = v47;
    v20 = v48;
    (*(v48 + 16))(v47, v18, v17);
    v21 = v46;
    (*(v3 + 16))(v46, v16, v2);
    v22 = sub_266266968();
    v23 = sub_266266D68();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v45 = v17;
      v25 = v2;
      v26 = v21;
      v27 = v24;
      v28 = swift_slowAlloc();
      v44 = v16;
      v29 = v28;
      v49 = v28;
      *v27 = 136446210;
      sub_2662285EC(&unk_2800696E0, MEMORY[0x277D5F6E0], MEMORY[0x277D5F6E8]);
      v30 = v25;
      v31 = sub_266267108();
      v33 = v32;
      v34 = *(v3 + 8);
      v34(v26, v30);
      v35 = sub_26621EAF0(v31, v33, &v49);

      *(v27 + 4) = v35;
      _os_log_impl(&dword_266219000, v22, v23, "INUpdateMediaAffinityIntentHandler#registerCorrection error sending previous track command %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x266780880](v29, -1, -1);
      MEMORY[0x266780880](v27, -1, -1);

      (*(v48 + 8))(v47, v45);
      return (v34)(v44, v30);
    }

    else
    {

      v42 = *(v3 + 8);
      v42(v21, v2);
      (*(v20 + 8))(v19, v17);
      return (v42)(v16, v2);
    }
  }

  else
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v8, static Logger.default);
    swift_beginAccess();
    v38 = v48;
    (*(v48 + 16))(v12, v37, v8);
    v39 = sub_266266968();
    v40 = sub_266266D58();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_266219000, v39, v40, "INUpdateMediaAffinityIntentHandler#registerCorrection successfully moved to previous track", v41, 2u);
      MEMORY[0x266780880](v41, -1, -1);
    }

    return (*(v38 + 8))(v12, v8);
  }
}

void *sub_266225450(uint64_t a1)
{
  v2 = sub_266266988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_266227BA8(a1);
  if (v7)
  {
    v8 = result;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v2, static Logger.default);
    swift_beginAccess();
    (*(v3 + 16))(v5, v9, v2);
    v10 = v8;
    v11 = sub_266266968();
    v12 = sub_266266D68();
    sub_2662280D0(v8, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136446210;
      swift_getErrorValue();
      v15 = sub_266267108();
      v17 = sub_26621EAF0(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_266219000, v11, v12, "INUpdateMediaAffinityIntentHandler#handle error sending next track command %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x266780880](v14, -1, -1);
      MEMORY[0x266780880](v13, -1, -1);

      sub_2662280D0(v8, 1);
    }

    else
    {
      sub_2662280D0(v8, 1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

id INUpdateMediaAffinityIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INUpdateMediaAffinityIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MRCommandError.hashValue.getter()
{
  sub_266267158();
  MEMORY[0x266780330](0);
  return sub_266267178();
}

uint64_t sub_2662257DC()
{
  sub_266267158();
  MEMORY[0x266780330](0);
  return sub_266267178();
}

uint64_t sub_266225848(uint64_t a1)
{
  sub_266267158();
  MEMORY[0x266780330](0);
  return sub_266267178();
}

uint64_t sub_266225898()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2662258E8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2662259E0;

  return v6(a1);
}

uint64_t sub_2662259E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_266225AD8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800695C8, &qword_266267E38);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_266225B4C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_266225B6C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unsigned __int8 *sub_266225B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_266266B58();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_266226128(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_266267068();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_266226128(uint64_t a1, unint64_t a2)
{
  v2 = sub_266266B68();
  v6 = sub_2662261A8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2662261A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_266266FC8();
    if (!v9 || (v10 = v9, v11 = sub_266225AD8(v9, 0), v12 = sub_266226300(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_266266AA8();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_266266AA8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_266267068();
LABEL_4:

  return sub_266266AA8();
}

unint64_t sub_266226300(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_266226520(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_266266B28();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_266267068();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_266226520(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_266266B08();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_266226520(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_266266B38();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26677FCE0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

id sub_26622659C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069628, &unk_266267E80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v19 - v4;
  v6 = sub_266266398();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v11 = sub_266266A48();
  v12 = [v10 initWithActivityType_];

  sub_266228524(a2, v5, &qword_280069628, &unk_266267E80);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_26622858C(v5, &qword_280069628, &unk_266267E80);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800696F0, &qword_266268000);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266267DB0;
    v19[1] = 0x726F727265;
    v19[2] = 0xE500000000000000;
    v14 = MEMORY[0x277D837D0];
    sub_266267008();
    v15 = sub_266266388();
    *(inited + 96) = v14;
    *(inited + 72) = v15;
    *(inited + 80) = v16;
    sub_26622D4B4(inited);
    swift_setDeallocating();
    sub_26622858C(inited + 32, &qword_2800696F8, &qword_266268008);
    v17 = sub_266266A28();

    [v12 setUserInfo_];

    (*(v7 + 8))(v9, v6);
  }

  return v12;
}

uint64_t sub_266226888(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_266228640;

  return sub_2662240DC(a1, v4, v5, v7, v6);
}

unint64_t sub_266226954()
{
  result = qword_280069648;
  if (!qword_280069648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280069648);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MRCommandError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MRCommandError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_266226A98(void *a1, void *a2, void (**a3)(id, id))
{
  v143 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069630, &qword_266268A00);
  MEMORY[0x28223BE20](v5 - 8);
  v142 = &v140 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069628, &unk_266267E80);
  MEMORY[0x28223BE20](v7 - 8);
  v149 = &v140 - v8;
  v9 = sub_266266988();
  v10 = *(v9 - 1);
  v11 = MEMORY[0x28223BE20](v9);
  v151 = (&v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v140 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v140 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v144 = &v140 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v148 = &v140 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = (&v140 - v23);
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v9, static Logger.default);
  swift_beginAccess();
  v26 = *(v10 + 16);
  v153 = v10 + 16;
  v154 = v25;
  v152 = v26;
  v26(v24, v25, v9);
  v27 = a1;
  v28 = sub_266266968();
  v29 = sub_266266D78();

  v30 = os_log_type_enabled(v28, v29);
  v145 = v18;
  v146 = v15;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v150 = v10;
    v147 = a3;
    v32 = v31;
    v33 = swift_slowAlloc();
    v155[0] = v33;
    *v32 = 136315138;
    v156 = [v27 affinityType];
    type metadata accessor for INMediaAffinityType(0);
    v34 = sub_266266A68();
    v36 = sub_26621EAF0(v34, v35, v155);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_266219000, v28, v29, "INUpdateMediaAffinityIntentHandler#handle affinityType: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x266780880](v33, -1, -1);
    v37 = v32;
    a3 = v147;
    v10 = v150;
    MEMORY[0x266780880](v37, -1, -1);
  }

  v38 = *(v10 + 8);
  (v38)(v24, v9);
  v39 = [v27 mediaSearch];
  v40 = v39;
  if (v39)
  {
    v41 = [v39 mediaType];

    v42 = v41 != 1;
  }

  else
  {
    v42 = 1;
  }

  v43 = [v27 affinityType];
  if ((v43 - 1) > 1)
  {
    v55 = v151;
    v152(v151, v154, v9);
    v56 = sub_266266968();
    v57 = sub_266266D68();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 134217984;
      *(v58 + 4) = v43;
      _os_log_impl(&dword_266219000, v56, v57, "INUpdateMediaAffinityIntentHandler#handle unknown affinityType: %ld)", v58, 0xCu);
      MEMORY[0x266780880](v58, -1, -1);
    }

    (v38)(v55, v9);
    v59 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v60 = sub_266266A48();
    v61 = [v59 initWithActivityType_];

    goto LABEL_55;
  }

  v44 = [v27 mediaItems];
  if (!v44)
  {
LABEL_52:
    v134 = v148;
    v152(v148, v154, v9);
    v135 = sub_266266968();
    v136 = sub_266266D68();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      *v137 = 0;
      _os_log_impl(&dword_266219000, v135, v136, "INUpdateMediaAffinityIntentHandler#handle missing mediaItem", v137, 2u);
      MEMORY[0x266780880](v137, -1, -1);
    }

    (v38)(v134, v9);
    v138 = sub_266266398();
    v139 = v149;
    (*(*(v138 - 8) + 56))(v149, 1, 1, v138);
    v61 = sub_26622659C(v43, v139);
    sub_26622858C(v139, &qword_280069628, &unk_266267E80);
LABEL_55:
    v127 = [objc_allocWithZone(MEMORY[0x277CD42C0]) initWithCode:4 userActivity:v61];

    a3[2](a3, v127);
    goto LABEL_56;
  }

  v45 = v44;
  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
  v46 = sub_266266BB8();

  if (!(v46 >> 62))
  {
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    goto LABEL_51;
  }

  if (!sub_266267078())
  {
LABEL_51:

    goto LABEL_52;
  }

LABEL_12:
  v150 = v10;
  v141 = v42;
  if ((v46 & 0xC000000000000001) != 0)
  {
    v47 = MEMORY[0x266780220](0, v46);
  }

  else
  {
    if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_59;
    }

    v47 = *(v46 + 32);
  }

  v48 = v47;

  v49 = [v48 identifier];
  v151 = v38;
  if (v49)
  {
    v50 = v48;
    v51 = v49;
    v52 = sub_266266A58();
    v54 = v53;

    v48 = v50;
    v38 = v151;
  }

  else
  {
    v52 = 0;
    v54 = 0xE000000000000000;
  }

  sub_266223DDC(v52, v54);
  if ((v62 & 1) == 0)
  {
    v147 = a3;
    v148 = v43;
    sub_2662661F8();
    swift_allocObject();
    sub_2662661E8();
    [v48 type];
    v149 = v48;
    v74 = [v48 artist];
    if (v74)
    {
      v75 = v74;
      sub_266266A58();
    }

    v144 = v27;
    v76 = sub_2662661D8();

    v77 = v145;
    v152(v145, v154, v9);
    v78 = v76;
    v79 = sub_266266968();
    v80 = sub_266266D48();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v155[0] = v140;
      *v81 = 136315138;
      v82 = v78;
      v83 = v9;
      v84 = [v82 description];
      v85 = sub_266266A58();
      v86 = v78;
      v88 = v87;

      v9 = v83;
      v89 = sub_26621EAF0(v85, v88, v155);
      v78 = v86;

      *(v81 + 4) = v89;
      _os_log_impl(&dword_266219000, v79, v80, "INUpdateMediaAffinityIntentHandler#handle model object is %s", v81, 0xCu);
      v90 = v140;
      __swift_destroy_boxed_opaque_existential_1Tm(v140);
      MEMORY[0x266780880](v90, -1, -1);
      MEMORY[0x266780880](v81, -1, -1);

      v91 = v145;
      v92 = v83;
    }

    else
    {

      v91 = v77;
      v92 = v9;
    }

    (v151)(v91, v92);
    v93 = v148;
    v94 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v95 = sub_266266A48();
    v145 = [v94 initWithActivityType_];

    v96 = v146;
    v152(v146, v154, v9);
    a3 = v78;
    v97 = sub_266266968();
    v98 = sub_266266D68();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      LODWORD(v153) = v98;
      v100 = v99;
      v101 = swift_slowAlloc();
      v155[0] = v101;
      *v100 = 136315394;
      v156 = (2 * (v93 == 1));
      type metadata accessor for FavoriteEntityChangeRequestAction(0);
      v102 = sub_266266A68();
      v104 = sub_26621EAF0(v102, v103, v155);
      v154 = v9;
      v105 = v104;

      *(v100 + 4) = v105;
      *(v100 + 12) = 2080;
      v106 = a3;
      v107 = [v106 description];
      v108 = sub_266266A58();
      v110 = v109;

      v111 = v108;
      v93 = v148;
      v112 = sub_26621EAF0(v111, v110, v155);

      *(v100 + 14) = v112;
      _os_log_impl(&dword_266219000, v97, v153, "INUpdateMediaAffinityIntentHandler#handle sending favorite change request: %s for item: %s and identity: <nil>", v100, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266780880](v101, -1, -1);
      MEMORY[0x266780880](v100, -1, -1);

      (v151)(v146, v154);
    }

    else
    {

      (v151)(v96, v9);
    }

    v38 = v147;
    v9 = v143;
    __swift_project_boxed_opaque_existential_1((v143 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_favoriteEntityProvider), *(v143 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_favoriteEntityProvider + 24));
    sub_2662666B8();
    if (v40)
    {
      v113 = v93 == 2;
    }

    else
    {
      v113 = 0;
    }

    v114 = !v113;
    LOBYTE(v27) = v114 | v141;
    if ((v114 | v141))
    {
      if (v93 == 1)
      {
        v115 = 0;
        v116 = 3;
LABEL_46:
        v118 = v149;
        sub_2662246B0(a3, 0, v116, v115 & 1);
        v119 = v142;
        sub_266266C38();
        v120 = sub_266266C58();
        (*(*(v120 - 8) + 56))(v119, 0, 1, v120);
        v121 = swift_allocObject();
        v121[2] = 0;
        v121[3] = 0;
        v122 = v144;
        v121[4] = v9;
        v121[5] = v122;
        v123 = v122;
        v124 = v9;
        sub_266224324(0, 0, v119, &unk_266267FB8, v121);

        v125 = objc_allocWithZone(MEMORY[0x277CD42C0]);
        v126 = v145;
        v127 = [v125 initWithCode:3 userActivity:v145];
        v38[2](v38, v127);

        goto LABEL_56;
      }

LABEL_45:
      v115 = v27 ^ 1;
      v116 = 1;
      goto LABEL_46;
    }

    __swift_project_boxed_opaque_existential_1((v9 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_mediaRemoteAPIProvider), *(v9 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_mediaRemoteAPIProvider + 24));
    if (qword_2800694C8 == -1)
    {
LABEL_44:
      *(swift_allocObject() + 16) = v9;
      v117 = v9;
      sub_266266588();

      goto LABEL_45;
    }

LABEL_59:
    swift_once();
    goto LABEL_44;
  }

  v63 = v144;
  v152(v144, v154, v9);
  v64 = v48;
  v65 = sub_266266968();
  v66 = sub_266266D68();

  if (os_log_type_enabled(v65, v66))
  {
    v148 = v43;
    v154 = v9;
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v156 = v68;
    *v67 = 136315138;
    v69 = [v64 identifier];
    if (v69)
    {
      v70 = v69;
      v71 = sub_266266A58();
      v73 = v72;
    }

    else
    {
      v71 = 0;
      v73 = 0;
    }

    v155[0] = v71;
    v155[1] = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069640, &qword_266267E90);
    v128 = sub_266266A68();
    v130 = sub_26621EAF0(v128, v129, &v156);

    *(v67 + 4) = v130;
    _os_log_impl(&dword_266219000, v65, v66, "INUpdateMediaAffinityIntentHandler#handle failed to convert identifier: %s into Int64 entityId", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    MEMORY[0x266780880](v68, -1, -1);
    MEMORY[0x266780880](v67, -1, -1);

    (v151)(v144, v154);
    v43 = v148;
  }

  else
  {

    (v38)(v63, v9);
  }

  v131 = sub_266266398();
  v132 = v149;
  (*(*(v131 - 8) + 56))(v149, 1, 1, v131);
  v133 = sub_26622659C(v43, v132);
  sub_26622858C(v132, &qword_280069628, &unk_266267E80);
  v127 = [objc_allocWithZone(MEMORY[0x277CD42C0]) initWithCode:4 userActivity:v133];

  a3[2](a3, v127);
LABEL_56:
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_266227B30()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266227B68()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266227BA8(uint64_t a1)
{
  v46 = a1;
  v1 = sub_266266988();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v45 = v44 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v44 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v44 - v11;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v1, static Logger.default);
  swift_beginAccess();
  v14 = *(v2 + 16);
  v14(v12, v13, v1);
  v15 = sub_266266968();
  v16 = sub_266266D58();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v44[1] = v2 + 16;
    v18 = v13;
    v19 = v5;
    v20 = v1;
    v21 = v14;
    v22 = v10;
    v23 = v2;
    v24 = v17;
    *v17 = 0;
    _os_log_impl(&dword_266219000, v15, v16, "INUpdateMediaAffinityIntentHandler#handleSendCommandResult handling statuses from affinity MRMediaRemoteCommand", v17, 2u);
    v25 = v24;
    v2 = v23;
    v10 = v22;
    v14 = v21;
    v1 = v20;
    v5 = v19;
    v13 = v18;
    MEMORY[0x266780880](v25, -1, -1);
  }

  v26 = *(v2 + 8);
  v26(v12, v1);
  if (!v46 || (objc_opt_self(), !swift_dynamicCastObjCClass()) || (v47 = 0, sub_266228130(0, &qword_2800696C8, 0x277CCABB0), sub_266266BA8(), (v27 = v47) == 0))
  {
    v14(v5, v13, v1);
    v37 = sub_266266968();
    v38 = sub_266266D58();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_266219000, v37, v38, "INUpdateMediaAffinityIntentHandler#handleSendCommandResult command statuses are nil, command failed", v39, 2u);
      MEMORY[0x266780880](v39, -1, -1);
    }

    v40 = v5;
    goto LABEL_20;
  }

  if (!(v47 >> 62))
  {
    result = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_22:

LABEL_23:
    v14(v10, v13, v1);
    v41 = sub_266266968();
    v42 = sub_266266D58();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_266219000, v41, v42, "INUpdateMediaAffinityIntentHandler#handleSendCommandResult command statuses are empty or non-zero, command failed", v43, 2u);
      MEMORY[0x266780880](v43, -1, -1);
    }

    v40 = v10;
LABEL_20:
    v26(v40, v1);
    sub_2662280DC();
    return swift_allocError();
  }

  result = sub_266267078();
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v27 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x266780220](0, v27);
  }

  else
  {
    if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v29 = *(v27 + 32);
  }

  v30 = v29;

  v31 = [v30 integerValue];

  if (v31)
  {
    goto LABEL_23;
  }

  v32 = v45;
  v14(v45, v13, v1);
  v33 = v32;
  v34 = sub_266266968();
  v35 = sub_266266D58();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_266219000, v34, v35, "INUpdateMediaAffinityIntentHandler#handleSendCommandResult command succeeded", v36, 2u);
    MEMORY[0x266780880](v36, -1, -1);
  }

  v26(v33, v1);
  return 0;
}

void sub_2662280D0(id a1, char a2)
{
  if (a2)
  {
  }
}

unint64_t sub_2662280DC()
{
  result = qword_2800696C0;
  if (!qword_2800696C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800696C0);
  }

  return result;
}

uint64_t sub_266228130(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_266228178()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662281B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266228640;

  return sub_2662258E8(a1, v4);
}

uint64_t sub_266228268(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266228320;

  return sub_2662258E8(a1, v4);
}

uint64_t sub_266228320()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_266228414()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_26622845C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_266228320;

  return sub_266224A3C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_266228524(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26622858C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2662285EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for ArtistNameParameterBuilder(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtistNameParameterBuilder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Logger.audio.unsafeMutableAddressor()
{
  if (qword_2800694D0 != -1)
  {
    swift_once();
  }

  v0 = sub_266266988();

  return __swift_project_value_buffer(v0, static Logger.audio);
}

uint64_t sub_26622881C()
{
  v0 = sub_266266988();
  __swift_allocate_value_buffer(v0, static Logger.audio);
  __swift_project_value_buffer(v0, static Logger.audio);
  return sub_266266978();
}

uint64_t static Logger.audio.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2800694D0 != -1)
  {
    swift_once();
  }

  v2 = sub_266266988();
  v3 = __swift_project_value_buffer(v2, static Logger.audio);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
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

uint64_t INSearchForMediaIntentHandler.resolveMediaItems(for:with:)(void *a1, void (*a2)(uint64_t))
{
  v4 = sub_266266988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 privateSearchForMediaIntentData];
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = v8;
  v10 = [v8 audioSearchResults];

  if (!v10)
  {
    goto LABEL_21;
  }

  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
  v11 = sub_266266BB8();

  if (v11 >> 62)
  {
    if (sub_266267078())
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_20:

LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_2800698C0, 0x277CD4040);
    *(v41 + 32) = [swift_getObjCClassFromMetadata() unsupported];
    a2(v41);
    goto LABEL_22;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x266780220](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    v12 = *(v11 + 32);
  }

  v10 = v12;

  v13 = [v10 privateMediaItemValueData];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 punchoutURI];

    if (v15)
    {
      v16 = sub_266266A58();
      v18 = v17;

      v19 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v19 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        if (qword_280069528 == -1)
        {
LABEL_14:
          v20 = __swift_project_value_buffer(v4, static Logger.default);
          swift_beginAccess();
          (*(v5 + 16))(v7, v20, v4);
          v21 = v10;
          v22 = sub_266266968();
          v23 = sub_266266D58();

          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            v44 = v24;
            v46 = swift_slowAlloc();
            v48[0] = v46;
            *v24 = 136315138;
            v25 = v21;
            v45 = v22;
            v26 = v25;
            v27 = [v25 description];
            v47 = v21;
            v28 = v27;
            v29 = sub_266266A58();
            v43 = v23;
            v30 = v29;
            v32 = v31;

            v33 = sub_26621EAF0(v30, v32, v48);

            v34 = v44;
            v35 = v45;
            *(v44 + 1) = v33;
            v21 = v47;
            _os_log_impl(&dword_266219000, v35, v43, "INSearchForMediaIntentHandler#resolveMediaItems resolving item: %s", v34, 0xCu);
            v36 = v46;
            __swift_destroy_boxed_opaque_existential_1Tm(v46);
            MEMORY[0x266780880](v36, -1, -1);
            MEMORY[0x266780880](v34, -1, -1);
          }

          else
          {
          }

          (*(v5 + 8))(v7, v4);
          v48[3] = sub_266228130(0, &unk_2800697A8, 0x277CD4030);
          v48[4] = MEMORY[0x277D557E8];
          v48[0] = a1;
          v38 = a1;
          sub_266266CE8();
          __swift_destroy_boxed_opaque_existential_1Tm(v48);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_266267E70;
          sub_266228130(0, &qword_2800698C0, 0x277CD4040);
          *(v39 + 32) = [swift_getObjCClassFromMetadata() successWithResolvedMediaItem_];
          a2(v39);
        }

LABEL_27:
        swift_once();
        goto LABEL_14;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_266267E70;
  sub_266228130(0, &qword_2800698C0, 0x277CD4040);
  *(v37 + 32) = [swift_getObjCClassFromMetadata() unsupported];
  a2(v37);

LABEL_22:
}

void INSearchForMediaIntentHandler.handle(intent:completion:)(uint64_t a1, void (*a2)(void))
{
  v3 = [objc_allocWithZone(MEMORY[0x277CD4038]) initWithCode:4 userActivity:0];
  a2();
}

id INSearchForMediaIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id INSearchForMediaIntentHandler.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INSearchForMediaIntentHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

id INSearchForMediaIntentHandler.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for INSearchForMediaIntentHandler();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2662291D0(void *a1, uint64_t a2)
{
  v4 = sub_266266988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 privateSearchForMediaIntentData];
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = v8;
  v10 = [v8 audioSearchResults];

  if (!v10)
  {
    goto LABEL_20;
  }

  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
  v11 = sub_266266BB8();

  if (v11 >> 62)
  {
    if (sub_266267078())
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:

LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_2800698C0, 0x277CD4040);
    *(v38 + 32) = [swift_getObjCClassFromMetadata() unsupported];
    v43 = sub_266266B98();
    (*(a2 + 16))(a2, v43);
    goto LABEL_21;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x266780220](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_26;
    }

    v12 = *(v11 + 32);
  }

  v10 = v12;

  v13 = [v10 privateMediaItemValueData];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 punchoutURI];

    if (v15)
    {
      v16 = sub_266266A58();
      v18 = v17;

      v19 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v19 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        if (qword_280069528 == -1)
        {
LABEL_14:
          v20 = __swift_project_value_buffer(v4, static Logger.default);
          swift_beginAccess();
          (*(v5 + 16))(v7, v20, v4);
          v21 = v10;
          v22 = sub_266266968();
          v23 = sub_266266D58();

          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            v41 = v24;
            v42 = swift_slowAlloc();
            v44[0] = v42;
            *v24 = 136315138;
            v25 = v21;
            v26 = [v25 description];
            v43 = v21;
            v27 = v26;
            v28 = sub_266266A58();
            HIDWORD(v40) = v23;
            v30 = v29;

            v31 = sub_26621EAF0(v28, v30, v44);

            v32 = v41;
            *(v41 + 1) = v31;
            v21 = v43;
            _os_log_impl(&dword_266219000, v22, BYTE4(v40), "INSearchForMediaIntentHandler#resolveMediaItems resolving item: %s", v32, 0xCu);
            v33 = v42;
            __swift_destroy_boxed_opaque_existential_1Tm(v42);
            MEMORY[0x266780880](v33, -1, -1);
            MEMORY[0x266780880](v32, -1, -1);
          }

          (*(v5 + 8))(v7, v4);
          v44[3] = sub_266228130(0, &unk_2800697A8, 0x277CD4030);
          v44[4] = MEMORY[0x277D557E8];
          v44[0] = a1;
          v34 = a1;
          sub_266266CE8();
          __swift_destroy_boxed_opaque_existential_1Tm(v44);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_266267E70;
          sub_266228130(0, &qword_2800698C0, 0x277CD4040);
          *(v35 + 32) = [swift_getObjCClassFromMetadata() successWithResolvedMediaItem_];
          v36 = sub_266266B98();
          (*(a2 + 16))(a2, v36);

          return;
        }

LABEL_26:
        swift_once();
        goto LABEL_14;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_266267E70;
  sub_266228130(0, &qword_2800698C0, 0x277CD4040);
  *(v37 + 32) = [swift_getObjCClassFromMetadata() unsupported];
  v43 = sub_266266B98();
  (*(a2 + 16))(a2, v43);

LABEL_21:

  v39 = v43;
}

uint64_t sub_2662297C0()
{
  result = sub_26622D6E4(&unk_2877D98E0);
  qword_28006A4F0 = result;
  return result;
}

uint64_t static SuggestionsDonationProvider.donatePlayMediaIntentForSuggestions(intent:)(uint64_t a1)
{
  v1[28] = a1;
  v2 = sub_266266988();
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v3 = sub_266266758();
  v1[33] = v3;
  v1[34] = *(v3 - 8);
  v1[35] = swift_task_alloc();
  v4 = sub_266266958();
  v1[36] = v4;
  v1[37] = *(v4 - 8);
  v1[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069820, &qword_266268108);
  v1[39] = swift_task_alloc();
  v5 = sub_266265B98();
  v1[40] = v5;
  v1[41] = *(v5 - 8);
  v1[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266229A00, 0, 0);
}

uint64_t sub_266229A00(uint64_t a1)
{
  if (!sub_266265D18())
  {
    goto LABEL_5;
  }

  sub_266265CE8();

  sub_2662668A8();
  v3 = v2;

  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v1[40];
  v5 = v1[41];
  v6 = v1[39];
  sub_266265B88();

  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    sub_26622858C(v1[39], &qword_280069820, &qword_266268108);
LABEL_5:
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v7 = v1[32];
    v8 = v1[29];
    v9 = v1[30];
    v10 = __swift_project_value_buffer(v8, static Logger.default);
    swift_beginAccess();
    (*(v9 + 16))(v7, v10, v8);
    v11 = sub_266266968();
    v12 = sub_266266D68();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v1[32];
    v15 = v1[29];
    v16 = v1[30];
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_266219000, v11, v12, "SuggestionsDonationProvider#donatePlayMediaIntentForSuggestions Unable to get requestId. Not donating intent to SiriSuggestions", v17, 2u);
      MEMORY[0x266780880](v17, -1, -1);
    }

    (*(v16 + 8))(v14, v15);

    v18 = v1[1];

    return v18();
  }

  (*(v1[41] + 32))(v1[42], v1[39], v1[40]);
  v20 = [objc_allocWithZone(MEMORY[0x277D278F0]) init];
  v1[43] = v20;
  v21 = swift_task_alloc();
  v1[44] = v21;
  *v21 = v1;
  v21[1] = sub_266229D08;

  return sub_26622F088((v1 + 17), v20);
}

uint64_t sub_266229D08()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_26622A3AC;
  }

  else
  {

    v3 = sub_266229E24;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_266229E24()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    v47 = *(v0 + 169);
    v45 = *(v0 + 144);
    v46 = *(v0 + 160);
    v43 = *(v0 + 168);
    v44 = *(v0 + 153);
    v41 = *(v0 + 152);
    v42 = *(v0 + 137);
    v40 = *(v0 + 136);
    v21 = sub_266266F38();
    if (qword_280069538 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 296);
    v22 = *(v0 + 304);
    v25 = *(v0 + 280);
    v24 = *(v0 + 288);
    v26 = *(v0 + 264);
    v27 = *(v0 + 272);
    v28 = *(v0 + 224);
    v29 = logObject;
    *(v0 + 424) = logObject;
    sub_266266948();
    sub_266266918(v21, &dword_266219000, v29, "donatePlayMediaIntent", 21, 2, v22, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    v30 = *(v23 + 8);
    *(v0 + 432) = v30;
    *(v0 + 440) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30(v22, v24);
    sub_2662666F8();
    sub_2662666E8();
    v31 = *(v0 + 40);
    v32 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v31);
    *v25 = v28;
    (*(v27 + 104))(v25, *MEMORY[0x277D60918], v26);
    v33 = qword_2800694C0;
    v34 = v28;
    if (v33 != -1)
    {
      swift_once();
    }

    v35 = qword_28006A4D0;
    *(v0 + 80) = sub_266266778();
    *(v0 + 88) = sub_26622F800(&qword_280069828, MEMORY[0x277D60A20], MEMORY[0x277D60A18]);
    *(v0 + 56) = v35;
    *(v0 + 472) = v41;
    *(v0 + 96) = v40;
    *(v0 + 480) = v43;
    *(v0 + 97) = v42;
    *(v0 + 98) = *(v0 + 130);
    *(v0 + 102) = *(v0 + 134);
    *(v0 + 104) = v45;
    *(v0 + 112) = *(v0 + 472);
    *(v0 + 113) = v44;
    *(v0 + 114) = *(v0 + 170);
    *(v0 + 118) = *(v0 + 174);
    *(v0 + 120) = v46;
    *(v0 + 128) = *(v0 + 480);
    *(v0 + 129) = v47;

    v36 = sub_266236E3C();
    *(v0 + 448) = v36;
    v37 = swift_task_alloc();
    *(v0 + 456) = v37;
    v12 = *(v32 + 8);
    *v37 = v0;
    v37[1] = sub_26622B32C;
    v7 = *(v0 + 280);
    v8 = v0 + 56;
    v13 = *(v0 + 336);
    v9 = v36;
    v10 = 1;
    v11 = v31;

    return MEMORY[0x2821C5FD8](v13, v7, v8, v9, v10, v11, v12);
  }

  v2 = v1;
  v3 = *(v0 + 224);
  v4 = [v2 mediaItems];
  if (!v4)
  {
LABEL_18:
    v16 = swift_task_alloc();
    *(v0 + 400) = v16;
    *(v16 + 16) = v2;
    v38 = swift_task_alloc();
    *(v0 + 408) = v38;
    *v38 = v0;
    v38[1] = sub_26622AC98;
    v18 = MEMORY[0x277D839B0];
    v19 = sub_26622F7E8;
    v20 = v0 + 473;
    goto LABEL_19;
  }

  v5 = v4;
  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
  v6 = sub_266266BB8();

  if (!(v6 >> 62))
  {
    v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  v13 = sub_266267078();
  if (!v13)
  {
LABEL_17:

    goto LABEL_18;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x266780220](0, v6);
    goto LABEL_8;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return MEMORY[0x2821C5FD8](v13, v7, v8, v9, v10, v11, v12);
  }

  v14 = *(v6 + 32);
LABEL_8:
  v15 = v14;

  *(v0 + 368) = [v15 type];

  v16 = swift_task_alloc();
  *(v0 + 376) = v16;
  *(v16 + 16) = v2;
  v17 = swift_task_alloc();
  *(v0 + 384) = v17;
  *v17 = v0;
  v17[1] = sub_26622A5F8;
  v18 = MEMORY[0x277D839B0];
  v19 = sub_26622FBAC;
  v20 = v0 + 474;
LABEL_19:

  return MEMORY[0x2822008A0](v20, 0, 0, 0xD00000000000001FLL, 0x8000000266269040, v19, v16, v18);
}

uint64_t sub_26622A3AC()
{
  v1 = *(v0 + 360);
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 232);
  v5 = __swift_project_value_buffer(v4, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_266266968();
  v8 = sub_266266D68();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_266219000, v7, v8, "SuggestionsDonationProvider#donatePlayMediaIntentForSuggestions donating to SiriSuggestions: %@", v9, 0xCu);
    sub_26622858C(v10, &qword_280069710, &qword_266267DC0);
    MEMORY[0x266780880](v10, -1, -1);
    MEMORY[0x266780880](v9, -1, -1);
  }

  v14 = *(v0 + 328);
  v13 = *(v0 + 336);
  v15 = *(v0 + 320);
  v17 = *(v0 + 240);
  v16 = *(v0 + 248);
  v18 = *(v0 + 232);

  (*(v17 + 8))(v16, v18);
  (*(v14 + 8))(v13, v15);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_26622A5F8()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_26622AA44;
  }

  else
  {

    v2 = sub_26622A714;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26622A714()
{
  v28 = *(v0 + 474);
  v26 = *(v0 + 368);

  v27 = *(v0 + 160);
  v24 = *(v0 + 168);
  v25 = *(v0 + 153);
  v22 = *(v0 + 136);
  v23 = *(v0 + 137);
  v1 = sub_266266F38();
  if (qword_280069538 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 264);
  v7 = *(v0 + 272);
  v8 = *(v0 + 224);
  v9 = logObject;
  *(v0 + 424) = logObject;
  sub_266266948();
  sub_266266918(v1, &dword_266219000, v9, "donatePlayMediaIntent", 21, 2, v2, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v10 = *(v3 + 8);
  *(v0 + 432) = v10;
  *(v0 + 440) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v2, v4);
  sub_2662666F8();
  sub_2662666E8();
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
  *v5 = v8;
  (*(v7 + 104))(v5, *MEMORY[0x277D60918], v6);
  v13 = qword_2800694C0;
  v14 = v8;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_28006A4D0;
  *(v0 + 80) = sub_266266778();
  *(v0 + 88) = sub_26622F800(&qword_280069828, MEMORY[0x277D60A20], MEMORY[0x277D60A18]);
  *(v0 + 56) = v15;
  *(v0 + 472) = 0;
  *(v0 + 96) = v22;
  *(v0 + 480) = v24;
  *(v0 + 97) = v23;
  *(v0 + 98) = *(v0 + 130);
  *(v0 + 102) = *(v0 + 134);
  *(v0 + 104) = v26;
  *(v0 + 112) = 0;
  *(v0 + 113) = v25;
  *(v0 + 114) = *(v0 + 170);
  *(v0 + 118) = *(v0 + 174);
  *(v0 + 120) = v27;
  *(v0 + 128) = *(v0 + 480);
  *(v0 + 129) = v28;

  v16 = sub_266236E3C();
  *(v0 + 448) = v16;
  v17 = swift_task_alloc();
  *(v0 + 456) = v17;
  v18 = *(v12 + 8);
  *v17 = v0;
  v17[1] = sub_26622B32C;
  v19 = *(v0 + 336);
  v20 = *(v0 + 280);

  return MEMORY[0x2821C5FD8](v19, v20, v0 + 56, v16, 1, v11, v18);
}

uint64_t sub_26622AA44()
{

  v1 = *(v0 + 392);

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 232);
  v5 = __swift_project_value_buffer(v4, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_266266968();
  v8 = sub_266266D68();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_266219000, v7, v8, "SuggestionsDonationProvider#donatePlayMediaIntentForSuggestions donating to SiriSuggestions: %@", v9, 0xCu);
    sub_26622858C(v10, &qword_280069710, &qword_266267DC0);
    MEMORY[0x266780880](v10, -1, -1);
    MEMORY[0x266780880](v9, -1, -1);
  }

  v14 = *(v0 + 328);
  v13 = *(v0 + 336);
  v15 = *(v0 + 320);
  v17 = *(v0 + 240);
  v16 = *(v0 + 248);
  v18 = *(v0 + 232);

  (*(v17 + 8))(v16, v18);
  (*(v14 + 8))(v13, v15);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_26622AC98()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_26622B0D8;
  }

  else
  {

    v2 = sub_26622ADB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26622ADB4()
{
  v27 = *(v0 + 473);

  v26 = *(v0 + 160);
  v24 = *(v0 + 168);
  v25 = *(v0 + 153);
  v22 = *(v0 + 136);
  v23 = *(v0 + 137);
  v1 = sub_266266F38();
  if (qword_280069538 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 264);
  v7 = *(v0 + 272);
  v8 = *(v0 + 224);
  v9 = logObject;
  *(v0 + 424) = logObject;
  sub_266266948();
  sub_266266918(v1, &dword_266219000, v9, "donatePlayMediaIntent", 21, 2, v2, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v10 = *(v3 + 8);
  *(v0 + 432) = v10;
  *(v0 + 440) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v2, v4);
  sub_2662666F8();
  sub_2662666E8();
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
  *v5 = v8;
  (*(v7 + 104))(v5, *MEMORY[0x277D60918], v6);
  v13 = qword_2800694C0;
  v14 = v8;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_28006A4D0;
  *(v0 + 80) = sub_266266778();
  *(v0 + 88) = sub_26622F800(&qword_280069828, MEMORY[0x277D60A20], MEMORY[0x277D60A18]);
  *(v0 + 56) = v15;
  *(v0 + 472) = 0;
  *(v0 + 96) = v22;
  *(v0 + 480) = v24;
  *(v0 + 97) = v23;
  *(v0 + 98) = *(v0 + 130);
  *(v0 + 102) = *(v0 + 134);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 113) = v25;
  *(v0 + 114) = *(v0 + 170);
  *(v0 + 118) = *(v0 + 174);
  *(v0 + 120) = v26;
  *(v0 + 128) = *(v0 + 480);
  *(v0 + 129) = v27;

  v16 = sub_266236E3C();
  *(v0 + 448) = v16;
  v17 = swift_task_alloc();
  *(v0 + 456) = v17;
  v18 = *(v12 + 8);
  *v17 = v0;
  v17[1] = sub_26622B32C;
  v19 = *(v0 + 336);
  v20 = *(v0 + 280);

  return MEMORY[0x2821C5FD8](v19, v20, v0 + 56, v16, 1, v11, v18);
}

uint64_t sub_26622B0D8()
{

  v1 = *(v0 + 416);

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 232);
  v5 = __swift_project_value_buffer(v4, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_266266968();
  v8 = sub_266266D68();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_266219000, v7, v8, "SuggestionsDonationProvider#donatePlayMediaIntentForSuggestions donating to SiriSuggestions: %@", v9, 0xCu);
    sub_26622858C(v10, &qword_280069710, &qword_266267DC0);
    MEMORY[0x266780880](v10, -1, -1);
    MEMORY[0x266780880](v9, -1, -1);
  }

  v14 = *(v0 + 328);
  v13 = *(v0 + 336);
  v15 = *(v0 + 320);
  v17 = *(v0 + 240);
  v16 = *(v0 + 248);
  v18 = *(v0 + 232);

  (*(v17 + 8))(v16, v18);
  (*(v14 + 8))(v13, v15);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_26622B32C()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *(*v1 + 272);
  v5 = *(*v1 + 264);
  *(*v1 + 464) = v0;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v6 = sub_26622B604;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
    v6 = sub_26622B4D4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26622B4D4()
{
  v1 = v0[54];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[40];
  v5 = v0[38];
  v6 = v0[36];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_266266F28();
  sub_266266948();
  sub_266266928();
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_26622B604()
{
  v1 = v0[54];
  v2 = v0[38];
  v3 = v0[36];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_266266F28();
  sub_266266948();
  sub_266266928();
  v1(v2, v3);
  v4 = v0[58];
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];
  v8 = __swift_project_value_buffer(v7, static Logger.default);
  swift_beginAccess();
  (*(v6 + 16))(v5, v8, v7);
  v9 = v4;
  v10 = sub_266266968();
  v11 = sub_266266D68();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v4;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_266219000, v10, v11, "SuggestionsDonationProvider#donatePlayMediaIntentForSuggestions donating to SiriSuggestions: %@", v12, 0xCu);
    sub_26622858C(v13, &qword_280069710, &qword_266267DC0);
    MEMORY[0x266780880](v13, -1, -1);
    MEMORY[0x266780880](v12, -1, -1);
  }

  v17 = v0[41];
  v16 = v0[42];
  v18 = v0[40];
  v20 = v0[30];
  v19 = v0[31];
  v21 = v0[29];

  (*(v20 + 8))(v19, v21);
  (*(v17 + 8))(v16, v18);

  v22 = v0[1];

  return v22();
}

uint64_t sub_26622B8AC(uint64_t a1, void *a2)
{
  v23 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069850, &qword_2662681A8);
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v21 - v4;
  v6 = sub_2662665F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_266266448();
  v21 = *(v10 - 8);
  v22 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266266438();
  v25 = a2;
  v26 = a2;
  (*(v7 + 104))(v9, *MEMORY[0x277D557A8], v6);
  sub_266228130(0, &unk_280069CD0, 0x277CD3EC0);
  sub_266266648();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  if (v14)
  {
    sub_266266A78();
  }

  v15 = v24;
  (*(v3 + 16))(v5, v23, v24);
  v16 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v17 = swift_allocObject();
  v18 = v25;
  *(v17 + 16) = v25;
  (*(v3 + 32))(v17 + v16, v5, v15);
  v19 = v18;
  sub_266266428();

  return (*(v21 + 8))(v12, v22);
}

uint64_t sub_26622BBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a1;
  v80 = a3;
  v4 = sub_266265E58();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v70 - v9;
  v11 = sub_266266988();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v81 = (v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v73 = v70 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v74 = v70 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (v70 - v20);
  MEMORY[0x28223BE20](v19);
  v23 = v70 - v22;
  v24 = MEMORY[0x26677F410](a2);
  if (!v25)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v11, static Logger.default);
    swift_beginAccess();
    (*(v12 + 16))(v23, v37, v11);
    v38 = sub_266266968();
    v39 = sub_266266D58();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_266219000, v38, v39, "SuggestionsDonationService#supportsAffinityIntent returning false since there is no localBundleIdentifier", v40, 2u);
      MEMORY[0x266780880](v40, -1, -1);
    }

    (*(v12 + 8))(v23, v11);
    goto LABEL_25;
  }

  v26 = v25;
  v83 = v24;
  v71 = v10;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v72 = v5;
  v82 = v4;
  v27 = __swift_project_value_buffer(v11, static Logger.default);
  swift_beginAccess();
  v28 = *(v12 + 16);
  v76 = v12 + 16;
  v77 = v27;
  v75 = v28;
  v28(v21, v27, v11);

  v29 = sub_266266968();
  v30 = v12;
  v31 = sub_266266D58();

  v32 = os_log_type_enabled(v29, v31);
  v78 = v11;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v84 = v34;
    *v33 = 136315138;
    v35 = v83;
    *(v33 + 4) = sub_26621EAF0(v83, v26, &v84);
    _os_log_impl(&dword_266219000, v29, v31, "SuggestionsDonationService#supportsAffinityIntent for bundleID: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x266780880](v34, -1, -1);
    MEMORY[0x266780880](v33, -1, -1);

    v36 = *(v30 + 8);
    v36(v21, v11);
  }

  else
  {

    v36 = *(v30 + 8);
    v36(v21, v11);
    v35 = v83;
  }

  v41 = sub_266266258();
  v84 = v35;
  v85 = v26;
  MEMORY[0x28223BE20](v41);
  v70[-2] = &v84;
  v42 = sub_266248E28(sub_26622F998, &v70[-4], v41);

  if (v42)
  {

    v43 = v81;
    v44 = v78;
    v75(v81, v77, v78);
    v45 = sub_266266968();
    v46 = sub_266266D58();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_266219000, v45, v46, "SuggestionsDonationService#supportsAffinityIntent returning true for first party app.", v47, 2u);
      MEMORY[0x266780880](v47, -1, -1);
    }

    v36(v43, v44);
    LOBYTE(v84) = 1;
    goto LABEL_26;
  }

  v70[0] = v36;
  v70[1] = v30;
  v48 = *(v79 + 16);
  v49 = v82;
  if (!v48)
  {
LABEL_22:

    v55 = v74;
    v56 = v78;
    v75(v74, v77, v78);
    v57 = sub_266266968();
    v58 = sub_266266D58();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_266219000, v57, v58, "SuggestionsDonationService#supportsAffinityIntent returning false since third party app was not found in installed apps.", v59, 2u);
      MEMORY[0x266780880](v59, -1, -1);
    }

    (v70[0])(v55, v56);
LABEL_25:
    LOBYTE(v84) = 0;
LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069850, &qword_2662681A8);
    return sub_266266C28();
  }

  v50 = *(v72 + 16);
  v81 = (v72 + 8);
  v51 = v79 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
  v52 = *(v72 + 72);
  while (1)
  {
    v50(v8, v51, v49);
    if (sub_266265E38() == v83 && v26 == v53)
    {
      break;
    }

    v54 = sub_2662670D8();

    if (v54)
    {
      goto LABEL_28;
    }

    v49 = v82;
    (*v81)(v8, v82);
    v51 += v52;
    if (!--v48)
    {
      goto LABEL_22;
    }
  }

LABEL_28:
  (*(v72 + 32))(v71, v8, v82);
  v61 = sub_266265E48();
  v84 = 0xD00000000000001BLL;
  v85 = 0x8000000266269080;
  MEMORY[0x28223BE20](v61);
  v70[-2] = &v84;
  v62 = sub_266248E28(sub_26622FB90, &v70[-4], v61);

  v63 = v73;
  v64 = v78;
  v75(v73, v77, v78);

  v65 = sub_266266968();
  v66 = sub_266266D58();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v84 = v68;
    *v67 = 67109378;
    *(v67 + 4) = v62 & 1;
    *(v67 + 8) = 2080;
    v69 = sub_26621EAF0(v83, v26, &v84);

    *(v67 + 10) = v69;
    _os_log_impl(&dword_266219000, v65, v66, "SuggestionsDonationService#supportsAffinityIntent returning: %{BOOL}d for third party app: %s.", v67, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    MEMORY[0x266780880](v68, -1, -1);
    MEMORY[0x266780880](v67, -1, -1);
  }

  else
  {
  }

  (v70[0])(v63, v64);
  LOBYTE(v84) = v62 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069850, &qword_2662681A8);
  sub_266266C28();
  return (*v81)(v71, v82);
}

uint64_t static SuggestionsDonationProvider.donateIntentForEngagement(intent:currentRequestId:suggestionsAPIClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266228320;

  return sub_26622D934(a1, a2, a3, a4);
}

BOOL sub_26622C620(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_266267158();
  MEMORY[0x266780330](a1);
  v4 = sub_266267178();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_26622C6EC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069880, &qword_2662681D8);
  v5 = *(v4 - 8);
  v28 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v8 = sub_266266988();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_266266968();
  v14 = sub_266266D48();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v7;
    v16 = a1;
    v17 = v4;
    v18 = a2;
    v19 = v15;
    *v15 = 0;
    _os_log_impl(&dword_266219000, v13, v14, "SuggestionsDonationService#createExecutionParameters Creating execution parameters for Siri Suggestions", v15, 2u);
    v20 = v19;
    a2 = v18;
    v4 = v17;
    a1 = v16;
    v7 = v27;
    MEMORY[0x266780880](v20, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  (*(v5 + 16))(v7, a1, v4);
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22 = swift_allocObject();
  (*(v5 + 32))(v22 + v21, v7, v4);
  aBlock[4] = sub_26622FA6C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26622D2C8;
  aBlock[3] = &block_descriptor;
  v23 = _Block_copy(aBlock);

  v24 = [a2 performWithCompletion_];
  _Block_release(v23);
  return swift_unknownObjectRelease();
}

void sub_26622CA4C(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_266266988();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v65 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069888, &qword_2662681E0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v65 - v17;
  v19 = sub_266265BF8();
  MEMORY[0x28223BE20](v19);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v75 = a2;
    v23 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069880, &qword_2662681D8);
    sub_266266C18();
    return;
  }

  v66 = v22;
  v24 = v20;
  v67 = v12;
  v69 = v10;
  v70 = v7;
  v71 = a3;
  if (!a1 || (v25 = [a1 tracklist]) == 0)
  {
    v32 = *(v24 + 56);
    v73 = 1;
    v32(v18, 1, 1, v19);
    v68 = 0;
    v72 = 0;
    LODWORD(v66) = 1;
    v29 = v6;
    v33 = v69;
LABEL_11:
    v35 = 0x280069000uLL;
    sub_26622858C(v18, &qword_280069888, &qword_2662681E0);
    v36 = v70;
LABEL_12:
    v37 = v67;
    if (*(v35 + 1320) != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v29, static Logger.default);
    swift_beginAccess();
    (*(v36 + 16))(v37, v38, v29);
    v39 = sub_266266968();
    v40 = sub_266266D68();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v73;
    if (v41)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_266219000, v39, v40, "SuggestionsDonationService#createExecutionParameters Unable to query currently playing song.", v43, 2u);
      MEMORY[0x266780880](v43, -1, -1);

      v44 = 2;
      (*(v36 + 8))(v37, v29);
    }

    else
    {

      (*(v36 + 8))(v37, v29);
      v44 = 2;
    }

    v45 = 2;
    v46 = v66;
    goto LABEL_18;
  }

  v26 = v25;
  v73 = [v25 shuffleType] != 0;
  v27 = [v26 globalItemCount];
  v28 = [v26 playingItemIndexPath];
  v29 = v6;
  v30 = v24;
  if (v28)
  {
    v31 = v28;
    sub_266265BE8();

    (*(v30 + 56))(v16, 0, 1, v19);
  }

  else
  {
    (*(v24 + 56))(v16, 1, 1, v19);
  }

  v33 = v69;
  sub_26622FB10(v16, v18);
  v34 = (*(v30 + 48))(v18, 1, v19);
  v72 = v27;
  v68 = v26;
  if (v34 == 1)
  {
    LODWORD(v66) = 0;
    goto LABEL_11;
  }

  (*(v30 + 32))(v66, v18, v19);
  v59 = [v26 items];
  v60 = sub_266265BD8();
  v61 = [v59 itemAtIndexPath_];

  v62 = [v61 metadataObject];
  if (!v62 || (v63 = [v62 song], v62, !v63))
  {
    (*(v30 + 8))(v66, v19);
    LODWORD(v66) = 0;
    v36 = v70;
    v35 = 0x280069000;
    goto LABEL_12;
  }

  v64 = [v63 isDisliked];
  v44 = [v63 isFavorite];

  v45 = v64;
  (*(v30 + 8))(v66, v19);
  v46 = 0;
  v36 = v70;
  v42 = v73;
  v35 = 0x280069000;
LABEL_18:
  if (*(v35 + 1320) != -1)
  {
    swift_once();
  }

  v47 = __swift_project_value_buffer(v29, static Logger.default);
  swift_beginAccess();
  (*(v36 + 16))(v33, v47, v29);
  v86 = 1;
  v83 = v46;
  v48 = sub_266266968();
  v49 = sub_266266D48();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = v45;
    v52 = swift_slowAlloc();
    v74 = v52;
    *v50 = 136315138;
    LOBYTE(v75) = v51;
    BYTE1(v75) = v44;
    *(&v75 + 2) = v87;
    HIWORD(v75) = v88;
    v76 = 0;
    v77 = v86;
    v78 = v42;
    v79 = v84;
    v80 = v85;
    v81 = v72;
    v82 = v83;
    v53 = sub_266266A68();
    v70 = v29;
    v73 = v42;
    v55 = v44;
    v56 = sub_26621EAF0(v53, v54, &v74);

    *(v50 + 4) = v56;
    _os_log_impl(&dword_266219000, v48, v49, "SuggestionsDonationService#createExecutionParameters Created execution parameters: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    v57 = v52;
    v45 = v51;
    MEMORY[0x266780880](v57, -1, -1);
    MEMORY[0x266780880](v50, -1, -1);

    LOBYTE(v42) = v73;
    (*(v36 + 8))(v33, v70);
  }

  else
  {

    (*(v36 + 8))(v33, v29);
    v55 = v44;
  }

  v58 = v68;
  LOBYTE(v75) = v45;
  BYTE1(v75) = v55;
  *(&v75 + 2) = v87;
  HIWORD(v75) = v88;
  v76 = 0;
  v77 = v86;
  v78 = v42;
  v79 = v84;
  v80 = v85;
  v81 = v72;
  v82 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069880, &qword_2662681D8);
  sub_266266C28();
}

void sub_26622D2C8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_26622D354(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266228640;

  return static SuggestionsDonationProvider.donatePlayMediaIntentForSuggestions(intent:)(a1);
}

uint64_t sub_26622D3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266228640;

  return sub_26622D934(a1, a2, a3, a4);
}

unint64_t sub_26622D4B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069898, qword_2662681F0);
    v3 = sub_266267098();
    v4 = a1 + 32;

    while (1)
    {
      sub_266228524(v4, v13, &qword_2800696F8, &qword_266268008);
      result = sub_2662352F0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_26622FB80(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26622D5F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069838, &qword_266268190);
    v3 = sub_266267098();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_266235334(v5);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26622D6E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069848, &qword_2662681A0);
    v3 = sub_266267018();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_266267158();
      MEMORY[0x266780330](v10);
      result = sub_266267178();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_26622D820(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069840, &qword_266268198);
    v3 = sub_266267098();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2662353BC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26622D934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v5 = sub_266266988();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v6 = sub_266266958();
  v4[29] = v6;
  v4[30] = *(v6 - 8);
  v4[31] = swift_task_alloc();
  v7 = sub_266266858();
  v4[32] = v7;
  v4[33] = *(v7 - 8);
  v4[34] = swift_task_alloc();
  v8 = sub_266265F58();
  v4[35] = v8;
  v4[36] = *(v8 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v9 = sub_266265F08();
  v4[39] = v9;
  v4[40] = *(v9 - 8);
  v4[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069820, &qword_266268108);
  v4[42] = swift_task_alloc();
  v10 = sub_266265B98();
  v4[43] = v10;
  v4[44] = *(v10 - 8);
  v4[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26622DC38, 0, 0);
}

uint64_t sub_26622DC38()
{
  v95 = v0;
  if (!*(v0 + 160))
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v5 = (v0 + 200);
    v15 = *(v0 + 200);
    v7 = v0 + 184;
    v16 = *(v0 + 184);
    v9 = (v0 + 176);
    v17 = *(v0 + 176);
    v18 = __swift_project_value_buffer(v17, static Logger.default);
    swift_beginAccess();
    (*(v16 + 16))(v15, v18, v17);
    v11 = sub_266266968();
    v12 = sub_266266D68();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SuggestionsDonationProvider#donateIntentForEngagement Unable to get requestId. Not donating engagement to SiriSuggestions";
    goto LABEL_11;
  }

  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 336);
  sub_266265B88();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26622858C(*(v0 + 336), &qword_280069820, &qword_266268108);
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v5 = (v0 + 208);
    v4 = *(v0 + 208);
    v7 = v0 + 184;
    v6 = *(v0 + 184);
    v9 = (v0 + 176);
    v8 = *(v0 + 176);
    v10 = __swift_project_value_buffer(v8, static Logger.default);
    swift_beginAccess();
    (*(v6 + 16))(v4, v10, v8);
    v11 = sub_266266968();
    v12 = sub_266266D68();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SuggestionsDonationProvider#donateIntentForEngagement Unable to convert requestId to UUID. Not donating engagement to SiriSuggestions";
LABEL_11:
    _os_log_impl(&dword_266219000, v11, v12, v14, v13, 2u);
    MEMORY[0x266780880](v13, -1, -1);
LABEL_12:

LABEL_13:
    (*(*v7 + 8))(*v5, *v9);

    v19 = *(v0 + 8);

    return v19();
  }

  (*(*(v0 + 352) + 32))(*(v0 + 360), *(v0 + 336), *(v0 + 344));
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (!v26)
    {
LABEL_50:
      v7 = v0 + 352;
      v9 = (v0 + 344);
      v5 = (v0 + 360);
      if (qword_280069528 != -1)
      {
        swift_once();
      }

      v76 = *(v0 + 216);
      v77 = *(v0 + 176);
      v78 = *(v0 + 184);
      v79 = __swift_project_value_buffer(v77, static Logger.default);
      swift_beginAccess();
      (*(v78 + 16))(v76, v79, v77);
      v80 = sub_266266968();
      v81 = sub_266266D48();
      v82 = os_log_type_enabled(v80, v81);
      v83 = *(v0 + 216);
      v84 = *(v0 + 176);
      v85 = *(v0 + 184);
      if (v82)
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_266219000, v80, v81, "SuggestionsDonationProvider#donateIntentForEngagement Unable to match intent to a SiriSuggestion. Not donating an engagement", v86, 2u);
        MEMORY[0x266780880](v86, -1, -1);
      }

      (*(v85 + 8))(v83, v84);
      goto LABEL_13;
    }

    v27 = v26;
    v28 = *(v0 + 144);
    v29 = [v27 mediaItems];
    if (!v29)
    {
      goto LABEL_48;
    }

    v24 = v29;
    sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
    v30 = sub_266266BB8();

    if (v30 >> 62)
    {
      if (sub_266267078())
      {
LABEL_25:
        if ((v30 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x266780220](0, v30);
        }

        else
        {
          if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_76;
          }

          v31 = *(v30 + 32);
        }

        v24 = v31;

        v32 = [v24 identifier];
        if (v32)
        {
          v33 = v32;
          sub_266266A58();

          sub_266265F68();
          swift_allocObject();
          if (sub_266265F78())
          {
            v35 = *(v0 + 320);
            v34 = *(v0 + 328);
            v36 = *(v0 + 312);
            v37 = *(v0 + 296);
            v38 = *(v0 + 288);
            v39 = *(v0 + 280);
            sub_266265F18();
            sub_266265EF8();
            (*(v35 + 8))(v34, v36);
            (*(v38 + 104))(v37, *MEMORY[0x277D555F0], v39);
            sub_26622F800(&qword_280069830, MEMORY[0x277D55618], MEMORY[0x277D55628]);
            sub_266266B78();
            sub_266266B78();
            v41 = *(v0 + 296);
            v40 = *(v0 + 304);
            v43 = *(v0 + 280);
            v42 = *(v0 + 288);
            if (*(v0 + 112) == *(v0 + 128) && *(v0 + 120) == *(v0 + 136))
            {
              v44 = *(v42 + 8);
              v44(*(v0 + 296), *(v0 + 280));
              v44(v40, v43);

LABEL_56:
              if (qword_280069550 != -1)
              {
                swift_once();
              }

              v89 = *(v0 + 144);
              v45 = sub_26624E0FC(word_28006A730);
              v47 = v90;

              goto LABEL_38;
            }

            v87 = sub_2662670D8();
            v88 = *(v42 + 8);
            v88(v41, v43);
            v88(v40, v43);

            if (v87)
            {
              goto LABEL_56;
            }
          }
        }

        if ([v24 type] != 20 && objc_msgSend(v24, sel_type) != 6)
        {
          if (qword_2800694D8 != -1)
          {
            swift_once();
          }

          if (!sub_26622C620([v24 type], qword_28006A4F0))
          {

            goto LABEL_49;
          }

          if (qword_280069558 != -1)
          {
            swift_once();
          }

          v91 = *(v0 + 144);
          v92 = word_28006A800;
LABEL_64:
          v45 = sub_26624E0FC(v92);
          v47 = v93;

          goto LABEL_38;
        }

        if (qword_280069560 == -1)
        {
LABEL_63:
          v91 = *(v0 + 144);
          v92 = word_28006A8D0;
          goto LABEL_64;
        }

LABEL_76:
        swift_once();
        goto LABEL_63;
      }
    }

    else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    v24 = *(v0 + 144);

    goto LABEL_49;
  }

  v22 = v21;
  v23 = *(v0 + 144);
  if ([v22 affinityType] != 1)
  {
    if ([v22 affinityType] == 2)
    {
      if (qword_280069548 != -1)
      {
        swift_once();
      }

      v24 = *(v0 + 144);
      v25 = word_28006A660;
      goto LABEL_37;
    }

LABEL_48:
    v24 = *(v0 + 144);
LABEL_49:

    goto LABEL_50;
  }

  if (qword_280069540 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 144);
  v25 = word_28006A590;
LABEL_37:
  v45 = sub_26624E0FC(v25);
  v47 = v46;
LABEL_38:

  v48 = MEMORY[0x277D84F90];
  sub_26622D820(MEMORY[0x277D84F90]);
  sub_266266848();
  v49 = sub_266266F38();
  if (qword_280069538 != -1)
  {
    swift_once();
  }

  v51 = *(v0 + 240);
  v50 = *(v0 + 248);
  v52 = *(v0 + 232);
  v53 = logObject;
  *(v0 + 368) = logObject;
  sub_266266948();
  sub_266266918(v49, &dword_266219000, v53, "donateIntentForEngagement", 25, 2, v50, " enableTelemetry=YES ", 21, 2, v48);
  v54 = *(v51 + 8);
  *(v0 + 376) = v54;
  *(v0 + 384) = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v54(v50, v52);
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v55 = *(v0 + 224);
  v56 = *(v0 + 176);
  v57 = *(v0 + 184);
  v58 = __swift_project_value_buffer(v56, static Logger.default);
  *(v0 + 392) = v58;
  swift_beginAccess();
  v59 = *(v57 + 16);
  *(v0 + 400) = v59;
  *(v0 + 408) = (v57 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v59(v55, v58, v56);

  v60 = sub_266266968();
  v61 = sub_266266D48();

  v62 = os_log_type_enabled(v60, v61);
  v63 = *(v0 + 224);
  v64 = *(v0 + 176);
  v65 = *(v0 + 184);
  if (v62)
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v94 = v67;
    *v66 = 136315138;
    v68 = sub_26621EAF0(v45, v47, &v94);

    *(v66 + 4) = v68;
    _os_log_impl(&dword_266219000, v60, v61, "Submitting engagement for actionId: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    MEMORY[0x266780880](v67, -1, -1);
    MEMORY[0x266780880](v66, -1, -1);
  }

  else
  {
  }

  v69 = *(v65 + 8);
  v69(v63, v64);
  *(v0 + 416) = v69;
  v70 = *(v0 + 168);
  v71 = v70[3];
  v72 = v70[4];
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v73 = swift_task_alloc();
  *(v0 + 424) = v73;
  *v73 = v0;
  v73[1] = sub_26622E8F0;
  v74 = *(v0 + 360);
  v75 = *(v0 + 272);

  return MEMORY[0x2821C6008](v75, v74, v71, v72);
}

uint64_t sub_26622E8F0()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_26622EB8C;
  }

  else
  {
    v2 = sub_26622EA04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26622EA04(uint64_t a1)
{
  v2 = v1[47];
  v4 = v1[33];
  v3 = v1[34];
  v6 = v1[31];
  v5 = v1[32];
  v7 = v1[29];
  sub_266266F28();
  sub_266266948();
  sub_266266928();
  v2(v6, v7);
  (*(v4 + 8))(v3, v5);
  (*(v1[44] + 8))(v1[45], v1[43]);

  v8 = v1[1];

  return v8();
}

uint64_t sub_26622EB8C(uint64_t a1)
{
  v2 = v1[54];
  v26 = v1[50];
  v25 = v1[49];
  v3 = v1[47];
  v4 = v1[31];
  v5 = v1[29];
  v6 = v1[24];
  v7 = v1[22];
  sub_266266F28();
  sub_266266948();
  sub_266266928();
  v3(v4, v5);
  v26(v6, v25, v7);
  v8 = v2;
  v9 = sub_266266968();
  v10 = sub_266266D68();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v1[54];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_266219000, v9, v10, "SuggestionsDonationProvider#donateIntentForEngagement Error donating engagement to SiriSuggestions: %@", v12, 0xCu);
    sub_26622858C(v13, &qword_280069710, &qword_266267DC0);
    MEMORY[0x266780880](v13, -1, -1);
    MEMORY[0x266780880](v12, -1, -1);
  }

  v16 = v1[54];
  v17 = v1[52];
  v19 = v1[33];
  v18 = v1[34];
  v20 = v1[32];
  v21 = v1[24];
  v22 = v1[22];

  v17(v21, v22);
  (*(v19 + 8))(v18, v20);
  (*(v1[44] + 8))(v1[45], v1[43]);

  v23 = v1[1];

  return v23();
}

unint64_t sub_26622EE50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069890, &qword_2662681E8);
    v3 = sub_266267098();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2662353BC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26622EF54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069858, &unk_2662681B0);
    v3 = sub_266267098();
    v4 = a1 + 32;

    while (1)
    {
      sub_266228524(v4, &v13, &qword_280069860, &qword_2662684F0);
      v5 = v13;
      v6 = v14;
      result = sub_2662353BC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26622F9B8(v15, (v3[7] + 48 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 64;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26622F088(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_266266958();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26622F148, 0, 0);
}

uint64_t sub_26622F148(uint64_t a1)
{
  v2 = sub_266266F38();
  if (qword_280069538 != -1)
  {
    swift_once();
  }

  v4 = v1[22];
  v3 = v1[23];
  v5 = v1[20];
  v6 = v1[21];
  v7 = logObject;
  v1[24] = logObject;
  sub_266266948();
  sub_266266918(v2, &dword_266219000, v7, "createParametersForDonation", 27, 2, v3, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v8 = *(v4 + 8);
  v1[25] = v8;
  v1[26] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v6);
  [v5 setTracklistRange_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069868, &unk_2662681C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266267DB0;
  *(inited + 32) = sub_266266A58();
  *(inited + 40) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800695D8, &qword_266267E40);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2662680F0;
  *(v11 + 32) = sub_266266A58();
  *(v11 + 40) = v12;
  *(v11 + 48) = sub_266266A58();
  *(v11 + 56) = v13;
  *(v11 + 64) = sub_266266A58();
  *(v11 + 72) = v14;
  v15 = sub_266266B98();

  v16 = [objc_opt_self() propertySetWithProperties_];

  *(inited + 48) = v16;
  sub_26622EE50(inited);
  swift_setDeallocating();
  sub_26622858C(inited + 32, &qword_280069870, &qword_2662681D0);
  v17 = objc_allocWithZone(MEMORY[0x277CD6018]);
  sub_266228130(0, &qword_280069878, 0x277CD6018);
  v18 = sub_266266A28();

  v19 = [v17 initWithProperties:0 relationships:v18];
  v1[27] = v19;

  v20 = v19;
  [v5 setPlayingItemProperties_];
  [v5 setQueueItemProperties_];

  v21 = swift_task_alloc();
  v1[28] = v21;
  *(v21 + 16) = v5;
  v22 = swift_task_alloc();
  v1[29] = v22;
  *v22 = v1;
  v22[1] = sub_26622F4FC;

  return MEMORY[0x2822008A0](v1 + 9, 0, 0, 0xD000000000000020, 0x80000002662690C0, sub_26622F9D0, v21, &type metadata for AudioSuggestionsExecutionParameters);
}

uint64_t sub_26622F4FC()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_26622F714;
  }

  else
  {
    v2 = sub_26622F610;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26622F610()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);

  v5 = *(v0 + 88);
  *(v0 + 112) = *(v0 + 72);
  *(v0 + 128) = v5;
  *(v0 + 144) = *(v0 + 104);
  sub_266266F28();
  sub_266266948();
  sub_266266928();
  v1(v2, v3);
  v6 = *(v0 + 112);
  v7 = *(v0 + 128);
  *(v4 + 32) = *(v0 + 144);
  *v4 = v6;
  *(v4 + 16) = v7;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26622F714()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);

  sub_266266F28();
  sub_266266948();
  sub_266266928();
  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26622F800(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26622F848()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069850, &qword_2662681A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26622F918(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069850, &qword_2662681A8) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_26622BBE4(a1, v4, v5);
}

_OWORD *sub_26622F9B8(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_26622F9D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069880, &qword_2662681D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_26622FA6C(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069880, &qword_2662681D8) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_26622CA4C(a1, a2, v6);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26622FB10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069888, &qword_2662681E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *sub_26622FB80(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26622FBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  return MEMORY[0x2822009F8](sub_26622FBD8, 0, 0);
}

uint64_t sub_26622FBD8()
{
  v13 = v0[16];
  sub_2662666F8();
  sub_2662666E8();
  v1 = v0[5];
  v2 = v0[6];
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v0[10] = v1;
  v0[11] = *(v2 + 16);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(*(v1 - 8) + 16))(boxed_opaque_existential_1, v3, v1);
  v12 = (*(v13 + 16) + **(v13 + 16));
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_26622FD68;
  v6 = v0[16];
  v7 = v0[14];
  v8 = v0[15];
  v10 = v0[12];
  v9 = v0[13];

  return v12(v10, v9, v7, v0 + 7, v8, v6);
}

uint64_t sub_26622FD68()
{
  v1 = *v0;
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  v2 = *(v4 + 8);

  return v2();
}

uint64_t *FirstPartyMusicSubscriber.__allocating_init(subscriptionProvider:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_266230880(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
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

void *FirstPartyMusicSubscriber.init(subscriptionProvider:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_266230810(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t FirstPartyMusicSubscriber.filter(suggestion:environment:)()
{
  v1[5] = v0;
  v2 = sub_266266988();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_266266488();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_266266598();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v5 = sub_2662663F8();
  v1[15] = v5;
  v1[16] = *(v5 - 8);
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2662301D0, 0, 0);
}

uint64_t sub_2662301D0()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  __swift_project_boxed_opaque_existential_1((v0[5] + 16), *(v0[5] + 40));
  sub_2662664F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800698A0, &qword_266268278);
  v4 = *(v2 + 72);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_266268250;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x277D55780], v3);
  v8(v7 + v4, *MEMORY[0x277D55778], v3);
  sub_2662663E8();
  LOBYTE(v4) = sub_26621CAFC(v1, v6);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v2 + 8))(v1, v3);
  if (v4 & 1) != 0 || (v10 = v0[10], v9 = v0[11], v11 = v0[9], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800698A8, &unk_266268280), v12 = *(v10 + 72), v13 = (*(v10 + 80) + 32) & ~*(v10 + 80), v14 = swift_allocObject(), *(v14 + 16) = xmmword_266268260, v15 = v14 + v13, v16 = *(v10 + 104), v16(v15, *MEMORY[0x277D556F8], v11), v16(v15 + v12, *MEMORY[0x277D55708], v11), v16(v15 + 2 * v12, *MEMORY[0x277D556F0], v11), v16(v15 + 3 * v12, *MEMORY[0x277D55700], v11), v17 = v9, sub_2662663D8(), LOBYTE(v9) = sub_26621CB44(v9, v14), swift_setDeallocating(), swift_arrayDestroy(), swift_deallocClassInstance(), (*(v10 + 8))(v17, v11), (v9))
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];
    v21 = __swift_project_value_buffer(v20, static Logger.default);
    swift_beginAccess();
    (*(v19 + 16))(v18, v21, v20);
    v22 = sub_266266968();
    v23 = sub_266266D58();
    v24 = os_log_type_enabled(v22, v23);
    v26 = v0[16];
    v25 = v0[17];
    v27 = v0[15];
    v29 = v0[7];
    v28 = v0[8];
    v30 = v0[6];
    if (v24)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_266219000, v22, v23, "Filtering out suggestion because Apple Music subscription type/status is either unknown or notSubscribed", v31, 2u);
      MEMORY[0x266780880](v31, -1, -1);
    }

    (*(v29 + 8))(v28, v30);
    (*(v26 + 8))(v25, v27);
    v32 = 0;
  }

  else
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    v32 = 1;
  }

  v33 = v0[1];

  return v33(v32);
}