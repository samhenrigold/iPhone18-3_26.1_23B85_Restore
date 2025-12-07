uint64_t sub_228079CA4()
{

  if (v0)
  {

    v1 = sub_22807A7D8;
  }

  else
  {
    v1 = sub_228079DC8;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_228079DC8()
{
  v79 = v0;
  v1 = *(v0 + 536);
  if ((*(*(v0 + 520) + 48))(v1, 1, *(v0 + 512)) == 1)
  {
    v2 = *(v0 + 696);
    (*(*(v0 + 552) + 8))(*(v0 + 560), *(v0 + 544));

    if (*(v2 + 24))
    {
      if (qword_2813C49E0 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + 584);
      v4 = *(v0 + 472);
      v5 = sub_22813882C();
      __swift_project_value_buffer(v5, qword_2813C8A20);
      sub_228084B4C(v4, v3, type metadata accessor for PartialSummariesOperation);
      v6 = sub_22813880C();
      v7 = sub_2281396EC();
      v8 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 584);
      if (v8)
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v78 = v11;
        *v10 = 136446466;
        v12 = v9[3];
        v13 = v9[4];
        __swift_project_boxed_opaque_existential_1(v9, v12);
        v14 = (*(v13 + 16))(v12, v13);
        v16 = v15;
        sub_228084CF0(v9, type metadata accessor for PartialSummariesOperation);
        v17 = sub_227FCC340(v14, v16, &v78);

        *(v10 + 4) = v17;
        *(v10 + 12) = 2050;
        *(v10 + 14) = *(v2 + 24);
        _os_log_impl(&dword_227FC3000, v6, v7, "Exited task group for [requestIdentifier: %{public}s] without processing all input; %{public}ld chunks remaining.", v10, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm_7(v11);
        MEMORY[0x22AAB28A0](v11, -1, -1);
        MEMORY[0x22AAB28A0](v10, -1, -1);
      }

      else
      {

        sub_228084CF0(v9, type metadata accessor for PartialSummariesOperation);
      }
    }

    sub_228086458(*(*(v0 + 472) + 40), *(v0 + 688));

    v30 = *(v0 + 8);

    return v30();
  }

  v18 = *(v0 + 640);
  v19 = *(v0 + 528);
  v21 = *(v0 + 496);
  v20 = *(v0 + 504);
  v22 = *(v0 + 472);
  sub_2280876B0(v1, v19, type metadata accessor for PartialSummariesOperation.TaskResult);
  sub_228082E64(v19, v18, (v0 + 424), v22, (v0 + 432), v21, v20);

  MEMORY[0x22AAB1AA0](v23);
  if (*((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_53;
  }

LABEL_8:
  v24 = *(v0 + 680);
  v25 = *(v0 + 528);
  sub_22813955C();
  v71 = *(v0 + 440);
  if (*v25 | v24)
  {
    v26 = *(v0 + 680);
    v27 = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  v28 = *(v0 + 720);

  if (v28 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v29 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v29 = &qword_2813C76F8;
  }

  v32 = *(v0 + 721);
  v33 = *(v0 + 648);
  v27 = *(*v29 + 1768);
  v34 = *(*v29 + 1776);
  v35 = *(*v29 + 2208);

  if (v32 == 1)
  {
    v34(v35);

    v27 = *(v0 + 456);
  }

  else
  {
  }

LABEL_26:
  v36 = *(v0 + 656);
  v37 = *__swift_project_boxed_opaque_existential_1(*(v0 + 488), *(*(v0 + 488) + 24));
  *(v0 + 160) = v36;
  *(v0 + 168) = &off_283B5E840;
  *(v0 + 136) = v37;

  v38 = *(v0 + 704);
  if (v27 > 0)
  {
    while (1)
    {
      swift_beginAccess();
      if (v38[3] < 1)
      {
        swift_endAccess();
LABEL_47:
        v67 = v38;
        goto LABEL_48;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2280849CC();
      }

      v42 = *(v0 + 416);
      v43 = v42[4];
      v44 = &v42[5 * v43];
      v45 = v44[9];
      v46 = *(v44 + 7);
      *(v0 + 16) = *(v44 + 5);
      *(v0 + 32) = v46;
      *(v0 + 48) = v45;
      v47 = __OFADD__(v43, 1);
      v48 = v43 + 1;
      if (v47)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        sub_22813953C();
        goto LABEL_8;
      }

      v49 = v42[3];
      if (v48 >= v42[2])
      {
        v48 = 0;
      }

      v42[4] = v48;
      if (__OFSUB__(v49, 1))
      {
        goto LABEL_52;
      }

      v76 = v42;
      v77 = v27;
      v50 = *(v0 + 664);
      v51 = *(v0 + 608);
      v74 = *(v0 + 640);
      v75 = *(v0 + 600);
      v52 = *(v0 + 592);
      v53 = *(v0 + 568);
      v54 = *(v0 + 472);
      v73 = *(v0 + 480);
      v42[3] = v49 - 1;
      swift_endAccess();
      v55 = sub_22813959C();
      v72 = *(v55 - 8);
      (*(v72 + 56))(v51, 1, 1, v55);
      sub_228084B4C(v54, v52, type metadata accessor for PartialSummariesOperation);
      sub_22808764C(v0 + 136, v0 + 176);
      v56 = (*(v53 + 80) + 72) & ~*(v53 + 80);
      v57 = (v56 + v50) & 0xFFFFFFFFFFFFFFF8;
      v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
      v59 = swift_allocObject();
      *(v59 + 16) = 0;
      v60 = (v59 + 16);
      *(v59 + 24) = 0;
      v61 = *(v0 + 32);
      *(v59 + 32) = *(v0 + 16);
      *(v59 + 48) = v61;
      *(v59 + 64) = *(v0 + 48);
      sub_2280876B0(v52, v59 + v56, type metadata accessor for PartialSummariesOperation);
      *(v59 + v57) = v74;
      *(v59 + v58) = v73;
      sub_227FD0F5C((v0 + 176), v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8));
      sub_228088344(v51, v75, &qword_27D81E788, &unk_22813BC90);
      LODWORD(v52) = (*(v72 + 48))(v75, 1, v55);

      v62 = *(v0 + 600);
      if (v52 == 1)
      {
        sub_2280883AC(*(v0 + 600), &qword_27D81E788, &unk_22813BC90);
        v63 = v77;
        if (!*v60)
        {
          goto LABEL_41;
        }
      }

      else
      {
        sub_22813958C();
        (*(v72 + 8))(v62, v55);
        v63 = v77;
        if (!*v60)
        {
LABEL_41:
          v64 = 0;
          v66 = 0;
          goto LABEL_42;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v64 = sub_22813957C();
      v66 = v65;
      swift_unknownObjectRelease();
LABEL_42:
      v38 = v76;

      if (v66 | v64)
      {
        v39 = v0 + 256;
        *(v0 + 256) = 0;
        *(v0 + 264) = 0;
        *(v0 + 272) = v64;
        *(v0 + 280) = v66;
      }

      else
      {
        v39 = 0;
      }

      v27 = v63 - 1;
      v40 = *(v0 + 672);
      v41 = *(v0 + 608);
      *(v0 + 344) = 1;
      *(v0 + 352) = v39;
      *(v0 + 360) = v40;
      swift_task_create();

      sub_2280883AC(v41, &qword_27D81E788, &unk_22813BC90);
      if ((v27 + 1) <= 1)
      {
        v27 = 0;
        goto LABEL_47;
      }
    }
  }

  v67 = *(v0 + 696);
LABEL_48:
  sub_228084CF0(*(v0 + 528), type metadata accessor for PartialSummariesOperation.TaskResult);
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 136));
  *(v0 + 704) = v38;
  *(v0 + 696) = v67;
  *(v0 + 688) = v71;
  *(v0 + 680) = v27;
  v68 = swift_task_alloc();
  *(v0 + 712) = v68;
  *v68 = v0;
  v68[1] = sub_228079CA4;
  v69 = *(v0 + 544);
  v70 = *(v0 + 536);

  return MEMORY[0x2822004E8](v70, 0, 0, v69, v0 + 448);
}

uint64_t sub_22807A7D8()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22807A908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a1;
  v8[11] = a4;
  type metadata accessor for PartialSummariesOperation(0);
  v8[16] = swift_task_alloc();
  v9 = sub_22813882C();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22807A9FC, 0, 0);
}

void *sub_22807A9FC()
{
  v32 = v0;
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v1 = __swift_project_value_buffer(*(v0 + 136), qword_2813C8A20);
  if (qword_2813C49B8 != -1)
  {
    swift_once();
  }

  if ((byte_2813C49C1 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v1 = __swift_project_value_buffer(*(v0 + 136), qword_2813C4990);
  }

  v2 = *(v0 + 128);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  (*(*(v0 + 144) + 16))(*(v0 + 152), v1, *(v0 + 136));
  *(v0 + 16) = *(v4 + 8);
  *(v0 + 32) = *(v4 + 24);
  sub_228084B4C(v3, v2, type metadata accessor for PartialSummariesOperation);
  sub_228087AFC(v0 + 16, v0 + 48);
  sub_228087AFC(v0 + 32, v0 + 64);
  v5 = sub_22813880C();
  v6 = sub_2281396CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    result = swift_slowAlloc();
    v31 = result;
    *v8 = 134349314;
    if (__OFADD__(*v7, 1))
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = *(v0 + 144);
    v12 = *(v0 + 128);
    v29 = *(v0 + 136);
    v30 = *(v0 + 152);
    *(v8 + 4) = *v7 + 1;
    sub_227FE5D7C(v0 + 16);
    sub_227FE5D7C(v0 + 32);
    *(v8 + 12) = 2082;
    v14 = v12[3];
    v13 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v14);
    v15 = (*(v13 + 16))(v14, v13);
    v17 = v16;
    sub_228084CF0(v12, type metadata accessor for PartialSummariesOperation);
    v18 = sub_227FCC340(v15, v17, &v31);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_227FC3000, v5, v6, "Adding task for chunk %{public}ld for [requestIdentifier: %{public}s]", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v10);
    MEMORY[0x22AAB28A0](v10, -1, -1);
    MEMORY[0x22AAB28A0](v8, -1, -1);

    (*(v11 + 8))(v30, v29);
  }

  else
  {
    v20 = *(v0 + 144);
    v19 = *(v0 + 152);
    v22 = *(v0 + 128);
    v21 = *(v0 + 136);
    sub_227FE5D7C(v0 + 16);
    sub_227FE5D7C(v0 + 32);

    (*(v20 + 8))(v19, v21);
    sub_228084CF0(v22, type metadata accessor for PartialSummariesOperation);
  }

  v23 = swift_task_alloc();
  *(v0 + 160) = v23;
  *v23 = v0;
  v23[1] = sub_22807ADA4;
  v24 = *(v0 + 112);
  v25 = *(v0 + 120);
  v26 = *(v0 + 104);
  v27 = *(v0 + 80);
  v28 = *(v0 + 88);

  return sub_22807AED8(v27, v28, v26, v24, v25);
}

uint64_t sub_22807ADA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22807AED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[78] = v5;
  v6[77] = a5;
  v6[76] = a4;
  v6[75] = a3;
  v6[74] = a2;
  v6[73] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF0, &qword_22813E230);
  v6[79] = swift_task_alloc();
  v7 = sub_2281386AC();
  v6[80] = v7;
  v6[81] = *(v7 - 8);
  v6[82] = swift_task_alloc();
  v8 = sub_2281385BC();
  v6[83] = v8;
  v6[84] = *(v8 - 8);
  v6[85] = swift_task_alloc();
  v9 = sub_2281386DC();
  v6[86] = v9;
  v6[87] = *(v9 - 8);
  v6[88] = swift_task_alloc();
  v10 = sub_2281386CC();
  v6[89] = v10;
  v6[90] = *(v10 - 8);
  v6[91] = swift_task_alloc();
  v11 = sub_2281386FC();
  v6[92] = v11;
  v6[93] = *(v11 - 8);
  v6[94] = swift_task_alloc();
  v6[95] = swift_task_alloc();
  v12 = sub_22813757C();
  v6[96] = v12;
  v6[97] = *(v12 - 8);
  v6[98] = swift_task_alloc();
  v6[99] = swift_task_alloc();
  v6[100] = swift_task_alloc();
  v6[101] = type metadata accessor for ModelBundleIdentifier(0);
  v6[102] = swift_task_alloc();
  v13 = sub_228138F9C();
  v6[103] = v13;
  v6[104] = *(v13 - 8);
  v6[105] = swift_task_alloc();
  v6[106] = swift_task_alloc();
  v6[107] = swift_task_alloc();
  v6[108] = swift_task_alloc();
  v6[109] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0);
  v6[110] = swift_task_alloc();
  v6[111] = swift_task_alloc();
  v14 = sub_228138E0C();
  v6[112] = v14;
  v6[113] = *(v14 - 8);
  v6[114] = swift_task_alloc();
  type metadata accessor for PartialSummariesOperation(0);
  v6[115] = swift_task_alloc();
  v6[116] = swift_task_alloc();
  v6[117] = swift_task_alloc();
  v6[118] = swift_task_alloc();
  v6[119] = swift_task_alloc();
  v6[120] = swift_task_alloc();
  v15 = sub_22813882C();
  v6[121] = v15;
  v6[122] = *(v15 - 8);
  v6[123] = swift_task_alloc();
  v6[124] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0);
  v6[125] = swift_task_alloc();
  v6[126] = swift_task_alloc();
  v6[127] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22807B450, 0, 0);
}

void *sub_22807B450()
{
  v60 = v0;
  v1 = *(v0 + 1016);
  v2 = *(v0 + 1008);
  v55 = **(v0 + 592);
  v57 = *(v0 + 1000);
  *(v0 + 1024) = v55;
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v3 = sub_2280D5C74();
  *(v0 + 1032) = v3;
  os_unfair_lock_lock((v3 + 16));

  *(v3 + 24) = MEMORY[0x277D84F98];
  os_unfair_lock_unlock((v3 + 16));
  sub_228136F6C();
  v4 = sub_228136F8C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v1, 0, 1, v4);
  KeyPath = swift_getKeyPath(byte_22813DE90);
  sub_228088344(v1, v2, &qword_27D81EC50, &unk_228140BB0);
  os_unfair_lock_lock((v3 + 16));
  sub_228088344(v2, v57, &qword_27D81EC50, &unk_228140BB0);
  v7 = (*(v5 + 48))(v57, 1, v4);
  v8 = *(v0 + 1000);
  if (v7 == 1)
  {

    sub_2280883AC(v8, &qword_27D81EC50, &unk_228140BB0);
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
  }

  else
  {
    *(v0 + 488) = v4;
    boxed_opaque_existential_0Tm_0 = __swift_allocate_boxed_opaque_existential_0Tm_0((v0 + 464));
    (*(v5 + 32))(boxed_opaque_existential_0Tm_0, v8, v4);
  }

  v10 = *(v0 + 1016);
  v11 = *(v0 + 1008);
  sub_228044D20(v0 + 464, KeyPath, (v3 + 24));
  os_unfair_lock_unlock((v3 + 16));

  sub_2280883AC(v10, &qword_27D81EC50, &unk_228140BB0);
  sub_2280883AC(v11, &qword_27D81EC50, &unk_228140BB0);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(*(v0 + 968), qword_2813C8A20);
  *(v0 + 1040) = v12;
  if (qword_2813C49B8 != -1)
  {
    swift_once();
  }

  v13 = byte_2813C49C1;
  *(v0 + 1300) = byte_2813C49C1;
  if ((v13 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(*(v0 + 968), qword_2813C4990);
  }

  v14 = *(v0 + 992);
  v15 = *(v0 + 968);
  v16 = *(v0 + 960);
  v17 = *(v0 + 952);
  v18 = *(v0 + 624);
  v19 = *(*(v0 + 976) + 16);
  *(v0 + 1048) = v19;
  v19(v14, v12, v15);
  sub_228084B4C(v18, v16, type metadata accessor for PartialSummariesOperation);
  sub_228084B4C(v18, v17, type metadata accessor for PartialSummariesOperation);
  v20 = sub_22813880C();
  v21 = sub_2281396CC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    result = swift_slowAlloc();
    v59 = result;
    *v22 = 134349570;
    v24 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      __break(1u);
      return result;
    }

    v25 = result;
    v54 = *(v0 + 976);
    v56 = *(v0 + 968);
    v58 = *(v0 + 992);
    v26 = *(v0 + 960);
    v27 = *(v0 + 952);
    *(v22 + 4) = v24;
    *(v22 + 12) = 2050;
    v28 = *(*(v26 + 48) + 16);
    sub_228084CF0(v26, type metadata accessor for PartialSummariesOperation);
    *(v22 + 14) = v28;
    *(v22 + 22) = 2082;
    v29 = v27[3];
    v30 = v27[4];
    __swift_project_boxed_opaque_existential_1(v27, v29);
    v31 = (*(v30 + 16))(v29, v30);
    v33 = v32;
    sub_228084CF0(v27, type metadata accessor for PartialSummariesOperation);
    v34 = sub_227FCC340(v31, v33, &v59);

    *(v22 + 24) = v34;
    _os_log_impl(&dword_227FC3000, v20, v21, "Started summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s]", v22, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v25);
    MEMORY[0x22AAB28A0](v25, -1, -1);
    MEMORY[0x22AAB28A0](v22, -1, -1);

    v35 = *(v54 + 8);
    v35(v58, v56);
  }

  else
  {
    v36 = *(v0 + 992);
    v37 = *(v0 + 976);
    v38 = *(v0 + 968);
    v39 = *(v0 + 952);
    sub_228084CF0(*(v0 + 960), type metadata accessor for PartialSummariesOperation);

    v35 = *(v37 + 8);
    v35(v36, v38);
    sub_228084CF0(v39, type metadata accessor for PartialSummariesOperation);
  }

  *(v0 + 1056) = v35;
  v40 = *(v0 + 904);
  v41 = *(v0 + 896);
  v42 = *(v0 + 888);
  v43 = (*(v0 + 600) + OBJC_IVAR____TtCV16SummarizationKit25PartialSummariesOperationP33_C01AE9D7F5E45ED078F835903D8E9C9431AccumulatedSafetyClassification_safetyClassification);
  os_unfair_lock_lock(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECA0, &qword_22813E0D8);
  sub_228088344(v43 + *(v44 + 28), v42, &qword_27D81EC98, &qword_22813E0D0);
  if ((*(v40 + 48))(v42, 1, v41) == 1)
  {
    sub_2280883AC(*(v0 + 888), &qword_27D81EC98, &qword_22813E0D0);
    v45 = 0;
  }

  else
  {
    v46 = *(v0 + 912);
    v47 = *(v0 + 904);
    v48 = *(v0 + 896);
    (*(v47 + 32))(v46, *(v0 + 888), v48);
    v49 = sub_228138DFC();
    (*(v47 + 8))(v46, v48);
    v45 = v49 ^ 1;
  }

  *(v0 + 1301) = v45 & 1;
  v50 = *(v0 + 624);
  v51 = *(v0 + 616);
  v52 = *(v0 + 592);
  os_unfair_lock_unlock(v43);
  *(v0 + 1064) = *(v52 + 8);
  *(v0 + 1072) = *(v52 + 16);
  sub_22808764C(v50, v0 + 64);
  __swift_project_boxed_opaque_existential_1(v51, v51[3]);
  v53 = swift_task_alloc();
  *(v0 + 1080) = v53;
  *v53 = v0;
  v53[1] = sub_22807BB44;

  return sub_2280AC248();
}

uint64_t sub_22807BB44(uint64_t a1)
{
  v3 = *v2;
  v3[136] = a1;
  v3[137] = v1;

  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm_7(v3 + 8);
    v4 = sub_22807BED8;
  }

  else
  {
    v4 = sub_22807BC64;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22807BC64()
{
  v1 = v0[76];
  v2 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine;
  v0[138] = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  __swift_project_boxed_opaque_existential_1((v1 + v2), v3);
  v5 = *(v4 + 8);
  v10 = (*(v5 + 24) + **(v5 + 24));
  v6 = swift_task_alloc();
  v0[139] = v6;
  *v6 = v0;
  v6[1] = sub_22807BDA8;
  v7 = v0[134];
  v8 = v0[133];

  return v10(v8, v7, v3, v5);
}

uint64_t sub_22807BDA8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1120) = v1;

  if (v1)
  {

    v5 = sub_22807D3D0;
  }

  else
  {
    *(v4 + 1128) = a1;
    v5 = sub_22807C340;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22807BED8()
{
  v26 = v0;
  v1 = v0[137];
  v2 = v0[115];
  v3 = v0[78];
  sub_228084B4C(v3, v0[116], type metadata accessor for PartialSummariesOperation);
  sub_228084B4C(v3, v2, type metadata accessor for PartialSummariesOperation);
  v4 = v1;
  v5 = sub_22813880C();
  v6 = sub_2281396DC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[128];
    v8 = swift_slowAlloc();
    result = swift_slowAlloc();
    v25[0] = result;
    *v8 = 134349826;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = v0[116];
    v12 = v0[115];
    *(v8 + 4) = v7 + 1;
    *(v8 + 12) = 2050;
    v13 = *(*(v11 + 48) + 16);
    sub_228084CF0(v11, type metadata accessor for PartialSummariesOperation);
    *(v8 + 14) = v13;
    *(v8 + 22) = 2082;
    v14 = v12[3];
    v15 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v14);
    v16 = (*(v15 + 16))(v14, v15);
    v18 = v17;
    sub_228084CF0(v12, type metadata accessor for PartialSummariesOperation);
    v19 = sub_227FCC340(v16, v18, v25);

    *(v8 + 24) = v19;
    *(v8 + 32) = 2082;
    swift_getErrorValue();
    v20 = Error.loggingDescription.getter(v0[63], v0[64]);
    v22 = sub_227FCC340(v20, v21, v25);

    *(v8 + 34) = v22;
    _os_log_impl(&dword_227FC3000, v5, v6, "Finished summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s] with error: %{public}s", v8, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v10, -1, -1);
    MEMORY[0x22AAB28A0](v8, -1, -1);
  }

  else
  {
    v23 = v0[115];
    sub_228084CF0(v0[116], type metadata accessor for PartialSummariesOperation);

    sub_228084CF0(v23, type metadata accessor for PartialSummariesOperation);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_22807C340()
{
  v134 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1032);
  KeyPath = swift_getKeyPath("P1nU");
  os_unfair_lock_lock((v2 + 16));
  v133 = MEMORY[0x277D84A28];
  v132[0] = v1;

  sub_2280449E4(v132, KeyPath, (v2 + 24));
  os_unfair_lock_unlock((v2 + 16));

  *(v0 + 104) = *(v0 + 1064);
  v4 = (v0 + 64);
  v5 = *(v0 + 1072);
  v127 = *(v0 + 1032);
  v129 = *(v0 + 1120);
  *(v0 + 128) = &type metadata for SKTextChunk;
  *(v0 + 136) = &off_283B5E458;
  *(v0 + 112) = v5;
  *(v0 + 120) = 1;

  sub_22808764C(v0 + 64, v0 + 144);
  sub_22808764C(v0 + 104, v0 + 184);

  v6 = sub_22813880C();
  v7 = sub_2281396BC();

  v126 = (v0 + 64);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v132[0] = v9;
    *v8 = 136315906;
    v10 = *(v0 + 168);
    v11 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), v10);
    v12 = (*(v11 + 16))(v10, v11);
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 144));
    v15 = sub_227FCC340(v12, v14, v132);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1((v0 + 184), *(v0 + 208));
    swift_getDynamicType();
    v16 = sub_228139B8C();
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 184));
    v19 = sub_227FCC340(v16, v18, v132);

    *(v8 + 14) = v19;
    *(v8 + 22) = 2080;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4E0, &qword_22813AC40);
    v21 = MEMORY[0x22AAB1AD0](&unk_283B5B448, v20);
    v23 = sub_227FCC340(v21, v22, v132);

    *(v8 + 24) = v23;
    *(v8 + 32) = 2080;
    v24 = ModelBundleIdentifier.loggingDescription.getter();
    v26 = sub_227FCC340(v24, v25, v132);

    *(v8 + 34) = v26;
    _os_log_impl(&dword_227FC3000, v6, v7, "Handling request [requestIdentifier: %s, contentType: %s, styles: %s] with model: %s", v8, 0x2Au);
    swift_arrayDestroy();
    v27 = v9;
    v4 = (v0 + 64);
    MEMORY[0x22AAB28A0](v27, -1, -1);
    MEMORY[0x22AAB28A0](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 184));
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 144));
  }

  sub_228084B4C(*(v0 + 608) + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration, *(v0 + 816), type metadata accessor for ModelBundleIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v29 = 1;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v29 = 2;
LABEL_8:
    sub_228084CF0(*(v0 + 816), type metadata accessor for ModelBundleIdentifier);
    goto LABEL_10;
  }

  v29 = 3;
