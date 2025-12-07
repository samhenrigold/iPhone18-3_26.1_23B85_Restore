uint64_t sub_26637B7D4(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(__int128 *), uint64_t a6)
{
  v90 = a6;
  v84 = a1;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v79 = &v76[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v80 = &v76[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v78 = &v76[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v83 = &v76[-v19];
  MEMORY[0x28223BE20](v18);
  v21 = &v76[-v20];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v85 = a4;
  v89 = a5;
  v22 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v23 = *(v11 + 16);
  v88 = v22;
  v87 = v23;
  v86 = v11 + 16;
  v23(v21, v22, v10);
  v24 = sub_2664DFE18();
  v25 = sub_2664E06E8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_26629C000, v24, v25, "LocalPlaybackHelper#processQueue Attempting to play local queue", v26, 2u);
    MEMORY[0x266784AD0](v26, -1, -1);
  }

  v27 = *(v11 + 8);
  v82 = v11 + 8;
  v81 = v27;
  v27(v21, v10);
  v28 = __swift_project_boxed_opaque_existential_1((a2 + 96), *(a2 + 120));
  v29 = *(a3 + 8);
  v77 = *(a3 + 28);
  v30 = *(a3 + 32);
  v31 = *(a3 + 40);
  v33 = *(a3 + 48);
  v32 = *(a3 + 56);
  v97[3] = &type metadata for LocalPlaybackHelper.QueueAttributes;
  v97[4] = &off_2877EB8A0;
  v34 = swift_allocObject();
  v97[0] = v34;
  v35 = *(a3 + 48);
  *(v34 + 48) = *(a3 + 32);
  *(v34 + 64) = v35;
  *(v34 + 80) = *(a3 + 64);
  *(v34 + 96) = *(a3 + 80);
  v36 = *(a3 + 16);
  *(v34 + 16) = *a3;
  *(v34 + 32) = v36;
  sub_26637C7BC(v28, &v91);
  sub_2662A5550(v97, v96);
  v37 = swift_allocObject();
  v38 = v94;
  *(v37 + 48) = v93;
  *(v37 + 64) = v38;
  *(v37 + 80) = v95;
  v39 = v92;
  *(v37 + 16) = v91;
  *(v37 + 32) = v39;
  *(v37 + 96) = v30;
  *(v37 + 104) = v31;
  *(v37 + 112) = v33;
  *(v37 + 120) = v32;
  v40 = v89;
  v41 = v90;
  *(v37 + 128) = v89;
  *(v37 + 136) = v41;
  sub_2662A8618(v96, v37 + 144);
  v42 = v85;
  *(v37 + 184) = v29;
  *(v37 + 192) = v42;
  *(v37 + 200) = 1;
  v43 = v84;
  if (!v84)
  {
    v87(v83, v88, v10);
    sub_26637C270(a3, &v91);

    v51 = v29;
    v52 = v42;

    v53 = sub_2664DFE18();
    v54 = sub_2664E06D8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_26629C000, v53, v54, "PlaybackStarter#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v55, 2u);
      MEMORY[0x266784AD0](v55, -1, -1);
    }

    v56 = v81;
    v81(v83, v10);
    v57 = v79;
    v87(v79, v88, v10);
    v58 = sub_2664DFE18();
    v59 = sub_2664E06B8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = v56;
      v62 = swift_slowAlloc();
      *&v91 = v62;
      *v60 = 134218498;
      *(v60 + 4) = 15;
      *(v60 + 12) = 2048;
      *(v60 + 14) = 13;
      *(v60 + 22) = 2080;
      *(v60 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v91);
      _os_log_impl(&dword_26629C000, v58, v59, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v60, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x266784AD0](v62, -1, -1);
      MEMORY[0x266784AD0](v60, -1, -1);

      v61(v57, v10);
    }

    else
    {

      v56(v57, v10);
    }

    v91 = xmmword_2664E8DA0;
    *&v92 = 0xE900000000000074;
    BYTE8(v92) = 1;
    v89(&v91);
    goto LABEL_20;
  }

  sub_26637C270(a3, &v91);

  v44 = v29;
  v45 = v42;
  v46 = v43;

  [v46 mutableCopy];
  sub_2664E09E8();
  swift_unknownObjectRelease();
  sub_2662C1744(0, &qword_280072C48, 0x277D27850);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v63 = v78;
    v87(v78, v88, v10);
    v64 = sub_2664DFE18();
    v65 = sub_2664E06D8();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_26629C000, v64, v65, "Guaranteed cast to mutable RemoteControlDestination failed", v66, 2u);
      MEMORY[0x266784AD0](v66, -1, -1);
    }

    v67 = v81;
    v81(v63, v10);
    v68 = v80;
    v87(v80, v88, v10);
    v69 = sub_2664DFE18();
    v70 = sub_2664E06B8();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v91 = v72;
      *v71 = 134218498;
      *(v71 + 4) = 15;
      *(v71 + 12) = 2048;
      *(v71 + 14) = 22;
      *(v71 + 22) = 2080;
      *(v71 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F5AE0, &v91);
      _os_log_impl(&dword_26629C000, v69, v70, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v71, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      v73 = v72;
      v40 = v89;
      MEMORY[0x266784AD0](v73, -1, -1);
      MEMORY[0x266784AD0](v71, -1, -1);

      v74 = v80;
    }

    else
    {

      v74 = v68;
    }

    v67(v74, v10);
    v91 = xmmword_2664E8D90;
    *&v92 = 0x80000002664F5AE0;
    BYTE8(v92) = 1;
    v40(&v91);

LABEL_20:

    sub_2662D2F30(v91, *(&v91 + 1), v92, SBYTE8(v92));
    return __swift_destroy_boxed_opaque_existential_1Tm(v97);
  }

  v47 = *&v96[0];
  [*&v96[0] setSingleGroup_];
  v48 = v44;
  v49 = v46;

  v50 = v47;
  sub_2664ADBE8(v49, v45, v49, v48, sub_26637F70C, v37, v50, v77);

  return __swift_destroy_boxed_opaque_existential_1Tm(v97);
}

uint64_t sub_26637C1EC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_26637C354(uint64_t a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  v9 = *(a1 + 48);
  if (v9 > 3)
  {
    switch(v9)
    {
      case 4u:
        v11 = 0;
        v10 = 7;
        goto LABEL_19;
      case 8u:
        v11 = 0;
        v10 = 3;
        goto LABEL_19;
      case 9u:
        v11 = 0;
        v10 = 5;
        goto LABEL_19;
    }
  }

  else
  {
    switch(v9)
    {
      case 1u:
        v11 = 0;
        v10 = 6;
        goto LABEL_19;
      case 2u:
        v11 = 0;
        v10 = 1;
        goto LABEL_19;
      case 3u:
        v10 = 0;
        v11 = 0;
        goto LABEL_19;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v8, v12, v2);

  v13 = sub_2664DFE18();
  v14 = sub_2664E06D8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v32 = v6;
    v17 = v16;
    v36[0] = v16;
    *v15 = 136446210;
    LOBYTE(v33) = *(a1 + 48);
    v18 = PlaybackItem.Scheme.rawValue.getter();
    v20 = sub_2662A320C(v18, v19, v36);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_26629C000, v13, v14, "LocalPlaybackHelper#getGroupingForScheme Unknown scheme for grouping: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v21 = v17;
    v6 = v32;
    MEMORY[0x266784AD0](v21, -1, -1);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  (*(v3 + 8))(v8, v2);
  v10 = 0;
  v11 = 1;
LABEL_19:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v22, v2);
  v23 = sub_2664DFE18();
  v24 = sub_2664E06E8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v6;
    v33 = v10;
    v27 = v26;
    v35 = v26;
    *v25 = 136446210;
    v34 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F08, &qword_2664E8E18);
    v28 = sub_2664E0938();
    v30 = sub_2662A320C(v28, v29, &v35);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_26629C000, v23, v24, "LocalPlaybackHelper#getGroupingForScheme returning grouping:%{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x266784AD0](v27, -1, -1);
    MEMORY[0x266784AD0](v25, -1, -1);

    (*(v3 + 8))(v32, v2);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return v10;
}

void sub_26637C81C(void *a1, unint64_t a2, uint64_t a3, void *a4, int a5)
{
  v73 = a5;
  v75 = a4;
  v74 = a1;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  *&v76 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v72 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v72 - v14;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v17 = *(v8 + 16);
  v79 = v8 + 16;
  v80 = v16;
  v78 = v17;
  v17(v15, v16, v7);

  v18 = sub_2664DFE18();
  v19 = sub_2664E06C8();

  v20 = os_log_type_enabled(v18, v19);
  v77 = a3;
  if (v20)
  {
    v21 = v8;
    v22 = v13;
    v23 = v7;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v82[0] = v25;
    *v24 = 136315138;
    v26 = v74;
    *(v24 + 4) = sub_2662A320C(v74, a2, v82);
    _os_log_impl(&dword_26629C000, v18, v19, "LocalPlaybackHelper#makeTransportableIDQueryFromDeviceID with deviceID: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v27 = v25;
    a3 = v77;
    MEMORY[0x266784AD0](v27, -1, -1);
    v28 = v24;
    v7 = v23;
    v13 = v22;
    v8 = v21;
    MEMORY[0x266784AD0](v28, -1, -1);

    v81 = *(v21 + 8);
    v81(v15, v7);
    if (a3 > 3)
    {
LABEL_5:
      if (a3 == 4)
      {
        v29 = MEMORY[0x277CD5718];
        goto LABEL_19;
      }

      if (a3 != 5)
      {
        if (a3 == 7)
        {
          v29 = MEMORY[0x277CD57F8];
          goto LABEL_19;
        }

LABEL_16:
        v29 = MEMORY[0x277CD5940];
        goto LABEL_19;
      }

      v29 = MEMORY[0x277CD5758];
      goto LABEL_19;
    }
  }

  else
  {

    v81 = *(v8 + 8);
    v81(v15, v7);
    v26 = v74;
    if (a3 > 3)
    {
      goto LABEL_5;
    }
  }

  if ((a3 - 2) < 2)
  {
    v29 = MEMORY[0x277CD56C0];
    goto LABEL_19;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v29 = MEMORY[0x277CD56C8];
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v29 = MEMORY[0x277CD57D8];
LABEL_19:
  v30 = *v29;
  v82[0] = v26;
  v82[1] = a2;

  v31 = v30;
  v32 = sub_2664E0DB8();
  v33 = [objc_opt_self() predicateWithValue:v32 forProperty:v31];
  swift_unknownObjectRelease();

  v78(v13, v80, v7);
  v34 = v33;
  v35 = sub_2664DFE18();
  v36 = sub_2664E06E8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v82[0] = v74;
    *v37 = 136315138;
    v38 = v34;
    v39 = v8;
    v40 = v7;
    v41 = [v38 description];
    v42 = v34;
    v43 = sub_2664E02C8();
    v72 = v13;
    v45 = v44;

    v7 = v40;
    v8 = v39;
    v46 = v43;
    v34 = v42;
    v47 = sub_2662A320C(v46, v45, v82);

    *(v37 + 4) = v47;
    _os_log_impl(&dword_26629C000, v35, v36, "LocalPlaybackHelper#makeTransportableIDQueryFromDeviceID with predicate: %s", v37, 0xCu);
    v48 = v74;
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    MEMORY[0x266784AD0](v48, -1, -1);
    MEMORY[0x266784AD0](v37, -1, -1);

    v49 = v72;
  }

  else
  {

    v49 = v13;
  }

  v81(v49, v7);
  v50 = v76;
  v51 = [objc_opt_self() deviceMediaLibraryWithUserIdentity_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728C8, &qword_2664E4F30);
  v52 = swift_allocObject();
  v76 = xmmword_2664E36F0;
  *(v52 + 16) = xmmword_2664E36F0;
  *(v52 + 56) = sub_2662C1744(0, &qword_280072508, 0x277CD5E30);
  *(v52 + 32) = v34;
  v53 = sub_2664E0488();

  v54 = [objc_opt_self() predicateMatchingPredicates_];

  if (v54)
  {
    v75 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EE0, &qword_2664E8E08);
    inited = swift_initStackObject();
    *(inited + 16) = v76;
    v82[0] = v54;
    sub_2662C1744(0, &qword_280072EE8, 0x277CD5E28);
    sub_26637F50C();
    *&v76 = v54;
    sub_2664E0AB8();
    sub_26639EC94(inited);
    swift_setDeallocating();
    sub_266350284(inited + 32);
    v56 = objc_allocWithZone(MEMORY[0x277CD5E38]);
    v57 = v51;
    v58 = sub_2664E05F8();

    v59 = [v56 initWithFilterPredicates:v58 library:v57];

    if ((v73 & 1) != 0 && v59)
    {
      [v59 setIgnoreSystemFilterPredicates_];
      [v59 setShouldIncludeNonLibraryEntities_];
    }

    [v59 setGroupingType_];
    v78(v50, v80, v7);
    v60 = v59;
    v61 = sub_2664DFE18();
    v62 = sub_2664E06E8();

    if (os_log_type_enabled(v61, v62))
    {
      v79 = v8;
      v80 = v7;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v82[0] = v64;
      *v63 = 136446210;
      if (v59)
      {
        v65 = [v60 description];
        v66 = sub_2664E02C8();
        v68 = v67;
      }

      else
      {
        v68 = 0xE300000000000000;
        v66 = 7104878;
      }

      v71 = sub_2662A320C(v66, v68, v82);

      *(v63 + 4) = v71;
      _os_log_impl(&dword_26629C000, v61, v62, "LocalPlaybackHelper#makeTransportableIDQueryFromDeviceID returning query: %{public}s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      MEMORY[0x266784AD0](v64, -1, -1);
      MEMORY[0x266784AD0](v63, -1, -1);

      v70 = v80;
      v69 = v50;
    }

    else
    {

      v69 = v50;
      v70 = v7;
    }

    v81(v69, v70);
  }

  else
  {
    __break(1u);
  }
}

void sub_26637D108(uint64_t a1, uint64_t a2)
{
  v131 = a2;
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v136 = v3;
  v137 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v133 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v130 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v132 = &v130 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v130 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v130 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v130 - v18;
  v20 = *(a1 + 48);
  LODWORD(v21) = *(a1 + 49);
  v142 = v20;
  if (PlaybackItem.Scheme.rawValue.getter() == 0x656D706D61732D78 && v22 == 0xED00006D65746964)
  {

    goto LABEL_5;
  }

  v23 = sub_2664E0D88();

  if (v23)
  {
LABEL_5:
    v24 = 1684630645;
    if (v21 > 3)
    {
      v25 = v136;
    }

    else
    {
      v25 = v136;
      if (!v21)
      {

        v25 = v136;
        v27 = *(a1 + 56);
        v26 = *(a1 + 64);
LABEL_45:
        v43 = v137;
        goto LABEL_46;
      }
    }

    v42 = sub_2664E0D88();

    if ((v42 & 1) == 0)
    {
      if (v21 == 4)
      {

        v27 = *(a1 + 56);
        v26 = *(a1 + 64);
        v43 = v137;
        goto LABEL_22;
      }

      v44 = sub_2664E0D88();

      if ((v44 & 1) == 0)
      {
        v46 = 0x636E797369726973;
        if (qword_280F914E8 == -1)
        {
LABEL_25:
          v47 = __swift_project_value_buffer(v25, qword_280F914F0);
          swift_beginAccess();
          v48 = v137;
          v135 = *(v137 + 16);
          v135(v9, v47, v25);
          v49 = sub_2664DFE18();
          v50 = sub_2664E06D8();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v140 = v52;
            v53 = 0xE800000000000000;
            *v51 = 136446210;
            v54 = 0x62696C656C6F6877;
            v55 = 0xEC00000079726172;
            if (v21 != 6)
            {
              v54 = 0x6E776F6E6B6E75;
              v55 = 0xE700000000000000;
            }

            v56 = 0xE400000000000000;
            v57 = 0x6867696C746F7073;
            if (v21 == 4)
            {
              v57 = v24;
            }

            else
            {
              v56 = 0xE900000000000074;
            }

            if (v21 <= 5)
            {
              v54 = v57;
              v55 = v56;
            }

            v58 = 0x72657669746C756DLL;
            v59 = 0xEA00000000006573;
            if (v21 != 2)
            {
              v58 = 0x65726F7473;
              v59 = 0xE500000000000000;
            }

            if (v21 == 1)
            {
              v58 = v46;
            }

            else
            {
              v53 = v59;
            }

            if (v21 <= 3)
            {
              v60 = v58;
            }

            else
            {
              v60 = v54;
            }

            if (v21 <= 3)
            {
              v61 = v53;
            }

            else
            {
              v61 = v55;
            }

            v62 = sub_2662A320C(v60, v61, &v140);

            *(v51 + 4) = v62;
            _os_log_impl(&dword_26629C000, v49, v50, "LocalPlaybackHelper# Unknown contentOrigin: %{public}s", v51, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v52);
            MEMORY[0x266784AD0](v52, -1, -1);
            MEMORY[0x266784AD0](v51, -1, -1);

            v48 = v137;
          }

          else
          {
          }

          v114 = *(v48 + 8);
          v114(v9, v25);
          v119 = 0;
          v24 = v133;
          goto LABEL_78;
        }

LABEL_90:
        swift_once();
        goto LABEL_25;
      }
    }

    v27 = *(a1 + 56);
    v26 = *(a1 + 64);
    if (v21 <= 3 || v21 > 5)
    {
      goto LABEL_45;
    }

    v45 = v21 == 4;
    v43 = v137;
    if (!v45)
    {
LABEL_46:
      v63 = sub_2664E0D88();

      if ((v63 & 1) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_47;
    }

LABEL_22:

LABEL_47:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v64 = __swift_project_value_buffer(v25, qword_280F914F0);
    swift_beginAccess();
    v135 = *(v43 + 16);
    v135(v17, v64, v25);
    v65 = sub_2664DFE18();
    v66 = sub_2664E06E8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_26629C000, v65, v66, "LocalPlaybackHelper#MPMediaItemRepresentationWithUserIdentity content origin .ulid. Adding predicates MPMediaItemPropertyStoreCloudAlbumID and MPMediaItemPropertyStoreCloudUniversalLibraryID for persistentID", v67, 2u);
      MEMORY[0x266784AD0](v67, -1, -1);
    }

    v134 = *(v43 + 8);
    v134(v17, v25);
    v68 = *MEMORY[0x277CD5858];
    v140 = v27;
    v141 = v26;

    v69 = v68;
    v14 = sub_2664E0DB8();
    v70 = objc_opt_self();
    v25 = &selRef_setUniversalStoreIdentifiersWithBlock_;
    v71 = [v70 predicateWithValue:v14 forProperty:v69];
    swift_unknownObjectRelease();

    v72 = *MEMORY[0x277CD5870];
    v140 = v27;
    v141 = v26;

    v73 = v72;
    v74 = [v70 predicateWithValue:sub_2664E0DB8() forProperty:v73];
    swift_unknownObjectRelease();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728C8, &qword_2664E4F30);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_2664E34E0;
    v76 = sub_2662C1744(0, &qword_280072508, 0x277CD5E30);
    *(v75 + 32) = v71;
    *(v75 + 88) = v76;
    *(v75 + 56) = v76;
    *(v75 + 64) = v74;
    v77 = v71;
    v26 = v74;
    v78 = sub_2664E0488();

    v79 = [objc_opt_self() predicateMatchingPredicates_];

    if (v79)
    {
      goto LABEL_58;
    }

    __break(1u);
