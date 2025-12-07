void sub_22F3AF418(void *a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void), uint64_t a9)
{
  v107 = a8;
  v108 = a1;
  v104 = a6;
  v105 = a7;
  v111 = a5;
  v115 = a4;
  LODWORD(v110) = a2;
  v106 = a9;
  v9 = type metadata accessor for Song(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22F740AD0();
  v113 = *(v13 - 8);
  v114 = v13;
  MEMORY[0x28223BE20](v13);
  v112 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v97 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v109 = &v97 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v97 - v27;
  v29 = type metadata accessor for CacherStatus(0);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  if (v110)
  {
    v35 = v111;
    sub_22F13BA9C(v115, v17, &qword_27DAB1DA0, &unk_22F7771B0);
    if ((*(v30 + 48))(v17, 1, v29) == 1)
    {
      sub_22F120ADC(v17, &qword_27DAB1DA0, &unk_22F7771B0);
      v36 = sub_22F73F690();
      (*(*(v36 - 8) + 56))(v23, 1, 1, v36);
    }

    else
    {
      sub_22F13BA9C(&v17[*(v29 + 20)], v23, &qword_27DAB0920, &qword_22F770B20);
      sub_22F2CE854(v17, type metadata accessor for CacherStatus);
    }

    v41 = *(v29 + 24);
    sub_22F73F680();
    v42 = sub_22F73F690();
    (*(*(v42 - 8) + 56))(&v32[v41], 0, 1, v42);
    *v32 = xmmword_22F789AD0;
    sub_22F1207AC(v23, &v32[*(v29 + 20)], &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    v43 = qword_2810A8E88;
    v44 = v112;
    sub_22F740AC0();
    v115 = v43;
    sub_22F740A90();
    v45 = v114;
    v46 = *(v113 + 8);
    v47 = v46(v44, v114);
    MEMORY[0x28223BE20](v47);
    strcpy(&v97 - 32, "musicForArtist");
    *(&v97 - 17) = -18;
    *(&v97 - 2) = v35;
    *(&v97 - 1) = v32;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v46(v44, v45);
    sub_22F7416A0();
    sub_22F1B2BBC(1);
    (v107)(v108);
    v60 = v32;
    goto LABEL_31;
  }

  v99 = (&v97 - v34);
  sub_22F73F680();
  v37 = sub_22F73F690();
  v38 = *(*(v37 - 8) + 56);
  v38(v28, 0, 1, v37);
  sub_22F13BA9C(v115, v20, &qword_27DAB1DA0, &unk_22F7771B0);
  if ((*(v30 + 48))(v20, 1, v29) == 1)
  {
    sub_22F120ADC(v20, &qword_27DAB1DA0, &unk_22F7771B0);
    v39 = v38;
    v40 = v109;
    v39(v109, 1, 1, v37);
  }

  else
  {
    v40 = v109;
    sub_22F13BA9C(&v20[*(v29 + 24)], v109, &qword_27DAB0920, &qword_22F770B20);
    sub_22F2CE854(v20, type metadata accessor for CacherStatus);
  }

  v48 = v99;
  v100 = xmmword_22F789AD0;
  *v99 = xmmword_22F789AD0;
  sub_22F1207AC(v28, v48 + *(v29 + 20), &qword_27DAB0920, &qword_22F770B20);
  sub_22F1207AC(v40, v48 + *(v29 + 24), &qword_27DAB0920, &qword_22F770B20);
  sub_22F741740();
  v49 = v111;
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  v50 = qword_2810A8E88;
  v51 = v112;
  sub_22F740AC0();
  v109 = v50;
  sub_22F740A90();
  v52 = v113 + 8;
  v53 = *(v113 + 8);
  v54 = v53(v51, v114);
  v55 = *(v49 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  MEMORY[0x28223BE20](v54);
  strcpy(&v97 - 32, "musicForArtist");
  *(&v97 - 17) = -18;
  *(&v97 - 2) = v49;
  *(&v97 - 1) = v48;
  v56 = 0;
  sub_22F7417A0();
  v98 = v55;
  sub_22F741730();
  sub_22F740AC0();
  sub_22F740A90();
  v53(v51, v114);
  v61 = v108;
  if (!v108[2])
  {
    sub_22F7416A0();
    sub_22F1B2BBC(1);
    sub_22F3B16B8();
    v95 = swift_allocError();
    *v96 = 1;
    v107();

    v60 = v99;
LABEL_31:
    sub_22F2CE854(v60, type metadata accessor for CacherStatus);
    return;
  }

  v62 = sub_22F741670();
  v120 = v61;
  v121 = 0;
  v122 = v62;
  v123 = 0;
  v124 = 0;

  sub_22F227010(v118);
  v110 = *&v118[8];
  if (*&v118[8])
  {
    v102 = v53;
    v103 = *v118;
    v64 = *&v118[24];
    v65 = *&v118[32];
    v66 = *&v118[40];
    *&v63 = 134218242;
    v97 = v63;
    v113 = v52;
    while (1)
    {
      v115 = v56;
      v67 = *(v65 + 16);
      v108 = v66;
      if (v67)
      {
        v101 = v64;
        v119 = MEMORY[0x277D84F90];
        sub_22F146514(0, v67, 0);
        v68 = v119;
        v69 = (v65 + 32);
        do
        {
          memcpy(v118, v69, sizeof(v118));
          memcpy(v117, v69, sizeof(v117));
          sub_22F18C4EC(v118, &v116);
          Song.init(_:)(v117);
          v119 = v68;
          v71 = *(v68 + 16);
          v70 = *(v68 + 24);
          if (v71 >= v70 >> 1)
          {
            sub_22F146514((v70 > 1), v71 + 1, 1);
            v68 = v119;
          }

          *(v68 + 16) = v71 + 1;
          sub_22F3B170C(v12, v68 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v71, type metadata accessor for Song);
          v69 += 296;
          --v67;
        }

        while (v67);
        v66 = v108;
      }

      else
      {
        v68 = MEMORY[0x277D84F90];
      }

      sub_22F741740();
      v72 = v112;
      sub_22F740AC0();
      sub_22F740A90();
      v102(v72, v114);
      v73 = v115;
      sub_22F741690();
      if (v73)
      {
        break;
      }

      v74 = sub_22F7416E0();
      v76 = v75;
      v78 = v77;
      v80 = v79;
      MEMORY[0x28223BE20](v74);
      v82 = v110;
      v81 = v111;
      *(&v97 - 14) = v103;
      *(&v97 - 13) = v82;
      *(&v97 - 11) = 0;
      *(&v97 - 10) = 0;
      *(&v97 - 12) = v81;
      *(&v97 - 72) = v100;
      v101 = v83;
      *(&v97 - 7) = v83;
      *(&v97 - 6) = v68;
      *(&v97 - 10) = 16777472;
      *(&v97 - 4) = v76;
      *(&v97 - 3) = v84;
      *(&v97 - 2) = v85;
      sub_22F7417A0();
      v115 = 0;
      sub_22F741730();
      v86 = v112;
      sub_22F740AC0();
      sub_22F740A90();

      v102(v86, v114);
      if (qword_2810A9478 != -1)
      {
        swift_once();
      }

      v87 = sub_22F740B90();
      __swift_project_value_buffer(v87, qword_2810B4DC0);
      v88 = v110;

      v89 = sub_22F740B70();
      v90 = sub_22F7415C0();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        *v118 = v92;
        *v91 = v97;
        v93 = *(v68 + 16);

        *(v91 + 4) = v93;

        *(v91 + 12) = 2080;
        v94 = sub_22F145F20(v103, v88, v118);

        *(v91 + 14) = v94;
        _os_log_impl(&dword_22F0FC000, v89, v90, "Saving %ld of type %s", v91, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v92);
        MEMORY[0x2319033A0](v92, -1, -1);
        MEMORY[0x2319033A0](v91, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v56 = v115;
      sub_22F227010(v118);
      v103 = *v118;
      v64 = *&v118[24];
      v65 = *&v118[32];
      v66 = *&v118[40];
      v110 = *&v118[8];
      if (!*&v118[8])
      {
        goto LABEL_32;
      }
    }

    v115 = v73;

    sub_22F2CE854(v99, type metadata accessor for CacherStatus);
    v57 = v107;
    sub_22F7416A0();
    sub_22F1B2BBC(1);
    v58 = v115;
    v59 = v115;
    (v57)(v58);
  }

  else
  {
LABEL_32:

    sub_22F7416A0();
    if (v56)
    {
    }

    sub_22F1B2BBC(0);
    sub_22F2CE854(v99, type metadata accessor for CacherStatus);
    (v107)(0);
  }
}

id MusicForArtistCacher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicForArtistCacher.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicForArtistCacher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F3B04D0(unint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v31 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v6 = sub_22F741A00();
  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_3:
  v7 = 0;
  v31 = MEMORY[0x277D84F90];
  do
  {
    v8 = v7;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2319016F0](v8, a1);
        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v8 >= *(v5 + 16))
        {
          goto LABEL_21;
        }

        v9 = *(a1 + 8 * v8 + 32);
        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v10 = v9;
      v11 = [v10 uuid];
      if (v11)
      {
        break;
      }

      ++v8;
      if (v7 == v6)
      {
        goto LABEL_24;
      }
    }

    v29 = v3;
    v12 = v11;
    v13 = sub_22F740E20();
    v28 = v14;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_22F13E1A8(0, *(v31 + 2) + 1, 1, v31);
    }

    v16 = *(v31 + 2);
    v15 = *(v31 + 3);
    if (v16 >= v15 >> 1)
    {
      v31 = sub_22F13E1A8((v15 > 1), v16 + 1, 1, v31);
    }

    *(v31 + 2) = v16 + 1;
    v17 = &v31[16 * v16];
    v3 = v29;
    *(v17 + 4) = v13;
    *(v17 + 5) = v28;
  }

  while (v7 != v6);
LABEL_24:
  if (*(v31 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_22F771340;
    v19 = [objc_opt_self() musicConcerts];
    v20 = sub_22F740E20();
    v22 = v21;

    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    v23 = sub_22F741160();

    v24 = sub_22F741160();

    v25 = [a2 performerIdentifiersForMomentUUIDs:v23 withCategoryNames:v24];

    v26 = sub_22F741180();
    return v26;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_22F3B078C(void *a1, void *a2, void *a3)
{
  v7 = type metadata accessor for SongSource(0);
  v51 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2810A9B20 != -1)
  {
    swift_once();
  }

  v10 = qword_2810B4E20;
  *&v11 = CACurrentMediaTime();
  sub_22F1B560C("MusicForArtistPruneSourcesPerformance", 37, 2u, v11, 0, v10, v50);
  v12 = sub_22F7416D0();
  v14 = v13;
  v16 = v15;
  v17 = [a1 fetchedObjects];
  if (v17)
  {
    v18 = v17;
    sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
    v19 = sub_22F741180();
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v20 = sub_22F3B04D0(v19, a3);
  if (v3)
  {

LABEL_9:
  }

  v48 = v20;

  sub_22F7416A0();
  v22 = sub_22F1A26E0(a2);
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_22F770DF0;
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = sub_22F153470();
  *(v23 + 32) = 0x79726F6765746163;
  *(v23 + 40) = 0xE800000000000000;
  *(v23 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v23 + 104) = sub_22F25F050();
  *(v23 + 72) = &unk_2843DCC48;
  v24 = sub_22F741560();
  v25 = sub_22F1935BC(v24);
  v45 = v22;
  v46 = v14;
  v26 = v25;

  v27 = *(v26 + 16);
  if (v27)
  {
    v43 = v26;
    v44 = v16;
    v28 = v26 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v47 = v51[9];
    v29 = MEMORY[0x277D84F90];
    v51 = v12;
    do
    {
      sub_22F1684A8(v28, v9);
      v31 = *v9;
      v30 = v9[1];

      sub_22F2CE854(v9, type metadata accessor for SongSource);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_22F13E1A8(0, *(v29 + 2) + 1, 1, v29);
      }

      v33 = *(v29 + 2);
      v32 = *(v29 + 3);
      if (v33 >= v32 >> 1)
      {
        v29 = sub_22F13E1A8((v32 > 1), v33 + 1, 1, v29);
      }

      *(v29 + 2) = v33 + 1;
      v34 = &v29[16 * v33];
      *(v34 + 4) = v31;
      *(v34 + 5) = v30;
      v28 += v47;
      --v27;
      v12 = v51;
    }

    while (v27);

    v16 = v44;
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  v35 = sub_22F1515F8(v29);

  v36 = sub_22F1E94F0(v48, v35);

  v37 = *(v36 + 16);
  v38 = v46;
  if (!v37)
  {

    sub_22F7416A0();
    v42 = v45;
    goto LABEL_24;
  }

  v39 = sub_22F10B348(*(v36 + 16), 0);
  v40 = sub_22F11A438(&v49, v39 + 4, v37, v36);
  result = sub_22F1534EC(v49);
  v41 = v40 == v37;
  v42 = v45;
  if (v41)
  {
    MusicCache.removeSongSources(songSourceIdentifiers:progressReporter:)(v39);

LABEL_24:
    sub_22F1B2BBC(0);

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3B0CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_22F73F690();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v34 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v14 = type metadata accessor for CacherStatus(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F13BA9C(a1, v13, &qword_27DAB1DA0, &unk_22F7771B0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v18 = &qword_27DAB1DA0;
    v19 = &unk_22F7771B0;
    v20 = v13;
LABEL_5:
    sub_22F120ADC(v20, v18, v19);
    LOBYTE(v23) = 1;
    return v23 & 1;
  }

  sub_22F3B170C(v13, v17, type metadata accessor for CacherStatus);
  sub_22F13BA9C(&v17[*(v14 + 20)], v6, &qword_27DAB0920, &qword_22F770B20);
  v22 = v38;
  v21 = v39;
  if ((*(v38 + 48))(v6, 1, v39) == 1)
  {
    sub_22F2CE854(v17, type metadata accessor for CacherStatus);
    v18 = &qword_27DAB0920;
    v19 = &qword_22F770B20;
    v20 = v6;
    goto LABEL_5;
  }

  v25 = v37;
  (*(v22 + 32))(v37, v6, v21);
  sub_22F1E3F74(v43);
  memcpy(v44, v43, 0x121uLL);
  if (sub_22F1EDAB8(v44) == 1)
  {
    GEOLocationCoordinate2DMake();
    memcpy(v41, v43, sizeof(v41));
    GEOLocationCoordinate2DMake();
    v23 = *v26;
    v42 = *v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
    (*(v22 + 8))(v25, v21);
    sub_22F2CE854(v17, type metadata accessor for CacherStatus);
  }

  else
  {
    GEOLocationCoordinate2DMake();
    sub_22F120ADC(v43, &qword_27DAB2448, &unk_22F788C80);
    memcpy(v41, v43, sizeof(v41));
    GEOLocationCoordinate2DMake();
    v28 = v27;
    v23 = v34;
    sub_22F73F680();
    sub_22F73F590();
    v30 = v29;
    v31 = v25;
    v32 = *(v22 + 8);
    v32(v23, v21);
    LOBYTE(v23) = v35;
    v33 = v40;
    sub_22F7416A0();
    if (!v33)
    {
      LOBYTE(v23) = *(v28 + 112) < v30;
    }

    v32(v31, v21);
    sub_22F2CE854(v17, type metadata accessor for CacherStatus);
  }

  return v23 & 1;
}

void *sub_22F3B11B8(void *a1, void *a2, uint64_t a3)
{
  v8 = type metadata accessor for SongSource(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22F741690();
  if (v3)
  {
    return v4;
  }

  v38 = v9;
  v39 = a3;
  v4 = sub_22F7416B0();
  v14 = v13;
  v15 = [a1 librarySpecificFetchOptions];
  v16 = [objc_opt_self() fetchMomentsWithOptions_];
  v17 = [v16 fetchedObjects];

  if (!v17)
  {
    sub_22F3B16B8();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();

    return v4;
  }

  v40 = v14;
  v41 = v4;
  sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
  v18 = sub_22F741180();

  v20 = sub_22F3B04D0(v18, a2);

  v21 = v41;
  sub_22F7416A0();
  v37 = 0;
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22F770DF0;
  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 64) = sub_22F153470();
  *(v22 + 32) = 0x696669746E656469;
  *(v22 + 40) = 0xEA00000000007265;
  *(v22 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v22 + 104) = sub_22F25F050();
  *(v22 + 72) = v20;

  v23 = sub_22F741560();
  v24 = v37;
  v25 = sub_22F1935BC(v23);
  v37 = v24;
  if (v24)
  {

    return v4;
  }

  v4 = v25;

  v26 = sub_22F1515F8(v20);

  v43 = v26;
  v27 = v4[2];
  if (v27)
  {
    v28 = v4 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v29 = *(v38 + 72);
    do
    {
      sub_22F1684A8(v28, v11);
      v30 = *v11;
      v31 = v11[1];

      sub_22F2CE854(v11, type metadata accessor for SongSource);
      sub_22F164408(v30, v31);

      v28 += v29;
      --v27;
    }

    while (v27);
  }

  v32 = v40;
  v33 = v37;
  sub_22F7416A0();
  if (v33)
  {

    return v4;
  }

  v34 = v43;
  v35 = *(v43 + 16);
  if (!v35)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = sub_22F10B348(*(v43 + 16), 0);
  v36 = sub_22F11A438(&v42, v4 + 4, v35, v34);
  result = sub_22F1534EC(v42);
  if (v36 == v35)
  {

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F3B16B8()
{
  result = qword_27DAB3EC0;
  if (!qword_27DAB3EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3EC0);
  }

  return result;
}

uint64_t sub_22F3B170C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for CacherStatus(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v16 = v4;

    v7 = *(v6 + 20);
    v8 = sub_22F73F690();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    if (!v10(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }

    v11 = *(v6 + 24);
    v4 = v16;
    if (!v10(v5 + v11, 1, v8))
    {
      (*(v9 + 8))(v5 + v11, v8);
    }
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v14 + 8, v2 | 7);
}

void sub_22F3B19DC(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_22F3AF418(a1, a2 & 1, *(v2 + 16), (v2 + v6), *(v2 + v7), *(v2 + v8), v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_22F3B1AF4()
{
  result = qword_27DAB3EC8;
  if (!qword_27DAB3EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3EC8);
  }

  return result;
}

void FlexMusicSongProtocol.asJSON(includeCalculatedProperties:)(char a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22F779720;
  *(v3 + 32) = 6580597;
  *(v3 + 40) = 0xE300000000000000;
  v4 = [v2 uid];
  v5 = sub_22F740E20();
  v7 = v6;

  v8 = MEMORY[0x277D837D0];
  *(v3 + 48) = v5;
  *(v3 + 56) = v7;
  *(v3 + 72) = v8;
  *(v3 + 80) = 0x614E747369747261;
  *(v3 + 88) = 0xEA0000000000656DLL;
  v9 = [v2 artistName];
  v10 = sub_22F740E20();
  v12 = v11;

  *(v3 + 96) = v10;
  *(v3 + 104) = v12;
  *(v3 + 120) = v8;
  *(v3 + 128) = 0x656D614E676E6F73;
  *(v3 + 136) = 0xE800000000000000;
  v13 = [v2 songName];
  v14 = sub_22F740E20();
  v16 = v15;

  *(v3 + 144) = v14;
  *(v3 + 152) = v16;
  *(v3 + 168) = v8;
  *(v3 + 176) = 0x79616C506E6163;
  *(v3 + 184) = 0xE700000000000000;
  v17 = [v2 canPlay];
  v18 = MEMORY[0x277D839B0];
  *(v3 + 192) = v17;
  *(v3 + 216) = v18;
  *(v3 + 224) = 0x6E6564646968;
  *(v3 + 232) = 0xE600000000000000;
  *(v3 + 240) = [v2 hidden];
  *(v3 + 264) = v18;
  *(v3 + 272) = 0x64656C6C61636572;
  *(v3 + 280) = 0xE800000000000000;
  *(v3 + 288) = [v2 recalled];
  *(v3 + 312) = v18;
  *(v3 + 320) = 0x734449676174;
  *(v3 + 328) = 0xE600000000000000;
  v92 = v2;
  v19 = [v2 tagIDs];
  v20 = sub_22F741420();

  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = sub_22F10B348(*(v20 + 16), 0);
    v23 = sub_22F11A438(&v98, v22 + 4, v21, v20);
    sub_22F1534EC(v98);
    if (v23 == v21)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v22 = MEMORY[0x277D84F90];
LABEL_5:
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v3 + 360) = v91;
  *(v3 + 336) = v22;
  v24 = sub_22F14EA28(v3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v25 = v2;
  v26 = [v2 keywords];
  v27 = sub_22F741420();

  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = sub_22F10B348(*(v27 + 16), 0);
    v30 = sub_22F11A438(&v98, v29 + 4, v28, v27);
    sub_22F1534EC(v98);
    if (v30 != v28)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (v29[2])
    {
      goto LABEL_8;
    }
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_8:
      v99 = v91;
      *&v98 = v29;
      sub_22F107D08(&v98, v97);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_22F130630(v97, 0x7364726F7779656BLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      v32 = [v2 weightedKeywords];
      goto LABEL_11;
    }
  }

  v32 = [v2 weightedKeywords];
LABEL_11:
  v33 = v32;
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v34 = sub_22F740CA0();

  v35 = *(v34 + 16);

  if (v35)
  {
    v36 = [v2 weightedKeywords];
    v37 = sub_22F740CA0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B98, &qword_22F770D10);
    v38 = sub_22F741DC0();
    v39 = v38;
    v40 = 0;
    v42 = v37 + 64;
    v41 = *(v37 + 64);
    v95 = v37;
    v43 = 1 << *(v37 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & v41;
    v46 = (v43 + 63) >> 6;
    v93 = v38 + 64;
    v94 = v38;
    if ((v44 & v41) != 0)
    {
      while (1)
      {
        v47 = __clz(__rbit64(v45));
        v45 &= v45 - 1;
LABEL_21:
        v50 = v47 | (v40 << 6);
        v51 = (*(v95 + 48) + 16 * v50);
        v52 = v51[1];
        v96 = *v51;
        v53 = *(*(v95 + 56) + 8 * v50);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_22F771340;

        v55 = v53;
        [v55 floatValue];
        *(v54 + 56) = MEMORY[0x277D83A90];
        *(v54 + 64) = MEMORY[0x277D83B08];
        *(v54 + 32) = v56;
        v57 = sub_22F740E60();
        v59 = v58;

        v39 = v94;
        *(v93 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        v60 = (v94[6] + 16 * v50);
        *v60 = v96;
        v60[1] = v52;
        v61 = (v94[7] + 16 * v50);
        *v61 = v57;
        v61[1] = v59;
        v62 = v94[2];
        v63 = __OFADD__(v62, 1);
        v64 = v62 + 1;
        if (v63)
        {
          break;
        }

        v94[2] = v64;
        if (!v45)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      v48 = v40;
      v25 = v92;
      while (1)
      {
        v40 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v40 >= v46)
        {

          v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0800, &qword_22F78A570);
          *&v98 = v39;
          sub_22F107D08(&v98, v97);
          v65 = swift_isUniquelyReferenced_nonNull_native();
          sub_22F130630(v97, 0xD000000000000010, 0x800000022F78D720, v65);
          goto LABEL_25;
        }

        v49 = *(v42 + 8 * v40);
        ++v48;
        if (v49)
        {
          v47 = __clz(__rbit64(v49));
          v45 = (v49 - 1) & v49;
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_25:
  v66 = [v25 tagIDs];
  v67 = sub_22F741420();

  v68 = *(v67 + 16);
  if (v68)
  {
    v69 = sub_22F10B348(*(v67 + 16), 0);
    v70 = sub_22F11A438(&v98, v69 + 4, v68, v67);
    sub_22F1534EC(v98);
    if (v70 != v68)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v69[2])
    {
LABEL_28:
      v99 = v91;
      *&v98 = v69;
      sub_22F107D08(&v98, v97);
      v71 = swift_isUniquelyReferenced_nonNull_native();
      sub_22F130630(v97, 0x734449676174, 0xE600000000000000, v71);
      if ((a1 & 1) == 0)
      {
        return;
      }

      goto LABEL_32;
    }
  }

  else
  {

    v69 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_28;
    }
  }

  if ((a1 & 1) == 0)
  {
    return;
  }

LABEL_32:
  v72 = [v25 valence];
  if (v72)
  {
    v73 = v72;
    [v72 floatValue];
    v99 = MEMORY[0x277D83A90];
    LODWORD(v98) = v74;
    sub_22F107D08(&v98, v97);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F130630(v97, 0x65636E656C6176, 0xE700000000000000, v75);
  }

  v76 = [v25 arousal];
  if (v76)
  {
    v77 = v76;
    [v76 floatValue];
    v99 = MEMORY[0x277D83A90];
    LODWORD(v98) = v78;
    sub_22F107D08(&v98, v97);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F130630(v97, 0x6C6173756F7261, 0xE700000000000000, v79);
  }

  v80 = [v25 regions];
  v81 = sub_22F741420();

  v82 = *(v81 + 16);
  if (v82)
  {
    v83 = sub_22F10B348(*(v81 + 16), 0);
    v84 = sub_22F11A438(&v98, v83 + 4, v82, v81);
    sub_22F1534EC(v98);
    if (v84 != v82)
    {
LABEL_50:
      __break(1u);
      return;
    }

    if (v83[2])
    {
      goto LABEL_39;
    }
  }

  else
  {

    v83 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_39:
      v99 = v91;
      *&v98 = v83;
      sub_22F107D08(&v98, v97);
      v85 = swift_isUniquelyReferenced_nonNull_native();
      sub_22F130630(v97, 0x736E6F69676572, 0xE700000000000000, v85);
      goto LABEL_42;
    }
  }

LABEL_42:
  v86 = [v25 mood];
  if (v86)
  {
    v87 = v86;
    v99 = sub_22F120634(0, &qword_27DAB24A8, 0x277CCACA8);
    *&v98 = v87;
    sub_22F107D08(&v98, v97);
    v88 = v87;
    v89 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F130630(v97, 1685024621, 0xE400000000000000, v89);
  }
}

id MeaningThresholds.__allocating_init(highRecallThreshold:highPrecisionThreshold:)(double a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___PGMeaningThresholds_highRecallThreshold] = a1;
  *&v5[OBJC_IVAR___PGMeaningThresholds_highPrecisionThreshold] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id MeaningThresholds.init(highRecallThreshold:highPrecisionThreshold:)(uint64_t a1, __n128 a2, double a3)
{
  *&v3[OBJC_IVAR___PGMeaningThresholds_highRecallThreshold] = a2.n128_u64[0];
  *&v3[OBJC_IVAR___PGMeaningThresholds_highPrecisionThreshold] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for MeaningThresholds();
  return objc_msgSendSuper2(&v5, sel_init);
}

id MeaningThresholds.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MeaningThresholds.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MeaningThresholds();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F3B2818(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v25 = MEMORY[0x277D84F90];
    sub_22F146954(0, v1, 0);
    v2 = a1 + 64;
    v3 = sub_22F741980();
    v4 = a1;
    v5 = 0;
    v6 = *(a1 + 36);
    v23 = v1;
    v24 = v6;
    while ((v3 & 0x8000000000000000) == 0 && v3 < 1 << *(v4 + 32))
    {
      v9 = v3 >> 6;
      if ((*(v2 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
      {
        goto LABEL_22;
      }

      if (v6 != *(v4 + 36))
      {
        goto LABEL_23;
      }

      v10 = *(*(v4 + 56) + 8 * v3);
      v12 = *(v25 + 16);
      v11 = *(v25 + 24);
      v13 = v4;

      if (v12 >= v11 >> 1)
      {
        sub_22F146954((v11 > 1), v12 + 1, 1);
      }

      *(v25 + 16) = v12 + 1;
      *(v25 + 8 * v12 + 32) = v10;
      v7 = 1 << *(v13 + 32);
      if (v3 >= v7)
      {
        goto LABEL_24;
      }

      v2 = a1 + 64;
      v14 = *(a1 + 64 + 8 * v9);
      if ((v14 & (1 << v3)) == 0)
      {
        goto LABEL_25;
      }

      v4 = v13;
      v15 = *(v13 + 36);
      v6 = v24;
      if (v24 != v15)
      {
        goto LABEL_26;
      }

      v16 = v14 & (-2 << (v3 & 0x3F));
      if (v16)
      {
        v7 = __clz(__rbit64(v16)) | v3 & 0x7FFFFFFFFFFFFFC0;
        v8 = v23;
      }

      else
      {
        v17 = v9 << 6;
        v18 = v9 + 1;
        v19 = (a1 + 72 + 8 * v9);
        v8 = v23;
        while (v18 < (v7 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_22F107D18(v3, v24, 0);
            v4 = a1;
            v7 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        sub_22F107D18(v3, v24, 0);
        v4 = a1;
      }

LABEL_4:
      ++v5;
      v3 = v7;
      if (v5 == v8)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_22F3B2A6C(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F6620(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22F3B52FC(v5);
  *a1 = v3;
}

PhotosGraph::CLIPIndex::CreationOptions __swiftcall CLIPIndex.CreationOptions.init(positivesOversamplingFactor:negativesOversamplingFactor:)(Swift::Int positivesOversamplingFactor, Swift::Int negativesOversamplingFactor)
{
  *v2 = positivesOversamplingFactor;
  v2[1] = negativesOversamplingFactor;
  result.negativesOversamplingFactor = negativesOversamplingFactor;
  result.positivesOversamplingFactor = positivesOversamplingFactor;
  return result;
}

char *static CLIPIndex.create(using:with:options:)(void *a1, unint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490);
  MEMORY[0x28223BE20](v123);
  v122 = (&v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v121 = &v112 - v10;
  MEMORY[0x28223BE20](v11);
  v120 = &v112 - v12;
  v13 = a3[1];
  v113 = *a3;
  v114 = v13;
  if (qword_27DAAFDA8 != -1)
  {
    goto LABEL_84;
  }

  while (1)
  {
    v14 = qword_27DAD0E90;
    *&v15 = CACurrentMediaTime();
    sub_22F1B560C("CreateCLIPIndex", 15, 2u, v15, 0, v14, v131);
    sub_22F120634(0, &qword_2810A8FC8, off_27887B108);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v16);
    v18 = [objc_opt_self() filterEncodedCLIPFeatureVectorNotEmpty];
    v19 = [ObjCClassFromMetadata nodesMatchingFilter:v18 inGraph:a1];

    if ([v19 count] < 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EE0, &unk_22F7889B0);
      v31 = swift_allocObject();
      sub_22F740830();

      v32 = v113;
      v33 = v114;
      if (v113 >= 1 && v114 >= 1)
      {
        *(v31 + 16) = MEMORY[0x277D84F90];
        *(v31 + 24) = 1;
        *(v31 + 32) = v32;
        *(v31 + 40) = v33;
        type metadata accessor for CLIPIndex();
        v27 = swift_allocObject();
        v34 = MEMORY[0x277D84F98];
        *(v27 + 2) = MEMORY[0x277D84F98];
        *(v27 + 3) = v34;
        *(v27 + 4) = v31;
        *(v27 + 5) = 768;
        sub_22F1B2BBC(0);

        return v27;
      }

      goto LABEL_87;
    }

    v132 = MEMORY[0x277D84F98];
    v20 = swift_allocObject();
    *(v20 + 16) = &v132;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_22F3B6950;
    *(v21 + 24) = v20;
    aBlock[4] = sub_22F250854;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F107E24;
    aBlock[3] = &block_descriptor_51;
    v22 = _Block_copy(aBlock);

    [v19 enumerateUsingBlock_];
    _Block_release(v22);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if (v22)
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      sub_22F7420C0();
      __break(1u);
LABEL_90:
      result = sub_22F7420C0();
      __break(1u);
      return result;
    }

    v23 = v132;

    v24 = *(a2 + 32);
    v25 = __swift_project_boxed_opaque_existential_1(a2, *(a2 + 24));
    v26 = *(v23 + 16);
    v124 = v23;
    if (v26)
    {
      v127 = v25;
      v128 = v24;
      v27 = sub_22F10B7A4(v26, 0);
      v28 = *(sub_22F73FE50() - 8);
      sub_22F11D0CC(aBlock, &v27[(*(v28 + 80) + 32) & ~*(v28 + 80)], v26, v23);
      v129 = v29;
      v30 = aBlock[0];

      sub_22F0FF590(v30);
      if (v129 != v26)
      {
        goto LABEL_86;
      }

      v23 = v124;
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
    }

    v35 = sub_22F7408A0();
    if (v4)
    {

      sub_22F1B2BBC(1);

      return v27;
    }

    a1 = v35;
    v112 = 0;

    a2 = *(v23 + 16);
    v119 = v19;
    v116 = a1;
    if (!a2)
    {
      break;
    }

    aBlock[0] = MEMORY[0x277D84F90];
    a1 = aBlock;
    sub_22F146454(0, a2, 0);
    v129 = aBlock[0];
    v36 = v23 + 64;
    v4 = sub_22F741980();
    v37 = 0;
    v115 = v23 + 72;
    v117 = a2;
    v118 = v23 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v23 + 32))
    {
      if ((*(v36 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_74;
      }

      v127 = 1 << v4;
      v128 = v4 >> 6;
      v38 = *(v23 + 36);
      v125 = v37;
      v126 = v38;
      v39 = v123;
      v40 = *(v123 + 48);
      v41 = *(v23 + 56);
      v42 = (*(v23 + 48) + 16 * v4);
      v44 = *v42;
      v43 = v42[1];
      v45 = sub_22F73FE50();
      v46 = *(v45 - 8);
      v47 = v120;
      (*(v46 + 16))(&v120[v40], v41 + *(v46 + 72) * v4, v45);
      v48 = v121;
      *v121 = v44;
      *(v48 + 1) = v43;
      (*(v46 + 32))(&v48[*(v39 + 48)], &v47[v40], v45);
      v49 = v48;
      v50 = v122;
      sub_22F3B6970(v49, v122);
      v52 = *v50;
      v51 = v50[1];
      v53 = *(v39 + 48);
      v54 = *(v46 + 8);

      v54(v50 + v53, v45);
      v55 = v129;
      aBlock[0] = v129;
      a2 = *(v129 + 16);
      v56 = *(v129 + 24);
      if (a2 >= v56 >> 1)
      {
        sub_22F146454((v56 > 1), a2 + 1, 1);
        v55 = aBlock[0];
      }

      *(v55 + 16) = a2 + 1;
      v57 = v55 + 16 * a2;
      *(v57 + 32) = v52;
      *(v57 + 40) = v51;
      v23 = v124;
      a1 = (1 << *(v124 + 32));
      if (v4 >= a1)
      {
        goto LABEL_75;
      }

      v36 = v118;
      v58 = *(v118 + 8 * v128);
      if ((v58 & v127) == 0)
      {
        goto LABEL_76;
      }

      v129 = v55;
      if (v126 != *(v124 + 36))
      {
        goto LABEL_77;
      }

      v59 = v58 & (-2 << (v4 & 0x3F));
      if (v59)
      {
        a1 = (__clz(__rbit64(v59)) | v4 & 0x7FFFFFFFFFFFFFC0);
        v19 = v119;
      }

      else
      {
        v60 = v128 << 6;
        v61 = v128 + 1;
        v62 = (v115 + 8 * v128);
        v19 = v119;
        while (v61 < (a1 + 63) >> 6)
        {
          v64 = *v62++;
          v63 = v64;
          v60 += 64;
          ++v61;
          if (v64)
          {
            sub_22F107D18(v4, v126, 0);
            a1 = (__clz(__rbit64(v63)) + v60);
            goto LABEL_16;
          }
        }

        sub_22F107D18(v4, v126, 0);
      }

LABEL_16:
      v37 = v125 + 1;
      v4 = a1;
      a2 = v117;
      if (v125 + 1 == v117)
      {
        a1 = v116;
        v65 = v129;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    swift_once();
  }

  v65 = MEMORY[0x277D84F90];
LABEL_33:
  v125 = a1[2];
  if (v125)
  {
    v4 = 0;
    v66 = 0;
    v67 = *(v65 + 16);
    v122 = a1 + 4;
    v123 = v67;
    v68 = (v65 + 40);
    v69 = MEMORY[0x277D84F98];
    v70 = MEMORY[0x277D84F98];
    v129 = v65;
    while (1)
    {
      if (v66 >= a1[2])
      {
        goto LABEL_78;
      }

      if (v123 == v66)
      {

LABEL_68:
        v19 = v119;
        goto LABEL_69;
      }

      if (v66 >= *(v65 + 16))
      {
        goto LABEL_79;
      }

      v72 = v122[v66];
      a2 = *v68;
      v127 = *(v68 - 1);

      sub_22F107E14(v4, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v70;
      v128 = v72;
      v74 = v72;
      a1 = v70;
      v4 = sub_22F13A8F4(v74);
      v76 = v70[2];
      v77 = (v75 & 1) == 0;
      v78 = v76 + v77;
      if (__OFADD__(v76, v77))
      {
        goto LABEL_80;
      }

      v79 = v75;
      if (v70[3] >= v78)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v75)
          {
            goto LABEL_49;
          }
        }

        else
        {
          a1 = aBlock;
          sub_22F135E50();
          v70 = aBlock[0];
          if (v79)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        sub_22F128768(v78, isUniquelyReferenced_nonNull_native);
        v70 = aBlock[0];
        a1 = aBlock[0];
        v80 = sub_22F13A8F4(v128);
        if ((v79 & 1) != (v81 & 1))
        {
          goto LABEL_90;
        }

        v4 = v80;
        if (v79)
        {
          goto LABEL_49;
        }
      }

      v70[(v4 >> 6) + 8] |= 1 << v4;
      *(v70[6] + 8 * v4) = v128;
      *(v70[7] + 8 * v4) = MEMORY[0x277D84F90];
      v82 = v70[2];
      v83 = __OFADD__(v82, 1);
      v84 = v82 + 1;
      if (v83)
      {
        goto LABEL_82;
      }

      v70[2] = v84;
LABEL_49:
      v85 = v70[7];
      v86 = *(v85 + 8 * v4);
      v87 = swift_isUniquelyReferenced_nonNull_native();
      *(v85 + 8 * v4) = v86;
      v126 = v68;
      if ((v87 & 1) == 0)
      {
        v86 = sub_22F13E1A8(0, *(v86 + 2) + 1, 1, v86);
        *(v85 + 8 * v4) = v86;
      }

      v89 = *(v86 + 2);
      v88 = *(v86 + 3);
      if (v89 >= v88 >> 1)
      {
        v86 = sub_22F13E1A8((v88 > 1), v89 + 1, 1, v86);
        *(v85 + 8 * v4) = v86;
      }

      v23 = v124;
      *(v86 + 2) = v89 + 1;
      v90 = &v86[16 * v89];
      v91 = v127;
      *(v90 + 4) = v127;
      *(v90 + 5) = a2;

      v4 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v69;
      v92 = v91;
      a1 = v69;
      v93 = sub_22F1229E8(v92, a2);
      v95 = v69[2];
      v96 = (v94 & 1) == 0;
      v83 = __OFADD__(v95, v96);
      v97 = v95 + v96;
      if (v83)
      {
        goto LABEL_81;
      }

      v98 = v94;
      if (v69[3] < v97)
      {
        sub_22F125704(v97, v4);
        a1 = aBlock[0];
        v93 = sub_22F1229E8(v127, a2);
        v100 = v126;
        if ((v98 & 1) != (v99 & 1))
        {
          goto LABEL_89;
        }

LABEL_58:
        if ((v98 & 1) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_35;
      }

      v100 = v126;
      if (v4)
      {
        goto LABEL_58;
      }

      a1 = aBlock;
      v105 = v93;
      sub_22F1341B0();
      v93 = v105;
      v100 = v126;
      if ((v98 & 1) == 0)
      {
LABEL_59:
        v69 = aBlock[0];
        *(aBlock[0] + 8 * (v93 >> 6) + 64) |= 1 << v93;
        v101 = (v69[6] + 16 * v93);
        v102 = v128;
        *v101 = v127;
        v101[1] = a2;
        *(v69[7] + 8 * v93) = v102;
        v103 = v69[2];
        v83 = __OFADD__(v103, 1);
        v104 = v103 + 1;
        if (v83)
        {
          goto LABEL_83;
        }

        v69[2] = v104;
        goto LABEL_36;
      }

LABEL_35:
      v71 = v93;

      v69 = aBlock[0];
      *(*(aBlock[0] + 56) + 8 * v71) = v128;
LABEL_36:
      ++v66;
      v68 = (v100 + 16);
      v4 = sub_22F384654;
      a1 = v116;
      v65 = v129;
      if (v125 == v66)
      {

        v4 = sub_22F384654;
        goto LABEL_68;
      }
    }
  }

  v4 = 0;
  v69 = MEMORY[0x277D84F98];
  v70 = MEMORY[0x277D84F98];
LABEL_69:

  sub_22F3B2818(v70);
  v107 = v106;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EE0, &unk_22F7889B0);
  v108 = swift_allocObject();
  sub_22F740830();

  v109 = v113;
  v110 = v114;
  if (v113 < 1 || v114 < 1)
  {
    goto LABEL_88;
  }

  *(v108 + 16) = v107;
  *(v108 + 24) = 1;
  *(v108 + 32) = v109;
  *(v108 + 40) = v110;
  type metadata accessor for CLIPIndex();
  v27 = swift_allocObject();
  *(v27 + 2) = v23;
  *(v27 + 3) = v69;
  *(v27 + 4) = v108;
  *(v27 + 5) = 768;
  sub_22F1B2BBC(0);

  sub_22F107E14(v4, 0);
  return v27;
}

uint64_t static CLIPIndexUtilities.loadCLIPprints(for:)(void *a1)
{
  v8 = MEMORY[0x277D84F98];
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22F3B6C08;
  *(v3 + 24) = v2;
  aBlock[4] = sub_22F2D4D54;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107E24;
  aBlock[3] = &block_descriptor_15;
  v4 = _Block_copy(aBlock);

  [a1 enumerateUsingBlock_];
  _Block_release(v4);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

uint64_t sub_22F3B3A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, uint64_t, uint64_t))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = v5;
  swift_retain_n();
  v11 = a5(a1, 0, a4, v10);

  return v11;
}

void sub_22F3B3AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a3;
  v9 = sub_22F73FE50();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v32 - v20;
  v22 = *(a5 + 16);
  if (*(v22 + 16))
  {
    v23 = sub_22F1229E8(a1, a2);
    if (v24)
    {
      v25 = v10[9];
      v26 = *(v22 + 56) + v25 * v23;
      v33 = v10[2];
      v34 = a4;
      v33(v18, v26, v9);
      v27 = v18;
      v28 = v10[4];
      v28(v21, v27, v9);
      if (*(v22 + 16) && (v29 = sub_22F1229E8(v35, v34), (v30 & 1) != 0))
      {
        v33(v12, *(v22 + 56) + v29 * v25, v9);
        v28(v15, v12, v9);
        sub_22F73FFF0();
        v31 = v10[1];
        v31(v15, v9);
        v31(v21, v9);
      }

      else
      {
        (v10[1])(v21, v9);
      }
    }
  }
}

uint64_t sub_22F3B3D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B20, &unk_22F788B60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = *(v3 + 16);
  if (*(v10 + 16) && (v11 = sub_22F1229E8(a1, a2), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = sub_22F73FE50();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v9, v14 + *(v16 + 72) * v13, v15);
    (*(v16 + 56))(v9, 0, 1, v15);
    return (*(v16 + 32))(a3, v9, v15);
  }

  else
  {
    v18 = sub_22F73FE50();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v9, 1, 1, v18);
    sub_22F73FE30();
    result = (*(v19 + 48))(v9, 1, v18);
    if (result != 1)
    {
      return sub_22F120ADC(v9, &qword_27DAB0B20, &unk_22F788B60);
    }
  }

  return result;
}

void sub_22F3B3F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *), uint64_t a6)
{
  v34 = a6;
  v35 = a3;
  v36 = a4;
  v10 = sub_22F73FE50();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v31 - v21;
  v23 = *(v6 + 16);
  if (*(v23 + 16))
  {
    v24 = sub_22F1229E8(a1, a2);
    if (v25)
    {
      v26 = *(v23 + 56);
      v31 = v11[9];
      v32 = v11[2];
      v33 = a5;
      v32(v19, v26 + v31 * v24, v10);
      v27 = v11[4];
      v27(v22, v19, v10);
      if (*(v23 + 16) && (v28 = sub_22F1229E8(v35, v36), (v29 & 1) != 0))
      {
        v32(v13, *(v23 + 56) + v28 * v31, v10);
        v27(v16, v13, v10);
        v33(v22, v16);
        v30 = v11[1];
        v30(v16, v10);
        v30(v22, v10);
      }

      else
      {
        (v11[1])(v22, v10);
      }
    }
  }
}

void sub_22F3B4194()
{
  v1 = *(v0 + 24);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
    v7 = v6;
LABEL_9:
    v8 = (*(v1 + 48) + 16 * (__clz(__rbit64(v4)) | (v7 << 6)));
    v4 &= v4 - 1;
    v10 = *v8;
    v11 = v8[1];
    swift_bridgeObjectRetain_n();
    MEMORY[0x231900B10](8250, 0xE200000000000000);
    v9 = sub_22F742010();
    MEMORY[0x231900B10](v9);

    MEMORY[0x231900B10](10, 0xE100000000000000);
    MEMORY[0x231900B10](v10, v11);
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t CLIPIndex.deinit()
{

  return v0;
}

uint64_t CLIPIndex.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22F3B43DC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 8) = sub_22F3B6B94;
  *(a2 + 16) = v5;
  return result;
}

uint64_t CLIPIndexUtilities.CentroidCodebookOptions.distanceBlock.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t CLIPIndexUtilities.CentroidCodebookOptions.distanceBlock.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t CLIPIndexUtilities.CentroidCodebookOptions.init(maxNumberOfClusters:distanceBlock:minDistance:samplingStrategy:maxNumberOfMomentsToSample:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, float a7@<S0>)
{
  v7 = *a4;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a7;
  *(a6 + 28) = v7;
  *(a6 + 32) = a5;
  return result;
}

uint64_t static CLIPIndexUtilities.trainCentroidCodebook(using:with:)@<X0>(uint64_t a1@<X0>, float *a2@<X1>, uint64_t *a3@<X8>)
{
  v78 = a3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490);
  v77 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v81 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v80 = &v64 - v7;
  v79 = sub_22F73FE50();
  v82 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v68 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22F740870();
  v73 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 1);
  v76 = *a2;
  v75 = v12;
  v13 = *(a2 + 28);
  v14 = *(a2 + 4);
  v15 = qword_27DAAFDA8;
  v74 = *(a2 + 2);

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_27DAD0E90;
  *&v17 = CACurrentMediaTime();
  sub_22F1B560C("TrainCLIPCentroidCodebook", 25, 2u, v17, 0, v16, v88);
  type metadata accessor for MomentSampler(0);
  v18 = swift_allocObject();
  sub_22F740830();
  sub_22F120634(0, &qword_2810A8FC8, off_27887B108);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v19);
  v21 = [objc_opt_self() filterEncodedCLIPFeatureVectorNotEmpty];
  v22 = [ObjCClassFromMetadata nodesMatchingFilter:v21 inGraph:a1];

  v72 = v22;
  if (v13)
  {
    if (v13 == 1)
    {
      v23 = sub_22F35A52C(v14, v22);
    }

    else
    {
      v24 = v14 / 2;
      v25 = sub_22F35A52C(v24, v22);
      v26 = [v22 collectionBySubtracting_];
      swift_beginAccess();
      v27 = sub_22F35AA00(v24, v26);
      swift_endAccess();
      v28 = [v25 collectionByFormingUnionWith_];

      v23 = v28;
    }
  }

  else
  {
    swift_beginAccess();
    v23 = sub_22F35AA00(v14, v22);
    swift_endAccess();
  }

  v29 = v79;
  v87 = MEMORY[0x277D84F98];
  v30 = swift_allocObject();
  v30[2] = &v87;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_22F3B6C08;
  *(v31 + 24) = v30;
  v85 = sub_22F2D4D54;
  v86 = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107E24;
  v84 = &block_descriptor_35_1;
  v32 = _Block_copy(aBlock);

  [v23 enumerateUsingBlock_];
  _Block_release(v32);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
    goto LABEL_26;
  }

  v33 = v87;

  v30 = *(v33 + 16);
  v34 = MEMORY[0x277D84F90];
  if (v30)
  {
    v35 = sub_22F10B8C8(*(v33 + 16), 0);
    sub_22F11D370(aBlock, v35 + ((*(v77 + 80) + 32) & ~*(v77 + 80)), v30, v33);
    v70 = v36;
    v37 = aBlock[0];
    v67 = v84;
    v66 = v85;

    sub_22F0FF590(v37);
    if (v70 == v30)
    {
      v29 = v79;
      v34 = MEMORY[0x277D84F90];
      goto LABEL_13;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v35 = MEMORY[0x277D84F90];
LABEL_13:
  aBlock[0] = v35;
  v38 = v71;
  sub_22F3B2A6C(aBlock);
  v30 = v38;
  if (v38)
  {
LABEL_27:

    __break(1u);
    return result;
  }

  v70 = v23;
  v71 = v9;

  v39 = aBlock[0];
  v40 = *(aBlock[0] + 16);
  v41 = v78;
  if (v40)
  {
    v65 = 0;
    v66 = v11;
    v67 = v18;
    aBlock[0] = v34;
    sub_22F146E00(0, v40, 0);
    v42 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v64 = v39;
    v43 = v39 + v42;
    v79 = *(v77 + 72);
    v44 = aBlock[0];
    v45 = (v82 + 32);
    v46 = v69;
    v47 = v68;
    do
    {
      v48 = v80;
      sub_22F3B69FC(v43, v80);
      v49 = v48;
      v50 = v81;
      sub_22F3B6970(v49, v81);

      v51 = *v45;
      (*v45)(v47, v50 + *(v46 + 48), v29);
      aBlock[0] = v44;
      v53 = *(v44 + 16);
      v52 = *(v44 + 24);
      v54 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        sub_22F146E00((v52 > 1), v53 + 1, 1);
        v54 = v53 + 1;
        v46 = v69;
        v44 = aBlock[0];
      }

      *(v44 + 16) = v54;
      v51((v44 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v53), v47, v29);
      v43 += v79;
      --v40;
    }

    while (v40);

    v41 = v78;
    v18 = v67;
    v11 = v66;
    v30 = v65;
  }

  else
  {
  }

  sub_22F740880();
  sub_22F740850();
  swift_allocObject();
  sub_22F740860();
  (*(v73 + 104))(v11, *MEMORY[0x277D3C710], v71);
  v55 = sub_22F740260();
  swift_allocObject();
  v56 = sub_22F740240();
  sub_22F740250();
  if (v30)
  {

    swift_setDeallocating();
    v57 = OBJC_IVAR____TtC11PhotosGraph13MomentSampler_rng;
    v58 = sub_22F740840();
    (*(*(v58 - 8) + 8))(v18 + v57, v58);
    swift_deallocClassInstance();
    v59 = 1;
  }

  else
  {

    v60 = MEMORY[0x277D3C6F8];
    v41[3] = v55;
    v41[4] = v60;

    *v41 = v56;
    swift_setDeallocating();
    v61 = OBJC_IVAR____TtC11PhotosGraph13MomentSampler_rng;
    v62 = sub_22F740840();
    (*(*(v62 - 8) + 8))(v18 + v61, v62);
    swift_deallocClassInstance();
    v59 = 0;
  }

  sub_22F1B2BBC(v59);
}

void sub_22F3B4FA4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B20, &unk_22F788B60);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = &v25 - v4;
  v27 = [a1 clipFeatureVector];
  if (v27)
  {
    v6 = [a1 localIdentifier];
    if (!v6)
    {
      sub_22F740E20();
      v6 = sub_22F740DF0();
    }

    sub_22F120634(0, &qword_2810A8EA8, 0x277CD98F8);
    v8 = [swift_getObjCClassFromMetadata(v7) uuidFromLocalIdentifier_];

    if (v8)
    {
      v9 = sub_22F740E20();
      v11 = v10;

      v12 = [v27 array];
      sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
      v13 = sub_22F741180();

      if (v13 >> 62)
      {
        v14 = sub_22F741A00();
        if (v14)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
LABEL_7:
          v25 = v11;
          v26 = v9;
          v28 = MEMORY[0x277D84F90];
          sub_22F1464F4(0, v14 & ~(v14 >> 63), 0);
          if (v14 < 0)
          {
            __break(1u);
            return;
          }

          v15 = 0;
          v16 = v28;
          do
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x2319016F0](v15, v13);
            }

            else
            {
              v17 = *(v13 + 8 * v15 + 32);
            }

            v18 = v17;
            [v17 floatValue];
            v20 = v19;

            v28 = v16;
            v22 = *(v16 + 16);
            v21 = *(v16 + 24);
            if (v22 >= v21 >> 1)
            {
              sub_22F1464F4((v21 > 1), v22 + 1, 1);
              v16 = v28;
            }

            ++v15;
            *(v16 + 16) = v22 + 1;
            *(v16 + 4 * v22 + 32) = v20;
          }

          while (v14 != v15);

          v11 = v25;
          v9 = v26;
          goto LABEL_21;
        }
      }