LABEL_10:
  v30 = *(v0 + 1032);
  v31 = swift_getKeyPath(byte_22813DEE8);
  os_unfair_lock_lock((v30 + 16));
  v133 = MEMORY[0x277D84A28];
  v132[0] = v29;

  sub_2280449E4(v132, v31, (v30 + 24));
  os_unfair_lock_unlock((v30 + 16));

  type metadata accessor for SharedData();
  v32 = swift_allocObject();
  *(v0 + 1136) = v32;
  type metadata accessor for SKAssetManager();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  swift_initStackObject();
  v33 = SKAssetManager.init()();
  type metadata accessor for FilterRules(0);
  swift_allocObject();
  v34 = FilterRules.init(assetManager:)(v33);
  if (!v129)
  {
    *(v32 + 16) = v34;

    *(v32 + 24) = v127;

    if (qword_2813C8178 != -1)
    {
      swift_once();
    }

    v53 = *(v0 + 1088);
    v54 = *(v0 + 1301);
    v55 = *(v0 + 608);
    *(v0 + 576) = v32;
    v56 = swift_task_alloc();
    *(v0 + 1144) = v56;
    *(v56 + 16) = v55;
    *(v56 + 24) = v0 + 104;
    *(v56 + 32) = &unk_283B5B420;
    *(v56 + 40) = v4;
    *(v56 + 48) = v54;
    *(v56 + 49) = 1;
    *(v56 + 56) = v53;
    *(v56 + 64) = v127;
    v57 = swift_task_alloc();
    *(v0 + 1152) = v57;
    *v57 = v0;
    v57[1] = sub_22807E400;
    v58 = *(v0 + 856);
    v59 = *(v0 + 824);
    v136 = 834;
    v137 = v59;
    v60 = &unk_22813E268;
    v61 = v0 + 576;
    v62 = 0x8000000228146330;
    v63 = v56;
    v64 = 0;
    v65 = 0;
    v66 = 0xD00000000000002BLL;

    return MEMORY[0x282200908](v58, v61, v60, v63, v64, v65, v66, v62);
  }

  v35 = v129;

  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 104));
  *(v0 + 544) = v129;
  v36 = v129;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v130 = (v0 + 544);
    v37 = *(v0 + 800);
    v38 = *(v0 + 792);
    v39 = *(v0 + 784);
    v40 = *(v0 + 776);
    v41 = *(v0 + 768);

    (*(v40 + 32))(v38, v37, v41);
    v42 = *(v40 + 16);
    v42(v39, v38, v41);
    if ((*(v40 + 88))(v39, v41) == *MEMORY[0x277D71AC8])
    {
      v43 = *(v0 + 792);
      v44 = *(v0 + 784);
      v45 = *(v0 + 768);
      v46 = (*(v0 + 608) + *(v0 + 1104));
      (*(*(v0 + 776) + 96))(v44, v45);
      *(v0 + 1168) = *v44;
      *(v0 + 1296) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC60, &qword_22813DF20) + 64);
      sub_228084BB4(&qword_27D81EC58, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
      *(v0 + 1176) = swift_allocError();
      v42(v47, v43, v45);
      v48 = *__swift_project_boxed_opaque_existential_1(v46, v46[3]);
      v49 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model;
      v50 = swift_task_alloc();
      *(v0 + 1184) = v50;
      *v50 = v0;
      v51 = sub_22807FB10;
LABEL_14:
      v50[1] = v51;

      return sub_2280FA5A0(v48 + v49);
    }

    v92 = *(v0 + 792);
    v93 = *(v0 + 784);
    v94 = *(v0 + 776);
    v95 = *(v0 + 768);
    sub_228084BB4(&qword_27D81EC58, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
    v35 = swift_allocError();
    v42(v96, v92, v95);
    swift_willThrow();
    v97 = *(v94 + 8);
    v97(v92, v95);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v126);
    v97(v93, v95);
  }

  else
  {
    v67 = (v0 + 552);

    *(v0 + 552) = v129;
    v68 = v129;
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1Tm_7(v4);
      goto LABEL_32;
    }

    v130 = (v0 + 552);
    v69 = *(v0 + 760);
    v70 = *(v0 + 752);
    v71 = *(v0 + 744);
    v72 = *(v0 + 736);
    v73 = *(v0 + 704);
    v74 = *(v0 + 696);
    v75 = *(v0 + 688);

    (*(v71 + 32))(v70, v69, v72);
    sub_2281386EC();
    if ((*(v74 + 88))(v73, v75) == *MEMORY[0x277D0DB78])
    {
      v76 = *(v0 + 728);
      v77 = *(v0 + 720);
      v78 = *(v0 + 712);
      v79 = *(v0 + 704);
      v80 = *(v0 + 656);
      v81 = *(v0 + 648);
      v82 = *(v0 + 640);
      (*(*(v0 + 696) + 96))(v79, *(v0 + 688));
      (*(v77 + 32))(v76, v79, v78);
      sub_2281386BC();
      if ((*(v81 + 88))(v80, v82) == *MEMORY[0x277D0DA90])
      {
        v83 = *(v0 + 752);
        v84 = *(v0 + 744);
        v85 = *(v0 + 736);
        v86 = *(v0 + 680);
        v87 = *(v0 + 672);
        v88 = *(v0 + 664);
        v89 = *(v0 + 656);
        v90 = (*(v0 + 608) + *(v0 + 1104));
        (*(*(v0 + 648) + 96))(v89, *(v0 + 640));
        (*(v87 + 32))(v86, v89, v88);
        sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
        *(v0 + 1232) = swift_allocError();
        (*(v84 + 16))(v91, v83, v85);
        *(v0 + 1240) = sub_22813859C();
        sub_2281385AC();
        v48 = *__swift_project_boxed_opaque_existential_1(v90, v90[3]);
        v49 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model;
        v50 = swift_task_alloc();
        *(v0 + 1248) = v50;
        *v50 = v0;
        v51 = sub_2280814B0;
        goto LABEL_14;
      }

      v98 = *(v0 + 656);
      v99 = *(v0 + 648);
      v100 = *(v0 + 640);
      (*(*(v0 + 720) + 8))(*(v0 + 728), *(v0 + 712));
      (*(v99 + 8))(v98, v100);
    }

    else
    {
      (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));
    }

    v101 = *(v0 + 752);
    v102 = *(v0 + 744);
    v103 = *(v0 + 736);
    sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v35 = swift_allocError();
    (*(v102 + 16))(v104, v101, v103);
    swift_willThrow();
    (*(v102 + 8))(v101, v103);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v126);
  }

  v67 = v130;
LABEL_32:

  v105 = *(v0 + 920);
  v106 = *(v0 + 624);
  sub_228084B4C(v106, *(v0 + 928), type metadata accessor for PartialSummariesOperation);
  sub_228084B4C(v106, v105, type metadata accessor for PartialSummariesOperation);
  v107 = v35;
  v108 = sub_22813880C();
  v109 = sub_2281396DC();

  if (!os_log_type_enabled(v108, v109))
  {
    v124 = *(v0 + 920);
    sub_228084CF0(*(v0 + 928), type metadata accessor for PartialSummariesOperation);

    sub_228084CF0(v124, type metadata accessor for PartialSummariesOperation);
    goto LABEL_36;
  }

  v131 = v109;
  v110 = *(v0 + 1024);
  v111 = swift_slowAlloc();
  v58 = swift_slowAlloc();
  v128 = v58;
  v132[0] = v58;
  *v111 = 134349826;
  if (__OFADD__(v110, 1))
  {
    __break(1u);
    return MEMORY[0x282200908](v58, v61, v60, v63, v64, v65, v66, v62);
  }

  v112 = *(v0 + 928);
  v113 = *(v0 + 920);
  *(v111 + 4) = v110 + 1;
  *(v111 + 12) = 2050;
  v114 = *(*(v112 + 48) + 16);
  sub_228084CF0(v112, type metadata accessor for PartialSummariesOperation);
  *(v111 + 14) = v114;
  *(v111 + 22) = 2082;
  v116 = v113[3];
  v115 = v113[4];
  __swift_project_boxed_opaque_existential_1(v113, v116);
  v117 = (*(v115 + 16))(v116, v115);
  v119 = v118;
  sub_228084CF0(v113, type metadata accessor for PartialSummariesOperation);
  v120 = sub_227FCC340(v117, v119, v132);

  *(v111 + 24) = v120;
  *(v111 + 32) = 2082;
  swift_getErrorValue();
  v121 = Error.loggingDescription.getter(*(v0 + 504), *(v0 + 512));
  v123 = sub_227FCC340(v121, v122, v132);

  *(v111 + 34) = v123;
  _os_log_impl(&dword_227FC3000, v108, v131, "Finished summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s] with error: %{public}s", v111, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x22AAB28A0](v128, -1, -1);
  MEMORY[0x22AAB28A0](v111, -1, -1);

LABEL_36:
  swift_willThrow();

  v125 = *(v0 + 8);

  return v125();
}

uint64_t sub_22807D3D0()
{
  v42 = v0;
  *(v0 + 104) = *(v0 + 1064);
  v1 = v0 + 64;
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1032);
  *(v0 + 128) = &type metadata for SKTextChunk;
  *(v0 + 136) = &off_283B5E458;
  *(v0 + 112) = v2;
  *(v0 + 120) = 1;

  sub_22808764C(v0 + 64, v0 + 144);
  sub_22808764C(v0 + 104, v0 + 184);

  v4 = sub_22813880C();
  v5 = sub_2281396BC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v41[0] = v7;
    *v6 = 136315906;
    v8 = v3;
    v10 = *(v0 + 168);
    v9 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), v10);
    v11 = (*(v9 + 16))(v10, v9);
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 144));
    v14 = sub_227FCC340(v11, v13, v41);

    *(v6 + 4) = v14;
    *(v6 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1((v0 + 184), *(v0 + 208));
    swift_getDynamicType();
    v15 = sub_228139B8C();
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 184));
    v18 = sub_227FCC340(v15, v17, v41);

    *(v6 + 14) = v18;
    *(v6 + 22) = 2080;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4E0, &qword_22813AC40);
    v20 = MEMORY[0x22AAB1AD0](&unk_283B5B448, v19);
    v22 = sub_227FCC340(v20, v21, v41);

    *(v6 + 24) = v22;
    *(v6 + 32) = 2080;
    v3 = v8;
    v23 = ModelBundleIdentifier.loggingDescription.getter();
    v25 = sub_227FCC340(v23, v24, v41);

    *(v6 + 34) = v25;
    _os_log_impl(&dword_227FC3000, v4, v5, "Handling request [requestIdentifier: %s, contentType: %s, styles: %s] with model: %s", v6, 0x2Au);
    swift_arrayDestroy();
    v26 = v7;
    v1 = v0 + 64;
    MEMORY[0x22AAB28A0](v26, -1, -1);
    MEMORY[0x22AAB28A0](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 184));
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 144));
  }

  sub_228084B4C(*(v0 + 608) + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration, *(v0 + 816), type metadata accessor for ModelBundleIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v28 = 1;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v28 = 2;
LABEL_8:
    sub_228084CF0(*(v0 + 816), type metadata accessor for ModelBundleIdentifier);
    goto LABEL_10;
  }

  v28 = 3;
LABEL_10:
  v29 = *(v0 + 1032);
  KeyPath = swift_getKeyPath(byte_22813DEE8);
  os_unfair_lock_lock((v29 + 16));
  v41[3] = MEMORY[0x277D84A28];
  v41[0] = v28;

  sub_2280449E4(v41, KeyPath, (v29 + 24));
  os_unfair_lock_unlock((v29 + 16));

  type metadata accessor for SharedData();
  v31 = swift_allocObject();
  *(v0 + 1136) = v31;
  type metadata accessor for SKAssetManager();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  swift_initStackObject();
  v32 = SKAssetManager.init()();
  type metadata accessor for FilterRules(0);
  swift_allocObject();
  *(v31 + 16) = FilterRules.init(assetManager:)(v32);

  *(v31 + 24) = v3;

  if (qword_2813C8178 != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 1088);
  v34 = *(v0 + 1301);
  v35 = *(v0 + 608);
  *(v0 + 576) = v31;
  v36 = swift_task_alloc();
  *(v0 + 1144) = v36;
  *(v36 + 16) = v35;
  *(v36 + 24) = v0 + 104;
  *(v36 + 32) = &unk_283B5B420;
  *(v36 + 40) = v1;
  *(v36 + 48) = v34;
  *(v36 + 49) = 1;
  *(v36 + 56) = v33;
  *(v36 + 64) = v3;
  v37 = swift_task_alloc();
  *(v0 + 1152) = v37;
  *v37 = v0;
  v37[1] = sub_22807E400;
  v38 = *(v0 + 856);
  v39 = *(v0 + 824);
  v44 = 834;
  v45 = v39;

  return MEMORY[0x282200908](v38, v0 + 576, &unk_22813E268, v36, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
}

uint64_t sub_22807E400()
{
  *(*v1 + 1160) = v0;

  if (v0)
  {
    v2 = sub_22807F020;
  }

  else
  {
    v2 = sub_22807E524;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void *sub_22807E524()
{
  v78 = v0;
  v1 = *(v0 + 864);
  v2 = *(v0 + 856);
  v3 = *(v0 + 832);
  v4 = *(v0 + 824);

  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 64));
  v5 = *(v3 + 32);
  v5(v1, v2, v4);
  v6 = *(v0 + 1160);
  v5(*(v0 + 872), *(v0 + 864), *(v0 + 824));
  LOBYTE(v76) = 2;
  v7 = Summary.stringValue(for:)(&v76);
  if (!v7.value._object)
  {
    v10 = *(v0 + 872);
    v11 = *(v0 + 832);
    v12 = *(v0 + 824);
    v13 = swift_allocObject();
    *(v13 + 16) = 27;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    v14 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, 1286, sub_2280889A0, v13);
    sub_227FDB3CC();
    v9 = swift_allocError();
    *v15 = 27;
    *(v15 + 8) = v14;
    swift_willThrow();
    (*(v11 + 8))(v10, v12);
    goto LABEL_5;
  }

  object = v7.value._object;
  sub_2281395DC();
  if (v6)
  {
    v9 = v6;
    (*(*(v0 + 832) + 8))(*(v0 + 872), *(v0 + 824));

LABEL_5:
    v16 = *(v0 + 920);
    v17 = *(v0 + 624);
    sub_228084B4C(v17, *(v0 + 928), type metadata accessor for PartialSummariesOperation);
    sub_228084B4C(v17, v16, type metadata accessor for PartialSummariesOperation);
    v18 = v9;
    v19 = sub_22813880C();
    v20 = sub_2281396DC();

    countAndFlagsBits = v9;
    if (!os_log_type_enabled(v19, v20))
    {
      v36 = *(v0 + 920);
      sub_228084CF0(*(v0 + 928), type metadata accessor for PartialSummariesOperation);

      sub_228084CF0(v36, type metadata accessor for PartialSummariesOperation);
      goto LABEL_9;
    }

    v21 = *(v0 + 1024);
    object = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v76 = v22;
    *object = 134349826;
    if (!__OFADD__(v21, 1))
    {
      v23 = v22;
      v24 = *(v0 + 928);
      v25 = *(v0 + 920);
      *(object + 4) = v21 + 1;
      *(object + 12) = 2050;
      v26 = *(*(v24 + 48) + 16);
      sub_228084CF0(v24, type metadata accessor for PartialSummariesOperation);
      *(object + 14) = v26;
      *(object + 22) = 2082;
      v27 = v25[3];
      v28 = v25[4];
      __swift_project_boxed_opaque_existential_1(v25, v27);
      v29 = (*(v28 + 16))(v27, v28);
      v31 = v30;
      sub_228084CF0(v25, type metadata accessor for PartialSummariesOperation);
      v32 = sub_227FCC340(v29, v31, &v76);

      *(object + 24) = v32;
      *(object + 32) = 2082;
      swift_getErrorValue();
      v33 = Error.loggingDescription.getter(*(v0 + 504), *(v0 + 512));
      v35 = sub_227FCC340(v33, v34, &v76);

      *(object + 34) = v35;
      _os_log_impl(&dword_227FC3000, v19, v20, "Finished summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s] with error: %{public}s", object, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v23, -1, -1);
      MEMORY[0x22AAB28A0](object, -1, -1);

LABEL_9:
      swift_willThrow();

      v37 = *(v0 + 8);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_23;
  }

  countAndFlagsBits = v7.value._countAndFlagsBits;
  if (*(v0 + 1300) != 1)
  {
    if (qword_2813C4988 == -1)
    {
LABEL_13:
      v38 = __swift_project_value_buffer(*(v0 + 968), qword_2813C4990);
      goto LABEL_14;
    }

LABEL_23:
    swift_once();
    goto LABEL_13;
  }

  v38 = *(v0 + 1040);
LABEL_14:
  v39 = *(v0 + 944);
  v40 = *(v0 + 936);
  v41 = *(v0 + 624);
  (*(v0 + 1048))(*(v0 + 984), v38, *(v0 + 968));
  sub_228084B4C(v41, v39, type metadata accessor for PartialSummariesOperation);
  sub_228084B4C(v41, v40, type metadata accessor for PartialSummariesOperation);
  v42 = sub_22813880C();
  v43 = sub_2281396CC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = *(v0 + 1024);
    v45 = swift_slowAlloc();
    result = swift_slowAlloc();
    v74 = result;
    v76 = result;
    *v45 = 134349570;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      return result;
    }

    v72 = *(v0 + 984);
    v73 = *(v0 + 1056);
    v71 = *(v0 + 968);
    v47 = *(v0 + 944);
    v48 = *(v0 + 936);
    *(v45 + 4) = v44 + 1;
    *(v45 + 12) = 2050;
    v49 = *(*(v47 + 48) + 16);
    sub_228084CF0(v47, type metadata accessor for PartialSummariesOperation);
    *(v45 + 14) = v49;
    *(v45 + 22) = 2082;
    v50 = v48[3];
    v51 = v48[4];
    __swift_project_boxed_opaque_existential_1(v48, v50);
    v52 = (*(v51 + 16))(v50, v51);
    v54 = v53;
    sub_228084CF0(v48, type metadata accessor for PartialSummariesOperation);
    v55 = sub_227FCC340(v52, v54, &v76);

    *(v45 + 24) = v55;
    _os_log_impl(&dword_227FC3000, v42, v43, "Finished summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s]", v45, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v74);
    MEMORY[0x22AAB28A0](v74, -1, -1);
    MEMORY[0x22AAB28A0](v45, -1, -1);

    v73(v72, v71);
  }

  else
  {
    v56 = *(v0 + 1056);
    v57 = *(v0 + 984);
    v58 = *(v0 + 968);
    v59 = *(v0 + 936);
    sub_228084CF0(*(v0 + 944), type metadata accessor for PartialSummariesOperation);

    v56(v57, v58);
    sub_228084CF0(v59, type metadata accessor for PartialSummariesOperation);
  }

  v69 = *(v0 + 1024);
  v70 = *(v0 + 1032);
  v60 = *(v0 + 872);
  v61 = *(v0 + 832);
  v68 = *(v0 + 824);
  v62 = *(v0 + 592);
  v76 = countAndFlagsBits;
  v77 = object;
  v63 = *(v62 + 24);
  v64 = *(v62 + 32);
  v65 = *(v0 + 584);

  MEMORY[0x22AAB1970](v63, v64);

  v66 = v77;
  *(v0 + 520) = v76;
  *(v0 + 528) = v66;
  sub_228138EEC();
  sub_228138F0C();
  v67 = type metadata accessor for PartialSummariesOperation.TaskResult(0);
  sub_228138C7C();
  (*(v61 + 8))(v60, v68);
  *v65 = v69;
  *(v65 + *(v67 + 24)) = v70;

  v37 = *(v0 + 8);
LABEL_19:

  return v37();
}