LABEL_53:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v80 = __swift_project_value_buffer(v25, qword_280F914F0);
    swift_beginAccess();
    v135 = *(v43 + 16);
    v135(v14, v80, v25);
    v81 = sub_2664DFE18();
    v82 = sub_2664E06E8();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_26629C000, v81, v82, "LocalPlaybackHelper#MPMediaItemRepresentationWithUserIdentity content origin .device. Adding predicates MPMediaItemPropertyPersistentID and MPMediaItemPropertySyncID for persistentID", v83, 2u);
      MEMORY[0x266784AD0](v83, -1, -1);
    }

    v134 = *(v43 + 8);
    v134(v14, v25);
    v84 = *MEMORY[0x277CD57D8];
    v140 = v27;
    v141 = v26;

    v85 = v84;
    v86 = sub_2664E0DB8();
    v87 = objc_opt_self();
    v88 = [v87 predicateWithValue:v86 forProperty:v85];
    swift_unknownObjectRelease();

    v89 = *MEMORY[0x277CD58B0];
    v140 = v27;
    v141 = v26;

    v90 = v89;
    v91 = [v87 predicateWithValue:sub_2664E0DB8() forProperty:v90];
    swift_unknownObjectRelease();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728C8, &qword_2664E4F30);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_2664E34E0;
    v93 = sub_2662C1744(0, &qword_280072508, 0x277CD5E30);
    *(v92 + 32) = v88;
    *(v92 + 88) = v93;
    *(v92 + 56) = v93;
    *(v92 + 64) = v91;
    v77 = v88;
    v26 = v91;
    v94 = sub_2664E0488();

    v79 = [objc_opt_self() predicateMatchingPredicates_];

    if (!v79)
    {
      __break(1u);
      return;
    }

LABEL_58:
    v25 = v136;
    v21 = v132;

    v95 = objc_opt_self();
    v9 = v79;
    v96 = [v95 deviceMediaLibraryWithUserIdentity_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EE0, &qword_2664E8E08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2664E36F0;
    v140 = v9;
    sub_2662C1744(0, &qword_280072EE8, 0x277CD5E28);
    sub_26637F50C();
    sub_2664E0AB8();
    sub_26639EC94(inited);
    swift_setDeallocating();
    sub_266350284(inited + 32);
    v98 = objc_allocWithZone(MEMORY[0x277CD5E38]);
    v99 = v96;
    v100 = sub_2664E05F8();

    v101 = [v98 initWithFilterPredicates:v100 library:v99];

    v132 = v99;
    if (v101)
    {
      [v101 setIgnoreSystemFilterPredicates_];
      [v101 setShouldIncludeNonLibraryEntities_];
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v102 = __swift_project_value_buffer(v25, qword_280F914F0);
    swift_beginAccess();
    v135(v21, v102, v25);
    v46 = v101;
    v103 = sub_2664DFE18();
    v104 = sub_2664E06E8();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v139 = v101;
      v140 = v106;
      *v105 = 136446210;
      v107 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EF8, &qword_2664E8E10);
      v108 = sub_2664E0318();
      v109 = v21;
      LODWORD(v21) = v110;
      v111 = v9;
      v112 = sub_2662A320C(v108, v110, &v140);

      *(v105 + 4) = v112;
      v9 = v111;
      _os_log_impl(&dword_26629C000, v103, v104, "LocalPlaybackHelper#MPMediaItemRepresentationWithUserIdentity MPMediaQuery: %{public}s", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v106);
      MEMORY[0x266784AD0](v106, -1, -1);
      MEMORY[0x266784AD0](v105, -1, -1);

      v113 = v109;
      v25 = v136;
    }

    else
    {

      v113 = v21;
    }

    v114 = v134;
    v134(v113, v25);
    v24 = v133;
    if (v101)
    {
      v115 = [v46 items];
      if (v115)
      {
        v116 = v115;
        sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
        v117 = sub_2664E04A8();

        if (v117 >> 62)
        {
          if (sub_2664E0A68())
          {
            goto LABEL_69;
          }
        }

        else if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_69:
          if ((v117 & 0xC000000000000001) != 0)
          {
            v118 = MEMORY[0x266783B70](0, v117);
            goto LABEL_72;
          }

          if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v118 = *(v117 + 32);
LABEL_72:
            v119 = v118;

LABEL_78:
            if (qword_280F914E8 != -1)
            {
              swift_once();
            }

            v120 = __swift_project_value_buffer(v25, qword_280F914F0);
            swift_beginAccess();
            v135(v24, v120, v25);
            v121 = sub_2664DFE18();
            v122 = sub_2664E06E8();
            if (os_log_type_enabled(v121, v122))
            {
              v134 = v114;
              v123 = swift_slowAlloc();
              v124 = swift_slowAlloc();
              v139 = v124;
              *v123 = 136446210;
              if (v119)
              {
                v125 = [v119 description];
                v126 = sub_2664E02C8();
                v128 = v127;
              }

              else
              {
                v128 = 0xE300000000000000;
                v126 = 7104878;
              }

              v129 = sub_2662A320C(v126, v128, &v139);

              *(v123 + 4) = v129;
              _os_log_impl(&dword_26629C000, v121, v122, "LocalPlaybackHelper#MPMediaItemRepresentationWithUserIdentity returning MPMediaItem: %{public}s", v123, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v124);
              MEMORY[0x266784AD0](v124, -1, -1);
              MEMORY[0x266784AD0](v123, -1, -1);

              v134(v24, v25);
            }

            else
            {

              v114(v24, v25);
            }

            return;
          }

          __break(1u);
          goto LABEL_90;
        }

LABEL_75:

        v119 = 0;
        goto LABEL_78;
      }
    }

    goto LABEL_75;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v28 = v136;
  v29 = __swift_project_value_buffer(v136, qword_280F914F0);
  swift_beginAccess();
  v30 = v137;
  (*(v137 + 16))(v19, v29, v28);

  v31 = sub_2664DFE18();
  v32 = sub_2664E06D8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v140 = v135;
    *v33 = 136446466;
    v138[0] = v20;
    v34 = PlaybackItem.Scheme.rawValue.getter();
    v36 = sub_2662A320C(v34, v35, &v140);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2082;
    v38 = (*(*a1 + 104))(v37);
    v40 = sub_2662A320C(v38, v39, &v140);

    *(v33 + 14) = v40;
    _os_log_impl(&dword_26629C000, v31, v32, "LocalPlaybackHelper#MPMediaItemRepresentationWithUserIdentity unknown scheme: %{public}s for item:%{public}s", v33, 0x16u);
    v41 = v135;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v41, -1, -1);
    MEMORY[0x266784AD0](v33, -1, -1);
  }

  (*(v30 + 8))(v19, v28);
}

id sub_26637E54C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, char a6, uint64_t a7, uint64_t a8, char a9)
{
  v111 = a7;
  v114 = a3;
  v109 = a1;
  v14 = sub_2664DFE38();
  v113 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v112 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v107 = &v104 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v106 = &v104 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v108 = &v104 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v104 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v104 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v104 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v104 - v32;
  v110 = a8;
  if (!a6)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    v44 = v113;
    v116 = *(v113 + 16);
    v116(v31, v43, v14);
    v45 = sub_2664DFE18();
    v46 = sub_2664E06E8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134349056;
      *(v47 + 4) = a4;
      _os_log_impl(&dword_26629C000, v45, v46, "LocalPlaybackHelper#getLocalQuery using Int64 value for identifier: %{public}lld", v47, 0xCu);
      MEMORY[0x266784AD0](v47, -1, -1);
    }

    v115 = *(v44 + 8);
    v115(v31, v14);
    v39 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    v40 = v114;
    v41 = sub_2664E02A8();
    v42 = [objc_opt_self() predicateWithValue:v39 forProperty:v41];
    goto LABEL_13;
  }

  if (a6 == 1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    v35 = v113;
    v116 = *(v113 + 16);
    v116(v28, v34, v14);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06E8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134349056;
      *(v38 + 4) = a4;
      _os_log_impl(&dword_26629C000, v36, v37, "LocalPlaybackHelper#getLocalQuery using UInt64 value for identifier: %{public}llu", v38, 0xCu);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    v115 = *(v35 + 8);
    v115(v28, v14);
    v39 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
    v40 = v114;
    v41 = sub_2664E02A8();
    v42 = [objc_opt_self() predicateWithValue:v39 forProperty:v41];
LABEL_13:
    v48 = v42;

    goto LABEL_22;
  }

  v105 = a2;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v49 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v50 = v113;
  v116 = *(v113 + 16);
  v116(v33, v49, v14);

  v51 = sub_2664DFE18();
  v52 = sub_2664E06E8();
  sub_26637F574(a4, a5, 2);
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v119[0] = v54;
    *v53 = 136446210;
    *(v53 + 4) = sub_2662A320C(a4, a5, v119);
    _os_log_impl(&dword_26629C000, v51, v52, "LocalPlaybackHelper#getLocalQuery using String value for identifier: %{public}s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x266784AD0](v54, -1, -1);
    MEMORY[0x266784AD0](v53, -1, -1);
  }

  v115 = *(v50 + 8);
  v115(v33, v14);
  v40 = v114;
  v55 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithUTF8String_];

  a2 = v105;
  if (v55)
  {
    v119[0] = v55;
    sub_2662C1744(0, &qword_280072F00, 0x277CCACA8);
    v56 = sub_2664E0D78();
  }

  else
  {
    v56 = 0;
  }

  v57 = sub_2664E02A8();
  v48 = [objc_opt_self() predicateWithValue:v56 forProperty:v57];
  swift_unknownObjectRelease();

LABEL_22:
  v58 = qword_280F914E8;
  v114 = v48;
  if (v58 != -1)
  {
    swift_once();
  }

  v59 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v116(v25, v59, v14);

  v60 = sub_2664DFE18();
  v61 = sub_2664E06E8();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v64 = v40;
    v65 = v63;
    v118 = v63;
    *v62 = 136446210;
    *(v62 + 4) = sub_2662A320C(a2, v64, &v118);
    _os_log_impl(&dword_26629C000, v60, v61, "LocalPlaybackHelper#getLocalQuery for property:%{public}s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    MEMORY[0x266784AD0](v65, -1, -1);
    MEMORY[0x266784AD0](v62, -1, -1);
  }

  v66 = (v115)(v25, v14);
  v118 = MEMORY[0x277D84F90];
  MEMORY[0x266783490](v66);
  if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2664E04C8();
  }

  sub_2664E0518();
  v67 = v118;
  if ((a9 & 1) != 0 && (v111 | 2) != 3)
  {
    v116(v108, v59, v14);
    v68 = sub_2664DFE18();
    v69 = sub_2664E06E8();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_26629C000, v68, v69, "LocalPlaybackHelper#getLocalQuery onlyPlayableItems, adding MPMediaItemPropertyIsPlayable predicate", v70, 2u);
      MEMORY[0x266784AD0](v70, -1, -1);
    }

    v115(v108, v14);
    v71 = *MEMORY[0x277CD57A0];
    LOBYTE(v117) = 1;
    v72 = v71;
    v73 = sub_2664E0DB8();
    v74 = objc_opt_self();
    v75 = [v74 predicateWithValue:v73 forProperty:v72];
    swift_unknownObjectRelease();

    v76 = v75;
    MEMORY[0x266783490]();
    if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2664E04C8();
    }

    sub_2664E0518();
    if (v111 == 6)
    {
      v67 = v118;
    }

    else
    {
      v77 = *MEMORY[0x277CD5788];
      LOBYTE(v117) = 1;
      v78 = v77;
      v79 = [v74 predicateWithValue:sub_2664E0DB8() forProperty:v78];
      swift_unknownObjectRelease();

      MEMORY[0x266783490]();
      if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2664E04C8();
      }

      sub_2664E0518();

      v67 = v118;
    }
  }

  v80 = [objc_opt_self() deviceMediaLibraryWithUserIdentity_];
  v81 = sub_26639ED20(v67);

  sub_266460394(v81);

  v82 = objc_allocWithZone(MEMORY[0x277CD5E38]);
  v83 = v80;
  v84 = sub_2664E05F8();

  v85 = [v82 initWithFilterPredicates:v84 library:v83];

  [v85 setGroupingType_];
  if (a9)
  {
    if (v111 == 5)
    {
      v86 = v106;
      v116(v106, v59, v14);
      v87 = sub_2664DFE18();
      v88 = sub_2664E06E8();
      if (!os_log_type_enabled(v87, v88))
      {
        goto LABEL_46;
      }

      v89 = swift_slowAlloc();
      *v89 = 0;
      v90 = "LocalPlaybackHelper#getLocalQuery onlyPlayableItems, setting shouldIncludeNonLibraryEntities=true and ignoreSystemFilterPredicates=false";
    }

    else
    {
      v86 = v107;
      v116(v107, v59, v14);
      v87 = sub_2664DFE18();
      v88 = sub_2664E06E8();
      if (!os_log_type_enabled(v87, v88))
      {
        goto LABEL_46;
      }

      v89 = swift_slowAlloc();
      *v89 = 0;
      v90 = "LocalPlaybackHelper#getLocalQuery onlyPlayableItems, setting shouldIncludeNonLibraryEntities=true and ignoreSystemFilterPredicates=true";
    }

    _os_log_impl(&dword_26629C000, v87, v88, v90, v89, 2u);
    MEMORY[0x266784AD0](v89, -1, -1);
LABEL_46:

    v115(v86, v14);
    if (v85)
    {
      [v85 setIgnoreSystemFilterPredicates_];
    }
  }

  v91 = v112;
  v116(v112, v59, v14);
  v92 = v85;
  v93 = sub_2664DFE18();
  v94 = sub_2664E06E8();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v117 = v96;
    *v95 = 136446210;
    if (v92)
    {
      v97 = [v92 description];
      v98 = sub_2664E02C8();
      v100 = v99;
    }

    else
    {
      v100 = 0xE300000000000000;
      v98 = 7104878;
    }

    v102 = sub_2662A320C(v98, v100, &v117);

    *(v95 + 4) = v102;
    _os_log_impl(&dword_26629C000, v93, v94, "LocalPlaybackHelper#getLocalQuery for query:%{public}s", v95, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v96);
    MEMORY[0x266784AD0](v96, -1, -1);
    MEMORY[0x266784AD0](v95, -1, -1);

    v101 = v112;
  }

  else
  {

    v101 = v91;
  }

  v115(v101, v14);
  return v92;
}

uint64_t objectdestroy_17Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));

  return MEMORY[0x2821FE8E8](v0, 201, 7);
}

uint64_t sub_26637F490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074250, &unk_2664E3680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26637F50C()
{
  result = qword_280072EF0;
  if (!qword_280072EF0)
  {
    sub_2662C1744(255, &qword_280072EE8, 0x277CD5E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072EF0);
  }

  return result;
}