LABEL_21:
      sub_22F73FE60();
      v24 = sub_22F73FE50();
      (*(*(v24 - 8) + 56))(v5, 0, 1, v24);
      sub_22F121B14(v5, v9, v11);

      return;
    }

    v23 = v27;
  }
}

void sub_22F3B52FC(int64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490);
        v6 = sub_22F741200();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22F3B56B0(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22F3B5440(0, v2, 1, a1);
  }
}

void sub_22F3B5440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490);
  MEMORY[0x28223BE20](v35);
  v34 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v26 - v10);
  MEMORY[0x28223BE20](v12);
  v15 = (&v26 - v14);
  v28 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v33 = v16;
    v27 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v31 = v18;
    v32 = a3;
    v29 = v21;
    v30 = v20;
    while (1)
    {
      sub_22F3B69FC(v21, v15);
      sub_22F3B69FC(v18, v11);
      if (*v15 == *v11 && v15[1] == v11[1])
      {
        sub_22F120ADC(v11, &qword_27DAB1060, &unk_22F771490);
        sub_22F120ADC(v15, &qword_27DAB1060, &unk_22F771490);
LABEL_5:
        a3 = v32 + 1;
        v18 = v31 + v27;
        v20 = v30 - 1;
        v21 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_6;
      }

      v23 = sub_22F742040();
      sub_22F120ADC(v11, &qword_27DAB1060, &unk_22F771490);
      sub_22F120ADC(v15, &qword_27DAB1060, &unk_22F771490);
      if ((v23 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_22F3B6970(v21, v34);
      swift_arrayInitWithTakeFrontToBack();
      sub_22F3B6970(v24, v18);
      v18 += v19;
      v21 += v19;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_22F3B56B0(uint64_t *a1, uint64_t a2, int64_t *a3, uint64_t a4)
{
  v6 = v4;
  v123 = a1;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490);
  MEMORY[0x28223BE20](v137);
  v128 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v136 = &v118 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = (&v118 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = (&v118 - v16);
  MEMORY[0x28223BE20](v18);
  v135 = (&v118 - v19);
  MEMORY[0x28223BE20](v20);
  v134 = (&v118 - v21);
  MEMORY[0x28223BE20](v22);
  v122 = (&v118 - v23);
  MEMORY[0x28223BE20](v24);
  v121 = (&v118 - v25);
  v26 = a3[1];
  v131 = v27;
  if (v26 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_110:
    v31 = *v123;
    if (!*v123)
    {
      goto LABEL_149;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v131;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_143:
      v29 = sub_22F3F5F98(v29);
    }

    v139 = v29;
    v113 = *(v29 + 16);
    if (v113 >= 2)
    {
      v114 = a3;
      while (*v114)
      {
        a3 = v29;
        v29 = v113 - 1;
        v115 = a3[2 * v113];
        v116 = a3[2 * v113 + 3];
        sub_22F3B6084(*v114 + v5[9] * v115, *v114 + v5[9] * a3[2 * v113 + 2], *v114 + v5[9] * v116, v31);
        if (v6)
        {
          goto LABEL_121;
        }

        if (v116 < v115)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_22F3F5F98(a3);
        }

        if (v113 - 2 >= a3[2])
        {
          goto LABEL_137;
        }

        v117 = &a3[2 * v113];
        *v117 = v115;
        v117[1] = v116;
        v139 = a3;
        sub_22F3F5F0C(v29);
        v29 = v139;
        v113 = v139[2];
        if (v113 <= 1)
        {
          goto LABEL_121;
        }
      }

      goto LABEL_147;
    }

LABEL_121:

    return;
  }

  v118 = a4;
  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  v125 = a3;
  v138 = v14;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    if (v28 + 1 >= v26)
    {
      goto LABEL_36;
    }

    v129 = v26;
    v31 = *a3;
    v32 = *(v131 + 72);
    v33 = (v28 + 1);
    v34 = v121;
    sub_22F3B69FC(v31 + v32 * (v28 + 1), v121);
    v124 = v30;
    v132 = v32;
    v35 = v31 + v32 * v30;
    v36 = v122;
    sub_22F3B69FC(v35, v122);
    v37 = *v34 == *v36 && v34[1] == v36[1];
    v119 = v29;
    v120 = v6;
    if (v37)
    {
      LODWORD(v130) = 0;
    }

    else
    {
      LODWORD(v130) = sub_22F742040();
    }

    sub_22F120ADC(v122, &qword_27DAB1060, &unk_22F771490);
    sub_22F120ADC(v121, &qword_27DAB1060, &unk_22F771490);
    v38 = v124 + 2;
    v39 = v132 * (v124 + 2);
    v40 = v31 + v39;
    v41 = v132 * v33;
    v6 = v31 + v132 * v33;
    v42 = v33;
    do
    {
      v29 = v38;
      v5 = v42;
      a3 = v41;
      v43 = v39;
      if (v38 >= v129)
      {
        break;
      }

      v133 = v38;
      v44 = v134;
      sub_22F3B69FC(v40, v134);
      v45 = v135;
      sub_22F3B69FC(v6, v135);
      v46 = *v44 == *v45 && v44[1] == v45[1];
      v31 = v46 ? 0 : sub_22F742040();
      sub_22F120ADC(v135, &qword_27DAB1060, &unk_22F771490);
      sub_22F120ADC(v134, &qword_27DAB1060, &unk_22F771490);
      v29 = v133;
      v38 = v133 + 1;
      v40 += v132;
      v6 += v132;
      v42 = (v5 + 1);
      v41 = a3 + v132;
      v39 = v43 + v132;
      v14 = v138;
    }

    while (((v130 ^ v31) & 1) == 0);
    if ((v130 & 1) == 0)
    {
      goto LABEL_34;
    }

    if (v29 < v124)
    {
      goto LABEL_140;
    }

    if (v124 < v29)
    {
      v47 = v124 * v132;
      v48 = v124;
      do
      {
        if (v48 != v5)
        {
          v50 = *v125;
          if (!*v125)
          {
            goto LABEL_146;
          }

          v133 = v50 + v47;
          sub_22F3B6970(v50 + v47, v128);
          if (v47 < a3 || v133 >= v50 + v43)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v47 != a3)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_22F3B6970(v128, a3 + v50);
        }

        v48 = (v48 + 1);
        a3 = (a3 - v132);
        v43 -= v132;
        v47 += v132;
        v49 = v48 < v5;
        v5 = (v5 - 1);
      }

      while (v49);
LABEL_34:
      v31 = v29;
      v29 = v119;
      v6 = v120;
      v30 = v124;
      a3 = v125;
      goto LABEL_36;
    }

    v31 = v29;
    v29 = v119;
    v6 = v120;
    a3 = v125;
    v30 = v124;
LABEL_36:
    v51 = a3[1];
    if (v31 < v51)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_139;
      }

      if (v31 - v30 < v118)
      {
        v52 = v30 + v118;
        if (__OFADD__(v30, v118))
        {
          goto LABEL_141;
        }

        if (v52 >= v51)
        {
          v52 = a3[1];
        }

        if (v52 < v30)
        {
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (v31 != v52)
        {
          break;
        }
      }
    }

LABEL_59:
    if (v31 < v30)
    {
      goto LABEL_138;
    }

    v64 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v31;
    if ((v64 & 1) == 0)
    {
      v29 = sub_22F13D970(0, *(v29 + 16) + 1, 1, v29);
    }

    v66 = *(v29 + 16);
    v65 = *(v29 + 24);
    v67 = v66 + 1;
    if (v66 >= v65 >> 1)
    {
      v29 = sub_22F13D970((v65 > 1), v66 + 1, 1, v29);
    }

    *(v29 + 16) = v67;
    v68 = v29 + 16 * v66;
    v69 = v133;
    *(v68 + 32) = v30;
    *(v68 + 40) = v69;
    v132 = *v123;
    if (!v132)
    {
      goto LABEL_148;
    }

    if (v66)
    {
      while (1)
      {
        v31 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v70 = *(v29 + 32);
          v71 = *(v29 + 40);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_79:
          if (v73)
          {
            goto LABEL_127;
          }

          v86 = (v29 + 16 * v67);
          v88 = *v86;
          v87 = v86[1];
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_130;
          }

          v92 = (v29 + 32 + 16 * v31);
          v94 = *v92;
          v93 = v92[1];
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_134;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              v31 = v67 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v96 = (v29 + 16 * v67);
        v98 = *v96;
        v97 = v96[1];
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_93:
        if (v91)
        {
          goto LABEL_129;
        }

        v99 = v29 + 16 * v31;
        v101 = *(v99 + 32);
        v100 = *(v99 + 40);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_132;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_100:
        v107 = v31 - 1;
        if (v31 - 1 >= v67)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
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
          goto LABEL_142;
        }

        v108 = *a3;
        if (!*a3)
        {
          goto LABEL_145;
        }

        v5 = a3;
        a3 = v29;
        v109 = v29 + 32;
        v29 = *(v29 + 32 + 16 * v107);
        v110 = *(v109 + 16 * v31 + 8);
        sub_22F3B6084(v108 + *(v131 + 72) * v29, v108 + *(v131 + 72) * *(v109 + 16 * v31), v108 + *(v131 + 72) * v110, v132);
        if (v6)
        {
          goto LABEL_121;
        }

        if (v110 < v29)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_22F3F5F98(a3);
        }

        if (v107 >= a3[2])
        {
          goto LABEL_124;
        }

        v111 = &a3[2 * v107];
        v111[4] = v29;
        v111[5] = v110;
        v139 = a3;
        sub_22F3F5F0C(v31);
        v29 = v139;
        v67 = v139[2];
        a3 = v5;
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = v29 + 32 + 16 * v67;
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_125;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_126;
      }

      v81 = (v29 + 16 * v67);
      v83 = *v81;
      v82 = v81[1];
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_128;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_131;
      }

      if (v85 >= v77)
      {
        v103 = (v29 + 32 + 16 * v31);
        v105 = *v103;
        v104 = v103[1];
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_135;
        }

        if (v72 < v106)
        {
          v31 = v67 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    v26 = a3[1];
    v28 = v133;
    if (v133 >= v26)
    {
      goto LABEL_110;
    }
  }

  v119 = v29;
  v120 = v6;
  v53 = *a3;
  v54 = *(v131 + 72);
  v55 = *a3 + v54 * (v31 - 1);
  v56 = v30;
  v57 = -v54;
  v124 = v56;
  v5 = (v56 - v31);
  v126 = v54;
  v127 = v52;
  v58 = v53 + v31 * v54;
  while (2)
  {
    v132 = v55;
    v133 = v31;
    v129 = v58;
    v130 = v5;
    v59 = v58;
LABEL_48:
    sub_22F3B69FC(v59, v17);
    sub_22F3B69FC(v55, v14);
    if (*v17 == *v14 && v17[1] == v14[1])
    {
      sub_22F120ADC(v14, &qword_27DAB1060, &unk_22F771490);
      sub_22F120ADC(v17, &qword_27DAB1060, &unk_22F771490);
LABEL_46:
      v31 = v133 + 1;
      v55 = v132 + v126;
      v5 = (v130 - 1);
      v58 = v129 + v126;
      if (v133 + 1 != v127)
      {
        continue;
      }

      v31 = v127;
      v29 = v119;
      v6 = v120;
      v30 = v124;
      a3 = v125;
      goto LABEL_59;
    }

    break;
  }

  v61 = sub_22F742040();
  sub_22F120ADC(v14, &qword_27DAB1060, &unk_22F771490);
  sub_22F120ADC(v17, &qword_27DAB1060, &unk_22F771490);
  if ((v61 & 1) == 0)
  {
    v14 = v138;
    goto LABEL_46;
  }

  if (v53)
  {
    v62 = v136;
    sub_22F3B6970(v59, v136);
    swift_arrayInitWithTakeFrontToBack();
    sub_22F3B6970(v62, v55);
    v55 += v57;
    v59 += v57;
    v63 = __CFADD__(v5, 1);
    v5 = (v5 + 1);
    v14 = v138;
    if (v63)
    {
      goto LABEL_46;
    }

    goto LABEL_48;
  }

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
}