uint64_t sub_22807F020()
{
  v80 = v0;
  v1 = (v0 + 544);

  v2 = *(v0 + 1160);
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 104));
  *(v0 + 544) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 800);
    v5 = *(v0 + 792);
    v6 = *(v0 + 784);
    v7 = *(v0 + 776);
    v8 = *(v0 + 768);

    (*(v7 + 32))(v5, v4, v8);
    v9 = *(v7 + 16);
    v9(v6, v5, v8);
    if ((*(v7 + 88))(v6, v8) == *MEMORY[0x277D71AC8])
    {
      v10 = *(v0 + 792);
      v11 = *(v0 + 784);
      v12 = *(v0 + 768);
      v13 = (*(v0 + 608) + *(v0 + 1104));
      (*(*(v0 + 776) + 96))(v11, v12);
      *(v0 + 1168) = *v11;
      *(v0 + 1296) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC60, &qword_22813DF20) + 64);
      sub_228084BB4(&qword_27D81EC58, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
      *(v0 + 1176) = swift_allocError();
      v9(v14, v10, v12);
      v15 = *__swift_project_boxed_opaque_existential_1(v13, v13[3]);
      v16 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model;
      v17 = swift_task_alloc();
      *(v0 + 1184) = v17;
      *v17 = v0;
      v18 = sub_22807FB10;
LABEL_4:
      v17[1] = v18;

      return sub_2280FA5A0(v15 + v16);
    }

    v44 = *(v0 + 792);
    v45 = *(v0 + 784);
    v46 = *(v0 + 776);
    v47 = *(v0 + 768);
    sub_228084BB4(&qword_27D81EC58, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
    v2 = swift_allocError();
    v9(v48, v44, v47);
    swift_willThrow();
    v49 = *(v46 + 8);
    v49(v44, v47);
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 64));
    v49(v45, v47);
  }

  else
  {
    v1 = (v0 + 552);

    *(v0 + 552) = v2;
    v20 = v2;
    if (swift_dynamicCast())
    {
      v21 = *(v0 + 760);
      v22 = *(v0 + 752);
      v23 = *(v0 + 744);
      v24 = *(v0 + 736);
      v25 = *(v0 + 704);
      v26 = *(v0 + 696);
      v27 = *(v0 + 688);

      (*(v23 + 32))(v22, v21, v24);
      sub_2281386EC();
      if ((*(v26 + 88))(v25, v27) == *MEMORY[0x277D0DB78])
      {
        v28 = *(v0 + 728);
        v29 = *(v0 + 720);
        v30 = *(v0 + 712);
        v31 = *(v0 + 704);
        v32 = *(v0 + 656);
        v33 = *(v0 + 648);
        v34 = *(v0 + 640);
        (*(*(v0 + 696) + 96))(v31, *(v0 + 688));
        (*(v29 + 32))(v28, v31, v30);
        sub_2281386BC();
        if ((*(v33 + 88))(v32, v34) == *MEMORY[0x277D0DA90])
        {
          v35 = *(v0 + 752);
          v36 = *(v0 + 744);
          v37 = *(v0 + 736);
          v38 = *(v0 + 680);
          v39 = *(v0 + 672);
          v40 = *(v0 + 664);
          v41 = *(v0 + 656);
          v42 = (*(v0 + 608) + *(v0 + 1104));
          (*(*(v0 + 648) + 96))(v41, *(v0 + 640));
          (*(v39 + 32))(v38, v41, v40);
          sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
          *(v0 + 1232) = swift_allocError();
          (*(v36 + 16))(v43, v35, v37);
          *(v0 + 1240) = sub_22813859C();
          sub_2281385AC();
          v15 = *__swift_project_boxed_opaque_existential_1(v42, v42[3]);
          v16 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model;
          v17 = swift_task_alloc();
          *(v0 + 1248) = v17;
          *v17 = v0;
          v18 = sub_2280814B0;
          goto LABEL_4;
        }

        v50 = *(v0 + 656);
        v51 = *(v0 + 648);
        v52 = *(v0 + 640);
        (*(*(v0 + 720) + 8))(*(v0 + 728), *(v0 + 712));
        (*(v51 + 8))(v50, v52);
      }

      else
      {
        (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));
      }

      v53 = *(v0 + 752);
      v54 = *(v0 + 744);
      v55 = *(v0 + 736);
      sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v2 = swift_allocError();
      (*(v54 + 16))(v56, v53, v55);
      swift_willThrow();
      (*(v54 + 8))(v53, v55);
    }

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 64));
  }

  v57 = *(v0 + 920);
  v58 = *(v0 + 624);
  sub_228084B4C(v58, *(v0 + 928), type metadata accessor for PartialSummariesOperation);
  sub_228084B4C(v58, v57, type metadata accessor for PartialSummariesOperation);
  v59 = v2;
  v60 = sub_22813880C();
  v61 = sub_2281396DC();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = *(v0 + 1024);
    v63 = swift_slowAlloc();
    result = swift_slowAlloc();
    v79[0] = result;
    *v63 = 134349826;
    if (__OFADD__(v62, 1))
    {
      __break(1u);
      return result;
    }

    v78 = result;
    v64 = *(v0 + 928);
    v65 = *(v0 + 920);
    *(v63 + 4) = v62 + 1;
    *(v63 + 12) = 2050;
    v66 = *(*(v64 + 48) + 16);
    sub_228084CF0(v64, type metadata accessor for PartialSummariesOperation);
    *(v63 + 14) = v66;
    *(v63 + 22) = 2082;
    v68 = v65[3];
    v67 = v65[4];
    __swift_project_boxed_opaque_existential_1(v65, v68);
    v69 = (*(v67 + 16))(v68, v67);
    v71 = v70;
    sub_228084CF0(v65, type metadata accessor for PartialSummariesOperation);
    v72 = sub_227FCC340(v69, v71, v79);

    *(v63 + 24) = v72;
    *(v63 + 32) = 2082;
    swift_getErrorValue();
    v73 = Error.loggingDescription.getter(*(v0 + 504), *(v0 + 512));
    v75 = sub_227FCC340(v73, v74, v79);

    *(v63 + 34) = v75;
    _os_log_impl(&dword_227FC3000, v60, v61, "Finished summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s] with error: %{public}s", v63, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v78, -1, -1);
    MEMORY[0x22AAB28A0](v63, -1, -1);
  }

  else
  {
    v76 = *(v0 + 920);
    sub_228084CF0(*(v0 + 928), type metadata accessor for PartialSummariesOperation);

    sub_228084CF0(v76, type metadata accessor for PartialSummariesOperation);
  }

  swift_willThrow();

  v77 = *(v0 + 8);

  return v77();
}

uint64_t sub_22807FB10(uint64_t a1)
{
  v3 = *v2;
  v3[149] = a1;
  v3[150] = v1;

  if (v1)
  {
    v3[153] = v1;
    v4 = sub_228080FD0;
  }

  else
  {
    v4 = sub_22807FC38;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_22807FC38()
{
  v54 = v0;
  v1 = sub_228085CEC(*(v0 + 1032), *(v0 + 1168), *(v0 + 1192));
  sub_22808764C(v0 + 64, v0 + 344);
  v2 = sub_22813880C();
  v3 = sub_2281396BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1192);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v53[0] = v6;
    *v5 = 136446722;
    v7 = *(v0 + 368);
    v8 = *(v0 + 376);
    __swift_project_boxed_opaque_existential_1((v0 + 344), v7);
    v9 = (*(v8 + 16))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 344));
    v12 = sub_227FCC340(v9, v11, v53);

    *(v5 + 4) = v12;
    *(v5 + 12) = 2050;
    *(v5 + 14) = v4;
    *(v5 + 22) = 2050;
    *(v5 + 24) = v1;
    _os_log_impl(&dword_227FC3000, v2, v3, "Handling .tooManyTokensError for [requestIdentifier: %{public}s]: reducing target maximum tokens per chunk from %{public}ld to %{public}ld", v5, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v6);
    MEMORY[0x22AAB28A0](v6, -1, -1);
    MEMORY[0x22AAB28A0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 344));
  }

  v13 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v14 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v14 = &qword_2813C76F8;
  }

  v15 = *(*v14 + 560);
  v16 = *(*v14 + 568);
  v17 = *(*v14 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v16(v53, v17);

    if ((v53[0] & 1) == 0)
    {
LABEL_17:
      v18 = *(v0 + 1176);
      swift_willThrow();
      v19 = v18;
      *(v0 + 1224) = *(v0 + 1176);

      MEMORY[0x2822009F8](sub_228080FD0, 0, 0);
      return;
    }
  }

  else
  {

    if (!v15)
    {
      goto LABEL_17;
    }
  }

  v20 = *(v0 + 1176);
  sub_22808764C(v0 + 64, v0 + 384);
  v21 = v20;
  v22 = sub_22813880C();
  v23 = sub_2281396BC();

  if (os_log_type_enabled(v22, v23))
  {
    v51 = *(v0 + 1024);
    v52 = *(v0 + 1176);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v53[0] = v26;
    *v24 = 136446978;
    v27 = v1;
    v29 = *(v0 + 408);
    v28 = *(v0 + 416);
    __swift_project_boxed_opaque_existential_1((v0 + 384), v29);
    v30 = v29;
    v1 = v27;
    v31 = (*(v28 + 16))(v30, v28);
    v33 = v32;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 384));
    v34 = sub_227FCC340(v31, v33, v53);

    *(v24 + 4) = v34;
    *(v24 + 12) = 2050;
    *(v24 + 14) = v51;
    *(v24 + 22) = 2050;
    *(v24 + 24) = v27;
    *(v24 + 32) = 2114;
    v35 = v52;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 34) = v36;
    *v25 = v36;
    _os_log_impl(&dword_227FC3000, v22, v23, "Retrying chunk summarization for [requestIdentifier: %{public}s, chunkIndex: %{public}ld] with [maximumTokensPerChunk: %{public}ld] after failure: %{public}@", v24, 0x2Au);
    sub_2280883AC(v25, &qword_27D81E3B0, &qword_22813AA20);
    MEMORY[0x22AAB28A0](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v26);
    MEMORY[0x22AAB28A0](v26, -1, -1);
    MEMORY[0x22AAB28A0](v24, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 384));
  }

  if (qword_27D81E2C8 != -1)
  {
    swift_once();
  }

  v37 = *(v0 + 1200);
  v38 = *(v0 + 1176);
  v39 = *(v0 + 1032);
  v40 = type metadata accessor for Signpost(0);
  __swift_project_value_buffer(v40, qword_27D823288);
  sub_22808764C(v0 + 64, v0 + 424);
  v41 = swift_allocObject();
  sub_227FD0F5C((v0 + 424), v41 + 16);
  *(v41 + 56) = v38;
  v42 = v38;
  sub_22812F9A4(sub_2280889F0, v41);

  KeyPath = swift_getKeyPath(byte_22813E238);
  os_unfair_lock_lock((v39 + 16));
  sub_228084228((v39 + 24), KeyPath, 1);
  os_unfair_lock_unlock((v39 + 16));
  if (!v37)
  {
    v44 = *(v0 + 1301);

    v45 = swift_task_alloc();
    *(v0 + 1208) = v45;
    *v45 = v0;
    v45[1] = sub_228080354;
    v46 = *(v0 + 1072);
    v47 = *(v0 + 1064);
    v48 = *(v0 + 1032);
    v49 = *(v0 + 1024);
    v50 = *(v0 + 848);
    v56 = *(v0 + 1088);
    v57 = v48;

    sub_22806E698(v50, v47, v46, 1, v49, v1, v0 + 64, v44 | 0x100);
  }
}

uint64_t sub_228080354()
{
  v2 = *v1;
  *(*v1 + 1216) = v0;

  if (v0)
  {
    *(v2 + 1224) = v0;
    v3 = sub_228080FD0;
  }

  else
  {

    v3 = sub_228080480;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void *sub_228080480()
{
  v81 = v0;
  v1 = *(v0 + 1296);
  v2 = *(v0 + 864);
  v3 = *(v0 + 848);
  v4 = *(v0 + 832);
  v5 = *(v0 + 824);
  v6 = *(v0 + 784);
  (*(*(v0 + 776) + 8))(*(v0 + 792), *(v0 + 768));
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 64));
  v7 = *(v4 + 32);
  v7(v2, v3, v5);
  v8 = sub_22813756C();
  (*(*(v8 - 8) + 8))(v6 + v1, v8);

  v9 = *(v0 + 1216);
  v7(*(v0 + 872), *(v0 + 864), *(v0 + 824));
  LOBYTE(v79) = 2;
  v10 = Summary.stringValue(for:)(&v79);
  if (!v10.value._object)
  {
    v13 = *(v0 + 872);
    v14 = *(v0 + 832);
    v15 = *(v0 + 824);
    v16 = swift_allocObject();
    *(v16 + 16) = 27;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    v17 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, 1286, sub_2280889A0, v16);
    sub_227FDB3CC();
    v12 = swift_allocError();
    *v18 = 27;
    *(v18 + 8) = v17;
    swift_willThrow();
    (*(v14 + 8))(v13, v15);
    goto LABEL_5;
  }

  object = v10.value._object;
  sub_2281395DC();
  if (v9)
  {
    v12 = v9;
    (*(*(v0 + 832) + 8))(*(v0 + 872), *(v0 + 824));

LABEL_5:
    v19 = *(v0 + 920);
    v20 = *(v0 + 624);
    sub_228084B4C(v20, *(v0 + 928), type metadata accessor for PartialSummariesOperation);
    sub_228084B4C(v20, v19, type metadata accessor for PartialSummariesOperation);
    v21 = v12;
    v22 = sub_22813880C();
    v23 = sub_2281396DC();

    countAndFlagsBits = v12;
    if (!os_log_type_enabled(v22, v23))
    {
      v39 = *(v0 + 920);
      sub_228084CF0(*(v0 + 928), type metadata accessor for PartialSummariesOperation);

      sub_228084CF0(v39, type metadata accessor for PartialSummariesOperation);
      goto LABEL_9;
    }

    v24 = *(v0 + 1024);
    object = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v79 = v25;
    *object = 134349826;
    if (!__OFADD__(v24, 1))
    {
      v26 = v25;
      v27 = *(v0 + 928);
      v28 = *(v0 + 920);
      *(object + 4) = v24 + 1;
      *(object + 12) = 2050;
      v29 = *(*(v27 + 48) + 16);
      sub_228084CF0(v27, type metadata accessor for PartialSummariesOperation);
      *(object + 14) = v29;
      *(object + 22) = 2082;
      v30 = v28[3];
      v31 = v28[4];
      __swift_project_boxed_opaque_existential_1(v28, v30);
      v32 = (*(v31 + 16))(v30, v31);
      v34 = v33;
      sub_228084CF0(v28, type metadata accessor for PartialSummariesOperation);
      v35 = sub_227FCC340(v32, v34, &v79);

      *(object + 24) = v35;
      *(object + 32) = 2082;
      swift_getErrorValue();
      v36 = Error.loggingDescription.getter(*(v0 + 504), *(v0 + 512));
      v38 = sub_227FCC340(v36, v37, &v79);

      *(object + 34) = v38;
      _os_log_impl(&dword_227FC3000, v22, v23, "Finished summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s] with error: %{public}s", object, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v26, -1, -1);
      MEMORY[0x22AAB28A0](object, -1, -1);

LABEL_9:
      swift_willThrow();

      v40 = *(v0 + 8);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_23;
  }

  countAndFlagsBits = v10.value._countAndFlagsBits;
  if (*(v0 + 1300) != 1)
  {
    if (qword_2813C4988 == -1)
    {
LABEL_13:
      v41 = __swift_project_value_buffer(*(v0 + 968), qword_2813C4990);
      goto LABEL_14;
    }

LABEL_23:
    swift_once();
    goto LABEL_13;
  }

  v41 = *(v0 + 1040);
LABEL_14:
  v42 = *(v0 + 944);
  v43 = *(v0 + 936);
  v44 = *(v0 + 624);
  (*(v0 + 1048))(*(v0 + 984), v41, *(v0 + 968));
  sub_228084B4C(v44, v42, type metadata accessor for PartialSummariesOperation);
  sub_228084B4C(v44, v43, type metadata accessor for PartialSummariesOperation);
  v45 = sub_22813880C();
  v46 = sub_2281396CC();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = *(v0 + 1024);
    v48 = swift_slowAlloc();
    result = swift_slowAlloc();
    v77 = result;
    v79 = result;
    *v48 = 134349570;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
      return result;
    }

    v75 = *(v0 + 984);
    v76 = *(v0 + 1056);
    v74 = *(v0 + 968);
    v50 = *(v0 + 944);
    v51 = *(v0 + 936);
    *(v48 + 4) = v47 + 1;
    *(v48 + 12) = 2050;
    v52 = *(*(v50 + 48) + 16);
    sub_228084CF0(v50, type metadata accessor for PartialSummariesOperation);
    *(v48 + 14) = v52;
    *(v48 + 22) = 2082;
    v53 = v51[3];
    v54 = v51[4];
    __swift_project_boxed_opaque_existential_1(v51, v53);
    v55 = (*(v54 + 16))(v53, v54);
    v57 = v56;
    sub_228084CF0(v51, type metadata accessor for PartialSummariesOperation);
    v58 = sub_227FCC340(v55, v57, &v79);

    *(v48 + 24) = v58;
    _os_log_impl(&dword_227FC3000, v45, v46, "Finished summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s]", v48, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v77);
    MEMORY[0x22AAB28A0](v77, -1, -1);
    MEMORY[0x22AAB28A0](v48, -1, -1);

    v76(v75, v74);
  }

  else
  {
    v59 = *(v0 + 1056);
    v60 = *(v0 + 984);
    v61 = *(v0 + 968);
    v62 = *(v0 + 936);
    sub_228084CF0(*(v0 + 944), type metadata accessor for PartialSummariesOperation);

    v59(v60, v61);
    sub_228084CF0(v62, type metadata accessor for PartialSummariesOperation);
  }

  v72 = *(v0 + 1024);
  v73 = *(v0 + 1032);
  v63 = *(v0 + 872);
  v64 = *(v0 + 832);
  v71 = *(v0 + 824);
  v65 = *(v0 + 592);
  v79 = countAndFlagsBits;
  v80 = object;
  v66 = *(v65 + 24);
  v67 = *(v65 + 32);
  v68 = *(v0 + 584);

  MEMORY[0x22AAB1970](v66, v67);

  v69 = v80;
  *(v0 + 520) = v79;
  *(v0 + 528) = v69;
  sub_228138EEC();
  sub_228138F0C();
  v70 = type metadata accessor for PartialSummariesOperation.TaskResult(0);
  sub_228138C7C();
  (*(v64 + 8))(v63, v71);
  *v68 = v72;
  *(v68 + *(v70 + 24)) = v73;

  v40 = *(v0 + 8);
LABEL_19:

  return v40();
}

uint64_t sub_228080FD0()
{
  v30 = v0;
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1296);
  v3 = *(v0 + 784);
  (*(*(v0 + 776) + 8))(*(v0 + 792), *(v0 + 768));
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 64));

  v4 = sub_22813756C();
  (*(*(v4 - 8) + 8))(v3 + v2, v4);

  v5 = *(v0 + 1224);
  v6 = *(v0 + 920);
  v7 = *(v0 + 624);
  sub_228084B4C(v7, *(v0 + 928), type metadata accessor for PartialSummariesOperation);
  sub_228084B4C(v7, v6, type metadata accessor for PartialSummariesOperation);
  v8 = v5;
  v9 = sub_22813880C();
  v10 = sub_2281396DC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 1024);
    v12 = swift_slowAlloc();
    result = swift_slowAlloc();
    v29[0] = result;
    *v12 = 134349826;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    v14 = result;
    v15 = *(v0 + 928);
    v16 = *(v0 + 920);
    *(v12 + 4) = v11 + 1;
    *(v12 + 12) = 2050;
    v17 = *(*(v15 + 48) + 16);
    sub_228084CF0(v15, type metadata accessor for PartialSummariesOperation);
    *(v12 + 14) = v17;
    *(v12 + 22) = 2082;
    v18 = v16[3];
    v19 = v16[4];
    __swift_project_boxed_opaque_existential_1(v16, v18);
    v20 = (*(v19 + 16))(v18, v19);
    v22 = v21;
    sub_228084CF0(v16, type metadata accessor for PartialSummariesOperation);
    v23 = sub_227FCC340(v20, v22, v29);

    *(v12 + 24) = v23;
    *(v12 + 32) = 2082;
    swift_getErrorValue();
    v24 = Error.loggingDescription.getter(*(v0 + 504), *(v0 + 512));
    v26 = sub_227FCC340(v24, v25, v29);

    *(v12 + 34) = v26;
    _os_log_impl(&dword_227FC3000, v9, v10, "Finished summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s] with error: %{public}s", v12, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v14, -1, -1);
    MEMORY[0x22AAB28A0](v12, -1, -1);
  }

  else
  {
    v27 = *(v0 + 920);
    sub_228084CF0(*(v0 + 928), type metadata accessor for PartialSummariesOperation);

    sub_228084CF0(v27, type metadata accessor for PartialSummariesOperation);
  }

  swift_willThrow();

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_2280814B0(uint64_t a1)
{
  v3 = *v2;
  v3[157] = a1;
  v3[158] = v1;

  if (v1)
  {
    v3[161] = v1;
    v4 = sub_22808297C;
  }

  else
  {
    v4 = sub_2280815D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2280815D8()
{
  v54 = v0;
  v1 = sub_228085CEC(*(v0 + 1032), *(v0 + 1240), *(v0 + 1256));
  sub_22808764C(v0 + 64, v0 + 224);
  v2 = sub_22813880C();
  v3 = sub_2281396BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1256);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v53[0] = v6;
    *v5 = 136446722;
    v7 = *(v0 + 248);
    v8 = *(v0 + 256);
    __swift_project_boxed_opaque_existential_1((v0 + 224), v7);
    v9 = (*(v8 + 16))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 224));
    v12 = sub_227FCC340(v9, v11, v53);

    *(v5 + 4) = v12;
    *(v5 + 12) = 2050;
    *(v5 + 14) = v4;
    *(v5 + 22) = 2050;
    *(v5 + 24) = v1;
    _os_log_impl(&dword_227FC3000, v2, v3, "Handling .tooManyTokensError for [requestIdentifier: %{public}s]: reducing target maximum tokens per chunk from %{public}ld to %{public}ld", v5, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v6);
    MEMORY[0x22AAB28A0](v6, -1, -1);
    MEMORY[0x22AAB28A0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 224));
  }

  v13 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v14 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v14 = &qword_2813C76F8;
  }

  v15 = *(*v14 + 560);
  v16 = *(*v14 + 568);
  v17 = *(*v14 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v16(v53, v17);

    if ((v53[0] & 1) == 0)
    {
LABEL_17:
      v18 = *(v0 + 1232);
      swift_willThrow();
      v19 = v18;
      *(v0 + 1288) = *(v0 + 1232);

      MEMORY[0x2822009F8](sub_22808297C, 0, 0);
      return;
    }
  }

  else
  {

    if (!v15)
    {
      goto LABEL_17;
    }
  }

  v20 = *(v0 + 1232);
  sub_22808764C(v0 + 64, v0 + 264);
  v21 = v20;
  v22 = sub_22813880C();
  v23 = sub_2281396BC();

  if (os_log_type_enabled(v22, v23))
  {
    v51 = *(v0 + 1024);
    v52 = *(v0 + 1232);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v53[0] = v26;
    *v24 = 136446978;
    v27 = v1;
    v29 = *(v0 + 288);
    v28 = *(v0 + 296);
    __swift_project_boxed_opaque_existential_1((v0 + 264), v29);
    v30 = v29;
    v1 = v27;
    v31 = (*(v28 + 16))(v30, v28);
    v33 = v32;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 264));
    v34 = sub_227FCC340(v31, v33, v53);

    *(v24 + 4) = v34;
    *(v24 + 12) = 2050;
    *(v24 + 14) = v51;
    *(v24 + 22) = 2050;
    *(v24 + 24) = v27;
    *(v24 + 32) = 2114;
    v35 = v52;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 34) = v36;
    *v25 = v36;
    _os_log_impl(&dword_227FC3000, v22, v23, "Retrying chunk summarization for [requestIdentifier: %{public}s, chunkIndex: %{public}ld] with [maximumTokensPerChunk: %{public}ld] after failure: %{public}@", v24, 0x2Au);
    sub_2280883AC(v25, &qword_27D81E3B0, &qword_22813AA20);
    MEMORY[0x22AAB28A0](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v26);
    MEMORY[0x22AAB28A0](v26, -1, -1);
    MEMORY[0x22AAB28A0](v24, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 264));
  }

  if (qword_27D81E2C8 != -1)
  {
    swift_once();
  }

  v37 = *(v0 + 1264);
  v38 = *(v0 + 1232);
  v39 = *(v0 + 1032);
  v40 = type metadata accessor for Signpost(0);
  __swift_project_value_buffer(v40, qword_27D823288);
  sub_22808764C(v0 + 64, v0 + 304);
  v41 = swift_allocObject();
  sub_227FD0F5C((v0 + 304), v41 + 16);
  *(v41 + 56) = v38;
  v42 = v38;
  sub_22812F9A4(sub_228087BA8, v41);

  KeyPath = swift_getKeyPath(byte_22813E238);
  os_unfair_lock_lock((v39 + 16));
  sub_228084228((v39 + 24), KeyPath, 1);
  os_unfair_lock_unlock((v39 + 16));
  if (!v37)
  {
    v44 = *(v0 + 1301);

    v45 = swift_task_alloc();
    *(v0 + 1272) = v45;
    *v45 = v0;
    v45[1] = sub_228081CF4;
    v46 = *(v0 + 1072);
    v47 = *(v0 + 1064);
    v48 = *(v0 + 1032);
    v49 = *(v0 + 1024);
    v50 = *(v0 + 840);
    v56 = *(v0 + 1088);
    v57 = v48;

    sub_22806E698(v50, v47, v46, 1, v49, v1, v0 + 64, v44 | 0x100);
  }
}

