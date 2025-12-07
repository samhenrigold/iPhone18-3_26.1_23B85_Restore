uint64_t sub_20E067630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F28, &qword_20E325D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E0676A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F28, &qword_20E325D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E067708(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoQuery(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E067774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_20E322740();
  if (!v7)
  {
    v20[6] = 0;
    v13 = swift_allocObject();
    *(v13 + 16) = MEMORY[0x277D84F90];
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v14 = swift_allocObject();
    v14[2] = a4;
    v14[3] = a5;
    v14[4] = a6;
    v14[5] = a7;
    v14[6] = a1;
    v14[7] = v13;

    sub_20E3227E0();

    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v15 = sub_20E3227C0();
    __swift_project_value_buffer(v15, qword_280E12C48);

    v16 = sub_20E3227B0();
    v17 = sub_20E322A40();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      swift_beginAccess();
      *(v18 + 4) = *(*(v13 + 16) + 16);

      _os_log_impl(&dword_20E031000, v16, v17, "%ld of events loaded from Biome stream", v18, 0xCu);
      MEMORY[0x20F32CA80](v18, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    a1 = *(v13 + 16);

    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  return a1;
}

void sub_20E0679F4(NSObject **a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v2 = sub_20E3227C0();
    __swift_project_value_buffer(v2, qword_280E12C48);
    v3 = v1;
    oslog = sub_20E3227B0();
    v4 = sub_20E322A50();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&dword_20E031000, oslog, v4, "Error, sink failed: %@", v5, 0xCu);
      sub_20E04875C(v6, &qword_27C863F48, &qword_20E325DA8);
      MEMORY[0x20F32CA80](v6, -1, -1);
      MEMORY[0x20F32CA80](v5, -1, -1);
      v8 = oslog;
    }

    else
    {

      v8 = v1;
    }
  }
}

uint64_t sub_20E067B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46 = a2;
  v47 = a6;
  v45 = a3;
  v48 = a1;
  v8 = sub_20E322A90();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v44 - v14;
  v16 = *(a4 - 8);
  v17 = MEMORY[0x28223BE20](v13);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v44 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v44 - v23;
  (*(v25 + 16))(v15, v48, AssociatedTypeWitness);
  v26 = swift_dynamicCast();
  v27 = *(v16 + 56);
  if (v26)
  {
    v27(v11, 0, 1, a4);
    (*(v16 + 32))(v24, v11, a4);
    v28 = *(v16 + 16);
    v28(v22, v24, a4);
    v29 = v45;
    swift_beginAccess();
    v30 = *(v29 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v29 + 16) = v30;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v30 = sub_20E2250A8(0, v30[2] + 1, 1, v30);
      *(v29 + 16) = v30;
    }

    v33 = v30[2];
    v32 = v30[3];
    if (v33 >= v32 >> 1)
    {
      v30 = sub_20E2250A8((v32 > 1), v33 + 1, 1, v30);
      *(v29 + 16) = v30;
    }

    v28(v19, v22, a4);
    sub_20E068508(v33, v19, (v29 + 16), a4, v47);
    v34 = *(v16 + 8);
    v34(v22, a4);
    *(v29 + 16) = v30;
    swift_endAccess();
    return (v34)(v24, a4);
  }

  else
  {
    v27(v11, 1, 1, a4);
    (*(v9 + 8))(v11, v8);
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v36 = sub_20E3227C0();
    __swift_project_value_buffer(v36, qword_280E12C48);
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_20E322B00();
    MEMORY[0x20F32BF40](0xD000000000000038, 0x800000020E35A5A0);
    v37 = sub_20E322E70();
    MEMORY[0x20F32BF40](v37);

    v39 = v49;
    v38 = v50;

    v40 = sub_20E3227B0();
    v41 = sub_20E322A50();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v49 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_20E31B6C4(v39, v38, &v49);
      _os_log_impl(&dword_20E031000, v40, v41, "%s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x20F32CA80](v43, -1, -1);
      MEMORY[0x20F32CA80](v42, -1, -1);
    }

    LOBYTE(v49) = 2;
    _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v49, v39, v38);
  }
}

void sub_20E0680D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = [v8 eventBody];
    if (v9)
    {
      v10 = v9;
      swift_beginAccess();
      v11 = v10;
      MEMORY[0x20F32BF90]();
      if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20E322990();
      }

      sub_20E3229B0();
      swift_endAccess();
      if (a3 == 0xD000000000000022 && 0x800000020E35A530 == a4 || (sub_20E322D60() & 1) != 0)
      {
        if (qword_280E12B88 != -1)
        {
          swift_once();
        }

        v12 = sub_20E3227C0();
        __swift_project_value_buffer(v12, qword_280E12C48);
        v13 = sub_20E3227B0();
        v14 = sub_20E322A40();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v23[0] = v16;
          *v15 = 136315138;
          *(v15 + 4) = sub_20E31B6C4(0xD00000000000003DLL, 0x800000020E35A560, v23);
          _os_log_impl(&dword_20E031000, v13, v14, "%s", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v16);
          MEMORY[0x20F32CA80](v16, -1, -1);
          MEMORY[0x20F32CA80](v15, -1, -1);
        }

        LOBYTE(v23[0]) = 0x80;
        _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(v23, 0xD00000000000003DLL, 0x800000020E35A560);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_280E12B88 != -1)
      {
        swift_once();
      }

      v17 = sub_20E3227C0();
      __swift_project_value_buffer(v17, qword_280E12C48);
      v23[0] = 0;
      v23[1] = 0xE000000000000000;
      sub_20E322B00();
      MEMORY[0x20F32BF40](0xD000000000000039, 0x800000020E35A4F0);
      v18 = sub_20E322890();
      MEMORY[0x20F32BF40](v18);

      v19 = sub_20E3227B0();
      v20 = sub_20E322A50();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v23[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_20E31B6C4(0, 0xE000000000000000, v23);
        _os_log_impl(&dword_20E031000, v19, v20, "%s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x20F32CA80](v22, -1, -1);
        MEMORY[0x20F32CA80](v21, -1, -1);
      }

      LOBYTE(v23[0]) = 0;
      _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(v23, 0, 0xE000000000000000);
      swift_unknownObjectRelease();
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20E068508(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_20E06AF84(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_20E0685A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[22] = a2;
  v5[23] = a3;
  v5[21] = a1;
  v6 = sub_20E322010();
  v5[26] = v6;
  v5[27] = *(v6 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20E0686A0, 0, 0);
}

uint64_t sub_20E0686A0()
{
  v72 = v0;
  v71[1] = *MEMORY[0x277D85DE8];
  v1 = [v0[22] startDate];
  if (v1)
  {
    v2 = v1;
    sub_20E321FD0();

    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v3 = v0[28];
    v4 = v0[29];
    v5 = v0[26];
    v6 = v0[27];
    v7 = sub_20E3227C0();
    __swift_project_value_buffer(v7, qword_280E12C48);
    (*(v6 + 16))(v3, v4, v5);
    v8 = sub_20E3227B0();
    v9 = sub_20E322A40();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[28];
    v12 = v0[29];
    v14 = v0[26];
    v13 = v0[27];
    if (v10)
    {
      v69 = v0[29];
      v15 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v71[0] = v68;
      *v15 = 136315138;
      sub_20E06AEC8(&qword_280E12B30, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v16 = sub_20E322D50();
      v18 = v17;
      v19 = *(v13 + 8);
      v19(v11, v14);
      v20 = sub_20E31B6C4(v16, v18, v71);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_20E031000, v8, v9, "Loading biome events with bookmark: collecting from %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x20F32CA80](v68, -1, -1);
      MEMORY[0x20F32CA80](v15, -1, -1);

      v19(v69, v14);
    }

    else
    {

      v21 = *(v13 + 8);
      v21(v11, v14);
      v21(v12, v14);
    }
  }

  v22 = v0[21];
  v23 = swift_allocObject();
  *(v23 + 16) = MEMORY[0x277D84F90];
  v24 = (v23 + 16);
  v25 = BiomeLibrary();
  v0[20] = 0;
  v26 = [v25 streamWithIdentifier:v22 error:v0 + 20];
  swift_unknownObjectRelease();
  v27 = v0[20];
  if (v26)
  {
    v28 = v0[22];
    v29 = v27;
    v30 = sub_20E322860();
    v70 = v26;
    v31 = [v26 publisherWithUseCase:v30 options:v28];

    if (v31)
    {
      v32 = v0[24];
      v33 = v0[25];
      v34 = v0[23];
      v35 = v0[21];
      v0[6] = nullsub_1;
      v0[7] = 0;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_20E1A4ABC;
      v0[5] = &block_descriptor_10;
      v36 = _Block_copy(v0 + 2);
      v37 = swift_allocObject();
      v37[2] = v33;
      v37[3] = v23;
      v37[4] = v34;
      v37[5] = v32;
      v37[6] = v35;
      v0[12] = sub_20E06AEB8;
      v0[13] = v37;
      v0[8] = MEMORY[0x277D85DD0];
      v0[9] = 1107296256;
      v0[10] = sub_20E1A4B24;
      v0[11] = &block_descriptor_16;
      v38 = _Block_copy(v0 + 8);
      v39 = v31;

      v40 = v35;

      v41 = [v39 sinkWithCompletion:v36 receiveInput:v38];
      _Block_release(v38);
      _Block_release(v36);
    }

    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v42 = v0[21];
    v43 = sub_20E3227C0();
    __swift_project_value_buffer(v43, qword_280E12C48);

    v44 = v42;
    v45 = sub_20E3227B0();
    v46 = sub_20E322A40();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v71[0] = v48;
      *v47 = 134218242;
      swift_beginAccess();
      if (*v24 >> 62)
      {
        v49 = sub_20E322BC0();
      }

      else
      {
        v49 = *((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v47 + 4) = v49;

      *(v47 + 12) = 2080;
      v50 = sub_20E322890();
      v52 = sub_20E31B6C4(v50, v51, v71);

      *(v47 + 14) = v52;
      _os_log_impl(&dword_20E031000, v45, v46, "%ld of events loaded from %s Biome stream", v47, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x20F32CA80](v48, -1, -1);
      MEMORY[0x20F32CA80](v47, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v65 = *(v23 + 16);
  }

  else
  {
    v53 = v27;
    v54 = sub_20E321EF0();

    swift_willThrow();
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v55 = v0[21];
    v56 = sub_20E3227C0();
    __swift_project_value_buffer(v56, qword_280E12C48);
    v57 = v55;
    v58 = sub_20E3227B0();
    v59 = sub_20E322A50();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v71[0] = v61;
      *v60 = 136315138;
      v62 = sub_20E322890();
      v64 = sub_20E31B6C4(v62, v63, v71);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_20E031000, v58, v59, "Unable to create stream from BMLibrary identifer:  %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x20F32CA80](v61, -1, -1);
      MEMORY[0x20F32CA80](v60, -1, -1);
    }

    v65 = 0;
  }

  v66 = v0[1];

  return v66(v65);
}

uint64_t sub_20E068EAC(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_20E3227C0();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  sub_20E322250();
  v1[14] = swift_task_alloc();
  v3 = type metadata accessor for TranscriptProtoEvent(0);
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20E069044, 0, 0);
}

uint64_t sub_20E069044()
{
  v75 = v0;
  v1 = v0[10];
  if (v1 >> 62)
  {
    goto LABEL_53;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20E322BC0())
  {
    v3 = 0;
    v60 = v0[16];
    v4 = v0[12];
    v67 = v1 & 0xC000000000000001;
    v63 = v0[10] + 32;
    v64 = v1 & 0xFFFFFFFFFFFFFF8;
    v62 = (v4 + 16);
    v5 = MEMORY[0x277D84F90];
    v61 = (v4 + 8);
    v66 = i;
    while (1)
    {
      if (v67)
      {
        v6 = MEMORY[0x20F32C150](v3, v0[10]);
      }

      else
      {
        if (v3 >= *(v64 + 16))
        {
          goto LABEL_52;
        }

        v6 = *(v63 + 8 * v3);
      }

      v7 = v6;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = [v6 eventType];
      if (v8)
      {
        v9 = v8;
        v68 = sub_20E322890();
        v72 = v10;
      }

      else
      {
        v68 = 0;
        v72 = 0;
      }

      v11 = [v7 absoluteTimestamp];
      v69 = v3 + 1;
      v70 = v3;
      if (v11)
      {
        v12 = v11;
        sub_20E321FD0();

        v13 = 0;
      }

      else
      {
        v13 = 1;
      }

      v15 = v0[19];
      v14 = v0[20];
      v16 = sub_20E322010();
      v17 = *(v16 - 8);
      (*(v17 + 56))(v15, v13, 1, v16);
      sub_20E06AC40(v15, v14);
      v18 = (*(v17 + 48))(v14, 1, v16);
      v19 = v0[20];
      if (v18 == 1)
      {
        sub_20E04875C(v0[20], &qword_27C863F30, &qword_20E325D90);
        v20 = 0;
        v21 = 0;
      }

      else
      {
        v20 = sub_20E321F30();
        v21 = v22;
        (*(v17 + 8))(v19, v16);
      }

      if (qword_280E12B88 != -1)
      {
        swift_once();
      }

      v23 = __swift_project_value_buffer(v0[11], qword_280E12C48);

      v24 = sub_20E3227B0();
      v25 = sub_20E322A40();

      v71 = v7;
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v65 = v5;
        v27 = swift_slowAlloc();
        v73[0] = v27;
        *v26 = 136315394;
        if (v72)
        {
          v28 = v68;
        }

        else
        {
          v28 = 0x3E4C494E3CLL;
        }

        v29 = v20;
        v30 = v23;
        if (v72)
        {
          v31 = v72;
        }

        else
        {
          v31 = 0xE500000000000000;
        }

        v32 = sub_20E31B6C4(v28, v31, v73);
        v23 = v30;

        *(v26 + 4) = v32;
        *(v26 + 12) = 2080;
        if (v21)
        {
          v33 = v29;
        }

        else
        {
          v33 = 0x3E4C494E3CLL;
        }

        if (!v21)
        {
          v21 = 0xE500000000000000;
        }

        v34 = sub_20E31B6C4(v33, v21, v73);

        *(v26 + 14) = v34;
        _os_log_impl(&dword_20E031000, v24, v25, "Decoding Event: %s with eventTimeStamp: %s \n", v26, 0x16u);
        swift_arrayDestroy();
        v35 = v27;
        v5 = v65;
        MEMORY[0x20F32CA80](v35, -1, -1);
        v36 = v26;
        v7 = v71;
        MEMORY[0x20F32CA80](v36, -1, -1);
      }

      else
      {
      }

      v37 = [v7 data];
      if (v37)
      {
        v38 = v37;

        v39 = sub_20E321F00();
        v41 = v40;

        v74 = 0;
        memset(v73, 0, sizeof(v73));
        sub_20E05E834(v39, v41);
        sub_20E322240();
        sub_20E06AEC8(qword_280E0FFD8, type metadata accessor for TranscriptProtoEvent, &protocol conformance descriptor for TranscriptProtoEvent);
        sub_20E322450();
        sub_20E06ADC0(v0[18], v0[17], type metadata accessor for TranscriptProtoEvent);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v5 = sub_20E2251F0(0, v5[2] + 1, 1, v5);
        }

        v52 = v5[2];
        v51 = v5[3];
        v1 = v52 + 1;
        if (v52 >= v51 >> 1)
        {
          v5 = sub_20E2251F0((v51 > 1), v52 + 1, 1, v5);
        }

        v54 = v0[17];
        v53 = v0[18];

        sub_20E05E888(v39, v41);
        sub_20E06ACFC(v53, type metadata accessor for TranscriptProtoEvent);
        v5[2] = v1;
        sub_20E06AE50(v54, v5 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v52, type metadata accessor for TranscriptProtoEvent);
      }

      else
      {
        (*v62)(v0[13], v23, v0[11]);
        v73[0] = 0;
        v73[1] = 0xE000000000000000;
        sub_20E322B00();
        MEMORY[0x20F32BF40](0xD000000000000040, 0x800000020E35A3B0);
        if (v72)
        {
          v42 = v68;
        }

        else
        {
          v42 = 0x3E4C494E3CLL;
        }

        if (v72)
        {
          v43 = v72;
        }

        else
        {
          v43 = 0xE500000000000000;
        }

        MEMORY[0x20F32BF40](v42, v43);

        v44 = *v73;

        v45 = sub_20E3227B0();
        v46 = sub_20E322A40();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v73[0] = v48;
          *v47 = 136315138;
          *(v47 + 4) = sub_20E31B6C4(v44, *(&v44 + 1), v73);
          _os_log_impl(&dword_20E031000, v45, v46, "%s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v48);
          MEMORY[0x20F32CA80](v48, -1, -1);
          MEMORY[0x20F32CA80](v47, -1, -1);
        }

        v1 = v0[13];
        v49 = v0[11];
        LOBYTE(v73[0]) = 3;
        _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(v73, v44, *(&v44 + 1));

        (*v61)(v1, v49);
      }

      v3 = v70 + 1;
      if (v69 == v66)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_55:
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[11], qword_280E12C48);

  v55 = sub_20E3227B0();
  v56 = sub_20E322A40();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 134217984;
    *(v57 + 4) = v5[2];

    _os_log_impl(&dword_20E031000, v55, v56, "Decoded %ld events", v57, 0xCu);
    MEMORY[0x20F32CA80](v57, -1, -1);
  }

  else
  {
  }

  v58 = v0[1];

  return v58(v5);
}

uint64_t sub_20E069C58(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_20E3227C0();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  sub_20E322250();
  v1[8] = swift_task_alloc();
  v1[9] = type metadata accessor for TranscriptProtoEvent(0);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for IETranscriptEventWrapper(0);
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20E069E38, 0, 0);
}

uint64_t sub_20E069E38()
{
  v109 = v0;
  v1 = v0[4];
  if (v1 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20E322BC0())
  {
    v3 = 0;
    v4 = v0[16];
    v88 = v0[4] + 32;
    v89 = v1 & 0xFFFFFFFFFFFFFF8;
    v94 = v0[13];
    v95 = v1 & 0xC000000000000001;
    v5 = v0[6];
    v87 = (v5 + 16);
    v83 = v0[11];
    v85 = v0[14];
    v86 = (v5 + 8);
    v93 = v0[9];
    v91 = MEMORY[0x277D84F90];
    v92 = i;
    while (1)
    {
      if (v95)
      {
        v6 = MEMORY[0x20F32C150](v3, v0[4]);
      }

      else
      {
        if (v3 >= *(v89 + 16))
        {
          goto LABEL_56;
        }

        v6 = *(v88 + 8 * v3);
      }

      v7 = v6;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = [v6 eventType];
      if (v8)
      {
        v9 = v8;
        v97 = sub_20E322890();
        v105 = v10;
      }

      else
      {
        v97 = 0;
        v105 = 0;
      }

      v11 = [v7 absoluteTimestamp];
      v102 = v3 + 1;
      v103 = v3;
      if (v11)
      {
        v12 = v11;
        sub_20E321FD0();

        v13 = 0;
      }

      else
      {
        v13 = 1;
      }

      v15 = v0[17];
      v14 = v0[18];
      v16 = sub_20E322010();
      v17 = *(v16 - 8);
      (*(v17 + 56))(v15, v13, 1, v16);
      sub_20E06AC40(v15, v14);
      v18 = (*(v17 + 48))(v14, 1, v16);
      v19 = v0[18];
      if (v18 == 1)
      {
        sub_20E04875C(v0[18], &qword_27C863F30, &qword_20E325D90);
        v20 = 0;
        v21 = 0;
      }

      else
      {
        v20 = sub_20E321F30();
        v21 = v22;
        (*(v17 + 8))(v19, v16);
      }

      v104 = v7;
      v23 = [v7 monotonicTimestamp];
      if (qword_280E12B88 != -1)
      {
        swift_once();
      }

      v24 = __swift_project_value_buffer(v0[5], qword_280E12C48);

      v99 = v24;
      v25 = sub_20E3227B0();
      v26 = sub_20E322A40();

      v101 = v23;
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v107[0] = v28;
        *v27 = 136315394;
        if (v21)
        {
          v29 = v20;
        }

        else
        {
          v29 = 0x3E4C494E3CLL;
        }

        if (!v21)
        {
          v21 = 0xE500000000000000;
        }

        v30 = sub_20E31B6C4(v29, v21, v107);

        *(v27 + 4) = v30;
        *(v27 + 12) = 2080;
        if (v105)
        {
          v31 = v97;
        }

        else
        {
          v31 = 0x3E4C494E3CLL;
        }

        if (v105)
        {
          v32 = v105;
        }

        else
        {
          v32 = 0xE500000000000000;
        }

        v33 = sub_20E31B6C4(v31, v32, v107);

        *(v27 + 14) = v33;
        _os_log_impl(&dword_20E031000, v25, v26, "eventTimeStamp: %s for event: %s \n", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F32CA80](v28, -1, -1);
        MEMORY[0x20F32CA80](v27, -1, -1);
      }

      else
      {
      }

      v0 = v96;
      v34 = v96[16];
      v35 = *(v94 + 20);
      v4[11] = 0;
      v4[12] = 0;
      v36 = v93[11];
      v37 = type metadata accessor for TranscriptProtoPayload(0);
      (*(*(v37 - 8) + 56))(&v34[v36], 1, 1, v37);
      v38 = &v34[v93[12]];
      *v38 = 0;
      *(v38 + 1) = 0;
      v39 = v93[13];
      v40 = type metadata accessor for TranscriptProtoTimepoint(0);
      (*(*(v40 - 8) + 56))(&v34[v39], 1, 1, v40);
      v41 = v93[14];
      v42 = type metadata accessor for TranscriptProtoParticipantID(0);
      (*(*(v42 - 8) + 56))(&v34[v41], 1, 1, v42);
      v43 = v93[15];
      v44 = type metadata accessor for TranscriptProtoSpanID(0);
      (*(*(v44 - 8) + 56))(&v34[v43], 1, 1, v44);
      _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
      *v34 = 0;
      v4[1] = 0xE000000000000000;
      v4[2] = 0;
      v4[3] = 0xE000000000000000;
      v4[4] = 0;
      v4[5] = 0xE000000000000000;
      v4[6] = 0;
      v4[7] = 0xE000000000000000;
      v4[8] = 0;
      v4[9] = 0xE000000000000000;
      v4[10] = sub_20E048A4C(MEMORY[0x277D84F90]);
      *&v34[v35] = 0;
      v45 = [v104 data];
      if (v45)
      {
        v46 = v45;
        v98 = v35;

        v47 = sub_20E321F00();
        v49 = v48;

        v108 = 0;
        memset(v107, 0, sizeof(v107));
        sub_20E05E834(v47, v49);
        sub_20E322240();
        sub_20E06AEC8(qword_280E0FFD8, type metadata accessor for TranscriptProtoEvent, &protocol conformance descriptor for TranscriptProtoEvent);
        v106 = v47;
        sub_20E322450();
        v90 = v49;
        v60 = v96[12];
        v61 = v96[10];
        sub_20E06ADC0(v60, v96[11], type metadata accessor for TranscriptProtoEvent);
        sub_20E06ADC0(v60, v61, type metadata accessor for TranscriptProtoEvent);
        v62 = sub_20E3227B0();
        v63 = sub_20E322A40();
        v64 = os_log_type_enabled(v62, v63);
        v65 = v96[10];
        v66 = v96[11];
        if (v64)
        {
          v84 = v63;
          v67 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v107[0] = v100;
          *v67 = 136315394;
          v69 = *(v83 + 48);
          v68 = *(v83 + 56);

          sub_20E06ACFC(v66, type metadata accessor for TranscriptProtoEvent);
          v0 = v96;
          v70 = sub_20E31B6C4(v69, v68, v107);

          *(v67 + 4) = v70;
          *(v67 + 12) = 2080;
          v71 = TranscriptProtoEvent.description.getter();
          v73 = v72;
          sub_20E06ACFC(v65, type metadata accessor for TranscriptProtoEvent);
          v74 = sub_20E31B6C4(v71, v73, v107);

          *(v67 + 14) = v74;
          _os_log_impl(&dword_20E031000, v62, v84, "Decoded SessionID: %s for event: %s \n", v67, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F32CA80](v100, -1, -1);
          MEMORY[0x20F32CA80](v67, -1, -1);
        }

        else
        {

          sub_20E06ACFC(v65, type metadata accessor for TranscriptProtoEvent);
          sub_20E06ACFC(v66, type metadata accessor for TranscriptProtoEvent);
        }

        v57 = v92;
        v75 = v0[15];
        v76 = v0[16];
        sub_20E06AD5C(v0[12], v76);
        *&v34[v98] = v101;
        sub_20E06ADC0(v76, v75, type metadata accessor for IETranscriptEventWrapper);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_20E225218(0, v91[2] + 1, 1, v91);
        }

        v78 = v91[2];
        v77 = v91[3];
        if (v78 >= v77 >> 1)
        {
          v91 = sub_20E225218((v77 > 1), v78 + 1, 1, v91);
        }

        v79 = v0[15];
        v80 = v0[12];

        sub_20E05E888(v106, v90);
        sub_20E06ACFC(v80, type metadata accessor for TranscriptProtoEvent);
        v91[2] = v78 + 1;
        sub_20E06AE50(v79, v91 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v78, type metadata accessor for IETranscriptEventWrapper);
      }

      else
      {
        (*v87)(v96[7], v99, v96[5]);
        v107[0] = 0;
        v107[1] = 0xE000000000000000;
        sub_20E322B00();
        MEMORY[0x20F32BF40](0xD000000000000043, 0x800000020E35A310);
        if (v105)
        {
          v50 = v97;
        }

        else
        {
          v50 = 0x3E4C494E3CLL;
        }

        if (v105)
        {
          v51 = v105;
        }

        else
        {
          v51 = 0xE500000000000000;
        }

        MEMORY[0x20F32BF40](v50, v51);

        v52 = *v107;

        v53 = sub_20E3227B0();
        v54 = sub_20E322A40();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v107[0] = v56;
          *v55 = 136315138;
          *(v55 + 4) = sub_20E31B6C4(v52, *(&v52 + 1), v107);
          _os_log_impl(&dword_20E031000, v53, v54, "%s", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v56);
          MEMORY[0x20F32CA80](v56, -1, -1);
          MEMORY[0x20F32CA80](v55, -1, -1);
        }

        v57 = v92;
        v58 = v96[7];
        v59 = v96[5];
        LOBYTE(v107[0]) = 3;
        _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(v107, v52, *(&v52 + 1));

        (*v86)(v58, v59);
      }

      v1 = v102;
      sub_20E06ACFC(v0[16], type metadata accessor for IETranscriptEventWrapper);
      v3 = v103 + 1;
      if (v102 == v57)
      {
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  v91 = MEMORY[0x277D84F90];
LABEL_59:

  v81 = v0[1];

  return v81(v91);
}

uint64_t sub_20E06AC40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20E06ACB0()
{
  result = qword_27C863F40;
  if (!qword_27C863F40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C863F40);
  }

  return result;
}