void sub_22F3B6084(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = a3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490);
  MEMORY[0x28223BE20](v48);
  v49 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = (&v43 - v9);
  MEMORY[0x28223BE20](v10);
  v12 = (&v43 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = (&v43 - v14);
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_72;
  }

  v18 = v51 - a2;
  if (v51 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_73;
  }

  v19 = (a2 - a1) / v17;
  v54 = a1;
  v53 = a4;
  if (v19 >= v18 / v17)
  {
    v22 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = a4 + v22;
    if (v22 >= 1)
    {
      v31 = -v17;
      v32 = v30;
      do
      {
        v44 = v30;
        v33 = a2;
        v34 = a2 + v31;
        v50 = v34;
        v46 = v33;
        while (1)
        {
          v36 = v51;
          if (v33 <= a1)
          {
            v54 = v33;
            v30 = v44;
            goto LABEL_69;
          }

          v45 = v30;
          v37 = v31;
          v38 = v32 + v31;
          v39 = v47;
          sub_22F3B69FC(v38, v47);
          v40 = v49;
          sub_22F3B69FC(v34, v49);
          v41 = *v39 == *v40 && v39[1] == v40[1];
          v42 = v41 ? 0 : sub_22F742040();
          v51 = v36 + v37;
          sub_22F120ADC(v49, &qword_27DAB1060, &unk_22F771490);
          sub_22F120ADC(v47, &qword_27DAB1060, &unk_22F771490);
          if (v42)
          {
            break;
          }

          v30 = v38;
          if (v36 < v32 || v51 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v38;
            v34 = v50;
          }

          else
          {
            v34 = v50;
            if (v36 != v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v30 = v38;
            }
          }

          v32 = v30;
          v35 = v38 > a4;
          v31 = v37;
          v33 = v46;
          if (!v35)
          {
            v54 = v46;
            goto LABEL_69;
          }
        }

        if (v36 < v46 || v51 >= v46)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v37;
        }

        else
        {
          a2 = v50;
          v31 = v37;
          if (v36 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v30 = v45;
      }

      while (v32 > a4);
    }

    v54 = a2;
LABEL_69:
    v52 = v30;
  }

  else
  {
    v20 = a2;
    v21 = v19 * v17;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v21;
    v52 = a4 + v21;
    if (v21 >= 1 && v20 < v51)
    {
      v25 = v20;
      while (1)
      {
        v49 = a1;
        v50 = v25;
        sub_22F3B69FC(v25, v15);
        sub_22F3B69FC(a4, v12);
        if (*v15 == *v12 && v15[1] == v12[1])
        {
          break;
        }

        v27 = sub_22F742040();
        sub_22F120ADC(v12, &qword_27DAB1060, &unk_22F771490);
        sub_22F120ADC(v15, &qword_27DAB1060, &unk_22F771490);
        if ((v27 & 1) == 0)
        {
          goto LABEL_31;
        }

        v28 = v49;
        v29 = v50 + v17;
        if (v49 < v50 || v49 >= v29)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v49 != v50)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v25 = v29;
LABEL_39:
        a1 = v28 + v17;
        v54 = a1;
        if (a4 >= v23 || v25 >= v51)
        {
          goto LABEL_70;
        }
      }

      sub_22F120ADC(v12, &qword_27DAB1060, &unk_22F771490);
      sub_22F120ADC(v15, &qword_27DAB1060, &unk_22F771490);
LABEL_31:
      v28 = v49;
      if (v49 < a4 || v49 >= a4 + v17)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v49 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v53 = a4 + v17;
      a4 += v17;
      v25 = v50;
      goto LABEL_39;
    }
  }