uint64_t sub_228081CF4()
{
  v2 = *v1;
  *(*v1 + 1280) = v0;

  if (v0)
  {
    *(v2 + 1288) = v0;
    v3 = sub_22808297C;
  }

  else
  {

    v3 = sub_228081E20;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void *sub_228081E20()
{
  v84 = v0;
  v80 = *(v0 + 864);
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  v4 = *(v0 + 752);
  v5 = *(v0 + 744);
  v6 = *(v0 + 736);
  v7 = *(v0 + 728);
  v8 = *(v0 + 720);
  v9 = *(v0 + 712);
  (*(*(v0 + 672) + 8))(*(v0 + 680), *(v0 + 664));
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 64));
  v10 = *(v2 + 32);
  v10(v80, v1, v3);

  v11 = *(v0 + 1280);
  v10(*(v0 + 872), *(v0 + 864), *(v0 + 824));
  LOBYTE(v82) = 2;
  v12 = Summary.stringValue(for:)(&v82);
  if (!v12.value._object)
  {
    v15 = *(v0 + 872);
    v16 = *(v0 + 832);
    v17 = *(v0 + 824);
    v18 = swift_allocObject();
    *(v18 + 16) = 27;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    v19 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, 1286, sub_2280889A0, v18);
    sub_227FDB3CC();
    v14 = swift_allocError();
    *v20 = 27;
    *(v20 + 8) = v19;
    swift_willThrow();
    (*(v16 + 8))(v15, v17);
    goto LABEL_5;
  }

  object = v12.value._object;
  sub_2281395DC();
  if (v11)
  {
    v14 = v11;
    (*(*(v0 + 832) + 8))(*(v0 + 872), *(v0 + 824));

LABEL_5:
    v21 = *(v0 + 920);
    v22 = *(v0 + 624);
    sub_228084B4C(v22, *(v0 + 928), type metadata accessor for PartialSummariesOperation);
    sub_228084B4C(v22, v21, type metadata accessor for PartialSummariesOperation);
    v23 = v14;
    v24 = sub_22813880C();
    v25 = sub_2281396DC();

    countAndFlagsBits = v14;
    if (!os_log_type_enabled(v24, v25))
    {
      v41 = *(v0 + 920);
      sub_228084CF0(*(v0 + 928), type metadata accessor for PartialSummariesOperation);

      sub_228084CF0(v41, type metadata accessor for PartialSummariesOperation);
      goto LABEL_9;
    }

    v26 = *(v0 + 1024);
    object = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v82 = v27;
    *object = 134349826;
    if (!__OFADD__(v26, 1))
    {
      v28 = v27;
      v29 = *(v0 + 928);
      v30 = *(v0 + 920);
      *(object + 4) = v26 + 1;
      *(object + 12) = 2050;
      v31 = *(*(v29 + 48) + 16);
      sub_228084CF0(v29, type metadata accessor for PartialSummariesOperation);
      *(object + 14) = v31;
      *(object + 22) = 2082;
      v32 = v30[3];
      v33 = v30[4];
      __swift_project_boxed_opaque_existential_1(v30, v32);
      v34 = (*(v33 + 16))(v32, v33);
      v36 = v35;
      sub_228084CF0(v30, type metadata accessor for PartialSummariesOperation);
      v37 = sub_227FCC340(v34, v36, &v82);

      *(object + 24) = v37;
      *(object + 32) = 2082;
      swift_getErrorValue();
      v38 = Error.loggingDescription.getter(*(v0 + 504), *(v0 + 512));
      v40 = sub_227FCC340(v38, v39, &v82);

      *(object + 34) = v40;
      _os_log_impl(&dword_227FC3000, v24, v25, "Finished summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s] with error: %{public}s", object, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v28, -1, -1);
      MEMORY[0x22AAB28A0](object, -1, -1);

LABEL_9:
      swift_willThrow();

      v42 = *(v0 + 8);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_23;
  }

  countAndFlagsBits = v12.value._countAndFlagsBits;
  if (*(v0 + 1300) != 1)
  {
    if (qword_2813C4988 == -1)
    {
LABEL_13:
      v43 = __swift_project_value_buffer(*(v0 + 968), qword_2813C4990);
      goto LABEL_14;
    }

LABEL_23:
    swift_once();
    goto LABEL_13;
  }

  v43 = *(v0 + 1040);
LABEL_14:
  v44 = *(v0 + 944);
  v45 = *(v0 + 936);
  v46 = *(v0 + 624);
  (*(v0 + 1048))(*(v0 + 984), v43, *(v0 + 968));
  sub_228084B4C(v46, v44, type metadata accessor for PartialSummariesOperation);
  sub_228084B4C(v46, v45, type metadata accessor for PartialSummariesOperation);
  v47 = sub_22813880C();
  v48 = sub_2281396CC();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = *(v0 + 1024);
    v50 = swift_slowAlloc();
    result = swift_slowAlloc();
    v79 = result;
    v82 = result;
    *v50 = 134349570;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
      return result;
    }

    v77 = *(v0 + 984);
    v78 = *(v0 + 1056);
    v76 = *(v0 + 968);
    v52 = *(v0 + 944);
    v53 = *(v0 + 936);
    *(v50 + 4) = v49 + 1;
    *(v50 + 12) = 2050;
    v54 = *(*(v52 + 48) + 16);
    sub_228084CF0(v52, type metadata accessor for PartialSummariesOperation);
    *(v50 + 14) = v54;
    *(v50 + 22) = 2082;
    v55 = v53[3];
    v56 = v53[4];
    __swift_project_boxed_opaque_existential_1(v53, v55);
    v57 = (*(v56 + 16))(v55, v56);
    v59 = v58;
    sub_228084CF0(v53, type metadata accessor for PartialSummariesOperation);
    v60 = sub_227FCC340(v57, v59, &v82);

    *(v50 + 24) = v60;
    _os_log_impl(&dword_227FC3000, v47, v48, "Finished summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s]", v50, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v79);
    MEMORY[0x22AAB28A0](v79, -1, -1);
    MEMORY[0x22AAB28A0](v50, -1, -1);

    v78(v77, v76);
  }

  else
  {
    v61 = *(v0 + 1056);
    v62 = *(v0 + 984);
    v63 = *(v0 + 968);
    v64 = *(v0 + 936);
    sub_228084CF0(*(v0 + 944), type metadata accessor for PartialSummariesOperation);

    v61(v62, v63);
    sub_228084CF0(v64, type metadata accessor for PartialSummariesOperation);
  }

  v74 = *(v0 + 1024);
  v75 = *(v0 + 1032);
  v65 = *(v0 + 872);
  v66 = *(v0 + 832);
  v73 = *(v0 + 824);
  v67 = *(v0 + 592);
  v82 = countAndFlagsBits;
  v83 = object;
  v68 = *(v67 + 24);
  v69 = *(v67 + 32);
  v70 = *(v0 + 584);

  MEMORY[0x22AAB1970](v68, v69);

  v71 = v83;
  *(v0 + 520) = v82;
  *(v0 + 528) = v71;
  sub_228138EEC();
  sub_228138F0C();
  v72 = type metadata accessor for PartialSummariesOperation.TaskResult(0);
  sub_228138C7C();
  (*(v66 + 8))(v65, v73);
  *v70 = v74;
  *(v70 + *(v72 + 24)) = v75;

  v42 = *(v0 + 8);
LABEL_19:

  return v42();
}

uint64_t sub_22808297C()
{
  v33 = v0;
  v1 = *(v0 + 1232);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  (*(*(v0 + 672) + 8))(*(v0 + 680), *(v0 + 664));
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 64));

  v8 = *(v0 + 1288);
  v9 = *(v0 + 920);
  v10 = *(v0 + 624);
  sub_228084B4C(v10, *(v0 + 928), type metadata accessor for PartialSummariesOperation);
  sub_228084B4C(v10, v9, type metadata accessor for PartialSummariesOperation);
  v11 = v8;
  v12 = sub_22813880C();
  v13 = sub_2281396DC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 1024);
    v15 = swift_slowAlloc();
    result = swift_slowAlloc();
    v32[0] = result;
    *v15 = 134349826;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return result;
    }

    v17 = result;
    v18 = *(v0 + 928);
    v19 = *(v0 + 920);
    *(v15 + 4) = v14 + 1;
    *(v15 + 12) = 2050;
    v20 = *(*(v18 + 48) + 16);
    sub_228084CF0(v18, type metadata accessor for PartialSummariesOperation);
    *(v15 + 14) = v20;
    *(v15 + 22) = 2082;
    v21 = v19[3];
    v22 = v19[4];
    __swift_project_boxed_opaque_existential_1(v19, v21);
    v23 = (*(v22 + 16))(v21, v22);
    v25 = v24;
    sub_228084CF0(v19, type metadata accessor for PartialSummariesOperation);
    v26 = sub_227FCC340(v23, v25, v32);

    *(v15 + 24) = v26;
    *(v15 + 32) = 2082;
    swift_getErrorValue();
    v27 = Error.loggingDescription.getter(*(v0 + 504), *(v0 + 512));
    v29 = sub_227FCC340(v27, v28, v32);

    *(v15 + 34) = v29;
    _os_log_impl(&dword_227FC3000, v12, v13, "Finished summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s] with error: %{public}s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v17, -1, -1);
    MEMORY[0x22AAB28A0](v15, -1, -1);
  }

  else
  {
    v30 = *(v0 + 920);
    sub_228084CF0(*(v0 + 928), type metadata accessor for PartialSummariesOperation);

    sub_228084CF0(v30, type metadata accessor for PartialSummariesOperation);
  }

  swift_willThrow();

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_228082E64(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, void (*a6)(char *), uint64_t a7)
{
  v129 = a6;
  v130 = a7;
  v115 = a5;
  v131 = a4;
  v119 = a1;
  v9 = type metadata accessor for PartialSummariesOperation(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v134 = (&v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v113 = (&v110 - v12);
  v117 = sub_22813882C();
  v118 = *(v117 - 8);
  v13 = MEMORY[0x28223BE20](v117);
  v116 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  *&v114 = &v110 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E948, &qword_22813E1F0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v128 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v123 = &v110 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF0, &qword_22813E230);
  MEMORY[0x28223BE20](v20 - 8);
  v126 = &v110 - v21;
  v22 = type metadata accessor for PartialSummariesOperation.TaskResult(0);
  v132 = *(v22 - 8);
  v133 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v124 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v127 = &v110 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v110 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v112 = (&v110 - v31);
  MEMORY[0x28223BE20](v30);
  v33 = (&v110 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v125 = (&v110 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v35);
  v38 = &v110 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB8, &qword_22813E120);
  sub_228138C5C();
  v40 = (a2 + OBJC_IVAR____TtCV16SummarizationKit25PartialSummariesOperationP33_C01AE9D7F5E45ED078F835903D8E9C9431AccumulatedSafetyClassification_safetyClassification);
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtCV16SummarizationKit25PartialSummariesOperationP33_C01AE9D7F5E45ED078F835903D8E9C9431AccumulatedSafetyClassification_safetyClassification));
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECA0, &qword_22813E0D8) + 28);
  sub_228083CA4(v40 + v41, v38);
  os_unfair_lock_unlock(v40);
  sub_2280883AC(v38, &qword_27D81EC98, &qword_22813E0D0);
  v42 = v119;
  MEMORY[0x22AAB1230](v137, v39);
  v136[3] = v137[0];
  v136[4] = v137[1];
  os_unfair_lock_lock(v40);
  sub_228088344(v40 + v41, v125, &qword_27D81EC98, &qword_22813E0D0);
  os_unfair_lock_unlock(v40);
  sub_228138C6C();
  v43 = v133;
  sub_228138C7C();
  v44 = *v42;
  v45 = *(v43 + 24);
  v46 = *(v42 + v45);
  *v33 = v44;
  *(v33 + v45) = v46;
  v111 = v33;
  v47 = v33;
  v48 = v123;
  sub_228084B4C(v47, v123, type metadata accessor for PartialSummariesOperation.TaskResult);
  v125 = *(v132 + 56);
  v126 = (v132 + 56);
  (v125)(v48, 0, 1, v43);
  swift_beginAccess();

  sub_2280254C4(v48, v44);
  swift_endAccess();
  if (qword_2813C49E0 != -1)
  {
LABEL_33:
    swift_once();
  }

  v49 = v117;
  v50 = __swift_project_value_buffer(v117, qword_2813C8A20);
  if (qword_2813C49B8 != -1)
  {
    swift_once();
  }

  v51 = v50;
  v52 = v115;
  v53 = v134;
  v54 = v116;
  v122 = byte_2813C49C1;
  v55 = v118;
  v56 = v114;
  v57 = v113;
  if ((byte_2813C49C1 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v51 = __swift_project_value_buffer(v49, qword_2813C4990);
  }

  v123 = v50;
  v58 = *(v55 + 16);
  v121 = v55 + 16;
  v120 = v58;
  v58(v56, v51, v49);
  v59 = v112;
  sub_228084B4C(v119, v112, type metadata accessor for PartialSummariesOperation.TaskResult);
  sub_228084B4C(v131, v57, type metadata accessor for PartialSummariesOperation);
  v60 = v56;
  v61 = sub_22813880C();
  LODWORD(v119) = sub_2281396CC();
  if (os_log_type_enabled(v61, v119))
  {
    v62 = swift_slowAlloc();
    result = swift_slowAlloc();
    v137[0] = result;
    *v62 = 134349314;
    v64 = *v59 + 1;
    if (__OFADD__(*v59, 1))
    {
      __break(1u);
      return result;
    }

    v65 = result;
    v66 = v59;
    v67 = v65;
    sub_228084CF0(v66, type metadata accessor for PartialSummariesOperation.TaskResult);
    *(v62 + 4) = v64;
    *(v62 + 12) = 2082;
    v68 = v113;
    v69 = v113[3];
    v70 = v113[4];
    __swift_project_boxed_opaque_existential_1(v113, v69);
    v71 = *(v70 + 16);
    v72 = v70;
    v49 = v117;
    v73 = v71(v69, v72);
    v75 = v74;
    sub_228084CF0(v68, type metadata accessor for PartialSummariesOperation);
    v76 = sub_227FCC340(v73, v75, v137);
    v53 = v134;

    *(v62 + 14) = v76;
    _os_log_impl(&dword_227FC3000, v61, v119, "Received result for chunk %{public}ld for [requestIdentifier: %{public}s]", v62, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v67);
    MEMORY[0x22AAB28A0](v67, -1, -1);
    MEMORY[0x22AAB28A0](v62, -1, -1);

    v77 = v118;
    v119 = *(v118 + 8);
    (v119)(v114, v49);
    v54 = v116;
  }

  else
  {
    sub_228084CF0(v59, type metadata accessor for PartialSummariesOperation.TaskResult);

    v77 = v118;
    v119 = *(v118 + 8);
    (v119)(v60, v49);
    sub_228084CF0(v57, type metadata accessor for PartialSummariesOperation);
  }

  swift_beginAccess();
  swift_beginAccess();
  v78 = *v52;
  swift_beginAccess();
  v80 = *a3;
  if (*(*a3 + 16))
  {
    v118 = v77 + 8;
    *&v79 = 134349314;
    v114 = v79;
    do
    {
      v81 = sub_22808D0CC(v78);
      if ((v82 & 1) == 0)
      {
        break;
      }

      v83 = *(v132 + 72);
      v84 = v127;
      sub_228084B4C(*(v80 + 56) + v83 * v81, v127, type metadata accessor for PartialSummariesOperation.TaskResult);
      sub_2280876B0(v84, v29, type metadata accessor for PartialSummariesOperation.TaskResult);
      swift_endAccess();
      swift_beginAccess();
      v85 = sub_22808D0CC(v78);
      if (v86)
      {
        v87 = v85;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v89 = *a3;
        v135 = *a3;
        *a3 = 0x8000000000000000;
        v90 = v128;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_22801DC28();
          v89 = v135;
        }

        sub_2280876B0(*(v89 + 56) + v87 * v83, v90, type metadata accessor for PartialSummariesOperation.TaskResult);
        sub_228028368(v87, v89);
        *a3 = v89;

        v91 = 0;
      }

      else
      {
        v91 = 1;
        v90 = v128;
      }

      v92 = v133;
      (v125)(v90, v91, 1, v133);
      swift_endAccess();
      sub_2280883AC(v90, &qword_27D81E948, &qword_22813E1F0);
      v129(&v29[*(v92 + 20)]);
      if (__OFADD__(*v52, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      ++*v52;
      v93 = v123;
      v94 = v124;
      if ((v122 & 1) == 0)
      {
        if (qword_2813C4988 != -1)
        {
          swift_once();
        }

        v93 = __swift_project_value_buffer(v49, qword_2813C4990);
      }

      v120(v54, v93, v49);
      sub_228084B4C(v29, v94, type metadata accessor for PartialSummariesOperation.TaskResult);
      sub_228084B4C(v131, v53, type metadata accessor for PartialSummariesOperation);
      v95 = sub_22813880C();
      v96 = v54;
      v97 = sub_2281396CC();
      if (os_log_type_enabled(v95, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v136[0] = v99;
        *v98 = v114;
        v100 = *v94 + 1;
        if (__OFADD__(*v94, 1))
        {
          goto LABEL_32;
        }

        v101 = v99;
        sub_228084CF0(v94, type metadata accessor for PartialSummariesOperation.TaskResult);
        *(v98 + 4) = v100;
        *(v98 + 12) = 2082;
        v102 = v134[3];
        v103 = v134[4];
        __swift_project_boxed_opaque_existential_1(v134, v102);
        v104 = *(v103 + 16);
        v105 = v103;
        v52 = v115;
        v106 = v104(v102, v105);
        v108 = v107;
        sub_228084CF0(v134, type metadata accessor for PartialSummariesOperation);
        v109 = sub_227FCC340(v106, v108, v136);

        *(v98 + 14) = v109;
        _os_log_impl(&dword_227FC3000, v95, v97, "Yielded result for chunk %{public}ld for [requestIdentifier: %{public}s]", v98, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm_7(v101);
        MEMORY[0x22AAB28A0](v101, -1, -1);
        MEMORY[0x22AAB28A0](v98, -1, -1);

        v54 = v116;
        v49 = v117;
        (v119)(v116, v117);
        v53 = v134;
        sub_228084CF0(v29, type metadata accessor for PartialSummariesOperation.TaskResult);
      }

      else
      {
        sub_228084CF0(v94, type metadata accessor for PartialSummariesOperation.TaskResult);

        (v119)(v96, v49);
        sub_228084CF0(v29, type metadata accessor for PartialSummariesOperation.TaskResult);
        sub_228084CF0(v53, type metadata accessor for PartialSummariesOperation);
        v54 = v96;
      }

      v78 = *v52;
      swift_beginAccess();
      v80 = *a3;
    }

    while (*(*a3 + 16));
  }

  swift_endAccess();
  return sub_228084CF0(v111, type metadata accessor for PartialSummariesOperation.TaskResult);
}

uint64_t sub_228083CA4(char *a1, uint64_t a2)
{
  v25 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v24 - v8;
  v10 = sub_228138E0C();
  MEMORY[0x28223BE20](v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2;
  v15 = v14;
  sub_228088344(v13, v9, &qword_27D81EC98, &qword_22813E0D0);
  v16 = *(v15 + 48);
  if (v16(v9, 1, v10) == 1)
  {
    return sub_2280883AC(v9, &qword_27D81EC98, &qword_22813E0D0);
  }

  v24[1] = v2;
  v24[0] = *(v15 + 32);
  (v24[0])(v12, v9, v10);
  sub_228088344(v25, v7, &qword_27D81EC98, &qword_22813E0D0);
  v18 = v16(v7, 1, v10);
  sub_2280883AC(v7, &qword_27D81EC98, &qword_22813E0D0);
  if (v18 == 1)
  {
    v19 = v25;
    sub_2280883AC(v25, &qword_27D81EC98, &qword_22813E0D0);
    (v24[0])(v19, v12, v10);
    return (*(v15 + 56))(v19, 0, 1, v10);
  }

  else
  {
    v20 = v25;
    if (v16(v25, 1, v10))
    {
      return (*(v15 + 8))(v12, v10);
    }

    else
    {
      v21 = v20;
      v22 = sub_228138DFC();
      v23 = *(v15 + 8);
      v23(v21, v10);
      if (v22)
      {
        sub_228138DFC();
      }

      sub_228138DEC();
      return (v23)(v12, v10);
    }
  }
}

uint64_t sub_228083FBC()
{
  v1 = v0 + OBJC_IVAR____TtCV16SummarizationKit25PartialSummariesOperationP33_C01AE9D7F5E45ED078F835903D8E9C9431AccumulatedSafetyClassification_safetyClassification;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECA0, &qword_22813E0D8);
  sub_2280883AC(v1 + *(v2 + 28), &qword_27D81EC98, &qword_22813E0D0);

  return swift_deallocClassInstance();
}

uint64_t sub_228084054@<X0>(os_unfair_lock_s **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath(byte_22813DEB8);
  os_unfair_lock_lock((v3 + 16));
  v5 = sub_2280D2FF8((v3 + 24), KeyPath);
  os_unfair_lock_unlock((v3 + 16));

  *a2 = v5;
  return result;
}

uint64_t sub_2280840C8(uint64_t *a1, os_unfair_lock_s **a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath(byte_22813DEB8);
  v5 = swift_getKeyPath(byte_22813E478);

  sub_228088294(v2, v3, KeyPath, v5);
}

uint64_t sub_22808415C@<X0>(os_unfair_lock_s **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath(byte_22813DEE8);
  os_unfair_lock_lock((v3 + 16));
  v5 = sub_2280D2D08((v3 + 24), KeyPath);
  v7 = v6;
  os_unfair_lock_unlock((v3 + 16));

  *a2 = v5;
  *(a2 + 8) = v7 & 1;
  return result;
}

uint64_t sub_228084228(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  if (*(*a1 + 16) && (v7 = sub_227FEB404(), (v8 & 1) != 0))
  {
    sub_227FEB0D4(*(v6 + 56) + 32 * v7, &v15);
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
  v9 = MEMORY[0x277D84A28];
  result = swift_dynamicCast();
  v11 = v14;
  if (!result)
  {
    v11 = 0;
  }

  v12 = __OFADD__(v11, a3);
  v13 = v11 + a3;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(&v16 + 1) = v9;
    *&v15 = v13;

    return sub_2280449E4(&v15, a2, a1);
  }

  return result;
}

uint64_t sub_228084314(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_228088344(a3, &v13 - v7, &qword_27D81EC50, &unk_228140BB0);
  v9 = sub_228136F8C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_2280883AC(v8, &qword_27D81EC50, &unk_228140BB0);
    v13 = 0u;
    v14 = 0u;
  }

  else
  {
    *(&v14 + 1) = v9;
    boxed_opaque_existential_0Tm_0 = __swift_allocate_boxed_opaque_existential_0Tm_0(&v13);
    (*(v10 + 32))(boxed_opaque_existential_0Tm_0, v8, v9);
  }

  return sub_228085558(&v13, a2, a1, *a2);
}

uint64_t sub_2280844B8@<X0>(os_unfair_lock_s **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath(byte_22813DE90);
  os_unfair_lock_lock((v3 + 16));
  sub_2280D2EEC((v3 + 24), KeyPath, a2);
  os_unfair_lock_unlock((v3 + 16));
}

uint64_t sub_22808452C(uint64_t a1, os_unfair_lock_s **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  sub_228088344(a1, &v13[-v8], &qword_27D81EC50, &unk_228140BB0);
  v10 = *a2;
  KeyPath = swift_getKeyPath(byte_22813DE90);
  sub_228088344(v9, v7, &qword_27D81EC50, &unk_228140BB0);
  os_unfair_lock_lock((v10 + 16));
  sub_228084314((v10 + 24), KeyPath, v7);
  os_unfair_lock_unlock((v10 + 16));

  sub_2280883AC(v9, &qword_27D81EC50, &unk_228140BB0);
  return sub_2280883AC(v7, &qword_27D81EC50, &unk_228140BB0);
}

uint64_t sub_228084674(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22808476C;

  return v6(a1);
}

uint64_t sub_22808476C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_228084864(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22808898C;

  return v6(a1);
}

uint64_t sub_22808495C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = *(a4 + 16);
    if (!v6)
    {
LABEL_5:
      *(v5 + 8) = a3;
      return result;
    }

    if (v6 <= a3)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2280849CC()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECE8, &qword_22813E220);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_228084A70(v4 + 16, v4 + 40, v2, v1 + 40);
  }

  *v0 = v4;
  return result;
}

uint64_t sub_228084A70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
    if (v6 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_228084B4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_228084BB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_228084BFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  if (*(v1 + 49))
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v11 = *(v1 + 56);
  v10 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_2280889B0;

  return sub_228071BB8(a1, v4, v5, v6, v7, v9 | v8, v11, v10);
}