uint64_t sub_26637F574(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_26637F58C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074250, &unk_2664E3680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_26637F650(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_26637F698(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OpenPodcastEpisodeAppIntent.init(episodeEntity:)@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F10, &qword_2664E8ED0);
  swift_allocObject();
  result = sub_2664DFA28();
  *a2 = result;
  return result;
}

uint64_t sub_26637FB2C()
{
  MEMORY[0x2667833B0](0x6867696C746F7073, 0xE900000000000074);
  result = MEMORY[0x2667833B0](47, 0xE100000000000000);
  qword_28007CCA8 = 0xD000000000000012;
  unk_28007CCB0 = 0x80000002664F5C10;
  return result;
}

void *PlaybackLocalSearcher.__allocating_init()()
{
  v0 = type metadata accessor for SpotlightSearchProvider();
  v26 = swift_allocObject();
  v25 = [objc_allocWithZone(MEMORY[0x277D27820]) init];
  v1 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v2 = qword_280F8F808;
  v41 = type metadata accessor for MultiUserConnectionProvider();
  v42 = &protocol witness table for MultiUserConnectionProvider;
  *&v40 = v2;
  v3 = type metadata accessor for AccountProvider();
  v4 = swift_allocObject();

  v24 = sub_266360778(v1, &v40, v4);

  v5 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
  v6 = [objc_allocWithZone(MEMORY[0x277D27838]) init];
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, &v40);
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  *&v37 = qword_280F905C8;
  *(&v37 + 5) = *(&qword_280F905C8 + 5);
  v38 = &type metadata for FeatureFlagProvider;
  v39 = &protocol witness table for FeatureFlagProvider;
  v36 = &protocol witness table for SharedContextProvider;
  v35 = type metadata accessor for SharedContextProvider();
  v33 = &protocol witness table for SubscriptionProvider;
  *&v34 = swift_initStaticObject();
  v32 = &type metadata for SubscriptionProvider;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v7 = qword_280F91470;
  v29 = type metadata accessor for SiriKitTaskLoggingProvider();
  v30 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v28 = v7;
  v27[3] = &type metadata for WatchOSSupportProvider;
  v27[4] = &off_2877EC0A0;
  v8 = type metadata accessor for MediaPlaybackProvider();
  v9 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v27, &type metadata for WatchOSSupportProvider);
  v9[28] = &type metadata for WatchOSSupportProvider;
  v9[29] = &off_2877EC0A0;
  v9[5] = v3;
  v9[6] = &protocol witness table for AccountProvider;
  v10 = v25;
  v9[2] = v24;
  v9[17] = v10;
  v9[18] = v5;
  v9[19] = v6;
  sub_2662A8618(&v40, (v9 + 20));
  sub_2662A8618(&v37, (v9 + 30));
  sub_2662A8618(&v34, (v9 + 35));
  sub_2662A8618(&v31, (v9 + 7));
  sub_2662A8618(&v28, (v9 + 12));

  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  v41 = v0;
  v42 = &off_2877EE510;
  *&v40 = v26;
  v38 = v8;
  v39 = &off_2877F3740;
  *&v37 = v9;
  type metadata accessor for PlaybackLocalSearcher();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(&v40, v0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(&v37, v38);
  MEMORY[0x28223BE20](v16);
  v18 = (&v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v14;
  v21 = *v18;
  v11[5] = v0;
  v11[6] = &off_2877EE510;
  v11[7] = v21;
  v11[2] = v20;
  v11[10] = v8;
  v11[11] = &off_2877F3740;
  __swift_destroy_boxed_opaque_existential_1Tm(&v37);
  __swift_destroy_boxed_opaque_existential_1Tm(&v40);
  return v11;
}

uint64_t sub_266380098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v49 = a8;
  v50 = a4;
  v52 = a6;
  v53 = a7;
  v51 = a5;
  v47 = a2;
  v48 = a3;
  v46 = a1;
  v11 = sub_2664DFE38();
  v56 = *(v11 - 8);
  v57 = v11;
  MEMORY[0x28223BE20](v11);
  v55 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664DFE08();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v44 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a10;
  *(v20 + 24) = a11;
  v21 = qword_280F91508;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v14 + 16))(v17, v19, v13);
  v23 = (*(v14 + 80) + 33) & ~*(v14 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = "playbackLocalSearcherSearch";
  *(v24 + 24) = 27;
  *(v24 + 32) = 2;
  (*(v14 + 32))(v24 + v23, v17, v13);
  v25 = (v24 + ((v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2662BD02C;
  v25[1] = v20;
  v44[1] = v20;

  v26 = sub_2664E0848();
  v54 = v13;
  v27 = MEMORY[0x277D84F90];
  v45 = v19;
  sub_2664DFDC8(v26, &dword_26629C000, v22, "playbackLocalSearcherSearch", 27, 2, v19, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2662C0D38;
  *(v28 + 24) = v24;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_2662C0DE0;
  *(v29 + 24) = v28;
  v30 = *__swift_project_boxed_opaque_existential_1(v58 + 7, v58[10]);

  sub_2664DFDE8();
  v31 = sub_2664E0848();
  v43 = v27;
  v32 = v54;
  LOBYTE(v42) = 2;
  sub_2664DFDC8(v31, &dword_26629C000, v22, "mediaPlaybackProviderStreamingAvailability", 42, 2, v17, " enableTelemetry=YES ", 21, v42, v43);
  sub_26648D3D0(0, v30, v59);
  sub_2664E0838();
  sub_2664DFDD8();
  v33 = *(v14 + 8);
  v33(v17, v32);
  v34 = v59[0];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v35 = v57;
  v36 = __swift_project_value_buffer(v57, qword_280F914F0);
  swift_beginAccess();
  (*(v56 + 16))(v55, v36, v35);
  v37 = sub_2664DFE18();
  v38 = sub_2664E06B8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134218240;
    *(v39 + 4) = v34;
    *(v39 + 12) = 1024;
    *(v39 + 14) = v34 != 4;
    v32 = v54;
    _os_log_impl(&dword_26629C000, v37, v38, "PlaybackLocalSearcher#search Local search streamingAvailability: %ld -- localOnly: %{BOOL}d", v39, 0x12u);
    MEMORY[0x266784AD0](v39, -1, -1);
  }

  (*(v56 + 8))(v55, v57);
  v40 = __swift_project_boxed_opaque_existential_1(v58 + 2, v58[5]);
  MEMORY[0x28223BE20](v40);
  sub_2663CD5E8(v46, v47, v48, v50, v51, v52, v53, v34 != 4, v49, a9 & 1, sub_266381014);

  return (v33)(v45, v32);
}

uint64_t sub_26638068C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);

  v14 = sub_2664DFE18();
  v15 = sub_2664E06B8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v23 = a5;
    v17 = a1;
    v18 = v16;
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_2662A320C(v17, a2, &v25);
    _os_log_impl(&dword_26629C000, v14, v15, "PlaybackLocalSearcher#search Searching spotlight with query: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266784AD0](v19, -1, -1);
    v20 = v18;
    a1 = v17;
    a5 = v23;
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
  v21 = swift_allocObject();
  *(v21 + 16) = v24;
  *(v21 + 24) = a5;

  sub_2663CEA44(a1, a2, &unk_2877E4258, 200, sub_266381070, v21);
}

uint64_t sub_266380930(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for SearchItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v18 = a3;
    v19 = a2;
    v20 = MEMORY[0x277D84F90];
    sub_2662FD11C(0, v10, 0);
    v11 = v20;
    v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v13 = (a1 + v12);
    v14 = *(v7 + 72);
    do
    {
      sub_266380AB4(v13, v9);
      v20 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2662FD11C((v15 > 1), v16 + 1, 1);
        v11 = v20;
      }

      *(v11 + 16) = v16 + 1;
      sub_266381078(v9, v11 + v12 + v16 * v14);
      v13 = (v13 + v14);
      --v10;
    }

    while (v10);
    a2 = v19;
  }

  a2(v11);
}

uint64_t sub_266380AB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = type metadata accessor for SearchItem(0);
  MEMORY[0x28223BE20](v48);
  v5 = &v40[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a1[1];
  v50 = *a1;
  v51 = v10;
  v54[0] = 0xD000000000000012;
  v54[1] = 0x80000002664F5C10;
  v11 = qword_280071B48;

  if (v11 != -1)
  {
    swift_once();
  }

  v52 = qword_28007CCA8;
  v53 = unk_28007CCB0;
  sub_2662D2EBC();
  v55 = sub_2664E0998();
  v13 = v12;

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v14, v6);
  sub_2663810DC(a1, v5);

  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();

  v17 = os_log_type_enabled(v15, v16);
  v49 = v13;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47 = v7;
    v20 = v19;
    v54[0] = v19;
    *v18 = 136315394;
    v45 = v9;
    v46 = v6;
    v22 = *v5;
    v21 = v5[1];

    sub_266381140(v5);
    v23 = sub_2662A320C(v22, v21, v54);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_2662A320C(v55, v49, v54);
    _os_log_impl(&dword_26629C000, v15, v16, "PlaybackLocalSearcher#search PlaybackLocalSearcher reformed identifier: %s to handler-compatible: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v20, -1, -1);
    MEMORY[0x266784AD0](v18, -1, -1);

    (*(v47 + 8))(v45, v46);
  }

  else
  {

    sub_266381140(v5);
    (*(v7 + 8))(v9, v6);
  }

  v24 = a1[2];
  v25 = a1[3];
  v27 = a1[4];
  v26 = a1[5];
  v29 = a1[6];
  v28 = a1[7];
  v30 = a1[9];
  v46 = a1[8];
  v47 = v24;
  LODWORD(v45) = *(a1 + 80);
  v44 = a1[11];
  v43 = *(a1 + 96);
  v42 = a1[13];
  v41 = *(a1 + 112);
  v31 = v48;
  sub_26638119C(a1 + *(v48 + 48), a2 + *(v48 + 48));
  v32 = *(a1 + *(v31 + 52));
  v33 = (a1 + *(v31 + 56));
  v35 = *v33;
  v34 = v33[1];
  v36 = v49;
  *a2 = v55;
  *(a2 + 8) = v36;
  v37 = v46;
  *(a2 + 16) = v47;
  *(a2 + 24) = v25;
  *(a2 + 32) = v27;
  *(a2 + 40) = v26;
  *(a2 + 48) = v29;
  *(a2 + 56) = v28;
  *(a2 + 64) = v37;
  *(a2 + 72) = v30;
  *(a2 + 80) = v45;
  *(a2 + 88) = v44;
  *(a2 + 96) = v43;
  *(a2 + 104) = v42;
  *(a2 + 112) = v41;
  *(a2 + *(v31 + 52)) = v32;
  v38 = (a2 + *(v31 + 56));
  *v38 = v35;
  v38[1] = v34;
}

uint64_t PlaybackLocalSearcher.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t PlaybackLocalSearcher.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_266381078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2663810DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266381140(uint64_t a1)
{
  v2 = type metadata accessor for SearchItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26638119C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Bool __swiftcall INPlayMediaIntent.isFromNonSubscriber()()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = _s16SiriAudioSupport22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v1, &unk_2877E1F20);
  if (v9)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (*(v3 + 16))(v8, v10, v2);
    v11 = sub_2664DFE18();
    v12 = sub_2664E06B8();
    if (!os_log_type_enabled(v11, v12))
    {
      v6 = v8;
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26629C000, v11, v12, "INPlayMediaIntent#isFromNonSubscriber received isFromNonSubscriber", v13, 2u);
    v6 = v8;
    goto LABEL_10;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v14, v2);
  v11 = sub_2664DFE18();
  v15 = sub_2664E06B8();
  if (os_log_type_enabled(v11, v15))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26629C000, v11, v15, "INPlayMediaIntent#isFromNonSubscriber did not receive isFromNonSubscriber", v13, 2u);
LABEL_10:
    MEMORY[0x266784AD0](v13, -1, -1);
  }

LABEL_12:

  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t INPlayMediaIntent.startPlaybackOnSetQueue.getter()
{
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 privatePlayMediaIntentData];
  v6 = [v5 immediatelyStartPlayback];

  sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  v7 = sub_2664E08F8();
  if (v6)
  {
    v8 = sub_2664E0918();

    v7 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v1, qword_280F914F0);
  swift_beginAccess();
  (*(v2 + 16))(v4, v9, v1);
  v10 = sub_2664DFE18();
  v11 = sub_2664E06B8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v8 & 1;
    _os_log_impl(&dword_26629C000, v10, v11, "INPlayMediaIntent#startPlaybackOnSetQueue Early playback enabled for interactionType and queue location?:%{BOOL}d", v12, 8u);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return v8 & 1;
}

id INPlayMediaIntent.isAmbiguousShuffle.getter()
{
  v1 = v0;
  v2 = sub_2664E0708();
  if (v2 == 2 || (v2 & 1) == 0)
  {
    return 0;
  }

  result = [v0 mediaSearch];
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = sub_26639B5CC();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  result = [v1 mediaSearch];
  if (result)
  {
    v6 = result;
    v7 = [result mediaType];

    return (v7 == 18);
  }

  return result;
}

Swift::Bool __swiftcall INPlayMediaIntent.isCreateRadioFromCurrentlyPlaying()()
{
  v1 = [v0 mediaSearch];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 reference];

    if (v3 == 1)
    {
      v1 = [v0 mediaSearch];
      if (v1)
      {
        v4 = v1;
        v5 = [v1 sortOrder];

        LOBYTE(v1) = v5 == 8;
      }
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1;
}

Swift::Bool __swiftcall INPlayMediaIntent.isCreateRadioFromCurrentlyPlayingUnknownReference()()
{
  v1 = [v0 mediaSearch];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 reference];

    if (v3)
    {
LABEL_3:
      LOBYTE(v1) = 0;
      return v1;
    }

    v4 = [v0 mediaSearch];
    if (v4 && (v5 = v4, v6 = [v4 mediaType], v5, v6 == 18) && (v7 = objc_msgSend(v0, sel_mediaSearch)) != 0 && (v8 = v7, v9 = objc_msgSend(v7, sel_sortOrder), v8, v9 == 8))
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      v1 = [v0 mediaSearch];
      if (!v1)
      {
        return v1;
      }

      v10 = v1;
      v11 = [v1 mediaType];

      if (v11 != 17)
      {
        goto LABEL_3;
      }

      v1 = [v0 mediaSearch];
      if (v1)
      {
        v12 = v1;
        v13 = [v1 sortOrder];

        LOBYTE(v1) = v13 == 0;
      }
    }
  }

  return v1;
}

Swift::Bool __swiftcall INPlayMediaIntent.isNewPlaybackProducing()()
{
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v36 = &v36 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, qword_280F914F0);
  swift_beginAccess();
  v13 = *(v2 + 16);
  v38 = v12;
  v39 = v13;
  v13(v11, v12, v1);
  v14 = v0;
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134349056;
    *(v17 + 4) = [v14 playbackQueueLocation];

    _os_log_impl(&dword_26629C000, v15, v16, "INPlayMediaIntent#isNewPlaybackProducing playbackQueueLocation: %{public}ld", v17, 0xCu);
    MEMORY[0x266784AD0](v17, -1, -1);
  }

  else
  {

    v15 = v14;
  }

  v40 = *(v2 + 8);
  v40(v11, v1);
  v18 = [v14 mediaSearch];
  v19 = v38;
  if (v18 && (v20 = v18, v21 = [v18 reference], v20, v21 == 1) && (v22 = -[NSObject mediaSearch](v14, sel_mediaSearch)) != 0)
  {
    v23 = v22;
    v24 = [v22 sortOrder];

    v25 = v24 == 8;
  }

  else
  {
    v25 = 0;
  }

  v39(v9, v19, v1);
  v26 = sub_2664DFE18();
  v27 = sub_2664E06E8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 67240192;
    *(v28 + 4) = v25;
    _os_log_impl(&dword_26629C000, v26, v27, "INPlayMediaIntent#isNewPlaybackProducing createRadio: %{BOOL,public}d", v28, 8u);
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  v40(v9, v1);
  if ([v14 playbackQueueLocation]!= 2 && [v14 playbackQueueLocation]!= 3 && !v25)
  {
    v29 = v36;
    v39(v36, v19, v1);
    v30 = sub_2664DFE18();
    v34 = sub_2664E06E8();
    if (!os_log_type_enabled(v30, v34))
    {
      v33 = 1;
      goto LABEL_21;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_26629C000, v30, v34, "INPlayMediaIntent#isNewPlaybackProducing IS playback producing", v32, 2u);
    v33 = 1;
    goto LABEL_20;
  }

  v29 = v37;
  v39(v37, v19, v1);
  v30 = sub_2664DFE18();
  v31 = sub_2664E06E8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_26629C000, v30, v31, "INPlayMediaIntent#isNewPlaybackProducing NOT playback producing", v32, 2u);
    v33 = 0;
LABEL_20:
    MEMORY[0x266784AD0](v32, -1, -1);
    goto LABEL_21;
  }

  v33 = 0;
LABEL_21:

  v40(v29, v1);
  return v33;
}

Swift::Bool __swiftcall INPlayMediaIntent.isPromptForValueIntent()()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 privatePlayMediaIntentData];
  if (v6 && (v7 = v6, v8 = [v6 audioSearchResults], v7, v8))
  {
    sub_2662C1744(0, &qword_280F8F650, 0x277CD3DB8);
    v9 = sub_2664E04A8();

    v10 = v9;
    if (v9 >> 62)
    {
LABEL_4:
      v11 = sub_2664E0A68();
      goto LABEL_7;
    }
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_4;
    }
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:

  v12 = [v1 mediaSearch];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 mediaType];
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_266457D7C(v14, v13 == 0, &unk_2877E44F8);
  v16 = [v1 mediaSearch];
  if (v16 && (v17 = v16, v18 = [v16 mediaName], v17, v18) || (v19 = objc_msgSend(v1, sel_mediaSearch)) != 0 && (v20 = v19, v18 = objc_msgSend(v19, sel_artistName), v20, v18) || (v21 = objc_msgSend(v1, sel_mediaSearch)) != 0 && (v22 = v21, v18 = objc_msgSend(v21, sel_albumName), v22, v18))
  {

    v23 = 0;
  }

  else
  {
    v24 = [v1 mediaSearch];
    if (v24 && (v25 = v24, v26 = [v24 genreNames], v25, v26))
    {
      v27 = sub_2664E04A8();

      v28 = v27;
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }

    v29 = *(v28 + 16);

    v23 = v29 == 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v30, v2);
  v31 = sub_2664DFE18();
  v32 = sub_2664E06C8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 67240704;
    *(v33 + 4) = v11 == 0;
    *(v33 + 8) = 1026;
    *(v33 + 10) = v15 & 1;
    *(v33 + 14) = 1026;
    *(v33 + 16) = v23;
    _os_log_impl(&dword_26629C000, v31, v32, "isPromptForValueIntent searchEmpty:%{BOOL,public}d specifiedType:%{BOOL,public}d noSearchValue:%{BOOL,public}d", v33, 0x14u);
    MEMORY[0x266784AD0](v33, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return (v11 == 0) & v15 & v23;
}