LABEL_70:
  sub_22F3B6844(&v54, &v53, &v52, &qword_27DAB1060, &unk_22F771490);
}

uint64_t sub_22F3B6720(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_22F3B6844(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F3B6970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F3B69FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id AtFrequentLocationFeatureExtractor.__allocating_init()()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [objc_allocWithZone(v0) initWithError_];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_22F73F370();

    swift_willThrow();
  }

  return v1;
}

id AtFrequentLocationFeatureExtractor.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22F771340;
  *(v4 + 32) = sub_22F740E20();
  *(v4 + 40) = v5;
  v6 = @"AtFrequentLocation";
  v7 = sub_22F741160();

  sub_22F120634(0, &qword_2810A90E0, off_27887B100);
  v9 = [swift_getObjCClassFromMetadata(v8) filter];
  v10 = [v9 relation];

  aBlock[4] = sub_22F3B70BC;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F2D83D0;
  aBlock[3] = &block_descriptor_52;
  v11 = _Block_copy(aBlock);

  v14.receiver = v1;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithName_featureNames_relation_labelForTargetBlock_, v6, v7, v10, v11);
  _Block_release(v11);

  return v12;
}

uint64_t sub_22F3B6EBC(void *a1, void *a2, uint64_t a3)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    swift_beginAccess();
    v8 = *(a3 + 16);
    v9 = a1;
    if (!v8 && [v7 graph])
    {
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = v15;
        sub_22F120634(0, &unk_2810A8F20, off_27887AD98);
        v18 = [swift_getObjCClassFromMetadata(v17) nodesInGraph_];
        v19 = [v18 momentNodes];
        swift_unknownObjectRelease();

        swift_beginAccess();
        v20 = *(a3 + 16);
        *(a3 + 16) = v19;
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    swift_beginAccess();
    v10 = *(a3 + 16);
    if (v10)
    {
      v11 = v10;
      if ([v11 containsNode_])
      {
        v12 = sub_22F740E20();

        return v12;
      }
    }
  }

  else if (a2)
  {
    sub_22F3B7304();
    v14 = swift_allocError();
    *a2 = sub_22F73F360();
  }

  return 0;
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id AtFrequentLocationFeatureExtractor.__allocating_init(name:featureNames:relation:labelForTargetBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (a2)
  {
    v11 = sub_22F740DF0();
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_allocWithZone(v7);
  v13 = sub_22F741160();

  v17[4] = a5;
  v17[5] = a6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22F2D83D0;
  v17[3] = &block_descriptor_3_1;
  v14 = _Block_copy(v17);
  v15 = [v12 initWithName:v11 featureNames:v13 relation:a4 labelForTargetBlock:v14];

  _Block_release(v14);

  return v15;
}

id AtFrequentLocationFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F3B7304()
{
  result = qword_27DAB3EE8;
  if (!qword_27DAB3EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3EE8);
  }

  return result;
}

unint64_t sub_22F3B736C()
{
  result = qword_27DAB3EF0;
  if (!qword_27DAB3EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3EF0);
  }

  return result;
}

uint64_t sub_22F3B73C8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22F3B73E8, v1, 0);
}

uint64_t sub_22F3B73E8()
{
  v1 = swift_allocObject();
  v0[5] = v1;
  *(v1 + 16) = MEMORY[0x277D84F98];
  v57 = MEMORY[0x277D84F90];
  sub_22F741BD0();
  v2 = 0x20u;
  do
  {
    [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    sub_22F741BA0();
    sub_22F741BE0();
    sub_22F741BF0();
    sub_22F741BB0();
    v2 += 4;
  }

  while (v2 != 112);
  v3 = v0[3];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 40);
    while (1)
    {
      v9 = *(v5 - 1);
      v8 = *v5;
      GEOLocationCoordinate2DMake();
      v11 = v10;
      v13 = v12;
      v14 = objc_allocWithZone(MEMORY[0x277D0ED60]);
      sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
      v15 = sub_22F741160();
      v16 = [v14 initWithCoordinate:v15 radius:v11 categories:{v13, 100.0}];

      if (v16)
      {
        break;
      }

      v18 = *(v1 + 16);
      v34 = sub_22F1237E8(v9, v8);
      if ((v35 & 1) == 0)
      {
        goto LABEL_7;
      }

      v36 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v18;
      *(v1 + 16) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22F138DF8();
      }

      sub_22F3BA6C4(v36, v18);
LABEL_6:
      *(v1 + 16) = v18;

LABEL_7:
      v5 += 2;
      if (!--v4)
      {

        v42 = *(v1 + 16);
        goto LABEL_25;
      }
    }

    v17 = v16;
    v18 = *(v1 + 16);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v18;
    *(v1 + 16) = 0x8000000000000000;
    v20 = sub_22F1237E8(v9, v8);
    v28 = v18[2];
    v29 = (v21 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v32 = v21;
    if (v18[3] >= v31)
    {
      if ((v19 & 1) == 0)
      {
        v41 = v20;
        sub_22F138DF8();
        v20 = v41;
        if ((v32 & 1) == 0)
        {
LABEL_19:
          v18[(v20 >> 6) + 8] |= 1 << v20;
          v38 = (v18[6] + 16 * v20);
          *v38 = v9;
          v38[1] = v8;
          *(v18[7] + 8 * v20) = v17;

          v39 = v18[2];
          v30 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v30)
          {
            goto LABEL_39;
          }

          v18[2] = v40;
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else
    {
      sub_22F12DD90(v31, v19);
      v20 = sub_22F1237E8(v9, v8);
      if ((v32 & 1) != (v33 & 1))
      {
        type metadata accessor for CLLocationCoordinate2D(0);

        return sub_22F7420C0();
      }
    }

    if ((v32 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_5:
    v6 = v18[7];
    v7 = *(v6 + 8 * v20);
    *(v6 + 8 * v20) = v17;

    goto LABEL_6;
  }

  v42 = MEMORY[0x277D84F98];
LABEL_25:
  v43 = v0[4];
  v44 = *(v43 + 112);
  v45 = *(v42 + 16);
  if (v45)
  {
    v56 = *(v43 + 112);
    sub_22F120B48();
    v46 = sub_22F120B44();

    v20 = sub_22F0FF590(v57);
    if (v46 != v45)
    {
LABEL_40:
      __break(1u);
      return MEMORY[0x2822008A0](v20, v21, v22, v23, v24, v25, v26, v27);
    }

    v44 = v56;
  }

  sub_22F120634(0, &qword_27DAB3F40, 0x277D0ED60);
  v47 = sub_22F741160();

  v48 = [v44 ticketForSpatialLookupParameters:v47 traits:0];
  v0[6] = v48;

  if (v48)
  {
    v49 = v0[4];
    v50 = sub_22F3BAC54();
    v51 = swift_task_alloc();
    v0[7] = v51;
    *(v51 + 16) = v48;
    *(v51 + 24) = v1;
    v52 = swift_task_alloc();
    v0[8] = v52;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F48, &qword_22F789EF0);
    *v52 = v0;
    v52[1] = sub_22F3B79D0;
    v25 = sub_22F3BB330;
    v20 = (v0 + 2);
    v24 = 0x800000022F79DAF0;
    v21 = v49;
    v22 = v50;
    v23 = 0xD000000000000018;
    v26 = v51;

    return MEMORY[0x2822008A0](v20, v21, v22, v23, v24, v25, v26, v27);
  }

  sub_22F3BAC00();
  swift_allocError();
  *v53 = 1;
  swift_willThrow();

  v54 = v0[1];

  return v54();
}

uint64_t sub_22F3B79D0()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_22F3B7B68;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_22F3B7AF8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22F3B7AF8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22F3B7B68()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

void sub_22F3B7BE0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F50, &unk_22F789EF8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = aBlock - v10;
  (*(v7 + 16))(aBlock - v10, a1, v6, v9);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v12, v11, v6);
  *(v14 + v13) = a3;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_22F3BB3F8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F3B8218;
  aBlock[3] = &block_descriptor_18_0;
  v15 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  [a2 submitWithHandler:v15 networkActivity:0];
  _Block_release(v15);
}

void sub_22F3B7DD0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F50, &unk_22F789EF8);
    sub_22F7412E0();
  }

  else
  {
    v20 = MEMORY[0x277D84F98];
    swift_beginAccess();
    v7 = *(a3 + 16);
    v8 = 1 << *(v7 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v7 + 64);
    v11 = (v8 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v12 = 0;
    while (v10)
    {
      v13 = v12;
LABEL_11:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = v14 | (v13 << 6);
      v16 = (*(v7 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(*(v7 + 56) + 8 * v15);
      sub_22F3B7F68(v19, a4, &v20, v17, v18);
    }

    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F50, &unk_22F789EF8);
        sub_22F7412F0();
        return;
      }

      v10 = *(v7 + 64 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_22F3B7F68(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  v10 = objc_autoreleasePoolPush();
  v11 = [a2 mapItemsForParameters_];
  if (v11)
  {
    v12 = v11;
    v35 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F18, &qword_22F789EE8);
    v13 = sub_22F741180();

    if (v13 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
    {
      v15 = 0;
      while ((v13 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x2319016F0](v15, v13);
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_23;
        }

LABEL_13:
        v19 = [v17 _muid];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *a3;
        v36 = *a3;
        *a3 = 0x8000000000000000;
        v22 = sub_22F13A8F4(v19);
        v24 = v21[2];
        v25 = (v23 & 1) == 0;
        v26 = __OFADD__(v24, v25);
        v27 = v24 + v25;
        if (v26)
        {
          goto LABEL_24;
        }

        v28 = v23;
        if (v21[3] < v27)
        {
          sub_22F12E05C(v27, isUniquelyReferenced_nonNull_native);
          v22 = sub_22F13A8F4(v19);
          if ((v28 & 1) != (v29 & 1))
          {
            sub_22F7420C0();
            __break(1u);
            return;
          }

LABEL_18:
          v30 = v36;
          if (v28)
          {
            goto LABEL_5;
          }

          goto LABEL_19;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_18;
        }

        v34 = v22;
        sub_22F138F6C();
        v22 = v34;
        v30 = v36;
        if (v28)
        {
LABEL_5:
          v16 = (v30[7] + 16 * v22);
          *v16 = a4;
          v16[1] = a5;
          swift_unknownObjectRelease();
          goto LABEL_6;
        }

LABEL_19:
        v30[(v22 >> 6) + 8] |= 1 << v22;
        *(v30[6] + 8 * v22) = v19;
        v31 = (v30[7] + 16 * v22);
        *v31 = a4;
        v31[1] = a5;
        swift_unknownObjectRelease();
        v32 = v30[2];
        v26 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v26)
        {
          goto LABEL_25;
        }

        v30[2] = v33;
LABEL_6:
        *a3 = v30;

        ++v15;
        if (v18 == i)
        {
          goto LABEL_28;
        }
      }

      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v17 = *(v13 + 8 * v15 + 32);
      swift_unknownObjectRetain();
      v18 = v15 + 1;
      if (!__OFADD__(v15, 1))
      {
        goto LABEL_13;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_28:

    v10 = v35;
  }

  objc_autoreleasePoolPop(v10);
}

void sub_22F3B8218(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_22F3B8284(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22F3B82A4, v1, 0);
}

id sub_22F3B82A4()
{
  result = [objc_opt_self() sharedService];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = v0[3];
  v4 = [result maxParametersCountForSpatialPlaceLookup];
  v0[5] = v4;

  v5 = *(v3 + 16);
  v0[6] = v5;
  if (!v4)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v4 >= 1 && v5 != 0)
  {
    v4 = v0[3];
    v9 = MEMORY[0x277D84F98];
    v0[7] = MEMORY[0x277D84F98];
    v0[8] = v9;
    v10 = v0[5];
    v0[9] = v10;
    v11 = v5 > v10;
    if (v5 >= v10)
    {
      v5 = v10;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      if (!v11)
      {

LABEL_16:
        v0[10] = v4;
        v12 = swift_task_alloc();
        v0[11] = v12;
        *v12 = v0;
        v12[1] = sub_22F3B843C;

        return sub_22F3B8958(v4);
      }

LABEL_21:
      sub_22F10AF5C(v4, v4 + 32, 0, (2 * v5) | 1);
      v4 = v13;
      goto LABEL_16;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v0[1];
  v8 = MEMORY[0x277D84F98];

  return v7(v8);
}

uint64_t sub_22F3B843C(uint64_t a1)
{
  v3 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v4 = v3[4];
    v5 = sub_22F3B88E8;
  }

  else
  {
    v6 = v3[4];

    v5 = sub_22F3B8564;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22F3B8564()
{
  v1 = v0[12];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v7 = v0[7];
  v6 = v0[8];

  v9 = 0;
  while (v4)
  {
    v10 = v9;
LABEL_11:
    v11 = __clz(__rbit64(v4)) | (v10 << 6);
    v12 = (*(v1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v1 + 56) + 8 * v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[2] = v6;
    v17 = sub_22F1237E8(v13, v14);
    v19 = v6[2];
    v20 = (v18 & 1) == 0;
    v29 = __OFADD__(v19, v20);
    v9 = v19 + v20;
    if (v29)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v21 = v18;
    if (v6[3] >= v9)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = v17;
        sub_22F1390BC();
        v17 = v25;
      }
    }

    else
    {
      sub_22F12E2C0(v9, isUniquelyReferenced_nonNull_native);
      v17 = sub_22F1237E8(v13, v14);
      if ((v21 & 1) != (v22 & 1))
      {
        type metadata accessor for CLLocationCoordinate2D(0);

        return sub_22F7420C0();
      }
    }

    v4 &= v4 - 1;
    v6 = v0[2];
    if (v21)
    {
      *(v6[7] + 8 * v17) = v15;
    }

    else
    {
      v6[(v17 >> 6) + 8] |= 1 << v17;
      v23 = (v6[6] + 16 * v17);
      *v23 = v13;
      v23[1] = v14;
      *(v6[7] + 8 * v17) = v15;
      v24 = v6[2];
      v29 = __OFADD__(v24, 1);
      v9 = v24 + 1;
      if (v29)
      {
        goto LABEL_41;
      }

      v6[2] = v9;
    }

    v9 = v10;
    v7 = v6;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v10 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v10);
    ++v9;
    if (v4)
    {
      goto LABEL_11;
    }
  }

  v1 = v0[12];
  v26 = v0[9];
  v27 = v0[6];

  if (v26 >= v27)
  {
    v34 = v0[1];

    return v34(v7);
  }

  v8 = v0[9];
  v0[7] = v7;
  v0[8] = v6;
  v28 = v0[5];
  v29 = __OFADD__(v8, v28);
  v9 = v8 + v28;
  v30 = (v9 >> 63) ^ 0x8000000000000000;
  if (!v29)
  {
    v30 = v9;
  }

  v0[9] = v30;
  if (v29)
  {
    goto LABEL_42;
  }

  v31 = v0[6];
  if (v31 < v9)
  {
    v9 = v0[6];
  }

  if (v9 < v8)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v8 < 0)
  {
    goto LABEL_44;
  }

  v1 = v0[3];
  if (v31 == v9 - v8)
  {

    goto LABEL_30;
  }

LABEL_45:
  sub_22F10AF5C(v1, v1 + 32, v8, (2 * v9) | 1);
  v1 = v35;
LABEL_30:
  v0[10] = v1;
  v32 = swift_task_alloc();
  v0[11] = v32;
  *v32 = v0;
  v32[1] = sub_22F3B843C;

  return sub_22F3B8958(v1);
}

uint64_t sub_22F3B88E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22F3B8958(uint64_t a1)
{
  *(v2 + 24) = v1;
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_22F3B89F0;

  return sub_22F3B73C8(a1);
}

uint64_t sub_22F3B89F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 40) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 24);

    return MEMORY[0x2822009F8](sub_22F3B8B38, v7, 0);
  }
}