uint64_t sub_228084CF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228084DCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_228084E94;

  return sub_228065E18(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_228084E94()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_228084FF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_228085040(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2280850EC(uint64_t a1)
{
  result = type metadata accessor for SummarizationSession.Configuration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TokenCounter(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_22808521C(uint64_t a1)
{
  sub_2280852AC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2280852AC(uint64_t a1)
{
  if (!qword_27D81EC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81EC98, &qword_22813E0D0);
    v1 = sub_2281374DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D81EC90);
    }
  }
}

uint64_t sub_228085310(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_228085440;

  return sub_228067034(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_228085440()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_228085558(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (*(a1 + 24))
  {
    sub_227FE5EAC(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a3;

    sub_22808562C(v10, a2, isUniquelyReferenced_nonNull_native, &v9, a4);

    *a3 = v9;
  }

  else
  {
    sub_2280883AC(a1, &qword_27D81E940, &qword_22813C658);
    sub_228027400(a2, v10);

    return sub_2280883AC(v10, &qword_27D81E940, &qword_22813C658);
  }

  return result;
}

_OWORD *sub_22808562C(_OWORD *a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5)
{
  v10 = *a4;
  v11 = sub_2280D3358(a2, *a4, a5);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_22801D03C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2280196BC(v16, a3 & 1);
    v11 = sub_2280D3358(a2, *a4, a5);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
      result = sub_2281399EC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *a4;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v22);

    return sub_227FE5EAC(a1, v22);
  }

  else
  {
    sub_228085834(v11, a2, a1, v21);
  }
}

uint64_t sub_228085784@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v6 = *(a3 + 56);
    v7 = type metadata accessor for SummarizationResult(0);
    return sub_228084B4C(v6 + *(*(v7 - 8) + 72) * v4, a4, type metadata accessor for SummarizationResult);
  }

LABEL_8:
  __break(1u);
  return result;
}

_OWORD *sub_228085834(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_227FE5EAC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_22808589C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2280889B4;

  return sub_228084864(a1, v4);
}

uint64_t sub_228085954(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2280889B8;

  return sub_228084864(a1, v4);
}

uint64_t sub_228085A80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2280889BC;

  return sub_22806DD18(a1, v4, v5, v6);
}

uint64_t sub_228085B74(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228085BAC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2280889C0;

  return sub_22807908C(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_228085C84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_228085CEC(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath(byte_22813E2D0);
  os_unfair_lock_lock(a1 + 4);
  v7 = sub_2280D2D08(&a1[6], KeyPath);
  v9 = v8;
  os_unfair_lock_unlock(a1 + 4);

  if ((v9 & 1) == 0 || (v10 = swift_getKeyPath("P1nU"), os_unfair_lock_lock(a1 + 4), v7 = sub_2280D2D08(&a1[6], v10), v12 = v11, os_unfair_lock_unlock(a1 + 4), , (v12 & 1) == 0))
  {
    v18 = objc_opt_self();

    if (qword_2813C4620 != -1)
    {
      swift_once();
    }

    if (byte_2813C4629 != 1)
    {
      if (qword_2813C76F0 != -1)
      {
        swift_once();
      }

      v19 = &qword_2813C76F8;
      goto LABEL_16;
    }

    if (qword_27D81E2A0 != -1)
    {
      goto LABEL_28;
    }

    while (1)
    {
      v19 = &off_27D81EDB0;
LABEL_16:
      v20 = *(*v19 + 600);
      v21 = *(*v19 + 608);
      v22 = *(*v19 + 2208);

      if (qword_2813C4630 != -1)
      {
        swift_once();
      }

      if (byte_2813C4638 == 1)
      {
        v21(&v24, v22);

        v20 = v24;
      }

      else
      {
      }

      v23 = v7 / a2 * (a3 - v20);
      if (COERCE__INT64(fabs(v23)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v23 <= -9.22337204e18)
      {
        goto LABEL_26;
      }

      if (v23 < 9.22337204e18)
      {
        return v23;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      swift_once();
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v13 = sub_22813882C();
  __swift_project_value_buffer(v13, qword_2813C8A20);
  v14 = sub_22813880C();
  v15 = sub_2281396EC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_227FC3000, v14, v15, "Previous value for overestimatedInputTokenCount unavailable when handling computing maximumTokenCountFallbackValue; falling back to reducing target by a factor of 2.", v16, 2u);
    MEMORY[0x22AAB28A0](v16, -1, -1);
  }

  return a3 / 2;
}

uint64_t sub_2280860B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    do
    {
      v5 = *v2++;
      v4 = v5;
      if (v5 != 2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_228133FDC(0, *(v3 + 2) + 1, 1, v3);
        }

        v7 = *(v3 + 2);
        v6 = *(v3 + 3);
        if (v7 >= v6 >> 1)
        {
          v3 = sub_228133FDC((v6 > 1), v7 + 1, 1, v3);
        }

        *(v3 + 2) = v7 + 1;
        v3[v7 + 32] = v4 & 1;
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v8 = *(v3 + 2);
  if (v8)
  {
    v9 = (v3 + 32);
    do
    {
      v10 = v8;
      if (v8-- == 0)
      {
        break;
      }

      v12 = *v9++;
    }

    while (v12 != 1);
    v13 = v10 != 0;
  }

  else
  {

    return 2;
  }

  return v13;
}

uint64_t sub_2280861C8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    v3 = MEMORY[0x277D84F90];
    do
    {
      if ((*v2 & 1) == 0)
      {
        v4 = *(v2 - 1);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2281341D4(0, *(v3 + 16) + 1, 1, v3);
          v3 = result;
        }

        v6 = *(v3 + 16);
        v5 = *(v3 + 24);
        if (v6 >= v5 >> 1)
        {
          result = sub_2281341D4((v5 > 1), v6 + 1, 1, v3);
          v3 = result;
        }

        *(v3 + 16) = v6 + 1;
        *(v3 + 8 * v6 + 32) = v4;
      }

      v2 += 16;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 32);
    v9 = *(v3 + 16);
    while (1)
    {
      v10 = *v8++;
      v11 = __OFADD__(v7, v10);
      v7 += v10;
      if (v11)
      {
        break;
      }

      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = 0;
LABEL_17:

    return v7;
  }

  return result;
}

uint64_t sub_2280862E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    v3 = MEMORY[0x277D84F90];
    do
    {
      if ((*v2 & 1) == 0)
      {
        v4 = *(v2 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_2281340D0(0, *(v3 + 2) + 1, 1, v3);
        }

        v6 = *(v3 + 2);
        v5 = *(v3 + 3);
        if (v6 >= v5 >> 1)
        {
          v3 = sub_2281340D0((v5 > 1), v6 + 1, 1, v3);
        }

        *(v3 + 2) = v6 + 1;
        *&v3[8 * v6 + 32] = v4;
      }

      v2 += 16;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v7 = *(v3 + 2);
  if (!v7)
  {

    *&result = 0.0;
    return result;
  }

  if (v7 > 3)
  {
    v8 = v7 & 0x7FFFFFFFFFFFFFFCLL;
    v11 = (v3 + 48);
    v9 = 0.0;
    v12 = v7 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v9 = v9 + *(v11 - 2) + *(v11 - 1) + *v11 + v11[1];
      v11 += 4;
      v12 -= 4;
    }

    while (v12);
    if (v7 == v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0.0;
  }

  v13 = v7 - v8;
  v14 = &v3[8 * v8 + 32];
  do
  {
    v15 = *v14++;
    v9 = v9 + v15;
    --v13;
  }

  while (v13);
LABEL_20:

  *&result = v9 / v7;
  return result;
}

char *sub_228086458(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_206;
  }

  v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x277D84F90];
  v140 = v3 & ~(v3 >> 63);
  if (v3)
  {
    v143 = MEMORY[0x277D84F90];
    result = sub_228043C9C(0, v3 & ~(v3 >> 63), 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v4 = v143;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x22AAB1E40](v6, a2);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_189:
            __break(1u);
LABEL_190:
            __break(1u);
LABEL_191:
            __break(1u);
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
LABEL_197:
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            __break(1u);
LABEL_200:
            __break(1u);
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
LABEL_206:
            v3 = sub_22813990C();
            goto LABEL_3;
          }

          if (v6 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_189;
          }

          v7 = *(a2 + 8 * v6 + 32);
        }

        swift_getKeyPath(byte_22813E2F8, v139);
        os_unfair_lock_lock((v7 + 16));
        v8 = *(v7 + 24);
        if (*(v8 + 16) && (v9 = sub_227FEB408(), (v10 & 1) != 0))
        {
          sub_227FEB0D4(*(v8 + 56) + 32 * v9, &v145);
        }

        else
        {
          v145 = 0u;
          v146 = 0u;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
        if (swift_dynamicCast())
        {
          v11 = v144;
        }

        else
        {
          v11 = 2;
        }

        os_unfair_lock_unlock((v7 + 16));

        v143 = v4;
        v13 = *(v4 + 16);
        v12 = *(v4 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_228043C9C((v12 > 1), v13 + 1, 1);
        }

        ++v6;
        *(v4 + 16) = v13 + 1;
        *(v4 + v13 + 32) = v11;
        if (v3 == v6)
        {
          goto LABEL_21;
        }
      }
    }

    __break(1u);
    goto LABEL_208;
  }

LABEL_21:
  v14 = sub_2280860B4(v4);

  KeyPath = swift_getKeyPath(byte_22813E2F8);
  os_unfair_lock_lock((a1 + 16));
  if (v14 == 2)
  {
    v16 = 0;
    v145 = 0uLL;
    *&v146 = 0;
  }

  else
  {
    LOBYTE(v145) = v14 & 1;
    v16 = MEMORY[0x277D839B0];
  }

  *(&v146 + 1) = v16;

  sub_2280449FC(&v145, KeyPath, (a1 + 24));
  os_unfair_lock_unlock((a1 + 16));

  v17 = MEMORY[0x277D84F90];
  if (v3)
  {
    v143 = MEMORY[0x277D84F90];
    result = sub_228043C9C(0, v140, 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v18 = 0;
      v17 = v143;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x22AAB1E40](v18, a2);
        }

        else
        {
          if ((v18 & 0x8000000000000000) != 0)
          {
            goto LABEL_190;
          }

          if (v18 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_191;
          }

          v19 = *(a2 + 8 * v18 + 32);
        }

        swift_getKeyPath(byte_22813E320, v139);
        os_unfair_lock_lock((v19 + 16));
        v20 = *(v19 + 24);
        if (*(v20 + 16) && (v21 = sub_227FEB408(), (v22 & 1) != 0))
        {
          sub_227FEB0D4(*(v20 + 56) + 32 * v21, &v145);
        }

        else
        {
          v145 = 0u;
          v146 = 0u;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
        if (swift_dynamicCast())
        {
          v23 = v144;
        }

        else
        {
          v23 = 2;
        }

        os_unfair_lock_unlock((v19 + 16));

        v143 = v17;
        v25 = *(v17 + 16);
        v24 = *(v17 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_228043C9C((v24 > 1), v25 + 1, 1);
        }

        ++v18;
        *(v17 + 16) = v25 + 1;
        *(v17 + v25 + 32) = v23;
        if (v3 == v18)
        {
          goto LABEL_42;
        }
      }
    }

LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
    goto LABEL_210;
  }

LABEL_42:
  v26 = sub_2280860B4(v17);

  v27 = swift_getKeyPath(byte_22813E320);
  os_unfair_lock_lock((a1 + 16));
  if (v26 == 2)
  {
    v28 = 0;
    v145 = 0uLL;
    *&v146 = 0;
  }

  else
  {
    LOBYTE(v145) = v26 & 1;
    v28 = MEMORY[0x277D839B0];
  }

  *(&v146 + 1) = v28;

  sub_2280449FC(&v145, v27, (a1 + 24));
  os_unfair_lock_unlock((a1 + 16));

  v29 = MEMORY[0x277D84F90];
  if (v3)
  {
    v144 = MEMORY[0x277D84F90];
    result = sub_228043C6C(0, v140, 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v30 = 0;
      v29 = v144;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x22AAB1E40](v30, a2);
        }

        else
        {
          if ((v30 & 0x8000000000000000) != 0)
          {
            goto LABEL_192;
          }

          if (v30 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_193;
          }

          v31 = *(a2 + 8 * v30 + 32);
        }

        swift_getKeyPath(byte_22813E348, v139);
        os_unfair_lock_lock((v31 + 16));
        v32 = *(v31 + 24);
        if (*(v32 + 16) && (v33 = sub_227FEB404(), (v34 & 1) != 0))
        {
          sub_227FEB0D4(*(v32 + 56) + 32 * v33, &v145);
        }

        else
        {
          v145 = 0u;
          v146 = 0u;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
        v35 = swift_dynamicCast();
        if (v35)
        {
          v36 = v143;
        }

        else
        {
          v36 = 0;
        }

        os_unfair_lock_unlock((v31 + 16));

        LOBYTE(v144) = v29;
        v38 = *(v29 + 16);
        v37 = *(v29 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_228043C6C((v37 > 1), v38 + 1, 1);
        }

        ++v30;
        *(v29 + 16) = v38 + 1;
        v39 = v29 + 16 * v38;
        *(v39 + 32) = v36;
        *(v39 + 40) = v35 ^ 1;
        if (v3 == v30)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_209;
  }

LABEL_63:
  v40 = sub_2280861C8(v29);
  v42 = v41;

  v43 = swift_getKeyPath(byte_22813E348);
  os_unfair_lock_lock((a1 + 16));
  if (v42)
  {
    v40 = 0;
    v44 = 0;
    *(&v145 + 1) = 0;
    *&v146 = 0;
  }

  else
  {
    v44 = MEMORY[0x277D84A28];
  }

  *&v145 = v40;
  *(&v146 + 1) = v44;

  sub_2280449E4(&v145, v43, (a1 + 24));
  os_unfair_lock_unlock((a1 + 16));

  v45 = MEMORY[0x277D84F90];
  if (v3)
  {
    v144 = MEMORY[0x277D84F90];
    result = sub_228043C3C(0, v140, 0);
    if (v3 < 0)
    {
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
      goto LABEL_213;
    }

    v46 = 0;
    v47 = v144;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x22AAB1E40](v46, a2);
      }

      else
      {
        if ((v46 & 0x8000000000000000) != 0)
        {
          goto LABEL_194;
        }

        if (v46 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_195;
        }

        v48 = *(a2 + 8 * v46 + 32);
      }

      swift_getKeyPath(byte_22813E370, v139);
      os_unfair_lock_lock((v48 + 16));
      v49 = *(v48 + 24);
      if (*(v49 + 16) && (v50 = sub_227FEB40C(), (v51 & 1) != 0))
      {
        sub_227FEB0D4(*(v49 + 56) + 32 * v50, &v145);
      }

      else
      {
        v145 = 0u;
        v146 = 0u;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
      v52 = swift_dynamicCast();
      if (v52)
      {
        v53 = v143;
      }

      else
      {
        v53 = 0;
      }

      os_unfair_lock_unlock((v48 + 16));

      LOBYTE(v144) = v47;
      v55 = *(v47 + 16);
      v54 = *(v47 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_228043C3C((v54 > 1), v55 + 1, 1);
      }

      ++v46;
      *(v47 + 16) = v55 + 1;
      v56 = v47 + 16 * v55;
      *(v56 + 32) = v53;
      *(v56 + 40) = v52 ^ 1;
    }

    while (v3 != v46);
    v45 = MEMORY[0x277D84F90];
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
  }

  v57 = sub_2280862E0(v47);
  v59 = v58;

  v60 = swift_getKeyPath(byte_22813E370);
  os_unfair_lock_lock((a1 + 16));
  if (v59)
  {
    v57 = 0;
    v61 = 0;
    *(&v145 + 1) = 0;
    *&v146 = 0;
  }

  else
  {
    v61 = MEMORY[0x277D839F8];
  }

  *&v145 = v57;
  *(&v146 + 1) = v61;

  sub_228044BA4(&v145, v60, (a1 + 24));
  os_unfair_lock_unlock((a1 + 16));

  if (v3)
  {
    LOBYTE(v144) = v45;
    result = sub_228043C3C(0, v140, 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v62 = 0;
      v63 = v45;
      v64 = a2 & 0xC000000000000001;
      while (1)
      {
        if (v64)
        {
          v65 = MEMORY[0x22AAB1E40](v62, a2);
        }

        else
        {
          if ((v62 & 0x8000000000000000) != 0)
          {
            goto LABEL_196;
          }

          if (v62 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_197;
          }

          v65 = *(a2 + 8 * v62 + 32);
        }

        os_unfair_lock_lock((v65 + 16));
        v66 = *(v65 + 24);
        if (*(v66 + 16) && (v67 = sub_227FEB40C(), (v68 & 1) != 0))
        {
          sub_227FEB0D4(*(v66 + 56) + 32 * v67, &v145);
        }

        else
        {
          v145 = 0u;
          v146 = 0u;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
        v69 = swift_dynamicCast();
        if (v69)
        {
          v70 = v143;
        }

        else
        {
          v70 = 0;
        }

        os_unfair_lock_unlock((v65 + 16));

        LOBYTE(v144) = v63;
        v72 = *(v63 + 16);
        v71 = *(v63 + 24);
        if (v72 >= v71 >> 1)
        {
          sub_228043C3C((v71 > 1), v72 + 1, 1);
        }

        ++v62;
        *(v63 + 16) = v72 + 1;
        v73 = v63 + 16 * v72;
        *(v73 + 32) = v70;
        *(v73 + 40) = v69 ^ 1;
        if (v3 == v62)
        {
          v74 = sub_2280862E0(v63);
          v76 = v75;

          sub_2280D4D78(v74, v76 & 1);
          v144 = MEMORY[0x277D84F90];
          sub_228043C3C(0, v140, 0);
          v77 = 0;
          v78 = v144;
          while (1)
          {
            if (v64)
            {
              v79 = MEMORY[0x22AAB1E40](v77, a2);
            }

            else
            {
              if ((v77 & 0x8000000000000000) != 0)
              {
                goto LABEL_198;
              }

              if (v77 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_199;
              }

              v79 = *(a2 + 8 * v77 + 32);
            }

            swift_getKeyPath("@0nU");
            os_unfair_lock_lock((v79 + 16));
            v80 = *(v79 + 24);
            if (*(v80 + 16) && (v81 = sub_227FEB40C(), (v82 & 1) != 0))
            {
              sub_227FEB0D4(*(v80 + 56) + 32 * v81, &v145);
            }

            else
            {
              v145 = 0u;
              v146 = 0u;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
            v83 = swift_dynamicCast();
            if (v83)
            {
              v84 = v143;
            }

            else
            {
              v84 = 0;
            }

            os_unfair_lock_unlock((v79 + 16));

            LOBYTE(v144) = v78;
            v86 = *(v78 + 16);
            v85 = *(v78 + 24);
            if (v86 >= v85 >> 1)
            {
              sub_228043C3C((v85 > 1), v86 + 1, 1);
            }

            ++v77;
            *(v78 + 16) = v86 + 1;
            v87 = v78 + 16 * v86;
            *(v87 + 32) = v84;
            *(v87 + 40) = v83 ^ 1;
            if (v3 == v77)
            {
              goto LABEL_125;
            }
          }
        }
      }
    }

    goto LABEL_211;
  }

  v78 = MEMORY[0x277D84F90];
  v88 = sub_2280862E0(MEMORY[0x277D84F90]);
  v90 = v89;

  sub_2280D4D78(v88, v90 & 1);
LABEL_125:
  v91 = sub_2280862E0(v78);
  v93 = v92;

  sub_2280D4DA4(v91, v93 & 1);
  v94 = swift_getKeyPath("(1nU");
  v95 = MEMORY[0x277D84F90];
  if (v3)
  {
    v144 = MEMORY[0x277D84F90];
    result = sub_228043C6C(0, v140, 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v96 = 0;
      v95 = v144;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v97 = MEMORY[0x22AAB1E40](v96, a2);
        }

        else
        {
          if ((v96 & 0x8000000000000000) != 0)
          {
            goto LABEL_200;
          }

          if (v96 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_201;
          }

          v97 = *(a2 + 8 * v96 + 32);
        }

        swift_getKeyPath("(1nU", v139);
        os_unfair_lock_lock((v97 + 16));
        v98 = *(v97 + 24);
        if (*(v98 + 16) && (v99 = sub_227FEB404(), (v100 & 1) != 0))
        {
          sub_227FEB0D4(*(v98 + 56) + 32 * v99, &v145);
        }

        else
        {
          v145 = 0u;
          v146 = 0u;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
        v101 = swift_dynamicCast();
        if (v101)
        {
          v102 = v143;
        }

        else
        {
          v102 = 0;
        }

        os_unfair_lock_unlock((v97 + 16));

        LOBYTE(v144) = v95;
        v104 = *(v95 + 16);
        v103 = *(v95 + 24);
        if (v104 >= v103 >> 1)
        {
          sub_228043C6C((v103 > 1), v104 + 1, 1);
        }

        ++v96;
        *(v95 + 16) = v104 + 1;
        v105 = v95 + 16 * v104;
        *(v105 + 32) = v102;
        *(v105 + 40) = v101 ^ 1;
        if (v3 == v96)
        {
          goto LABEL_143;
        }
      }
    }

    goto LABEL_212;
  }

LABEL_143:
  v106 = sub_2280861C8(v95);
  v108 = v107;

  if ((v108 & 1) == 0)
  {
    os_unfair_lock_lock((a1 + 16));
    sub_228084228((a1 + 24), v94, v106);
    os_unfair_lock_unlock((a1 + 16));
  }

  v109 = swift_getKeyPath(byte_22813E238);
  v110 = MEMORY[0x277D84F90];
  if (v3)
  {
    v144 = MEMORY[0x277D84F90];
    result = sub_228043C6C(0, v140, 0);
    if (v3 < 0)
    {
LABEL_213:
      __break(1u);
      goto LABEL_214;
    }

    v139 = v109;
    v111 = 0;
    v110 = v144;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v112 = MEMORY[0x22AAB1E40](v111, a2);
      }

      else
      {
        if ((v111 & 0x8000000000000000) != 0)
        {
          goto LABEL_202;
        }

        if (v111 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_203;
        }

        v112 = *(a2 + 8 * v111 + 32);
      }

      swift_getKeyPath(byte_22813E238, v139);
      os_unfair_lock_lock((v112 + 16));
      v113 = *(v112 + 24);
      if (*(v113 + 16) && (v114 = sub_227FEB404(), (v115 & 1) != 0))
      {
        sub_227FEB0D4(*(v113 + 56) + 32 * v114, &v145);
      }

      else
      {
        v145 = 0u;
        v146 = 0u;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
      v116 = swift_dynamicCast();
      if (v116)
      {
        v117 = v143;
      }

      else
      {
        v117 = 0;
      }

      os_unfair_lock_unlock((v112 + 16));

      LOBYTE(v144) = v110;
      v119 = *(v110 + 16);
      v118 = *(v110 + 24);
      if (v119 >= v118 >> 1)
      {
        sub_228043C6C((v118 > 1), v119 + 1, 1);
      }

      ++v111;
      *(v110 + 16) = v119 + 1;
      v120 = v110 + 16 * v119;
      *(v120 + 32) = v117;
      *(v120 + 40) = v116 ^ 1;
    }

    while (v3 != v111);
    v109 = v139;
  }

  v121 = sub_2280861C8(v110);
  v123 = v122;

  if ((v123 & 1) == 0)
  {
    os_unfair_lock_lock((a1 + 16));
    sub_228084228((a1 + 24), v109, v121);
    os_unfair_lock_unlock((a1 + 16));
  }

  v124 = swift_getKeyPath(" 0nU");
  v125 = MEMORY[0x277D84F90];
  if (v3)
  {
    v144 = MEMORY[0x277D84F90];
    result = sub_228043C6C(0, v140, 0);
    if (v3 < 0)
    {
LABEL_214:
      __break(1u);
      return result;
    }

    v141 = v124;
    v126 = 0;
    v125 = v144;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v127 = MEMORY[0x22AAB1E40](v126, a2);
      }

      else
      {
        if ((v126 & 0x8000000000000000) != 0)
        {
          goto LABEL_204;
        }

        if (v126 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_205;
        }

        v127 = *(a2 + 8 * v126 + 32);
      }

      swift_getKeyPath(" 0nU", v139);
      os_unfair_lock_lock((v127 + 16));
      v128 = *(v127 + 24);
      if (*(v128 + 16) && (v129 = sub_227FEB404(), (v130 & 1) != 0))
      {
        sub_227FEB0D4(*(v128 + 56) + 32 * v129, &v145);
      }

      else
      {
        v145 = 0u;
        v146 = 0u;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
      v131 = swift_dynamicCast();
      if (v131)
      {
        v132 = v143;
      }

      else
      {
        v132 = 0;
      }

      os_unfair_lock_unlock((v127 + 16));

      LOBYTE(v144) = v125;
      v134 = *(v125 + 16);
      v133 = *(v125 + 24);
      if (v134 >= v133 >> 1)
      {
        sub_228043C6C((v133 > 1), v134 + 1, 1);
      }

      ++v126;
      *(v125 + 16) = v134 + 1;
      v135 = v125 + 16 * v134;
      *(v135 + 32) = v132;
      *(v135 + 40) = v131 ^ 1;
    }

    while (v3 != v126);
    v124 = v141;
  }

  v136 = sub_2280861C8(v125);
  v138 = v137;

  if ((v138 & 1) == 0)
  {
    os_unfair_lock_lock((a1 + 16));
    sub_228084228((a1 + 24), v124, v136);
    os_unfair_lock_unlock((a1 + 16));
  }
}