Swift::Void __swiftcall INPlayMediaIntent.addOfferBuyParams(buyParams:)(Swift::String buyParams)
{
  MEMORY[0x2667833B0](buyParams._countAndFlagsBits, buyParams._object);
  _s16SiriAudioSupport22InternalSignalsManagerC3add_2toySS_So8INIntentCtFZ_0(0x6D61726150797562, 0xEA00000000003A73, v1);
}

Swift::Void __swiftcall INPlayMediaIntent.addGdprHandoffUtterance(utterance:)(Swift::String_optional utterance)
{
  if (utterance.value._object)
  {
    object = utterance.value._object;
    countAndFlagsBits = utterance.value._countAndFlagsBits;
    sub_2664E0B28();

    MEMORY[0x2667833B0](countAndFlagsBits, object);
    _s16SiriAudioSupport22InternalSignalsManagerC3add_2toySS_So8INIntentCtFZ_0(0xD000000000000015, 0x80000002664F5C50, v1);
  }
}

Swift::Bool __swiftcall INPlayMediaIntent.isSiriForAirPlay()()
{
  if (_s16SiriAudioSupport22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v0, &unk_2877E4668))
  {
    return 1;
  }

  return _s16SiriAudioSupport22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v0, &unk_2877E4698);
}

Swift::Bool __swiftcall INPlayMediaIntent.isCompanionAppInstalled()()
{
  if (_s16SiriAudioSupport22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v0, &unk_2877E46C8))
  {
    return 1;
  }

  return _s16SiriAudioSupport22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v0, &unk_2877E46F8);
}

Swift::Void __swiftcall INPlayMediaIntent.configureStartPlaybackOnSetQueue(willSiriSpeak:)(Swift::Bool willSiriSpeak)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v47 = v46 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v46 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v46 - v12;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  v48 = *(v3 + 16);
  v48(v13, v14, v2);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06B8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v46[1] = v3 + 16;
    v18 = v6;
    v19 = v14;
    v20 = v2;
    v21 = v11;
    v22 = v3;
    v23 = v17;
    *v17 = 67240192;
    *(v17 + 4) = willSiriSpeak;
    _os_log_impl(&dword_26629C000, v15, v16, "configureStartPlaybackOnSetQueue - will Siri speak? %{BOOL,public}d", v17, 8u);
    v24 = v23;
    v3 = v22;
    v11 = v21;
    v2 = v20;
    v14 = v19;
    v6 = v18;
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  v25 = *(v3 + 8);
  v25(v13, v2);
  if (willSiriSpeak)
  {
    v48(v6, v14, v2);
    v26 = sub_2664DFE18();
    v27 = sub_2664E06E8();
    if (!os_log_type_enabled(v26, v27))
    {
LABEL_9:
      v11 = v6;
      goto LABEL_10;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_26629C000, v26, v27, "Skipping immediate-start-playback as not display driven interaction", v28, 2u);
    v29 = v28;
LABEL_8:
    MEMORY[0x266784AD0](v29, -1, -1);
    goto LABEL_9;
  }

  v31 = v49;
  v32 = [v49 mediaSearch];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 reference];

    if (v34 == 1)
    {
      if ((v35 = [v31 mediaSearch]) != 0 && (v36 = v35, v37 = objc_msgSend(v35, sel_mediaType), v36, v37 == 16) || (v38 = objc_msgSend(v31, sel_mediaSearch)) != 0 && (v39 = v38, v40 = objc_msgSend(v38, sel_sortOrder), v39, v40 == 8))
      {
        v6 = v47;
        v48(v47, v14, v2);
        v26 = sub_2664DFE18();
        v41 = sub_2664E06E8();
        if (!os_log_type_enabled(v26, v41))
        {
          goto LABEL_9;
        }

        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_26629C000, v26, v41, "Skipping immediate-start-playback to resume music since this is a create radio", v42, 2u);
        v29 = v42;
        goto LABEL_8;
      }
    }
  }

  v30 = [v31 playbackQueueLocation];
  if (v30 == 1)
  {
    goto LABEL_24;
  }

  if (![v31 playbackQueueLocation])
  {
    LOBYTE(v30) = 1;
    goto LABEL_24;
  }

  v48(v11, v14, v2);
  v43 = v31;
  v26 = sub_2664DFE18();
  v44 = sub_2664E06E8();
  if (os_log_type_enabled(v26, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134349056;
    *(v45 + 4) = [v43 playbackQueueLocation];

    _os_log_impl(&dword_26629C000, v26, v44, "Skipping immediate-start-playback as playback queue location is:%{public}ld", v45, 0xCu);
    MEMORY[0x266784AD0](v45, -1, -1);
  }

  else
  {

    v26 = v43;
  }

LABEL_10:

  v25(v11, v2);
  LOBYTE(v30) = 0;
LABEL_24:
  sub_266382C4C(v30);
}

uint64_t sub_266382C4C(char a1)
{
  v2 = v1;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v33 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = [v2 backingStore];
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    v17 = [v15 privatePlayMediaIntentData];
    if (v17)
    {
      v18 = v17;
      [v17 setImmediatelyStartPlayback:a1 & 1];
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v19 = __swift_project_value_buffer(v4, qword_280F914F0);
      swift_beginAccess();
      (*(v5 + 16))(v13, v19, v4);
      v20 = sub_2664DFE18();
      v21 = sub_2664E06E8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 67109120;
        *(v22 + 4) = a1 & 1;
        _os_log_impl(&dword_26629C000, v20, v21, "Set immediatelyStartPlayback?:%{BOOL}d on existing private data store", v22, 8u);
        MEMORY[0x266784AD0](v22, -1, -1);
      }
    }

    else
    {
      v26 = [objc_allocWithZone(MEMORY[0x277CD4390]) init];
      [v26 setImmediatelyStartPlayback:a1 & 1];
      [v16 setPrivatePlayMediaIntentData_];
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v27 = __swift_project_value_buffer(v4, qword_280F914F0);
      swift_beginAccess();
      (*(v5 + 16))(v11, v27, v4);
      v28 = sub_2664DFE18();
      v29 = sub_2664E06E8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 67109120;
        *(v30 + 4) = a1 & 1;
        _os_log_impl(&dword_26629C000, v28, v29, "Created new private data backing store to set immediatelyStartPlayback?:%{BOOL}d", v30, 8u);
        MEMORY[0x266784AD0](v30, -1, -1);
        v31 = v26;
      }

      else
      {
        v31 = v28;
        v28 = v26;
      }

      v18 = v14;
      v13 = v11;
    }
  }

  else
  {

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v23, v4);
    v18 = sub_2664DFE18();
    v24 = sub_2664E06D8();
    if (os_log_type_enabled(v18, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_26629C000, v18, v24, "Unexpected backing store error setting playback immediately", v25, 2u);
      MEMORY[0x266784AD0](v25, -1, -1);
    }

    v13 = v8;
  }

  return (*(v5 + 8))(v13, v4);
}

Swift::Void __swiftcall INPlayMediaIntent.configureEnableEntityConfidenceExperiment(displayDriven:)(Swift::Bool displayDriven)
{
  v57 = displayDriven;
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v52 = &v51 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v51 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v55 = &v51 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v53 = &v51 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v1, qword_280F914F0);
  swift_beginAccess();
  v18 = *(v2 + 16);
  v18(v16, v17, v1);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06B8();
  v21 = os_log_type_enabled(v19, v20);
  v56 = v18;
  if (v21)
  {
    v22 = v17;
    v23 = v5;
    v24 = v10;
    v25 = v1;
    v26 = v2;
    v27 = swift_slowAlloc();
    *v27 = 67109120;
    *(v27 + 4) = v57;
    _os_log_impl(&dword_26629C000, v19, v20, "shouldEnableEntityConfidenceExperiment - is display-driven: %{BOOL}d", v27, 8u);
    v28 = v27;
    v2 = v26;
    v1 = v25;
    v10 = v24;
    v5 = v23;
    v17 = v22;
    v18 = v56;
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  v29 = *(v2 + 8);
  v29(v16, v1);
  if (v57)
  {
    v5 = v53;
    v18(v53, v17, v1);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06E8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "In display driven mode, leaving value sent from server";
LABEL_17:
      _os_log_impl(&dword_26629C000, v30, v31, v33, v32, 2u);
      MEMORY[0x266784AD0](v32, -1, -1);
    }
  }

  else
  {
    v18(v55, v17, v1);
    v34 = sub_2664DFE18();
    v35 = sub_2664E06E8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_26629C000, v34, v35, "Skipping entity confidence experiment as not display driven interaction", v36, 2u);
      MEMORY[0x266784AD0](v36, -1, -1);
    }

    v29(v55, v1);
    v37 = [v54 backingStore];
    objc_opt_self();
    v38 = swift_dynamicCastObjCClass();
    if (v38)
    {
      v39 = v17;
      v40 = v38;
      v41 = [v38 privatePlayMediaIntentData];
      if (v41)
      {
        v30 = v41;
        [v41 setEntityConfidenceSignalsEnabled:0];
        v56(v10, v39, v1);
        v42 = sub_2664DFE18();
        v43 = sub_2664E06E8();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_26629C000, v42, v43, "Set entityConfidenceSignalsEnabled to false on existing private data store", v44, 2u);
          MEMORY[0x266784AD0](v44, -1, -1);
        }

        v5 = v10;
      }

      else
      {
        v45 = [objc_allocWithZone(MEMORY[0x277CD4390]) init];
        v46 = v45;
        if (v45)
        {
          [v45 setEntityConfidenceSignalsEnabled_];
        }

        [v40 setPrivatePlayMediaIntentData_];
        v47 = v52;
        v56(v52, v17, v1);
        v48 = sub_2664DFE18();
        v49 = sub_2664E06E8();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_26629C000, v48, v49, "Created new private data backing store to set entityConfidenceSignalsEnabled as false", v50, 2u);
          MEMORY[0x266784AD0](v50, -1, -1);
        }

        else
        {
        }

        v30 = v37;
        v5 = v47;
      }
    }

    else
    {

      v56(v5, v17, v1);
      v30 = sub_2664DFE18();
      v31 = sub_2664E06D8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        v33 = "Unexpected backing store error setting entityConfidenceSignalsEnabled";
        goto LABEL_17;
      }
    }
  }

  v29(v5, v1);
}

void *sub_266383798(uint64_t a1)
{
  sub_2662C1744(0, &qword_280F8F5E0, 0x277CD3EC0);
  v1 = sub_2664E06F8();
  v2 = [v1 backingStore];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CD4390]) init];
  if (v4)
  {
    v5 = objc_allocWithZone(MEMORY[0x277CD4380]);
    v6 = v4;
    v7 = [v5 init];
    [v6 setPrivateMediaIntentData_];
  }

  v8 = v3;
  [v8 setPrivatePlayMediaIntentData_];

  return v1;
}

void *static INPlayMediaIntent.resumeApp(bundleIdentifier:)(uint64_t a1, unint64_t a2)
{
  v37 = a1;
  v3 = sub_2664DE4A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  (*(v8 + 16))(v10, v11, v7);

  v12 = sub_2664DFE18();
  v13 = sub_2664E06E8();

  v14 = os_log_type_enabled(v12, v13);
  v36 = a2;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v35 = v4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v34 = v6;
    v18 = v17;
    v38 = v17;
    *v16 = 136315138;
    v19 = v3;
    if (a2)
    {
      v20 = v37;
    }

    else
    {
      v20 = 0x3E6C696E3CLL;
    }

    if (!a2)
    {
      a2 = 0xE500000000000000;
    }

    v21 = sub_2662A320C(v20, a2, &v38);

    *(v16 + 4) = v21;
    v3 = v19;
    _os_log_impl(&dword_26629C000, v12, v13, "Creating resumeApp intent with bundleID: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v22 = v18;
    v6 = v34;
    MEMORY[0x266784AD0](v22, -1, -1);
    v23 = v16;
    v4 = v35;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  sub_2662C1744(0, &qword_280F8F5E0, 0x277CD3EC0);
  v24 = sub_2664E06F8();
  v25 = [objc_allocWithZone(MEMORY[0x277CD4350]) init];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
    if (v36)
    {
      v28 = sub_2664E02A8();
    }

    else
    {
      v28 = 0;
    }

    [v27 setLaunchId_];

    v29 = v27;
    sub_2664DE498();
    sub_2664DE458();
    (*(v4 + 8))(v6, v3);
    v30 = sub_2664E02A8();

    [v29 setIntentId_];
  }

  v31 = [v24 backingStore];
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (!v32)
  {
  }

  [v32 setIntentMetadata_];

  return v24;
}

Swift::Void __swiftcall INPlayMediaIntent.setShouldSuppressCommonWholeHouseAudioRoutes()()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v1 backingStore];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 privatePlayMediaIntentData];
    if (v7)
    {
      v8 = v7;
      [v7 setShouldSuppressCommonWholeHouseAudioRoutes_];
    }

    v9 = v14;
  }

  else
  {

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (*(v3 + 16))(v5, v10, v2);
    v11 = sub_2664DFE18();
    v12 = sub_2664E06D8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26629C000, v11, v12, "INPlayMediaIntent#setShouldSuppressCommonWholeHouseAudioRoutes Unexpected backing store error setting entityConfidenceSignalsEnabled", v13, 2u);
      MEMORY[0x266784AD0](v13, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

Swift::Bool __swiftcall INPlayMediaIntent.isCommonAirPlayRouteSetupSuppressed()()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 privatePlayMediaIntentData];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 shouldSuppressCommonWholeHouseAudioRoutes];

    if (v8)
    {
      v9 = [v8 BOOLValue];

      if (v9)
      {
        return 1;
      }
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v11, v2);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v13, "INPlayMediaIntent#isCommonAirPlayRouteSetupSuppressed Route setting is not being suppressed (ASKit will or have tried setting them up)", v14, 2u);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

Swift::Bool __swiftcall INPlayMediaIntent.isMediaItemsPopulated()()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 mediaItems];
  if (v6)
  {
    v7 = v6;
    sub_2662C1744(0, &qword_280F8F650, 0x277CD3DB8);
    v8 = sub_2664E04A8();

    v9 = v8 >> 62 ? sub_2664E0A68() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v9 > 0)
    {
      return 1;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v11, v2);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v13, "INPlayMediaIntent#isMediaItemsPopulated MediaItems were not populated (yet?)", v14, 2u);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_2663843E8(SEL *a1, const char *a2)
{
  v5 = v2;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v5 *a1];
  if (v10)
  {
    v11 = v10;
    v12 = sub_2664E04A8();

    v13 = *(v12 + 16);

    if (v13)
    {
      return 1;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v15, v6);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, a2, v18, 2u);
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  return 0;
}

char *sub_2663845E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072938, qword_2664EBFD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2663846F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
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

void *sub_266384800(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728E8, &unk_2664E4F50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_266384948(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FD8, &qword_2664E90E8);
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

void *sub_266384A9C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F78, &qword_2664E9098);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F80, &unk_2664EDCC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_266384BD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F38, &qword_2664E9068);
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

void *sub_266384CD4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072918, &unk_2664E4F90);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072598, &unk_2664E3B50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_266384E1C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FC8, &qword_2664E90D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_266384FA0(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FA0, &qword_2664E90B8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_280073800, &unk_2664ED310) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_280073800, &unk_2664ED310) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

void *sub_2663851B8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_266385394(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072898, &qword_2664E4F00);
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