uint64_t sub_22F3B8B38()
{
  v28 = v0;
  v1 = v0[5];
  v2 = *(v1 + 16);
  if (v2)
  {
    v26 = *(v0[3] + 112);
    v3 = sub_22F10B714(v2, 0);
    v4 = sub_22F11CFCC(&v27, v3 + 4, v2, v1);
    v5 = v27;

    v6 = sub_22F0FF590(v5);
    if (v4 != v2)
    {
      __break(1u);
      return MEMORY[0x2822008A0](v6, v7, v8, v9, v10, v11, v12, v13);
    }

    sub_22F161FB4(v3);

    v14 = sub_22F741160();

    v15 = [v26 ticketForMUIDs:v14 traits:0];
    v0[6] = v15;

    if (v15)
    {
      v16 = v0[5];
      v17 = v0[3];
      v18 = sub_22F3BAC54();
      v19 = swift_task_alloc();
      v0[7] = v19;
      v19[2] = v15;
      v19[3] = v16;
      v19[4] = v17;
      v20 = swift_task_alloc();
      v0[8] = v20;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F08, &qword_22F789ED0);
      *v20 = v0;
      v20[1] = sub_22F3B8E14;
      v11 = sub_22F3BACA8;
      v6 = (v0 + 2);
      v10 = 0x800000022F79DAD0;
      v7 = v17;
      v8 = v18;
      v9 = 0xD000000000000018;
      v12 = v19;

      return MEMORY[0x2822008A0](v6, v7, v8, v9, v10, v11, v12, v13);
    }

    sub_22F3BAC00();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
    v25 = v0[1];

    return v25();
  }

  else
  {

    v21 = sub_22F150350(MEMORY[0x277D84F90]);
    v22 = v0[1];

    return v22(v21);
  }
}

uint64_t sub_22F3B8E14()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_22F3B8FB0;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_22F3B8F48;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22F3B8F48()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22F3B8FB0()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

void sub_22F3B9028(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F10, &unk_22F789ED8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = aBlock - v12;
  (*(v9 + 16))(aBlock - v12, a1, v8, v11);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v14, v13, v8);
  *(v16 + v15) = a3;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
  aBlock[4] = sub_22F3BACB4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F3B95AC;
  aBlock[3] = &block_descriptor_53;
  v17 = _Block_copy(aBlock);

  [a2 submitWithHandler:v17 networkActivity:0];
  _Block_release(v17);
}

uint64_t sub_22F3B921C(unint64_t a1, void *a2, __n128 a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    v5 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F10, &unk_22F789ED8);
    return sub_22F7412E0();
  }

  v7 = a1;
  if (!a1)
  {
    sub_22F3BAC00();
    swift_allocError();
    *v39 = 0;
    goto LABEL_3;
  }

  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_37:
    v10 = sub_22F741A00();
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_38:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F10, &unk_22F789ED8);
    return sub_22F7412F0();
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_38;
  }

LABEL_7:
  v11 = 0;
  v12 = v7 & 0xC000000000000001;
  v13 = MEMORY[0x277D84F98];
  v40 = a5;
  v41 = v10;
  v42 = v7 & 0xC000000000000001;
  while (1)
  {
    if (v12)
    {
      v14 = MEMORY[0x2319016F0](v11, v7, a3);
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v11 >= *(v9 + 16))
      {
        goto LABEL_34;
      }

      v14 = *(v7 + 8 * v11 + 32);
      swift_unknownObjectRetain();
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }
    }

    v16 = objc_autoreleasePoolPush();
    v17 = [v14 _muid];
    if (*(a5 + 16))
    {
      v18 = sub_22F13A8F4(v17);
      if (v19)
      {
        break;
      }
    }

LABEL_8:
    objc_autoreleasePoolPop(v16);
    swift_unknownObjectRelease();
    ++v11;
    if (v15 == v10)
    {
      goto LABEL_38;
    }
  }

  v20 = (*(a5 + 56) + 16 * v18);
  v22 = *v20;
  v21 = v20[1];
  v23 = sub_22F3BAD90(v14);
  if (v13[2])
  {
    v24 = sub_22F1237E8(v22, v21);
    if (v25)
    {
      v44 = *(v13[7] + 8 * v24);

      sub_22F145B30(v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_22F133168(v44, isUniquelyReferenced_nonNull_native, v22, v21);
      v12 = v42;
      goto LABEL_8;
    }
  }

  v43 = v23;
  v27 = v9;
  a5 = v7;
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v29 = sub_22F1237E8(v22, v21);
  v30 = v13[2];
  v31 = (v28 & 1) == 0;
  v32 = v30 + v31;
  if (__OFADD__(v30, v31))
  {
    goto LABEL_35;
  }

  v7 = v28;
  if (v13[3] >= v32)
  {
    if ((v9 & 1) == 0)
    {
      sub_22F1390BC();
    }

    v9 = v27;
    goto LABEL_27;
  }

  sub_22F12E2C0(v32, v9);
  v33 = sub_22F1237E8(v22, v21);
  if ((v7 & 1) == (v34 & 1))
  {
    v29 = v33;
    v9 = v27;
LABEL_27:
    v10 = v41;
    if (v7)
    {
      *(v13[7] + 8 * v29) = v43;
    }

    else
    {
      v13[(v29 >> 6) + 8] |= 1 << v29;
      v35 = (v13[6] + 16 * v29);
      *v35 = v22;
      v35[1] = v21;
      *(v13[7] + 8 * v29) = v43;
      v36 = v13[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_36;
      }

      v13[2] = v38;
    }

    v7 = a5;
    a5 = v40;
    v12 = v42;
    goto LABEL_8;
  }

  type metadata accessor for CLLocationCoordinate2D(0);
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

double sub_22F3B95AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F18, &qword_22F789EE8);
    v4 = sub_22F741180();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

uint64_t sub_22F3B964C()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_22F3B96A8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F741990() + 1) & ~v5;
    do
    {
      sub_22F742170();

      sub_22F740D60();
      v9 = sub_22F7421D0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

void sub_22F3B9870(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F741990() + 1) & ~v5;
    do
    {
      sub_22F742170();

      sub_22F740D60();
      v10 = sub_22F7421D0();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

void sub_22F3B9A20(int64_t a1, uint64_t a2)
{
  v22 = type metadata accessor for Song(0);
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_22F741990() + 1) & ~v8;
    v12 = *(v4 + 72);
    do
    {
      v13 = v12 * v9;
      sub_22F15CAA0(*(a2 + 48) + v12 * v9, v6);
      sub_22F742170();
      sub_22F740D60();
      v14 = sub_22F7421D0();
      sub_22F15CBD8(v6);
      v15 = v14 & v10;
      if (a1 >= v11)
      {
        if (v15 < v11)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v11)
      {
        goto LABEL_10;
      }

      if (a1 >= v15)
      {
LABEL_10:
        if (v12 * a1 < v13 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v13 + v12))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v12 * a1 != v13)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 4 * a1);
        v18 = (v16 + 4 * v9);
        if (a1 != v9 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          a1 = v9;
        }
      }

LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

uint64_t sub_22F3B9C70(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F741990() + 1) & ~v5;
    do
    {
      sub_22F742170();
      sub_22F741760();
      result = sub_22F7421D0();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = v14 + 24 * v3;
        v16 = (v14 + 24 * v6);
        if (v3 != v6 || v15 >= v16 + 24)
        {
          v9 = *v16;
          *(v15 + 16) = *(v16 + 2);
          *v15 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_22F3B9E10(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F741990() + 1) & ~v5;
    do
    {
      sub_22F742170();

      sub_22F740D60();
      v9 = sub_22F7421D0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 4 * v3);
        v16 = (v14 + 4 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

unint64_t sub_22F3B9FC0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F741990() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_22F742160();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(_s29IntermediateTimeExtendedTokenVMa(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_22F3BA184(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F741990() + 1) & ~v5;
    do
    {
      sub_22F742170();

      sub_22F740D60();
      v9 = sub_22F7421D0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

void sub_22F3BA334(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F741990() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_22F741800();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = *(a2 + 48);
      v15 = (v14 + 8 * v3);
      v16 = (v14 + 8 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(sub_22F73F690() - 8) + 72);
      v19 = v18 * v3;
      v20 = v17 + v18 * v3;
      v21 = v18 * v6;
      v22 = v17 + v18 * v6 + v18;
      if (v19 < v21 || v20 >= v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v21)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }
}

unint64_t sub_22F3BA4FC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F741990() + 1) & ~v5;
    while (1)
    {
      sub_22F742170();
      sub_22F741760();
      result = sub_22F7421D0();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v3);
      v12 = (v10 + 8 * v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(sub_22F73F690() - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22F3BA6C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F741990() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      sub_22F742170();
      if (v10 == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = v10;
      }

      MEMORY[0x231901D70](*&v12);
      if (v11 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v11;
      }

      MEMORY[0x231901D70](*&v13);
      result = sub_22F7421D0();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_16;
      }

      if (v3 >= v14)
      {
LABEL_16:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22F3BA884(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F741990() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_22F742160();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
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
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_22F3BAA0C(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_22F741990() + 1) & ~v6;
    while (1)
    {
      sub_22F742170();

      sub_22F740D60();
      v11 = sub_22F7421D0();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      v19 = v16 + v17 * v4;
      v20 = v17 * v7;
      v21 = v16 + v17 * v7 + v17;
      if (v18 < v20 || v19 >= v21)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v20)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

unint64_t sub_22F3BAC00()
{
  result = qword_27DAB3EF8;
  if (!qword_27DAB3EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3EF8);
  }

  return result;
}

unint64_t sub_22F3BAC54()
{
  result = qword_27DAB3F00;
  if (!qword_27DAB3F00)
  {
    type metadata accessor for GraphGeoServiceQueryPerformer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3F00);
  }

  return result;
}

uint64_t sub_22F3BACB4(unint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F10, &unk_22F789ED8) - 8);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = *(v2 + ((*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22F3B921C(a1, a2, v6, v2 + v7, v8);
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_22F3BAD90(void *a1)
{
  result = [a1 _place];
  if (result)
  {
    v2 = result;
    v3 = [result business];

    if (v3)
    {
      sub_22F120634(0, &qword_27DAB3F20, 0x277D0EAC8);
      sub_22F741170();
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    __break(1u);
    __break(1u);
  }

  return result;
}

uint64_t objectdestroyTm_9(uint64_t *a1, uint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + 16) & ~v9;
  v11 = (*(v8 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v8 + 8))(v4 + v10, v7);
  a3(*(v4 + v11));
  a4(*(v4 + v12));

  return MEMORY[0x2821FE8E8](v4, v12 + 8, v9 | 7);
}

void sub_22F3BB3F8(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F50, &unk_22F789EF8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_22F3B7DD0(a1, v1 + v4, v6, v7);
}

unint64_t sub_22F3BB4D0()
{
  result = qword_27DAB3FB8;
  if (!qword_27DAB3FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3FB8);
  }

  return result;
}

id MomentIngestCLIPFeatureVectorExtractor.__allocating_init(with:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___PGMomentIngestCLIPFeatureVectorExtractor_ingestMomentContainer] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MomentIngestCLIPFeatureVectorExtractor.init(with:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___PGMomentIngestCLIPFeatureVectorExtractor_ingestMomentContainer] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MomentIngestCLIPFeatureVectorExtractor();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_22F3BB638()
{
  v2 = v1;
  v3 = *(v0 + OBJC_IVAR___PGMomentIngestCLIPFeatureVectorExtractor_ingestMomentContainer);
  [v3 scenesProcessedRatio];
  if (v4 < 0.9)
  {
    goto LABEL_2;
  }

  v5 = [v3 assetsInExtendedCuration];
  v6 = [v5 fetchedObjects];

  if (!v6)
  {
    sub_22F3BBC8C();
    swift_allocError();
    *v38 = 1;
    swift_willThrow();
    return;
  }

  v7 = sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
  v8 = sub_22F741180();

  if (v8 >> 62)
  {
    goto LABEL_38;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_39:

LABEL_2:
    [objc_allocWithZone(MEMORY[0x277D22C40]) init];
    return;
  }

LABEL_6:
  v55 = v7;
  v56 = v3;
  v58 = v2;
  v59[0] = MEMORY[0x277D84F90];
  sub_22F146E44(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = 0;
  v3 = v59[0];
  v2 = (v8 & 0xC000000000000001);
  v57 = v9;
  do
  {
    if (v2)
    {
      v11 = MEMORY[0x2319016F0](v10, v8);
    }

    else
    {
      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = [v11 uuid];
    if (v13)
    {
      v14 = v13;
      v15 = sub_22F740E20();
      v17 = v16;
    }

    else
    {

      v15 = 0;
      v17 = 0;
    }

    v59[0] = v3;
    v19 = v3[2];
    v18 = v3[3];
    if (v19 >= v18 >> 1)
    {
      sub_22F146E44((v18 > 1), v19 + 1, 1);
      v3 = v59[0];
    }

    ++v10;
    v3[2] = v19 + 1;
    v20 = &v3[2 * v19];
    v20[4] = v15;
    v20[5] = v17;
  }

  while (v57 != v10);
  v21 = [v56 feeder];
  v22 = [v21 allItems];

  if (!v22)
  {
    goto LABEL_68;
  }

  v9 = sub_22F741180();

  v60 = MEMORY[0x277D84F90];
  if (v9 >> 62)
  {
LABEL_41:
    v7 = sub_22F741A00();
    if (!v7)
    {
LABEL_42:

      v39 = v60;
      LODWORD(v40) = v60 < 0 || (v60 & 0x4000000000000000) != 0;
      if (v40 == 1)
      {
        goto LABEL_66;
      }

      for (i = *(v60 + 16); ; i = sub_22F741A00())
      {
        if (i / v57 < 0.9)
        {

          [objc_allocWithZone(MEMORY[0x277D22C40]) init];
          return;
        }

        v57 = i;
        sub_22F120634(0, &qword_27DAB3FD0, 0x277D22C68);
        v43 = [swift_getObjCClassFromMetadata(v42) zerosOfCount_];
        if (v40)
        {
          v44 = sub_22F741A00();
          if (!v44)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v44 = *(v39 + 16);
          if (!v44)
          {
LABEL_62:

            *&v52 = v57;
            [v43 divideByScalar_];
            return;
          }
        }

        v45 = 0;
        v40 = v39 & 0xC000000000000001;
        while (1)
        {
          if (v40)
          {
            v46 = MEMORY[0x2319016F0](v45, v39);
          }

          else
          {
            if (v45 >= *(v39 + 16))
            {
              goto LABEL_65;
            }

            v46 = *(v39 + 8 * v45 + 32);
          }

          v47 = v46;
          v48 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            break;
          }

          v49 = v58;
          sub_22F2E5B50(v46);
          v58 = v49;
          if (v49)
          {

            return;
          }

          v51 = v50;
          [v43 addVector_];

          ++v45;
          if (v48 == v44)
          {
            goto LABEL_62;
          }
        }

        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        ;
      }
    }

    goto LABEL_20;
  }

  v7 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_42;
  }

LABEL_20:
  v8 = 0;
  v55 = v9 & 0xFFFFFFFFFFFFFF8;
  v56 = (v9 & 0xC000000000000001);
  v54 = v9;
  while (1)
  {
    if (v56)
    {
      v23 = MEMORY[0x2319016F0](v8, v9);
    }

    else
    {
      if (v8 >= *(v55 + 16))
      {
        goto LABEL_37;
      }

      v23 = *(v9 + 8 * v8 + 32);
    }

    v24 = v23;
    v25 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      v9 = sub_22F741A00();
      if (!v9)
      {
        goto LABEL_39;
      }

      goto LABEL_6;
    }

    v26 = [v23 uuid];
    if (v26)
    {
      v27 = v26;
      v28 = sub_22F740E20();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v2 = &v54;
    v59[0] = v28;
    v59[1] = v30;
    MEMORY[0x28223BE20](v26);
    v53[2] = v59;
    v31 = v58;
    v32 = sub_22F1C1298(sub_22F3BBFF4, v53, v3);
    v58 = v31;

    if ((v32 & 1) == 0)
    {
      goto LABEL_21;
    }

    v33 = [v24 sceneAnalysisProperties];
    if (!v33)
    {
      break;
    }

    v34 = v33;
    v35 = [v33 sceneAnalysisVersion];

    v36 = objc_opt_self();
    v37 = [v36 baseSceneAnalysisVersionWithSceneAnalysisVersion_];
    if (v37 == [v36 latestVersion])
    {
      sub_22F741BA0();
      sub_22F741BE0();
      sub_22F741BF0();
      sub_22F741BB0();
      goto LABEL_22;
    }

LABEL_21:

LABEL_22:
    v9 = v54;
    ++v8;
    if (v25 == v7)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
}

unint64_t sub_22F3BBC8C()
{
  result = qword_27DAB3FC8;
  if (!qword_27DAB3FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3FC8);
  }

  return result;
}

id MomentIngestCLIPFeatureVectorExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MomentIngestCLIPFeatureVectorExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MomentIngestCLIPFeatureVectorExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_22F3BBF80(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_22F742040() & 1;
    }
  }

  return result;
}

uint64_t _s11PhotosGraph38MomentIngestCLIPFeatureVectorExtractorC6encodeySSSo07MAFloatF0CFZ_0(void *a1)
{
  if (![a1 count])
  {
    return 0;
  }

  v2 = [a1 wrapper];
  v3 = [v2 array];

  v4 = sub_22F741180();
  v6 = sub_22F15B898(v4 + 32, *(v4 + 16), v5);
  v8 = v7;

  v9 = sub_22F73F500();
  sub_22F133BF0(v6, v8);
  return v9;
}

void sub_22F3BC0F0(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (!sub_22F740F10())
  {
    [objc_allocWithZone(MEMORY[0x277D22C40]) init];
    return;
  }

  v3 = sub_22F73F490();
  if (v4 >> 60 == 15)
  {
    sub_22F3BBC8C();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
    return;
  }

  v6 = v3;
  v7 = v4;
  v8 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(v4);
      v10 = BYTE6(v4) >> 2;
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  if (v8 != 2)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_19;
  }

  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  v13 = __OFSUB__(v11, v12);
  v9 = v11 - v12;
  if (v13)
  {
    __break(1u);
LABEL_12:
    LODWORD(v9) = HIDWORD(v3) - v3;
    if (__OFSUB__(HIDWORD(v3), v3))
    {
LABEL_29:
      __break(1u);
      return;
    }

    v9 = v9;
  }

  v14 = v9 + 3;
  if (v9 >= 0)
  {
    v14 = v9;
  }

  if (v9 < -3)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v10 = v14 >> 2;
LABEL_19:
  if (v9 <= 3)
  {
    v10 = *(MEMORY[0x277D84F90] + 16);
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = sub_22F741200();
    *(v15 + 16) = v10;
    bzero((v15 + 32), 4 * v10);
  }

  if (v10 >> 61)
  {
    goto LABEL_28;
  }

  sub_22F15C418();
  sub_22F73EFF0();
  v16 = *(v15 + 16);
  if (v16)
  {
    sub_22F741BD0();
    v17 = 32;
    do
    {
      v18 = *(v15 + v17);
      v19 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v20) = v18;
      [v19 initWithFloat_];
      sub_22F741BA0();
      sub_22F741BE0();
      sub_22F741BF0();
      sub_22F741BB0();
      v17 += 4;
      --v16;
    }

    while (v16);
  }

  v21 = objc_allocWithZone(MEMORY[0x277D22C40]);
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v22 = sub_22F741160();

  [v21 initWithArray_];

  sub_22F1746FC(v6, v7);
}

unint64_t sub_22F3BC44C()
{
  result = qword_27DAB3FD8;
  if (!qword_27DAB3FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3FD8);
  }

  return result;
}

id sub_22F3BC4A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  sub_22F146E64(0, v1, 0);
  v2 = v29;
  v4 = a1 + 64;
  result = sub_22F741980();
  v6 = result;
  v7 = 0;
  v8 = *(a1 + 36);
  v25 = v1;
  v26 = v8;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v27 = v7;
    v11 = (*(a1 + 48) + 16 * v6);
    v12 = v11[1];
    v28 = *v11;
    v13 = *(*(a1 + 56) + 8 * v6);
    v14 = *(v29 + 16);
    v15 = *(v29 + 24);

    result = v13;
    if (v14 >= v15 >> 1)
    {
      v24 = result;
      sub_22F146E64((v15 > 1), v14 + 1, 1);
      result = v24;
    }

    *(v29 + 16) = v14 + 1;
    v16 = (v29 + 24 * v14);
    v16[4] = result;
    v16[5] = v28;
    v16[6] = v12;
    v9 = 1 << *(a1 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v17 = *(a1 + 64 + 8 * v10);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v26;
    if (v26 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_22F107D18(v6, v26, 0);
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_22F107D18(v6, v26, 0);
    }

LABEL_4:
    v7 = v27 + 1;
    v6 = v9;
    if (v27 + 1 == v25)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t PersonalTraitMomentGraphDataSource.holidayPersonalTraits(assetUUIDs:progressReporter:)(uint64_t a1, uint64_t a2)
{
  v77 = a1;
  v4 = type metadata accessor for PersonalTraitMomentGraphDataSource(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_22F7405F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741690();
  if (v2)
  {
    return v8;
  }

  v74 = v5;
  v75 = v6;
  v73 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a2;
  sub_22F7407E0();
  v11 = sub_22F740590();
  (*(v8 + 8))(v10, v7);
  sub_22F741690();
  v13 = sub_22F161C68(v11);

  if (*(v13 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1230, &qword_22F770AE0);
    v14 = sub_22F741DF0();
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  aBlock[0] = v14;
  sub_22F3BDA48(v13, 1, aBlock);

  v15 = aBlock[0];
  v16 = objc_opt_self();

  v72 = v15;
  sub_22F1534D0();
  v17 = sub_22F741410();

  v18 = *(v78 + *(v4 + 24));
  v19 = [v16 momentNodeAsCollectionByMomentUUIDForMomentUUIDs:v17 inGraph:?];

  sub_22F1ADB1C();
  v20 = sub_22F740CA0();

  v21 = sub_22F3BC4A0(v20);

  if (v21[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB08C0, &qword_22F770AD8);
    v22 = sub_22F741DF0();
  }

  else
  {
    v22 = MEMORY[0x277D84F98];
  }

  aBlock[0] = v22;
  sub_22F3BDCA8(v21, 1, aBlock);
  v77 = 0;

  v23 = aBlock[0];
  v24 = objc_allocWithZone(PGGraphMomentNodeCollection);

  v25 = [v24 initWithGraph_];
  v26 = v23 + 64;
  v27 = 1 << *(v23 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v23 + 64);
  v30 = (v27 + 63) >> 6;
  v31 = v23;

  v32 = v25;
  v8 = 0;
  v33 = v32;
  isEscapingClosureAtFileLocation = v76;
  if (v29)
  {
    while (1)
    {
      v35 = v8;
LABEL_18:
      v36 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v37 = [v32 collectionByFormingUnionWith_];

      v32 = v37;
      if (!v29)
      {
        goto LABEL_14;
      }
    }
  }

  while (1)
  {
LABEL_14:
    v35 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v35 >= v30)
    {
      break;
    }

    v29 = *(v26 + 8 * v35);
    ++v8;
    if (v29)
    {
      v8 = v35;
      goto LABEL_18;
    }
  }

  v38 = v31;

  v39 = v77;
  sub_22F741690();
  v77 = v39;
  if (v39)
  {

    return v8;
  }

  v80 = MEMORY[0x277D84F90];
  v40 = objc_opt_self();
  v41 = v32;
  v42 = [v40 celebratedHolidayOfMoment];
  v43 = [objc_msgSend(v41 graph)];
  swift_unknownObjectRelease();
  v44 = [v43 concreteGraph];

  if (!v44)
  {
    goto LABEL_31;
  }

  v45 = [v41 elementIdentifiers];
  v46 = [v44 adjacencyWithSources:v45 relation:v42];

  swift_unknownObjectRetain();
  v47 = [v46 transposed];
  swift_unknownObjectRelease();

  v48 = v77;
  sub_22F741690();
  v77 = v48;
  v8 = v78;
  v50 = v74;
  v49 = v75;
  if (v48)
  {

    swift_unknownObjectRelease();

    return v8;
  }

  v69 = v41;
  v51 = objc_allocWithZone(PGGraphHolidayNodeCollection);
  v52 = [v47 sources];
  v70 = v47;
  v53 = v52;
  v71 = [v51 initWithGraph:v44 elementIdentifiers:v52];

  v54 = v73;
  sub_22F3BDF10(v8, v73);
  v55 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v56 = v38;
  v57 = v54;
  v58 = (v49 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 23) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  sub_22F3BDF74(v57, v61 + v55);
  v62 = (v61 + v58);
  v63 = v70;
  *v62 = v70;
  v62[1] = v44;
  *(v61 + v59) = v56;
  *(v61 + v60) = v72;
  *(v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v80;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_22F3BDFD8;
  *(v64 + 24) = v61;
  aBlock[4] = sub_22F15A678;
  aBlock[5] = v64;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F2136B4;
  aBlock[3] = &block_descriptor_54;
  v65 = _Block_copy(aBlock);
  v66 = v63;
  swift_unknownObjectRetain();

  v67 = v71;
  [v71 enumerateHolidayNamesUsingBlock_];

  _Block_release(v65);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_30:
    __break(1u);

    __break(1u);
LABEL_31:
    result = sub_22F741D40();
    __break(1u);
    return result;
  }

  v68 = v77;
  sub_22F7416A0();
  if (v68)
  {
    swift_unknownObjectRelease();

    v8 = v80;
  }

  else
  {

    swift_unknownObjectRelease();
    v8 = v80;
  }

  return v8;
}

void sub_22F3BD01C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char *a8, uint64_t a9, uint64_t *a10)
{
  v72 = a9;
  v73 = a8;
  v16 = sub_22F73FFB0();
  v67 = *(v16 - 8);
  v68 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = (v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_22F73FFA0();
  v65 = *(v19 - 8);
  v66 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22F73FFC0();
  v70 = *(v22 - 8);
  v71 = v22;
  MEMORY[0x28223BE20](v22);
  v69 = v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  if (sub_22F740F10() < 1)
  {
    if (qword_2810AC5A0 != -1)
    {
      swift_once();
    }

    v55 = sub_22F740B90();
    __swift_project_value_buffer(v55, qword_2810B5038);
    v75 = sub_22F740B70();
    v56 = sub_22F7415E0();
    if (os_log_type_enabled(v75, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      aBlock[0] = v58;
      *v57 = 136315138;
      v59 = sub_22F741750();
      v61 = sub_22F145F20(v59, v60, aBlock);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_22F0FC000, v75, v56, "Holiday node with identifier %s unexpectedly has no name value", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x2319033A0](v58, -1, -1);
      MEMORY[0x2319033A0](v57, -1, -1);
      goto LABEL_17;
    }
  }

  else
  {
    v64 = a10;
    v25 = *(a5 + *(type metadata accessor for PersonalTraitMomentGraphDataSource(0) + 24));
    v26 = objc_allocWithZone(MEMORY[0x277D22BB0]);
    v27 = v25;
    v28 = [v26 initWithElementIdentifier_];
    v29 = [objc_allocWithZone(PGGraphHolidayNodeCollection) initWithGraph:v27 elementIdentifiers:v28];

    v74 = v29;
    v30 = [v29 elementIdentifiers];
    v31 = [a6 targetsForSources_];

    v75 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph:a7 elementIdentifiers:v31];
    v32 = v24;
    if ([v75 count]>= 1)
    {
      v33 = objc_opt_self();
      v34 = sub_22F740DF0();
      v35 = [v33 localizedNameForName_];

      if (v35)
      {
        v63[1] = sub_22F740E20();
        v63[0] = v36;

        v77 = MEMORY[0x277D84F90];
        v37 = swift_allocObject();
        v38 = v72;
        v39 = v73;
        v37[2] = v73;
        v37[3] = v38;
        v37[4] = &v77;
        v40 = swift_allocObject();
        *(v40 + 16) = sub_22F3BE0DC;
        *(v40 + 24) = v37;
        aBlock[4] = sub_22F20AE34;
        aBlock[5] = v40;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_22F107F34;
        aBlock[3] = &block_descriptor_12_4;
        v41 = _Block_copy(aBlock);

        [v75 enumerateIdentifiersAsCollectionsWithBlock:v41];
        _Block_release(v41);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        else
        {
          (*(v65 + 104))(v21, *MEMORY[0x277D3C018], v66);
          *v18 = v32;
          v18[1] = a3;
          (*(v67 + 104))(v18, *MEMORY[0x277D3C028], v68);

          v39 = v69;
          sub_22F73FF80();
          v41 = v64;
          a3 = *v64;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v41 = a3;
          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_6:
            v44 = v74;
            v46 = v70;
            v45 = v71;
            v48 = a3[2];
            v47 = a3[3];
            if (v48 >= v47 >> 1)
            {
              *v41 = sub_22F1402C0((v47 > 1), v48 + 1, 1, a3);
            }

            v49 = *v41;
            *(v49 + 16) = v48 + 1;
            (*(v46 + 32))(v49 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v48, v39, v45);

            return;
          }
        }

        a3 = sub_22F1402C0(0, a3[2] + 1, 1, a3);
        *v41 = a3;
        goto LABEL_6;
      }
    }

    if (qword_2810AC5A0 != -1)
    {
      swift_once();
    }

    v50 = sub_22F740B90();
    __swift_project_value_buffer(v50, qword_2810B5038);

    v51 = sub_22F740B70();
    v52 = sub_22F7415E0();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      aBlock[0] = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_22F145F20(v24, a3, aBlock);
      _os_log_impl(&dword_22F0FC000, v51, v52, "Holiday unexpectedly has no localizedName for holiday %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x2319033A0](v54, -1, -1);
      MEMORY[0x2319033A0](v53, -1, -1);

LABEL_17:
      return;
    }
  }

  v62 = v75;
}

void sub_22F3BD868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a4 + 16) && (v7 = sub_22F1236C4(a2), (v8 & 1) != 0) && *(a5 + 16) && (v9 = (*(a4 + 56) + 16 * v7), v10 = *v9, v11 = v9[1], , sub_22F1229E8(v10, v11), v13 = v12, , (v13 & 1) != 0))
  {

    sub_22F144A14(v14);
  }

  else
  {
    if (qword_2810AC5A0 != -1)
    {
      swift_once();
    }

    v15 = sub_22F740B90();
    __swift_project_value_buffer(v15, qword_2810B5038);
    oslog = sub_22F740B70();
    v16 = sub_22F7415E0();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      v19 = sub_22F741750();
      v21 = sub_22F145F20(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_22F0FC000, oslog, v16, "Unexpectedly found unrecognized moment node with identifier %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x2319033A0](v18, -1, -1);
      MEMORY[0x2319033A0](v17, -1, -1);
    }
  }
}