uint64_t sub_22808764C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2280876B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_228087718(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PartialSummariesOperation(0) - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2280889C4;

  return sub_22807A908(a1, v10, v11, v1 + 32, v1 + v6, v12, v13, v1 + v9);
}

uint64_t objectdestroy_102Tm()
{
  v1 = (type metadata accessor for PartialSummariesOperation(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = (((((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = (v0 + v3);
  __swift_destroy_boxed_opaque_existential_1Tm_7(v5);

  v6 = v1[9];
  v7 = sub_22813797C();
  (*(*(v7 - 8) + 8))(&v5[v6], v7);

  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + v4));

  return MEMORY[0x2821FE8E8](v0, v4 + 40, v2 | 7);
}

uint64_t sub_2280879B0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PartialSummariesOperation(0) - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2280889C8;

  return sub_22807A908(a1, v10, v11, v1 + 32, v1 + v6, v12, v13, v1 + v9);
}

uint64_t objectdestroy_73Tm(void (*a1)(void))
{
  __swift_destroy_boxed_opaque_existential_1Tm_7((v1 + 16));
  a1(*(v1 + 56));

  return MEMORY[0x2821FE8E8](v1, 64, 7);
}

uint64_t sub_228087BB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  if (*(v1 + 49))
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v11 = *(v1 + 56);
  v10 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_2280889CC;

  return sub_228071BB8(a1, v4, v5, v6, v7, v9 | v8, v11, v10);
}

uint64_t sub_228087CA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  if (*(v1 + 49))
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v11 = *(v1 + 56);
  v10 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_2280889D0;

  return sub_228071BB8(a1, v4, v5, v6, v7, v9 | v8, v11, v10);
}

uint64_t sub_228087D9C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_228087DE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2280889D4;

  return sub_228077FFC(a1, v4, v5, v6);
}

uint64_t sub_228087E98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2280889D8;

  return sub_228078764(a1, v4, v5, v6);
}

uint64_t sub_228087F68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2280889DC;

  return sub_228078D50(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_193Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t objectdestroy_79Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2280880F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2280889E0;

  return sub_2280782FC(a1, v5, v4);
}

uint64_t sub_2280881A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  if (*(v1 + 49))
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v11 = *(v1 + 56);
  v10 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_2280889E4;

  return sub_228071BB8(a1, v4, v5, v6, v7, v9 | v8, v11, v10);
}

void sub_228088294(uint64_t a1, os_unfair_lock_s *a2, uint64_t *a3, uint64_t a4)
{

  os_unfair_lock_lock(a2 + 4);
  if (a1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4E0, &qword_22813AC40);
    v8 = a1;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  v9[0] = v8;
  v9[3] = v7;

  sub_228044C70(v9, a3, &a2[6]);

  os_unfair_lock_unlock(a2 + 4);
}

uint64_t sub_228088344(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2280883AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22808840C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8E0, &unk_22813C4F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_50Tm()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2280884BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2280889E8;

  return sub_228084674(a1, v4);
}

uint64_t sub_228088574(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2280889EC;

  return sub_228084674(a1, v4);
}

void sub_228088654(uint64_t a1)
{
  sub_2280886E8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TelemetrySignalCollector();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2280886E8()
{
  if (!qword_27D81ED28)
  {
    v0 = sub_228138C9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D81ED28);
    }
  }
}

void sub_228088770(uint64_t a1)
{
  sub_228088824();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TelemetrySignalCollector();
    if (v2 <= 0x3F)
    {
      sub_228088888();
      if (v3 <= 0x3F)
      {
        sub_22813797C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_228088824()
{
  result = qword_2813C7EE0;
  if (!qword_2813C7EE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813C7EE0);
  }

  return result;
}

void sub_228088888()
{
  if (!qword_27D81ED40)
  {
    v0 = sub_22813956C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D81ED40);
    }
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

uint64_t sub_2280888EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_228088934(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t Com_Apple_Summarizationkit_Proto_Rule.id.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

unint64_t Com_Apple_Summarizationkit_Proto_Category.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 5;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_228088B24(uint64_t a1, uint64_t a2)
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_228088B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_22808B3AC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_228088BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

double sub_228088C58@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0) + 32));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;

  return result;
}

uint64_t sub_228088CBC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0) + 32));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Com_Apple_Summarizationkit_Proto_Rule.id.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_228088E08;
}

void sub_228088E08(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall Com_Apple_Summarizationkit_Proto_Rule.clearID()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0) + 32));

  *v1 = 0;
  v1[1] = 0;
}

void Com_Apple_Summarizationkit_Proto_Rule.category.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.category.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.inputRegex.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.inputRegex.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

double Com_Apple_Summarizationkit_Proto_Rule.output.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  return sub_228088FB4(v2, v3, v4);
}

double sub_228088FB4(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_228088FC8(result, a2, a3);
  }

  return v3;
}

double sub_228088FC8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.output.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_228089024(*(v1 + 32), *(v1 + 40), *(v1 + 48));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  return result;
}

uint64_t sub_228089024(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_228089038(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_228089038(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.matchOnly.setter(char a1)
{
  v2 = a1 & 1;
  result = sub_228089024(*(v1 + 32), *(v1 + 40), *(v1 + 48));
  *(v1 + 32) = v2;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  return result;
}

uint64_t (*Com_Apple_Summarizationkit_Proto_Rule.matchOnly.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  *(a1 + 8) = (*(v1 + 48) == 0) & *(v1 + 32);
  return sub_228089100;
}

uint64_t sub_228089100(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[8];
  result = sub_228089024(*(*a1 + 32), *(v1 + 40), *(v1 + 48));
  *(v1 + 32) = v2;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.outputValue.getter()
{
  if (*(v0 + 48) != 1)
  {
    return 0;
  }

  v2 = v0 + 32;
  v1 = *(v0 + 32);
  sub_228088FC8(v1, *(v2 + 8), 1u);
  return v1;
}

uint64_t (*Com_Apple_Summarizationkit_Proto_Rule.outputValue.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  if (*(v1 + 48) == 1)
  {
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);
    sub_228088FC8(v3, v4, 1u);
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  *a1 = v3;
  a1[1] = v4;
  return sub_228089208;
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.outputTemplate.getter()
{
  if (*(v0 + 48) != 2)
  {
    return 0;
  }

  v2 = v0 + 32;
  v1 = *(v0 + 32);
  sub_228088FC8(v1, *(v2 + 8), 2u);
  return v1;
}

uint64_t sub_228089268(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_228089024(*(v3 + 32), *(v3 + 40), *(v3 + 48));
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t (*Com_Apple_Summarizationkit_Proto_Rule.outputTemplate.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  if (*(v1 + 48) == 2)
  {
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);
    sub_228088FC8(v3, v4, 2u);
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  *a1 = v3;
  a1[1] = v4;
  return sub_228089324;
}

uint64_t sub_22808932C(uint64_t *a1, char a2, char a3)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  v7 = *(v5 + 32);
  v8 = *(v5 + 40);
  v9 = *(v5 + 48);
  if (a2)
  {

    sub_228089024(v7, v8, v9);
    *(v5 + 32) = v6;
    *(v5 + 40) = v4;
    *(v5 + 48) = a3;
  }

  else
  {
    result = sub_228089024(*(v5 + 32), *(v5 + 40), *(v5 + 48));
    *(v5 + 32) = v6;
    *(v5 + 40) = v4;
    *(v5 + 48) = a3;
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0) + 28);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0) + 28);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = -1;
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  result = sub_228137D6C();
  v4 = (a1 + *(v2 + 32));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKFilterRules.rules.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKFilterRules.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules(0) + 24);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKFilterRules.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules(0) + 24);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKFilterRules.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules(0);
  return sub_228137D6C();
}

uint64_t sub_2280897A0()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C60F8);
  __swift_project_value_buffer(v0, qword_2813C60F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813C6B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "special_char_removal";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "url_to_domain";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "link_presentation_removal";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "reaction_removal";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "boilerplate_text_removal";
  *(v15 + 8) = 24;
  *(v15 + 16) = 2;
  v9();
  return sub_228137FAC();
}

uint64_t sub_228089A94()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C61C8);
  __swift_project_value_buffer(v0, qword_2813C61C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813E510;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "category";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "input_regex";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "match_only";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "output_value";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "output_template";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_228137DCC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_228089EF8(a1, v5, a2, a3);
            break;
          case 5:
            sub_228089FA4(a1, v5, a2, a3, 1);
            break;
          case 6:
            sub_228089FA4(a1, v5, a2, a3, 2);
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
            sub_228137E6C();
            break;
          case 2:
            sub_22808B3AC();
            sub_228137E1C();
            break;
          case 3:
            sub_228137E7C();
            break;
        }
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t sub_228089FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = sub_228137E6C();
  if (v5)
  {
  }

  if (v12)
  {
    if (*(a2 + 48) == 255)
    {
      v9 = -1;
    }

    else
    {
      sub_228137DDC();
      v9 = *(a2 + 48);
    }

    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    *(a2 + 32) = 0;
    *(a2 + 40) = v12;
    *(a2 + 48) = a5;
    return sub_228089024(v10, v11, v9);
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22808A1DC(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_22808B3AC();
      sub_228137F2C();
    }

    v6 = *(v3 + 24);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_228137F6C();
    }

    if (*(v3 + 48) > 1u)
    {
      if (*(v3 + 48) != 2)
      {
        goto LABEL_13;
      }
    }

    else if (!*(v3 + 48))
    {
      sub_228137F1C();
LABEL_13:
      type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
      return sub_228137D5C();
    }

    sub_228137F6C();
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_22808A1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_228137F6C();
  }

  return result;
}

uint64_t sub_22808A2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = -1;
  result = sub_228137D6C();
  v5 = (a2 + *(a1 + 32));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_22808A318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22808A38C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22808A458(uint64_t a1, uint64_t a2)
{
  v4 = sub_22808B6E4(&qword_27D81ED80, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_Rule);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22808A4F8(uint64_t a1)
{
  v2 = sub_22808B6E4(&qword_2813C61B8, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_Rule);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22808A564(uint64_t a1, uint64_t a2)
{
  sub_22808B6E4(&qword_2813C61B8, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_Rule);

  return sub_228137EDC();
}

uint64_t sub_22808A600()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5E50);
  __swift_project_value_buffer(v0, qword_2813C5E50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B030;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "config_version";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rules";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t sub_22808A7F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_228137FBC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKFilterRules.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_228137DCC();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_228137E4C();
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
        sub_22808B6E4(&qword_2813C61B8, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_Rule);
        sub_228137E8C();
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKFilterRules.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_228137F4C(), !v4))
  {
    if (!*(*(v3 + 8) + 16) || (type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0), sub_22808B6E4(&qword_2813C61B8, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_Rule), result = sub_228137F7C(), !v4))
    {
      type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules(0);
      return sub_228137D5C();
    }
  }

  return result;
}

uint64_t static Com_Apple_Summarizationkit_Proto_SKFilterRules.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (sub_22803C3E8(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules(0);
  sub_228137D7C();
  sub_22808B6E4(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22813926C() & 1;
}

uint64_t sub_22808AB90(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_228139AAC();
  a1(0);
  sub_22808B6E4(a2, a3, a4);
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_22808AC18@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  return sub_228137D6C();
}

uint64_t sub_22808AC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22808ACD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22808ADA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22808B6E4(&qword_27D81ED78, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKFilterRules);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22808AE44@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_228137FBC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_22808AEE0(uint64_t a1)
{
  v2 = sub_22808B6E4(&qword_2813C5E40, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKFilterRules);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22808AF4C(uint64_t a1, uint64_t a2)
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_22808AFA4(uint64_t a1, uint64_t a2)
{
  sub_22808B6E4(&qword_2813C5E40, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKFilterRules);

  return sub_228137EDC();
}

uint64_t sub_22808B020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_22808B074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_22803C3E8(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  sub_228137D7C();
  sub_22808B6E4(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22813926C() & 1;
}

uint64_t _s16SummarizationKit37Com_Apple_Summarizationkit_Proto_RuleV12OneOf_OutputO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_228089038(*a1, v3, 0);
      sub_228089038(v5, v6, 0);
      v13 = v5 ^ v2 ^ 1;
      return v13 & 1;
    }

LABEL_19:
    sub_228088FC8(v5, v6, v7);
    sub_228089038(v2, v3, v4);
    sub_228089038(v5, v6, v7);
    v13 = 0;
    return v13 & 1;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      if (v2 != v5 || v3 != v6)
      {
        v9 = sub_2281399BC();
        sub_228088FC8(v5, v6, 1u);
        sub_228088FC8(v2, v3, 1u);
        sub_228089038(v2, v3, 1u);
        v10 = v5;
        v11 = v6;
        v12 = 1;
LABEL_17:
        sub_228089038(v10, v11, v12);
        return v9 & 1;
      }

      v13 = 1;
      sub_228088FC8(*a1, v3, 1u);
      sub_228088FC8(v2, v3, 1u);
      sub_228089038(v2, v3, 1u);
      sub_228089038(v2, v3, 1u);
      return v13 & 1;
    }

    goto LABEL_18;
  }

  if (v7 != 2)
  {
LABEL_18:

    goto LABEL_19;
  }

  v14 = *a1;
  if (v2 != v5 || v3 != v6)
  {
    v9 = sub_2281399BC();
    sub_228088FC8(v5, v6, 2u);
    sub_228088FC8(v2, v3, 2u);
    sub_228089038(v2, v3, 2u);
    v10 = v5;
    v11 = v6;
    v12 = 2;
    goto LABEL_17;
  }

  sub_228088FC8(v14, v3, 2u);
  sub_228088FC8(v2, v3, 2u);
  sub_228089038(v2, v3, 2u);
  sub_228089038(v2, v3, 2u);
  v13 = 1;
  return v13 & 1;
}

uint64_t sub_22808B374(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22808B3AC()
{
  result = qword_2813C60E8;
  if (!qword_2813C60E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C60E8);
  }

  return result;
}

uint64_t _s16SummarizationKit37Com_Apple_Summarizationkit_Proto_RuleV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0) + 32);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *v5 == *v7 && v6 == v8;
    if (!v9 && (sub_2281399BC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = *a1;
  v11 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v11 <= 1)
    {
      if (v11)
      {
        if (v10 != 1)
        {
          return 0;
        }
      }

      else if (v10)
      {
        return 0;
      }
    }

    else if (v11 == 2)
    {
      if (v10 != 2)
      {
        return 0;
      }
    }

    else if (v11 == 3)
    {
      if (v10 != 3)
      {
        return 0;
      }
    }

    else if (v10 != 4)
    {
      return 0;
    }
  }

  else if (v10 != v11)
  {
    return 0;
  }

  if ((a1[2] != *(a2 + 16) || a1[3] != *(a2 + 24)) && (sub_2281399BC() & 1) == 0)
  {
    return 0;
  }

  v13 = a1[4];
  v12 = a1[5];
  v14 = *(a1 + 48);
  v16 = *(a2 + 32);
  v15 = *(a2 + 40);
  v17 = *(a2 + 48);
  if (v14 != 255)
  {
    v23 = a1[4];
    v24 = v12;
    v25 = v14;
    if (v17 != 255)
    {
      v20 = v16;
      v21 = v15;
      v22 = v17;
      sub_228088FB4(v13, v12, v14);
      sub_228088FB4(v16, v15, v17);
      sub_228088FB4(v13, v12, v14);
      v18 = _s16SummarizationKit37Com_Apple_Summarizationkit_Proto_RuleV12OneOf_OutputO2eeoiySbAE_AEtFZ_0(&v23, &v20);
      sub_228089038(v20, v21, v22);
      sub_228089038(v23, v24, v25);
      sub_228089024(v13, v12, v14);
      if (v18)
      {
        goto LABEL_39;
      }

      return 0;
    }

    sub_228088FB4(v13, v12, v14);
    sub_228088FB4(v16, v15, 0xFFu);
    sub_228088FB4(v13, v12, v14);
    sub_228089038(v13, v12, v14);
LABEL_36:
    sub_228089024(v13, v12, v14);
    sub_228089024(v16, v15, v17);
    return 0;
  }

  sub_228088FB4(a1[4], a1[5], 0xFFu);
  if (v17 != 255)
  {
    sub_228088FB4(v16, v15, v17);
    goto LABEL_36;
  }

  sub_228088FB4(v16, v15, 0xFFu);
  sub_228089024(v13, v12, 0xFFu);
LABEL_39:
  sub_228137D7C();
  sub_22808B6E4(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22813926C() & 1;
}

uint64_t sub_22808B6E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22808B734()
{
  result = qword_2813C60D0;
  if (!qword_2813C60D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C60D0);
  }

  return result;
}

unint64_t sub_22808B78C()
{
  result = qword_27D81ED58;
  if (!qword_27D81ED58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81ED60, &qword_22813E568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81ED58);
  }

  return result;
}

unint64_t sub_22808B7F4()
{
  result = qword_2813C60D8;
  if (!qword_2813C60D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C60D8);
  }

  return result;
}

uint64_t keypath_set_7Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);

  result = sub_228089024(v9, v10, v11);
  *(a2 + 32) = v8;
  *(a2 + 40) = v7;
  *(a2 + 48) = a5;
  return result;
}