uint64_t sub_20E06ACFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E06AD5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoEvent(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E06ADC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20E06AE50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E06AEC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_20E06AF84(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_20E06AFAC(uint64_t a1, void *a2)
{
  v31 = a1;
  v32 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F50, &qword_20E325DB8);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v27 - v3;
  v38 = sub_20E322080();
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_20E321F90();
  v5 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v34 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20E321F70();
  v7 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20E321F50();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20E321F60();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20E321FA0();
  v28 = *(v18 - 8);
  v29 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v14;
  v22 = v35;
  (*(v15 + 104))(v17, *MEMORY[0x277CC9460], v21);
  (*(v11 + 104))(v13, *MEMORY[0x277CC9458], v10);
  v23 = v37;
  (*(v7 + 104))(v9, *MEMORY[0x277CC9468], v33);
  (*(v5 + 104))(v34, *MEMORY[0x277CC9480], v36);
  v24 = v38;
  sub_20E322070();
  result = (*(v22 + 48))(v23, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v22 + 32))(v30, v23, v24);
    sub_20E321F80();
    sub_20E06BABC();
    v26 = v29;
    sub_20E321FF0();
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    sub_20E322E30();
    __swift_mutable_project_boxed_opaque_existential_1(v39, v39[3]);
    sub_20E322D80();
    (*(v28 + 8))(v20, v26);

    return __swift_destroy_boxed_opaque_existential_0(v39);
  }

  return result;
}

uint64_t sub_20E06B628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a3;
  v23 = sub_20E321E50();
  v4 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20E321E30();
  v20 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20E321E70();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20E321EA0();
  (*(v12 + 16))(v14, a1, v11);

  sub_20E321E80();
  v16 = v21;
  (*(v8 + 16))(v10, v21, v7);
  sub_20E321E40();
  v18 = v22;
  v17 = v23;
  (*(v4 + 16))(v6, v22, v23);
  sub_20E321E60();

  (*(v4 + 8))(v18, v17);
  (*(v8 + 8))(v16, v20);
  (*(v12 + 8))(a1, v11);
  return v15;
}

uint64_t sub_20E06B8C4()
{
  v0 = sub_20E321E50();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20E321E30();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20E321E70();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20E321EB0();
  *v10 = sub_20E06AFAC;
  v10[1] = 0;
  (*(v8 + 104))(v10, *MEMORY[0x277CC8770], v7);
  sub_20E321E20();
  (*(v1 + 104))(v3, *MEMORY[0x277CC8740], v0);
  result = sub_20E06B628(v10, v6, v3);
  qword_27C8CC280 = result;
  return result;
}

unint64_t sub_20E06BABC()
{
  result = qword_27C863F58;
  if (!qword_27C863F58)
  {
    sub_20E321FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863F58);
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

uint64_t sub_20E06BB64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F48, &qword_20E325DA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_20E06BBCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v55 = (&v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v54 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F18, &qword_20E325D28);
  v7 = MEMORY[0x28223BE20](v6);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v51 = &v48 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v56 = &v48 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  v15 = MEMORY[0x277D84F90];
  v61 = MEMORY[0x277D84F90];
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  v20 = (v17 + 63) >> 6;
  v57 = a1;

  v22 = 0;
  v48 = v20;
  v49 = a1 + 64;
  v53 = v6;
  v50 = v14;
  if (v19)
  {
    while (1)
    {
      v60 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v19)) | (v22 << 6);
      v25 = *(v57 + 56);
      v26 = (*(v57 + 48) + 16 * v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = type metadata accessor for TranscriptProtoStatementID(0);
      v58 = *(v29 - 8);
      v59 = v29;
      v30 = v56;
      sub_20E04F364(v25 + *(v58 + 72) * v24, &v56[*(v6 + 48)]);
      *v30 = v27;
      v30[1] = v28;
      sub_20E066940(v30, v14);
      v31 = objc_allocWithZone(MEMORY[0x277D57D58]);

      v32 = [v31 init];
      if (!v32)
      {
        break;
      }

      v60 = v32;
      v33 = v51;
      sub_20E0486F4(v14, v51, &qword_27C863F18, &qword_20E325D28);
      v34 = *(v6 + 48);
      v35 = sub_20E322860();

      v36 = v33 + v34;
      v37 = v60;
      sub_20E04F4A0(v36);
      [v37 setCallParameterName_];

      v38 = v52;
      sub_20E0486F4(v14, v52, &qword_27C863F18, &qword_20E325D28);

      v39 = v54;
      sub_20E0529B0(v38 + *(v6 + 48), v54);
      v41 = v58;
      v40 = v59;
      (*(v58 + 56))(v39, 0, 1, v59);
      v42 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
      v43 = v55;
      sub_20E0486F4(v39, v55, &qword_27C8639D0, &unk_20E33C230);
      if ((*(v41 + 48))(v43, 1, v40) == 1)
      {
        sub_20E04875C(v39, &qword_27C8639D0, &unk_20E33C230);
        v44 = v43;
      }

      else
      {
        v45 = *v43;
        sub_20E04F4A0(v43);
        v46 = v45;
        v37 = v60;
        [v42 setIndex_];
        v44 = v39;
      }

      sub_20E04875C(v44, &qword_27C8639D0, &unk_20E33C230);
      [v37 setStatementId_];

      v47 = v37;
      MEMORY[0x20F32BF90]();
      v6 = v53;
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20E322990();
      }

      v19 &= v19 - 1;
      sub_20E3229B0();

      v14 = v50;
      result = sub_20E04875C(v50, &qword_27C863F18, &qword_20E325D28);
      v15 = v61;
      v20 = v48;
      v16 = v49;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    sub_20E04875C(v14, &qword_27C863F18, &qword_20E325D28);

    return 0;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v20)
      {

        return v15;
      }

      v19 = *(v16 + 8 * v23);
      ++v22;
      if (v19)
      {
        v60 = v15;
        v22 = v23;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t SaveResponseType.hashValue.getter()
{
  v1 = *v0;
  sub_20E322DE0();
  MEMORY[0x20F32C430](v1);
  return sub_20E322E00();
}

unint64_t sub_20E06C19C()
{
  result = qword_27C863F60;
  if (!qword_27C863F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863F60);
  }

  return result;
}

void *sub_20E06C224(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F68, &unk_20E3461B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20E06C3F8(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_20E06C468(v4);
    return 0;
  }

  else
  {
    sub_20E06C4D0(v4, v8);
    v10 = [objc_allocWithZone(MEMORY[0x277D580F8]) init];
    v9 = v10;
    if (v10)
    {
      [v10 setExists_];
      if (sub_20E052170(*v8))
      {
        sub_20E06C590();
        v11 = sub_20E322960();
      }

      else
      {
        v11 = 0;
      }

      [v9 setInterpretedStatementResults_];
    }

    sub_20E06C534(v8);
  }

  return v9;
}

uint64_t sub_20E06C3F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F68, &unk_20E3461B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E06C468(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F68, &unk_20E3461B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E06C4D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E06C534(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoSystemResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20E06C590()
{
  result = qword_27C863F70;
  if (!qword_27C863F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C863F70);
  }

  return result;
}

uint64_t sub_20E06C5DC@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  if (v8)
  {
    sub_20E322020();
    v9 = sub_20E322060();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_20E06CC70(v7);
      if (qword_280E12B88 != -1)
      {
        swift_once();
      }

      v11 = sub_20E3227C0();
      __swift_project_value_buffer(v11, qword_280E12C48);
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_20E322B00();
      MEMORY[0x20F32BF40](0xD000000000000040, 0x800000020E35A630);
      v12 = sub_20E06CAC8(v3);
      MEMORY[0x20F32BF40](v12);

      v14 = v30;
      v13 = v31;

      v15 = sub_20E3227B0();
      v16 = sub_20E322A40();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v30 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_20E31B6C4(v14, v13, &v30);
        _os_log_impl(&dword_20E031000, v15, v16, "%s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x20F32CA80](v18, -1, -1);
        MEMORY[0x20F32CA80](v17, -1, -1);
      }

      LOBYTE(v30) = 97;
      _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v30, v14, v13);

      return sub_20E322020();
    }

    else
    {
      (*(v10 + 32))(a3, v7, v9);
      return (*(v10 + 56))(a3, 0, 1, v9);
    }
  }

  else
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v20 = sub_20E3227C0();
    __swift_project_value_buffer(v20, qword_280E12C48);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_20E322B00();
    MEMORY[0x20F32BF40](0xD000000000000049, 0x800000020E35A5E0);
    v21 = sub_20E06CAC8(v3);
    MEMORY[0x20F32BF40](v21);

    v23 = v30;
    v22 = v31;

    v24 = sub_20E3227B0();
    v25 = sub_20E322A40();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_20E31B6C4(v23, v22, &v30);
      _os_log_impl(&dword_20E031000, v24, v25, "%s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x20F32CA80](v27, -1, -1);
      MEMORY[0x20F32CA80](v26, -1, -1);
    }

    LOBYTE(v30) = 97;
    _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v30, v23, v22);

    v28 = sub_20E322060();
    v29 = *(*(v28 - 8) + 56);

    return v29(a3, 1, 1, v28);
  }
}

unint64_t sub_20E06CAC8(char a1)
{
  result = 0x7972657551776172;
  switch(a1)
  {
    case 1:
      result = 0x4449776172;
      break;
    case 2:
      result = 0x6973736553776172;
      break;
    case 3:
      result = 0x6552746E65696C63;
      break;
    case 4:
      result = 0x76456E6F69746361;
      break;
    case 5:
      result = 0x6E6576456E616C70;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x457761526F646E75;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_20E06CC70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20E06CCD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v45 = &v41 - v5;
  v52 = sub_20E322060();
  v6 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TranscriptProtoStatementResult(0) - 8;
  MEMORY[0x28223BE20](v8);
  v12 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(*a1 + 16);
  if (v13)
  {
    v14 = *a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    v16 = MEMORY[0x277D84F90];
    do
    {
      sub_20E06D378(v14, v12);
      v18 = *v12;
      v19 = v12[1];

      sub_20E06D3DC(v12);
      if (v19)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_20E225240(0, *(v16 + 2) + 1, 1, v16);
        }

        v21 = *(v16 + 2);
        v20 = *(v16 + 3);
        if (v21 >= v20 >> 1)
        {
          v16 = sub_20E225240((v20 > 1), v21 + 1, 1, v16);
        }

        *(v16 + 2) = v21 + 1;
        v17 = &v16[16 * v21];
        *(v17 + 4) = v18;
        *(v17 + 5) = v19;
      }

      v14 += v15;
      --v13;
    }

    while (v13);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v51 = *(v16 + 2);
  if (!v51)
  {
LABEL_29:

    return;
  }

  v22 = 0;
  v56 = 0;
  v53 = (v6 + 48);
  v43 = "annot formulate UUID for ";
  v44 = (v6 + 56);
  v42 = "mulate UUID for ";
  v47 = (v6 + 32);
  v48 = (v6 + 8);
  v23 = v16 + 40;
  *&v10 = 136315138;
  v41 = v10;
  v25 = v45;
  v24 = v46;
  v26 = v52;
  v50 = v16;
  while (v22 < *(v16 + 2))
  {

    sub_20E322020();
    v27 = *v53;
    if ((*v53)(v24, 1, v26) != 1)
    {

      v35 = *v47;
      (*v47)(v25, v24, v26);
      (*v44)(v25, 0, 1, v26);
      goto LABEL_25;
    }

    sub_20E06CC70(v24);
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v28 = sub_20E3227C0();
    __swift_project_value_buffer(v28, qword_280E12C48);
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_20E322B00();
    MEMORY[0x20F32BF40](0xD000000000000040, v43 | 0x8000000000000000);
    MEMORY[0x20F32BF40](0x76456E6F69746361, 0xED00004449746E65);
    v30 = v54;
    v29 = v55;

    v31 = sub_20E3227B0();
    v32 = sub_20E322A40();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v54 = v34;
      *v33 = v41;
      *(v33 + 4) = sub_20E31B6C4(v30, v29, &v54);
      _os_log_impl(&dword_20E031000, v31, v32, "%s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x20F32CA80](v34, -1, -1);
      MEMORY[0x20F32CA80](v33, -1, -1);
    }

    LOBYTE(v54) = 97;
    _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v54, v30, v29);

    v25 = v45;
    sub_20E322020();

    v26 = v52;
    if (v27(v25, 1, v52) != 1)
    {
      v24 = v46;
      v35 = *v47;
LABEL_25:
      v36 = v49;
      v35(v49, v25, v26);
      v37 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v38 = sub_20E322030();
      v39 = [v37 initWithNSUUID_];

      if (v56)
      {
        v40 = v39;
        MEMORY[0x20F32BF90]();
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();

        v26 = v52;
        (*v48)(v36, v52);
      }

      else
      {
        (*v48)(v36, v26);
      }

      goto LABEL_14;
    }

    sub_20E06CC70(v25);
    v24 = v46;
LABEL_14:
    ++v22;
    v23 += 16;
    v16 = v50;
    if (v51 == v22)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
}

uint64_t sub_20E06D378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E06D3DC(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoStatementResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_20E06D438(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v35 - v3);
  v5 = type metadata accessor for TranscriptProtoProgramStatement(0);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F78, &unk_20E325EA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for TranscriptProtoPlan(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v10, &qword_27C863F78, &unk_20E325EA0);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    sub_20E06D9D8(v10, v14);
    v15 = [objc_allocWithZone(MEMORY[0x277D57F20]) init];
    if (!v15)
    {
      sub_20E06DAEC(v14, type metadata accessor for TranscriptProtoPlan);
      return 0;
    }

    v36 = v15;
    [v15 setExists_];
    v37 = v14;
    v16 = *(v14 + 4);
    v40 = MEMORY[0x277D84F90];
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = v16 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
      v19 = *(v38 + 72);
      do
      {
        sub_20E06DA3C(v18, v7);
        v20 = [objc_allocWithZone(MEMORY[0x277D57F58]) init];
        if (v20)
        {
          v21 = v20;
          v22 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
          sub_20E0486F4(v7, v4, &qword_27C8639D0, &unk_20E33C230);
          v23 = type metadata accessor for TranscriptProtoStatementID(0);
          if ((*(*(v23 - 8) + 48))(v4, 1, v23) == 1)
          {
            sub_20E04875C(v4, &qword_27C8639D0, &unk_20E33C230);
          }

          else
          {
            v24 = *v4;
            sub_20E06DAEC(v4, type metadata accessor for TranscriptProtoStatementID);
            [v22 setIndex_];
          }

          [v21 setStatementId_];

          v25 = v39;
          v26 = sub_20E074FF8(&v7[*(v39 + 20)]);
          [v21 setExpressionName_];

          [v21 setIsRoot_];
          v27 = sub_20E06DAEC(v7, type metadata accessor for TranscriptProtoProgramStatement);
          MEMORY[0x20F32BF90](v27);
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20E322990();
          }

          sub_20E3229B0();
        }

        else
        {
          sub_20E06DAEC(v7, type metadata accessor for TranscriptProtoProgramStatement);
        }

        v18 += v19;
        --v17;
      }

      while (v17);
    }

    sub_20E06DAA0();
    v28 = sub_20E322960();

    v29 = v36;
    [v36 setStatements_];

    v30 = v37;
    if (*(v37 + 6))
    {
      v31 = sub_20E322860();
    }

    else
    {
      v31 = 0;
    }

    [v29 setOverrideId_];

    v32 = *(v30 + 56);
    if (v32 > 2)
    {
      if (v32 - 4 >= 2)
      {
        if (v32 != 3)
        {
LABEL_31:
          sub_20E06DAEC(v30, type metadata accessor for TranscriptProtoPlan);
          return v29;
        }

        v33 = 5;
      }

      else
      {
        v33 = 0;
      }
    }

    else if (*(v30 + 56))
    {
      if (v32 == 1)
      {
        v33 = 2;
      }

      else
      {
        v33 = 4;
      }
    }

    else
    {
      v33 = 1;
    }

    [v29 setPlanSource_];
    goto LABEL_31;
  }

  sub_20E04875C(v10, &qword_27C863F78, &unk_20E325EA0);
  return 0;
}