void sub_22F3BDA48(uint64_t a1, char a2, void *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v4 = a3;
  v6 = (a1 + 48);
  v34 = a3;
  while (1)
  {
    v9 = *(v6 - 2);
    v8 = *(v6 - 1);
    v10 = *v6;
    v11 = *v4;

    v12 = sub_22F1229E8(v9, v8);
    v14 = v11[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v11[3] < v17)
    {
      sub_22F127C90(v17, a2 & 1);
      v12 = sub_22F1229E8(v9, v8);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_22;
      }

LABEL_11:
      v20 = *v4;
      if (v18)
      {
        goto LABEL_12;
      }

      goto LABEL_16;
    }

    if (a2)
    {
      goto LABEL_11;
    }

    v27 = v4;
    v28 = v12;
    sub_22F135844();
    v12 = v28;
    v20 = *v27;
    if (v18)
    {
LABEL_12:
      v32 = v12;

      v22 = sub_22F1515F8(v21);

      v24 = sub_22F151690(v23, v22);

      v25 = *(v24 + 16);
      if (v25)
      {
        v7 = sub_22F10B348(*(v24 + 16), 0);
        v26 = sub_22F11A438(&v33, v7 + 4, v25, v24);
        sub_22F1534EC(v33);
        if (v26 != v25)
        {
          goto LABEL_21;
        }
      }

      else
      {

        v7 = MEMORY[0x277D84F90];
      }

      *(v20[7] + 8 * v32) = v7;

      goto LABEL_5;
    }

LABEL_16:
    v20[(v12 >> 6) + 8] |= 1 << v12;
    v29 = (v20[6] + 16 * v12);
    *v29 = v9;
    v29[1] = v8;
    *(v20[7] + 8 * v12) = v10;
    v30 = v20[2];
    v16 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v16)
    {
      goto LABEL_20;
    }

    v20[2] = v31;
LABEL_5:
    v6 += 3;
    a2 = 1;
    --v3;
    v4 = v34;
    if (!v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_22F7420C0();
  __break(1u);
}

void sub_22F3BDCA8(uint64_t a1, char a2, void *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  LOBYTE(v5) = a2;
  v6 = a1;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *a3;
  v10 = *(a1 + 32);

  v11 = sub_22F1236C4(v10);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v17) = v12;
  if (v9[3] < v16)
  {
    sub_22F12E58C(v16, v5 & 1);
    v11 = sub_22F1236C4(v10);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_22F1ADB1C();
    v11 = sub_22F7420C0();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v19 = *a3;
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19[(v11 >> 6) + 8] |= 1 << v11;
    *(v19[6] + 8 * v11) = v10;
    v23 = (v19[7] + 16 * v11);
    *v23 = v7;
    v23[1] = v8;
    v24 = v19[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v15)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v19[2] = v25;
    v17 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v22 = v11;
  sub_22F139220();
  v11 = v22;
  v19 = *a3;
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = v11;

  v21 = (v19[7] + 16 * v20);
  *v21 = v7;
  v21[1] = v8;

  v17 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v28 = *a3;
      v8 = *(v5 - 2);

      v29 = sub_22F1236C4(v8);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v10 = v30;
      if (v28[3] < v33)
      {
        sub_22F12E58C(v33, 1);
        v29 = sub_22F1236C4(v8);
        if ((v10 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      v35 = *a3;
      if (v10)
      {
        v26 = v29;

        v27 = (v35[7] + 16 * v26);
        *v27 = v7;
        v27[1] = v6;
      }

      else
      {
        v35[(v29 >> 6) + 8] |= 1 << v29;
        *(v35[6] + 8 * v29) = v8;
        v36 = (v35[7] + 16 * v29);
        *v36 = v7;
        v36[1] = v6;
        v37 = v35[2];
        v15 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v15)
        {
          goto LABEL_24;
        }

        v35[2] = v38;
      }

      v5 += 3;
      if (!--v17)
      {
        return;
      }
    }
  }
}