unint64_t sub_2663854AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D8, &unk_2664E52F8);
    v3 = sub_2664E0C98();
    v4 = a1 + 32;

    while (1)
    {
      sub_2662A7224(v4, &v13, &unk_2800734F0, &unk_2664E3660);
      v5 = v13;
      v6 = v14;
      result = sub_2662A3E98(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_266318804(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_2663855DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073B60, &qword_2664E9118);
  v3 = sub_2664E0C98();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v5;
  v28 = *(a1 + 96);
  v7 = *(&v24 + 1);
  v6 = v24;
  sub_2662A7224(&v24, v23, &qword_280073010, &qword_2664E9120);
  result = sub_2662A3E98(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = (v3[7] + (result << 6));
    v13 = v25;
    v14 = v26;
    v15 = v28;
    v12[2] = v27;
    v12[3] = v15;
    *v12 = v13;
    v12[1] = v14;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v10 + 5;
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27 = v21;
    v28 = v10[4];
    v7 = *(&v24 + 1);
    v6 = v24;
    sub_2662A7224(&v24, v23, &qword_280073010, &qword_2664E9120);
    result = sub_2662A3E98(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_266385778(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A30, &qword_2664E52F0);
    v3 = sub_2664E0C98();
    v4 = a1 + 32;

    while (1)
    {
      sub_2662A7224(v4, &v15, &qword_280072880, &unk_2664E4EE0);
      v5 = v15;
      v6 = v16;
      result = sub_2662A3E98(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
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

unint64_t sub_2663858A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724C0, &unk_2664E36D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F60, &qword_2664E9080);
    v7 = sub_2664E0C98();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2662A7224(v9, v5, &qword_2800724C0, &unk_2664E36D0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_2662A3E98(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_2664DEC48();
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_266385ABC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F40, &qword_2664E9070);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F48, qword_2664F0660);
    v7 = sub_2664E0C98();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2662A7224(v9, v5, &qword_280072F40, &qword_2664E9070);
      v11 = *v5;
      v12 = v5[1];
      result = sub_2662A3E98(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_2664DF398();
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_266385CA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FE8, &qword_2664F0860);
    v3 = sub_2664E0C98();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2662A3E98(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_266385DE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E8, &qword_2664E5310);
    v3 = sub_2664E0C98();
    v4 = a1 + 32;

    while (1)
    {
      sub_2662A7224(v4, &v13, &qword_280072F30, &qword_2664E9060);
      v5 = v13;
      v6 = v14;
      result = sub_2662A3E98(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2662A8618(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_266385F28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_2664E0C98();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_2662A3E98(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_26638604C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FD0, &qword_2664E90E0);
    v3 = sub_2664E0C98();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_26634DA3C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
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

unint64_t sub_266386140(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
    v3 = sub_2664E0C98();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2662A3E98(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_266386258(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F58, &qword_2664E9078);
    v3 = sub_2664E0C98();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_26634DB5C(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_266386350(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729F0, &qword_2664E5318);
    v3 = sub_2664E0C98();
    v4 = a1 + 32;

    while (1)
    {
      sub_2662A7224(v4, v13, &qword_280072F20, &qword_2664E9050);
      result = sub_26634D9F8(v13);
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
      result = sub_266318804(&v15, (v3[7] + 32 * result));
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

unint64_t sub_26638648C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FB0, &qword_2664E90C8);
    v3 = sub_2664E0C98();
    v4 = (a1 + 32);

    while (1)
    {
      v5 = *v4;
      v6 = v4[1];
      v7 = *(v4 + 1);

      result = sub_26634DC1C(v5 | (v6 << 8));
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 2 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 16;
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

unint64_t sub_266386598(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FA8, &qword_2664E90C0);
    v3 = sub_2664E0C98();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *i;
      v8 = v5;
      result = sub_26634DAA8(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      *(v3[7] + 8 * result) = v6;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26638669C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_2664E0C98();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_2662A3E98(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_2663867AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_2664E0C98();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_2662A3E98(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_2663868A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073B00, &qword_2664ED680);
    v3 = sub_2664E0C98();
    v4 = a1 + 32;

    while (1)
    {
      sub_2662A7224(v4, &v11, &qword_280072F88, &qword_2664E90A0);
      v5 = v11;
      result = sub_26634DD28(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_266318804(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_2663869D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F50, &qword_2664ED6B0);
    v3 = sub_2664E0C98();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2662A3E98(v5, v6);
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

unint64_t sub_266386AE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073A70, &unk_2664ED610);
    v3 = sub_2664E0C98();
    v4 = a1 + 32;

    while (1)
    {
      sub_2662A7224(v4, &v11, &qword_280072F90, &qword_2664E90A8);
      v5 = v11;
      result = sub_26634DAA8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_266318804(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_266386C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a1;
  v4 = sub_2664DFE08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073028, &qword_2664E91B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073030, qword_2664E91C0);
  v11 = sub_2664E0318();
  v24 = v12;
  v25 = v11;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v13 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = "appSelectionSignalsSignal";
  *(v16 + 24) = 25;
  *(v16 + 32) = 2;
  (*(v5 + 32))(v16 + v14, v8, v4);
  v17 = (v16 + v15);
  *v17 = v26;
  v17[1] = a3;

  v18 = sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2664E36F0;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_2662C4094();
  v20 = v24;
  *(v19 + 32) = v25;
  *(v19 + 40) = v20;
  sub_2664DFDC8(v18, &dword_26629C000, v13, "appSelectionSignalsSignal", 25, 2, v10, "name=%{signpost.telemetry:string1,public}@ enableTelemetry=YES ", 63, 2, v19);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_266352A18;
  *(v21 + 24) = v16;

  sub_266387CAC(sub_266352AC0, v21, v27);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_266386F30(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v8 = sub_2664DE438();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = a1;
    v19 = a3;
    v20 = v18;
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "NowPlayingAppSignal#signal got bundleId", v18, 2u);
    v21 = v20;
    a3 = v19;
    a1 = v27;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  sub_2664DE428();
  sub_2664DE388();
  v23 = v22;
  (*(v28 + 8))(v10, v29);
  v24 = type metadata accessor for NowPlayingAppSignal();
  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = a2;
  v25[4] = v23;
  v31[3] = v24;
  v31[4] = &off_2877EBA08;
  v31[0] = v25;

  a3(v31);
  return __swift_destroy_boxed_opaque_existential_1Tm(v31);
}

uint64_t sub_266387210()
{
  v0 = sub_2662C3A68(&unk_2877E1660);
  result = sub_2662C1834(&unk_2877E1680);
  qword_280F91CB0 = v0;
  return result;
}

void sub_266387250(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v57 = a4;
  v58 = a3;
  v55 = a1;
  v56 = a2;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v54 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v53 = &v51 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v51 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v16 = *(v5 + 16);
  v16(v14, v15, v4);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v4;
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "NowPlayingAppSignal#NowPlayingClient#nowPlaying fetch complete.", v20, 2u);
    v21 = v20;
    v4 = v19;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  v22 = *(v5 + 8);
  v22(v14, v4);
  v23 = v56;
  if (v56)
  {
    v16(v12, v15, v4);
    v24 = v4;
    v25 = v23;
    v26 = sub_2664DFE18();
    v27 = sub_2664E06D8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v52 = v22;
      v29 = v28;
      v30 = swift_slowAlloc();
      v59[0] = v30;
      *v29 = 136315138;
      v60 = v25;
      type metadata accessor for CFError(0);
      sub_2662F0D58();
      v31 = sub_2664E0DE8();
      v33 = sub_2662A320C(v31, v32, v59);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_26629C000, v26, v27, "NowPlayingAppSignal#NowPlayingClient#nowPlaying MRMediaRemoteGetNowPlayingClient failed with error %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x266784AD0](v30, -1, -1);
      MEMORY[0x266784AD0](v29, -1, -1);

      v52(v12, v24);
    }

    else
    {

      v22(v12, v24);
    }

    v58(0, 0);
  }

  else if (v55)
  {
    v34 = MRNowPlayingClientGetBundleIdentifier();
    v52 = v22;
    if (v34)
    {
      v35 = v34;
      v36 = sub_2664E02C8();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v43 = v54;
    v16(v54, v15, v4);

    v44 = sub_2664DFE18();
    v45 = sub_2664E06C8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v59[1] = v38;
      v60 = v47;
      *v46 = 136315138;
      v59[0] = v36;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v48 = sub_2664E0318();
      v50 = sub_2662A320C(v48, v49, &v60);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_26629C000, v44, v45, "NowPlayingAppSignal#NowPlayingClient#nowPlaying bundle: %s.", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x266784AD0](v47, -1, -1);
      MEMORY[0x266784AD0](v46, -1, -1);

      v52(v54, v4);
    }

    else
    {

      v52(v43, v4);
    }

    v58(v36, v38);
  }

  else
  {
    v39 = v53;
    v16(v53, v15, v4);
    v40 = sub_2664DFE18();
    v41 = sub_2664E06D8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_26629C000, v40, v41, "NowPlayingAppSignal#NowPlayingClient#nowPlaying received nil now playing client", v42, 2u);
      MEMORY[0x266784AD0](v42, -1, -1);
    }

    v22(v39, v4);
    v58(0, 0);
  }
}

uint64_t sub_266387858()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2663878F0()
{
  if (qword_280F90400 != -1)
  {
    swift_once();
  }
}

unint64_t sub_26638794C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E36F0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000002664F1190;
  v7 = *(v5 + 24);
  if (v7)
  {
    if (*(v5 + 16) == a1 && v7 == a2)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_2664E0D88();
    }
  }

  else
  {
    v9 = 0;
  }

  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = v9 & 1;
  v10 = sub_2663854AC(inited);
  swift_setDeallocating();
  sub_266352EF4(inited + 32);
  return v10;
}

void sub_266387A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_2664DFE18();
  v11 = sub_2664E06C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26629C000, v10, v11, "NowPlayingAppSignal#NowPlayingClient#nowPlaying...", v12, 2u);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = sub_2663880F8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2664365E0;
  aBlock[3] = &block_descriptor_18;
  v14 = _Block_copy(aBlock);

  MRMediaRemoteGetNowPlayingClient();
  _Block_release(v14);
}

uint64_t sub_266387CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a2;
  v4 = sub_2664DE438();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v30 = sub_26632958C(1015);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = v8;
    v19 = v10;
    v20 = a3;
    v21 = v4;
    v22 = v18;
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "NowPlayingAppSignal#signal", v18, 2u);
    v23 = v22;
    v4 = v21;
    a3 = v20;
    v10 = v19;
    v8 = v29;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v24 = swift_allocObject();
  v25 = v31;
  v24[2] = v30;
  v24[3] = v25;
  v24[4] = v32;

  sub_2664DE428();
  (*(v5 + 16))(v8, v10, v4);
  v26 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_266352BC8;
  *(v27 + 24) = v24;
  (*(v5 + 32))(v27 + v26, v8, v4);

  sub_266387A48(a3, sub_266388074, v27);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_266388074(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_2664DE438() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_266386F30(a1, a2, v6, v7, v8);
}

uint64_t sub_2663881B4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7, int a8, void (*a9)(uint64_t, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v40 = a8;
  v41 = a7;
  v38 = a4;
  v39 = a5;
  v42 = a3;
  v44 = a6;
  v45 = a13;
  v43 = a12;
  v47 = a10;
  v48 = a14;
  v46 = a9;
  v16 = sub_2664DFE08();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v20 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v37 - v21;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v23 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v17 + 16))(v20, v22, v16);
  v24 = (*(v17 + 80) + 33) & ~*(v17 + 80);
  v25 = (v18 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  v27 = v16;
  v28 = a2;
  v29 = v42;
  *(v26 + 32) = v42;
  v30 = v26 + v24;
  v31 = v27;
  (*(v17 + 32))(v30, v20);
  v32 = (v26 + v25);
  v33 = v39;
  *v32 = v38;
  v32[1] = v33;

  v34 = sub_2664E0848();
  sub_2664DFDC8(v34, &dword_26629C000, v23, a1, v28, v29, v22, v44, v41, v40, MEMORY[0x277D84F90]);
  v35 = swift_allocObject();
  *(v35 + 16) = v45;
  *(v35 + 24) = v26;

  v46(v48, v35);

  return (*(v17 + 8))(v22, v31);
}

uint64_t sub_266388448(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

uint64_t sub_266388480()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0x52656D614E707041, 0xEF7265766C6F7365, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280073038 = v8;
  return result;
}

id static AppNameResolver.queue.getter()
{
  if (qword_280071B58 != -1)
  {
    swift_once();
  }

  v1 = qword_280073038;

  return v1;
}

uint64_t sub_26638867C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730A0, &qword_2664E9288);
  v0 = swift_allocObject();
  *(v0 + 16) = sub_266385F14(MEMORY[0x277D84F90]);
  *(v0 + 32) = 0xD00000000000001DLL;
  *(v0 + 40) = 0x80000002664F5D40;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v1 = qword_280F91470;
  v3[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v3[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v3[0] = v1;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  result = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD00000000000001DLL, 0x80000002664F5D40, 1, v3);
  *(v0 + 24) = result;
  off_280073040 = v0;
  return result;
}

uint64_t sub_266388790()
{
  v5 = &type metadata for DeviceProvider;
  v6 = &protocol witness table for DeviceProvider;
  if (qword_280F90D58 != -1)
  {
    swift_once();
  }

  LODWORD(v4) = dword_280F90D60;
  BYTE4(v4) = byte_280F90D64;
  v2 = &type metadata for FeatureFlagProvider;
  v3 = &protocol witness table for FeatureFlagProvider;
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  *&v1 = qword_280F905C8;
  *(&v1 + 5) = *(&qword_280F905C8 + 5);
  sub_2662A8618(&v4, &unk_280073048);
  return sub_2662A8618(&v1, &unk_280073070);
}

uint64_t AppNameResolver.init(deviceProvider:featureFlagProvider:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2662A8618(a1, a3);

  return sub_2662A8618(a2, a3 + 40);
}

uint64_t static AppNameResolver.shared.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_280071B68 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_266388958(&unk_280073048, v2);
}

uint64_t AppNameResolver.localizedAppName(for:helper:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a3;
  v24 = a1;
  v25 = a2;
  v7 = sub_2664DFE08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v15 = qword_280F91508;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "appNameResolverLocalizedAppName";
  *(v19 + 24) = 31;
  *(v19 + 32) = 2;
  (*(v8 + 32))(v19 + v17, v11, v7);
  v20 = (v19 + v18);
  *v20 = sub_26633A764;
  v20[1] = v14;

  v21 = sub_2664E0848();
  sub_2664DFDC8(v21, &dword_26629C000, v16, "appNameResolverLocalizedAppName", 31, 2, v13, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_266389984;
  *(v22 + 24) = v19;

  sub_266388C68(sub_266389988, v22, v24, v25, v27, v26);

  (*(v8 + 8))(v13, v7);
}

uint64_t sub_266388C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a4;
  v28 = a3;
  v10 = sub_2664E0038();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2664E00B8();
  v14 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = qword_280071B58;

  if (v18 != -1)
  {
    swift_once();
  }

  sub_266388958(a5, v35);
  sub_266389A90(a6, v33);
  v19 = swift_allocObject();
  v20 = v35[3];
  *(v19 + 64) = v35[2];
  *(v19 + 80) = v20;
  v21 = v35[4];
  v22 = v35[1];
  *(v19 + 32) = v35[0];
  *(v19 + 48) = v22;
  v23 = v33[0];
  v24 = v33[1];
  *(v19 + 96) = v21;
  *(v19 + 112) = v23;
  v25 = v29;
  *(v19 + 16) = v28;
  *(v19 + 24) = v25;
  *(v19 + 128) = v24;
  *(v19 + 144) = v34;
  *(v19 + 152) = sub_266389A58;
  *(v19 + 160) = v17;
  aBlock[4] = sub_266389B00;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_19;
  v26 = _Block_copy(aBlock);

  sub_2664E0068();
  v31 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v16, v13, v26);
  _Block_release(v26);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v30);
}

uint64_t sub_266388FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_280071B60 != -1)
  {
    swift_once();
  }

  v12 = off_280073040;
  v23[0] = a1;
  v23[1] = a2;
  sub_266388958(a3, v22);
  sub_266389A90(a4, v20);
  v13 = swift_allocObject();
  v14 = v22[3];
  *(v13 + 48) = v22[2];
  *(v13 + 64) = v14;
  *(v13 + 80) = v22[4];
  v15 = v22[1];
  *(v13 + 16) = v22[0];
  *(v13 + 32) = v15;
  *(v13 + 96) = a1;
  *(v13 + 104) = a2;
  v16 = v20[1];
  *(v13 + 112) = v20[0];
  *(v13 + 128) = v16;
  *(v13 + 144) = v21;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v18 = *(*v12 + 160);

  v18(v23, sub_266389B14, v13, 0, 1, sub_26633C4E4, v17);
}

uint64_t sub_266389150(void (*a1)(uint64_t *), uint64_t a2, void *a3, uint64_t a4, unint64_t a5, char *a6)
{
  v39 = a6;
  v41 = a2;
  v42 = a1;
  v40 = sub_2664DFE38();
  v9 = *(v40 - 8);
  v10 = MEMORY[0x28223BE20](v40);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = a3[3];
  v14 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v13);
  v15 = (*(v14 + 8))(v13, v14);
  if ((v15 & 1) == 0)
  {
    v16 = a4;
    goto LABEL_7;
  }

  v43 = a4;
  v44 = a5;
  MEMORY[0x28223BE20](v15);
  *(&v39 - 2) = &v43;
  v16 = a4;
  if (sub_2662AA720(sub_2662AA7CC, (&v39 - 4), &unk_2877E4818))
  {
LABEL_7:
    v22 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v23 = v9;
    v24 = sub_2663898A8(v16, a5, 0);
    v25 = [v24 localizedName];

    v26 = sub_2664E02C8();
    v28 = v27;

    v29 = v40;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v29, qword_280F914F0);
    swift_beginAccess();
    (*(v23 + 16))(v12, v30, v29);

    v31 = sub_2664DFE18();
    v32 = sub_2664E06C8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v39 = v12;
      v34 = v16;
      v35 = v33;
      v36 = swift_slowAlloc();
      v47[0] = v36;
      *v35 = 136315394;
      *(v35 + 4) = sub_2662A320C(v34, a5, v47);
      *(v35 + 12) = 2080;

      v37 = sub_2662A320C(v26, v28, v47);

      *(v35 + 14) = v37;
      _os_log_impl(&dword_26629C000, v31, v32, "For appIdentifier: %s computed localizedName: %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v36, -1, -1);
      MEMORY[0x266784AD0](v35, -1, -1);

      (*(v23 + 8))(v39, v29);
    }

    else
    {

      (*(v23 + 8))(v12, v29);
    }

    v47[0] = v26;
    v47[1] = v28;
    v42(v47);
  }

  sub_266389A90(v39, &v43);
  v17 = v45;
  if (v45)
  {
    v18 = v46;
    __swift_project_boxed_opaque_existential_1(&v43, v45);
    v19 = (*(v18 + 8))(a4, a5, v17, v18);
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1Tm(&v43);
    if (v21)
    {
      v43 = v19;
      v44 = v21;
      v42(&v43);
    }
  }

  else
  {
    sub_266389B24(&v43);
  }

  v43 = 0;
  v44 = 0;
  return (v42)(&v43);
}