uint64_t sub_20E06D9D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPlan(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E06DA3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoProgramStatement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20E06DAA0()
{
  result = qword_27C863F80;
  if (!qword_27C863F80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C863F80);
  }

  return result;
}

uint64_t sub_20E06DAEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E06DB4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  sub_20E06DC78(a1, &v12 - v6);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if ((*(*(PayloadEnum - 8) + 48))(v7, 1, PayloadEnum) == 1)
  {
    v9 = 0;
  }

  else
  {
    sub_20E06DC78(v7, v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_20E06DD50(v5);
    v9 = (EnumCaseMultiPayload + 1);
  }

  sub_20E06DCE8(v7);
  return v9;
}

uint64_t sub_20E06DC78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E06DCE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E06DD50(uint64_t a1)
{
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  (*(*(PayloadEnum - 8) + 8))(a1, PayloadEnum);
  return a1;
}

id sub_20E06DDAC(uint64_t a1)
{
  v2 = sub_20E322060();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F88, &unk_20E33C200);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  v35 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F90, &unk_20E3461E0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = type metadata accessor for TranscriptProtoRequest(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v16, &qword_27C863F90, &unk_20E3461E0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_20E04875C(v16, &qword_27C863F90, &unk_20E3461E0);
    return 0;
  }

  else
  {
    sub_20E06E328(v16, v20, type metadata accessor for TranscriptProtoRequest);
    v21 = [objc_allocWithZone(MEMORY[0x277D57FA8]) init];
    if (v21)
    {
      sub_20E0486F4(&v20[*(v17 + 24)], v8, &qword_27C863F88, &unk_20E33C200);
      v22 = v35;
      if ((*(v35 + 48))(v8, 1, v9) == 1)
      {
        sub_20E04875C(v8, &qword_27C863F88, &unk_20E33C200);
      }

      else
      {
        v23 = v8;
        v24 = v33;
        sub_20E06E328(v23, v33, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
        v25 = v34;
        sub_20E06E390(v24, v34, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
        (*(v22 + 56))(v25, 0, 1, v9);
        v26 = sub_20E31BDE8(v25);
        sub_20E04875C(v25, &qword_27C863F88, &unk_20E33C200);
        [v21 setPrescribedPlan_];

        sub_20E06E3F8(v24, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
      }

      v27 = v36;
      sub_20E322050();
      v28 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v29 = sub_20E322030();
      v30 = [v28 initWithNSUUID_];

      (*(v37 + 8))(v27, v38);
      sub_20E06E390(v20, v14, type metadata accessor for TranscriptProtoRequest);
      (*(v18 + 56))(v14, 0, 1, v17);
      v31 = sub_20E1A38FC(v14, v30);
      sub_20E04875C(v14, &qword_27C863F90, &unk_20E3461E0);
      [v21 setContent_];
      [v21 setIsSafetyMode_];

      sub_20E06E3F8(v20, type metadata accessor for TranscriptProtoRequest);
    }

    else
    {
      sub_20E06E3F8(v20, type metadata accessor for TranscriptProtoRequest);
    }
  }

  return v21;
}

uint64_t sub_20E06E328(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E06E390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E06E3F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20E06E458(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v18 - v6);
  v8 = [objc_allocWithZone(MEMORY[0x277D58138]) init];
  sub_20E06E698(a1, v7);
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_20E06E708(v7);
    return v8;
  }

  v10 = *v7;
  sub_20E047CF8(*v7);
  sub_20E06E7D4(v7, type metadata accessor for ToolKitProtoTypedValue);
  if ((~v10 & 0xF000000000000007) == 0)
  {
    return v8;
  }

  v11 = v10 >> 61;
  if ((v10 >> 61) > 2)
  {
    if (v11 > 4)
    {
LABEL_12:
      sub_20E047CA8(v10);
      return v8;
    }

    if (v11 == 3)
    {
      v12 = swift_projectBox();
      sub_20E06E770(v12, v4);
      if (v8)
      {
        v13 = v8;
        v14 = sub_20E04F548(v4);
        [v13 setCollection_];
      }

      sub_20E06E7D4(v4, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
      goto LABEL_12;
    }
  }

  sub_20E047CA8(v10);
  if (v8)
  {
    v15 = v8;
    v16 = sub_20E24FF14(a1);
    [v15 setValue_];
  }

  return v8;
}

uint64_t sub_20E06E698(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E06E708(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E06E770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E06E7D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20E06E834(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for RequestEventResult(0);
  v5 = MEMORY[0x28223BE20](v4);
  v60 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC0, &unk_20E325F70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v57 - v12;
  v67 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v64 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for TranscriptProtoEvent(0);
  v68 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E12B88 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v18 = sub_20E3227C0();
    v63 = __swift_project_value_buffer(v18, qword_280E12C48);
    v19 = sub_20E3227B0();
    v20 = sub_20E322A40();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20E031000, v19, v20, "Producing features for events from a clientRequest", v21, 2u);
      MEMORY[0x20F32CA80](v21, -1, -1);
    }

    v22 = a1[2];
    if (!v22)
    {
      break;
    }

    v83 = 1;
    a1 = (a1 + ((*(v68 + 80) + 32) & ~*(v68 + 80)));
    v23 = a1[8];
    v24 = a1[9];
    v62 = a2;
    v58 = v4;
    v61 = (v23 != 0xD00000000000001ELL || 0x800000020E35A8D0 != v24) && (sub_20E322D60() & 1) == 0;
    v29 = 0;
    a2 = (v64 + 48);
    while (1)
    {
      v4 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      sub_20E071018(a1 + *(v68 + 72) * v29, v17, type metadata accessor for TranscriptProtoEvent);
      sub_20E0486F4(&v17[*(v66 + 44)], v10, &qword_27C863FC0, &unk_20E325F70);
      v30 = type metadata accessor for TranscriptProtoPayload(0);
      if ((*(*(v30 - 8) + 48))(v10, 1, v30) == 1)
      {
        sub_20E04875C(v10, &qword_27C863FC0, &unk_20E325F70);
        (*(v64 + 56))(v13, 1, 1, v67);
LABEL_21:
        sub_20E04875C(v13, &qword_27C863FC8, &unk_20E33C1D0);
        v73 = 0;
        *&v74 = 0xE000000000000000;
        sub_20E322B00();
        MEMORY[0x20F32BF40](0xD000000000000051, 0x800000020E35A8F0);
        MEMORY[0x20F32BF40](*(v17 + 4), *(v17 + 5));
        v46 = v73;
        v45 = v74;

        v47 = sub_20E3227B0();
        v48 = sub_20E322A40();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v73 = v50;
          *v49 = 136315138;
          *(v49 + 4) = sub_20E31B6C4(v46, v45, &v73);
          _os_log_impl(&dword_20E031000, v47, v48, "%s", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v50);
          MEMORY[0x20F32CA80](v50, -1, -1);
          MEMORY[0x20F32CA80](v49, -1, -1);
        }

        v51 = v62;
        LOBYTE(v73) = 65;
        _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v73, v46, v45);

        sub_20E071080(v17, type metadata accessor for TranscriptProtoEvent);
        *v51 = 0u;
        v51[1] = 0u;
        v51[2] = 0u;
        *(v51 + 46) = 0u;
        LOBYTE(v73) = v61;
        *(&v73 + 1) = *v85;
        HIDWORD(v73) = *&v85[3];
        v74 = xmmword_20E325EB0;
        v75 = 2;
        *v76 = *v84;
        *&v76[3] = *&v84[3];
        v77 = 0;
        v78 = 0xE000000000000000;
        v79 = MEMORY[0x277D84F90];
        v80 = 0;
        v81 = v83;
        v82 = 8;
LABEL_26:
        sub_20E0710E0(&v73);
        return;
      }

      sub_20E0486F4(v10, v13, &qword_27C863FC8, &unk_20E33C1D0);
      sub_20E071080(v10, type metadata accessor for TranscriptProtoPayload);
      if ((*a2)(v13, 1, v67) == 1)
      {
        goto LABEL_21;
      }

      sub_20E071134(v13, v15, type metadata accessor for TranscriptProtoPayloadEnum);
      sub_20E06F274(v15);
      sub_20E071080(v15, type metadata accessor for TranscriptProtoPayloadEnum);
      sub_20E071080(v17, type metadata accessor for TranscriptProtoEvent);
      ++v29;
      if (v4 == v22)
      {
        v31 = v65 + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result;
        swift_beginAccess();
        v32 = v59;
        sub_20E071018(v31, v59, type metadata accessor for RequestEventResult);
        sub_20E0706C0(v32, &v73);
        sub_20E071080(v32, type metadata accessor for RequestEventResult);
        v33 = v74;
        v68 = v73;
        v34 = BYTE8(v74);
        sub_20E07119C(3, 0, 2);
        v36 = *(v31 + 8);
        v35 = *(v31 + 16);
        v37 = *v31;
        v38 = v58;
        v39 = *(v31 + *(v58 + 72));
        v40 = v60;
        sub_20E071018(v31, v60, type metadata accessor for RequestEventResult);
        v41 = *(v38 + 76);
        v42 = type metadata accessor for TranscriptProtoStatementID(0);
        v43 = (*(*(v42 - 8) + 48))(v40 + v41, 1, v42);
        if (v43)
        {
          v44 = 0;
        }

        else
        {
          v44 = *(v40 + v41);
        }

        v52 = v43 != 0;

        sub_20E071080(v40, type metadata accessor for RequestEventResult);
        v83 = v52;
        v53 = v61;
        LOBYTE(v70) = v61;
        v54 = v68;
        *(&v70 + 1) = v68;
        *&v71 = v33;
        BYTE8(v71) = v34;
        *v72 = v36;
        *&v72[8] = v35;
        *&v72[16] = v39;
        *&v72[24] = v44;
        v72[28] = v52;
        v72[29] = v37;
        v55 = v71;
        v56 = v62;
        *v62 = v70;
        v56[1] = v55;
        v56[2] = *v72;
        *(v56 + 46) = *&v72[14];
        LOBYTE(v73) = v53;
        *&v74 = v54;
        *(&v74 + 1) = v33;
        v75 = v34;
        v77 = v36;
        v78 = v35;
        v79 = v39;
        v80 = v44;
        v81 = v52;
        v82 = v37;
        sub_20E0711B4(&v70, v69);
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v25 = sub_20E3227B0();
  v26 = sub_20E322A40();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v73 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_20E31B6C4(0xD000000000000030, 0x800000020E35A950, &v73);
    _os_log_impl(&dword_20E031000, v25, v26, "%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x20F32CA80](v28, -1, -1);
    MEMORY[0x20F32CA80](v27, -1, -1);
  }

  LOBYTE(v73) = 64;
  _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v73, 0xD000000000000030, 0x800000020E35A950);
  *(a2 + 46) = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
}

int *sub_20E06F274(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoSystemResponse(0);
  MEMORY[0x28223BE20](v2 - 8);
  v142 = &v129 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v133 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v140 = &v129 - v7;
  v145 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v132 = *(v145 - 8);
  v8 = MEMORY[0x28223BE20](v145);
  v141 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v129 = &v129 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA8, &unk_20E345F00);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v131 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v138 = &v129 - v14;
  v15 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v143 = *(v15 - 8);
  v144 = v15;
  MEMORY[0x28223BE20](v15);
  v130 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FB8, &unk_20E325F60);
  MEMORY[0x28223BE20](v17 - 8);
  v137 = &v129 - v18;
  v135 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v139 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = (&v129 - v21);
  v150 = type metadata accessor for TranscriptProtoStatementResult(0);
  MEMORY[0x28223BE20](v150);
  v146 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v136 = &v129 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v129 - v30;
  v149 = type metadata accessor for TranscriptProtoStatementID(0);
  v147 = *(v149 - 8);
  v32 = MEMORY[0x28223BE20](v149);
  v34 = &v129 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v129 - v35;
  v37 = type metadata accessor for TranscriptProtoPlan(0);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v129 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v129 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v45 = &v129 - v44;
  v148 = a1;
  sub_20E071018(a1, &v129 - v44, type metadata accessor for TranscriptProtoPayloadEnum);
  LODWORD(result) = swift_getEnumCaseMultiPayload();
  if (result <= 12)
  {
    if (result <= 3)
    {
      if (result == 2)
      {
        goto LABEL_22;
      }

      if (result != 3)
      {
        goto LABEL_38;
      }

      sub_20E071080(v45, type metadata accessor for TranscriptProtoPayloadEnum);
      v47 = v151 + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result;
      swift_beginAccess();
      result = type metadata accessor for RequestEventResult(0);
      v48 = result[9];
      v49 = *(v47 + v48);
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (!v50)
      {
        goto LABEL_34;
      }

      __break(1u);
    }

    if (result != 4)
    {
      if (result != 7)
      {
        goto LABEL_38;
      }

      sub_20E071080(v45, type metadata accessor for TranscriptProtoPayloadEnum);
      v52 = v151 + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result;
      swift_beginAccess();
      v53 = *(type metadata accessor for RequestEventResult(0) + 60);
      v54 = *(v52 + v53);
      v50 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (!v50)
      {
        *(v52 + v53) = v55;
        v56 = sub_20E31D9E8(v152, v148);
        *v52 = v152[0];
        *(v52 + 8) = v56;
        *(v52 + 16) = v57;
      }

      __break(1u);
      goto LABEL_66;
    }

    sub_20E071080(v45, type metadata accessor for TranscriptProtoPayloadEnum);
    v47 = v151 + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result;
    swift_beginAccess();
    result = type metadata accessor for RequestEventResult(0);
    v48 = result[10];
    v67 = *(v47 + v48);
    v50 = __OFADD__(v67, 1);
    v51 = v67 + 1;
    if (v50)
    {
      __break(1u);
      goto LABEL_28;
    }

LABEL_34:
    *(v47 + v48) = v51;
    return result;
  }

  if (result > 17)
  {
    if (result != 18)
    {
      if (result != 19)
      {
        if (result == 38)
        {
          swift_beginAccess();
          return type metadata accessor for RequestEventResult(0);
        }

LABEL_38:
        if (qword_280E12B88 == -1)
        {
LABEL_39:
          v92 = sub_20E3227C0();
          __swift_project_value_buffer(v92, qword_280E12C48);
          sub_20E071018(v148, v43, type metadata accessor for TranscriptProtoPayloadEnum);
          v93 = sub_20E3227B0();
          v94 = sub_20E322A40();
          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            v96 = swift_slowAlloc();
            v153[0] = v96;
            *v95 = 136315138;
            v97 = TranscriptProtoPayloadEnum.eventTypeString.getter();
            v99 = v98;
            sub_20E071080(v43, type metadata accessor for TranscriptProtoPayloadEnum);
            v100 = sub_20E31B6C4(v97, v99, v153);

            *(v95 + 4) = v100;
            _os_log_impl(&dword_20E031000, v93, v94, "Skip event: %s", v95, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v96);
            MEMORY[0x20F32CA80](v96, -1, -1);
            MEMORY[0x20F32CA80](v95, -1, -1);
          }

          else
          {

            sub_20E071080(v43, type metadata accessor for TranscriptProtoPayloadEnum);
          }

          v101 = type metadata accessor for TranscriptProtoPayloadEnum;
          v102 = v45;
          return sub_20E071080(v102, v101);
        }

LABEL_70:
        swift_once();
        goto LABEL_39;
      }

      v80 = v146;
      sub_20E071134(v45, v146, type metadata accessor for TranscriptProtoStatementResult);
      v81 = v151 + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result;
      swift_beginAccess();
      v82 = type metadata accessor for RequestEventResult(0);
      v83 = *(v82 + 56);
      v84 = *(v81 + v83);
      v50 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (!v50)
      {
        v86 = v82;
        *(v81 + v83) = v85;
        sub_20E0486F4(v80 + v150[9], v22, &qword_27C8639C8, &unk_20E323870);
        v87 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
        v88 = (*(*(v87 - 8) + 48))(v22, 1, v87);
        v89 = v149;
        if (v88 == 1)
        {
          sub_20E04875C(v22, &qword_27C8639C8, &unk_20E323870);
          v91 = v139;
          v90 = v140;
        }

        else
        {
          v105 = *v22;
          v104 = v22[1];

          sub_20E071080(v22, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
          swift_beginAccess();
          v106 = v86[18];
          v107 = *(v81 + v106);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v81 + v106) = v107;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v107 = sub_20E225240(0, *(v107 + 2) + 1, 1, v107);
            *(v81 + v106) = v107;
          }

          v110 = *(v107 + 2);
          v109 = *(v107 + 3);
          if (v110 >= v109 >> 1)
          {
            v107 = sub_20E225240((v109 > 1), v110 + 1, 1, v107);
          }

          *(v107 + 2) = v110 + 1;
          v111 = &v107[16 * v110];
          *(v111 + 4) = v105;
          *(v111 + 5) = v104;
          *(v81 + v106) = v107;
          swift_endAccess();
          v91 = v139;
          v90 = v140;
          v80 = v146;
          v89 = v149;
        }

        sub_20E0486F4(v80 + v150[7], v27, &qword_27C8639D0, &unk_20E33C230);
        v112 = v147;
        if ((*(v147 + 48))(v27, 1, v89) == 1)
        {
          sub_20E04875C(v27, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          sub_20E071134(v27, v34, type metadata accessor for TranscriptProtoStatementID);
          v113 = v34;
          v114 = v136;
          sub_20E071134(v113, v136, type metadata accessor for TranscriptProtoStatementID);
          (*(v112 + 56))(v114, 0, 1, v89);
          swift_beginAccess();
          sub_20E05EC5C(v114, v81 + v86[19], &qword_27C8639D0, &unk_20E33C230);
          swift_endAccess();
        }

        v115 = v141;
        v117 = v137;
        v116 = v138;
        sub_20E0486F4(v80 + v150[5], v137, &qword_27C863FB8, &unk_20E325F60);
        if ((*(v134 + 48))(v117, 1, v135) == 1)
        {
          sub_20E071080(v80, type metadata accessor for TranscriptProtoStatementResult);
          return sub_20E04875C(v117, &qword_27C863FB8, &unk_20E325F60);
        }

        sub_20E071134(v117, v91, type metadata accessor for TranscriptProtoStatementResultPayload);
        sub_20E0486F4(v91, v116, &qword_27C863BA8, &unk_20E345F00);
        if ((*(v143 + 48))(v116, 1, v144) == 1)
        {
          sub_20E071080(v91, type metadata accessor for TranscriptProtoStatementResultPayload);
          sub_20E071080(v80, type metadata accessor for TranscriptProtoStatementResult);
          return sub_20E04875C(v116, &qword_27C863BA8, &unk_20E345F00);
        }

        v120 = v130;
        sub_20E071134(v116, v130, type metadata accessor for TranscriptProtoStatementOutcome);
        sub_20E0486F4(v120, v90, &qword_27C863BA0, &unk_20E325F20);
        if ((*(v132 + 48))(v90, 1, v145) == 1)
        {
          sub_20E071080(v120, type metadata accessor for TranscriptProtoStatementOutcome);
          sub_20E071080(v91, type metadata accessor for TranscriptProtoStatementResultPayload);
          sub_20E071080(v80, type metadata accessor for TranscriptProtoStatementResult);
          return sub_20E04875C(v90, &qword_27C863BA0, &unk_20E325F20);
        }

        v121 = v90;
        v122 = v129;
        sub_20E071134(v121, v129, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        sub_20E071018(v122, v115, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          result = sub_20E071080(v115, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          v123 = v86[16];
          v124 = *(v81 + v123);
          v50 = __OFADD__(v124, 1);
          v125 = v124 + 1;
          if (v50)
          {
            __break(1u);
          }

          else
          {
            *(v81 + v123) = v125;
            v126 = sub_20E31D9E8(v152, v148);
            v128 = v127;
            sub_20E071080(v122, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
            sub_20E071080(v120, type metadata accessor for TranscriptProtoStatementOutcome);
            sub_20E071080(v91, type metadata accessor for TranscriptProtoStatementResultPayload);
            sub_20E071080(v80, type metadata accessor for TranscriptProtoStatementResult);
            *v81 = v152[0];
            *(v81 + 8) = v126;
            *(v81 + 16) = v128;
          }

          return result;
        }

        sub_20E071080(v122, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        sub_20E071080(v120, type metadata accessor for TranscriptProtoStatementOutcome);
        sub_20E071080(v91, type metadata accessor for TranscriptProtoStatementResultPayload);
        sub_20E071080(v80, type metadata accessor for TranscriptProtoStatementResult);
        v102 = v115;
        v101 = type metadata accessor for TranscriptProtoStatementOutcomeEnum;
        return sub_20E071080(v102, v101);
      }

LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

LABEL_28:
    v43 = v142;
    sub_20E071134(v45, v142, type metadata accessor for TranscriptProtoSystemResponse);
    v68 = v151 + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result;
    swift_beginAccess();
    v69 = type metadata accessor for RequestEventResult(0);
    v70 = *(v69 + 48);
    v71 = *(v68 + v70);
    v50 = __OFADD__(v71, 1);
    v72 = v71 + 1;
    v45 = v145;
    if (!v50)
    {
      v73 = v69;
      *(v68 + v70) = v72;
      v74 = *v43;
      if (*(*v43 + 16))
      {
        v75 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(0) - 8);
        v76 = v74 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
        v77 = v131;
        sub_20E0486F4(v76, v131, &qword_27C863BA8, &unk_20E345F00);
        if ((*(v143 + 48))(v77, 1, v144) != 1)
        {
          v118 = v77;
          v119 = v77;
          v78 = v133;
          sub_20E0486F4(v118, v133, &qword_27C863BA0, &unk_20E325F20);
          sub_20E071080(v119, type metadata accessor for TranscriptProtoStatementOutcome);
          goto LABEL_57;
        }

        sub_20E04875C(v77, &qword_27C863BA8, &unk_20E345F00);
      }

      v78 = v133;
      (*(v132 + 56))(v133, 1, 1, v45);
LABEL_57:
      swift_beginAccess();
      sub_20E05EC5C(v78, v68 + *(v73 + 24), &qword_27C863BA0, &unk_20E325F20);
      swift_endAccess();
      v101 = type metadata accessor for TranscriptProtoSystemResponse;
      v102 = v43;
      return sub_20E071080(v102, v101);
    }

    goto LABEL_67;
  }

  if (result == 13)
  {
    sub_20E071080(v45, type metadata accessor for TranscriptProtoPayloadEnum);
    v47 = v151 + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result;
    swift_beginAccess();
    result = type metadata accessor for RequestEventResult(0);
    v48 = result[11];
    v79 = *(v47 + v48);
    v50 = __OFADD__(v79, 1);
    v51 = v79 + 1;
    if (v50)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    goto LABEL_34;
  }

  if (result != 16)
  {
    goto LABEL_38;
  }

  sub_20E071080(v45, type metadata accessor for TranscriptProtoPayloadEnum);
  v47 = v151 + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result;
  swift_beginAccess();
  result = type metadata accessor for RequestEventResult(0);
  v48 = result[8];
  v58 = *(v47 + v48);
  v50 = __OFADD__(v58, 1);
  v51 = v58 + 1;
  if (!v50)
  {
    goto LABEL_34;
  }

  __break(1u);
LABEL_22:
  sub_20E071134(v45, v39, type metadata accessor for TranscriptProtoPlan);
  v59 = v151 + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result;
  swift_beginAccess();
  v60 = type metadata accessor for RequestEventResult(0);
  v61 = *(v60 + 28);
  v62 = *(v59 + v61);
  v50 = __OFADD__(v62, 1);
  v63 = v62 + 1;
  if (v50)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v64 = v60;
  *(v59 + v61) = v63;
  sub_20E31FCC4(v39, v31);
  sub_20E071080(v39, type metadata accessor for TranscriptProtoPlan);
  v65 = v147;
  v66 = v149;
  if ((*(v147 + 48))(v31, 1, v149) == 1)
  {
    return sub_20E04875C(v31, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E071134(v31, v36, type metadata accessor for TranscriptProtoStatementID);
  v103 = v136;
  sub_20E071134(v36, v136, type metadata accessor for TranscriptProtoStatementID);
  (*(v65 + 56))(v103, 0, 1, v66);
  swift_beginAccess();
  sub_20E05EC5C(v103, v59 + *(v64 + 76), &qword_27C8639D0, &unk_20E33C230);
  return swift_endAccess();
}

void sub_20E0706C0(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v32 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v32 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  v20 = type metadata accessor for RequestEventResult(0);
  if (*&a1[v20[8]] >= 1)
  {
    v21 = xmmword_20E325ED0;
LABEL_3:
    *a2 = v21;
LABEL_4:
    v22 = 2;
LABEL_5:
    *(a2 + 16) = v22;
    return;
  }

  if (*&a1[v20[15]] < 1 && *&a1[v20[16]] < 1)
  {
    if (*&a1[v20[12]] < 1)
    {
      if (*&a1[v20[17]] >= 1)
      {
        v21 = xmmword_20E325EC0;
        goto LABEL_3;
      }

LABEL_18:
      v21 = xmmword_20E325EB0;
      goto LABEL_3;
    }

    sub_20E0486F4(&a1[v20[6]], v6, &qword_27C863BA0, &unk_20E325F20);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_20E04875C(v6, &qword_27C863BA0, &unk_20E325F20);
      if (qword_280E12B88 != -1)
      {
        swift_once();
      }

      v23 = sub_20E3227C0();
      __swift_project_value_buffer(v23, qword_280E12C48);
      v24 = sub_20E3227B0();
      v25 = sub_20E322A40();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_20E031000, v24, v25, "Response generated without valid statement outcome, setting request status to 'unknown'", v26, 2u);
        MEMORY[0x20F32CA80](v26, -1, -1);
      }

      goto LABEL_18;
    }

    sub_20E071134(v6, v19, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E071018(v19, v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_20E071080(v19, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      sub_20E071080(v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      *a2 = 0;
      *(a2 + 8) = 0;
      goto LABEL_4;
    }

    sub_20E071080(v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E071018(v19, v14, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_20E071080(v19, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      sub_20E071080(v14, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      goto LABEL_8;
    }

    sub_20E071080(v14, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E071018(v19, v11, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload > 8)
      {
        if (EnumCaseMultiPayload != 9)
        {
          if (EnumCaseMultiPayload != 10)
          {
            v29 = 0xED00006D61657274;
            v30 = 0x5374657070696E53;
            goto LABEL_48;
          }

          v30 = 0xD000000000000013;
          v31 = "ValueDisambiguation";
          goto LABEL_46;
        }

        v29 = 0xE700000000000000;
        v30 = 0x6572756C696146;
      }

      else if (EnumCaseMultiPayload == 6)
      {
        v29 = 0x800000020E35A810;
        v30 = 0xD00000000000001BLL;
      }

      else
      {
        if (EnumCaseMultiPayload != 7)
        {
          v28 = "ToolDisambiguation";
          goto LABEL_44;
        }

        v29 = 0x800000020E35A7F0;
        v30 = 0xD000000000000011;
      }
    }

    else if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v29 = 0x800000020E35A870;
        v30 = 0xD000000000000015;
      }

      else
      {
        if (EnumCaseMultiPayload != 4)
        {
          v30 = 0xD000000000000013;
          v31 = "ParameterNotAllowed";
          goto LABEL_46;
        }

        v29 = 0x800000020E35A850;
        v30 = 0xD000000000000017;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v28 = "ActionConfirmation";
LABEL_44:
          v29 = (v28 - 32) | 0x8000000000000000;
          v30 = 0xD000000000000012;
          goto LABEL_48;
        }

        v30 = 0xD000000000000013;
        v31 = "ParameterNeedsValue";
LABEL_46:
        v29 = (v31 - 32) | 0x8000000000000000;
        goto LABEL_48;
      }

      v29 = 0xE700000000000000;
      v30 = 0x73736563637553;
    }

LABEL_48:
    sub_20E071080(v19, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E071080(v11, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    *a2 = v30;
    *(a2 + 8) = v29;
    v22 = 1;
    goto LABEL_5;
  }

LABEL_8:
  *a2 = *a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

uint64_t sub_20E070CEC()
{
  sub_20E071080(v0 + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result, type metadata accessor for RequestEventResult);

  return swift_deallocClassInstance();
}

uint64_t sub_20E070D8C(uint64_t a1)
{
  result = type metadata accessor for RequestEventResult(319);
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

void sub_20E070E64(uint64_t a1)
{
  sub_20E070FC4(319, qword_280E07BD0, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  if (v1 <= 0x3F)
  {
    sub_20E070F74();
    if (v2 <= 0x3F)
    {
      sub_20E070FC4(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E070F74()
{
  if (!qword_280E12B68)
  {
    v0 = sub_20E3229D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280E12B68);
    }
  }
}

void sub_20E070FC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20E322A90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20E071018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E071080(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E071134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E07119C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t PerfMetricsDefinitions.dateStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20E322010();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PerfMetricsDefinitions.dateStamp.setter(uint64_t a1)
{
  v3 = sub_20E322010();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PerfMetricsDefinitions.useCase.getter()
{
  v1 = *(v0 + *(type metadata accessor for PerfMetricsDefinitions(0) + 20));

  return v1;
}

uint64_t type metadata accessor for PerfMetricsDefinitions(uint64_t a1)
{
  result = qword_27C863FD0;
  if (!qword_27C863FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PerfMetricsDefinitions.useCase.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PerfMetricsDefinitions(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PerfMetricsDefinitions.completionStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PerfMetricsDefinitions(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t PerfMetricsDefinitions.completionStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PerfMetricsDefinitions(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t PerfMetricsDefinitions.planGenerationLatencyNanoSec.setter(uint64_t a1)
{
  result = type metadata accessor for PerfMetricsDefinitions(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t PerfMetricsDefinitions.actionGenerationLatencyNanoSec.setter(uint64_t a1)
{
  result = type metadata accessor for PerfMetricsDefinitions(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t PerfMetricsDefinitions.executionLatencyNanoSec.setter(uint64_t a1)
{
  result = type metadata accessor for PerfMetricsDefinitions(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t _s23LighthouseDataProcessor07RequestB0V9timestamp10Foundation4DateVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20E322010();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s23LighthouseDataProcessor07RequestB0V9timestamp10Foundation4DateVvs_0(uint64_t a1)
{
  v3 = sub_20E322010();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_20E0717C0(uint64_t a1)
{
  result = sub_20E322010();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_20E071854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FE0, &unk_20E359F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E326010;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x800000020E35A990;
  *(inited + 48) = sub_20E322860();
  *(inited + 56) = 0x6D614E726F727265;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = sub_20E322860();
  *(inited + 80) = 0x6E6F73616572;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = sub_20E322860();
  v7 = sub_20E048C98(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FE8, &unk_20E326060);
  swift_arrayDestroy();
  return v7;
}

void _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = v5 >> 4;
  if (v5 >> 4 <= 3)
  {
    if (v5 >> 4 <= 1)
    {
      if (v6)
      {
        v7 = 0x800000020E35AA50;
        v8 = 0x800000020E359FB0;
        v9 = 0xD000000000000010;
        v10 = 0xD00000000000001ALL;
      }

      else
      {
        v7 = 0xEE00736575737349;
        v9 = 0x617461444D424549;
        if (*a1 > 2u)
        {
          if (v5 == 3)
          {
            v8 = 0xEF64616F6C796150;
            v10 = 0x746E6576456C696ELL;
          }

          else
          {
            if (v5 == 4)
            {
              v14 = "exprIDConversionIssue";
            }

            else
            {
              v14 = "nilMonotonicTimeStamp";
            }

            v8 = (v14 - 32) | 0x8000000000000000;
            v10 = 0xD000000000000015;
          }
        }

        else if (*a1)
        {
          if (v5 == 1)
          {
            v8 = 0xED00006D61657274;
            v10 = 0x5364696C61766E69;
          }

          else
          {
            v8 = 0x800000020E359F40;
            v10 = 0xD000000000000016;
          }
        }

        else
        {
          v8 = 0xEE0079646F42746ELL;
          v10 = 0x6576457974706D65;
        }
      }

      goto LABEL_49;
    }

    if (v6 == 2)
    {
      v7 = 0x800000020E35AA30;
      if (v5)
      {
        v8 = 0x800000020E359FF0;
        v10 = 0xD000000000000015;
LABEL_33:
        v9 = 0xD000000000000011;
        goto LABEL_49;
      }

      v12 = "jsonEncodingError";
    }

    else
    {
      v7 = 0x800000020E35A450;
      v12 = "jsonDecodingError";
    }

    v8 = (v12 - 32) | 0x8000000000000000;
    v10 = 0xD000000000000011;
    goto LABEL_33;
  }

  if (v5 >> 4 <= 5)
  {
    if (v6 == 4)
    {
      v7 = 0x800000020E35AA10;
      if (v5)
      {
        v8 = 0x800000020E35A050;
        v9 = 0xD000000000000012;
        v10 = 0xD000000000000019;
      }

      else
      {
        v8 = 0x800000020E35A030;
        v9 = 0xD000000000000012;
        v10 = 0xD000000000000014;
      }
    }

    else
    {
      v7 = 0x800000020E35A9F0;
      v9 = 0xD000000000000019;
      v8 = 0xE900000000000044;
      v10 = 0x496C6F6F546C696ELL;
    }
  }

  else if (v6 == 6)
  {
    v11 = v5 & 0xF;
    v7 = 0x800000020E35A9D0;
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v15 = "undefinedIFSessionError";
      }

      else
      {
        if (v11 == 3)
        {
          v8 = 0x800000020E35A0E0;
          v9 = 0xD00000000000001CLL;
          v10 = 0xD000000000000024;
          goto LABEL_49;
        }

        v15 = "metaDataConversionError";
      }

      v8 = (v15 - 32) | 0x8000000000000000;
      v10 = 0xD000000000000017;
      v9 = 0xD00000000000001CLL;
      goto LABEL_49;
    }

    if (v11)
    {
      v8 = 0x800000020E35A0A0;
      v10 = 0xD000000000000013;
      v9 = 0xD00000000000001CLL;
    }

    else
    {
      v8 = 0x800000020E35A080;
      v9 = 0xD00000000000001CLL;
      v10 = 0xD00000000000001DLL;
    }
  }

  else if (v6 == 7)
  {
    v7 = 0x800000020E35A9B0;
    v8 = 0x800000020E35A130;
    v9 = 0xD00000000000001ALL;
    v10 = 0xD00000000000001BLL;
  }

  else
  {
    v9 = 0x745372657070614DLL;
    v13 = v5 & 0xF;
    if (v13)
    {
      if (v13 == 1)
      {
        v8 = 0x800000020E35A170;
        v10 = 0xD000000000000013;
      }

      else
      {
        v8 = 0x800000020E35A190;
        v10 = 0xD000000000000014;
      }
    }

    else
    {
      v8 = 0x800000020E35A150;
      v10 = 0xD000000000000012;
    }

    v7 = 0xEB00000000737461;
  }

LABEL_49:
  v16 = sub_20E322860();
  v17 = swift_allocObject();
  v17[2] = v9;
  v17[3] = v7;
  v17[4] = v10;
  v17[5] = v8;
  v17[6] = a2;
  v17[7] = a3;
  v19[4] = sub_20E06AE28;
  v19[5] = v17;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_20E3205CC;
  v19[3] = &block_descriptor_0;
  v18 = _Block_copy(v19);

  AnalyticsSendEventLazy();
  _Block_release(v18);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t IFSELFMessageEventWrapper.bridgedMonotonicTimeStamp.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IFSELFMessageEventWrapper(0) + 20);

  return sub_20E071F60(a1, v3);
}

uint64_t sub_20E071F60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FF0, &unk_20E326070);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t IFSELFMessageEventWrapper.monotonicTimeStampForSELF.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20E322770();
  v25 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FF8, &qword_20E359AF0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FF0, &unk_20E326070);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v24 - v16);
  v18 = type metadata accessor for IFSELFMessageEventWrapper(0);
  sub_20E0486F4(v1 + *(v18 + 20), v17, &qword_27C863FF0, &unk_20E326070);
  v19 = type metadata accessor for IFSELFMessageEventWrapper.BridgedMonotonicTimeStamp(0);
  if ((*(*(v19 - 8) + 48))(v17, 1, v19) == 1)
  {
    goto LABEL_2;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (*v17)
    {
      return MonotonicTimestamp.init(biomeTimestamp:)(*v17, a1);
    }

LABEL_2:
    v20 = sub_20E3220D0();
    return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
  }

  sub_20E0723E4(v17, v14);
  sub_20E0486F4(v14, v12, &qword_27C863FF8, &qword_20E359AF0);
  v22 = v25;
  if ((*(v25 + 48))(v12, 1, v3) == 1)
  {
    sub_20E04875C(v14, &qword_27C863FF8, &qword_20E359AF0);
    sub_20E04875C(v12, &qword_27C863FF8, &qword_20E359AF0);
    goto LABEL_2;
  }

  (*(v22 + 32))(v8, v12, v3);
  (*(v22 + 16))(v6, v8, v3);
  MonotonicTimestamp.init(biomeTimestamp:)(v6);
  (*(v22 + 8))(v8, v3);
  sub_20E04875C(v14, &qword_27C863FF8, &qword_20E359AF0);
  v23 = sub_20E3220D0();
  return (*(*(v23 - 8) + 56))(a1, 0, 1, v23);
}

uint64_t sub_20E0723E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FF8, &qword_20E359AF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id IFSELFMessageEventWrapper.init()@<X0>(char *a1@<X8>)
{
  v2 = *(type metadata accessor for IFSELFMessageEventWrapper(0) + 20);
  v3 = type metadata accessor for IFSELFMessageEventWrapper.BridgedMonotonicTimeStamp(0);
  v5 = *(*(v3 - 8) + 56);
  v5(&a1[v2], 1, 1, v3);
  result = [objc_allocWithZone(MEMORY[0x277D5AA68]) init];
  if (result)
  {
    *a1 = result;
    sub_20E04875C(&a1[v2], &qword_27C863FF0, &unk_20E326070);

    return (v5)(&a1[v2], 1, 1, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SwiftSELFMapper.__allocating_init(stream:bookmarkProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_20E073D60(a1, a2, a3);

  return v6;
}

uint64_t SwiftSELFMapper.init(stream:bookmarkProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_20E073D60(a1, a2, a3);

  return v3;
}

uint64_t sub_20E0725D8()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_20E072620, 0, 0);
}

uint64_t sub_20E072620()
{
  v18 = v0;
  if (sub_20E067774(*(v0[2] + 32), *(v0[3] + 80), *(v0[2] + 24), *(v0[3] + 80), *(v0[2] + 32), *(v0[3] + 88), *(v0[2] + 40)) && (__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C864000, &unk_20E33C0C0), v12 = sub_20E322C10(), , v12))
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v13 = sub_20E3227C0();
    __swift_project_value_buffer(v13, qword_280E12C48);

    v14 = sub_20E3227B0();
    v15 = sub_20E322A40();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = sub_20E3229C0();

      _os_log_impl(&dword_20E031000, v14, v15, "#SwiftSELFMapper Number of Biome events loaded: %ld", v16, 0xCu);
      MEMORY[0x20F32CA80](v16, -1, -1);
    }

    else
    {
    }

    v9 = v12;
  }

  else
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v1 = sub_20E3227C0();
    __swift_project_value_buffer(v1, qword_280E12C48);

    v2 = sub_20E3227B0();
    v3 = sub_20E322A40();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v17 = v5;
      *v4 = 136315138;
      v6 = sub_20E322E70();
      v8 = sub_20E31B6C4(v6, v7, &v17);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_20E031000, v2, v3, "#SwiftSELFMapper event loaded from %s are Nil!", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x20F32CA80](v5, -1, -1);
      MEMORY[0x20F32CA80](v4, -1, -1);
    }

    v9 = sub_20E3229A0();
  }

  v10 = v0[1];

  return v10(v9);
}

uint64_t SwiftSELFMapper.deinit()
{

  return v0;
}

uint64_t SwiftSELFMapper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_20E072A28(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_20E074FEC;

  return sub_20E0725D8();
}

uint64_t ObjCSELFMapper.__allocating_init(bmStreamIdentifier:bookmarkProvider:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ObjCSELFMapper.init(bmStreamIdentifier:bookmarkProvider:)(a1, a2);
  return v4;
}

void *ObjCSELFMapper.init(bmStreamIdentifier:bookmarkProvider:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v79 = a1;
  v88[1] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90);
  MEMORY[0x28223BE20](v5 - 8);
  v78 = &v75 - v6;
  v7 = sub_20E322010();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v77 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v75 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v80 = &v75 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v75 - v19;
  v3[2] = a2;

  v81 = a2;
  DataProcessorBookmarkProvider.lastCollectionDate.getter(v20);
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v21 = sub_20E3227C0();
  v22 = __swift_project_value_buffer(v21, qword_280E12C48);
  v23 = *(v8 + 16);
  v82 = v20;
  v86 = v23;
  v23(v18, v20, v7);
  v85 = v22;
  v24 = sub_20E3227B0();
  v25 = sub_20E322A40();
  v26 = os_log_type_enabled(v24, v25);
  v83 = v8;
  v84 = v3;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v88[0] = v28;
    *v27 = 136315138;
    sub_20E074360();
    v29 = sub_20E322D50();
    v76 = v13;
    v31 = v30;
    v87 = *(v8 + 8);
    v87(v18, v7);
    v32 = sub_20E31B6C4(v29, v31, v88);
    v13 = v76;

    *(v27 + 4) = v32;
    _os_log_impl(&dword_20E031000, v24, v25, "#ObjCSELFMapper Original bookmark start date: collecting from %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x20F32CA80](v28, -1, -1);
    MEMORY[0x20F32CA80](v27, -1, -1);
  }

  else
  {

    v87 = *(v8 + 8);
    v87(v18, v7);
  }

  v33 = v80;
  sub_20E322000();
  v86(v13, v33, v7);
  v34 = sub_20E3227B0();
  v35 = sub_20E322A40();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v88[0] = v37;
    *v36 = 136315138;
    sub_20E074360();
    v38 = sub_20E322D50();
    v39 = v13;
    v41 = v40;
    v42 = v83;
    v87(v39, v7);
    v43 = sub_20E31B6C4(v38, v41, v88);

    *(v36 + 4) = v43;
    v44 = v35;
    v45 = v42;
    _os_log_impl(&dword_20E031000, v34, v44, "#ObjCSELFMapper Bookmark: updating lastCollectionDate to current Date %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x20F32CA80](v37, -1, -1);
    MEMORY[0x20F32CA80](v36, -1, -1);
  }

  else
  {

    v45 = v83;
    v87(v13, v7);
  }

  v46 = v84;
  v47 = v77;
  v48 = v78;
  v49 = v86;
  v86(v77, v33, v7);

  DataProcessorBookmarkProvider.lastCollectionDate.setter(v47);

  v49(v48, v33, v7);
  (*(v45 + 56))(v48, 0, 1, v7);
  v50 = v82;
  v51 = sub_20E321FB0();
  if ((*(v45 + 48))(v48, 1, v7) == 1)
  {
    v52 = 0;
  }

  else
  {
    v52 = sub_20E321FB0();
    v87(v48, v7);
  }

  v53 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v51 endDate:v52 maxEvents:0 lastN:0 reversed:0];

  v54 = v79;
  v46[3] = v53;
  v46[4] = v54;
  v55 = v54;
  v56 = BiomeLibrary();
  v88[0] = 0;
  v57 = [v56 streamWithIdentifier:v55 error:v88];
  swift_unknownObjectRelease();
  v58 = v88[0];
  if (v57)
  {

    v59 = v87;
    v87(v33, v7);
    v59(v50, v7);
  }

  else
  {
    v60 = v58;
    v61 = sub_20E321EF0();

    swift_willThrow();
    v62 = v55;
    v63 = sub_20E3227B0();
    v64 = sub_20E322A50();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v88[0] = v66;
      *v65 = 136315138;
      v67 = sub_20E322890();
      v69 = v33;
      v70 = sub_20E31B6C4(v67, v68, v88);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_20E031000, v63, v64, "#ObjCSELFMapper stream info cannot be obtained from bmStreamIdentifier %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      v71 = v66;
      v46 = v84;
      MEMORY[0x20F32CA80](v71, -1, -1);
      MEMORY[0x20F32CA80](v65, -1, -1);

      v72 = v87;
      v87(v69, v7);
      v73 = v82;
    }

    else
    {

      v72 = v87;
      v87(v33, v7);
      v73 = v50;
    }

    v72(v73, v7);
    v57 = 0;
  }

  v46[5] = v57;
  return v46;
}

uint64_t sub_20E073334()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_20E07337C, 0, 0);
}

uint64_t sub_20E07337C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v1 + 32);
  v0[4] = v3;
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  v0[5] = v5;
  v0[6] = *(v2 + 80);
  *v5 = v0;
  v5[1] = sub_20E073460;

  return (sub_20E0685A0)(v3, v4, 0xD000000000000022, 0x800000020E35A530);
}

uint64_t sub_20E073460(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_20E073560, 0, 0);
}

uint64_t sub_20E073560()
{
  v17 = v0;
  if (*(v0 + 56) && (sub_20E074574(0, &qword_280E03EF8, 0x277CF1940), v1 = sub_20E322C10(), , v1))
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v2 = sub_20E3227C0();
    __swift_project_value_buffer(v2, qword_280E12C48);

    v3 = sub_20E3227B0();
    v4 = sub_20E322A40();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = sub_20E3229C0();

      _os_log_impl(&dword_20E031000, v3, v4, "#ObjCSELFMapper Number of Biome events loaded: %ld", v5, 0xCu);
      MEMORY[0x20F32CA80](v5, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v6 = sub_20E3227C0();
    __swift_project_value_buffer(v6, qword_280E12C48);

    v7 = sub_20E3227B0();
    v8 = sub_20E322A40();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315138;
      v11 = sub_20E322890();
      v13 = sub_20E31B6C4(v11, v12, &v16);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_20E031000, v7, v8, "#ObjCSELFMapper event loaded from %s are Nil!", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x20F32CA80](v10, -1, -1);
      MEMORY[0x20F32CA80](v9, -1, -1);
    }

    v1 = sub_20E3229A0();
  }

  v14 = *(v0 + 8);

  return v14(v1);
}

id *ObjCSELFMapper.deinit()
{

  return v0;
}

uint64_t ObjCSELFMapper.__deallocating_deinit()
{
  ObjCSELFMapper.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_20E073944(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_20E0739D8;

  return sub_20E073334();
}

uint64_t sub_20E0739D8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_20E073AEC(uint64_t *a1)
{
  v3 = *a1;
  v6 = (*(**v1 + 136) + **(**v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20E073C10;

  return v6(v3);
}

uint64_t sub_20E073C10(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void *sub_20E073D10(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_20E073D30@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_20E073D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a1;
  v65 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v58 - v6;
  v8 = sub_20E322010();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v60 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v58 = &v58 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v66 = &v58 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v58 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v58 - v19;
  v68 = v3;
  *(v3 + 16) = a3;

  DataProcessorBookmarkProvider.lastCollectionDate.getter(v20);
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v21 = sub_20E3227C0();
  __swift_project_value_buffer(v21, qword_280E12C48);
  v22 = *(v9 + 16);
  v61 = v20;
  v67 = v22;
  v22(v18, v20, v8);
  v23 = sub_20E3227B0();
  v24 = sub_20E322A40();
  v25 = os_log_type_enabled(v23, v24);
  v62 = v7;
  v63 = v9;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v69 = v27;
    *v26 = 136315138;
    sub_20E074360();
    v28 = sub_20E322D50();
    v29 = v9;
    v31 = v30;
    v59 = *(v29 + 8);
    v59(v18, v8);
    v32 = sub_20E31B6C4(v28, v31, &v69);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_20E031000, v23, v24, "#SwiftSELFMapper Original bookmark start date: collecting from %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x20F32CA80](v27, -1, -1);
    MEMORY[0x20F32CA80](v26, -1, -1);
  }

  else
  {

    v59 = *(v9 + 8);
    v59(v18, v8);
  }

  v33 = v66;
  sub_20E322000();
  v34 = v58;
  v67(v58, v33, v8);
  v35 = sub_20E3227B0();
  v36 = sub_20E322A40();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v69 = v38;
    *v37 = 136315138;
    sub_20E074360();
    v39 = sub_20E322D50();
    v41 = v40;
    v42 = v63;
    v43 = v34;
    v44 = v59;
    v59(v43, v8);
    v45 = sub_20E31B6C4(v39, v41, &v69);
    v46 = v42;
    v33 = v66;

    *(v37 + 4) = v45;
    _os_log_impl(&dword_20E031000, v35, v36, "#SwiftSELFMapper Bookmark: updating lastCollectionDate to current Date %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x20F32CA80](v38, -1, -1);
    MEMORY[0x20F32CA80](v37, -1, -1);
  }

  else
  {

    v46 = v63;
    v47 = v34;
    v44 = v59;
    v59(v47, v8);
  }

  v48 = v62;
  v49 = v67;
  v50 = v60;
  v67(v60, v33, v8);

  DataProcessorBookmarkProvider.lastCollectionDate.setter(v50);

  v49(v48, v33, v8);
  (*(v46 + 56))(v48, 0, 1, v8);
  v51 = v61;
  v52 = sub_20E321FB0();
  if ((*(v46 + 48))(v48, 1, v8) == 1)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_20E321FB0();
    v44(v48, v8);
  }

  v54 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v52 endDate:v53 maxEvents:0 lastN:0 reversed:0];

  v44(v33, v8);
  v44(v51, v8);
  result = v68;
  v57 = v64;
  v56 = v65;
  *(v68 + 24) = v54;
  *(result + 32) = v57;
  *(result + 40) = v56;
  return result;
}

unint64_t sub_20E074360()
{
  result = qword_280E12B30;
  if (!qword_280E12B30)
  {
    sub_20E322010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E12B30);
  }

  return result;
}

void sub_20E0743E0(uint64_t a1)
{
  sub_20E074574(319, &qword_280E12B58, 0x277D5AA68);
  if (v1 <= 0x3F)
  {
    sub_20E074520(319, qword_280E0E610, type metadata accessor for IFSELFMessageEventWrapper.BridgedMonotonicTimeStamp);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E074490(uint64_t a1)
{
  sub_20E074520(319, &qword_280E040E0, MEMORY[0x277D20580]);
  if (v1 <= 0x3F)
  {
    sub_20E048BF4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_20E074520(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20E322A90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20E074574(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t dispatch thunk of SELFMapperProtocol.loadBiomeEvent()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20E04CC18;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SELFMapperProtocol.adaptToSELF(events:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20E074810;

  return v9(a1, a2, a3);
}

uint64_t sub_20E074810(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of SwiftSELFMapper.loadBiomeEvent()()
{
  v4 = (*(*v0 + 128) + **(*v0 + 128));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20E074FF0;

  return v4();
}

uint64_t dispatch thunk of SwiftSELFMapper.adaptToSELF(events:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20E074FF0;

  return v6(a1);
}

uint64_t dispatch thunk of ObjCSELFMapper.loadBiomeEvent()()
{
  v4 = (*(*v0 + 128) + **(*v0 + 128));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20E074FF0;

  return v4();
}

uint64_t dispatch thunk of ObjCSELFMapper.adaptToSELF(events:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20E074EBC;

  return v6(a1);
}

uint64_t sub_20E074EBC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

id sub_20E074FF8(void *a1)
{
  v442 = a1;
  v434 = type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
  v401 = *(v434 - 1);
  MEMORY[0x28223BE20](v434);
  v439 = &v375 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v402 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  MEMORY[0x28223BE20](v402);
  v425 = (&v375 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for TranscriptProtoFormatExpression(0);
  MEMORY[0x28223BE20](v3 - 8);
  v424 = (&v375 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TranscriptProtoPayloadExpression(0);
  MEMORY[0x28223BE20](v5 - 8);
  v423 = (&v375 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TranscriptProtoOpenExpression(0);
  MEMORY[0x28223BE20](v7 - 8);
  v418 = &v375 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TranscriptProtoCancelExpression(0);
  MEMORY[0x28223BE20](v9 - 8);
  v417 = &v375 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TranscriptProtoRejectExpression(0);
  MEMORY[0x28223BE20](v11 - 8);
  v416 = &v375 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TranscriptProtoUndoExpression(0);
  MEMORY[0x28223BE20](v13 - 8);
  v415 = &v375 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v400 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v419 = *(v400 - 8);
  MEMORY[0x28223BE20](v400);
  v433 = (&v375 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for TranscriptProtoResolveToolExpression(0);
  MEMORY[0x28223BE20](v16 - 8);
  v420 = (&v375 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for TranscriptProtoPickOneExpression(0);
  MEMORY[0x28223BE20](v18 - 8);
  v414 = &v375 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TranscriptProtoSearchExpression(0);
  MEMORY[0x28223BE20](v20 - 8);
  v410 = &v375 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TranscriptProtoConfirmExpression(0);
  MEMORY[0x28223BE20](v22 - 8);
  v413 = &v375 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v399 = type metadata accessor for TranscriptProtoPickExpression(0);
  MEMORY[0x28223BE20](v399);
  v411 = (&v375 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for TranscriptProtoSayExpression(0);
  MEMORY[0x28223BE20](v25 - 8);
  v421 = (&v375 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  MEMORY[0x28223BE20](v27 - 8);
  v398 = &v375 - v28;
  v396 = type metadata accessor for TranscriptProtoCallExpression(0);
  MEMORY[0x28223BE20](v396);
  v412 = (&v375 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864150, &qword_20E3262A0);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v427 = &v375 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v437 = (&v375 - v33);
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v378 = *(updated - 8);
  v34 = MEMORY[0x28223BE20](updated);
  v436 = &v375 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v428 = &v375 - v36;
  v394 = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  MEMORY[0x28223BE20](v394);
  v422 = (&v375 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v397 = type metadata accessor for TranscriptProtoIndexExpression(0);
  MEMORY[0x28223BE20](v397);
  v409 = &v375 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v40 = MEMORY[0x28223BE20](v39 - 8);
  v432 = (&v375 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = MEMORY[0x28223BE20](v40);
  v431 = (&v375 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v384 = &v375 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v430 = (&v375 - v47);
  v48 = MEMORY[0x28223BE20](v46);
  v383 = &v375 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v393 = (&v375 - v51);
  v52 = MEMORY[0x28223BE20](v50);
  v392 = (&v375 - v53);
  v54 = MEMORY[0x28223BE20](v52);
  v391 = (&v375 - v55);
  v56 = MEMORY[0x28223BE20](v54);
  v390 = (&v375 - v57);
  v58 = MEMORY[0x28223BE20](v56);
  v389 = (&v375 - v59);
  v60 = MEMORY[0x28223BE20](v58);
  v387 = (&v375 - v61);
  v62 = MEMORY[0x28223BE20](v60);
  v388 = (&v375 - v63);
  v64 = MEMORY[0x28223BE20](v62);
  v429 = &v375 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v382 = &v375 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v426 = (&v375 - v69);
  v70 = MEMORY[0x28223BE20](v68);
  v385 = (&v375 - v71);
  v72 = MEMORY[0x28223BE20](v70);
  v395 = (&v375 - v73);
  v74 = MEMORY[0x28223BE20](v72);
  v386 = (&v375 - v75);
  v76 = MEMORY[0x28223BE20](v74);
  v405 = (&v375 - v77);
  MEMORY[0x28223BE20](v76);
  v406 = &v375 - v78;
  v441 = type metadata accessor for TranscriptProtoStatementID(0);
  v435 = *(v441 - 8);
  v79 = MEMORY[0x28223BE20](v441);
  v381 = &v375 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = MEMORY[0x28223BE20](v79);
  v380 = &v375 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v379 = &v375 - v84;
  MEMORY[0x28223BE20](v83);
  v404 = (&v375 - v85);
  v86 = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(0);
  MEMORY[0x28223BE20](v86 - 8);
  v377 = (&v375 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864158, &qword_20E3262A8);
  MEMORY[0x28223BE20](v88 - 8);
  v90 = &v375 - v89;
  v91 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  v403 = *(v91 - 8);
  v92 = MEMORY[0x28223BE20](v91);
  v94 = &v375 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v92);
  v407 = &v375 - v95;
  v96 = type metadata accessor for TranscriptProtoValueExpression(0);
  MEMORY[0x28223BE20](v96 - 8);
  v408 = (&v375 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v99 = MEMORY[0x28223BE20](v98 - 8);
  v101 = &v375 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v99);
  v440 = &v375 - v102;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864168, &unk_20E33C440);
  MEMORY[0x28223BE20](v103 - 8);
  v105 = &v375 - v104;
  v106 = type metadata accessor for TranscriptProtoExpression(0);
  v107 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v109 = (&v375 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20E0486F4(v442, v105, &qword_27C864168, &unk_20E33C440);
  if ((*(v107 + 48))(v105, 1, v106) == 1)
  {
    v110 = &qword_27C864168;
    v111 = &unk_20E33C440;
    v112 = v105;
LABEL_7:
    sub_20E04875C(v112, v110, v111);
    return 0;
  }

  sub_20E078B74(v105, v109, type metadata accessor for TranscriptProtoExpression);
  v113 = [objc_allocWithZone(MEMORY[0x277D57E30]) init];
  if (!v113)
  {
    sub_20E078BDC(v109, type metadata accessor for TranscriptProtoExpression);
    return 0;
  }

  v442 = v113;
  v114 = v440;
  sub_20E0486F4(v109, v440, &qword_27C864160, &unk_20E33C410);
  v115 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v115 - 8) + 48))(v114, 1, v115) == 1)
  {
    sub_20E078BDC(v109, type metadata accessor for TranscriptProtoExpression);

LABEL_6:
    v110 = &qword_27C864160;
    v111 = &unk_20E33C410;
    v112 = v114;
    goto LABEL_7;
  }

  sub_20E0486F4(v114, v101, &qword_27C864160, &unk_20E33C410);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v117 = v408;
      sub_20E078B74(v101, v408, type metadata accessor for TranscriptProtoValueExpression);
      v118 = [objc_allocWithZone(MEMORY[0x277D58168]) init];
      v119 = v118;
      if (v118)
      {
        [v118 setExists_];
      }

      sub_20E0486F4(v117, v90, &qword_27C864158, &qword_20E3262A8);
      v120 = (*(v403 + 48))(v90, 1, v91);
      v121 = v407;
      if (v120 == 1)
      {
        sub_20E04875C(v90, &qword_27C864158, &qword_20E3262A8);
      }

      else
      {
        sub_20E078B74(v90, v407, type metadata accessor for TranscriptProtoValueExpressionEnum);
        sub_20E078B0C(v121, v94, type metadata accessor for TranscriptProtoValueExpressionEnum);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v289 = v377;
          sub_20E078B74(v94, v377, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
          if (qword_280E12B88 != -1)
          {
            swift_once();
          }

          v290 = sub_20E3227C0();
          __swift_project_value_buffer(v290, qword_280E12C48);
          v291 = sub_20E3227B0();
          v292 = sub_20E322A40();
          if (os_log_type_enabled(v291, v292))
          {
            v293 = v109;
            v294 = swift_slowAlloc();
            *v294 = 0;
            _os_log_impl(&dword_20E031000, v291, v292, "Converter - value expression type is array, processing statementIDs...", v294, 2u);
            v295 = v294;
            v109 = v293;
            MEMORY[0x20F32CA80](v295, -1, -1);
          }

          if (v119)
          {
            v296 = v119;
            v297 = sub_20E04F034(v289);
            [v296 setArray_];
          }

          sub_20E078BDC(v289, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
          v298 = v121;
        }

        else
        {
          sub_20E078BDC(v121, type metadata accessor for TranscriptProtoValueExpressionEnum);
          v298 = v94;
        }

        sub_20E078BDC(v298, type metadata accessor for TranscriptProtoValueExpressionEnum);
      }

      [v442 setValue_];

      v302 = type metadata accessor for TranscriptProtoValueExpression;
      goto LABEL_195;
    case 1u:
      v117 = v404;
      sub_20E078B74(v101, v404, type metadata accessor for TranscriptProtoStatementID);
      v214 = v406;
      sub_20E078B0C(v117, v406, type metadata accessor for TranscriptProtoStatementID);
      v215 = v435;
      v216 = v441;
      (*(v435 + 56))(v214, 0, 1, v441);
      v217 = [objc_allocWithZone(MEMORY[0x277D58078]) &off_277E1BB78];
      v218 = v405;
      sub_20E0486F4(v214, v405, &qword_27C8639D0, &unk_20E33C230);
      if ((*(v215 + 48))(v218, 1, v216) == 1)
      {
        sub_20E04875C(v214, &qword_27C8639D0, &unk_20E33C230);
        v214 = v218;
      }

      else
      {
        v299 = v109;
        v300 = *v218;
        sub_20E078BDC(v218, type metadata accessor for TranscriptProtoStatementID);
        v301 = v300;
        v109 = v299;
        [v217 setIndex_];
      }

      sub_20E04875C(v214, &qword_27C8639D0, &unk_20E33C230);
      [v442 setStatementId_];

      v302 = type metadata accessor for TranscriptProtoStatementID;
      goto LABEL_195;
    case 2u:
      v192 = [objc_allocWithZone(MEMORY[0x277D57F40]) &off_277E1BB78];
      v193 = v192;
      if (v192)
      {
        [v192 setExists_];
      }

      [v442 setPrefix_];
      goto LABEL_116;
    case 3u:
      v199 = [objc_allocWithZone(MEMORY[0x277D57E70]) &off_277E1BB78];
      v193 = v199;
      if (v199)
      {
        [v199 setExists_];
      }

      [v442 setInfix_];
      goto LABEL_116;
    case 4u:
      v159 = v109;
      v160 = v409;
      sub_20E078B74(v101, v409, type metadata accessor for TranscriptProtoIndexExpression);
      v161 = [objc_allocWithZone(MEMORY[0x277D57E68]) &off_277E1BB78];
      v162 = v442;
      [v442 setIndex_];

      v163 = [v162 index];
      if (v163)
      {
        v164 = v163;
        v165 = [objc_allocWithZone(MEMORY[0x277D58078]) &off_277E1BB78];
        v166 = v386;
        sub_20E0486F4(v160, v386, &qword_27C8639D0, &unk_20E33C230);
        if ((*(v435 + 48))(v166, 1, v441) == 1)
        {
          sub_20E04875C(v166, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v311 = *v166;
          sub_20E078BDC(v166, type metadata accessor for TranscriptProtoStatementID);
          [v165 setIndex_];
        }

        [v164 setPreviousStatementId_];
      }

      v312 = [v442 index];
      if (v312)
      {
        v313 = v312;
        v314 = *(v397 + 20);
        v315 = [objc_allocWithZone(MEMORY[0x277D58078]) &off_277E1BB78];
        v316 = v395;
        sub_20E0486F4(v160 + v314, v395, &qword_27C8639D0, &unk_20E33C230);
        if ((*(v435 + 48))(v316, 1, v441) == 1)
        {
          sub_20E04875C(v316, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v317 = *v316;
          sub_20E078BDC(v316, type metadata accessor for TranscriptProtoStatementID);
          [v315 setIndex_];
        }

        [v313 setStatementId_];
      }

      sub_20E078BDC(v160, type metadata accessor for TranscriptProtoIndexExpression);
      v318 = type metadata accessor for TranscriptProtoExpression;
      goto LABEL_217;
    case 5u:
      v221 = v422;
      sub_20E078B74(v101, v422, type metadata accessor for TranscriptProtoUpdateParametersExpression);
      v222 = [objc_allocWithZone(MEMORY[0x277D58150]) &off_277E1BB78];
      if (v222)
      {
        v223 = *(v394 + 20);
        v224 = objc_allocWithZone(MEMORY[0x277D58078]);
        v225 = v222;
        v226 = [v224 &off_277E1BB78];
        v227 = v221 + v223;
        v228 = v385;
        sub_20E0486F4(v227, v385, &qword_27C8639D0, &unk_20E33C230);
        v229 = *(v435 + 48);
        v435 += 48;
        v431 = v229;
        v230 = (v229)(v228, 1, v441);
        v376 = v109;
        if (v230 == 1)
        {
          sub_20E04875C(v228, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v328 = *v228;
          sub_20E078BDC(v228, type metadata accessor for TranscriptProtoStatementID);
          [v226 setIndex_];
        }

        v329 = v428;
        v430 = v222;
        [v225 setCallStatementId_];

        v330 = *v221;
        v443 = MEMORY[0x277D84F90];
        v331 = *(v330 + 16);
        v429 = v225;
        if (v331)
        {
          v332 = v330 + ((*(v378 + 80) + 32) & ~*(v378 + 80));
          v439 = *(v378 + 72);
          v433 = (v378 + 48);
          v434 = (v378 + 56);
          v333 = v225;
          v432 = MEMORY[0x277D84F90];
          v334 = v427;
          do
          {
            sub_20E078B0C(v332, v329, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
            v335 = v437;
            sub_20E078B0C(v329, v437, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
            v336 = updated;
            (*v434)(v335, 0, 1, updated);
            sub_20E0486F4(v335, v334, &qword_27C864150, &qword_20E3262A0);
            if ((*v433)(v334, 1, v336) == 1)
            {
              sub_20E04875C(v335, &qword_27C864150, &qword_20E3262A0);
              sub_20E078BDC(v329, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
              sub_20E04875C(v334, &qword_27C864150, &qword_20E3262A0);
            }

            else
            {
              v337 = v436;
              sub_20E078B74(v334, v436, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
              v338 = [objc_allocWithZone(MEMORY[0x277D58148]) init];
              if (v338)
              {
                v339 = v338;
                v340 = *(updated + 24);
                v341 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
                v342 = v436 + v340;
                v343 = v436;
                v344 = v426;
                sub_20E0486F4(v342, v426, &qword_27C8639D0, &unk_20E33C230);
                if ((v431)(v344, 1, v441) == 1)
                {
                  sub_20E04875C(v344, &qword_27C8639D0, &unk_20E33C230);
                }

                else
                {
                  v345 = *v344;
                  sub_20E078BDC(v344, type metadata accessor for TranscriptProtoStatementID);
                  v346 = v345;
                  v343 = v436;
                  [v341 setIndex_];
                }

                [v339 setValue_];

                v347 = sub_20E322860();
                [v339 setParameterId_];

                v348 = v343 + *(updated + 28);
                if ((*(v348 + 8) & 1) == 0)
                {
                  [v339 setParameterIndex_];
                }

                if (*(v343 + 16))
                {
                  v349 = 2;
                }

                else
                {
                  v349 = 1;
                }

                [v339 setKind_];
                sub_20E04875C(v437, &qword_27C864150, &qword_20E3262A0);
                sub_20E078BDC(v428, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
                v350 = sub_20E078BDC(v343, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
                MEMORY[0x20F32BF90](v350);
                if (*((v443 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v443 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_20E322990();
                }

                sub_20E3229B0();
                v432 = v443;
                v334 = v427;
                v329 = v428;
              }

              else
              {
                sub_20E04875C(v437, &qword_27C864150, &qword_20E3262A0);
                v329 = v428;
                sub_20E078BDC(v428, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
                sub_20E078BDC(v337, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
                v334 = v427;
              }
            }

            v332 += v439;
            --v331;
          }

          while (v331);
        }

        else
        {
          v368 = v225;
          v432 = MEMORY[0x277D84F90];
        }

        sub_20E074574(0, &qword_27C864188, 0x277D58148);
        v369 = sub_20E322960();

        v370 = v429;
        [v429 setUpdates_];

        v114 = v440;
        v109 = v376;
        v221 = v422;
        v222 = v430;
      }

      [v442 setUpdateParameters_];

      sub_20E078BDC(v109, type metadata accessor for TranscriptProtoExpression);
      v273 = type metadata accessor for TranscriptProtoUpdateParametersExpression;
      v274 = v221;
      goto LABEL_222;
    case 6u:
      v159 = v412;
      sub_20E078B74(v101, v412, type metadata accessor for TranscriptProtoCallExpression);
      v251 = [objc_allocWithZone(MEMORY[0x277D57D50]) &off_277E1BB78];
      if (v251)
      {
        v252 = v398;
        sub_20E0486F4(v159 + *(v396 + 20), v398, &qword_27C8639C8, &unk_20E323870);
        if ((*(v419 + 48))(v252, 1, v400) == 1)
        {
          v253 = v251;
          sub_20E04875C(v252, &qword_27C8639C8, &unk_20E323870);
          v254 = 0;
        }

        else
        {
          v354 = v251;

          sub_20E078BDC(v252, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
          v254 = sub_20E322860();
        }

        [v251 setToolId_];

        v355 = *v159;
        v356 = v251;
        if (sub_20E06BBCC(v355))
        {
          sub_20E074574(0, &qword_27C864180, 0x277D57D58);
          v357 = sub_20E322960();
        }

        else
        {
          v357 = 0;
        }

        [v356 setParameters_];
      }

      [v442 setCall_];

      sub_20E078BDC(v109, type metadata accessor for TranscriptProtoExpression);
      v318 = type metadata accessor for TranscriptProtoCallExpression;
LABEL_217:
      v273 = v318;
      v274 = v159;
      goto LABEL_222;
    case 7u:
      v177 = v421;
      sub_20E078B74(v101, v421, type metadata accessor for TranscriptProtoSayExpression);
      v200 = [objc_allocWithZone(MEMORY[0x277D58040]) &off_277E1BB78];
      v201 = v200;
      if (v200)
      {
        v376 = v109;
        v202 = *v177;
        v443 = MEMORY[0x277D84F90];
        v203 = *(v202 + 16);
        v434 = v200;
        if (v203)
        {
          v204 = v202 + ((*(v435 + 80) + 32) & ~*(v435 + 80));
          v205 = *(v435 + 72);
          updated = v435 + 56;
          v439 = v205;
          v437 = (v435 + 48);
          v206 = v200;
          v436 = MEMORY[0x277D84F90];
          v207 = v382;
          v208 = v379;
          do
          {
            sub_20E078B0C(v204, v208, type metadata accessor for TranscriptProtoStatementID);
            sub_20E078B0C(v208, v207, type metadata accessor for TranscriptProtoStatementID);
            v209 = v441;
            (*updated)(v207, 0, 1, v441);
            v210 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
            v211 = v429;
            sub_20E0486F4(v207, v429, &qword_27C8639D0, &unk_20E33C230);
            if ((*v437)(v211, 1, v209) == 1)
            {
              sub_20E04875C(v207, &qword_27C8639D0, &unk_20E33C230);
              sub_20E078BDC(v208, type metadata accessor for TranscriptProtoStatementID);
              v212 = sub_20E04875C(v211, &qword_27C8639D0, &unk_20E33C230);
            }

            else
            {
              v213 = *v211;
              sub_20E078BDC(v211, type metadata accessor for TranscriptProtoStatementID);
              [v210 setIndex_];
              sub_20E04875C(v207, &qword_27C8639D0, &unk_20E33C230);
              v212 = sub_20E078BDC(v208, type metadata accessor for TranscriptProtoStatementID);
            }

            if (v210)
            {
              MEMORY[0x20F32BF90](v212);
              if (*((v443 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v443 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_20E322990();
                v208 = v379;
                v207 = v382;
              }

              sub_20E3229B0();
              v436 = v443;
            }

            v204 += v439;
            --v203;
          }

          while (v203);
        }

        else
        {
          v366 = v200;
          v436 = MEMORY[0x277D84F90];
        }

        sub_20E074574(0, &qword_27C863B70, 0x277D58078);
        v367 = sub_20E322960();

        v201 = v434;
        [v434 setStatementIds_];

        v114 = v440;
        v109 = v376;
        v177 = v421;
      }

      [v442 setSay_];

      sub_20E078BDC(v109, type metadata accessor for TranscriptProtoExpression);
      v365 = type metadata accessor for TranscriptProtoSayExpression;
      goto LABEL_221;
    case 8u:
      v117 = v411;
      sub_20E078B74(v101, v411, type metadata accessor for TranscriptProtoPickExpression);
      v262 = [objc_allocWithZone(MEMORY[0x277D57F08]) &off_277E1BB78];
      v263 = v262;
      if (v262)
      {
        v264 = v109;
        [v262 setIndex_];
        v265 = *(v399 + 20);
        v266 = objc_allocWithZone(MEMORY[0x277D58078]);
        v267 = v263;
        v268 = [v266 &off_277E1BB78];
        v269 = v388;
        sub_20E0486F4(v117 + v265, v388, &qword_27C8639D0, &unk_20E33C230);
        if ((*(v435 + 48))(v269, 1, v441) == 1)
        {
          sub_20E04875C(v269, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v358 = *v269;
          sub_20E078BDC(v269, type metadata accessor for TranscriptProtoStatementID);
          [v268 setIndex_];
        }

        [v267 setStatementId_];

        v109 = v264;
      }

      [v442 setPick_];

      v302 = type metadata accessor for TranscriptProtoPickExpression;
LABEL_195:
      v260 = v302;
      v261 = v117;
      goto LABEL_196;
    case 9u:
      v122 = v413;
      sub_20E078B74(v101, v413, type metadata accessor for TranscriptProtoConfirmExpression);
      v172 = [objc_allocWithZone(MEMORY[0x277D57D98]) &off_277E1BB78];
      if (v172)
      {
        v173 = objc_allocWithZone(MEMORY[0x277D58078]);
        v174 = v172;
        v175 = [v173 &off_277E1BB78];
        v176 = v387;
        sub_20E0486F4(v122, v387, &qword_27C8639D0, &unk_20E33C230);
        if ((*(v435 + 48))(v176, 1, v441) == 1)
        {
          sub_20E04875C(v176, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v322 = v109;
          v323 = *v176;
          sub_20E078BDC(v176, type metadata accessor for TranscriptProtoStatementID);
          v324 = v323;
          v109 = v322;
          [v175 setIndex_];
        }

        [v174 setStatementId_];
      }

      [v442 setConfirm_];

      v307 = type metadata accessor for TranscriptProtoConfirmExpression;
      goto LABEL_185;
    case 0xAu:
      v256 = v101;
      v257 = v410;
      sub_20E078B74(v256, v410, type metadata accessor for TranscriptProtoSearchExpression);
      v258 = [objc_allocWithZone(MEMORY[0x277D58048]) &off_277E1BB78];
      v259 = v258;
      if (v258)
      {
        [v258 setPickOne_];
      }

      [v442 setSearch_];

      v260 = type metadata accessor for TranscriptProtoSearchExpression;
      v261 = v257;
      goto LABEL_196;
    case 0xBu:
      v133 = v425;
      sub_20E078B74(v101, v425, type metadata accessor for TranscriptProtoStructuredSearchExpression);
      v134 = [objc_allocWithZone(MEMORY[0x277D58098]) &off_277E1BB78];
      v135 = v134;
      if (v134)
      {
        [v134 setIsExpanded_];
      }

      updated = v135;
      v376 = v109;
      v443 = MEMORY[0x277D84F90];
      v136 = v133[1];
      v137 = *(v136 + 16);
      v138 = v439;
      if (v137)
      {
        v139 = v136 + ((*(v401 + 80) + 32) & ~*(v401 + 80));
        v140 = (v435 + 48);
        v141 = *(v401 + 72);
        do
        {
          sub_20E078B0C(v139, v138, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
          v142 = [objc_allocWithZone(MEMORY[0x277D580A8]) init];
          if (v142)
          {
            v143 = v142;
            v144 = v434[6];
            v145 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
            v146 = v439 + v144;
            v138 = v439;
            v147 = v432;
            sub_20E0486F4(v146, v432, &qword_27C8639D0, &unk_20E33C230);
            if ((*v140)(v147, 1, v441) == 1)
            {
              sub_20E04875C(v147, &qword_27C8639D0, &unk_20E33C230);
            }

            else
            {
              v148 = *v147;
              sub_20E078BDC(v147, type metadata accessor for TranscriptProtoStatementID);
              v149 = v148;
              v138 = v439;
              [v145 setIndex_];
            }

            [v143 setPreviousAnswerReferenceStatementId_];

            v150 = v143;
            MEMORY[0x20F32BF90]();
            if (*((v443 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v443 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_20E322990();
              v138 = v439;
            }

            sub_20E3229B0();

            sub_20E078BDC(v138, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
          }

          else
          {
            sub_20E078BDC(v138, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
          }

          v139 += v141;
          --v137;
        }

        while (v137);
      }

      v151 = updated;
      if (updated)
      {
        sub_20E074574(0, &qword_27C864170, 0x277D580A8);
        v152 = v151;
        v153 = sub_20E322960();

        [v152 setProperties_];

        v154 = v425;
        v155 = *v425;
        v156 = v152;
        v157 = sub_20E066408(v155);
        v114 = v440;
        if (v157)
        {
          sub_20E074574(0, &qword_27C864178, 0x277D580A0);
          v158 = sub_20E322960();
        }

        else
        {
          v158 = 0;
        }

        v303 = v376;
        [v156 setParameters_];

        v359 = *(v402 + 24);
        v360 = v156;
        v361 = sub_20E0669B0(v154 + v359);
        [v360 setReturnType_];
      }

      else
      {

        v114 = v440;
        v303 = v376;
        v154 = v425;
      }

      [v442 setStructuredSearch_];

      sub_20E078BDC(v303, type metadata accessor for TranscriptProtoExpression);
      v362 = type metadata accessor for TranscriptProtoStructuredSearchExpression;
      goto LABEL_213;
    case 0xCu:
      v122 = v414;
      sub_20E078B74(v101, v414, type metadata accessor for TranscriptProtoPickOneExpression);
      v167 = [objc_allocWithZone(MEMORY[0x277D57F10]) &off_277E1BB78];
      if (v167)
      {
        v168 = objc_allocWithZone(MEMORY[0x277D58078]);
        v169 = v167;
        v170 = [v168 &off_277E1BB78];
        v171 = v389;
        sub_20E0486F4(v122, v389, &qword_27C8639D0, &unk_20E33C230);
        if ((*(v435 + 48))(v171, 1, v441) == 1)
        {
          sub_20E04875C(v171, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v319 = v109;
          v320 = *v171;
          sub_20E078BDC(v171, type metadata accessor for TranscriptProtoStatementID);
          v321 = v320;
          v109 = v319;
          [v170 setIndex_];
        }

        [v169 setStatementId_];
      }

      [v442 setPickOne_];

      v307 = type metadata accessor for TranscriptProtoPickOneExpression;
      goto LABEL_185;
    case 0xDu:
      v154 = v420;
      sub_20E078B74(v101, v420, type metadata accessor for TranscriptProtoResolveToolExpression);
      v236 = [objc_allocWithZone(MEMORY[0x277D58020]) &off_277E1BB78];
      v237 = v236;
      if (v236)
      {
        v238 = v109;
        v239 = *v154;
        v240 = *(*v154 + 16);
        if (v240)
        {
          v443 = MEMORY[0x277D84F90];
          v241 = v236;
          sub_20E2FFA8C(0, v240, 0);
          v242 = v443;
          v243 = v239 + ((*(v419 + 80) + 32) & ~*(v419 + 80));
          v244 = *(v419 + 72);
          do
          {
            v245 = v433;
            sub_20E078B0C(v243, v433, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
            v247 = *v245;
            v246 = v245[1];

            sub_20E078BDC(v245, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
            v443 = v242;
            v249 = *(v242 + 16);
            v248 = *(v242 + 24);
            if (v249 >= v248 >> 1)
            {
              sub_20E2FFA8C((v248 > 1), v249 + 1, 1);
              v242 = v443;
            }

            *(v242 + 16) = v249 + 1;
            v250 = v242 + 16 * v249;
            *(v250 + 32) = v247;
            *(v250 + 40) = v246;
            v243 += v244;
            --v240;
          }

          while (v240);
          v114 = v440;
          v154 = v420;
        }

        else
        {
          v371 = v236;
        }

        v372 = sub_20E322960();

        [v237 setToolIds_];

        v109 = v238;
      }

      [v442 setResolveTool_];

      sub_20E078BDC(v109, type metadata accessor for TranscriptProtoExpression);
      v362 = type metadata accessor for TranscriptProtoResolveToolExpression;
LABEL_213:
      v273 = v362;
      v274 = v154;
      goto LABEL_222;
    case 0xEu:
      v122 = v415;
      sub_20E078B74(v101, v415, type metadata accessor for TranscriptProtoUndoExpression);
      v128 = [objc_allocWithZone(MEMORY[0x277D58140]) &off_277E1BB78];
      if (v128)
      {
        v129 = objc_allocWithZone(MEMORY[0x277D58078]);
        v130 = v128;
        v131 = [v129 &off_277E1BB78];
        v132 = v390;
        sub_20E0486F4(v122, v390, &qword_27C8639D0, &unk_20E33C230);
        if ((*(v435 + 48))(v132, 1, v441) == 1)
        {
          sub_20E04875C(v132, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v308 = v109;
          v309 = *v132;
          sub_20E078BDC(v132, type metadata accessor for TranscriptProtoStatementID);
          v310 = v309;
          v109 = v308;
          [v131 setIndex_];
        }

        [v130 setStatementId_];
      }

      [v442 setUndo_];

      v307 = type metadata accessor for TranscriptProtoUndoExpression;
      goto LABEL_185;
    case 0xFu:
      v122 = v416;
      sub_20E078B74(v101, v416, type metadata accessor for TranscriptProtoRejectExpression);
      v194 = [objc_allocWithZone(MEMORY[0x277D57FA0]) &off_277E1BB78];
      if (v194)
      {
        v195 = objc_allocWithZone(MEMORY[0x277D58078]);
        v196 = v194;
        v197 = [v195 &off_277E1BB78];
        v198 = v391;
        sub_20E0486F4(v122, v391, &qword_27C8639D0, &unk_20E33C230);
        if ((*(v435 + 48))(v198, 1, v441) == 1)
        {
          sub_20E04875C(v198, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v325 = v109;
          v326 = *v198;
          sub_20E078BDC(v198, type metadata accessor for TranscriptProtoStatementID);
          v327 = v326;
          v109 = v325;
          [v197 setIndex_];
        }

        [v196 setStatementId_];
      }

      [v442 setReject_];

      v307 = type metadata accessor for TranscriptProtoRejectExpression;
      goto LABEL_185;
    case 0x10u:
      v122 = v417;
      sub_20E078B74(v101, v417, type metadata accessor for TranscriptProtoCancelExpression);
      v123 = [objc_allocWithZone(MEMORY[0x277D57D60]) &off_277E1BB78];
      if (v123)
      {
        v124 = objc_allocWithZone(MEMORY[0x277D58078]);
        v125 = v123;
        v126 = [v124 &off_277E1BB78];
        v127 = v392;
        sub_20E0486F4(v122, v392, &qword_27C8639D0, &unk_20E33C230);
        if ((*(v435 + 48))(v127, 1, v441) == 1)
        {
          sub_20E04875C(v127, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v304 = v109;
          v305 = *v127;
          sub_20E078BDC(v127, type metadata accessor for TranscriptProtoStatementID);
          v306 = v305;
          v109 = v304;
          [v126 setIndex_];
        }

        [v125 setStatementId_];
      }

      [v442 setCancel_];

      v307 = type metadata accessor for TranscriptProtoCancelExpression;
      goto LABEL_185;
    case 0x11u:
      v219 = [objc_allocWithZone(MEMORY[0x277D57E98]) &off_277E1BB78];
      v193 = v219;
      if (v219)
      {
        [v219 setExists_];
      }

      [v442 setNoMatchingTool_];
      goto LABEL_116;
    case 0x12u:
      v255 = [objc_allocWithZone(MEMORY[0x277D57DC0]) &off_277E1BB78];
      v193 = v255;
      if (v255)
      {
        [v255 setExists_];
      }

      [v442 setContinuePlanning_];
      goto LABEL_116;
    case 0x13u:
      v272 = [objc_allocWithZone(MEMORY[0x277D57DF0]) &off_277E1BB78];
      v193 = v272;
      if (v272)
      {
        [v272 setExists_];
      }

      [v442 setEndOfPlan_];
      goto LABEL_116;
    case 0x14u:
      v220 = [objc_allocWithZone(MEMORY[0x277D57E60]) &off_277E1BB78];
      v193 = v220;
      if (v220)
      {
        [v220 setExists_];
      }

      [v442 setGetMentionedApps_];
LABEL_116:

      sub_20E078BDC(v109, type metadata accessor for TranscriptProtoExpression);
      v273 = type metadata accessor for TranscriptProtoExpressionEnum;
      v274 = v101;
      goto LABEL_222;
    case 0x15u:
      v122 = v418;
      sub_20E078B74(v101, v418, type metadata accessor for TranscriptProtoOpenExpression);
      v231 = [objc_allocWithZone(MEMORY[0x277D57EA0]) &off_277E1BB78];
      if (v231)
      {
        v232 = objc_allocWithZone(MEMORY[0x277D58078]);
        v233 = v231;
        v234 = [v232 &off_277E1BB78];
        v235 = v393;
        sub_20E0486F4(v122, v393, &qword_27C8639D0, &unk_20E33C230);
        if ((*(v435 + 48))(v235, 1, v441) == 1)
        {
          sub_20E04875C(v235, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v351 = v109;
          v352 = *v235;
          sub_20E078BDC(v235, type metadata accessor for TranscriptProtoStatementID);
          v353 = v352;
          v109 = v351;
          [v234 setIndex_];
        }

        [v233 setStatementId_];
      }

      [v442 setOpen_];

      v307 = type metadata accessor for TranscriptProtoOpenExpression;
LABEL_185:
      v260 = v307;
      v261 = v122;
LABEL_196:
      sub_20E078BDC(v261, v260);
      goto LABEL_197;
    case 0x16u:
      sub_20E078BDC(v101, type metadata accessor for TranscriptProtoExpressionEnum);
      v270 = [objc_allocWithZone(MEMORY[0x277D57E28]) &off_277E1BB78];
      v271 = v270;
      if (v270)
      {
        [v270 setExists_];
      }

      [v442 setExplicitResolutionRequest_];

LABEL_197:
      v273 = type metadata accessor for TranscriptProtoExpression;
      v274 = v109;
      goto LABEL_222;
    case 0x17u:
      v177 = v423;
      sub_20E078B74(v101, v423, type metadata accessor for TranscriptProtoPayloadExpression);
      v275 = [objc_allocWithZone(MEMORY[0x277D57EE8]) &off_277E1BB78];
      v276 = v275;
      if (v275)
      {
        v376 = v109;
        v277 = *v177;
        v443 = MEMORY[0x277D84F90];
        v278 = *(v277 + 16);
        v434 = v275;
        if (v278)
        {
          v279 = v277 + ((*(v435 + 80) + 32) & ~*(v435 + 80));
          v280 = *(v435 + 72);
          updated = v435 + 56;
          v439 = v280;
          v437 = (v435 + 48);
          v281 = v275;
          v436 = MEMORY[0x277D84F90];
          v282 = v383;
          v283 = v380;
          do
          {
            sub_20E078B0C(v279, v283, type metadata accessor for TranscriptProtoStatementID);
            sub_20E078B0C(v283, v282, type metadata accessor for TranscriptProtoStatementID);
            v284 = v441;
            (*updated)(v282, 0, 1, v441);
            v285 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
            v286 = v430;
            sub_20E0486F4(v282, v430, &qword_27C8639D0, &unk_20E33C230);
            if ((*v437)(v286, 1, v284) == 1)
            {
              sub_20E04875C(v282, &qword_27C8639D0, &unk_20E33C230);
              sub_20E078BDC(v283, type metadata accessor for TranscriptProtoStatementID);
              v287 = sub_20E04875C(v286, &qword_27C8639D0, &unk_20E33C230);
            }

            else
            {
              v288 = *v286;
              sub_20E078BDC(v286, type metadata accessor for TranscriptProtoStatementID);
              [v285 setIndex_];
              sub_20E04875C(v282, &qword_27C8639D0, &unk_20E33C230);
              v287 = sub_20E078BDC(v283, type metadata accessor for TranscriptProtoStatementID);
            }

            if (v285)
            {
              MEMORY[0x20F32BF90](v287);
              if (*((v443 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v443 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_20E322990();
                v283 = v380;
                v282 = v383;
              }

              sub_20E3229B0();
              v436 = v443;
            }

            v279 += v439;
            --v278;
          }

          while (v278);
        }

        else
        {
          v373 = v275;
          v436 = MEMORY[0x277D84F90];
        }

        sub_20E074574(0, &qword_27C863B70, 0x277D58078);
        v374 = sub_20E322960();

        v276 = v434;
        [v434 setStatementIds_];

        v114 = v440;
        v109 = v376;
        v177 = v423;
      }

      [v442 setPayload_];

      sub_20E078BDC(v109, type metadata accessor for TranscriptProtoExpression);
      v365 = type metadata accessor for TranscriptProtoPayloadExpression;
      goto LABEL_221;
    case 0x18u:
      v177 = v424;
      sub_20E078B74(v101, v424, type metadata accessor for TranscriptProtoFormatExpression);
      v178 = [objc_allocWithZone(MEMORY[0x277D57E58]) &off_277E1BB78];
      v179 = v178;
      if (v178)
      {
        v376 = v109;
        v180 = *v177;
        v443 = MEMORY[0x277D84F90];
        v181 = *(v180 + 16);
        v434 = v178;
        if (v181)
        {
          v182 = v180 + ((*(v435 + 80) + 32) & ~*(v435 + 80));
          v183 = *(v435 + 72);
          updated = v435 + 56;
          v439 = v183;
          v437 = (v435 + 48);
          v184 = v178;
          v436 = MEMORY[0x277D84F90];
          v185 = v384;
          v186 = v381;
          do
          {
            sub_20E078B0C(v182, v186, type metadata accessor for TranscriptProtoStatementID);
            sub_20E078B0C(v186, v185, type metadata accessor for TranscriptProtoStatementID);
            v187 = v441;
            (*updated)(v185, 0, 1, v441);
            v188 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
            v189 = v431;
            sub_20E0486F4(v185, v431, &qword_27C8639D0, &unk_20E33C230);
            if ((*v437)(v189, 1, v187) == 1)
            {
              sub_20E04875C(v185, &qword_27C8639D0, &unk_20E33C230);
              sub_20E078BDC(v186, type metadata accessor for TranscriptProtoStatementID);
              v190 = sub_20E04875C(v189, &qword_27C8639D0, &unk_20E33C230);
            }

            else
            {
              v191 = *v189;
              sub_20E078BDC(v189, type metadata accessor for TranscriptProtoStatementID);
              [v188 setIndex_];
              sub_20E04875C(v185, &qword_27C8639D0, &unk_20E33C230);
              v190 = sub_20E078BDC(v186, type metadata accessor for TranscriptProtoStatementID);
            }

            if (v188)
            {
              MEMORY[0x20F32BF90](v190);
              if (*((v443 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v443 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_20E322990();
                v186 = v381;
                v185 = v384;
              }

              sub_20E3229B0();
              v436 = v443;
            }

            v182 += v439;
            --v181;
          }

          while (v181);
        }

        else
        {
          v363 = v178;
          v436 = MEMORY[0x277D84F90];
        }

        sub_20E074574(0, &qword_27C863B70, 0x277D58078);
        v364 = sub_20E322960();

        v179 = v434;
        [v434 setStatementIds_];

        v114 = v440;
        v109 = v376;
        v177 = v424;
      }

      [v442 setFormat_];

      sub_20E078BDC(v109, type metadata accessor for TranscriptProtoExpression);
      v365 = type metadata accessor for TranscriptProtoFormatExpression;
LABEL_221:
      v273 = v365;
      v274 = v177;
LABEL_222:
      sub_20E078BDC(v274, v273);
      sub_20E04875C(v114, &qword_27C864160, &unk_20E33C410);
      result = v442;
      break;
    default:
      sub_20E078BDC(v109, type metadata accessor for TranscriptProtoExpression);

      sub_20E078BDC(v101, type metadata accessor for TranscriptProtoExpressionEnum);
      goto LABEL_6;
  }

  return result;
}

uint64_t sub_20E078B0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E078B74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E078BDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E078C3C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864190);
  __swift_project_value_buffer(v0, qword_27C864190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ENTITY_QUERY";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SIRI_VOCABULARY";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "USER_FEEDBACK_LEARNING";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MEGADOME_ECR";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CONTEXT_REGISTRY";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "RETURN_VALUE";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "USER_PROMPT";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "OMNISEARCH";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E078FD4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8641A8);
  __swift_project_value_buffer(v0, qword_27C8641A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "notSet";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "prescribedPlanGenerator";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "planOverride";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "fullPlanner";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "suggestedInvocationPlanGenerator";
  *(v16 + 1) = 32;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "ruleBasedPlanGenerator";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E079300()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8641C0);
  __swift_project_value_buffer(v0, qword_27C8641C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Completion";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Disambiguation";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Confirmation";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E07955C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8641D8);
  __swift_project_value_buffer(v0, qword_27C8641D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NONE";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SUPPRESS_PRINT";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E07976C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8641F0);
  __swift_project_value_buffer(v0, qword_27C8641F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ASTUpdateKind_APPEND";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ASTUpdateKind_REPLACE";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E07997C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864208);
  __swift_project_value_buffer(v0, qword_27C864208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "plus";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "minus";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "not";
  *(v11 + 8) = 3;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E079BD8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864220);
  __swift_project_value_buffer(v0, qword_27C864220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_20E3262E0;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 0;
  *v5 = "assign";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v43 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "add";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v43 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "addAssign";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v43 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "subtract";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v43 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "subtractAssign";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v8();
  v16 = (v43 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "divide";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v43 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "divideAssign";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v43 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "multiply";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  v22 = v43 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "multiplyAssign";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  v23 = (v43 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "exponent";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v8();
  v25 = (v43 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "equal";
  *(v26 + 1) = 5;
  v26[16] = 2;
  v8();
  v27 = (v43 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "notEqual";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v8();
  v29 = (v43 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "in";
  *(v30 + 1) = 2;
  v30[16] = 2;
  v8();
  v31 = (v43 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "greaterThanEqual";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v8();
  v33 = (v43 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "greaterThan";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v8();
  v35 = (v43 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "lessThanEqual";
  *(v36 + 1) = 13;
  v36[16] = 2;
  v8();
  v37 = v43 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "lessThan";
  *(v37 + 8) = 8;
  *(v37 + 16) = 2;
  v8();
  v38 = (v43 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "and";
  *(v39 + 1) = 3;
  v39[16] = 2;
  v8();
  v40 = (v43 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "or";
  *(v41 + 1) = 2;
  v41[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t sub_20E07A1F8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864238);
  __swift_project_value_buffer(v0, qword_27C864238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_20E3262E0;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 0;
  *v5 = "ASTInfixOp_ASSIGN";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "ASTInfixOp_ADD";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "ASTInfixOp_ADDASSIGN";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ASTInfixOp_SUBTRACT";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "ASTInfixOp_SUBTRACTASSIGN";
  *(v15 + 1) = 25;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "ASTInfixOp_DIVIDE";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ASTInfixOp_DIVIDEASSIGN";
  *(v19 + 1) = 23;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "ASTInfixOp_MULTIPLY";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "ASTInfixOp_MULTIPLYASSIGN";
  *(v22 + 8) = 25;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "ASTInfixOp_EXPONENT";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ASTInfixOp_EQUAL";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ASTInfixOp_NOTEQUAL";
  *(v28 + 1) = 19;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "ASTInfixOp_IN";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "ASTInfixOp_GREATERTHANEQUAL";
  *(v32 + 1) = 27;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "ASTInfixOp_GREATERTHAN";
  *(v34 + 1) = 22;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "ASTInfixOp_LESSTHANEQUAL";
  *(v36 + 1) = 24;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "ASTInfixOp_LESSTHAN";
  *(v37 + 8) = 19;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "ASTInfixOp_AND";
  *(v39 + 1) = 14;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "ASTInfixOp_OR";
  *(v41 + 1) = 13;
  v41[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t sub_20E07A81C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864250);
  __swift_project_value_buffer(v0, qword_27C864250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ASTPrefixOp_PLUS";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ASTPrefixOp_MINUS";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ASTPrefixOp_NOT";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E07AA78()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864268);
  __swift_project_value_buffer(v0, qword_27C864268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "append";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "replace";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E07AC88()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864280);
  __swift_project_value_buffer(v0, qword_27C864280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "appIntent";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "clientAction";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "schema";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E07AEE4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864298);
  __swift_project_value_buffer(v0, qword_27C864298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "unspecified";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "female";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "male";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "neutral";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E07B174()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8642B0);
  __swift_project_value_buffer(v0, qword_27C8642B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "undo";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "redo";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E07B3A0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8642C8);
  __swift_project_value_buffer(v0, qword_27C8642C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_20E326300;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 11;
  *v5 = "rawId";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "rawSessionId";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 12;
  *v11 = "rawQueryEventId";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 2;
  *v13 = "rawPayload";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 3;
  *v15 = "clientRequestId";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 4;
  *v17 = "clientSessionId";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 9;
  *v19 = "clientApplicationId";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 10;
  *v21 = "clientGroupId";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 13;
  *v22 = "timepoint";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 6;
  *v24 = "sender";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 7;
  *v26 = "postingSpan";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 8;
  *v28 = "rawInitiatedSpans";
  *(v28 + 1) = 17;
  v28[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 7)
    {
      if (result > 10)
      {
        switch(result)
        {
          case 11:
            goto LABEL_2;
          case 12:
LABEL_29:
            sub_20E3223D0();
            break;
          case 13:
            sub_20E07BC58(a1, v5, a2, a3);
            break;
        }
      }

      else if (result == 8)
      {
        sub_20E07BBD4(a1, v5, a2, a3);
      }

      else
      {
        if (result != 9)
        {
          type metadata accessor for TranscriptProtoEvent(0);
          goto LABEL_29;
        }

LABEL_2:
        sub_20E3223E0();
      }
    }

    else if (result > 3)
    {
      switch(result)
      {
        case 4:
          goto LABEL_2;
        case 6:
          sub_20E07BA6C(a1, v5, a2, a3);
          break;
        case 7:
          sub_20E07BB20(a1, v5, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          goto LABEL_2;
        case 2:
          sub_20E07B9B8(a1, v5, a2, a3);
          break;
        case 3:
          goto LABEL_2;
      }
    }
  }
}

uint64_t sub_20E07B9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoEvent(0);
  type metadata accessor for TranscriptProtoPayload(0);
  sub_20E195B0C(qword_280E0F180, type metadata accessor for TranscriptProtoPayload, &protocol conformance descriptor for TranscriptProtoPayload);
  return sub_20E322430();
}

uint64_t sub_20E07BA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoEvent(0);
  type metadata accessor for TranscriptProtoParticipantID(0);
  sub_20E195B0C(qword_280E0C940, type metadata accessor for TranscriptProtoParticipantID, &protocol conformance descriptor for TranscriptProtoParticipantID);
  return sub_20E322430();
}

uint64_t sub_20E07BB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoEvent(0);
  type metadata accessor for TranscriptProtoSpanID(0);
  sub_20E195B0C(qword_280E0FDC8, type metadata accessor for TranscriptProtoSpanID, &protocol conformance descriptor for TranscriptProtoSpanID);
  return sub_20E322430();
}

uint64_t sub_20E07BBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20E322170();
  sub_20E322190();
  return sub_20E3222A0();
}

uint64_t sub_20E07BC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoEvent(0);
  type metadata accessor for TranscriptProtoTimepoint(0);
  sub_20E195B0C(qword_280E0E988, type metadata accessor for TranscriptProtoTimepoint, &protocol conformance descriptor for TranscriptProtoTimepoint);
  return sub_20E322430();
}

uint64_t TranscriptProtoEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[3];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v3[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_20E322540(), !v4))
  {
    result = sub_20E07BF64(v3, a1, a2, a3);
    if (!v4)
    {
      v11 = v3[5];
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        sub_20E322540();
      }

      v13 = v3[7];
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v3[6] & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        sub_20E322540();
      }

      sub_20E07C180(v3, a1, a2, a3);
      sub_20E07C39C(v3, a1, a2, a3);
      if (*(v3[10] + 16))
      {
        sub_20E322170();
        sub_20E322190();
        sub_20E3224A0();
      }

      v15 = v3[9];
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v3[8] & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        sub_20E322540();
      }

      sub_20E07C5B8(v3, a1, a2, a3);
      v17 = v3[1];
      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = *v3 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        sub_20E322540();
      }

      if (v3[12])
      {
        sub_20E322540();
      }

      sub_20E07C630(v3, a1, a2, a3);
      type metadata accessor for TranscriptProtoEvent(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E07BF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC0, &unk_20E325F70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoPayload(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoEvent(0);
  sub_20E0486F4(a1 + *(v12 + 44), v7, &qword_27C863FC0, &unk_20E325F70);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863FC0, &unk_20E325F70);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoPayload);
  sub_20E195B0C(qword_280E0F180, type metadata accessor for TranscriptProtoPayload, &protocol conformance descriptor for TranscriptProtoPayload);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayload);
}

uint64_t sub_20E07C180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688B0, &unk_20E33C1C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoParticipantID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoEvent(0);
  sub_20E0486F4(a1 + *(v12 + 56), v7, &qword_27C8688B0, &unk_20E33C1C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8688B0, &unk_20E33C1C0);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoParticipantID);
  sub_20E195B0C(qword_280E0C940, type metadata accessor for TranscriptProtoParticipantID, &protocol conformance descriptor for TranscriptProtoParticipantID);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoParticipantID);
}

uint64_t sub_20E07C39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688A0, &qword_20E33B858);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoSpanID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoEvent(0);
  sub_20E0486F4(a1 + *(v12 + 60), v7, &qword_27C8688A0, &qword_20E33B858);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8688A0, &qword_20E33B858);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoSpanID);
  sub_20E195B0C(qword_280E0FDC8, type metadata accessor for TranscriptProtoSpanID, &protocol conformance descriptor for TranscriptProtoSpanID);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoSpanID);
}

uint64_t sub_20E07C5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TranscriptProtoEvent(0);
  if (*(a1 + *(result + 48) + 8))
  {
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E07C630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688C0, &qword_20E33B870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoTimepoint(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoEvent(0);
  sub_20E0486F4(a1 + *(v12 + 52), v7, &qword_27C8688C0, &qword_20E33B870);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8688C0, &qword_20E33B870);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoTimepoint);
  sub_20E195B0C(qword_280E0E988, type metadata accessor for TranscriptProtoTimepoint, &protocol conformance descriptor for TranscriptProtoTimepoint);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoTimepoint);
}

unint64_t sub_20E07C898@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  v4 = a1[11];
  v5 = type metadata accessor for TranscriptProtoPayload(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[13];
  v7 = &a2[a1[12]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = type metadata accessor for TranscriptProtoTimepoint(0);
  (*(*(v8 - 8) + 56))(&a2[v6], 1, 1, v8);
  v9 = a1[14];
  v10 = type metadata accessor for TranscriptProtoParticipantID(0);
  (*(*(v10 - 8) + 56))(&a2[v9], 1, 1, v10);
  v11 = a1[15];
  v12 = type metadata accessor for TranscriptProtoSpanID(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0xE000000000000000;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0xE000000000000000;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0xE000000000000000;
  result = sub_20E048A4C(MEMORY[0x277D84F90]);
  *(a2 + 10) = result;
  return result;
}

uint64_t sub_20E07CA30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E07CAA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E07CB6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867E48, type metadata accessor for TranscriptProtoEvent, &protocol conformance descriptor for TranscriptProtoEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E07CC0C(uint64_t a1)
{
  sub_20E195B0C(qword_280E0FFD8, type metadata accessor for TranscriptProtoEvent, &protocol conformance descriptor for TranscriptProtoEvent);

  return sub_20E322470();
}

uint64_t sub_20E07CC78(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(qword_280E0FFD8, type metadata accessor for TranscriptProtoEvent, &protocol conformance descriptor for TranscriptProtoEvent);

  return sub_20E322480();
}

uint64_t sub_20E07CD14()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8642E0);
  __swift_project_value_buffer(v0, qword_27C8642E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_20E326310;
  v4 = v82 + v3;
  v5 = v82 + v3 + v1[14];
  *(v82 + v3) = 46;
  *v5 = "sessionStart";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v82 + v3 + v2 + v1[14];
  *(v4 + v2) = 41;
  *v9 = "request";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v82 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "planCreated";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v82 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "actionCreated";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v82 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "clientActionCreated";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v8();
  v16 = (v82 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "queriesCreated";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v82 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "variablesSet";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v82 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 11;
  *v21 = "criticalError";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v82 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 47;
  *v22 = "recoverableError";
  *(v22 + 8) = 16;
  *(v22 + 16) = 2;
  v8();
  v23 = (v82 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 14;
  *v24 = "endOfPlan";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  v25 = (v82 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 15;
  *v26 = "terminate";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v8();
  v27 = (v82 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 19;
  *v28 = "queriesExecuted";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v8();
  v29 = (v82 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 21;
  *v30 = "actionResolverRequestCreated";
  *(v30 + 1) = 28;
  v30[16] = 2;
  v8();
  v31 = (v82 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 25;
  *v32 = "safetyModeRelease";
  *(v32 + 1) = 17;
  v32[16] = 2;
  v8();
  v33 = (v82 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 26;
  *v34 = "safetyModeException";
  *(v34 + 1) = 19;
  v34[16] = 2;
  v8();
  v35 = (v82 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 27;
  *v36 = "responseGenerationRequest";
  *(v36 + 1) = 25;
  v36[16] = 2;
  v8();
  v37 = v82 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 28;
  *v37 = "entitySpanMatched";
  *(v37 + 8) = 17;
  *(v37 + 16) = 2;
  v8();
  v38 = (v82 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 29;
  *v39 = "ContextRetrieved";
  *(v39 + 1) = 16;
  v39[16] = 2;
  v8();
  v40 = (v82 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 30;
  *v41 = "actionCanceled";
  *(v41 + 1) = 14;
  v41[16] = 2;
  v8();
  v42 = (v82 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 31;
  *v43 = "toolsRetrieved";
  *(v43 + 1) = 14;
  v43[16] = 2;
  v8();
  v44 = (v82 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 32;
  *v45 = "systemResponseGenerated";
  *(v45 + 1) = 23;
  v45[16] = 2;
  v8();
  v46 = (v82 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 33;
  *v47 = "statementEvaluated";
  *(v47 + 1) = 18;
  v47[16] = 2;
  v8();
  v48 = (v82 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 42;
  *v49 = "externalAgentRequest";
  *(v49 + 1) = 20;
  v49[16] = 2;
  v8();
  v50 = (v82 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 36;
  *v51 = "externalAgentOutcome";
  *(v51 + 1) = 20;
  v51[16] = 2;
  v8();
  v52 = (v82 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 37;
  *v53 = "externalAgentRequestRewriteMetadata";
  *(v53 + 1) = 35;
  v53[16] = 2;
  v8();
  v54 = (v82 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 38;
  *v55 = "ToolResolution";
  *(v55 + 1) = 14;
  v55[16] = 2;
  v8();
  v56 = (v82 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 39;
  *v57 = "undoRedoRequest";
  *(v57 + 1) = 15;
  v57[16] = 2;
  v8();
  v58 = (v82 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 40;
  *v59 = "clientUndoRedoRequest";
  *(v59 + 1) = 21;
  v59[16] = 2;
  v8();
  v60 = (v82 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 43;
  *v61 = "typeConversionRequest";
  *(v61 + 1) = 21;
  v61[16] = 2;
  v8();
  v62 = (v82 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 44;
  *v63 = "typeConversionResult";
  *(v63 + 1) = 20;
  v63[16] = 2;
  v8();
  v64 = (v82 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 45;
  *v65 = "queryDecorationResult";
  *(v65 + 1) = 21;
  v65[16] = 2;
  v8();
  v66 = (v82 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 48;
  *v67 = "continuePlanning";
  *(v67 + 1) = 16;
  v67[16] = 2;
  v8();
  v68 = v82 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 49;
  *v68 = "queryDecorationPrePlannerResult";
  *(v68 + 8) = 31;
  *(v68 + 16) = 2;
  v8();
  v69 = (v82 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 50;
  *v70 = "skipStatement";
  *(v70 + 1) = 13;
  v70[16] = 2;
  v8();
  v71 = (v82 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 51;
  *v72 = "executionPreconditionEvaluatorRequest";
  *(v72 + 1) = 37;
  v72[16] = 2;
  v8();
  v73 = (v82 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 52;
  *v74 = "requestAmendment";
  *(v74 + 1) = 16;
  v74[16] = 2;
  v8();
  v75 = (v82 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 53;
  *v76 = "toolRetrievalRequest";
  *(v76 + 1) = 20;
  v76[16] = 2;
  v8();
  v77 = (v82 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 54;
  *v78 = "contextRetrievalRequest";
  *(v78 + 1) = 23;
  v78[16] = 2;
  v8();
  v79 = (v82 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 55;
  *v80 = "spanMatchRequest";
  *(v80 + 1) = 16;
  v80[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoPayload.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        sub_20E07DD20(v5, a1, a2, a3);
        break;
      case 4:
        sub_20E07E2DC(v5, a1, a2, a3);
        break;
      case 5:
        sub_20E07E898(v5, a1, a2, a3);
        break;
      case 6:
        sub_20E07EE54(v5, a1, a2, a3);
        break;
      case 7:
        sub_20E07F410(v5, a1, a2, a3);
        break;
      case 11:
        sub_20E07F9CC(v5, a1, a2, a3);
        break;
      case 14:
        v11 = a1;
        v12 = v5;
        v13 = a2;
        v14 = a3;
        v15 = 37;
        goto LABEL_35;
      case 15:
        v11 = a1;
        v12 = v5;
        v13 = a2;
        v14 = a3;
        v15 = 38;
LABEL_35:
        sub_20E07FF88(v11, v12, v13, v14, &qword_27C863FC8, &unk_20E33C1D0, type metadata accessor for TranscriptProtoPayloadEnum, v15);
        break;
      case 19:
        sub_20E080310(v5, a1, a2, a3);
        break;
      case 21:
        sub_20E0808CC(v5, a1, a2, a3);
        break;
      case 25:
        sub_20E080E88(v5, a1, a2, a3);
        break;
      case 26:
        sub_20E081444(v5, a1, a2, a3);
        break;
      case 27:
        sub_20E081A00(v5, a1, a2, a3);
        break;
      case 28:
        sub_20E081FBC(v5, a1, a2, a3);
        break;
      case 29:
        sub_20E082578(v5, a1, a2, a3);
        break;
      case 30:
        sub_20E082B34(v5, a1, a2, a3);
        break;
      case 31:
        sub_20E0830F0(v5, a1, a2, a3);
        break;
      case 32:
        sub_20E0836AC(v5, a1, a2, a3);
        break;
      case 33:
        sub_20E083C68(v5, a1, a2, a3);
        break;
      case 36:
        sub_20E084224(v5, a1, a2, a3);
        break;
      case 37:
        sub_20E0847E0(v5, a1, a2, a3);
        break;
      case 38:
        sub_20E084D9C(v5, a1, a2, a3);
        break;
      case 39:
        sub_20E085358(v5, a1, a2, a3);
        break;
      case 40:
        sub_20E085914(v5, a1, a2, a3);
        break;
      case 41:
        sub_20E085ED0(v5, a1, a2, a3);
        break;
      case 42:
        sub_20E08648C(v5, a1, a2, a3);
        break;
      case 43:
        sub_20E086A48(v5, a1, a2, a3);
        break;
      case 44:
        sub_20E087004(v5, a1, a2, a3);
        break;
      case 45:
        sub_20E0875C0(v5, a1, a2, a3);
        break;
      case 46:
        sub_20E087B7C(v5, a1, a2, a3);
        break;
      case 47:
        sub_20E08812C(v5, a1, a2, a3);
        break;
      case 48:
        sub_20E0886E8(v5, a1, a2, a3);
        break;
      case 49:
        sub_20E088CA4(v5, a1, a2, a3);
        break;
      case 50:
        sub_20E089260(v5, a1, a2, a3);
        break;
      case 51:
        sub_20E08981C(v5, a1, a2, a3);
        break;
      case 52:
        sub_20E089DD8(v5, a1, a2, a3);
        break;
      case 53:
        sub_20E08A394(v5, a1, a2, a3);
        break;
      case 54:
        sub_20E08A950(v5, a1, a2, a3);
        break;
      case 55:
        sub_20E08AF0C(v5, a1, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_20E07DD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoPlan(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F78, &unk_20E325EA0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C863F78, &unk_20E325EA0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoPlan);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoPlan);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866A20, type metadata accessor for TranscriptProtoPlan, &protocol conformance descriptor for TranscriptProtoPlan);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863F78, &unk_20E325EA0);
  }

  sub_20E0486F4(v24, v32, &qword_27C863F78, &unk_20E325EA0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863F78, &unk_20E325EA0);
    return sub_20E04875C(v32, &qword_27C863F78, &unk_20E325EA0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoPlan);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863F78, &unk_20E325EA0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoPlan);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E07E2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoAction(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F10, &qword_20E33AFE0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v24, &qword_27C867F10, &qword_20E33AFE0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoAction);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoAction);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866530, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C867F10, &qword_20E33AFE0);
  }

  sub_20E0486F4(v24, v32, &qword_27C867F10, &qword_20E33AFE0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C867F10, &qword_20E33AFE0);
    return sub_20E04875C(v32, &qword_27C867F10, &qword_20E33AFE0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoAction);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C867F10, &qword_20E33AFE0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoAction);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E07E898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoClientAction(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F20, &unk_20E3461D0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v24, &qword_27C863F20, &unk_20E3461D0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoClientAction);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoClientAction);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866680, type metadata accessor for TranscriptProtoClientAction, &protocol conformance descriptor for TranscriptProtoClientAction);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863F20, &unk_20E3461D0);
  }

  sub_20E0486F4(v24, v32, &qword_27C863F20, &unk_20E3461D0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863F20, &unk_20E3461D0);
    return sub_20E04875C(v32, &qword_27C863F20, &unk_20E3461D0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoClientAction);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863F20, &unk_20E3461D0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoClientAction);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E07EE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  v6 = *(Step - 8);
  v7 = MEMORY[0x28223BE20](Step);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BC8, &unk_20E3461C0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = Step;
  v26 = Step;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v24, &qword_27C863BC8, &unk_20E3461C0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoQueryStep);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoQueryStep);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866A90, type metadata accessor for TranscriptProtoQueryStep, &protocol conformance descriptor for TranscriptProtoQueryStep);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863BC8, &unk_20E3461C0);
  }

  sub_20E0486F4(v24, v32, &qword_27C863BC8, &unk_20E3461C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863BC8, &unk_20E3461C0);
    return sub_20E04875C(v32, &qword_27C863BC8, &unk_20E3461C0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoQueryStep);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863BC8, &unk_20E3461C0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoQueryStep);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E07F410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoVariableStep(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687C8, &qword_20E33B780);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_20E04875C(v24, &qword_27C8687C8, &qword_20E33B780);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoVariableStep);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoVariableStep);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866E98, type metadata accessor for TranscriptProtoVariableStep, &protocol conformance descriptor for TranscriptProtoVariableStep);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8687C8, &qword_20E33B780);
  }

  sub_20E0486F4(v24, v32, &qword_27C8687C8, &qword_20E33B780);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8687C8, &qword_20E33B780);
    return sub_20E04875C(v32, &qword_27C8687C8, &qword_20E33B780);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoVariableStep);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8687C8, &qword_20E33B780);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoVariableStep);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E07F9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSessionError(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687D0, &qword_20E33B788);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_20E04875C(v24, &qword_27C8687D0, &qword_20E33B788);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoSessionError);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoSessionError);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C863EE8, type metadata accessor for TranscriptProtoSessionError, &protocol conformance descriptor for TranscriptProtoSessionError);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8687D0, &qword_20E33B788);
  }

  sub_20E0486F4(v24, v32, &qword_27C8687D0, &qword_20E33B788);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8687D0, &qword_20E33B788);
    return sub_20E04875C(v32, &qword_27C8687D0, &qword_20E33B788);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoSessionError);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8687D0, &qword_20E33B788);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoSessionError);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E07FF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), unsigned int a8)
{
  v37 = a8;
  v35 = a7;
  v36 = a6;
  v38 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FE0, &qword_20E33B098);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v32 - v17;
  v19 = sub_20E322110();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v18, 1, 1, v19);
  sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  v21 = v39;
  sub_20E322300();
  v39 = v21;
  if (v21)
  {
    return sub_20E04875C(v18, &qword_27C867FE0, &qword_20E33B098);
  }

  v32[1] = a4;
  v33 = v12;
  v34 = a5;
  sub_20E0486F4(v18, v16, &qword_27C867FE0, &qword_20E33B098);
  v22 = (*(v20 + 48))(v16, 1, v19);
  sub_20E04875C(v16, &qword_27C867FE0, &qword_20E33B098);
  if (v22 == 1)
  {
    return sub_20E04875C(v18, &qword_27C867FE0, &qword_20E33B098);
  }

  v24 = v33;
  v25 = v34;
  v26 = v36;
  sub_20E0486F4(v38, v33, v34, v36);
  v27 = v35(0);
  v28 = *(v27 - 8);
  v29 = (*(v28 + 48))(v24, 1, v27);
  sub_20E04875C(v24, v25, v26);
  if (v29 != 1)
  {
    v30 = v39;
    sub_20E3222C0();
    if (v30)
    {
      return sub_20E04875C(v18, &qword_27C867FE0, &qword_20E33B098);
    }
  }

  sub_20E04875C(v18, &qword_27C867FE0, &qword_20E33B098);
  v31 = v38;
  sub_20E04875C(v38, v34, v26);
  swift_storeEnumTagMultiPayload();
  return (*(v28 + 56))(v31, 0, 1, v27);
}

uint64_t sub_20E080310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  v6 = *(StepResults - 8);
  v7 = MEMORY[0x28223BE20](StepResults);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687D8, &qword_20E33B790);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = StepResults;
  v26 = StepResults;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_20E04875C(v24, &qword_27C8687D8, &qword_20E33B790);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoQueryStepResults);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoQueryStepResults);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866B08, type metadata accessor for TranscriptProtoQueryStepResults, &protocol conformance descriptor for TranscriptProtoQueryStepResults);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8687D8, &qword_20E33B790);
  }

  sub_20E0486F4(v24, v32, &qword_27C8687D8, &qword_20E33B790);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8687D8, &qword_20E33B790);
    return sub_20E04875C(v32, &qword_27C8687D8, &qword_20E33B790);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoQueryStepResults);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8687D8, &qword_20E33B790);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoQueryStepResults);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0808CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687E0, &qword_20E33B798);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_20E04875C(v24, &qword_27C8687E0, &qword_20E33B798);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoActionResolverRequest);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoActionResolverRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866DA0, type metadata accessor for TranscriptProtoActionResolverRequest, &protocol conformance descriptor for TranscriptProtoActionResolverRequest);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8687E0, &qword_20E33B798);
  }

  sub_20E0486F4(v24, v32, &qword_27C8687E0, &qword_20E33B798);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8687E0, &qword_20E33B798);
    return sub_20E04875C(v32, &qword_27C8687E0, &qword_20E33B798);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoActionResolverRequest);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8687E0, &qword_20E33B798);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoActionResolverRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E080E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSafetyModeRelease(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687E8, &qword_20E33B7A0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_20E04875C(v24, &qword_27C8687E8, &qword_20E33B7A0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoSafetyModeRelease);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoSafetyModeRelease);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866DF0, type metadata accessor for TranscriptProtoSafetyModeRelease, &protocol conformance descriptor for TranscriptProtoSafetyModeRelease);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8687E8, &qword_20E33B7A0);
  }

  sub_20E0486F4(v24, v32, &qword_27C8687E8, &qword_20E33B7A0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8687E8, &qword_20E33B7A0);
    return sub_20E04875C(v32, &qword_27C8687E8, &qword_20E33B7A0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoSafetyModeRelease);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8687E8, &qword_20E33B7A0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoSafetyModeRelease);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E081444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSafetyModeException(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687F0, &qword_20E33B7A8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_20E04875C(v24, &qword_27C8687F0, &qword_20E33B7A8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoSafetyModeException);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoSafetyModeException);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866E08, type metadata accessor for TranscriptProtoSafetyModeException, &protocol conformance descriptor for TranscriptProtoSafetyModeException);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8687F0, &qword_20E33B7A8);
  }

  sub_20E0486F4(v24, v32, &qword_27C8687F0, &qword_20E33B7A8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8687F0, &qword_20E33B7A8);
    return sub_20E04875C(v32, &qword_27C8687F0, &qword_20E33B7A8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoSafetyModeException);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8687F0, &qword_20E33B7A8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoSafetyModeException);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E081A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687F8, &qword_20E33B7B0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_20E04875C(v24, &qword_27C8687F8, &qword_20E33B7B0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoResponseGenerationRequest);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoResponseGenerationRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866640, type metadata accessor for TranscriptProtoResponseGenerationRequest, &protocol conformance descriptor for TranscriptProtoResponseGenerationRequest);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8687F8, &qword_20E33B7B0);
  }

  sub_20E0486F4(v24, v32, &qword_27C8687F8, &qword_20E33B7B0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8687F8, &qword_20E33B7B0);
    return sub_20E04875C(v32, &qword_27C8687F8, &qword_20E33B7B0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoResponseGenerationRequest);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8687F8, &qword_20E33B7B0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoResponseGenerationRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E081FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  matched = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
  v6 = *(matched - 8);
  v7 = MEMORY[0x28223BE20](matched);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868800, &qword_20E33B7B8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = matched;
  v26 = matched;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_20E04875C(v24, &qword_27C868800, &qword_20E33B7B8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867438, type metadata accessor for TranscriptProtoEntitySpanMatchResult, &protocol conformance descriptor for TranscriptProtoEntitySpanMatchResult);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868800, &qword_20E33B7B8);
  }

  sub_20E0486F4(v24, v32, &qword_27C868800, &qword_20E33B7B8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868800, &qword_20E33B7B8);
    return sub_20E04875C(v32, &qword_27C868800, &qword_20E33B7B8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868800, &qword_20E33B7B8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E082578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868808, &qword_20E33B7C0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_20E04875C(v24, &qword_27C868808, &qword_20E33B7C0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoContextRetrieved);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoContextRetrieved);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866DB8, type metadata accessor for TranscriptProtoContextRetrieved, &protocol conformance descriptor for TranscriptProtoContextRetrieved);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868808, &qword_20E33B7C0);
  }

  sub_20E0486F4(v24, v32, &qword_27C868808, &qword_20E33B7C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868808, &qword_20E33B7C0);
    return sub_20E04875C(v32, &qword_27C868808, &qword_20E33B7C0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoContextRetrieved);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868808, &qword_20E33B7C0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoContextRetrieved);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E082B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoActionCancellation(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AC0, &qword_20E323C68);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_20E04875C(v24, &qword_27C863AC0, &qword_20E323C68);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoActionCancellation);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoActionCancellation);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866558, type metadata accessor for TranscriptProtoActionCancellation, &protocol conformance descriptor for TranscriptProtoActionCancellation);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863AC0, &qword_20E323C68);
  }

  sub_20E0486F4(v24, v32, &qword_27C863AC0, &qword_20E323C68);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863AC0, &qword_20E323C68);
    return sub_20E04875C(v32, &qword_27C863AC0, &qword_20E323C68);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoActionCancellation);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863AC0, &qword_20E323C68);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoActionCancellation);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0830F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868810, &qword_20E33B7C8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_20E04875C(v24, &qword_27C868810, &qword_20E33B7C8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoToolRetrievalResponse);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoToolRetrievalResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867450, type metadata accessor for TranscriptProtoToolRetrievalResponse, &protocol conformance descriptor for TranscriptProtoToolRetrievalResponse);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868810, &qword_20E33B7C8);
  }

  sub_20E0486F4(v24, v32, &qword_27C868810, &qword_20E33B7C8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868810, &qword_20E33B7C8);
    return sub_20E04875C(v32, &qword_27C868810, &qword_20E33B7C8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoToolRetrievalResponse);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868810, &qword_20E33B7C8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoToolRetrievalResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0836AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F68, &unk_20E3461B0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_20E04875C(v24, &qword_27C863F68, &unk_20E3461B0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoSystemResponse);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoSystemResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867468, type metadata accessor for TranscriptProtoSystemResponse, &protocol conformance descriptor for TranscriptProtoSystemResponse);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863F68, &unk_20E3461B0);
  }

  sub_20E0486F4(v24, v32, &qword_27C863F68, &unk_20E3461B0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863F68, &unk_20E3461B0);
    return sub_20E04875C(v32, &qword_27C863F68, &unk_20E3461B0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoSystemResponse);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863F68, &unk_20E3461B0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoSystemResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E083C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoStatementResult(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A98, &qword_20E323980);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_20E04875C(v24, &qword_27C863A98, &qword_20E323980);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoStatementResult);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoStatementResult);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C865AC8, type metadata accessor for TranscriptProtoStatementResult, &protocol conformance descriptor for TranscriptProtoStatementResult);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863A98, &qword_20E323980);
  }

  sub_20E0486F4(v24, v32, &qword_27C863A98, &qword_20E323980);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863A98, &qword_20E323980);
    return sub_20E04875C(v32, &qword_27C863A98, &qword_20E323980);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoStatementResult);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863A98, &qword_20E323980);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoStatementResult);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E084224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868818, &qword_20E33B7D0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_20E04875C(v24, &qword_27C868818, &qword_20E33B7D0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoExternalAgentOutcome);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoExternalAgentOutcome);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(qword_280E07F38, type metadata accessor for TranscriptProtoExternalAgentOutcome, &protocol conformance descriptor for TranscriptProtoExternalAgentOutcome);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868818, &qword_20E33B7D0);
  }

  sub_20E0486F4(v24, v32, &qword_27C868818, &qword_20E33B7D0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868818, &qword_20E33B7D0);
    return sub_20E04875C(v32, &qword_27C868818, &qword_20E33B7D0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoExternalAgentOutcome);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868818, &qword_20E33B7D0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoExternalAgentOutcome);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0847E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868708, &qword_20E33B700);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_20E04875C(v24, &qword_27C868708, &qword_20E33B700);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866440, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868708, &qword_20E33B700);
  }

  sub_20E0486F4(v24, v32, &qword_27C868708, &qword_20E33B700);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868708, &qword_20E33B700);
    return sub_20E04875C(v32, &qword_27C868708, &qword_20E33B700);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868708, &qword_20E33B700);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E084D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoToolResolution(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B98, &qword_20E323E80);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_20E04875C(v24, &qword_27C863B98, &qword_20E323E80);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoToolResolution);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoToolResolution);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867510, type metadata accessor for TranscriptProtoToolResolution, &protocol conformance descriptor for TranscriptProtoToolResolution);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863B98, &qword_20E323E80);
  }

  sub_20E0486F4(v24, v32, &qword_27C863B98, &qword_20E323E80);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863B98, &qword_20E323E80);
    return sub_20E04875C(v32, &qword_27C863B98, &qword_20E323E80);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoToolResolution);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863B98, &qword_20E323E80);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoToolResolution);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}