uint64_t sub_22F3BDF10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTraitMomentGraphDataSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F3BDF74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTraitMomentGraphDataSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22F3BDFD8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(type metadata accessor for PersonalTraitMomentGraphDataSource(0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_22F3BD01C(a1, a2, a3, a4, v4 + v10, *(v4 + v11), *(v4 + v11 + 8), *(v4 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t MaestroSongs.init(from:schemaVersion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v17 = a4;
  v8 = sub_22F73F470();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 != 0x2D32312D30323032 || a3 != 0xEA00000000003132) && (sub_22F742040() & 1) == 0 && (a2 != 0x2D31302D31323032 || a3 != 0xEA00000000003331) && (sub_22F742040() & 1) == 0 && (a2 != 0x2D32302D31323032 || a3 != 0xEA00000000003831) && (sub_22F742040() & 1) == 0 && (a2 != 0x2D33302D31323032 || a3 != 0xEA00000000003632) && (sub_22F742040() & 1) == 0)
  {
    sub_22F3BE3A0();
    swift_allocError();
    *v15 = a2;
    *(v15 + 8) = a3;
    *(v15 + 16) = 0;
    swift_willThrow();
    return (*(v9 + 8))(a1, v8);
  }

  (*(v9 + 16))(v11, a1, v8);
  type metadata accessor for MaestroSongsOnDisk();
  swift_allocObject();
  v12 = sub_22F3BE924(v11, a2, a3);
  if (v4)
  {
    return (*(v9 + 8))(a1, v8);
  }

  v14 = v12;
  (*(v9 + 8))(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3FF0, &qword_22F78A0F0);
  result = swift_allocObject();
  *(result + 16) = v14;
  *v17 = result;
  return result;
}

unint64_t sub_22F3BE3A0()
{
  result = qword_27DAB3FE8;
  if (!qword_27DAB3FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3FE8);
  }

  return result;
}

uint64_t sub_22F3BE43C()
{
  v0 = sub_22F3D9AEC(&unk_2843DE7A0);
  result = swift_arrayDestroy();
  qword_27DAB3FE0 = v0;
  return result;
}

double static MaestroSongs.supportedSchemaVersions.getter()
{
  if (qword_27DAAFE18 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t MaestroSongs.init(songs:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for MaestroSongsInMemory();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3FF8, &qword_22F78A0F8);
  result = swift_allocObject();
  *(result + 16) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_22F3BE554@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_22F741C40();

  *a2 = v3;
  return result;
}

void *sub_22F3BE59C()
{
  v1 = sub_22F3C319C(*v0);

  return v1;
}

void *sub_22F3BE5DC(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_13:
    *v4 = v3;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 1;
    while (1)
    {
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v8 >= *(v9 + 16))
      {
        *(v3 + 24) = 0;
        v5 = v7 - 1;
        goto LABEL_13;
      }

      if (v8 < 0)
      {
        break;
      }

      v10 = *(type metadata accessor for Song(0) - 8);
      v11 = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v12 = *(v10 + 72);
      *(v3 + 24) = v8 + 1;
      result = sub_22F15CAA0(v11 + v12 * v8, v6);
      if (v5 == v7)
      {
        goto LABEL_13;
      }

      v6 += v12;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22F3BE6E8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1250, &qword_22F781A10);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for Song(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || !a3)
  {
LABEL_10:
    *a1 = v3;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v16 = a1;
    sub_22F3BECB8(v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
LABEL_8:
      sub_22F120ADC(v9, &qword_27DAB1250, &qword_22F781A10);
    }

    else
    {
      v14 = 0;
      while (1)
      {
        sub_22F15CB04(v9, v13);
        sub_22F15CB04(v13, a2);
        if (a3 - 1 == v14)
        {
          break;
        }

        a2 += *(v11 + 72);
        sub_22F3BECB8(v9);
        ++v14;
        if ((*(v11 + 48))(v9, 1, v10) == 1)
        {
          goto LABEL_8;
        }
      }
    }

    a1 = v16;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_22F3BE8D8()
{
  v0 = sub_22F3D9AEC(&unk_2843D9A58);
  result = swift_arrayDestroy();
  qword_2810AB1C8 = v0;
  return result;
}

void *sub_22F3BE924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v4[2] = 0;
  if (qword_2810AB1C0 != -1)
  {
    swift_once();
  }

  if ((sub_22F15E910(a2, a3, qword_2810AB1C8) & 1) == 0)
  {
    sub_22F3BE3A0();
    swift_allocError();
    *v12 = a2;
    *(v12 + 8) = a3;
    *(v12 + 16) = 0;
    swift_willThrow();
    v13 = sub_22F73F470();
    (*(*(v13 - 8) + 8))(a1, v13);
    swift_deallocPartialClassInstance();
    return v4;
  }

  v4[5] = a2;
  v4[6] = a3;
  swift_beginAccess();
  v4[2] = 0;
  v4[3] = 0;

  sub_22F73F450();
  v8 = sub_22F740EC0();

  v9 = fopen((v8 + 32), "r");

  if (v9)
  {
    v11 = sub_22F73F470();
    (*(*(v11 - 8) + 8))(a1, v11);

    v4[4] = v9;
    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_22F3BEB40()
{
  result = qword_27DAB4000;
  if (!qword_27DAB4000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB4008, &qword_22F78A100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB4000);
  }

  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_22F3BEC5C()
{
  fclose(*(v0 + 32));
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    free(v1);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_22F3BECB8@<X0>(uint64_t a1@<X8>)
{
  v26[7] = *MEMORY[0x277D85DE8];
  v3 = sub_22F740E80();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 32);
  swift_beginAccess();
  swift_beginAccess();
  v8 = getline((v1 + 16), (v1 + 24), v7);
  swift_endAccess();
  swift_endAccess();
  if (v8 < 1)
  {
    fseek(*(v1 + 32), 0, 0);
LABEL_15:
    v24 = 1;
    goto LABEL_16;
  }

  if (!*(v1 + 16) || (sub_22F740F70(), sub_22F740E70(), v9 = sub_22F740E30(), v11 = v10, , (*(v4 + 8))(v6, v3), v11 >> 60 == 15))
  {
LABEL_10:
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v18 = sub_22F740B90();
    __swift_project_value_buffer(v18, qword_2810B4D90);
    v19 = sub_22F740B70();
    v20 = sub_22F7415E0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22F0FC000, v19, v20, "[MemoriesMusic] (MaestroSongs) Failed to parse song from Maestro song.", v21, 2u);
      MEMORY[0x2319033A0](v21, -1, -1);
    }

    goto LABEL_15;
  }

  v12 = objc_opt_self();
  v13 = sub_22F73F4F0();
  v26[0] = 0;
  v14 = [v12 JSONObjectWithData:v13 options:4 error:v26];

  if (!v14)
  {
    v16 = v26[0];
    v17 = sub_22F73F370();

    swift_willThrow();
    sub_22F1746FC(v9, v11);

    goto LABEL_10;
  }

  v15 = v26[0];
  sub_22F741920();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_22F1746FC(v9, v11);
    goto LABEL_10;
  }

  sub_22F3BF210(v26[4], *(v1 + 40), *(v1 + 48), a1);
  sub_22F1746FC(v9, v11);

  v24 = 0;
LABEL_16:
  v22 = type metadata accessor for Song(0);
  return (*(*(v22 - 8) + 56))(a1, v24, 1, v22);
}

double sub_22F3BF210@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2 == 0x2D32312D30323032 && a3 == 0xEA00000000003132;
  if (v4 || (v7 = a1, v8 = a4, v9 = sub_22F742040(), a4 = v8, v10 = v9, a1 = v7, (v10 & 1) != 0) || a2 == 0x2D31302D31323032 && a3 == 0xEA00000000003331 || (v11 = sub_22F742040(), a4 = v8, v12 = v11, a1 = v7, (v12 & 1) != 0))
  {
    sub_22F3C0D94(a1, a4);
  }

  else if (a2 == 0x2D32302D31323032 && a3 == 0xEA00000000003831 || (v14 = sub_22F742040(), a4 = v8, v15 = v14, a1 = v7, (v15 & 1) != 0))
  {
    sub_22F3BF748(a1, a4);
  }

  else if (a2 == 0x2D33302D31323032 && a3 == 0xEA00000000003632 || (v16 = sub_22F742040(), a4 = v8, v17 = v16, a1 = v7, (v17 & 1) != 0))
  {
    sub_22F3C02B0(a1, a4);
  }

  else
  {
    sub_22F3BE3A0();
    swift_allocError();
    *v18 = a2;
    *(v18 + 8) = a3;
    *(v18 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

void *sub_22F3BF3DC()
{
  v0 = sub_22F3C34E0();

  return v0;
}

void sub_22F3BF45C(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v3 >= *(v4 + 16))
  {
    *(v1 + 24) = 0;
    v7 = type metadata accessor for Song(0);
    v8 = *(*(v7 - 8) + 56);

    v8(a1, 1, 1, v7);
  }

  else if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = type metadata accessor for Song(0);
    v6 = *(v5 - 8);
    sub_22F15CAA0(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3, a1);
    (*(v6 + 56))(a1, 0, 1, v5);
    *(v1 + 24) = v3 + 1;
  }
}

uint64_t sub_22F3BF59C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22F3BF5F0()
{
  sub_22F3C3800(*v0);
  v2 = v1;

  return v2;
}

uint64_t sub_22F3BF700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22F3BF748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v89 - v8;
  if (!*(a1 + 16))
  {
    goto LABEL_22;
  }

  v10 = sub_22F1229E8(0x44496D616461, 0xE600000000000000);
  if ((v11 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v10, v109);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v12 = v114;
  if (!*(a1 + 16) || (v13 = v113, v14 = sub_22F1229E8(0x656C746974, 0xE500000000000000), (v15 & 1) == 0) || (sub_22F13A100(*(a1 + 56) + 32 * v14, v109), (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:

LABEL_22:
    *&v109[0] = 0;
    *(&v109[0] + 1) = 0xE000000000000000;
    sub_22F741B00();
    MEMORY[0x231900B10](0xD000000000000045, 0x800000022F79DCA0);
    v24 = sub_22F740CB0();
    MEMORY[0x231900B10](v24);

    v25 = v109[0];
    sub_22F3BE3A0();
    swift_allocError();
    *v26 = v25;
    *(v26 + 16) = 1;
    return swift_willThrow();
  }

  if (!*(a1 + 16))
  {
    goto LABEL_20;
  }

  v107 = v113;
  v108 = v114;
  v16 = sub_22F1229E8(0x747369747261, 0xE600000000000000);
  if ((v17 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v16, v109);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v106 = v114;
  if (!*(a1 + 16) || (v105 = v113, v18 = sub_22F1229E8(0x6D75626C61, 0xE500000000000000), (v19 & 1) == 0))
  {

    goto LABEL_21;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v18, v109);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_20:

    goto LABEL_21;
  }

  v102 = v114;
  v103 = v113;
  if (!*(a1 + 16))
  {
    v101 = 0;
LABEL_34:
    v104 = 2;
LABEL_35:
    v100 = 1;
    v34 = 0.0;
    goto LABEL_36;
  }

  v20 = sub_22F1229E8(0x6D614E65726E6567, 0xEA00000000007365);
  if (v21)
  {
    sub_22F13A100(*(a1 + 56) + 32 * v20, v109);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    v22 = swift_dynamicCast();
    v23 = v113;
    if (!v22)
    {
      v23 = 0;
    }

    v101 = v23;
  }

  else
  {
    v101 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_34;
  }

  v28 = sub_22F1229E8(0x63696C7078457369, 0xEA00000000007469);
  v104 = 2;
  if (v29)
  {
    sub_22F13A100(*(a1 + 56) + 32 * v28, v109);
    v30 = swift_dynamicCast();
    v31 = v113;
    if (!v30)
    {
      v31 = 2;
    }

    v104 = v31;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_35;
  }

  v32 = sub_22F1229E8(0xD000000000000010, 0x800000022F78FFF0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_35;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v32, v109);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_35;
  }

  v100 = 0;
  v34 = (*&v113 * 0.001);
LABEL_36:
  v35 = sub_22F73F7C0();
  v36 = *(v35 - 8);
  v98 = *(v36 + 56);
  v99 = v35;
  v97 = (v36 + 56);
  v98(v9, 1, 1);
  if (*(a1 + 16))
  {
    v37 = sub_22F1229E8(0x636F4C6F69647561, 0xEB00000000656C61);
    if (v38)
    {
      sub_22F13A100(*(a1 + 56) + 32 * v37, v109);
      if (swift_dynamicCast())
      {
        sub_22F73F6E0();
        sub_22F120ADC(v9, &qword_27DAB0C90, &unk_22F785B70);
        (v98)(v6, 0, 1, v99);
        sub_22F1207AC(v6, v9, &qword_27DAB0C90, &unk_22F785B70);
      }
    }
  }

  if (!*(a1 + 16))
  {
    v98 = 0;
    v99 = 0;
LABEL_60:
    v96 = 0;
    v97 = 0;
    goto LABEL_61;
  }

  v39 = sub_22F1229E8(0x556B726F77747261, 0xEA00000000004C52);
  if (v40)
  {
    sub_22F13A100(*(a1 + 56) + 32 * v39, v109);
    v41 = swift_dynamicCast();
    if (v41)
    {
      v42 = v113;
    }

    else
    {
      v42 = 0;
    }

    if (v41)
    {
      v43 = v114;
    }

    else
    {
      v43 = 0;
    }

    v98 = v43;
    v99 = v42;
  }

  else
  {
    v98 = 0;
    v99 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_60;
  }

  v44 = sub_22F1229E8(0xD000000000000010, 0x800000022F79D360);
  if (v45)
  {
    sub_22F13A100(*(a1 + 56) + 32 * v44, v109);
    v46 = swift_dynamicCast();
    if (v46)
    {
      v47 = v113;
    }

    else
    {
      v47 = 0;
    }

    if (v46)
    {
      v48 = v114;
    }

    else
    {
      v48 = 0;
    }

    v96 = v48;
    v97 = v47;
  }

  else
  {
    v96 = 0;
    v97 = 0;
  }

  if (*(a1 + 16))
  {
    v71 = sub_22F1229E8(0x616E416F69647561, 0xED0000736973796CLL);
    if (v72)
    {
      sub_22F13A100(*(a1 + 56) + 32 * v71, v109);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4018, &qword_22F78A418);
      if (swift_dynamicCast())
      {
        v73 = v113;
        if (v113[2])
        {
          v74 = sub_22F1229E8(0x796772656E65, 0xE600000000000000);
          if (v75)
          {
            v76 = *(v73[7] + 8 * v74);
            if (*(v76 + 16))
            {

              v77 = sub_22F1229E8(1852399981, 0xE400000000000000);
              if (v78)
              {
                sub_22F13A100(*(v76 + 56) + 32 * v77, v109);

                v79 = swift_dynamicCast();
                v80 = v113;
                if (!v79)
                {
                  v80 = 0;
                }

                v95 = v80;
                v81 = v79 ^ 1;
                goto LABEL_81;
              }
            }
          }
        }

        v95 = 0;
        v81 = 1;
LABEL_81:
        v94 = v81;
        if (v73[2] && (v82 = sub_22F1229E8(0x65636E656C6176, 0xE700000000000000), (v83 & 1) != 0) && (v84 = *(v73[7] + 8 * v82), , , *(v84 + 16)) && (v85 = sub_22F1229E8(1852399981, 0xE400000000000000), (v86 & 1) != 0))
        {
          sub_22F13A100(*(v84 + 56) + 32 * v85, v109);

          v87 = swift_dynamicCast();
          v88 = v113;
          if (!v87)
          {
            v88 = 0;
          }

          v93 = v88;
          v49 = v87 ^ 1;
          v50 = &v115;
        }

        else
        {

          v93 = 0;
          v49 = 1;
          v50 = &v115;
        }

        goto LABEL_62;
      }
    }
  }

LABEL_61:
  v93 = 0;
  v95 = 0;
  v49 = 1;
  v92 = 1;
  v50 = &v116;
LABEL_62:
  *(v50 - 64) = v49;
  if (*(a1 + 16) && (v51 = sub_22F1229E8(0x6E414C4D78656C66, 0xEE00736973796C61), (v52 & 1) != 0) && (sub_22F13A100(*(a1 + 56) + 32 * v51, v109), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0), (swift_dynamicCast() & 1) != 0))
  {
    sub_22F3C1858(v113, v109);

    v89 = v109[1];
    v90 = v109[0];
    v91 = v110;
    v53 = v111 | (v112 << 32);
  }

  else
  {
    v91 = 0;
    v53 = 0;
    v90 = xmmword_22F781B40;
    v89 = 0u;
  }

  v54 = type metadata accessor for Song(0);
  v55 = v54[16];
  v56 = sub_22F73F690();
  (*(*(v56 - 8) + 56))(a2 + v55, 1, 1, v56);
  *a2 = v13;
  *(a2 + 8) = v12;
  v57 = v108;
  *(a2 + 16) = v107;
  *(a2 + 24) = v57;
  v58 = v106;
  *(a2 + 32) = v105;
  *(a2 + 40) = v58;
  v59 = v102;
  *(a2 + 48) = v103;
  *(a2 + 56) = v59;
  *(a2 + 64) = v101;
  *(a2 + 72) = v104;
  *(a2 + 80) = v34;
  *(a2 + 88) = v100;
  *(a2 + 92) = 0;
  *(a2 + 96) = 1;
  v60 = v98;
  *(a2 + 104) = v99;
  *(a2 + 112) = v60;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v61 = v96;
  *(a2 + 136) = v97;
  *(a2 + 144) = v61;
  result = sub_22F1207AC(v9, a2 + v54[15], &qword_27DAB0C90, &unk_22F785B70);
  v62 = a2 + v54[26];
  v63 = v89;
  *v62 = v90;
  *(v62 + 16) = v63;
  *(v62 + 32) = v91;
  *(v62 + 44) = BYTE4(v53);
  *(v62 + 40) = v53;
  *(a2 + v54[17]) = 0;
  v64 = a2 + v54[18];
  *v64 = v95;
  *(v64 + 4) = v94;
  v65 = a2 + v54[19];
  *v65 = v93;
  *(v65 + 4) = v92;
  v66 = a2 + v54[20];
  *v66 = 0;
  *(v66 + 4) = 1;
  v67 = a2 + v54[21];
  *v67 = 0;
  *(v67 + 4) = 1;
  v68 = a2 + v54[22];
  *v68 = 0;
  *(v68 + 4) = 1;
  v69 = a2 + v54[23];
  *v69 = 0;
  *(v69 + 4) = 1;
  *(a2 + v54[24]) = 2;
  v70 = (a2 + v54[25]);
  *v70 = 0;
  v70[1] = 0;
  return result;
}

uint64_t sub_22F3C02B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v89 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v89 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v89 - v14;
  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v16 = sub_22F1229E8(0x44496D616461, 0xE600000000000000);
  if ((v17 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v16, &v106);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (!*(a1 + 16) || (v103 = v104, v108 = v105, v18 = sub_22F1229E8(0x656C746974, 0xE500000000000000), (v19 & 1) == 0) || (sub_22F13A100(*(a1 + 56) + 32 * v18, &v106), (swift_dynamicCast() & 1) == 0))
  {
LABEL_22:

LABEL_23:
    v106 = 0;
    v107 = 0xE000000000000000;
    sub_22F741B00();
    MEMORY[0x231900B10](0xD000000000000045, 0x800000022F79DCA0);
    v28 = sub_22F740CB0();
    MEMORY[0x231900B10](v28);

    v29 = v106;
    v30 = v107;
    sub_22F3BE3A0();
    swift_allocError();
    *v31 = v29;
    *(v31 + 8) = v30;
    *(v31 + 16) = 1;
    return swift_willThrow();
  }

  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

  v101 = v104;
  v102 = v105;
  v20 = sub_22F1229E8(0x747369747261, 0xE600000000000000);
  if ((v21 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v20, &v106);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v100 = v105;
  if (!*(a1 + 16) || (v99 = v104, v22 = sub_22F1229E8(0x6D75626C61, 0xE500000000000000), (v23 & 1) == 0))
  {

    goto LABEL_22;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v22, &v106);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_21:

    goto LABEL_22;
  }

  v95 = v105;
  v96 = v104;
  if (!*(a1 + 16))
  {
    v94 = 0;
LABEL_30:
    v36 = 2;
LABEL_31:
    v97 = v36;
    goto LABEL_32;
  }

  v24 = sub_22F1229E8(0x6D614E65726E6567, 0xEA00000000007365);
  if (v25)
  {
    sub_22F13A100(*(a1 + 56) + 32 * v24, &v106);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    v26 = swift_dynamicCast();
    v27 = v104;
    if (!v26)
    {
      v27 = 0;
    }

    v94 = v27;
  }

  else
  {
    v94 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_30;
  }

  v33 = sub_22F1229E8(0x63696C7078457369, 0xEA00000000007469);
  v97 = 2;
  if (v34)
  {
    sub_22F13A100(*(a1 + 56) + 32 * v33, &v106);
    v35 = swift_dynamicCast();
    v36 = v104;
    if (!v35)
    {
      v36 = 2;
    }

    goto LABEL_31;
  }

LABEL_32:
  v37 = sub_22F73F7C0();
  v38 = *(v37 - 1);
  v39 = *(v38 + 56);
  v98 = v37;
  v93 = v39;
  v92 = (v38 + 56);
  (v39)(v15, 1, 1);
  if (*(a1 + 16))
  {
    v40 = sub_22F1229E8(0x636F4C6F69647561, 0xEB00000000656C61);
    if (v41)
    {
      sub_22F13A100(*(a1 + 56) + 32 * v40, &v106);
      if (swift_dynamicCast())
      {
        sub_22F73F6E0();
        sub_22F120ADC(v15, &qword_27DAB0C90, &unk_22F785B70);
        v93(v12, 0, 1, v98);
        sub_22F1207AC(v12, v15, &qword_27DAB0C90, &unk_22F785B70);
      }
    }
  }

  if (!*(a1 + 16))
  {
    v93 = 0;
LABEL_48:
    v92 = 0;
LABEL_49:
    v50 = 0;
    goto LABEL_50;
  }

  v42 = sub_22F1229E8(0x6C6173756F7261, 0xE700000000000000);
  if (v43)
  {
    sub_22F13A100(*(a1 + 56) + 32 * v42, &v106);
    sub_22F170D8C();
    v44 = swift_dynamicCast();
    v45 = v104;
    if (!v44)
    {
      v45 = 0;
    }

    v93 = v45;
  }

  else
  {
    v93 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_48;
  }

  v46 = sub_22F1229E8(0x65636E656C6176, 0xE700000000000000);
  if (v47)
  {
    sub_22F13A100(*(a1 + 56) + 32 * v46, &v106);
    sub_22F170D8C();
    v48 = swift_dynamicCast();
    v49 = v104;
    if (!v48)
    {
      v49 = 0;
    }

    v92 = v49;
  }

  else
  {
    v92 = 0;
  }

  if (!*(a1 + 16))
  {
    v98 = 0;
LABEL_63:
    v54 = 0;
    goto LABEL_64;
  }

  v55 = sub_22F1229E8(0xD000000000000016, 0x800000022F79DCF0);
  if ((v56 & 1) == 0)
  {
    goto LABEL_49;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v55, &v106);
  sub_22F170D8C();
  if (swift_dynamicCast())
  {
    v50 = v104;
  }

  else
  {
    v50 = 0;
  }

LABEL_50:
  v51 = *(a1 + 16);
  v98 = v50;
  if (!v51)
  {
    v54 = 0;
    goto LABEL_72;
  }

  v52 = sub_22F1229E8(0xD000000000000019, 0x800000022F79DD10);
  if ((v53 & 1) == 0)
  {
    goto LABEL_63;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v52, &v106);
  sub_22F170D8C();
  if (swift_dynamicCast())
  {
    v54 = v104;
  }

  else
  {
    v54 = 0;
  }

LABEL_64:
  if (*(a1 + 16))
  {
    v57 = sub_22F1229E8(0x50746E65746E6F63, 0xEF72656469766F72);
    if (v58)
    {
      sub_22F13A100(*(a1 + 56) + 32 * v57, &v106);
      v59 = swift_dynamicCast();
      v60 = v104;
      if (!v59)
      {
        v60 = 0;
      }

      v91 = v60;
      if (v59)
      {
        v61 = v105;
      }

      else
      {
        v61 = 0;
      }

      v90 = v61;
      goto LABEL_73;
    }
  }

LABEL_72:
  v91 = 0;
  v90 = 0;
LABEL_73:
  sub_22F203FB4(v15, v9);
  v62 = sub_22F73F690();
  (*(*(v62 - 8) + 56))(v6, 1, 1, v62);
  v63 = 0;
  v64 = 0;
  v65 = v93;
  v66 = v92;
  if (v93)
  {
    [v93 floatValue];
    v64 = v67;
  }

  if (v66)
  {
    [v66 floatValue];
    v63 = v68;
  }

  if (v98)
  {
    [v98 floatValue];
    v70 = v69;
  }

  else
  {
    v70 = 0;
  }

  if (v54)
  {
    [v54 floatValue];
    v72 = v71;

    v73 = v98;
    sub_22F120ADC(v15, &qword_27DAB0C90, &unk_22F785B70);
  }

  else
  {
    sub_22F120ADC(v15, &qword_27DAB0C90, &unk_22F785B70);
    v73 = v98;

    v72 = 0;
  }

  LODWORD(v98) = v54 == 0;
  v74 = v108;
  *a2 = v103;
  *(a2 + 8) = v74;
  v75 = v73 == 0;
  v76 = v102;
  *(a2 + 16) = v101;
  *(a2 + 24) = v76;
  v77 = v100;
  *(a2 + 32) = v99;
  *(a2 + 40) = v77;
  v78 = v95;
  *(a2 + 48) = v96;
  *(a2 + 56) = v78;
  *(a2 + 64) = v94;
  *(a2 + 72) = v97;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 92) = 0;
  *(a2 + 96) = 1;
  v79 = type metadata accessor for Song(0);
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  sub_22F1207AC(v9, a2 + v79[15], &qword_27DAB0C90, &unk_22F785B70);
  v80 = a2 + v79[26];
  *v80 = 1;
  *(v80 + 8) = 0u;
  *(v80 + 24) = 0u;
  *(v80 + 37) = 0;
  result = sub_22F1207AC(v6, a2 + v79[16], &qword_27DAB0920, &qword_22F770B20);
  *(a2 + v79[17]) = 0;
  v81 = a2 + v79[18];
  *v81 = v64;
  *(v81 + 4) = v65 == 0;
  v82 = a2 + v79[19];
  *v82 = v63;
  *(v82 + 4) = v66 == 0;
  v83 = a2 + v79[20];
  *v83 = v70;
  *(v83 + 4) = v75;
  v84 = a2 + v79[21];
  *v84 = v72;
  *(v84 + 4) = v98;
  v85 = a2 + v79[22];
  *v85 = 0;
  *(v85 + 4) = 1;
  v86 = a2 + v79[23];
  *v86 = 0;
  *(v86 + 4) = 1;
  *(a2 + v79[24]) = 0;
  v87 = (a2 + v79[25]);
  v88 = v90;
  *v87 = v91;
  v87[1] = v88;
  return result;
}