uint64_t sub_266389794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v14 = a1;
  v15 = a2;
  v16 = v5;
  v17 = a3;

  sub_2663881B4("appNameResolverLocalizedAppName", 31, 2u, sub_26633C4E4, v11, " enableTelemetry=YES ", 21, 2, sub_26638999C, v13, &unk_2877EBDA0, &unk_2877EBDC8, sub_266389B8C, sub_266389B90);
}

id sub_2663898A8(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2664E02A8();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_2664DE1A8();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_2663899A8(uint64_t a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 32);

  return sub_2663E87E0(a1, v5, v6, v8, v1 + v4, v7);
}

uint64_t sub_266389A58(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t sub_266389A90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073098, &unk_2664E9278);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266389B24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073098, &unk_2664E9278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static SABaseClientBoundCommand.createPunchoutCommand(to:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  (*(v8 + 16))(v10, v11, v7);

  v12 = sub_2664DFE18();
  v13 = sub_2664E06E8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_2662A320C(a1, a2, &v21);
    _os_log_impl(&dword_26629C000, v12, v13, "Creating punchout command for URL: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x266784AD0](v15, -1, -1);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v16 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_2664DE258();
  v17 = sub_2664DE268();
  v18 = *(v17 - 8);
  v19 = 0;
  if ((*(v18 + 48))(v6, 1, v17) != 1)
  {
    v19 = sub_2664DE208();
    (*(v18 + 8))(v6, v17);
  }

  [v16 setPunchOutUri_];

  return v16;
}

uint64_t sub_266389EC0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2664DFE08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = sub_2664E02A8();
  v8 = [v6 initWithSuiteName_];

  if (v8)
  {
    v9 = sub_2664E02A8();
    v42 = [v8 BOOLForKey_];
  }

  else
  {
    v42 = 0;
  }

  v41 = sub_26638A3EC();
  v40 = sub_26638A5EC();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v10 = qword_280F91D48;
  sub_2664DFDE8();
  v11 = sub_2664E0848();
  sub_2664DFDC8(v11, &dword_26629C000, v10, "featureFlagsPymEnabled", 22, 2, v5, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  sub_26638A7EC(&v43);
  sub_2664E0838();
  sub_2664DFDD8();
  (*(v3 + 8))(v5, v2);
  v39 = v43;
  v12 = sub_26629FC7C(0xD00000000000001BLL, 0x80000002664F6000, 0x6964754169726953, 0xE90000000000006FLL);
  v13 = sub_26638AA88();
  v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v15 = sub_2664E02A8();
  v16 = [v14 initWithSuiteName_];

  if (v16)
  {
    v17 = sub_2664E02A8();
    v18 = [v16 BOOLForKey_];
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v20 = sub_2664E02A8();
  v21 = [v19 initWithSuiteName_];

  if (v21)
  {
    v22 = sub_2664E02A8();
    v23 = [v21 BOOLForKey_];
  }

  else
  {
    v23 = 0;
  }

  v24 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v25 = sub_2664E02A8();
  v26 = [v24 initWithSuiteName_];

  if (v26)
  {
    v27 = sub_2664E02A8();
    v28 = [v26 BOOLForKey_];
  }

  else
  {
    v28 = 0;
  }

  v29 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v30 = sub_2664E02A8();
  v31 = [v29 initWithSuiteName_];

  if (v31)
  {
    v32 = sub_2664E02A8();
    v33 = [v31 BOOLForKey_];
  }

  else
  {
    v33 = 0;
  }

  v34 = v12 & 1;
  v35 = v40 & 1;
  v36 = v41 & 1;
  result = sub_26638AED8();
  *a1 = 0;
  *(a1 + 2) = v42;
  *(a1 + 3) = v36;
  *(a1 + 4) = v35;
  *(a1 + 5) = v39;
  *(a1 + 6) = v34;
  *(a1 + 7) = v13 & 1;
  *(a1 + 8) = v18;
  *(a1 + 9) = v23;
  *(a1 + 10) = v28;
  *(a1 + 11) = v33;
  *(a1 + 12) = result & 1;
  return result;
}

uint64_t sub_26638A3EC()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26629FC7C(0xD000000000000015, 0x80000002664F6140, 0x6964754169726953, 0xE90000000000006FLL);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v5, v0);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v4 & 1;
    _os_log_impl(&dword_26629C000, v6, v7, "FeatureFlags#isHybridOnMacEnabled: %{BOOL}d", v8, 8u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_26638A5EC()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26629FC7C(0xD00000000000001ALL, 0x80000002664F6120, 0x6964754169726953, 0xE90000000000006FLL);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v5, v0);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v4 & 1;
    _os_log_impl(&dword_26629C000, v6, v7, "FeatureFlags#isSwitchNewsSourcePreferenceEnabled: %{BOOL}d", v8, 8u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_26638A7EC@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_26629FC7C(7174480, 0xE300000000000000, 0x495569726953, 0xE600000000000000))
  {
    v6 = 1;
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v8 = sub_2664E02A8();
    v9 = [v7 initWithSuiteName_];

    if (v9)
    {
      v10 = sub_2664E02A8();
      v6 = [v9 BOOLForKey_];
    }

    else
    {
      v6 = 0;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v11, v2);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v6;
    _os_log_impl(&dword_26629C000, v12, v13, "FeatureFlags#pymEnabled pym enabled: %{BOOL}d", v14, 8u);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  return result;
}

uint64_t sub_26638AA88()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = sub_2664E02A8();
  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = sub_2664E02A8();
    v8 = [v6 BOOLForKey_];
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_26629FC7C(0x656C65735F707061, 0xED00006E6F697463, 0x6964754169726953, 0xE90000000000006FLL);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v10, v0);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06E8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109632;
    *(v13 + 4) = v9 & 1;
    *(v13 + 8) = 1024;
    *(v13 + 10) = v8;
    *(v13 + 14) = 1024;
    *(v13 + 16) = (v9 | v8) & 1;
    _os_log_impl(&dword_26629C000, v11, v12, "FeatureFlags#isAppSelectionEnabled featureToggle=%{BOOL}d, userDefaults=%{BOOL}d. enabled=%{BOOL}d", v13, 0x14u);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return (v9 | v8) & 1;
}

uint64_t FeatureFlagProvider.forceResolveBundleId.getter(uint64_t a1)
{
  if (!AFIsInternalInstall())
  {
    return 0;
  }

  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_2664E02A8();
  v3 = [v1 initWithSuiteName_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_2664E02A8();
  v5 = [v3 stringForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_2664E02C8();

  return v6;
}

uint64_t sub_26638AED8()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[3] = &type metadata for Features;
  v16[4] = sub_26638EB20();
  LOBYTE(v16[0]) = 3;
  v4 = sub_2664DF088();
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = sub_2664E02A8();
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    v8 = sub_2664E02A8();
    v9 = [v7 BOOLForKey_];
  }

  else
  {
    v9 = 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v10, v0);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109376;
    *(v13 + 4) = v4 & 1;
    *(v13 + 8) = 1024;
    *(v13 + 10) = v9;
    _os_log_impl(&dword_26629C000, v11, v12, "FeatureFlagProvider#isSiriForAirPlayEnabled featureFlag: %{BOOL}d, default: %{BOOL}d", v13, 0xEu);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return (v4 | v9) & 1;
}

uint64_t FeatureFlagProvider.appTrainingDisambiguationLastUsed.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2664E02A8();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_2664E02A8();
    [v2 doubleForKey_];
  }

  return sub_2664DE3D8();
}

uint64_t sub_26638B288(uint64_t a1)
{
  v2 = sub_2664DE438();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return FeatureFlagProvider.appTrainingDisambiguationLastUsed.setter(v4);
}

uint64_t FeatureFlagProvider.appTrainingDisambiguationLastUsed.setter(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    sub_2664DE3E8();
    v6 = v5;
    v7 = sub_2664E02A8();
    [v4 setDouble:v7 forKey:v6];
  }

  v8 = sub_2664DE438();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

uint64_t (*FeatureFlagProvider.appTrainingDisambiguationLastUsed.modify(uint64_t *a1))()
{
  v2 = sub_2664DE438();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  v4 = *(v3 + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[2] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[2] = malloc(v4);
    v5 = malloc(v4);
  }

  a1[3] = v5;
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = sub_2664E02A8();
  v8 = [v6 initWithSuiteName_];

  if (v8)
  {
    v9 = sub_2664E02A8();
    [v8 doubleForKey_];
  }

  sub_2664DE3D8();
  return sub_26638B5E0;
}

void sub_26638B5E0(void *a1, char a2)
{
  if (a2)
  {
    v4 = a1[2];
    v3 = a1[3];
    v5 = *a1;
    v6 = a1[1];
    (*(v6 + 16))(v4, v3, *a1);
    v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v8 = sub_2664E02A8();
    v9 = [v7 initWithSuiteName_];

    if (v9)
    {
      sub_2664DE3E8();
      v11 = v10;
      v12 = sub_2664E02A8();
      [v9 setDouble:v12 forKey:v11];
    }

    v13 = *(v6 + 8);
    v13(v4, v5);
    v13(v3, v5);
  }

  else
  {
    v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v15 = sub_2664E02A8();
    v16 = [v14 initWithSuiteName_];

    v3 = a1[3];
    if (v16)
    {
      sub_2664DE3E8();
      v18 = v17;
      v19 = sub_2664E02A8();
      [v16 setDouble:v19 forKey:v18];
    }

    v4 = a1[2];
    (*(a1[1] + 8))(v3, *a1);
  }

  free(v3);

  free(v4);
}

uint64_t FeatureFlagProvider.lastBundleIdentifier.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2664E02A8();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2664E02A8();
  v4 = [v2 stringForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_2664E02C8();

  return v5;
}

void FeatureFlagProvider.lastBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_2664E02A8();
  v5 = [v3 initWithSuiteName_];

  if (v5)
  {
    if (a2)
    {
      v6 = sub_2664E02A8();
    }

    else
    {
      v6 = 0;
    }

    v7 = sub_2664E02A8();
    [v5 setObject:v6 forKey:v7];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void (*FeatureFlagProvider.lastBundleIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = FeatureFlagProvider.lastBundleIdentifier.getter();
  a1[1] = v3;
  return sub_26638BA44;
}

void sub_26638BA44(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {

    FeatureFlagProvider.lastBundleIdentifier.setter(v3, v2);
  }

  else
  {
    FeatureFlagProvider.lastBundleIdentifier.setter(*a1, v2);
  }
}

uint64_t FeatureFlagProvider.appSelectionLastUsed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4 && (v5 = sub_2664E02A8(), [v4 doubleForKey_], v7 = v6, v4, v5, v7 != 0.0))
  {
    sub_2664DE3D8();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_2664DE438();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, v8, 1, v9);
}

uint64_t sub_26638BBD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_26638119C(a1, &v6 - v3);
  return FeatureFlagProvider.appSelectionLastUsed.setter(v4);
}

uint64_t FeatureFlagProvider.appSelectionLastUsed.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_2664DE438();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26638119C(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2662A9238(v4, &qword_2800737D0, qword_2664E4FD0);
    v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v10 = sub_2664E02A8();
    v11 = [v9 initWithSuiteName_];

    if (v11)
    {
      v12 = sub_2664E02A8();
      [v11 removeObjectForKey_];
    }

    return sub_2662A9238(a1, &qword_2800737D0, qword_2664E4FD0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v15 = sub_2664E02A8();
    v16 = [v14 initWithSuiteName_];

    if (v16)
    {
      sub_2664DE3E8();
      v18 = v17;
      v19 = sub_2664E02A8();
      [v16 setDouble:v19 forKey:v18];
    }

    sub_2662A9238(a1, &qword_2800737D0, qword_2664E4FD0);
    return (*(v6 + 8))(v8, v5);
  }
}

void (*FeatureFlagProvider.appSelectionLastUsed.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  FeatureFlagProvider.appSelectionLastUsed.getter(v4);
  return sub_26638BFF4;
}

void sub_26638BFF4(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_26638119C(v3, v2);
    FeatureFlagProvider.appSelectionLastUsed.setter(v2);
    sub_2662A9238(v3, &qword_2800737D0, qword_2664E4FD0);
  }

  else
  {
    FeatureFlagProvider.appSelectionLastUsed.setter(v3);
  }

  free(v3);

  free(v2);
}

id FeatureFlagProvider.appSelectionUsageCounter.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2664E02A8();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2664E02A8();
  v4 = [v2 integerForKey_];

  return v4;
}

void sub_26638C12C(void *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_2664E02A8();
    v6 = [v4 integerForKey_];
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

void sub_26638C1F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_2664E02A8();
    [v4 setInteger:v1 forKey:v5];
  }
}

void FeatureFlagProvider.appSelectionUsageCounter.setter(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_2664E02A8();
    [v4 setInteger:a1 forKey:v5];
  }
}

void (*FeatureFlagProvider.appSelectionUsageCounter.modify(void *a1))(uint64_t *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_2664E02A8();
    v6 = [v4 integerForKey_];
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_26638C4A8;
}

void sub_26638C4A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v5 = [v2 initWithSuiteName_];

  if (v5)
  {
    v4 = sub_2664E02A8();
    [v5 setInteger:v1 forKey:v4];
  }
}

uint64_t sub_26638C5B4(char a1, const char *a2, ...)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = &type metadata for Features;
  v15[4] = sub_26638EB20();
  LOBYTE(v15[0]) = a1;
  v8 = sub_2664DF088();
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v9, v4);
  v10 = sub_2664DFE18();
  v11 = sub_2664E06C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v8 & 1;
    _os_log_impl(&dword_26629C000, v10, v11, a2, v12, 8u);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return v8 & 1;
}

uint64_t FeatureFlagProvider.isExpandedFavoritesEnabled.getter()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26629FC7C(0xD000000000000012, 0x80000002664F5E40, 0x6964754169726953, 0xE90000000000006FLL);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v5, v0);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v4 & 1;
    _os_log_impl(&dword_26629C000, v6, v7, "FeatureFlagProvider#isExpandedFavoritesEnabled#SiriAudio %{BOOL}d", v8, 8u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t FeatureFlagProvider.isSiriSuggestionsEnabled.getter()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26629FC7C(0xD000000000000010, 0x80000002664F5E60, 0x6964754169726953, 0xE90000000000006FLL);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v5, v0);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v4 & 1;
    _os_log_impl(&dword_26629C000, v6, v7, "FeatureFlagProvider#isSiriSuggestionsEnabled#SiriAudio %{BOOL}d", v8, 8u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t FeatureFlagProvider.isModernConcurrencyEnabled.getter()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26629FC7C(0xD000000000000012, 0x80000002664F5E80, 0x6964754169726953, 0xE90000000000006FLL);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v5, v0);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v4 & 1;
    _os_log_impl(&dword_26629C000, v6, v7, "FeatureFlagProvider#ModernConcurrencyEnabled#SiriAudio %{BOOL}d", v8, 8u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

id FeatureFlagProvider.useOpenIntentForSearch.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2664E02A8();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2664E02A8();
  v4 = [v2 BOOLForKey_];

  return v4;
}

unint64_t FeatureFlagProvider.resolvedAppHistory.getter()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = sub_2664E02A8();
  v6 = [v4 initWithSuiteName_];

  if (!v6)
  {
    v21 = 0u;
    v22 = 0u;
LABEL_9:
    sub_2662A9238(&v21, &unk_280074250, &unk_2664E3680);
    goto LABEL_10;
  }

  v7 = sub_2664E02A8();
  v8 = [v6 objectForKey_];

  if (v8)
  {
    sub_2664E09E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (!*(&v20 + 1))
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730B0, &qword_2664E92A8);
  if (swift_dynamicCast())
  {
    v9 = v19;
    goto LABEL_11;
  }

LABEL_10:
  v9 = sub_266386024(MEMORY[0x277D84F90]);
LABEL_11:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v10, v0);

  v11 = sub_2664DFE18();
  v12 = sub_2664E06E8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v19 = v14;
    *v13 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730A8, &qword_2664E92A0);
    v15 = sub_2664E01D8();
    v17 = sub_2662A320C(v15, v16, &v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_26629C000, v11, v12, "FeatureFlagProvider#resolvedAppHistory result: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x266784AD0](v14, -1, -1);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return v9;
}

void FeatureFlagProvider.resolvedAppHistory.setter(uint64_t a1)
{
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v1, qword_280F914F0);
  swift_beginAccess();
  (*(v2 + 16))(v4, v5, v1);

  v6 = sub_2664DFE18();
  v7 = sub_2664E06E8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730A8, &qword_2664E92A0);
    v10 = sub_2664E01D8();
    v12 = sub_2662A320C(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_26629C000, v6, v7, "FeatureFlagProvider#resolvedAppHistory setting to new value: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266784AD0](v9, -1, -1);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = sub_2664E02A8();
  v15 = [v13 initWithSuiteName_];

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730A8, &qword_2664E92A0);
    v16 = sub_2664E01A8();

    v17 = sub_2664E02A8();
    [v15 setObject:v16 forKey:v17];
  }

  else
  {
  }
}

void (*FeatureFlagProvider.resolvedAppHistory.modify(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = FeatureFlagProvider.resolvedAppHistory.getter();
  return sub_26638D56C;
}

void sub_26638D56C(uint64_t *a1, char a2)
{
  if (a2)
  {

    FeatureFlagProvider.resolvedAppHistory.setter(v2);
  }

  else
  {
    FeatureFlagProvider.resolvedAppHistory.setter(*a1);
  }
}

uint64_t FeatureFlagProvider.classicalAppBundleOverride.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2664E02A8();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2664E02A8();
  v4 = [v2 stringForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_2664E02C8();

  return v5;
}

id FeatureFlagProvider.classicalSnippetBundleOverride.getter()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = sub_2664E02A8();
  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = sub_2664E02A8();
    v8 = [v6 stringForKey_];

    if (v8)
    {
      v6 = sub_2664E02C8();
      v10 = v9;

      goto LABEL_6;
    }

    v6 = 0;
  }

  v10 = 0;