uint64_t getEnumTagSinglePayload for Com_Apple_Summarizationkit_Proto_Category(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Com_Apple_Summarizationkit_Proto_Category(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_22808BB40(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22808BB60(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_22808BBB8(uint64_t a1)
{
  sub_22808BC8C(319, qword_2813C61E0, &type metadata for Com_Apple_Summarizationkit_Proto_Rule.OneOf_Output);
  if (v1 <= 0x3F)
  {
    sub_228137D7C();
    if (v2 <= 0x3F)
    {
      sub_22808BC8C(319, &qword_2813C46E8, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22808BC8C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22813977C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22808BCF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22808BD40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_22808BDC8(uint64_t a1)
{
  sub_22808BE5C(319);
  if (v1 <= 0x3F)
  {
    sub_228137D7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22808BE5C(uint64_t a1)
{
  if (!qword_2813C46D8)
  {
    type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(255);
    v1 = sub_22813956C();
    if (!v2)
    {
      atomic_store(v1, &qword_2813C46D8);
    }
  }
}

uint64_t SKConfiguration.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

double sub_22808BF68@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(*v1 + 104);
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v4;

  return result;
}

unint64_t sub_22808BFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SKConfiguration(0, *(*v4 + 80), *(*v4 + 88), a4);
  swift_getMetatypeMetadata();
  v5 = sub_2281392EC();
  v31 = 0xD000000000000018;
  v32 = 0x8000000228146700;
  MEMORY[0x22AAB1970](v5);

  MEMORY[0x22AAB1970](2618, 0xE200000000000000);

  MEMORY[0x22AAB1970](0xD00000000000002BLL, 0x8000000228146720);
  sub_22808BF68(v30);
  v6 = v30[0];
  if (*(v30[0] + 16) && (v7 = sub_22808CA2C(2), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + 16 * v7);
    v11 = *v9;
    v10 = v9[1];
  }

  else
  {
    v10 = 0xE100000000000000;
    v11 = 48;
  }

  strcpy(v30, "\tFrom UAF: ");
  HIDWORD(v30[1]) = -352321536;
  MEMORY[0x22AAB1970](v11, v10);

  v12 = 0xE100000000000000;
  MEMORY[0x22AAB1970](10, 0xE100000000000000);

  MEMORY[0x22AAB1970](v30[0], v30[1]);

  sub_22808BF68(v30);
  v13 = v30[0];
  if (*(v30[0] + 16) && (v14 = sub_22808CA2C(1), (v15 & 1) != 0))
  {
    v16 = (*(v13 + 56) + 16 * v14);
    v17 = *v16;
    v12 = v16[1];
  }

  else
  {
    v17 = 48;
  }

  strcpy(v30, "\tFrom Bundle: ");
  HIBYTE(v30[1]) = -18;
  MEMORY[0x22AAB1970](v17, v12);

  v18 = 0xE100000000000000;
  MEMORY[0x22AAB1970](10, 0xE100000000000000);

  MEMORY[0x22AAB1970](v30[0], v30[1]);

  sub_22808BF68(v30);
  v19 = v30[0];
  if (*(v30[0] + 16) && (v20 = sub_22808CA2C(3), (v21 & 1) != 0))
  {
    v22 = (*(v19 + 56) + 16 * v20);
    v23 = *v22;
    v18 = v22[1];
  }

  else
  {
    v23 = 48;
  }

  strcpy(v30, "\tFrom Path: ");
  BYTE5(v30[1]) = 0;
  HIWORD(v30[1]) = -5120;
  MEMORY[0x22AAB1970](v23, v18);

  MEMORY[0x22AAB1970](10, 0xE100000000000000);

  MEMORY[0x22AAB1970](v30[0], v30[1]);

  sub_22808BF68(&v28);
  v24 = v29;

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v25 = 0xE300000000000000;
      v26 = 6709621;
    }

    else
    {
      v25 = 0xE400000000000000;
      v26 = 1752457584;
    }
  }

  else if (v24)
  {
    v25 = 0xE600000000000000;
    v26 = 0x656C646E7562;
  }

  else
  {
    v25 = 0xE700000000000000;
    v26 = 0x6E776F6E6B6E75;
  }

  v30[0] = 0xD000000000000012;
  v30[1] = 0x8000000228146750;
  MEMORY[0x22AAB1970](v26, v25);

  MEMORY[0x22AAB1970](10, 0xE100000000000000);

  MEMORY[0x22AAB1970](v30[0], v30[1]);

  return v31;
}

uint64_t sub_22808C414()
{
  v1 = *v0;
  sub_228139AAC();
  MEMORY[0x22AAB2060](v1);
  return sub_228139AEC();
}

uint64_t sub_22808C488(uint64_t a1)
{
  v2 = *v1;
  sub_228139AAC();
  MEMORY[0x22AAB2060](v2);
  return sub_228139AEC();
}

uint64_t sub_22808C4DC()
{
  v0 = sub_228028A68(&unk_283B5AFF8);
  result = swift_arrayDestroy();
  qword_2813C6920 = v0;
  return result;
}

uint64_t sub_22808C528()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EDA0, &unk_22813EC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E7D8, &qword_22813BD00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22813A4B0;
  result = sub_228137BDC();
  off_2813C6910 = v0;
  return result;
}

uint64_t sub_22808C61C()
{
  sub_228139AAC();
  sub_22813923C();

  return sub_228139AEC();
}

uint64_t sub_22808C6CC(uint64_t a1)
{
  sub_22813923C();
}

uint64_t sub_22808C768(uint64_t a1)
{
  sub_228139AAC();
  sub_22813923C();

  return sub_228139AEC();
}

unint64_t sub_22808C814@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22808E1A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22808C844(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE300000000000000;
  v5 = 6709621;
  if (*v1 != 2)
  {
    v5 = 1752457584;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C646E7562;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t SKConfiguration.__deallocating_deinit()
{
  SKConfiguration.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_22808C91C(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x22AAB2030](*(v1 + 40), a1, 4);

  return sub_22808D130(v2, v3);
}

unint64_t sub_22808C964(uint64_t a1, uint64_t a2)
{
  sub_228139AAC();
  sub_22813923C();
  v4 = sub_228139AEC();

  return sub_22808D19C(a1, a2, v4);
}

unint64_t sub_22808CA2C(uint64_t a1)
{
  v1 = a1;
  sub_228139AAC();
  sub_22813923C();

  v2 = sub_228139AEC();

  return sub_22808D254(v1, v2);
}

uint64_t sub_22808CB04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_22808CB4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22808CBA0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SKConfigurationStatus.SKConfigurationSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SKConfigurationStatus.SKConfigurationSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22808CDD0()
{
  result = qword_2813C6F70[0];
  if (!qword_2813C6F70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813C6F70);
  }

  return result;
}

unint64_t sub_22808CE24(char a1)
{
  sub_228139AAC();
  MEMORY[0x22AAB2060](a1 & 1);
  v2 = sub_228139AEC();

  return sub_22808D3F4(a1 & 1, v2);
}

unint64_t sub_22808CEA4(void *a1, uint64_t *a2, uint64_t *a3)
{
  sub_228139AAC();
  MEMORY[0x22AAB2060](a1[5]);
  v6 = sub_228139AEC();
  return sub_22808D464(a1, v6, a2, a3);
}

unint64_t sub_22808CF24(uint64_t a1, char a2)
{
  v3 = a2 & 1;
  sub_228139AAC();
  sub_22801E940();
  sub_2281391EC();
  v4 = sub_228139AEC();
  return sub_22808D6B0(a1, v3, v4);
}

unint64_t sub_22808CFAC(uint64_t a1)
{
  v1 = a1;
  sub_228139AAC();
  sub_22813923C();

  v2 = sub_228139AEC();

  return sub_22808D778(v1, v2);
}

unint64_t sub_22808D130(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22808D19C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2281399BC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22808D254(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      v7 = v6 == 2 ? 6709621 : 1752457584;
      v8 = v6 == 2 ? 0xE300000000000000 : 0xE400000000000000;
      v9 = *(*(v2 + 48) + v4) ? 0x656C646E7562 : 0x6E776F6E6B6E75;
      v10 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE700000000000000;
      v11 = *(*(v2 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v2 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 6709621 : 1752457584;
      v14 = v5 == 2 ? 0xE300000000000000 : 0xE400000000000000;
      v15 = v5 ? 0x656C646E7562 : 0x6E776F6E6B6E75;
      v16 = v5 ? 0xE600000000000000 : 0xE700000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_2281399BC();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_22808D3F4(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22808D464(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a2 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = a4;
    v11 = ~v6;
    v27 = ~v6;
    do
    {
      sub_227FC8234(*(v4 + 48) + 48 * v7, v32, a3, v8);
      sub_227FE77E0(v32, v31);
      __swift_project_boxed_opaque_existential_1(v31, v31[3]);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(v31);
      sub_227FE77E0(a1, v30);
      __swift_project_boxed_opaque_existential_1(v30, v30[3]);
      v13 = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(v30);
      if (DynamicType == v13)
      {
        v14 = a3;
        v15 = v5;
        v16 = v33;
        v17 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v18 = (*(v17 + 24))(v16, v17);
        v20 = v19;
        v21 = a1[3];
        v22 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v21);
        if (v18 == (*(v22 + 24))(v21, v22) && v20 == v23)
        {

          sub_22808E1F4(v32, v14, a4);
          return v7;
        }

        v25 = sub_2281399BC();

        v8 = a4;
        sub_22808E1F4(v32, v14, a4);
        v5 = v15;
        a3 = v14;
        v11 = v27;
        v4 = v28;
        if (v25)
        {
          return v7;
        }
      }

      else
      {
        sub_22808E1F4(v32, a3, v8);
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_22808D6B0(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(*(v3 + 48) + 16 * result);
      if (a2)
      {
        if (a1 <= 1)
        {
          if (a1)
          {
            if (v8 == 1)
            {
              return result;
            }
          }

          else if (!v8)
          {
            return result;
          }
        }

        else if (a1 == 2)
        {
          if (v8 == 2)
          {
            return result;
          }
        }

        else if (a1 == 3)
        {
          if (v8 == 3)
          {
            return result;
          }
        }

        else if (v8 == 4)
        {
          return result;
        }
      }

      else if (v8 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22808D778(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v16 = ~v3;
    v5 = 0xE500000000000000;
    v17 = a1;
    while (1)
    {
      v6 = *(*(v18 + 48) + v4);
      if (v6 <= 1)
      {
        if (*(*(v18 + 48) + v4))
        {
          v7 = 0x656E694C706F74;
        }

        else
        {
          v7 = 0x6369706F74;
        }

        if (*(*(v18 + 48) + v4))
        {
          v8 = 0xE700000000000000;
        }

        else
        {
          v8 = 0xE500000000000000;
        }
      }

      else if (v6 == 2)
      {
        v8 = 0xE800000000000000;
        v7 = 0x736973706F6E7973;
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x6F436C6175736976;
        }

        else
        {
          v7 = 0x6F546C6175736976;
        }

        if (v6 == 3)
        {
          v8 = 0xEE0073747065636ELL;
        }

        else
        {
          v8 = 0xED0000656E694C70;
        }
      }

      if (v17 == 3)
      {
        v9 = 0x6F436C6175736976;
      }

      else
      {
        v9 = 0x6F546C6175736976;
      }

      if (v17 == 3)
      {
        v10 = 0xEE0073747065636ELL;
      }

      else
      {
        v10 = 0xED0000656E694C70;
      }

      if (v17 == 2)
      {
        v9 = 0x736973706F6E7973;
        v10 = 0xE800000000000000;
      }

      if (v17)
      {
        v11 = 0x656E694C706F74;
      }

      else
      {
        v11 = 0x6369706F74;
      }

      if (v17)
      {
        v5 = 0xE700000000000000;
      }

      v12 = v17 <= 1 ? v11 : v9;
      v13 = v17 <= 1 ? v5 : v10;
      if (v7 == v12 && v8 == v13)
      {
        break;
      }

      v14 = sub_2281399BC();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v16;
        v5 = 0xE500000000000000;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_22808D980(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_22808DA18()
{
  sub_228139AAC();
  MEMORY[0x22AAB2060](0);
  v0 = sub_228139AEC();

  return sub_22808D9EC(v0);
}

uint64_t sub_22808DA70(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v36 = a1;
  v39 = sub_22813882C();
  v2 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ED90, &unk_22813EC18);
  MEMORY[0x28223BE20](v5 - 8);
  v26 = &v23 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E7D8, &qword_22813BD00);
  v35 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v25 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  if (qword_2813C6918 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v15 = qword_2813C6920;

    v16 = sub_2280EAEE0(v36, v38, v15);

    if (v16)
    {
      return 1;
    }

    if (qword_2813C6908 != -1)
    {
      swift_once();
    }

    v18 = v26;
    v34 = *(off_2813C6910 + 2);
    if (!v34)
    {
      break;
    }

    v33 = off_2813C6910 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v19 = v35 + 16;
    v29 = v2 + 16;
    v30 = v12;
    v31 = (v35 + 8);
    v28 = v2 + 8;

    v12 = 0;
    *&v21 = 136315394;
    v23 = v21;
    v24 = v4;
    v32 = v20;
    v37 = v19;
    v27 = v14;
    while (v12 < *(v20 + 16))
    {
      (*(v35 + 16))(v14, &v33[*(v35 + 72) * v12], v7);
      v2 = v14;
      sub_228137BEC();
      (*v31)(v14, v7);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ED98, &qword_22813EC28);
      if ((*(*(v22 - 8) + 48))(v18, 1, v22) != 1)
      {

        sub_22808E1F4(v18, &qword_27D81ED90, &unk_22813EC18);
        return 1;
      }

      sub_22808E1F4(v18, &qword_27D81ED90, &unk_22813EC18);
      v20 = v32;
      if (v34 == ++v12)
      {

        return 0;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  return 0;
}

unint64_t sub_22808E1A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_22813995C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22808E1F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for SKConfigurationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SKConfigurationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22808E3AC()
{
  result = qword_27D81EDA8;
  if (!qword_27D81EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81EDA8);
  }

  return result;
}

uint64_t sub_22808E410(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + 152);
  v6 = *(v2 + 160);
  v7 = *(v2 + 168);
  v8 = *(v2 + 2208);
  v9 = objc_opt_self();

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v10 = byte_2813C4638;
  if (byte_2813C4638 != 1)
  {

    if (!v6)
    {
      return v5;
    }

LABEL_7:

    v11 = sub_227FE3D98(&unk_283B5AB10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EEC0, &qword_22813F000);
    swift_arrayDestroy();
    if (*(v11 + 16) && (v12 = sub_22808C964(a1, a2), (v13 & 1) != 0))
    {
      v5 = *(*(v11 + 56) + 8 * v12);
    }

    else
    {

      v5 = v3[14];
      v14 = v3[15];

      if (v10)
      {
        v14(&v22, v8);

        v5 = v22;
        goto LABEL_14;
      }
    }

LABEL_14:
    v15 = v3[25];
    v16 = v3[26];

    if (v10)
    {
      v16(&v22, v8);

      v15 = v22;
      if (*(v22 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {

      if (*(v15 + 16))
      {
LABEL_16:
        v17 = sub_22808C964(a1, a2);
        v19 = v18;

        if (v19)
        {
          v5 = *(*(v15 + 56) + 8 * v17);
        }

        goto LABEL_21;
      }
    }

LABEL_21:

    return v5;
  }

  v7(&v22, v8);

  if (v23)
  {
    goto LABEL_7;
  }

  return v22;
}

uint64_t sub_22808E6E4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v7 = *a3;
  v8 = *(v3 + 1000);
  v9 = *(v3 + 1008);
  v10 = *(v3 + 1016);
  v34 = *(v3 + 2208);
  v11 = objc_opt_self();

  v33 = v11;

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v12 = byte_2813C4638;
  if (byte_2813C4638 != 1)
  {

    if (!v9)
    {
      return v8;
    }

LABEL_7:
    v35 = a1;
    v36 = a2;

    MEMORY[0x22AAB1970](58, 0xE100000000000000);
    v13 = 0xE500000000000000;
    v14 = 0x6369706F74;
    v15 = 0xE800000000000000;
    v16 = 0x736973706F6E7973;
    v17 = 0xEE0073747065636ELL;
    v18 = 0x6F436C6175736976;
    if (v7 != 3)
    {
      v18 = 0x6F546C6175736976;
      v17 = 0xED0000656E694C70;
    }

    if (v7 != 2)
    {
      v16 = v18;
      v15 = v17;
    }

    if (v7)
    {
      v14 = 0x656E694C706F74;
      v13 = 0xE700000000000000;
    }

    if (v7 <= 1)
    {
      v19 = v14;
    }

    else
    {
      v19 = v16;
    }

    if (v7 <= 1)
    {
      v20 = v13;
    }

    else
    {
      v20 = v15;
    }

    MEMORY[0x22AAB1970](v19, v20);

    v22 = v35;
    v21 = v36;
    v23 = sub_227FE3D98(&unk_283B5ACB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EEC0, &qword_22813F000);
    swift_arrayDestroy();
    if (*(v23 + 16) && (v24 = sub_22808C964(v22, v21), (v25 & 1) != 0))
    {
      v8 = *(*(v23 + 56) + 8 * v24);
    }

    else
    {

      v8 = v4[120];
      v26 = v4[121];

      if (v12)
      {
        v26(&v35, v34);

        v8 = v35;
        goto LABEL_26;
      }
    }

LABEL_26:
    v27 = v4[131];
    v28 = v4[132];

    if (v12)
    {
      v28(&v35, v34);

      v27 = v35;
      if (*(v35 + 16))
      {
        goto LABEL_28;
      }
    }

    else
    {

      if (*(v27 + 16))
      {
LABEL_28:
        v29 = sub_22808C964(v22, v21);
        v31 = v30;

        if (v31)
        {
          v8 = *(*(v27 + 56) + 8 * v29);
        }

        goto LABEL_33;
      }
    }

LABEL_33:

    return v8;
  }

  v10(&v35, v34);

  if (v36)
  {
    goto LABEL_7;
  }

  return v35;
}

uint64_t sub_22808EAB4()
{
  v0 = sub_227FE3E94(&unk_283B5AD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EEC8, &qword_22813F008);
  result = swift_arrayDestroy();
  off_2813C7718 = v0;
  return result;
}

double sub_22808EB10(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v7 = *a3;
  v8 = *(v3 + 1392);
  v9 = *(v3 + 1400);
  v10 = *(v3 + 1408);
  v33 = *(v3 + 2208);
  v11 = objc_opt_self();

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v12 = byte_2813C4638;
  if (byte_2813C4638 != 1)
  {

    if (!v9)
    {
      return v8;
    }

LABEL_7:
    v34 = a1;
    v35 = a2;

    MEMORY[0x22AAB1970](58, 0xE100000000000000);
    v13 = 0xE500000000000000;
    v14 = 0x6369706F74;
    v15 = 0xE800000000000000;
    v16 = 0x736973706F6E7973;
    v17 = 0xEE0073747065636ELL;
    v18 = 0x6F436C6175736976;
    if (v7 != 3)
    {
      v18 = 0x6F546C6175736976;
      v17 = 0xED0000656E694C70;
    }

    if (v7 != 2)
    {
      v16 = v18;
      v15 = v17;
    }

    if (v7)
    {
      v14 = 0x656E694C706F74;
      v13 = 0xE700000000000000;
    }

    if (v7 <= 1)
    {
      v19 = v14;
    }

    else
    {
      v19 = v16;
    }

    if (v7 <= 1)
    {
      v20 = v13;
    }

    else
    {
      v20 = v15;
    }

    MEMORY[0x22AAB1970](v19, v20);

    v22 = v34;
    v21 = v35;
    if (qword_2813C7710 != -1)
    {
      swift_once();
    }

    v23 = off_2813C7718;
    if (*(off_2813C7718 + 2) && (v24 = sub_22808C964(v22, v21), (v25 & 1) != 0))
    {
      v8 = *(v23[7] + 8 * v24);
    }

    else
    {
      v8 = v4[169];
      v26 = *(v4 + 170);

      if (v12)
      {
        v26(&v34, v33);

        v8 = *&v34;
      }

      else
      {
      }
    }

    v27 = *(v4 + 180);
    v28 = *(v4 + 181);

    if (v12)
    {
      v28(&v34, v33);

      v27 = v34;
      if (*(v34 + 16))
      {
        goto LABEL_29;
      }
    }

    else
    {

      if (*(v27 + 16))
      {
LABEL_29:
        v29 = sub_22808C964(v22, v21);
        v31 = v30;

        if (v31)
        {
          v8 = *(*(v27 + 56) + 8 * v29);
        }

        goto LABEL_34;
      }
    }

LABEL_34:

    return v8;
  }

  v10(&v34, v33);

  if (v35)
  {
    goto LABEL_7;
  }

  return *&v34;
}

uint64_t sub_22808EED0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for ModelBundleIdentifier(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  v49 = a1;
  sub_227FC8614(a1, &v43 - v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v44 = v5;
  v45 = v4;
  v43 = v7;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v5 + 32))(v7, v16, v4);
      v48 = sub_22813746C();
      v19 = v18;
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v48 = 0xD000000000000045;
      v19 = 0x8000000228144A90;
    }
  }

  else
  {
    v20 = v46;
    v21 = v16;
    v22 = v47;
    (*(v46 + 32))(v10, v21, v47);
    v48 = sub_22813746C();
    v19 = v23;
    (*(v20 + 8))(v10, v22);
  }

  v24 = v2[231];
  v25 = v2[232];
  v26 = v2[276];
  v27 = objc_opt_self();

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v25(&v50, v26);

    v24 = v50;
    if (*(v50 + 16))
    {
      goto LABEL_10;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!*(v24 + 16))
  {
    goto LABEL_13;
  }

LABEL_10:
  v28 = sub_22808C964(v48, v19);
  v30 = v29;

  if (v30)
  {
    v31 = *(*(v24 + 56) + 8 * v28);

    return v31;
  }

LABEL_14:

  if (qword_2813C7700 != -1)
  {
    swift_once();
  }

  v33 = off_2813C7708;
  sub_227FC8614(v49, v14);
  v34 = swift_getEnumCaseMultiPayload();
  if (!v34)
  {
    v35 = v46;
    v36 = v47;
    (*(v46 + 32))(v10, v14, v47);
LABEL_20:
    v37 = sub_22813746C();
    v39 = v38;
    (*(v35 + 8))(v10, v36);
    if (v33[2])
    {
      goto LABEL_21;
    }

LABEL_24:

    return 0;
  }

  if (v34 == 1)
  {
    v10 = v43;
    v35 = v44;
    v36 = v45;
    (*(v44 + 32))(v43, v14, v45);
    goto LABEL_20;
  }

  v37 = 0xD000000000000045;
  v39 = 0x8000000228144A90;
  if (!v33[2])
  {
    goto LABEL_24;
  }

LABEL_21:
  v40 = sub_22808C964(v37, v39);
  v42 = v41;

  if (v42)
  {
    return *(v33[7] + 8 * v40);
  }

  return 0;
}

uint64_t sub_22808F3E4()
{
  v0 = sub_227FE3D98(&unk_283B5AE70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EEC0, &qword_22813F000);
  result = swift_arrayDestroy();
  off_2813C7708 = v0;
  return result;
}

uint64_t sub_22808F440()
{
  type metadata accessor for InternalSettings();
  swift_allocObject();
  result = sub_22808F4E8(0xD00000000000001ALL, 0x8000000228144370);
  qword_2813C76F8 = result;
  return result;
}

void *sub_22808F494()
{
  type metadata accessor for InternalSettings();
  swift_allocObject();
  result = sub_22808F4E8(0xD000000000000022, 0x8000000228146FC0);
  off_27D81EDB0 = result;
  return result;
}

uint64_t sub_22808F4E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v77 = a2;
  v7 = byte_2813C4629;
  v8 = swift_allocObject();
  v9 = v8;
  *(v8 + 16) = 0xD000000000000015;
  *(v8 + 24) = 0x8000000228146FF0;
  if (qword_2813C7720 != -1)
  {
    v8 = swift_once();
  }

  v10 = qword_2813C7728;
  MEMORY[0x28223BE20](v8);
  os_unfair_lock_lock((v10 + 24));
  sub_228093C7C((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 16) = 0xD000000000000015;
  *(v3 + 24) = 0x8000000228146FF0;
  *(v3 + 32) = v7;
  *(v3 + 40) = sub_227FC7494;
  *(v3 + 48) = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = 0xD000000000000017;
  *(v11 + 24) = 0x8000000228147010;
  MEMORY[0x28223BE20](v11);
  os_unfair_lock_lock((v10 + 24));
  sub_228094144((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 56) = 0xD000000000000017;
  *(v3 + 64) = 0x8000000228147010;
  *(v3 + 72) = v7;
  *(v3 + 80) = sub_2280944F4;
  *(v3 + 88) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = 0xD000000000000010;
  *(v12 + 24) = 0x8000000228147030;
  MEMORY[0x28223BE20](v12);
  os_unfair_lock_lock((v10 + 24));
  sub_228093CA4((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 96) = 0xD000000000000010;
  *(v3 + 104) = 0x8000000228147030;
  *(v3 + 112) = 15;
  *(v3 + 120) = sub_228093CA0;
  *(v3 + 128) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = 0xD00000000000001ELL;
  *(v13 + 24) = 0x8000000228147050;
  MEMORY[0x28223BE20](v13);
  os_unfair_lock_lock((v10 + 24));
  sub_228093CD0((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 136) = 0xD00000000000001ELL;
  *(v3 + 144) = 0x8000000228147050;
  *(v3 + 152) = 0;
  *(v3 + 160) = 1;
  *(v3 + 168) = sub_228093CC8;
  *(v3 + 176) = v13;
  v14 = sub_227FE3D98(&unk_283B5AB10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EEC0, &qword_22813F000);
  swift_arrayDestroy();
  v15 = swift_allocObject();
  v15[2] = 0xD000000000000019;
  v15[3] = 0x8000000228147070;
  v15[4] = v14;
  MEMORY[0x28223BE20](v15);

  os_unfair_lock_lock((v10 + 24));
  sub_228093D20((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 184) = 0xD000000000000019;
  *(v3 + 192) = 0x8000000228147070;
  *(v3 + 200) = v14;
  *(v3 + 208) = sub_228093CF0;
  *(v3 + 216) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = 0xD00000000000001DLL;
  *(v16 + 24) = 0x8000000228147090;
  MEMORY[0x28223BE20](v16);
  os_unfair_lock_lock((v10 + 24));
  sub_22809415C((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 224) = 0xD00000000000001DLL;
  *(v3 + 232) = 0x8000000228147090;
  *(v3 + 240) = 1;
  *(v3 + 248) = sub_2280944F8;
  *(v3 + 256) = v16;
  v17 = swift_allocObject();
  v17[2] = 0xD000000000000029;
  v17[3] = 0x80000002281470B0;
  v17[4] = 0;
  MEMORY[0x28223BE20](v17);
  os_unfair_lock_lock((v10 + 24));
  sub_228093D60((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 264) = 0xD000000000000029;
  *(v3 + 272) = 0x80000002281470B0;
  *(v3 + 280) = 0;
  *(v3 + 288) = sub_228093D54;
  *(v3 + 296) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = 0xD000000000000039;
  *(v18 + 24) = 0x80000002281470E0;
  MEMORY[0x28223BE20](v18);
  os_unfair_lock_lock((v10 + 24));
  sub_228094174((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 304) = 0xD000000000000039;
  *(v3 + 312) = 0x80000002281470E0;
  *(v3 + 320) = 0;
  *(v3 + 328) = sub_2280944FC;
  *(v3 + 336) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = 0xD000000000000020;
  *(v19 + 24) = 0x8000000228147120;
  MEMORY[0x28223BE20](v19);
  os_unfair_lock_lock((v10 + 24));
  sub_22809418C((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 344) = 0xD000000000000020;
  *(v3 + 352) = 0x8000000228147120;
  *(v3 + 360) = 10;
  *(v3 + 368) = sub_228094500;
  *(v3 + 376) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = 0xD000000000000025;
  *(v20 + 24) = 0x8000000228147150;
  MEMORY[0x28223BE20](v20);
  os_unfair_lock_lock((v10 + 24));
  sub_2280941A4((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 384) = 0xD000000000000025;
  *(v3 + 392) = 0x8000000228147150;
  *(v3 + 400) = 0;
  *(v3 + 408) = sub_228094504;
  *(v3 + 416) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = 0xD000000000000025;
  *(v21 + 24) = 0x8000000228147180;
  MEMORY[0x28223BE20](v21);
  os_unfair_lock_lock((v10 + 24));
  sub_2280941BC((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 424) = 0xD000000000000025;
  *(v3 + 432) = 0x8000000228147180;
  *(v3 + 440) = 0;
  *(v3 + 448) = sub_228094508;
  *(v3 + 456) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = 0xD00000000000001CLL;
  *(v22 + 24) = 0x80000002281471B0;
  MEMORY[0x28223BE20](v22);
  os_unfair_lock_lock((v10 + 24));
  sub_2280941D4((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 464) = 0xD00000000000001CLL;
  *(v3 + 472) = 0x80000002281471B0;
  *(v3 + 480) = 10;
  *(v3 + 488) = sub_22809450C;
  *(v3 + 496) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = 0xD000000000000040;
  *(v23 + 24) = 0x80000002281471D0;
  MEMORY[0x28223BE20](v23);
  os_unfair_lock_lock((v10 + 24));
  sub_2280941EC((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 504) = 0xD000000000000040;
  *(v3 + 512) = 0x80000002281471D0;
  *(v3 + 520) = 1;
  *(v3 + 528) = sub_228094510;
  *(v3 + 536) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = 0xD00000000000001FLL;
  *(v24 + 24) = 0x8000000228147220;
  MEMORY[0x28223BE20](v24);
  os_unfair_lock_lock((v10 + 24));
  sub_228094204((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 544) = 0xD00000000000001FLL;
  *(v3 + 552) = 0x8000000228147220;
  *(v3 + 560) = 1;
  *(v3 + 568) = sub_228094514;
  *(v3 + 576) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = 0xD000000000000019;
  *(v25 + 24) = 0x8000000228147240;
  MEMORY[0x28223BE20](v25);
  os_unfair_lock_lock((v10 + 24));
  sub_22809421C((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 584) = 0xD000000000000019;
  *(v3 + 592) = 0x8000000228147240;
  *(v3 + 600) = 300;
  *(v3 + 608) = sub_228094518;
  *(v3 + 616) = v25;
  v26 = swift_allocObject();
  v26[2] = 0xD00000000000001DLL;
  v26[3] = 0x8000000228147260;
  v26[4] = &unk_283B5AF08;
  MEMORY[0x28223BE20](v26);
  os_unfair_lock_lock((v10 + 24));
  sub_228094234((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 624) = 0xD00000000000001DLL;
  *(v3 + 632) = 0x8000000228147260;
  *(v3 + 640) = &unk_283B5AF08;
  *(v3 + 648) = sub_228094130;
  *(v3 + 656) = v26;
  v27 = swift_allocObject();
  v27[2] = 0xD000000000000025;
  v27[3] = 0x8000000228147280;
  v28 = MEMORY[0x277D84F90];
  v27[4] = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v27);
  os_unfair_lock_lock((v10 + 24));
  sub_22809424C((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 664) = 0xD000000000000025;
  *(v3 + 672) = 0x8000000228147280;
  *(v3 + 680) = v28;
  *(v3 + 688) = sub_228094134;
  *(v3 + 696) = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = 0xD000000000000014;
  *(v29 + 24) = 0x80000002281472B0;
  MEMORY[0x28223BE20](v29);
  os_unfair_lock_lock((v10 + 24));
  sub_228094264((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 704) = 0xD000000000000014;
  *(v3 + 712) = 0x80000002281472B0;
  *(v3 + 720) = 1;
  *(v3 + 728) = sub_22809451C;
  *(v3 + 736) = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = 0xD000000000000014;
  *(v30 + 24) = 0x80000002281472D0;
  MEMORY[0x28223BE20](v30);
  os_unfair_lock_lock((v10 + 24));
  sub_22809427C((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 744) = 0xD000000000000014;
  *(v3 + 752) = 0x80000002281472D0;
  *(v3 + 760) = 1;
  *(v3 + 768) = sub_228094520;
  *(v3 + 776) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = 0xD000000000000015;
  *(v31 + 24) = 0x80000002281472F0;
  MEMORY[0x28223BE20](v31);
  os_unfair_lock_lock((v10 + 24));
  sub_228094294((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 784) = 0xD000000000000015;
  *(v3 + 792) = 0x80000002281472F0;
  *(v3 + 800) = 1;
  *(v3 + 808) = sub_228094524;
  *(v3 + 816) = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = 0xD000000000000017;
  *(v32 + 24) = 0x8000000228147310;
  MEMORY[0x28223BE20](v32);
  os_unfair_lock_lock((v10 + 24));
  sub_2280942AC((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 824) = 0xD000000000000017;
  *(v3 + 832) = 0x8000000228147310;
  *(v3 + 840) = 0;
  *(v3 + 848) = sub_228094528;
  *(v3 + 856) = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = 0xD00000000000002DLL;
  *(v33 + 24) = 0x8000000228147330;
  MEMORY[0x28223BE20](v33);
  os_unfair_lock_lock((v10 + 24));
  sub_228093D8C((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 864) = 0xD00000000000002DLL;
  *(v3 + 872) = 0x8000000228147330;
  *(v3 + 880) = 2;
  *(v3 + 888) = sub_228093D84;
  *(v3 + 896) = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = 0xD00000000000002DLL;
  *(v34 + 24) = 0x8000000228147360;
  MEMORY[0x28223BE20](v34);
  os_unfair_lock_lock((v10 + 24));
  sub_2280942C4((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 904) = 0xD00000000000002DLL;
  *(v3 + 912) = 0x8000000228147360;
  *(v3 + 920) = 0;
  *(v3 + 928) = sub_22809452C;
  *(v3 + 936) = v34;
  v35 = swift_allocObject();
  strcpy((v35 + 16), "maximumTokens");
  *(v35 + 30) = -4864;
  MEMORY[0x28223BE20](v35);
  os_unfair_lock_lock((v10 + 24));
  sub_2280942DC((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  strcpy((v3 + 944), "maximumTokens");
  *(v3 + 958) = -4864;
  *(v3 + 960) = 300;
  *(v3 + 968) = sub_228094530;
  *(v3 + 976) = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = 0xD00000000000001BLL;
  *(v36 + 24) = 0x8000000228147390;
  MEMORY[0x28223BE20](v36);
  os_unfair_lock_lock((v10 + 24));
  sub_2280940B8((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 984) = 0xD00000000000001BLL;
  *(v3 + 992) = 0x8000000228147390;
  *(v3 + 1000) = 0;
  *(v3 + 1008) = 1;
  *(v3 + 1016) = sub_22809409C;
  *(v3 + 1024) = v36;
  v37 = sub_227FE3D98(&unk_283B5ACB0);
  swift_arrayDestroy();
  v38 = swift_allocObject();
  v38[2] = 0xD000000000000016;
  v38[3] = 0x80000002281473B0;
  v38[4] = v37;
  MEMORY[0x28223BE20](v38);

  os_unfair_lock_lock((v10 + 24));
  sub_2280942F4((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1032) = 0xD000000000000016;
  *(v3 + 1040) = 0x80000002281473B0;
  *(v3 + 1048) = v37;
  *(v3 + 1056) = sub_228094138;
  *(v3 + 1064) = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = 1265659764;
  *(v39 + 24) = 0xE400000000000000;
  MEMORY[0x28223BE20](v39);
  os_unfair_lock_lock((v10 + 24));
  sub_22809430C((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1072) = 1265659764;
  *(v3 + 1080) = 0xE400000000000000;
  *(v3 + 1088) = 1;
  *(v3 + 1096) = sub_228094534;
  *(v3 + 1104) = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = 0xD000000000000016;
  *(v40 + 24) = 0x80000002281473D0;
  MEMORY[0x28223BE20](v40);
  os_unfair_lock_lock((v10 + 24));
  sub_228094324((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1112) = 0xD000000000000016;
  *(v3 + 1120) = 0x80000002281473D0;
  *(v3 + 1128) = 1;
  *(v3 + 1136) = sub_228094538;
  *(v3 + 1144) = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = 0xD000000000000018;
  *(v41 + 24) = 0x80000002281473F0;
  MEMORY[0x28223BE20](v41);
  os_unfair_lock_lock((v10 + 24));
  sub_228093DE4((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1152) = 0xD000000000000018;
  *(v3 + 1160) = 0x80000002281473F0;
  *(v3 + 1168) = 0;
  *(v3 + 1176) = 1;
  *(v3 + 1184) = sub_228093DDC;
  *(v3 + 1192) = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = 0x74617265706D6574;
  *(v42 + 24) = 0xEB00000000657275;
  MEMORY[0x28223BE20](v42);
  os_unfair_lock_lock((v10 + 24));
  sub_228093E08((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1200) = 0x74617265706D6574;
  *(v3 + 1208) = 0xEB00000000657275;
  *(v3 + 1216) = 0x3FF0000000000000;
  *(v3 + 1224) = sub_228093E04;
  *(v3 + 1232) = v42;
  v43 = swift_allocObject();
  *(v43 + 16) = 0x65536D6F646E6172;
  *(v43 + 24) = 0xEA00000000006465;
  MEMORY[0x28223BE20](v43);
  os_unfair_lock_lock((v10 + 24));
  sub_2280940D0((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1240) = 0x65536D6F646E6172;
  *(v3 + 1248) = 0xEA00000000006465;
  *(v3 + 1256) = 0;
  *(v3 + 1264) = 1;
  *(v3 + 1272) = sub_2280940A0;
  *(v3 + 1280) = v43;
  v44 = swift_allocObject();
  *(v44 + 16) = 0xD000000000000016;
  *(v44 + 24) = 0x8000000228147410;
  MEMORY[0x28223BE20](v44);
  os_unfair_lock_lock((v10 + 24));
  sub_2280940E8((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1288) = 0xD000000000000016;
  *(v3 + 1296) = 0x8000000228147410;
  *(v3 + 1304) = 0;
  *(v3 + 1312) = 1;
  *(v3 + 1320) = sub_2280940A4;
  *(v3 + 1328) = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = 0x74756F656D6974;
  *(v45 + 24) = 0xE700000000000000;
  MEMORY[0x28223BE20](v45);
  os_unfair_lock_lock((v10 + 24));
  sub_22809433C((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1336) = 0x74756F656D6974;
  *(v3 + 1344) = 0xE700000000000000;
  *(v3 + 1352) = 0x403E000000000000;
  *(v3 + 1360) = sub_22809453C;
  *(v3 + 1368) = v45;
  v46 = swift_allocObject();
  *(v46 + 16) = 0xD000000000000015;
  *(v46 + 24) = 0x8000000228147430;
  MEMORY[0x28223BE20](v46);
  os_unfair_lock_lock((v10 + 24));
  sub_228094100((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1376) = 0xD000000000000015;
  *(v3 + 1384) = 0x8000000228147430;
  *(v3 + 1392) = 0;
  *(v3 + 1400) = 1;
  *(v3 + 1408) = sub_2280940A8;
  *(v3 + 1416) = v46;
  if (qword_2813C7710 != -1)
  {
    swift_once();
  }

  v47 = off_2813C7718;
  v48 = swift_allocObject();
  v48[2] = 0xD000000000000010;
  v48[3] = 0x8000000228147450;
  v48[4] = v47;
  MEMORY[0x28223BE20](v48);
  swift_bridgeObjectRetain_n();
  os_unfair_lock_lock((v10 + 24));
  sub_228093E5C((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1424) = 0xD000000000000010;
  *(v3 + 1432) = 0x8000000228147450;
  *(v3 + 1440) = v47;
  *(v3 + 1448) = sub_228093E2C;
  *(v3 + 1456) = v48;
  v49 = swift_allocObject();
  *(v49 + 16) = 0x743A726576726573;
  *(v49 + 24) = 0xEB000000004B706FLL;
  MEMORY[0x28223BE20](v49);
  os_unfair_lock_lock((v10 + 24));
  sub_228094354((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1464) = 0x743A726576726573;
  *(v3 + 1472) = 0xEB000000004B706FLL;
  *(v3 + 1480) = 1;
  *(v3 + 1488) = sub_228094540;
  *(v3 + 1496) = v49;
  v50 = swift_allocObject();
  *(v50 + 16) = 0xD00000000000001FLL;
  *(v50 + 24) = 0x8000000228147470;
  MEMORY[0x28223BE20](v50);
  os_unfair_lock_lock((v10 + 24));
  sub_228094118((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1504) = 0xD00000000000001FLL;
  *(v3 + 1512) = 0x8000000228147470;
  *(v3 + 1520) = 0;
  *(v3 + 1528) = 1;
  *(v3 + 1536) = sub_2280940AC;
  *(v3 + 1544) = v50;
  v51 = swift_allocObject();
  *(v51 + 16) = 0xD000000000000012;
  *(v51 + 24) = 0x8000000228147490;
  MEMORY[0x28223BE20](v51);
  os_unfair_lock_lock((v10 + 24));
  sub_22809436C((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1552) = 0xD000000000000012;
  *(v3 + 1560) = 0x8000000228147490;
  *(v3 + 1568) = 0;
  *(v3 + 1576) = sub_228094544;
  *(v3 + 1584) = v51;
  v52 = swift_allocObject();
  v52[2] = 0xD000000000000025;
  v52[3] = 0x80000002281474B0;
  v52[4] = &unk_283B5AF38;
  MEMORY[0x28223BE20](v52);
  os_unfair_lock_lock((v10 + 24));
  sub_228094384((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1592) = 0xD000000000000025;
  *(v3 + 1600) = 0x80000002281474B0;
  *(v3 + 1608) = &unk_283B5AF38;
  *(v3 + 1616) = sub_22809413C;
  *(v3 + 1624) = v52;
  v53 = swift_allocObject();
  *(v53 + 16) = 0xD000000000000019;
  *(v53 + 24) = 0x80000002281474E0;
  MEMORY[0x28223BE20](v53);
  os_unfair_lock_lock((v10 + 24));
  sub_22809439C((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1632) = 0xD000000000000019;
  *(v3 + 1640) = 0x80000002281474E0;
  *(v3 + 1648) = 1;
  *(v3 + 1656) = sub_228094548;
  *(v3 + 1664) = v53;
  v54 = swift_allocObject();
  *(v54 + 16) = 0xD000000000000026;
  *(v54 + 24) = 0x8000000228147500;
  MEMORY[0x28223BE20](v54);
  os_unfair_lock_lock((v10 + 24));
  sub_2280943B4((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1672) = 0xD000000000000026;
  *(v3 + 1680) = 0x8000000228147500;
  *(v3 + 1688) = 1;
  *(v3 + 1696) = sub_22809454C;
  *(v3 + 1704) = v54;
  v55 = swift_allocObject();
  *(v55 + 16) = 0xD00000000000001DLL;
  *(v55 + 24) = 0x8000000228147530;
  MEMORY[0x28223BE20](v55);
  os_unfair_lock_lock((v10 + 24));
  sub_2280943CC((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1712) = 0xD00000000000001DLL;
  *(v3 + 1720) = 0x8000000228147530;
  *(v3 + 1728) = 256;
  *(v3 + 1736) = sub_228094550;
  *(v3 + 1744) = v55;
  v56 = swift_allocObject();
  *(v56 + 16) = 0xD00000000000002DLL;
  *(v56 + 24) = 0x8000000228147550;
  MEMORY[0x28223BE20](v56);
  os_unfair_lock_lock((v10 + 24));
  sub_2280943E4((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1752) = 0xD00000000000002DLL;
  *(v3 + 1760) = 0x8000000228147550;
  *(v3 + 1768) = 4;
  *(v3 + 1776) = sub_228094554;
  *(v3 + 1784) = v56;
  v57 = swift_allocObject();
  *(v57 + 16) = 0xD000000000000034;
  *(v57 + 24) = 0x8000000228147580;
  MEMORY[0x28223BE20](v57);
  os_unfair_lock_lock((v10 + 24));
  sub_2280943FC((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1792) = 0xD000000000000034;
  *(v3 + 1800) = 0x8000000228147580;
  *(v3 + 1808) = 1;
  *(v3 + 1816) = sub_228094558;
  *(v3 + 1824) = v57;
  if (qword_2813C7700 != -1)
  {
    swift_once();
  }

  v58 = off_2813C7708;
  v59 = swift_allocObject();
  v59[2] = 0xD000000000000022;
  v59[3] = 0x80000002281475C0;
  v59[4] = v58;
  MEMORY[0x28223BE20](v59);
  swift_bridgeObjectRetain_n();
  os_unfair_lock_lock((v10 + 24));
  sub_228094414((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1832) = 0xD000000000000022;
  *(v3 + 1840) = 0x80000002281475C0;
  *(v3 + 1848) = v58;
  *(v3 + 1856) = sub_228094140;
  *(v3 + 1864) = v59;
  v60 = swift_allocObject();
  *(v60 + 16) = 0xD00000000000001BLL;
  *(v60 + 24) = 0x80000002281475F0;
  MEMORY[0x28223BE20](v60);
  os_unfair_lock_lock((v10 + 24));
  sub_22809442C((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1872) = 0xD00000000000001BLL;
  *(v3 + 1880) = 0x80000002281475F0;
  *(v3 + 1888) = 1;
  *(v3 + 1896) = sub_22809455C;
  *(v3 + 1904) = v60;
  v61 = swift_allocObject();
  *(v61 + 16) = 0xD000000000000022;
  *(v61 + 24) = 0x8000000228147610;
  MEMORY[0x28223BE20](v61);
  os_unfair_lock_lock((v10 + 24));
  sub_228094444((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1912) = 0xD000000000000022;
  *(v3 + 1920) = 0x8000000228147610;
  *(v3 + 1928) = 1;
  *(v3 + 1936) = sub_228094560;
  *(v3 + 1944) = v61;
  v62 = swift_allocObject();
  *(v62 + 16) = 0xD00000000000001FLL;
  *(v62 + 24) = 0x8000000228147640;
  MEMORY[0x28223BE20](v62);
  os_unfair_lock_lock((v10 + 24));
  sub_22809445C((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1952) = 0xD00000000000001FLL;
  *(v3 + 1960) = 0x8000000228147640;
  *(v3 + 1968) = 0x40CC200000000000;
  *(v3 + 1976) = sub_228094564;
  *(v3 + 1984) = v62;
  v63 = swift_allocObject();
  *(v63 + 16) = 0x436E6F6973736573;
  *(v63 + 24) = 0xEF4C545465686361;
  MEMORY[0x28223BE20](v63);
  os_unfair_lock_lock((v10 + 24));
  sub_228094474((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 1992) = 0x436E6F6973736573;
  *(v3 + 2000) = 0xEF4C545465686361;
  *(v3 + 2008) = 0x403E000000000000;
  *(v3 + 2016) = sub_228094568;
  *(v3 + 2024) = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = 0xD000000000000032;
  *(v64 + 24) = 0x8000000228147660;
  MEMORY[0x28223BE20](v64);
  os_unfair_lock_lock((v10 + 24));
  sub_22809448C((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 2032) = 0xD000000000000032;
  *(v3 + 2040) = 0x8000000228147660;
  *(v3 + 2048) = 4;
  *(v3 + 2056) = sub_22809456C;
  *(v3 + 2064) = v64;
  v65 = swift_allocObject();
  *(v65 + 16) = 0xD000000000000024;
  *(v65 + 24) = 0x80000002281476A0;
  MEMORY[0x28223BE20](v65);
  os_unfair_lock_lock((v10 + 24));
  sub_2280944A4((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 2072) = 0xD000000000000024;
  *(v3 + 2080) = 0x80000002281476A0;
  *(v3 + 2088) = 2;
  *(v3 + 2096) = sub_2280940B0;
  *(v3 + 2104) = v65;
  v66 = swift_allocObject();
  *(v66 + 16) = 0xD000000000000023;
  *(v66 + 24) = 0x80000002281476D0;
  MEMORY[0x28223BE20](v66);
  os_unfair_lock_lock((v10 + 24));
  sub_2280944BC((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 2112) = 0xD000000000000023;
  *(v3 + 2120) = 0x80000002281476D0;
  *(v3 + 2128) = 2;
  *(v3 + 2136) = sub_2280940B4;
  *(v3 + 2144) = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = 0xD000000000000019;
  *(v67 + 24) = 0x8000000228147700;
  MEMORY[0x28223BE20](v67);
  os_unfair_lock_lock((v10 + 24));
  sub_2280944D4((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  *(v3 + 2152) = 0xD000000000000019;
  *(v3 + 2160) = 0x8000000228147700;
  *(v3 + 2168) = 1;
  *(v3 + 2176) = sub_228094570;
  *(v3 + 2184) = v67;
  v68 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v69 = sub_22813927C();
  v70 = [v68 initWithSuiteName_];

  if (v70)
  {
    *(v3 + 2192) = a1;
    *(v3 + 2200) = v77;
    *(v3 + 2208) = v70;
    v71 = v70;
    os_unfair_lock_lock((v10 + 24));
    sub_228093F88((v10 + 16));
    os_unfair_lock_unlock((v10 + 24));

    return v3;
  }

  else
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v73 = sub_22813882C();
    __swift_project_value_buffer(v73, &unk_2813C89F0);
    v74 = sub_22813880C();
    v75 = sub_2281396DC();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_227FC3000, v74, v75, "NSUserDefaults.init(suiteName:) unexpectedly returned nil", v76, 2u);
      MEMORY[0x22AAB28A0](v76, -1, -1);
    }

    result = sub_2281398FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_228091CF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EEE0, &qword_22813F028);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x277D84F98];
  qword_2813C7728 = result;
  return result;
}

uint64_t sub_228091D40(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = sub_22808C964(a2, a3), (v9 & 1) != 0))
  {
    sub_228029260(*(v7 + 56) + 32 * v8, &v11);
    return sub_228094034(&v11);
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    sub_228094034(&v11);
    *(&v12 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v11) = a4 & 1;

    return sub_2280249EC(&v11, a2, a3);
  }
}

uint64_t sub_228091E04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = sub_22808C964(a2, a3), (v9 & 1) != 0))
  {
    sub_228029260(*(v7 + 56) + 32 * v8, &v11);
    return sub_228094034(&v11);
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    sub_228094034(&v11);
    *(&v12 + 1) = MEMORY[0x277D83B88];
    *&v11 = a4;

    return sub_2280249EC(&v11, a2, a3);
  }
}

uint64_t sub_228091EC4(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = sub_22808C964(a2, a3), (v9 & 1) != 0))
  {
    sub_228029260(*(v7 + 56) + 32 * v8, &v11);
    return sub_228094034(&v11);
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    sub_228094034(&v11);
    *(&v12 + 1) = MEMORY[0x277D839F8];
    *&v11 = a4;

    return sub_2280249EC(&v11, a2, a3);
  }
}

uint64_t sub_228091F8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v11 = *a1;
  if (*(*a1 + 16) && (v12 = sub_22808C964(a2, a3), (v13 & 1) != 0))
  {
    sub_228029260(*(v11 + 56) + 32 * v12, &v15);
    return sub_228094034(&v15);
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    sub_228094034(&v15);
    *(&v16 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    *&v15 = a4;

    return sub_2280249EC(&v15, a2, a3);
  }
}

uint64_t sub_228092068(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = sub_22808C964(a2, a3), (v9 & 1) != 0))
  {
    sub_228029260(*(v7 + 56) + 32 * v8, &v14);
    return sub_228094034(&v14);
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    sub_228094034(&v14);
    if (a4)
    {
      *(&v13 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
      *&v12 = a4;
      sub_227FE5EA8(&v12, &v14);
    }

    else
    {
      v13 = 0u;
      v11 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      *(&v15 + 1) = sub_228093FE8();
      *&v14 = v11;
    }

    return sub_2280249EC(&v14, a2, a3);
  }
}

uint64_t sub_228092194(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = sub_22808C964(a2, a3), (v9 & 1) != 0))
  {
    sub_228029260(*(v7 + 56) + 32 * v8, &v14);
    return sub_228094034(&v14);
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    sub_228094034(&v14);
    if (a4 == 2)
    {
      v13 = 0u;
      v11 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      *(&v15 + 1) = sub_228093FE8();
      *&v14 = v11;
    }

    else
    {
      *(&v13 + 1) = MEMORY[0x277D839B0];
      LOBYTE(v12) = a4 & 1;
      sub_227FE5EA8(&v12, &v14);
    }

    return sub_2280249EC(&v14, a2, a3);
  }
}