uint64_t sub_22F3C0D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v83 - v8;
  if (!*(a1 + 16))
  {
    goto LABEL_22;
  }

  v10 = sub_22F1229E8(0x44496D616461, 0xE600000000000000);
  if ((v11 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v10, v101);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v12 = v106;
  if (!*(a1 + 16) || (v13 = v105, v14 = sub_22F1229E8(0x656C746974, 0xE500000000000000), (v15 & 1) == 0) || (sub_22F13A100(*(a1 + 56) + 32 * v14, v101), (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:

LABEL_22:
    *&v101[0] = 0;
    *(&v101[0] + 1) = 0xE000000000000000;
    sub_22F741B00();
    MEMORY[0x231900B10](0xD000000000000045, 0x800000022F79DCA0);
    v24 = sub_22F740CB0();
    MEMORY[0x231900B10](v24);

    v25 = v101[0];
    sub_22F3BE3A0();
    swift_allocError();
    *v26 = v25;
    *(v26 + 16) = 1;
    return swift_willThrow();
  }

  if (!*(a1 + 16))
  {
    goto LABEL_20;
  }

  v99 = v105;
  v100 = v106;
  v16 = sub_22F1229E8(0x747369747261, 0xE600000000000000);
  if ((v17 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v16, v101);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v98 = v106;
  if (!*(a1 + 16) || (v97 = v105, v18 = sub_22F1229E8(0x6D75626C61, 0xE500000000000000), (v19 & 1) == 0))
  {

    goto LABEL_21;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v18, v101);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_20:

    goto LABEL_21;
  }

  v94 = v106;
  v95 = v105;
  if (!*(a1 + 16))
  {
    v93 = 0;
LABEL_34:
    v96 = 2;
LABEL_35:
    v92 = 1;
    v34 = 0.0;
    goto LABEL_36;
  }

  v20 = sub_22F1229E8(0x6D614E65726E6567, 0xEA00000000007365);
  if (v21)
  {
    sub_22F13A100(*(a1 + 56) + 32 * v20, v101);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    v22 = swift_dynamicCast();
    v23 = v105;
    if (!v22)
    {
      v23 = 0;
    }

    v93 = v23;
  }

  else
  {
    v93 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_34;
  }

  v28 = sub_22F1229E8(0x63696C7078457369, 0xEA00000000007469);
  v96 = 2;
  if (v29)
  {
    sub_22F13A100(*(a1 + 56) + 32 * v28, v101);
    v30 = swift_dynamicCast();
    v31 = v105;
    if (!v30)
    {
      v31 = 2;
    }

    v96 = v31;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_35;
  }

  v32 = sub_22F1229E8(0xD000000000000010, 0x800000022F78FFF0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_35;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v32, v101);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_35;
  }

  v92 = 0;
  v34 = (*&v105 * 0.001);
LABEL_36:
  v35 = sub_22F73F7C0();
  v36 = *(v35 - 8);
  v90 = *(v36 + 56);
  v91 = v35;
  v89 = v36 + 56;
  v90(v9, 1, 1);
  if (*(a1 + 16))
  {
    v37 = sub_22F1229E8(0x636F4C6F69647561, 0xEB00000000656C61);
    if (v38)
    {
      sub_22F13A100(*(a1 + 56) + 32 * v37, v101);
      if (swift_dynamicCast())
      {
        sub_22F73F6E0();
        sub_22F120ADC(v9, &qword_27DAB0C90, &unk_22F785B70);
        (v90)(v6, 0, 1, v91);
        sub_22F1207AC(v6, v9, &qword_27DAB0C90, &unk_22F785B70);
      }
    }
  }

  if (*(a1 + 16))
  {
    v39 = sub_22F1229E8(0x556B726F77747261, 0xEA00000000004C52);
    if (v40)
    {
      sub_22F13A100(*(a1 + 56) + 32 * v39, v101);
      v41 = swift_dynamicCast();
      if (v41)
      {
        v42 = v105;
      }

      else
      {
        v42 = 0;
      }

      if (v41)
      {
        v43 = v106;
      }

      else
      {
        v43 = 0;
      }

      v90 = v43;
      v91 = v42;
    }

    else
    {
      v90 = 0;
      v91 = 0;
    }

    if (*(a1 + 16))
    {
      v44 = sub_22F1229E8(0x616E416F69647561, 0xED0000736973796CLL);
      if (v45)
      {
        sub_22F13A100(*(a1 + 56) + 32 * v44, v101);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4018, &qword_22F78A418);
        if (swift_dynamicCast())
        {
          v46 = v105;
          if (v105[2])
          {
            v47 = sub_22F1229E8(0x796772656E65, 0xE600000000000000);
            if (v48)
            {
              v49 = *(v46[7] + 8 * v47);
              if (*(v49 + 16))
              {

                v50 = sub_22F1229E8(1852399981, 0xE400000000000000);
                if (v51)
                {
                  sub_22F13A100(*(v49 + 56) + 32 * v50, v101);

                  v52 = swift_dynamicCast();
                  v53 = v105;
                  if (!v52)
                  {
                    v53 = 0;
                  }

                  LODWORD(v89) = v53;
                  v54 = v52 ^ 1;
LABEL_67:
                  v88 = v54;
                  if (v46[2] && (v58 = sub_22F1229E8(0x65636E656C6176, 0xE700000000000000), (v59 & 1) != 0) && (v60 = *(v46[7] + 8 * v58), , , *(v60 + 16)) && (v61 = sub_22F1229E8(1852399981, 0xE400000000000000), (v62 & 1) != 0))
                  {
                    sub_22F13A100(*(v60 + 56) + 32 * v61, v101);

                    v63 = swift_dynamicCast();
                    v64 = v105;
                    if (!v63)
                    {
                      v64 = 0;
                    }

                    v87 = v64;
                    v65 = v63 ^ 1;
                  }

                  else
                  {

                    v87 = 0;
                    v65 = 1;
                  }

                  v86 = v65;
                  if (!*(a1 + 16))
                  {
                    goto LABEL_76;
                  }

                  goto LABEL_62;
                }
              }
            }
          }

          LODWORD(v89) = 0;
          v54 = 1;
          goto LABEL_67;
        }
      }
    }
  }

  else
  {
    v90 = 0;
    v91 = 0;
  }

  v87 = 0;
  LODWORD(v89) = 0;
  v86 = 1;
  v88 = 1;
  if (!*(a1 + 16))
  {
LABEL_76:
    v85 = 0;
    v57 = 0;
    v84 = xmmword_22F781B40;
    v83 = 0u;
    goto LABEL_77;
  }

LABEL_62:
  v55 = sub_22F1229E8(0x6E414C4D78656C66, 0xEE00736973796C61);
  if ((v56 & 1) == 0)
  {
    goto LABEL_76;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v55, v101);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_76;
  }

  sub_22F3C1858(v105, v101);

  v83 = v101[1];
  v84 = v101[0];
  v85 = v102;
  v57 = v103 | (v104 << 32);
LABEL_77:
  v66 = type metadata accessor for Song(0);
  v67 = v66[16];
  v68 = sub_22F73F690();
  (*(*(v68 - 8) + 56))(a2 + v67, 1, 1, v68);
  *a2 = v13;
  *(a2 + 8) = v12;
  v69 = v100;
  *(a2 + 16) = v99;
  *(a2 + 24) = v69;
  v70 = v98;
  *(a2 + 32) = v97;
  *(a2 + 40) = v70;
  v71 = v94;
  *(a2 + 48) = v95;
  *(a2 + 56) = v71;
  *(a2 + 64) = v93;
  *(a2 + 72) = v96;
  *(a2 + 80) = v34;
  *(a2 + 88) = v92;
  *(a2 + 92) = 0;
  *(a2 + 96) = 1;
  v72 = v90;
  *(a2 + 104) = v91;
  *(a2 + 112) = v72;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  result = sub_22F1207AC(v9, a2 + v66[15], &qword_27DAB0C90, &unk_22F785B70);
  v73 = a2 + v66[26];
  v74 = v83;
  *v73 = v84;
  *(v73 + 16) = v74;
  *(v73 + 32) = v85;
  *(v73 + 44) = BYTE4(v57);
  *(v73 + 40) = v57;
  *(a2 + v66[17]) = 0;
  v75 = a2 + v66[18];
  v76 = v88;
  *v75 = v89;
  *(v75 + 4) = v76;
  v77 = a2 + v66[19];
  *v77 = v87;
  *(v77 + 4) = v86;
  v78 = a2 + v66[20];
  *v78 = 0;
  *(v78 + 4) = 1;
  v79 = a2 + v66[21];
  *v79 = 0;
  *(v79 + 4) = 1;
  v80 = a2 + v66[22];
  *v80 = 0;
  *(v80 + 4) = 1;
  v81 = a2 + v66[23];
  *v81 = 0;
  *(v81 + 4) = 1;
  *(a2 + v66[24]) = 2;
  v82 = (a2 + v66[25]);
  *v82 = 0;
  v82[1] = 0;
  return result;
}

char *sub_22F3C1858@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v98 = a2;
  v3 = 0;
  if (a1[2] && (v4 = sub_22F1229E8(0x6E696F5074697865, 0xEA00000000007374), (v5 & 1) != 0) && (sub_22F13A100(v2[7] + 32 * v4, &v103), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2FE0, &unk_22F772A30), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v102;
    v7 = v102[2];

    if (v7)
    {
      v8 = 0;
      v9 = v102 + 4;
      v10 = MEMORY[0x277D84F90];
      v99 = v102;
      while (v8 < *(v6 + 16))
      {
        v102 = v9[v8];
        sub_22F3C2518(&v102, &v103);
        v11 = v103;
        v12 = v104;
        v13 = v105;
        if (v103)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_22F13D850(0, *(v10 + 16) + 1, 1, v10);
          }

          v15 = *(v10 + 16);
          v14 = *(v10 + 24);
          if (v15 >= v14 >> 1)
          {
            v10 = sub_22F13D850((v14 > 1), v15 + 1, 1, v10);
          }

          *(v10 + 16) = v15 + 1;
          v16 = (v10 + 24 * v15);
          v16[4] = v11;
          v16[5] = v12;
          v16[6] = v13;
          v6 = v99;
        }

        else
        {
          sub_22F3C315C(0);
        }

        ++v8;
        v2 = a1;
        if (v7 == v8)
        {
          goto LABEL_90;
        }
      }

      __break(1u);
      goto LABEL_98;
    }

    v10 = MEMORY[0x277D84F90];
LABEL_90:
  }

  else
  {
    v10 = 0;
    v6 = 0;
  }

  v100 = v10;
  if (v2[2] && (v17 = sub_22F1229E8(0x696F507972746E65, 0xEB0000000073746ELL), (v18 & 1) != 0) && (sub_22F13A100(v2[7] + 32 * v17, &v103), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2FE0, &unk_22F772A30), (swift_dynamicCast() & 1) != 0))
  {
    v99 = v6;
    v19 = v102;
    v20 = v102[2];
    if (v20)
    {
      v21 = 0;
      v22 = v102 + 4;
      v23 = MEMORY[0x277D84F90];
      while (v21 < *(v19 + 16))
      {
        v102 = v22[v21];
        sub_22F3C2B18(&v102, &v103);
        v24 = v103;
        v25 = v104;
        v26 = v105;
        if (v103)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_22F13D730(0, *(v23 + 2) + 1, 1, v23);
          }

          v10 = *(v23 + 2);
          v27 = *(v23 + 3);
          v28 = v23;
          if (v10 >= v27 >> 1)
          {
            v28 = sub_22F13D730((v27 > 1), v10 + 1, 1, v23);
          }

          *(v28 + 2) = v10 + 1;
          v23 = v28;
          v29 = &v28[24 * v10];
          *(v29 + 4) = v24;
          *(v29 + 10) = v25;
          *(v29 + 6) = v26;
        }

        else
        {
          sub_22F3C315C(0);
        }

        if (v20 == ++v21)
        {
          goto LABEL_92;
        }
      }

LABEL_98:
      __break(1u);
LABEL_99:
      swift_once();
LABEL_79:
      v76 = sub_22F740B90();
      __swift_project_value_buffer(v76, qword_2810B4DC0);

      v77 = sub_22F740B70();
      v78 = sub_22F7415E0();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v103 = v80;
        *v79 = 136315138;
        v81 = sub_22F740CB0();
        v83 = sub_22F145F20(v81, v82, &v103);

        *(v79 + 4) = v83;
        _os_log_impl(&dword_22F0FC000, v77, v78, "Could not parse visualTempo attributes from FlexML analysis dictionary: %s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v80);
        MEMORY[0x2319033A0](v80, -1, -1);
        MEMORY[0x2319033A0](v79, -1, -1);
      }

      result = 0;
      v84 = 0;
      v85 = v99;
      if (v100)
      {
        goto LABEL_82;
      }

      goto LABEL_118;
    }

    v23 = MEMORY[0x277D84F90];
LABEL_92:

    v2 = a1;
  }

  else
  {

    v23 = 0;
  }

  v99 = v23;
  if (!v2[2])
  {
    goto LABEL_52;
  }

  v30 = sub_22F1229E8(0x6576456F65646976, 0xEB0000000073746ELL);
  if ((v31 & 1) == 0)
  {
    goto LABEL_52;
  }

  sub_22F13A100(v2[7] + 32 * v30, &v103);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4020, &unk_22F78A420);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_52;
  }

  v32 = v102;
  if (!v102[2])
  {
    goto LABEL_51;
  }

  sub_22F1229E8(0x65726F6373, 0xE500000000000000);
  if ((v33 & 1) == 0)
  {
    goto LABEL_51;
  }

  v35 = sub_22F3C3070(v34);

  if (!v35)
  {
    goto LABEL_51;
  }

  if (!*(v32 + 16) || (v36 = sub_22F1229E8(0x65536E49656D6974, 0xED000073646E6F63), (v37 & 1) == 0))
  {

    goto LABEL_51;
  }

  v38 = *(*(v32 + 56) + 8 * v36);

  v39 = sub_22F3C3070(v38);

  if (!v39)
  {
LABEL_51:

LABEL_52:
    if (qword_2810A9478 != -1)
    {
      swift_once();
    }

    v49 = sub_22F740B90();
    __swift_project_value_buffer(v49, qword_2810B4DC0);

    v50 = sub_22F740B70();
    v51 = sub_22F7415E0();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v103 = v53;
      *v52 = 136315138;
      v54 = sub_22F740CB0();
      v56 = sub_22F145F20(v54, v55, &v103);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_22F0FC000, v50, v51, "Could not parse videoEvents attributes from FlexML analysis dictionary: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x2319033A0](v53, -1, -1);
      MEMORY[0x2319033A0](v52, -1, -1);
    }

    v3 = 0;
    v10 = 0;
    goto LABEL_57;
  }

  if (v35 >> 62)
  {
    v40 = sub_22F741A00();
    if (v40)
    {
      goto LABEL_42;
    }

LABEL_101:

    v3 = MEMORY[0x277D84F90];
    goto LABEL_102;
  }

  v40 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v40)
  {
    goto LABEL_101;
  }

LABEL_42:
  v103 = MEMORY[0x277D84F90];
  result = sub_22F1464F4(0, v40 & ~(v40 >> 63), 0);
  if (v40 < 0)
  {
    __break(1u);
    goto LABEL_124;
  }

  v42 = 0;
  v3 = v103;
  do
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x2319016F0](v42, v35);
    }

    else
    {
      v43 = *(v35 + 8 * v42 + 32);
    }

    v44 = v43;
    [v43 floatValue];
    v46 = v45;

    v103 = v3;
    v48 = *(v3 + 16);
    v47 = *(v3 + 24);
    if (v48 >= v47 >> 1)
    {
      sub_22F1464F4((v47 > 1), v48 + 1, 1);
      v3 = v103;
    }

    ++v42;
    *(v3 + 16) = v48 + 1;
    *(v3 + 4 * v48 + 32) = v46;
    v2 = a1;
  }

  while (v40 != v42);

LABEL_102:
  if (v39 >> 62)
  {
    v88 = sub_22F741A00();
    if (v88)
    {
LABEL_104:
      v103 = MEMORY[0x277D84F90];
      result = sub_22F1464F4(0, v88 & ~(v88 >> 63), 0);
      if ((v88 & 0x8000000000000000) == 0)
      {
        v89 = 0;
        v10 = v103;
        do
        {
          if ((v39 & 0xC000000000000001) != 0)
          {
            v90 = MEMORY[0x2319016F0](v89, v39);
          }

          else
          {
            v90 = *(v39 + 8 * v89 + 32);
          }

          v91 = v90;
          [v90 floatValue];
          v93 = v92;

          v103 = v10;
          v95 = *(v10 + 16);
          v94 = *(v10 + 24);
          if (v95 >= v94 >> 1)
          {
            sub_22F1464F4((v94 > 1), v95 + 1, 1);
            v10 = v103;
          }

          ++v89;
          *(v10 + 16) = v95 + 1;
          *(v10 + 4 * v95 + 32) = v93;
          v2 = a1;
        }

        while (v88 != v89);

        goto LABEL_57;
      }

LABEL_124:
      __break(1u);
      goto LABEL_125;
    }
  }

  else
  {
    v88 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v88)
    {
      goto LABEL_104;
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_57:
  if (!v2[2] || (v57 = sub_22F1229E8(0x65546C6175736976, 0xEB000000006F706DLL), (v58 & 1) == 0) || (sub_22F13A100(v2[7] + 32 * v57, &v103), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_78:
    if (qword_2810A9478 == -1)
    {
      goto LABEL_79;
    }

    goto LABEL_99;
  }

  v59 = v102;
  if (!v102[2])
  {
    goto LABEL_77;
  }

  v60 = sub_22F1229E8(0x65756C6176, 0xE500000000000000);
  if ((v61 & 1) == 0)
  {
    goto LABEL_77;
  }

  sub_22F13A100(*(v59 + 56) + 32 * v60, &v103);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_77;
  }

  v62 = v102;
  if (!*(v59 + 16) || (v63 = sub_22F1229E8(0xD000000000000011, 0x800000022F790090), (v64 & 1) == 0))
  {

    goto LABEL_77;
  }

  sub_22F13A100(*(v59 + 56) + 32 * v63, &v103);

  sub_22F170D8C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_77:

    goto LABEL_78;
  }

  v65 = v102;
  if (!(v62 >> 62))
  {
    v66 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v66)
    {
      goto LABEL_68;
    }

LABEL_116:

    v87 = MEMORY[0x277D84F90];
    goto LABEL_117;
  }

  v66 = sub_22F741A00();
  if (!v66)
  {
    goto LABEL_116;
  }

LABEL_68:
  v103 = MEMORY[0x277D84F90];
  result = sub_22F1464F4(0, v66 & ~(v66 >> 63), 0);
  if ((v66 & 0x8000000000000000) == 0)
  {
    v67 = 0;
    v68 = v103;
    do
    {
      v69 = v68;
      if ((v62 & 0xC000000000000001) != 0)
      {
        v70 = MEMORY[0x2319016F0](v67, v62);
      }

      else
      {
        v70 = *(v62 + 8 * v67 + 32);
      }

      v71 = v70;
      [v70 floatValue];
      v73 = v72;

      v68 = v69;
      v103 = v69;
      v74 = *(v69 + 16);
      v75 = *(v68 + 24);
      if (v74 >= v75 >> 1)
      {
        sub_22F1464F4((v75 > 1), v74 + 1, 1);
        v68 = v103;
      }

      ++v67;
      *(v68 + 16) = v74 + 1;
      *(v68 + 4 * v74 + 32) = v73;
    }

    while (v66 != v67);
    v87 = v68;

LABEL_117:
    [v65 floatValue];
    v97 = v96;

    v84 = v97;
    result = v87;
    v85 = v99;
    if (v100)
    {
LABEL_82:
      if (!v85)
      {

        sub_22F18B0F4(v3, v10);

LABEL_120:
        v3 = 0;
        goto LABEL_121;
      }

      if (!v3)
      {

        v85 = 0;
LABEL_121:
        v10 = 0;
        result = 0;
        v84 = 0;
        v86 = 1;
        goto LABEL_122;
      }

      if (result)
      {
        v86 = v100;
LABEL_122:
        *v98 = v86;
        *(v98 + 8) = v85;
        *(v98 + 16) = v3;
        *(v98 + 24) = v10;
        *(v98 + 32) = result;
        *(v98 + 44) = 0;
        *(v98 + 40) = v84;
        return result;
      }

      sub_22F18B0F4(v3, v10);

LABEL_119:

      v85 = 0;
      goto LABEL_120;
    }

LABEL_118:

    sub_22F18B0F4(v3, v10);
    goto LABEL_119;
  }

LABEL_125:
  __break(1u);
  return result;
}