LABEL_6:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v11, v0);

  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = v0;
    v15 = v14;
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    if (v10)
    {
      v17 = v6;
    }

    else
    {
      v17 = 0;
    }

    if (v10)
    {
      v18 = v10;
    }

    else
    {
      v18 = 0xE000000000000000;
    }

    v19 = sub_2662A320C(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_26629C000, v12, v13, "FeatureFlagProvider#classicalSnippetBundleOverride %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266784AD0](v16, -1, -1);
    MEMORY[0x266784AD0](v15, -1, -1);

    (*(v1 + 8))(v3, v22);
  }

  else
  {

    (*(v1 + 8))(v3, v0);
  }

  return v6;
}

id FeatureFlagProvider.isSonicResponseOnlyEnabled.getter()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = sub_2664E02A8();
  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = sub_2664E02A8();
    v8 = [v6 BOOLForKey_];
  }

  else
  {
    v8 = 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v9, v0);
  v10 = sub_2664DFE18();
  v11 = sub_2664E06C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_26629C000, v10, v11, "FeatureFlagProvider#isSonicResponseOnlyEnabled#SiriAudio %{BOOL}d", v12, 8u);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return v8;
}

id FeatureFlagProvider.classicalTCCRejectedCounter.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2664E02A8();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2664E02A8();
  v4 = [v2 integerForKey_];

  return v4;
}

void sub_26638DCE0(void *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_2664E02A8();
    v6 = [v4 integerForKey_];
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

void sub_26638DDA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_2664E02A8();
    [v4 setInteger:v1 forKey:v5];
  }
}

void FeatureFlagProvider.classicalTCCRejectedCounter.setter(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_2664E02A8();
    [v4 setInteger:a1 forKey:v5];
  }
}

void (*FeatureFlagProvider.classicalTCCRejectedCounter.modify(void *a1))(uint64_t *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_2664E02A8();
    v6 = [v4 integerForKey_];
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_26638E05C;
}

void sub_26638E05C(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v5 = [v2 initWithSuiteName_];

  if (v5)
  {
    v4 = sub_2664E02A8();
    [v5 setInteger:v1 forKey:v4];
  }
}

uint64_t (*sub_26638E1E8(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = FeatureFlagProvider.appTrainingDisambiguationLastUsed.modify(v2);
  return sub_26638EDB8;
}

void (*sub_26638E288(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = FeatureFlagProvider.lastBundleIdentifier.getter();
  a1[1] = v3;
  return sub_26638BA44;
}

void (*sub_26638E300(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  FeatureFlagProvider.appSelectionLastUsed.getter(v4);
  return sub_26638BFF4;
}

id sub_26638E3B4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2664E02A8();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2664E02A8();
  v4 = [v2 integerForKey_];

  return v4;
}

void sub_26638E478(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_2664E02A8();
    [v4 setInteger:a1 forKey:v5];
  }
}

uint64_t (*sub_26638E560(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = FeatureFlagProvider.appSelectionUsageCounter.modify(v2);
  return sub_26638E5C8;
}

id sub_26638E674()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2664E02A8();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2664E02A8();
  v4 = [v2 BOOLForKey_];

  return v4;
}

void (*sub_26638E768(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = FeatureFlagProvider.resolvedAppHistory.getter();
  return sub_26638D56C;
}

id sub_26638E804()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2664E02A8();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2664E02A8();
  v4 = [v2 integerForKey_];

  return v4;
}

void sub_26638E8C8(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_2664E02A8();
    [v4 setInteger:a1 forKey:v5];
  }
}

uint64_t (*sub_26638E9B0(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = FeatureFlagProvider.classicalTCCRejectedCounter.modify(v2);
  return sub_26638EDB8;
}

void sub_26638EA18(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

const char *sub_26638EA60()
{
  if (*v0 >= 2u)
  {
    return "SiriAudio";
  }

  else
  {
    return "SiriPlaybackControls";
  }
}

const char *sub_26638EA90()
{
  v1 = *v0;
  v2 = "media_controls_on_sirix";
  v3 = "siri_for_airplay";
  v4 = "modern_concurrency";
  if (v1 != 4)
  {
    v4 = "app_intents";
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = "media_controls_on_sirix_v2";
  if (v1 != 1)
  {
    v5 = "music_on_sirix";
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

unint64_t sub_26638EB20()
{
  result = qword_280F8F6C8;
  if (!qword_280F8F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F6C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureFlagProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[13])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureFlagProvider(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Features(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Features(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26638ED64()
{
  result = qword_2800730B8;
  if (!qword_2800730B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800730B8);
  }

  return result;
}

uint64_t sub_26638EF48()
{
  sub_2664DEC08();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v0 = sub_2664DE948();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  return v0 & 1;
}

uint64_t sub_26638F004()
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    v0 = sub_2664DF4B8();
    v1 = [v0 isEyesFree];
  }

  else
  {
    sub_2664DEC08();
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    v1 = sub_2664DE918();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  return v1 & 1;
}

uint64_t sub_26638F350(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    a1();
    v6 = a2();

    return v6;
  }

  else
  {
    sub_2664DEC08();
    v8 = v12;
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v10 = a3(v8, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    return v10;
  }
}

uint64_t sub_26638F494(uint64_t (*a1)(void), void (*a2)(void), void (*a3)(uint64_t, uint64_t))
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    a1();
    a2();
  }

  else
  {
    sub_2664DEC08();
    v7 = v10;
    v8 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    a3(v7, v8);
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }
}

BOOL sub_26638F56C()
{
  sub_2664DE8E8();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2664DEAC8();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2664DEB58();
  v1 = v0;
  if (v0)
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v1 != 0;
}

uint64_t sub_26638F610()
{
  sub_2664DEC08();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_2664DE908();
  return __swift_destroy_boxed_opaque_existential_1Tm(v1);
}

uint64_t sub_26638F6A0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4E8();
    v4 = a1();

    return v4 & 1;
  }

  else
  {
    sub_2664DEC08();
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v8 = a2(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    return v8 & 1;
  }
}

uint64_t sub_26638F74C(uint64_t a1)
{
  sub_2664DEC08();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1 = sub_2664DE968();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  return v1 & 1;
}

uint64_t sub_26638FC3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    a3();
    v8 = a4();

    return v8;
  }

  else
  {
    sub_2664DEC08();
    v10 = v14;
    v11 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v12 = a5(v10, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    return v12;
  }
}

uint64_t sub_26638FD80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(uint64_t, uint64_t))
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    a3();
    a4();
  }

  else
  {
    sub_2664DEC08();
    v9 = v12;
    v10 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    a5(v9, v10);
    return __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }
}

uint64_t sub_26638FE84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4E8();
    v6 = a3();

    return v6 & 1;
  }

  else
  {
    sub_2664DEC08();
    v8 = v12;
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v10 = a4(v8, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    return v10 & 1;
  }
}

char *sub_26639040C()
{
  type metadata accessor for ShazamSessionManager(0);
  swift_allocObject();
  result = sub_2663904A8();
  qword_2800730C0 = result;
  return result;
}

uint64_t static ShazamSessionManager.shared.getter()
{
  if (qword_280071B78 != -1)
  {
    swift_once();
  }
}

char *sub_2663904A8()
{
  v1 = v0;
  v2 = sub_2664DE4A8();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E0788();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664E00B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D84FA0];
  *(v1 + 3) = 0;
  *(v1 + 4) = 0;
  *(v1 + 2) = v13;
  v14 = OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_deferredContinuation;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730D0, &qword_2664E95F8);
  (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_workQueue;
  sub_2664E0078();
  v27 = 0;
  sub_2662A3CE8(&qword_280F8F5D0, MEMORY[0x277D85230], MEMORY[0x277D85240]);
  sub_2664E0F48();
  v17 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000002CLL, 0x80000002664F6280, v12, v8);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  *&v1[v16] = v17;
  v18 = OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_currentPerfContextId;
  sub_2664DE498();
  v19 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v20 = sub_2664DE478();
  v21 = [v19 initWithNSUUID_];

  (*(v25 + 8))(v4, v26);
  *&v1[v18] = v21;
  v22 = &v1[OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_bundleID];
  *v22 = 0xD00000000000001ALL;
  *(v22 + 1) = 0x80000002664F62B0;
  sub_26639080C();
  return v1;
}

uint64_t sub_26639080C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073110, &qword_2664E9720);
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v31 = v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073118, &qword_2664E9728);
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v29 = v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073120, &qword_2664E9730);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073128, &qword_2664E9738);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v27 - v10;
  v34 = sub_2664DE6C8();
  v12 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2664DE618();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);

  sub_2664DE6D8();
  v16 = sub_2664DE6E8();
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  sub_2664DE6B8();
  sub_2664DE6A8();
  sub_2664DE698();
  v17 = sub_2664DE688();

  v35 = v17;
  swift_allocObject();
  swift_weakInit();
  v27[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073158, &qword_2664E9750);
  v28 = v4;
  v27[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073160, &unk_2664E9758);
  sub_2662C1428(&qword_280073168, &qword_280073158, &qword_2664E9750, MEMORY[0x277CBCD90]);
  sub_2662C1428(&qword_280073170, &qword_280073160, &unk_2664E9758, MEMORY[0x277CBCE80]);
  v18 = v29;
  sub_2664DFF78();

  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  sub_2662C1428(&qword_280073178, &qword_280073118, &qword_2664E9728, MEMORY[0x277CBCC40]);
  v19 = v28;
  v20 = sub_2664DFF68();

  (*(v30 + 8))(v18, v19);
  *(v1 + 32) = v20;

  sub_2664DE698();
  v21 = sub_2664DE678();

  v35 = v21;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073130, &qword_2664E9740);
  v30 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073138, &qword_2664E9748);
  sub_2662C1428(&qword_280073140, &qword_280073130, &qword_2664E9740, MEMORY[0x277CBCD90]);
  sub_2662C1428(&qword_280073148, &qword_280073138, &qword_2664E9748, MEMORY[0x277CBCE80]);
  v22 = v31;
  v23 = v30;
  sub_2664DFF78();

  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  sub_2662C1428(&qword_280073150, &qword_280073110, &qword_2664E9720, MEMORY[0x277CBCC40]);
  v24 = v33;
  v25 = sub_2664DFF68();

  (*(v32 + 8))(v22, v24);
  (*(v23 + 8))(v14, v34);
  *(v1 + 24) = v25;
}

uint64_t sub_266390FC0@<X0>(void **a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v8, v10, v5);
  v11 = v9;
  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25[1] = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v26[0] = v16;
    *v15 = 136315138;
    v25[3] = v9;
    v17 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
    v18 = sub_2664E0318();
    v20 = sub_2662A320C(v18, v19, v26);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_26629C000, v12, v13, "ShazamSessionManager#startListeningForSessions catch error: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266784AD0](v16, -1, -1);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = *(Strong + 32);

    if (v22)
    {
      sub_2664DFF48();
    }
  }

  swift_beginAccess();
  v23 = swift_weakLoadStrong();
  if (v23)
  {
    *(v23 + 32) = 0;
  }

  v25[2] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073180, &unk_2664E9768);
  return sub_2664DFF58();
}

uint64_t sub_2663912C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26629C000, v7, v8, "ShazamSessionManager#startListeningForSessions activity state listener torn down", v9, 2u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 32);

    if (v11)
    {
      sub_2664DFF48();
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_2663914F0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2664E0038();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v36 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2664E00B8();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  (*(v8 + 16))(v10, v12, v7);

  v13 = sub_2664DFE18();
  v14 = sub_2664E06C8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v7;
    v17 = v16;
    aBlock[0] = v16;
    *v15 = 136315138;
    v18 = sub_2664DE648();
    v19 = MEMORY[0x2667834D0](v11, v18);
    v32 = v10;
    v21 = v8;
    v22 = v11;
    v23 = v4;
    v24 = sub_2662A320C(v19, v20, aBlock);

    *(v15 + 4) = v24;
    v4 = v23;
    v11 = v22;
    _os_log_impl(&dword_26629C000, v13, v14, "ShazamSessionManager#startListeningForSessions received updated activity states - %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x266784AD0](v17, -1, -1);
    MEMORY[0x266784AD0](v15, -1, -1);

    result = (*(v21 + 8))(v32, v33);
    if (!*(v22 + 16))
    {
      return result;
    }
  }

  else
  {

    result = (*(v8 + 8))(v10, v7);
    if (!*(v11 + 16))
    {
      return result;
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = *(result + OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_workQueue);

    v27 = swift_allocObject();
    *(v27 + 16) = v11;
    *(v27 + 24) = a2;
    aBlock[4] = sub_266396FDC;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2662A3F90;
    aBlock[3] = &block_descriptor_20;
    v28 = _Block_copy(aBlock);

    v29 = v34;
    sub_2664E0068();
    v39 = MEMORY[0x277D84F90];
    sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640, MEMORY[0x277D83970]);
    v30 = v36;
    sub_2664E0A08();
    MEMORY[0x266783800](0, v29, v30, v28);
    _Block_release(v28);

    (*(v38 + 8))(v30, v4);
    (*(v35 + 8))(v29, v37);
  }

  return result;
}

uint64_t sub_266391A58(uint64_t a1, uint64_t a2)
{
  v127 = a2;
  v118 = sub_2664DE608();
  v132 = *(v118 - 8);
  v3 = MEMORY[0x28223BE20](v118);
  v108 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v114 = &v107 - v5;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v126 = &v107 - v11;
  v137 = sub_2664DE668();
  v12 = *(v137 - 8);
  v13 = MEMORY[0x28223BE20](v137);
  v136 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v135 = &v107 - v15;
  v140 = sub_2664DE648();
  v16 = *(v140 - 8);
  v17 = MEMORY[0x28223BE20](v140);
  v112 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v124 = &v107 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v115 = &v107 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v116 = &v107 - v24;
  result = MEMORY[0x28223BE20](v23);
  v27 = &v107 - v26;
  v121 = *(a1 + 16);
  if (v121)
  {
    v109 = v10;
    v28 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    swift_beginAccess();
    v29 = v16 + 16;
    v30 = *(v16 + 16);
    v130 = *(v16 + 72);
    LODWORD(v119) = *MEMORY[0x277CB9610];
    v134 = (v12 + 104);
    v133 = (v12 + 8);
    v111 = *MEMORY[0x277CB95F0];
    v139 = (v16 + 8);
    v123 = (v7 + 16);
    v122 = (v7 + 8);
    v117 = (v132 + 8);
    *&v31 = 136315138;
    v113 = v31;
    v120 = v28;
    v128 = v6;
    v32 = v121;
    v129 = v16 + 16;
    v138 = v30;
    v110 = v27;
    do
    {
      v34 = v29;
      v30(v27, v28, v140);
      v35 = v135;
      sub_2664DE638();
      v36 = v136;
      v37 = v137;
      v132 = *v134;
      (v132)(v136, v119, v137);
      v38 = sub_2664DE658();
      v39 = *v133;
      (*v133)(v36, v37);
      v131 = v39;
      v39(v35, v37);
      if (v38 & 1) != 0 || (v40 = v135, sub_2664DE638(), v41 = v136, v42 = v137, (v132)(v136, v111, v137), v43 = sub_2664DE658(), v44 = v131, v131(v41, v42), v44(v40, v42), (v43))
      {
        v125 = v32;
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v45 = v128;
        v46 = __swift_project_value_buffer(v128, qword_280F914F0);
        swift_beginAccess();
        (*v123)(v126, v46, v45);
        v47 = v116;
        v48 = v138;
        v138(v116, v27, v140);
        v49 = sub_2664DFE18();
        v50 = sub_2664E06C8();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v142 = v52;
          *v51 = v113;
          v53 = v140;
          v48(v115, v47, v140);
          v54 = sub_2664E0318();
          v55 = v53;
          v57 = v56;
          v33 = *v139;
          (*v139)(v47, v55);
          v58 = sub_2662A320C(v54, v57, &v142);
          v34 = v129;

          *(v51 + 4) = v58;
          _os_log_impl(&dword_26629C000, v49, v50, "ShazamSessionManager#startListeningForSessions Cleaning up dismissed activity: %s", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v52);
          MEMORY[0x266784AD0](v52, -1, -1);
          v59 = v51;
          v27 = v110;
          MEMORY[0x266784AD0](v59, -1, -1);

          (*v122)(v126, v128);
        }

        else
        {

          v33 = *v139;
          (*v139)(v47, v140);
          (*v122)(v126, v45);
        }

        v32 = v125;
        if (swift_weakLoadStrong())
        {
          v60 = v114;
          sub_2664DE628();
          v61 = sub_2664DE5F8();
          v63 = v62;
          (*v117)(v60, v118);
          swift_beginAccess();
          sub_2662C2748(v61, v63);
          swift_endAccess();
        }
      }

      else
      {
        v33 = *v139;
      }

      v30 = v138;
      v29 = v34;
      v33(v27, v140);
      v28 += v130;
      --v32;
    }

    while (v32);
    v126 = v33;
    swift_beginAccess();
    swift_beginAccess();
    v64 = 0;
    LODWORD(v125) = *MEMORY[0x277CB9600];
    v65 = v109;
    v66 = v128;
    while (1)
    {
      v67 = v124;
      v30(v124, (v120 + v64 * v130), v140);
      v68 = v135;
      sub_2664DE638();
      v69 = v136;
      v70 = v137;
      (v132)(v136, v125, v137);
      v71 = sub_2664DE658();
      v72 = v131;
      v131(v69, v70);
      v72(v68, v70);
      if (v71)
      {
        break;
      }

      result = (v126)(v67, v140);
LABEL_16:
      if (++v64 == v121)
      {
        return result;
      }
    }

    v73 = v112;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v74 = __swift_project_value_buffer(v66, qword_280F914F0);
    swift_beginAccess();
    (*v123)(v65, v74, v66);
    v75 = v66;
    v76 = v138;
    v138(v73, v67, v140);
    v77 = sub_2664DFE18();
    v78 = sub_2664E06C8();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v142 = v119;
      *v79 = v113;
      v80 = v65;
      v81 = v140;
      v76(v115, v73, v140);
      v82 = sub_2664E0318();
      v84 = v83;
      v85 = v81;
      v65 = v80;
      (v126)(v73, v85);
      v86 = sub_2662A320C(v82, v84, &v142);
      v66 = v128;

      *(v79 + 4) = v86;
      _os_log_impl(&dword_26629C000, v77, v78, "ShazamSessionManager#startListeningForSessions Tracking newly created session: %s", v79, 0xCu);
      v87 = v119;
      __swift_destroy_boxed_opaque_existential_1Tm(v119);
      v88 = v87;
      v67 = v124;
      MEMORY[0x266784AD0](v88, -1, -1);
      MEMORY[0x266784AD0](v79, -1, -1);

      (*v122)(v65, v66);
    }

    else
    {

      (v126)(v73, v140);
      (*v122)(v65, v75);
      v66 = v75;
    }

    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      result = (v126)(v67, v140);
LABEL_39:
      v30 = v138;
      goto LABEL_16;
    }

    v90 = Strong;
    swift_beginAccess();
    v91 = *(v90 + 16);

    v92 = v108;
    sub_2664DE628();
    v93 = sub_2664DE5F8();
    v95 = v94;
    v96 = *v117;
    (*v117)(v92, v118);
    if (*(v91 + 16) && (sub_2664E0E68(), sub_2664E0368(), v97 = sub_2664E0EB8(), v98 = -1 << *(v91 + 32), v99 = v97 & ~v98, ((*(v91 + 56 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99) & 1) != 0))
    {
      v100 = ~v98;
      while (1)
      {
        v101 = (*(v91 + 48) + 16 * v99);
        v102 = *v101 == v93 && v101[1] == v95;
        if (v102 || (sub_2664E0D88() & 1) != 0)
        {
          break;
        }

        v99 = (v99 + 1) & v100;
        if (((*(v91 + 56 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99) & 1) == 0)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
LABEL_33:

      if (!swift_weakLoadStrong())
      {
LABEL_38:
        result = (v126)(v67, v140);
        v66 = v128;
        v65 = v109;
        goto LABEL_39;
      }

      v103 = v114;
      sub_2664DE628();
      v104 = sub_2664DE5F8();
      v106 = v105;
      v96(v103, v118);
      swift_beginAccess();
      sub_2664D0458(v141, v104, v106);
      swift_endAccess();
    }

    goto LABEL_38;
  }

  return result;
}

uint64_t sub_2663929D8@<X0>(void **a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v8, v10, v5);
  v11 = v9;
  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25[1] = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v26[0] = v16;
    *v15 = 136315138;
    v25[3] = v9;
    v17 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
    v18 = sub_2664E0318();
    v20 = sub_2662A320C(v18, v19, v26);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_26629C000, v12, v13, "ShazamSessionManager#startListeningForSessions catch error: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266784AD0](v16, -1, -1);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = *(Strong + 24);

    if (v22)
    {
      sub_2664DFF48();
    }
  }

  swift_beginAccess();
  v23 = swift_weakLoadStrong();
  if (v23)
  {
    *(v23 + 24) = 0;
  }

  v25[2] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073188, &qword_2664E9778);
  return sub_2664DFF58();
}

uint64_t sub_266392CDC(uint64_t a1, uint64_t a2)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26629C000, v7, v8, "ShazamSessionManager#startListeningForSessions activity listener torn down", v9, 2u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 24);

    if (v11)
    {
      sub_2664DFF48();
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_266392F08(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2664E0038();
  v37 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2664E00B8();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  (*(v8 + 16))(v10, v12, v7);

  v13 = sub_2664DFE18();
  v14 = sub_2664E06C8();

  v15 = os_log_type_enabled(v13, v14);
  v32 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v7;
    v18 = v17;
    aBlock[0] = v17;
    *v16 = 136315138;
    v19 = sub_2664DE608();
    v20 = MEMORY[0x2667834D0](v11, v19);
    v22 = v4;
    v23 = sub_2662A320C(v20, v21, aBlock);

    *(v16 + 4) = v23;
    v4 = v22;
    _os_log_impl(&dword_26629C000, v13, v14, "ShazamSessionManager#startListeningForSessions received updated activities - %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x266784AD0](v18, -1, -1);
    MEMORY[0x266784AD0](v16, -1, -1);

    (*(v8 + 8))(v10, v31);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = *(result + OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_workQueue);

    v26 = swift_allocObject();
    *(v26 + 16) = v32;
    *(v26 + 24) = a2;
    aBlock[4] = sub_266397024;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2662A3F90;
    aBlock[3] = &block_descriptor_54;
    v27 = _Block_copy(aBlock);

    v28 = v33;
    sub_2664E0068();
    v38 = MEMORY[0x277D84F90];
    sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640, MEMORY[0x277D83970]);
    v29 = v35;
    sub_2664E0A08();
    MEMORY[0x266783800](0, v28, v29, v27);
    _Block_release(v27);

    (*(v37 + 8))(v29, v4);
    (*(v34 + 8))(v28, v36);
  }

  return result;
}

uint64_t sub_266393450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730C8, &qword_2664E95F0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v78 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v89 = &v77 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730D0, &qword_2664E95F8);
  v91 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v83 = &v77 - v9;
  v94 = sub_2664DE608();
  v10 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v81 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v79 = &v77 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v77 - v19;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v90 = a2;
  v21 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v22 = *(v14 + 16);
  v86 = v21;
  v85 = v14 + 16;
  v84 = v22;
  v22(v20, v21, v13);
  v23 = sub_2664DFE18();
  v24 = sub_2664E06C8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v8;
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_26629C000, v23, v24, "ShazamSessionManager#startListeningForSessions updating currentSessionIDs", v26, 2u);
    v27 = v26;
    v8 = v25;
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  v28 = *(v14 + 8);
  v87 = v13;
  v80 = v14 + 8;
  v28(v20, v13);
  v29 = *(a1 + 16);
  if (v29)
  {
    v82 = v28;
    v88 = v8;
    v98 = MEMORY[0x277D84F90];
    sub_2662FCF24(0, v29, 0);
    v30 = v98;
    v32 = *(v10 + 16);
    v31 = v10 + 16;
    v93 = v32;
    v33 = a1 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v92 = *(v31 + 56);
    v34 = (v31 - 8);
    do
    {
      v35 = v94;
      v93(v12, v33, v94);
      v36 = sub_2664DE5F8();
      v38 = v37;
      (*v34)(v12, v35);
      v98 = v30;
      v40 = *(v30 + 16);
      v39 = *(v30 + 24);
      v41 = v30;
      if (v40 >= v39 >> 1)
      {
        sub_2662FCF24((v39 > 1), v40 + 1, 1);
        v41 = v98;
      }

      *(v41 + 16) = v40 + 1;
      v42 = v41 + 16 * v40;
      *(v42 + 32) = v36;
      *(v42 + 40) = v38;
      v33 += v92;
      --v29;
      v30 = v41;
    }

    while (v29);
    v8 = v88;
    v28 = v82;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v44 = sub_26639EB98(v43);

    swift_beginAccess();
    sub_266393E50(v44);
    swift_endAccess();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v46 = v91;
  if (!Strong)
  {

    v51 = v89;
    (*(v46 + 56))(v89, 1, 1, v8);
    return sub_2662A9238(v51, &qword_2800730C8, &qword_2664E95F0);
  }

  v47 = &qword_280073000;
  v48 = OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_deferredContinuation;
  v49 = Strong;
  swift_beginAccess();
  v50 = v49 + v48;
  v51 = v89;
  sub_2662A7224(v50, v89, &qword_2800730C8, &qword_2664E95F0);

  if ((*(v46 + 48))(v51, 1, v8) == 1)
  {

    return sub_2662A9238(v51, &qword_2800730C8, &qword_2664E95F0);
  }

  v94 = v30;
  v53 = *(v46 + 32);
  v88 = v8;
  v53(v83, v51, v8);
  v54 = v79;
  v84(v79, v86, v87);
  v55 = sub_2664DFE18();
  v56 = sub_2664E06C8();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_26629C000, v55, v56, "ShazamSessionManager#startListeningForSessions found continuation", v57, 2u);
    MEMORY[0x266784AD0](v57, -1, -1);
  }

  v58 = v87;
  v28(v54, v87);
  v59 = v81;
  v84(v81, v86, v58);
  v60 = v94;

  v61 = sub_2664DFE18();
  v62 = sub_2664E06C8();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v82 = v28;
    v65 = v64;
    v97[0] = v64;
    *v63 = 136315138;
    v66 = MEMORY[0x2667834D0](v60, MEMORY[0x277D837D0]);
    v68 = sub_2662A320C(v66, v67, v97);

    *(v63 + 4) = v68;
    v47 = &qword_280073000;
    _os_log_impl(&dword_26629C000, v61, v62, "ShazamSessionManager#startListeningForSessions returning continuation with sessions: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    MEMORY[0x266784AD0](v65, -1, -1);
    MEMORY[0x266784AD0](v63, -1, -1);

    v82(v81, v58);
  }

  else
  {

    v28(v59, v58);
  }

  v69 = v88;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_266395B64();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  v70 = v94;
  if (result)
  {
    v71 = result;
    v72 = v78;
    (*(v46 + 56))(v78, 1, 1, v69);
    v73 = v47[27];
    swift_beginAccess();
    sub_2663968D8(v72, v71 + v73);
    swift_endAccess();
  }

  if (v70[2])
  {
    v75 = v70[4];
    v74 = v70[5];

    v95 = v75;
    v96 = v74;
    v76 = v83;
    sub_2664E0588();
    return (*(v46 + 8))(v76, v69);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_266393E50(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_2664D0458(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_266393F78()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
  *v1 = v0;
  v1[1] = sub_266394060;
  v3 = *(v0 + 32);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000012, 0x80000002664F61A0, sub_2663968D0, v3, v2);
}

uint64_t sub_266394060()
{

  return MEMORY[0x2822009F8](sub_26639415C, 0, 0);
}

uint64_t sub_266394174(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664E0038();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664E00B8();
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730D0, &qword_2664E95F8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - v12;
  sub_2663951E4();
  v18[1] = *(a2 + OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_workQueue);
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v11 + 32))(v15 + v14, v13, v10);
  aBlock[4] = sub_26639702C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_62;
  v16 = _Block_copy(aBlock);

  sub_2664E0068();
  v22 = MEMORY[0x277D84F90];
  sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640, MEMORY[0x277D83970]);
  sub_2664E0A08();
  MEMORY[0x266783800](0, v9, v6, v16);
  _Block_release(v16);
  (*(v21 + 8))(v6, v4);
  (*(v19 + 8))(v9, v20);
}

uint64_t sub_266394524(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = sub_2664DFE38();
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2664E0038();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2664E00B8();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664E0018();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_2664E00E8();
  v41 = *(v50 - 8);
  v13 = MEMORY[0x28223BE20](v50);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v40 = &v40 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730C8, &qword_2664E95F0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v40 - v18;
  swift_beginAccess();

  v48 = sub_266487634(v20);
  v22 = v21;

  if (v22)
  {
    v50 = a1;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v3, qword_280F914F0);
    swift_beginAccess();
    v24 = v49;
    (*(v49 + 16))(v5, v23, v3);

    v25 = sub_2664DFE18();
    v26 = sub_2664E06C8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v52[0] = v28;
      *v27 = 136315138;
      v29 = v48;
      *(v27 + 4) = sub_2662A320C(v48, v22, v52);
      _os_log_impl(&dword_26629C000, v25, v26, "ShazamSessionManager#currentSessionID Returning sessionID: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x266784AD0](v28, -1, -1);
      MEMORY[0x266784AD0](v27, -1, -1);

      (*(v24 + 8))(v5, v3);
    }

    else
    {

      (*(v24 + 8))(v5, v3);
      v29 = v48;
    }

    sub_266395B64();
    v52[0] = v29;
    v52[1] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730D0, &qword_2664E95F8);
    return sub_2664E0588();
  }

  else
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730D0, &qword_2664E95F8);
    v31 = *(v30 - 8);
    (*(v31 + 16))(v19, v51, v30);
    (*(v31 + 56))(v19, 0, 1, v30);
    v32 = OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_deferredContinuation;
    swift_beginAccess();
    sub_2663968D8(v19, a1 + v32);
    swift_endAccess();
    v51 = *(a1 + OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_workQueue);
    sub_2664E00C8();
    *v12 = 100;
    (*(v10 + 104))(v12, *MEMORY[0x277D85178], v9);
    v33 = v40;
    sub_2664E00D8();
    (*(v10 + 8))(v12, v9);
    v49 = *(v41 + 8);
    (v49)(v15, v50);
    v34 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_26639709C;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2662A3F90;
    aBlock[3] = &block_descriptor_66;
    v35 = _Block_copy(aBlock);

    v36 = v42;
    sub_2664E0068();
    v52[0] = MEMORY[0x277D84F90];
    sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640, MEMORY[0x277D83970]);
    v37 = v44;
    v38 = v47;
    sub_2664E0A08();
    MEMORY[0x2667837B0](v33, v36, v37, v35);
    _Block_release(v35);
    (*(v46 + 8))(v37, v38);
    (*(v43 + 8))(v36, v45);
    (v49)(v33, v50);
  }
}

uint64_t sub_266394D70(uint64_t a1)
{
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730C8, &qword_2664E95F0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730D0, &qword_2664E95F8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    return sub_2662A9238(v10, &qword_2800730C8, &qword_2664E95F0);
  }

  v27[0] = v8;
  v16 = OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_deferredContinuation;
  v17 = Strong;
  swift_beginAccess();
  sub_2662A7224(v17 + v16, v10, &qword_2800730C8, &qword_2664E95F0);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_2662A9238(v10, &qword_2800730C8, &qword_2664E95F0);
  }

  (*(v12 + 32))(v14, v10, v11);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v1, qword_280F914F0);
  swift_beginAccess();
  (*(v2 + 16))(v4, v18, v1);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06C8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_26629C000, v19, v20, "ShazamSessionManager#currentSessionID 100ms timeout expecting session update, returning nil for current session", v21, 2u);
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_266395B64();
  }

  swift_beginAccess();
  v22 = swift_weakLoadStrong();
  v23 = v27[0];
  if (v22)
  {
    v24 = v22;
    (*(v12 + 56))(v27[0], 1, 1, v11);
    v25 = OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_deferredContinuation;
    swift_beginAccess();
    sub_2663968D8(v23, v24 + v25);
    swift_endAccess();
  }

  v27[1] = 0;
  v27[2] = 0;
  sub_2664E0588();
  return (*(v12 + 8))(v14, v11);
}

void sub_2663951E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_2664DE4A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v37 = v6;
    v17 = v5;
    v18 = v1;
    v19 = v4;
    v20 = v16;
    *v16 = 0;
    _os_log_impl(&dword_26629C000, v14, v15, "ShazamSessionManager#logSELFLiveActivityWaitStart", v16, 2u);
    v21 = v20;
    v4 = v19;
    v1 = v18;
    v5 = v17;
    v6 = v37;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  sub_2664DE498();
  v22 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v23 = sub_2664DE478();
  v24 = [v22 initWithNSUUID_];

  (*(v6 + 8))(v8, v5);
  v25 = OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_currentPerfContextId;
  v26 = *(v1 + OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_currentPerfContextId);
  *(v1 + OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_currentPerfContextId) = v24;

  v27 = [objc_allocWithZone(MEMORY[0x277D57548]) init];
  if (v27)
  {
    v28 = v27;
    v29 = [objc_allocWithZone(MEMORY[0x277D57528]) init];
    if (v29)
    {
      v30 = v29;
      v31 = [objc_allocWithZone(MEMORY[0x277D57500]) init];
      if (v31)
      {
        v32 = v31;
        [v28 setDomainExecutionType_];
        [v30 setStartedOrChanged_];
        [v30 setContextId_];
        [v32 setFlowDomainExecutionContext_];
        sub_2664DE8D8();
        v33 = v32;
        v34 = sub_2664DE8B8();
        v35 = sub_2664E05C8();
        (*(*(v35 - 8) + 56))(v4, 1, 1, v35);
        v36 = swift_allocObject();
        v36[2] = 0;
        v36[3] = 0;
        v36[4] = v34;

        sub_2663958A4(0, 0, v4, &unk_2664E9718, v36);

        sub_2662A9238(v4, &qword_280072BD0, &qword_2664E3550);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_2663956E4(uint64_t a1)
{
  sub_2664DE7D8();
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  v1[8] = v4;
  *v4 = v1;
  v4[1] = sub_2663957A8;
  v5 = v1[7];

  return MEMORY[0x2821BA730](v5, v2, v3);
}

uint64_t sub_2663957A8()
{

  return MEMORY[0x2822009F8](sub_2663970C8, 0, 0);
}

uint64_t sub_2663958A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2662A7224(a3, v25 - v10, &qword_280072BD0, &qword_2664E3550);
  v12 = sub_2664E05C8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2662A9238(v11, &qword_280072BD0, &qword_2664E3550);
  }

  else
  {
    sub_2664E05B8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2664E0578();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2664E0338() + 32;
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