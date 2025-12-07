uint64_t sub_1E6223ED8(uint64_t a1, uint64_t a2)
{
  v3[41] = a2;
  v3[42] = v2;
  v3[40] = a1;
  v4 = sub_1E65E6018();
  v3[43] = v4;
  v3[44] = *(v4 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = type metadata accessor for RouteDetourResolver(0);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = type metadata accessor for RouteDestination(0);
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = type metadata accessor for RouteSource(0);
  v3[58] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E62240AC, 0, 0);
}

uint64_t sub_1E62240AC()
{
  v1 = *(v0[42] + *(v0[46] + 24));
  v0[59] = v1;
  if (*(v1 + 16))
  {
    sub_1E6226C8C(v0[41] + *(v0[50] + 20), v0[58], type metadata accessor for RouteSource);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      sub_1E6226D58(v0[58], type metadata accessor for RouteSource);
LABEL_5:
      v3 = (v0[42] + *(v0[46] + 20));
      v0[60] = *v3;
      v4 = v3[1];
      v0[61] = v4;
      ObjectType = swift_getObjectType();
      v0[62] = ObjectType;
      v12 = (*(v4 + 16) + **(v4 + 16));
      v6 = swift_task_alloc();
      v0[63] = v6;
      *v6 = v0;
      v6[1] = sub_1E6224400;
      v7 = v0[41];

      return v12(v7, ObjectType, v4);
    }

    if ((EnumCaseMultiPayload - 6) < 4)
    {
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v9 = v0[58];
      v10 = sub_1E65D8D48();
      (*(*(v10 - 8) + 8))(v9, v10);
      goto LABEL_5;
    }
  }

  sub_1E6226C8C(v0[41], v0[40], type metadata accessor for RouteDestination);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E6224400(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 512) = a1;
  *(v3 + 520) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1E6224530, 0, 0);
}

uint64_t sub_1E6224530()
{
  v55 = v0;
  v54[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 448);
  v2 = *(v0 + 328);
  *(v0 + 264) = *(v0 + 512);
  *(v0 + 280) = 0;
  *(v0 + 288) = 0xE000000000000000;
  *(v0 + 296) = v0 + 264;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076D08, &unk_1E65F7FA0);
  sub_1E65E69B8();
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  *(v0 + 528) = v3;
  *(v0 + 536) = v4;
  sub_1E6226C8C(v2, v1, type metadata accessor for RouteDestination);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 440);
  v6 = *(v0 + 392);
  v8 = *(v0 + 328);
  v7 = *(v0 + 336);
  v9 = sub_1E65E3B68();
  *(v0 + 544) = __swift_project_value_buffer(v9, qword_1EE2EA2A0);
  sub_1E6226C8C(v8, v5, type metadata accessor for RouteDestination);
  sub_1E6226C8C(v7, v6, type metadata accessor for RouteDetourResolver);

  v10 = sub_1E65E3B48();
  v11 = sub_1E65E6338();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 440);
  if (v12)
  {
    v14 = *(v0 + 432);
    v15 = *(v0 + 392);
    v51 = *(v0 + 368);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v54[0] = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_1E5DFD4B0(v3, v4, v54);
    *(v16 + 12) = 2082;
    sub_1E6226C8C(v13, v14, type metadata accessor for RouteDestination);
    v18 = sub_1E65E5CE8();
    v20 = v19;
    sub_1E6226D58(v13, type metadata accessor for RouteDestination);
    v21 = sub_1E5DFD4B0(v18, v20, v54);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2048;
    v22 = *(*(v15 + *(v51 + 24)) + 16);
    sub_1E6226D58(v15, type metadata accessor for RouteDetourResolver);
    *(v16 + 24) = v22;
    _os_log_impl(&dword_1E5DE9000, v10, v11, "%s Begin resolving detour for %{public}s using %ld detours", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v17, -1, -1);
    MEMORY[0x1E694F1C0](v16, -1, -1);
  }

  else
  {
    sub_1E6226D58(*(v0 + 392), type metadata accessor for RouteDetourResolver);

    sub_1E6226D58(v13, type metadata accessor for RouteDestination);
  }

  v23 = *(v0 + 472);
  v24 = *(v23 + 16);
  *(v0 + 552) = v24;
  if (v24)
  {
    *(v0 + 560) = 0;
    if (!*(v23 + 16))
    {
      __break(1u);
    }

    sub_1E5DF650C(v23 + 32, v0 + 16);
    sub_1E65E6158();
    v53 = *(v0 + 520);
    ObjectType = swift_getObjectType();
    v49 = (*(v53 + 32) + **(v53 + 32));
    v40 = swift_task_alloc();
    *(v0 + 568) = v40;
    *v40 = v0;
    v40[1] = sub_1E62250CC;
    v41 = *(v0 + 520);

    return v49(0, ObjectType, v41);
  }

  else
  {
    sub_1E6226C8C(*(v0 + 336), *(v0 + 384), type metadata accessor for RouteDetourResolver);

    v25 = sub_1E65E3B48();
    v26 = sub_1E65E6338();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 536);
      v28 = *(v0 + 528);
      v29 = *(v0 + 448);
      v30 = *(v0 + 432);
      v31 = *(v0 + 384);
      v48 = *(v0 + 368);
      v52 = *(v0 + 552);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v54[0] = v33;
      *v32 = 136315906;
      v34 = sub_1E5DFD4B0(v28, v27, v54);

      *(v32 + 4) = v34;
      *(v32 + 12) = 2082;
      swift_beginAccess();
      sub_1E6226C8C(v29, v30, type metadata accessor for RouteDestination);
      v35 = sub_1E65E5CE8();
      v37 = sub_1E5DFD4B0(v35, v36, v54);

      *(v32 + 14) = v37;
      *(v32 + 22) = 2048;
      *(v32 + 24) = v52;
      *(v32 + 32) = 2048;
      v38 = *(*(v31 + *(v48 + 24)) + 16);
      sub_1E6226D58(v31, type metadata accessor for RouteDetourResolver);
      *(v32 + 34) = v38;
      _os_log_impl(&dword_1E5DE9000, v25, v26, "%s Resolved detour to %{public}s using %ld/%ld detours", v32, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v33, -1, -1);
      MEMORY[0x1E694F1C0](v32, -1, -1);
    }

    else
    {
      sub_1E6226D58(*(v0 + 384), type metadata accessor for RouteDetourResolver);
    }

    v50 = (*(*(v0 + 488) + 24) + **(*(v0 + 488) + 24));
    v43 = swift_task_alloc();
    *(v0 + 592) = v43;
    *v43 = v0;
    v43[1] = sub_1E62261E4;
    v44 = *(v0 + 520);
    v45 = *(v0 + 512);
    v47 = *(v0 + 488);
    v46 = *(v0 + 496);

    return v50(v45, v44, 1, v46, v47);
  }
}

uint64_t sub_1E62250CC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E62251F4, 0, 0);
}

uint64_t sub_1E62251F4()
{
  v31 = v0;
  v30[1] = *MEMORY[0x1E69E9840];
  v1 = v0[53];
  v2 = v0[41];
  sub_1E5DF650C((v0 + 2), (v0 + 7));
  sub_1E6226C8C(v2, v1, type metadata accessor for RouteDestination);

  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6338();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[67];
    v6 = v0[66];
    v7 = v0[53];
    v8 = v0[54];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_1E5DFD4B0(v6, v5, v30);
    *(v9 + 12) = 2082;
    sub_1E5DF650C((v0 + 7), (v0 + 22));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076D10, &unk_1E65F7FB0);
    v11 = sub_1E65E5CE8();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    v14 = sub_1E5DFD4B0(v11, v13, v30);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2082;
    sub_1E6226C8C(v7, v8, type metadata accessor for RouteDestination);
    v15 = sub_1E65E5CE8();
    v17 = v16;
    sub_1E6226D58(v7, type metadata accessor for RouteDestination);
    v18 = sub_1E5DFD4B0(v15, v17, v30);

    *(v9 + 24) = v18;
    _os_log_impl(&dword_1E5DE9000, v3, v4, "%s Handling detour %{public}s for %{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  else
  {
    v19 = v0[53];

    sub_1E6226D58(v19, type metadata accessor for RouteDestination);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  v20 = v0[5];
  v21 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v20);
  v29 = (*(v21 + 8) + **(v21 + 8));
  v22 = swift_task_alloc();
  v0[72] = v22;
  *v22 = v0;
  v22[1] = sub_1E622559C;
  v23 = v0[65];
  v24 = v0[64];
  v25 = v0[56];
  v26 = v0[52];
  v27 = v0[42];

  return v29(v26, v25, v27, v24, v23, v20, v21);
}

uint64_t sub_1E622559C()
{
  *(*v1 + 584) = v0;

  if (v0)
  {
    v2 = sub_1E622670C;
  }

  else
  {
    v2 = sub_1E62256DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E62256DC()
{
  v85 = v0;
  v84[1] = *MEMORY[0x1E69E9840];
  v1 = v0[51];
  v2 = v0[41];
  sub_1E6226CF4(v0[52], v0[56]);
  sub_1E5DF650C((v0 + 2), (v0 + 12));
  sub_1E6226C8C(v2, v1, type metadata accessor for RouteDestination);

  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6338();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[67];
    v6 = v0[66];
    v7 = v0[54];
    v8 = v0[51];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v84[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_1E5DFD4B0(v6, v5, v84);
    *(v9 + 12) = 2082;
    sub_1E5DF650C((v0 + 12), (v0 + 17));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076D10, &unk_1E65F7FB0);
    v11 = sub_1E65E5CE8();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1(v0 + 12);
    v14 = sub_1E5DFD4B0(v11, v13, v84);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2082;
    sub_1E6226C8C(v8, v7, type metadata accessor for RouteDestination);
    v15 = sub_1E65E5CE8();
    v17 = v16;
    sub_1E6226D58(v8, type metadata accessor for RouteDestination);
    v18 = sub_1E5DFD4B0(v15, v17, v84);

    *(v9 + 24) = v18;
    _os_log_impl(&dword_1E5DE9000, v3, v4, "%s Detour %{public}s resolved destination to %{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  else
  {
    v19 = v0[51];

    sub_1E6226D58(v19, type metadata accessor for RouteDestination);
    __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  }

  v20 = v0[69];
  v21 = v0[70] + 1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v21 == v20)
  {
    sub_1E6226C8C(v0[42], v0[48], type metadata accessor for RouteDetourResolver);

    v22 = sub_1E65E3B48();
    v23 = sub_1E65E6338();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = v0[67];
      v25 = v0[66];
      v26 = v0[56];
      v27 = v0[54];
      v28 = v0[48];
      v78 = v0[46];
      v81 = v0[69];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v84[0] = v30;
      *v29 = 136315906;
      v31 = sub_1E5DFD4B0(v25, v24, v84);

      *(v29 + 4) = v31;
      *(v29 + 12) = 2082;
      swift_beginAccess();
      sub_1E6226C8C(v26, v27, type metadata accessor for RouteDestination);
      v32 = sub_1E65E5CE8();
      v34 = sub_1E5DFD4B0(v32, v33, v84);

      *(v29 + 14) = v34;
      *(v29 + 22) = 2048;
      *(v29 + 24) = v81;
      *(v29 + 32) = 2048;
      v35 = *(*(v28 + *(v78 + 24)) + 16);
      sub_1E6226D58(v28, type metadata accessor for RouteDetourResolver);
      *(v29 + 34) = v35;
      _os_log_impl(&dword_1E5DE9000, v22, v23, "%s Resolved detour to %{public}s using %ld/%ld detours", v29, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v30, -1, -1);
      MEMORY[0x1E694F1C0](v29, -1, -1);
    }

    else
    {
      sub_1E6226D58(v0[48], type metadata accessor for RouteDetourResolver);
    }

    v79 = (*(v0[61] + 24) + **(v0[61] + 24));
    v55 = swift_task_alloc();
    v0[74] = v55;
    *v55 = v0;
    v55[1] = sub_1E62261E4;
    v56 = v0[65];
    v58 = v0[61];
    v57 = v0[62];
    v59 = v0[64];
    v60 = 1;
    goto LABEL_24;
  }

  v36 = v0[73];
  v37 = v0[70] + 1;
  v0[70] = v37;
  v38 = v0[59];
  if (v37 >= *(v38 + 16))
  {
    __break(1u);
  }

  sub_1E5DF650C(v38 + 40 * v37 + 32, (v0 + 2));
  sub_1E65E6158();
  if (v36)
  {
    v0[75] = v36;
    v0[38] = v36;
    v39 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v40 = swift_dynamicCast();
    if (v40)
    {
      v41 = v0[47];
      v42 = v0[42];
      (*(v0[44] + 8))(v0[45], v0[43]);
      sub_1E6226C8C(v42, v41, type metadata accessor for RouteDetourResolver);

      v43 = sub_1E65E3B48();
      v44 = sub_1E65E6338();

      v45 = os_log_type_enabled(v43, v44);
      v46 = v0[67];
      if (v45)
      {
        v47 = v0[66];
        v82 = v40;
        v48 = v0[46];
        v49 = v0[47];
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v84[0] = v51;
        *v50 = 136315650;
        v52 = sub_1E5DFD4B0(v47, v46, v84);

        *(v50 + 4) = v52;
        *(v50 + 12) = 2048;
        *(v50 + 14) = v37;
        *(v50 + 22) = 2048;
        v53 = *(*(v49 + *(v48 + 24)) + 16);
        sub_1E6226D58(v49, type metadata accessor for RouteDetourResolver);
        *(v50 + 24) = v53;
        v40 = v82;
        _os_log_impl(&dword_1E5DE9000, v43, v44, "%s Cancelled detour resolution after %ld/%ld detours", v50, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x1E694F1C0](v51, -1, -1);
        v54 = v50;
LABEL_19:
        MEMORY[0x1E694F1C0](v54, -1, -1);

LABEL_23:
        v79 = (*(v0[61] + 24) + **(v0[61] + 24));
        v77 = swift_task_alloc();
        v0[76] = v77;
        *v77 = v0;
        v77[1] = sub_1E6226488;
        v56 = v0[65];
        v58 = v0[61];
        v57 = v0[62];
        v60 = v40 ^ 1u;
        v59 = v0[64];
LABEL_24:

        return v79(v59, v56, v60, v57, v58);
      }

      sub_1E6226D58(v0[47], type metadata accessor for RouteDetourResolver);
    }

    else
    {

      v65 = v36;
      v43 = sub_1E65E3B48();
      v66 = sub_1E65E6328();

      v67 = os_log_type_enabled(v43, v66);
      v68 = v0[67];
      if (v67)
      {
        v69 = v0[66];
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v84[0] = v71;
        *v70 = 136315394;
        v72 = sub_1E5DFD4B0(v69, v68, v84);

        *(v70 + 4) = v72;
        *(v70 + 12) = 2082;
        v0[39] = v36;
        v73 = v36;
        v74 = sub_1E65E5CE8();
        v76 = sub_1E5DFD4B0(v74, v75, v84);

        *(v70 + 14) = v76;
        _os_log_impl(&dword_1E5DE9000, v43, v66, "%s Detour resolution throwing %{public}s", v70, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E694F1C0](v71, -1, -1);
        v54 = v70;
        goto LABEL_19;
      }
    }

    goto LABEL_23;
  }

  v83 = v0[65];
  ObjectType = swift_getObjectType();
  v80 = (*(v83 + 32) + **(v83 + 32));
  v62 = swift_task_alloc();
  v0[71] = v62;
  *v62 = v0;
  v62[1] = sub_1E62250CC;
  v63 = v0[65];

  return v80(0, ObjectType, v63);
}

uint64_t sub_1E62261E4()
{

  return MEMORY[0x1EEE6DFA0](sub_1E622630C, 0, 0);
}

uint64_t sub_1E622630C()
{
  v1 = v0[56];
  v2 = v0[40];
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_1E6226C8C(v1, v2, type metadata accessor for RouteDestination);
  sub_1E6226D58(v1, type metadata accessor for RouteDestination);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6226488()
{

  return MEMORY[0x1EEE6DFA0](sub_1E62265B0, 0, 0);
}

uint64_t sub_1E62265B0(uint64_t a1)
{
  v2 = v1[56];
  swift_willThrow();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  sub_1E6226D58(v2, type metadata accessor for RouteDestination);

  v3 = v1[1];

  return v3();
}

uint64_t sub_1E622670C()
{
  v40 = v0;
  v39[1] = *MEMORY[0x1E69E9840];
  v1 = v0[73];
  v2 = v0[70];
  v0[75] = v1;
  v0[38] = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  v4 = swift_dynamicCast();
  if (v4)
  {
    v5 = v0[47];
    v6 = v0[42];
    (*(v0[44] + 8))(v0[45], v0[43]);
    sub_1E6226C8C(v6, v5, type metadata accessor for RouteDetourResolver);

    v7 = sub_1E65E3B48();
    v8 = sub_1E65E6338();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[67];
    if (v9)
    {
      v38 = v2 + 1;
      v11 = v0[66];
      v13 = v0[46];
      v12 = v0[47];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v39[0] = v15;
      *v14 = 136315650;
      v16 = sub_1E5DFD4B0(v11, v10, v39);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2048;
      *(v14 + 14) = v38;
      *(v14 + 22) = 2048;
      v17 = *(*(v12 + *(v13 + 24)) + 16);
      sub_1E6226D58(v12, type metadata accessor for RouteDetourResolver);
      *(v14 + 24) = v17;
      _os_log_impl(&dword_1E5DE9000, v7, v8, "%s Cancelled detour resolution after %ld/%ld detours", v14, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1E694F1C0](v15, -1, -1);
      v18 = v14;
LABEL_6:
      MEMORY[0x1E694F1C0](v18, -1, -1);

      goto LABEL_10;
    }

    sub_1E6226D58(v0[47], type metadata accessor for RouteDetourResolver);
  }

  else
  {

    v19 = v1;
    v7 = sub_1E65E3B48();
    v20 = sub_1E65E6328();

    v21 = os_log_type_enabled(v7, v20);
    v22 = v0[67];
    if (v21)
    {
      v23 = v0[66];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v39[0] = v25;
      *v24 = 136315394;
      v26 = sub_1E5DFD4B0(v23, v22, v39);

      *(v24 + 4) = v26;
      *(v24 + 12) = 2082;
      v0[39] = v1;
      v27 = v1;
      v28 = sub_1E65E5CE8();
      v30 = sub_1E5DFD4B0(v28, v29, v39);

      *(v24 + 14) = v30;
      _os_log_impl(&dword_1E5DE9000, v7, v20, "%s Detour resolution throwing %{public}s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v25, -1, -1);
      v18 = v24;
      goto LABEL_6;
    }
  }

LABEL_10:
  v37 = (*(v0[61] + 24) + **(v0[61] + 24));
  v31 = swift_task_alloc();
  v0[76] = v31;
  *v31 = v0;
  v31[1] = sub_1E6226488;
  v32 = v0[65];
  v33 = v0[64];
  v35 = v0[61];
  v34 = v0[62];

  return v37(v33, v32, v4 ^ 1u, v34, v35);
}

uint64_t sub_1E6226B8C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20) + 8);
  ObjectType = swift_getObjectType();
  return (*(v2 + 8))(ObjectType, v2);
}

uint64_t sub_1E6226BE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E6223ED8(a1, a2);
}

uint64_t sub_1E6226C8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6226CF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteDestination(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6226D58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6226DB8()
{
  type metadata accessor for RouteSource(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E6226DFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = a5;
  *(v6 + 112) = a6;
  *(v6 + 41) = a4;
  *(v6 + 88) = a2;
  *(v6 + 96) = a3;
  *(v6 + 80) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  *(v6 + 120) = swift_task_alloc();
  v7 = sub_1E65D74E8();
  *(v6 + 128) = v7;
  *(v6 + 136) = *(v7 - 8);
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6226F0C, 0, 0);
}

uint64_t sub_1E6226F0C()
{
  v63 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 41);
  v5 = *(v0 + 96);
  v59 = *(v0 + 80);
  v60 = v5;
  v61 = v4;
  v62 = xmmword_1E65EAE00;
  URLAction.makeURL(root:)(&v62, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E62282E0(*(v0 + 120));
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = *(v0 + 80);
    v9 = *(v0 + 41);
    v10 = sub_1E65E3B68();
    __swift_project_value_buffer(v10, qword_1EE2EA2A0);
    sub_1E6228348(v8, v7, v6, v9);
    v11 = sub_1E65E3B48();
    v12 = sub_1E65E6328();
    sub_1E5FFF204(v8, v7, v6, v9);
    if (os_log_type_enabled(v11, v12))
    {
      v14 = *(v0 + 88);
      v13 = *(v0 + 96);
      v15 = *(v0 + 80);
      v16 = *(v0 + 41);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v59 = v18;
      *v17 = 136446210;
      *(v0 + 16) = v15;
      *(v0 + 24) = v14;
      *(v0 + 32) = v13;
      *(v0 + 40) = v16;
      sub_1E6228348(v15, v14, v13, v16);
      v19 = sub_1E65E5CE8();
      v21 = sub_1E5DFD4B0(v19, v20, &v59);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1E5DE9000, v11, v12, "Unable to produce a URL for %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1E694F1C0](v18, -1, -1);
      MEMORY[0x1E694F1C0](v17, -1, -1);
    }

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    (*(*(v0 + 136) + 32))(*(v0 + 152), *(v0 + 120), *(v0 + 128));
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 144);
    v25 = *(v0 + 152);
    v26 = *(v0 + 128);
    v27 = *(v0 + 136);
    v29 = *(v0 + 88);
    v28 = *(v0 + 96);
    v30 = *(v0 + 80);
    v31 = *(v0 + 41);
    v32 = sub_1E65E3B68();
    __swift_project_value_buffer(v32, qword_1EE2EA2A0);
    (*(v27 + 16))(v24, v25, v26);
    sub_1E6228348(v30, v29, v28, v31);
    v33 = sub_1E65E3B48();
    v34 = sub_1E65E6338();
    sub_1E5FFF204(v30, v29, v28, v31);
    v35 = os_log_type_enabled(v33, v34);
    v37 = *(v0 + 136);
    v36 = *(v0 + 144);
    v38 = *(v0 + 128);
    if (v35)
    {
      v58 = v34;
      v40 = *(v0 + 88);
      v39 = *(v0 + 96);
      v41 = *(v0 + 80);
      v42 = *(v0 + 41);
      v43 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v59 = v57;
      *v43 = 136446466;
      *(v0 + 48) = v41;
      *(v0 + 56) = v40;
      *(v0 + 64) = v39;
      *(v0 + 72) = v42;
      sub_1E6228348(v41, v40, v39, v42);
      v44 = sub_1E65E5CE8();
      v46 = sub_1E5DFD4B0(v44, v45, &v59);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_1E5FFE9E4();
      v47 = sub_1E65E6BC8();
      v49 = v48;
      v50 = *(v37 + 8);
      v50(v36, v38);
      v51 = sub_1E5DFD4B0(v47, v49, &v59);

      *(v43 + 14) = v51;
      _os_log_impl(&dword_1E5DE9000, v33, v58, "Resolved %{public}s to %{public}s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v57, -1, -1);
      MEMORY[0x1E694F1C0](v43, -1, -1);
    }

    else
    {

      v50 = *(v37 + 8);
      v50(v36, v38);
    }

    *(v0 + 160) = v50;
    v52 = swift_task_alloc();
    *(v0 + 168) = v52;
    *v52 = v0;
    v52[1] = sub_1E6227460;
    v53 = *(v0 + 152);
    v54 = *(v0 + 104);
    v55 = *(v0 + 112);
    v56 = MEMORY[0x1E69E7CD0];

    return sub_1E5FFC850(v53, v54, v56, v55);
  }
}

uint64_t sub_1E6227460()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1E6227604;
  }

  else
  {
    v2 = sub_1E6227574;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6227574()
{
  (*(v0 + 160))(*(v0 + 152), *(v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6227604()
{
  (*(v0 + 160))(*(v0 + 152), *(v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E62276A0()
{
  result = sub_1E65E5C48();
  qword_1ED096330 = result;
  return result;
}

uint64_t sub_1E62276D8()
{
  result = sub_1E65E5C48();
  qword_1ED096338 = result;
  return result;
}

uint64_t sub_1E6227710()
{
  result = sub_1E65E5C48();
  qword_1ED096340 = result;
  return result;
}

uint64_t sub_1E6227748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_1E65E60A8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1E65E6058();

  v12 = sub_1E65E6048();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a1;
  v13[7] = a2;
  sub_1E64B80F8(0, 0, v10, &unk_1E65F8008, v13);
}

uint64_t sub_1E622788C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v7[4] = sub_1E65E6058();
  v7[5] = sub_1E65E6048();
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v7[6] = v9;
  *v9 = v7;
  v9[1] = sub_1E62279A0;

  return v11();
}

uint64_t sub_1E62279A0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  v5 = sub_1E65E5FC8();
  if (v1)
  {
    v6 = sub_1E6227CE4;
  }

  else
  {
    v6 = sub_1E6227B00;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

id sub_1E6227B00()
{
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E65EA660;
  v3 = [v1 ams_fullName];
  if (v3)
  {
    v4 = v3;
    sub_1E65E5C78();
  }

  else
  {
    result = [*(v0 + 56) userFullName];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;

    sub_1E65E5C78();
  }

  v6 = *(v0 + 56);

  v7 = [v6 username];
  if (v7)
  {
    v8 = v7;
    sub_1E65E5C78();
  }

  v9 = *(v0 + 56);
  v10 = *(v0 + 16);
  sub_1E613FAAC();
  *(v2 + 32) = sub_1E65E65C8();
  v10(v2);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1E6227CE4()
{
  v1 = v0[8];
  v2 = v0[2];

  v2(MEMORY[0x1E69E7CC0]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6227D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for RouteSource(0);
  v4[3] = swift_task_alloc();
  sub_1E65E6058();
  v4[4] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E6227E50, v6, v5);
}

uint64_t sub_1E6227E50()
{
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  v2 = *v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1E6067BDC;
  v4 = *(v0 + 24);

  return sub_1E6226DFC(2, 0, 0, 4, v4, v2);
}

uint64_t sub_1E6227F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_1E65E60A8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1E5DF650C(a2, v15);
  sub_1E65E6058();
  v10 = sub_1E65E6048();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  sub_1E5DF599C(v15, v11 + 32);
  sub_1E6059EAC(0, 0, v8, a4, v11);
}

uint64_t sub_1E6228084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for RouteSource(0);
  v4[3] = swift_task_alloc();
  sub_1E65E6058();
  v4[4] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E6228148, v6, v5);
}

uint64_t sub_1E6228148()
{
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  v2 = *v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1E6067F04;
  v4 = *(v0 + 24);

  return sub_1E6226DFC(5, 0, 0, 4, v4, v2);
}

uint64_t sub_1E6228230(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6228084(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E62282E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6228348(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return result;
    }
  }

  return sub_1E5E05374(result, a2);
}

uint64_t sub_1E6228378(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6227D8C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E6228428(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFA78C;

  return sub_1E622788C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1E62284FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a1;
  v132 = a2;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A90, &unk_1E65FA720);
  v127 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v123 = &v110 - v3;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076D18, &qword_1E65F8028);
  v131 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v124 = &v110 - v4;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776A0, &qword_1E65F8030);
  v5 = MEMORY[0x1EEE9AC00](v130);
  v125 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v129 = &v110 - v7;
  v142 = sub_1E65DCA88();
  v141 = *(v142 - 8);
  v121 = *(v141 + 64);
  v8 = MEMORY[0x1EEE9AC00](v142);
  v120 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v140 = &v110 - v10;
  v11 = type metadata accessor for AppComposer(0);
  v12 = v11 - 8;
  v145 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v133 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v138 = &v110 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v139 = &v110 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v137 = &v110 - v20;
  v22 = v21;
  MEMORY[0x1EEE9AC00](v19);
  v147 = &v110 - v23;
  v143 = sub_1E65E63B8();
  v136 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v135 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1E65E6398();
  MEMORY[0x1EEE9AC00](v134);
  v119 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E65E4F68();
  MEMORY[0x1EEE9AC00](v26 - 8);
  v113 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for MetricService();
  v116 = v28;
  Description = v28[-1].Description;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v31;
  v118 = sub_1E65DD0A8();
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v33 = &v110 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v34 = *(v12 + 28);
  v35 = *(type metadata accessor for AppEnvironment(0) + 80);
  v144 = v2;
  Description[2](v31, v2 + v35 + v34, v28);
  v36 = *(v12 + 40);
  sub_1E65E5148();
  v112 = "18LocalizationBundle";
  v114 = *(v2 + v36);
  swift_unknownObjectRetain();
  v37 = sub_1E65E5138();
  v148 = v37;
  type metadata accessor for SearchMetricsMonitor(0);
  v146 = swift_allocObject();
  v111 = OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_queue;
  sub_1E61259CC();
  sub_1E65E4F58();
  *&v151 = MEMORY[0x1E69E7CC0];
  sub_1E622B878(&qword_1EE2D4610, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A450, &qword_1E65F8060);
  sub_1E5FED46C(&qword_1EE2D4820, &unk_1ED07A450, &qword_1E65F8060, MEMORY[0x1E69E6328]);
  sub_1E65E6738();
  (*(v136 + 104))(v135, *MEMORY[0x1E69E8090], v143);
  v38 = sub_1E65E63E8();
  v39 = v146;
  *(v146 + v111) = v38;
  (*(v117 + 32))(v39 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_currentState, v33, v118);
  v40 = MEMORY[0x1E69AB380];
  *(v39 + 16) = v37;
  *(v39 + 24) = v40;
  Description[4]((v39 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_metricService), v115, v116);
  *(v39 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_navigationTracker) = v114;
  v41 = v144;
  v42 = v147;
  sub_1E5E1DEAC(v144, v147);
  v43 = *(v145 + 80);
  v110 = v22;
  v136 = ((v43 + 16) & ~v43) + v22;
  v135 = ((v43 + 16) & ~v43);
  v143 = v43 | 7;
  v44 = swift_allocObject();
  sub_1E5E1FA80(v42, v44 + ((v43 + 16) & ~v43));
  v45 = v137;
  sub_1E5E1DEAC(v41, v137);
  v46 = ((v43 + 32) & ~v43) + v22;
  v118 = (v43 + 32) & ~v43;
  v117 = v46;
  v47 = swift_allocObject();
  v145 = v47;
  *(v47 + 16) = &unk_1E65F8070;
  *(v47 + 24) = v44;
  v116 = &unk_1E65F8070;
  sub_1E5E1FA80(v45, v47 + ((v43 + 32) & ~v43));
  *(v47 + v46) = 0;
  v48 = v47 + (v46 & 0xFFFFFFFFFFFFFFF8);
  *(v48 + 8) = sub_1E6172524;
  *(v48 + 16) = 0;
  v49 = (v47 + (((v46 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v50 = v148;
  *v49 = v148;
  v49[1] = MEMORY[0x1E69AB380];
  v51 = v41;
  v52 = v41;
  v53 = v139;
  sub_1E5E1DEAC(v51, v139);
  v54 = (v43 + 48) & ~v43;
  v55 = v54 + v110;
  v56 = swift_allocObject();
  v56[2] = &unk_1E65F8070;
  v56[3] = v44;
  v56[4] = v50;
  v57 = v50;
  v56[5] = MEMORY[0x1E69AB380];
  v58 = v56;
  sub_1E5E1FA80(v53, v56 + v54);
  v134 = v58;
  *(v58 + v55) = 0;
  v59 = v58 + (v55 & 0xFFFFFFFFFFFFFFF8);
  *(v59 + 1) = sub_1E6172524;
  *(v59 + 2) = 0;
  v60 = v138;
  sub_1E5E1DEAC(v52, v138);
  v61 = (v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  v63 = v116;
  *(v62 + 2) = v116;
  *(v62 + 3) = v44;
  *(v62 + 4) = v57;
  *(v62 + 5) = MEMORY[0x1E69AB380];
  v64 = v62;
  sub_1E5E1FA80(v60, &v62[v54]);
  v65 = &v64[v61];
  v119 = v64;
  *v65 = sub_1E6172524;
  *(v65 + 1) = 0;
  v65[16] = 0;
  v66 = v133;
  sub_1E5E1DEAC(v52, v133);
  v67 = swift_allocObject();
  *(v67 + 16) = v63;
  *(v67 + 24) = v44;
  v68 = v67;
  v138 = v67;
  sub_1E5E1FA80(v66, v67 + v118);
  *&v151 = v57;
  *(&v151 + 1) = MEMORY[0x1E69AB380];
  *&v152 = &unk_1E65EB918;
  *(&v152 + 1) = v145;
  *&v153 = &unk_1E65FA770;
  *(&v153 + 1) = v134;
  *&v154 = &unk_1E65EB920;
  *(&v154 + 1) = v64;
  *&v155 = &unk_1E65FA780;
  *(&v155 + 1) = v68;
  swift_retain_n();
  swift_retain_n();
  v69 = v122;
  v133 = sub_1E624E6AC(v122, &v151);
  v70 = v140;
  sub_1E63D53AC(v133, v140);
  v71 = v52;
  v72 = v147;
  sub_1E5E1DEAC(v71, v147);
  v73 = v141;
  v74 = v120;
  v75 = v70;
  v76 = v142;
  (*(v141 + 16))(v120, v75, v142);
  v77 = v136;
  v78 = (v136 + *(v73 + 80)) & ~*(v73 + 80);
  v79 = (v121 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v135;
  v121 = v80;
  sub_1E5E1FA80(v72, &v135[v80]);
  (*(v73 + 32))(v80 + v78, v74, v76);
  *(v80 + v79) = v146;
  v82 = v144;
  v83 = v137;
  sub_1E5E1DEAC(v144, v137);
  v84 = v69;
  sub_1E5DF650C(v69, &v150);
  v85 = (v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  v87 = v81;
  sub_1E5E1FA80(v83, &v81[v86]);
  sub_1E5DF599C(&v150, v86 + v85);
  v88 = (v86 + ((v85 + 47) & 0xFFFFFFFFFFFFFFF8));
  v89 = v154;
  v88[2] = v153;
  v88[3] = v89;
  v88[4] = v155;
  v90 = v152;
  *v88 = v151;
  v88[1] = v90;
  v91 = v139;
  sub_1E5E1DEAC(v82, v139);
  sub_1E5DF650C(v84, &v149);
  v92 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
  v93 = swift_allocObject();
  sub_1E5E1FA80(v91, &v87[v93]);
  *(v93 + v85) = v133;
  sub_1E5DF599C(&v149, v93 + v92);
  v94 = (v93 + ((v92 + 47) & 0xFFFFFFFFFFFFFFF8));
  v95 = v154;
  v94[2] = v153;
  v94[3] = v95;
  v94[4] = v155;
  v96 = v152;
  *v94 = v151;
  v94[1] = v96;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076038, &qword_1E65F4908);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  sub_1E5FED46C(&qword_1ED076080, &qword_1ED076038, &qword_1E65F4908, MEMORY[0x1E699EE90]);
  sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970, MEMORY[0x1E699D728]);
  v97 = v123;
  sub_1E65DD298();
  v98 = *(v146 + 16);
  v99 = *(v146 + 24);
  v100 = sub_1E5FED46C(&qword_1ED076D20, &unk_1ED077A90, &unk_1E65FA720, MEMORY[0x1E699EF80]);
  v101 = v124;
  v102 = v98;
  v103 = v126;
  sub_1E5E1EC14(v102, v99, v126, v100);
  (*(v127 + 8))(v97, v103);
  v104 = v147;
  sub_1E5E1DEAC(v144, v147);
  v105 = swift_allocObject();
  sub_1E5E1FA80(v104, &v135[v105]);
  *&v150 = v103;
  *(&v150 + 1) = v100;
  swift_getOpaqueTypeConformance2();
  v106 = v125;
  v107 = v128;
  sub_1E6259D5C(sub_1E5FF0278, v105, v128);

  (*(v131 + 8))(v101, v107);
  (*(v141 + 8))(v140, v142);
  sub_1E622B4E0();
  v108 = v129;
  sub_1E5FEE4C8();
  sub_1E5ECC4E0(v106);
  sub_1E5FEE4C8();
  return sub_1E5ECC4E0(v108);
}

uint64_t sub_1E6229674(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65DD0A8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6229734, 0, 0);
}

uint64_t sub_1E6229734()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E6013E58(v4);
  (*(v2 + 8))(v1, v3);
  v5 = sub_1E65D7A38();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E622983C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6229674(a1, v1 + v5);
}

uint64_t sub_1E6229918(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v23 = a2;
  v4 = type metadata accessor for AppComposer(0);
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076D30, &qword_1E65F8078);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = sub_1E65DCA88();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65DD2B8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  (*(v10 + 16))(v12, v23, v9);
  sub_1E65DD2A8();
  sub_1E5E1DEAC(a1, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v18 = swift_allocObject();
  sub_1E5E1FA80(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  type metadata accessor for AppFeature(0);
  sub_1E622B878(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E622B878(&qword_1ED076D38, MEMORY[0x1E699EF90], MEMORY[0x1E699EF88]);
  sub_1E65E4DE8();
  v19 = v26;

  sub_1E65E4CC8();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1E622B8C0;
  *(v20 + 24) = v19;

  v21 = sub_1E65E4F08();

  (*(v27 + 8))(v8, v28);
  (*(v14 + 8))(v16, v13);
  return v21;
}

uint64_t sub_1E6229D34()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65DCA88() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E6229918((v0 + v2), v0 + v5, v6);
}

uint64_t sub_1E6229E2C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v14[1] = a1;
  v16 = a2;
  v15 = sub_1E65DD0F8();
  v2 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65DD0A8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128);
  type metadata accessor for AppComposer(0);
  sub_1E65DAE08();
  sub_1E65DD068();
  sub_1E637A69C();
  sub_1E65DCFE8();
  (*(v2 + 8))(v4, v15);
  v12 = *(v6 + 8);
  v12(v9, v5);
  sub_1E63969B4();
  sub_1E65DD058();
  return (v12)(v11, v5);
}

uint64_t sub_1E622A060(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076038, &qword_1E65F4908);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  sub_1E619CA14(a2, a3, v9);
  sub_1E5FED46C(&qword_1ED076080, &qword_1ED076038, &qword_1E65F4908, MEMORY[0x1E699EE90]);
  sub_1E5FEE4C8();
  v12 = *(v6 + 8);
  v12(v9, v5);
  sub_1E5FEE4C8();
  return (v12)(v11, v5);
}

uint64_t sub_1E622A1F0()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E622A060(v0 + v2, v0 + v3, (v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E622A298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v100 = a3;
  v104 = a2;
  v97 = a1;
  v94 = a5;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074408, &qword_1E65F0B70);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v107 = v74 - v8;
  v9 = sub_1E65D76F8();
  v10 = *(v9 - 8);
  v105 = v9;
  v106 = v10;
  v83 = *(v10 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v103 = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v109 = v74 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v108 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v110 = v74 - v17;
  v18 = type metadata accessor for AppComposer(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v74 - v23;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  v93 = *(v92 - 8);
  v25 = MEMORY[0x1EEE9AC00](v92);
  v88 = v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v89 = v74 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v90 = v74 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v91 = v74 - v31;
  sub_1E5E1DEAC(a1, v24);
  sub_1E5DF650C(a3, &v112);
  v80 = *a4;
  v81 = *(a4 + 24);
  v82 = *(a4 + 40);
  v32 = *(a4 + 72);
  v101 = *(a4 + 56);
  v102 = v32;
  v33 = *(v19 + 80);
  v34 = (v33 + 16) & ~v33;
  v98 = v34 + v20;
  v95 = v33 | 7;
  v35 = (v34 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v99 = v35;
  v96 = (v35 + 47) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v87 = v36;
  sub_1E5E1FA80(v24, v36 + v34);
  sub_1E5DF599C(&v112, v36 + v35);
  v37 = (v36 + ((v35 + 47) & 0xFFFFFFFFFFFFFFF8));
  v38 = *(a4 + 48);
  v37[2] = *(a4 + 32);
  v37[3] = v38;
  v37[4] = *(a4 + 64);
  v39 = *(a4 + 16);
  *v37 = *a4;
  v37[1] = v39;
  v40 = sub_1E65E3E08();
  (*(*(v40 - 8) + 56))(v110, 1, 1, v40);
  swift_unknownObjectRetain();

  v41 = v109;
  sub_1E65D76E8();
  (*(v85 + 104))(v107, *MEMORY[0x1E699D720], v86);
  v42 = v97;
  v75 = v22;
  sub_1E5E1DEAC(v97, v22);
  v86 = swift_allocObject();
  v43 = v34;
  sub_1E5E1FA80(v22, v86 + v34);
  sub_1E5E1DEAC(v42, v22);
  v85 = swift_allocObject();
  sub_1E5E1FA80(v22, v85 + v34);
  sub_1E5E1DEAC(v42, v22);
  v84 = swift_allocObject();
  v76 = v34;
  sub_1E5E1FA80(v22, v84 + v34);
  sub_1E5E1DEAC(v42, v22);
  sub_1E5DF650C(v100, &v111);
  v44 = v106;
  v45 = *(v106 + 16);
  v78 = v106 + 16;
  v79 = v45;
  v46 = v103;
  v47 = v105;
  v45(v103, v41, v105);
  v48 = v96;
  v49 = (v96 + 87) & 0xFFFFFFFFFFFFFFF8;
  v77 = v49 + 8;
  v50 = (v49 + 8 + *(v44 + 80)) & ~*(v44 + 80);
  v51 = swift_allocObject();
  v52 = v75;
  sub_1E5E1FA80(v75, v51 + v43);
  sub_1E5DF599C(&v111, v51 + v99);
  v83 = v51;
  v53 = (v51 + v48);
  v54 = *(a4 + 48);
  v53[2] = *(a4 + 32);
  v53[3] = v54;
  v53[4] = *(a4 + 64);
  v55 = *(a4 + 16);
  *v53 = *a4;
  v53[1] = v55;
  v56 = v104;
  *(v51 + v49) = v104;
  (*(v44 + 32))(v51 + v50, v46, v47);
  v57 = v97;
  sub_1E5E1DEAC(v97, v52);
  sub_1E5DF650C(v100, &v111);
  v58 = swift_allocObject();
  v59 = v76;
  sub_1E5E1FA80(v52, v58 + v76);
  sub_1E5DF599C(&v111, v58 + v99);
  v60 = (v58 + v96);
  v100 = v58;
  v61 = *(a4 + 48);
  v60[2] = *(a4 + 32);
  v60[3] = v61;
  v60[4] = *(a4 + 64);
  v62 = *(a4 + 16);
  *v60 = *a4;
  v60[1] = v62;
  *(v58 + v49) = v56;
  sub_1E5E1DEAC(v57, v52);
  v99 = swift_allocObject();
  sub_1E5E1FA80(v52, v99 + v59);
  sub_1E622B6F4(v110, v108);
  v79(v46, v109, v47);
  v98 = type metadata accessor for ActionButtonDescriptor(0);
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  v101 = type metadata accessor for ArtworkDescriptor(0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074418, &qword_1E65F0B80);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074420, &qword_1E65F0B88);
  v82 = type metadata accessor for ContextMenu(0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074428, &qword_1E65F0B90);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
  v79 = type metadata accessor for ItemContext(0);
  v78 = type metadata accessor for ItemMetrics(0);
  v77 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074430, &qword_1E65F0B98);
  v75 = type metadata accessor for SectionMetrics(0);
  v74[8] = type metadata accessor for ViewDescriptor(0);
  v74[7] = sub_1E622B878(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  v74[6] = sub_1E60731B0();
  v74[5] = sub_1E622B878(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  v74[4] = sub_1E5FEB2FC();
  v74[3] = sub_1E60C08DC();
  v74[2] = sub_1E60C15C0();
  v74[1] = sub_1E622B878(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v65 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
  *&v111 = v64;
  *(&v111 + 1) = v65;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v111 = v63;
  *(&v111 + 1) = OpaqueTypeConformance2;
  v74[0] = swift_getOpaqueTypeConformance2();
  sub_1E60728B0();
  sub_1E622B878(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E622B878(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E622B878(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E622B878(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E622B878(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  sub_1E60C217C();
  sub_1E622B878(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E622B878(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  v67 = v88;
  sub_1E65DC198();
  (*(v106 + 8))(v109, v105);
  sub_1E622B764(v110);
  sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970, MEMORY[0x1E699D728]);
  v68 = v89;
  v69 = v92;
  sub_1E5FEE4C8();
  v70 = *(v93 + 8);
  v70(v67, v69);
  v71 = v90;
  sub_1E5FEE4C8();
  v70(v68, v69);
  v72 = v91;
  sub_1E5FEE4C8();
  v70(v71, v69);
  sub_1E5FEE4C8();
  return (v70)(v72, v69);
}

uint64_t sub_1E622B2AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);

  return sub_1E622A298(v1 + v4, v6, v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8), v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8), a1);
}

uint64_t sub_1E622B360(char *a1, uint64_t a2, char *a3, __int128 *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  sub_1E61E66C8(a1, a3, a4, v15 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v12 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
  v15[0] = v11;
  v15[1] = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1E69482C0](v10, v7, OpaqueTypeConformance2);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1E622B4E0()
{
  result = qword_1ED076D28;
  if (!qword_1ED076D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776A0, &qword_1E65F8030);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077A90, &unk_1E65FA720);
    sub_1E5FED46C(&qword_1ED076D20, &unk_1ED077A90, &unk_1E65FA720, MEMORY[0x1E699EF80]);
    swift_getOpaqueTypeConformance2();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076D28);
  }

  return result;
}

uint64_t sub_1E622B5DC(char *a1)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E622B360(a1, v1 + v4, (v1 + v5), (v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E622B6F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E622B764(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E622B7E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1E622B878(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E622B974@<X0>(void (*a1)(char *)@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v18 = a1;
  v7 = sub_1E65D9908();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v17 - v12;
  sub_1E622BFA8(v3, &v17 - v12);
  v14 = 1;
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    goto LABEL_4;
  }

  (*(v8 + 32))(v10, v13, v7);
  v18(v10);
  if (!v4)
  {
    (*(v8 + 8))(v10, v7);
    v14 = 0;
LABEL_4:
    v15 = a2(0);
    return (*(*(v15 - 8) + 56))(a3, v14, 1, v15);
  }

  result = (*(v8 + 8))(v10, v7);
  __break(1u);
  return result;
}

uint64_t sub_1E622BBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unsigned int *a3@<X4>, char *a4@<X8>)
{
  v43 = a3;
  v39 = a2;
  v42 = a1;
  v38 = sub_1E65D72D8();
  v5 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1E65D8C68();
  v8 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65D8078();
  v40 = v12;
  v41 = v11;
  v13 = sub_1E65D80C8();
  v15 = v14;
  v44 = v13;
  v45 = v14;
  v17 = v16 & 1;
  v46 = v16 & 1;
  v47 = 6;
  sub_1E6018A94();
  sub_1E6018AE8();
  v18 = sub_1E65D7FE8();
  sub_1E5FEE4CC(v13, v15, v17);
  v19 = MEMORY[0x1E69CBA28];
  if ((v18 & 1) == 0)
  {
    v19 = MEMORY[0x1E69CBAA0];
  }

  v20 = v37;
  (*(v8 + 104))(v10, *v19, v37);
  (*(v5 + 16))(v7, v39, v38);
  v21 = sub_1E65E5D58();
  v23 = v22;
  v24 = type metadata accessor for ItemMetrics(0);
  v25 = v24[7];
  v26 = sub_1E65D9908();
  (*(*(v26 - 8) + 16))(&a4[v25], v42, v26);
  v27 = v24[8];
  v28 = *MEMORY[0x1E69CBCD8];
  v29 = sub_1E65D8F28();
  (*(*(v29 - 8) + 104))(&a4[v27], v28, v29);
  v30 = v24[10];
  v31 = *v43;
  v32 = sub_1E65D9F88();
  (*(*(v32 - 8) + 104))(&a4[v30], v31, v32);
  v33 = v40;
  *a4 = v41;
  *(a4 + 1) = v33;
  result = (*(v8 + 32))(&a4[v24[5]], v10, v20);
  v35 = &a4[v24[6]];
  *v35 = v21;
  *(v35 + 1) = v23;
  return result;
}

uint64_t sub_1E622BF18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E622BFA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E622C058@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(char *)@<X3>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - v12;
  sub_1E65D81D8();
  if (v14)
  {

    v15 = sub_1E65D80C8();
    v17 = v16;
    v19 = v18;
    sub_1E60E5944(v15, v16, v18 & 1, v13);
    v20 = sub_1E5FEE4CC(v15, v17, v19 & 1);
    MEMORY[0x1EEE9AC00](v20);
    *(&v30 - 2) = v5;
    *(&v30 - 1) = a1;
    v21 = a5;
    v22 = a4;
  }

  else
  {
    v23 = sub_1E65D80C8();
    v25 = v24;
    v27 = v26;
    sub_1E60E5944(v23, v24, v26 & 1, v13);
    v28 = sub_1E5FEE4CC(v23, v25, v27 & 1);
    MEMORY[0x1EEE9AC00](v28);
    *(&v30 - 2) = v5;
    *(&v30 - 1) = a1;
    v21 = a5;
    v22 = a2;
  }

  sub_1E622B974(v22, a3, v21);
  return sub_1E622BF18(v13);
}

uint64_t sub_1E622C1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unsigned int *a3@<X4>, uint64_t a4@<X8>)
{
  v47 = a3;
  v48 = a4;
  v42 = a2;
  v43 = a1;
  v4 = sub_1E65D9F88();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65D8F28();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v37 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1E65D72D8();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65D8C68();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65D8078();
  v38 = v16;
  v39 = v15;
  v17 = sub_1E65D80C8();
  v19 = v18;
  v49 = v17;
  v50 = v18;
  v21 = v20 & 1;
  v51 = v20 & 1;
  v52 = 6;
  sub_1E6018A94();
  sub_1E6018AE8();
  v22 = sub_1E65D7FE8();
  sub_1E5FEE4CC(v17, v19, v21);
  v23 = MEMORY[0x1E69CBA28];
  if ((v22 & 1) == 0)
  {
    v23 = MEMORY[0x1E69CBAA0];
  }

  (*(v12 + 104))(v14, *v23, v11);
  v24 = sub_1E65D8C58();
  v35[2] = v25;
  v35[3] = v24;
  (*(v12 + 8))(v14, v11);
  (*(v8 + 16))(v10, v42, v36);
  v42 = sub_1E65E5D58();
  v36 = v26;
  v43 = sub_1E65D98F8();
  v35[1] = v27;
  v29 = v40;
  v28 = v41;
  v30 = v37;
  (*(v40 + 104))(v37, *MEMORY[0x1E69CBCD8], v41);
  sub_1E65D8F18();
  (*(v29 + 8))(v30, v28);
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  v31 = v46;
  v33 = v44;
  v32 = v45;
  (*(v45 + 104))(v44, *v47, v46);
  sub_1E65D9F78();
  (*(v32 + 8))(v33, v31);
  return sub_1E65E0328();
}

uint64_t Platform.transform()(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {

    return sub_1E65DBBB8();
  }

  if (a1 == 3)
  {

    return sub_1E65DBBB8();
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t Platform.transformed(with:sizeClass:)@<X0>(unsigned __int8 a1@<W0>, char a2@<W1>, unsigned __int8 a3@<W2>, uint64_t *a4@<X8>)
{
  if (a3 > 1u)
  {
    if (a3 != 3)
    {
      result = sub_1E65E69D8();
      __break(1u);
      return result;
    }

    *a4 = 4;
    a4[1] = 0x4044000000000000;
    goto LABEL_13;
  }

  if (!a3)
  {
    if (a1 > 6u)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    *a4 = v5;
    if (a2 == 1)
    {
      v7 = 0x4028000000000000;
    }

    else
    {
      v7 = 0x4024000000000000;
    }

    a4[1] = v7;
LABEL_13:
    v6 = MEMORY[0x1E699D840];
    goto LABEL_14;
  }

  *a4 = 5;
  v6 = MEMORY[0x1E699D848];
LABEL_14:
  v8 = *v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
  v10 = *(*(v9 - 8) + 104);

  return v10(a4, v8, v9);
}

uint64_t sub_1E622C840@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  State = type metadata accessor for WorkoutActionsMenuLoadState(0);
  MEMORY[0x1EEE9AC00](State);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v17 - v8);
  sub_1E5DFD1CC(v2, &v17 - v8, &qword_1ED073648, &qword_1E6607560);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *v9;
  v11 = v9[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_5;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073880, &qword_1E65EDC20);
  sub_1E622D988(v9 + *(v13 + 48), v6);
  v14 = *(State + 32);
  if (!sub_1E636E05C())
  {
    sub_1E613C88C(v6);
LABEL_5:
    *a1 = v12;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    goto LABEL_6;
  }

  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3F0, &unk_1E65F7290) + 48);
  *a1 = v12;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  sub_1E5DFD1CC(&v6[v14], a1 + v15, &unk_1ED077A70, &qword_1E65F2620);
  sub_1E613C88C(v6);
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E622CA0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  State = type metadata accessor for WorkoutActionsMenuLoadState(0);
  MEMORY[0x1EEE9AC00](State);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v32 - v12);
  sub_1E5DFD1CC(v2, &v32 - v12, &qword_1ED073648, &qword_1E6607560);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = *v13;
  v15 = v13[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073880, &qword_1E65EDC20);
  sub_1E622D988(v13 + *(v17 + 48), v10);
  v18 = *(State + 28);
  sub_1E5DFD1CC(&v10[v18], v7, &unk_1ED077CC0, &unk_1E65F2610);
  v19 = swift_getEnumCaseMultiPayload();
  if (v19 > 2)
  {
    goto LABEL_14;
  }

  if (v19)
  {
    if (v19 != 1)
    {
      v28 = &unk_1ED077CC0;
      v29 = &unk_1E65F2610;
      v30 = v7;
LABEL_13:
      sub_1E5DFE50C(v30, v28, v29);
      goto LABEL_14;
    }

    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    v21 = sub_1E65D76A8();
    (*(*(v21 - 8) + 8))(&v7[v20], v21);
  }

  v22 = *(State + 24);
  sub_1E5DFD1CC(&v10[v22], v33, &unk_1ED077CD0, &unk_1E65F42F0);
  v23 = swift_getEnumCaseMultiPayload();
  if (v23 > 2)
  {
LABEL_14:
    sub_1E613C88C(v10);
LABEL_15:
    *a1 = v16;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    goto LABEL_16;
  }

  if (v23)
  {
    if (v23 == 1)
    {
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v25 = sub_1E65D76A8();
      (*(*(v25 - 8) + 8))(v33 + v24, v25);
      goto LABEL_10;
    }

    v28 = &unk_1ED077CD0;
    v29 = &unk_1E65F42F0;
    v30 = v33;
    goto LABEL_13;
  }

LABEL_10:
  v26 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073868, &unk_1E65FA930) + 48);
  *a1 = v16;
  *(a1 + 8) = v15;
  *(a1 + 16) = 0;
  sub_1E5DFD1CC(&v10[v18], v26, &unk_1ED077CC0, &unk_1E65F2610);
  v27 = type metadata accessor for RemoveLibraryActionLoadState(0);
  sub_1E5DFD1CC(&v10[v22], v26 + *(v27 + 20), &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E613C88C(v10);
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E622CE04@<X0>(void *a1@<X8>)
{
  v2 = v1;
  State = type metadata accessor for WorkoutActionsMenuLoadState(0);
  MEMORY[0x1EEE9AC00](State - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v16 - v8);
  sub_1E5DFD1CC(v2, &v16 - v8, &qword_1ED073648, &qword_1E6607560);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *v9;
  v11 = v9[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_5;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073880, &qword_1E65EDC20);
  sub_1E622D988(v9 + *(v13 + 48), v6);
  if (!sub_1E636E32C())
  {
    sub_1E613C88C(v6);
LABEL_5:
    *a1 = v12;
    a1[1] = v11;
    goto LABEL_6;
  }

  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073878, &unk_1E65F8490) + 48);
  *a1 = v12;
  a1[1] = v11;
  sub_1E5DFD1CC(v6, a1 + v14, &qword_1ED0737C8, &unk_1E6605140);
  sub_1E613C88C(v6);
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E622CFB8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  State = type metadata accessor for WorkoutActionsMenuLoadState(0);
  MEMORY[0x1EEE9AC00](State);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v24 - v11);
  sub_1E5DFD1CC(v2, &v24 - v11, &qword_1ED073648, &qword_1E6607560);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = *v12;
  v14 = v12[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073880, &qword_1E65EDC20);
  sub_1E622D988(v12 + *(v16 + 48), v9);
  if (!sub_1E636E32C() || (v17 = *(State + 24), sub_1E5DFD1CC(&v9[v17], v6, &unk_1ED077CD0, &unk_1E65F42F0), v18 = swift_getEnumCaseMultiPayload(), v18 > 2))
  {
LABEL_9:
    sub_1E613C88C(v9);
LABEL_10:
    *a1 = v15;
    a1[1] = v14;
    goto LABEL_11;
  }

  if (v18)
  {
    if (v18 == 1)
    {
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v20 = sub_1E65D76A8();
      (*(*(v20 - 8) + 8))(&v6[v19], v20);
      goto LABEL_7;
    }

    sub_1E5DFE50C(v6, &unk_1ED077CD0, &unk_1E65F42F0);
    goto LABEL_9;
  }

LABEL_7:
  v21 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C0, &unk_1E65F7310) + 48);
  *a1 = v15;
  a1[1] = v14;
  sub_1E5DFD1CC(v9, v21, &qword_1ED0737C8, &unk_1E6605140);
  started = type metadata accessor for DynamicStartWorkoutButtonLoadState(0);
  sub_1E5DFD1CC(&v9[v17], &v21[*(started + 20)], &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E613C88C(v9);
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E622D2A4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  State = type metadata accessor for WorkoutActionsMenuLoadState(0);
  MEMORY[0x1EEE9AC00](State);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v24 - v11);
  sub_1E5DFD1CC(v2, &v24 - v11, &qword_1ED073648, &qword_1E6607560);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = *v12;
  v14 = v12[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073880, &qword_1E65EDC20);
  sub_1E622D988(v12 + *(v16 + 48), v9);
  v17 = *(State + 20);
  sub_1E5DFD1CC(&v9[v17], v6, &unk_1ED077CC0, &unk_1E65F2610);
  v18 = swift_getEnumCaseMultiPayload();
  if (v18 > 2)
  {
    goto LABEL_9;
  }

  if (v18)
  {
    if (v18 != 1)
    {
      sub_1E5DFE50C(v6, &unk_1ED077CC0, &unk_1E65F2610);
      goto LABEL_9;
    }

    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    v20 = sub_1E65D76A8();
    (*(*(v20 - 8) + 8))(&v6[v19], v20);
  }

  if (!sub_1E636E32C())
  {
LABEL_9:
    sub_1E613C88C(v9);
LABEL_10:
    *a1 = v15;
    a1[1] = v14;
    goto LABEL_11;
  }

  v21 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E10, &unk_1E65FABA0) + 48);
  *a1 = v15;
  a1[1] = v14;
  sub_1E5DFD1CC(v9, v21, &qword_1ED0737C8, &unk_1E6605140);
  v22 = type metadata accessor for StackButtonLoadState(0);
  sub_1E5DFD1CC(&v9[v17], &v21[*(v22 + 20)], &unk_1ED077CC0, &unk_1E65F2610);
  sub_1E613C88C(v9);
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E622D590@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  State = type metadata accessor for WorkoutActionsMenuLoadState(0);
  MEMORY[0x1EEE9AC00](State);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v32 - v12);
  sub_1E5DFD1CC(v2, &v32 - v12, &qword_1ED073648, &qword_1E6607560);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = *v13;
  v15 = v13[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073880, &qword_1E65EDC20);
  sub_1E622D988(v13 + *(v17 + 48), v10);
  v18 = *(State + 28);
  sub_1E5DFD1CC(&v10[v18], v7, &unk_1ED077CC0, &unk_1E65F2610);
  v19 = swift_getEnumCaseMultiPayload();
  if (v19 > 2)
  {
    goto LABEL_14;
  }

  if (v19)
  {
    if (v19 != 1)
    {
      v28 = &unk_1ED077CC0;
      v29 = &unk_1E65F2610;
      v30 = v7;
LABEL_13:
      sub_1E5DFE50C(v30, v28, v29);
      goto LABEL_14;
    }

    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    v21 = sub_1E65D76A8();
    (*(*(v21 - 8) + 8))(&v7[v20], v21);
  }

  v22 = *(State + 24);
  sub_1E5DFD1CC(&v10[v22], v33, &unk_1ED077CD0, &unk_1E65F42F0);
  v23 = swift_getEnumCaseMultiPayload();
  if (v23 > 2)
  {
LABEL_14:
    sub_1E613C88C(v10);
LABEL_15:
    *a1 = v16;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    goto LABEL_16;
  }

  if (v23)
  {
    if (v23 == 1)
    {
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v25 = sub_1E65D76A8();
      (*(*(v25 - 8) + 8))(v33 + v24, v25);
      goto LABEL_10;
    }

    v28 = &unk_1ED077CD0;
    v29 = &unk_1E65F42F0;
    v30 = v33;
    goto LABEL_13;
  }

LABEL_10:
  v26 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073968, &unk_1E65F4320) + 48);
  *a1 = v16;
  *(a1 + 8) = v15;
  *(a1 + 16) = 0;
  sub_1E5DFD1CC(&v10[v18], v26, &unk_1ED077CC0, &unk_1E65F2610);
  v27 = type metadata accessor for DynamicLibraryActionLoadState(0);
  sub_1E5DFD1CC(&v10[v22], v26 + *(v27 + 20), &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E613C88C(v10);
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E622D988(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for WorkoutActionsMenuLoadState(0);
  (*(*(State - 8) + 32))(a2, a1, State);
  return a2;
}

uint64_t sub_1E622D9EC()
{
  v0 = sub_1E65DEBD8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075800, &unk_1E6606280);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F00, &unk_1E66062A0);
  sub_1E65E4C98();
  sub_1E5E26EC4(v9, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_1E622DC30(v7);
        goto LABEL_7;
      }

      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075810, &qword_1E65F1DC8) + 48);
      v12 = sub_1E65D76A8();
      (*(*(v12 - 8) + 8))(&v7[v11], v12);
    }
  }

LABEL_7:
  (*(v1 + 104))(v3, *MEMORY[0x1E699CD10], v0);
  return sub_1E65DEBA8();
}

uint64_t sub_1E622DC30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075800, &unk_1E6606280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Blackbeard::AudioLanguageEngagementSheetAcknowledgment::State_optional __swiftcall AudioLanguageEngagementSheetAcknowledgment.State.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_1E622DCC8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1E622DDE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E622DE64(uint64_t a1)
{
  v2 = sub_1E622E028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E622DEA0(uint64_t a1)
{
  v2 = sub_1E622E028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AudioLanguageEngagementSheetAcknowledgment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076D40, &qword_1E65F8080);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E622E028();
  sub_1E65E6DA8();
  v10 = v7;
  sub_1E622E07C();
  sub_1E65E6B78();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E622E028()
{
  result = qword_1ED076D48;
  if (!qword_1ED076D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076D48);
  }

  return result;
}

unint64_t sub_1E622E07C()
{
  result = qword_1ED076D50;
  if (!qword_1ED076D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076D50);
  }

  return result;
}

uint64_t AudioLanguageEngagementSheetAcknowledgment.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076D58, &qword_1E65F8088);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E622E028();
  sub_1E65E6D98();
  if (!v2)
  {
    sub_1E622E23C();
    sub_1E65E6AD8();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E622E23C()
{
  result = qword_1ED076D60;
  if (!qword_1ED076D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076D60);
  }

  return result;
}

unint64_t sub_1E622E2DC()
{
  result = qword_1ED076D68;
  if (!qword_1ED076D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076D70, &qword_1E65F80F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076D68);
  }

  return result;
}

unint64_t sub_1E622E344()
{
  result = qword_1ED076D78;
  if (!qword_1ED076D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076D78);
  }

  return result;
}

unint64_t sub_1E622E3CC()
{
  result = qword_1ED076D80;
  if (!qword_1ED076D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076D80);
  }

  return result;
}

unint64_t sub_1E622E424()
{
  result = qword_1ED076D88;
  if (!qword_1ED076D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076D88);
  }

  return result;
}

unint64_t sub_1E622E47C()
{
  result = qword_1ED076D90;
  if (!qword_1ED076D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076D90);
  }

  return result;
}

unint64_t sub_1E622E4D0()
{
  result = qword_1ED076D98;
  if (!qword_1ED076D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076D98);
  }

  return result;
}

uint64_t sub_1E622E524(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_1E65E60A8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1E5DF650C(a1, v13);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_1E5DF599C(v13, v8 + 32);
  v9 = *a2;
  *(v8 + 88) = *(a2 + 1);
  v10 = *(a2 + 3);
  *(v8 + 104) = *(a2 + 2);
  *(v8 + 120) = v10;
  *(v8 + 136) = *(a2 + 4);
  *(v8 + 72) = v9;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v6, &unk_1E65F83B8, v8);
}

uint64_t sub_1E622E6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v5[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v5[10] = swift_task_alloc();
  v5[11] = type metadata accessor for RouteDestination(0);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E622E7EC, 0, 0);
}

uint64_t sub_1E622E7EC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v22 = v2;
  v23 = *(v0 + 88);
  v4 = *(v0 + 64);
  v21 = v4;
  v5 = *(v0 + 48);
  v24 = v5[3];
  v25 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v24);
  v6 = sub_1E65D76F8();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = sub_1E65E2CF8();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = sub_1E65E1FC8();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = sub_1E601100C(MEMORY[0x1E69E7CC0]);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
  v11 = (v1 + v10[12]);
  v12 = v10[16];
  v13 = v10[20];
  v14 = v10[24];
  v15 = v10[28];
  v16 = v1 + v10[32];
  sub_1E5DFD1CC(v3, v1, &unk_1ED077760, &unk_1E66011D0);
  *v11 = 0;
  v11[1] = 0;
  sub_1E5DFD1CC(v22, v1 + v12, &qword_1ED072B60, &unk_1E65FA490);
  *(v1 + v13) = v9;
  sub_1E5DFD1CC(v21, v1 + v14, &unk_1ED077750, &unk_1E66011C0);
  *(v1 + v15) = 0;
  *v16 = 0;
  *(v16 + 8) = 1;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E5DFE50C(v21, &unk_1ED077750, &unk_1E66011C0);
  sub_1E5DFE50C(v22, &qword_1ED072B60, &unk_1E65FA490);
  sub_1E5DFE50C(v3, &unk_1ED077760, &unk_1E66011D0);
  *(v1 + *(v23 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E611D1C0(v0 + 16);
  v17 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v17;
  sub_1E600F5B0((v0 + 25));
  v18 = swift_task_alloc();
  *(v0 + 104) = v18;
  *v18 = v0;
  v18[1] = sub_1E622EB20;
  v19 = *(v0 + 96);

  return RoutingContext.presentDestination(_:style:priority:)(v19, (v0 + 32), (v0 + 25), v24, v25);
}

uint64_t sub_1E622EB20()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    sub_1E5F94E00(*(v2 + 32), *(v2 + 40));
    sub_1E60111F8(v3);

    return MEMORY[0x1EEE6DFA0](sub_1E622EE98, 0, 0);
  }

  else
  {
    v4 = *(v2 + 96);
    v5 = *(v2 + 56);
    sub_1E5F94E00(*(v2 + 32), *(v2 + 40));
    sub_1E60111F8(v4);
    v8 = (*(v5 + 32) + **(v5 + 32));
    v6 = swift_task_alloc();
    *(v2 + 120) = v6;
    *v6 = v2;
    v6[1] = sub_1E622ED24;

    return v8();
  }
}

uint64_t sub_1E622ED24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E622EE98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E622EF24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E622E6B0(a1, v4, v5, v1 + 32, v1 + 72);
}

uint64_t sub_1E622EFD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1E601C17C(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  result = sub_1E65E6748();
  v6 = v25;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + result);
    v12 = *(a1 + 36);
    v14 = *(v26 + 16);
    v13 = *(v26 + 24);
    if (v14 >= v13 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_1E601C17C((v13 > 1), v14 + 1, 1);
      v6 = v25;
      v12 = v23;
      result = v24;
    }

    *(v26 + 16) = v14 + 1;
    v15 = v26 + 24 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v9);
    if ((v16 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v9 << 6;
      v19 = v9 + 1;
      v20 = (a1 + 64 + 8 * v9);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1E60C349C(result, v12, 0);
          v6 = v25;
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1E60C349C(result, v12, 0);
      v6 = v25;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E622F208(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), char a3)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v29 = a2;
  v32 = MEMORY[0x1E69E7CC0];
  v30 = *(a1 + 16);
  a2(0, v4, 0);
  v5 = v32;
  v7 = a1 + 56;
  result = sub_1E65E6748();
  v9 = v30;
  v10 = 0;
  v11 = a3;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v13 = result >> 6;
    v14 = 1 << result;
    if ((*(v7 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v15 = *(*(a1 + 48) + result);
    v16 = *(a1 + 36);
    v18 = *(v32 + 16);
    v17 = *(v32 + 24);
    if (v18 >= v17 >> 1)
    {
      v27 = *(a1 + 36);
      v28 = result;
      v29(v17 > 1, v18 + 1, 1);
      v9 = v30;
      v11 = a3;
      v16 = v27;
      result = v28;
    }

    *(v32 + 16) = v18 + 1;
    v19 = v32 + 24 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = 0;
    *(v19 + 48) = v11;
    v12 = 1 << *(a1 + 32);
    if (result >= v12)
    {
      goto LABEL_22;
    }

    v20 = *(v7 + 8 * v13);
    if ((v20 & v14) == 0)
    {
      goto LABEL_23;
    }

    if (v16 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (result & 0x3F));
    if (v21)
    {
      v12 = __clz(__rbit64(v21)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v13 << 6;
      v23 = v13 + 1;
      v24 = (a1 + 64 + 8 * v13);
      while (v23 < (v12 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          sub_1E60C349C(result, v16, 0);
          v9 = v30;
          v11 = a3;
          v12 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      sub_1E60C349C(result, v16, 0);
      v9 = v30;
      v11 = a3;
    }

LABEL_4:
    ++v10;
    result = v12;
    if (v10 == v9)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E622F45C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 232) = a3;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA0, &qword_1E6609BC0);
  *(v3 + 80) = v4;
  *(v3 + 88) = *(v4 - 8);
  *(v3 + 96) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075998, &qword_1E65F25C0);
  *(v3 + 104) = v5;
  *(v3 + 112) = *(v5 - 8);
  *(v3 + 120) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CF0, &qword_1E65EECD8);
  *(v3 + 128) = v6;
  *(v3 + 136) = *(v6 - 8);
  *(v3 + 144) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074130, &qword_1E65EFAA8);
  *(v3 + 152) = v7;
  *(v3 + 160) = *(v7 - 8);
  *(v3 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E622F664, 0, 0);
}

uint64_t sub_1E622F664()
{
  v1 = *(v0 + 232);
  if (v1 <= 4)
  {
    if (v1 >= 2 && v1 - 3 >= 2)
    {
      type metadata accessor for AppEnvironment(0);
      v10 = BookmarkService.makePlaylistUpdatedStream.getter();
      *(v0 + 216) = v11;
      v20 = (v10 + *v10);
      v12 = swift_task_alloc();
      *(v0 + 224) = v12;
      *v12 = v0;
      v12[1] = sub_1E622FF08;
      v5 = *(v0 + 120);
    }

    else
    {
      type metadata accessor for AppEnvironment(0);
      v2 = BookmarkService.makeBookmarkUpdatedStream.getter();
      *(v0 + 176) = v3;
      v20 = (v2 + *v2);
      v4 = swift_task_alloc();
      *(v0 + 184) = v4;
      *v4 = v0;
      v4[1] = sub_1E622FA50;
      v5 = *(v0 + 168);
    }

    goto LABEL_11;
  }

  if (v1 == 5 || v1 != 6)
  {
    type metadata accessor for AppEnvironment(0);
    v7 = AssetService.makeAssetBundleUpdatedStream.getter();
    *(v0 + 192) = v8;
    v20 = (v7 + *v7);
    v9 = swift_task_alloc();
    *(v0 + 200) = v9;
    *v9 = v0;
    v9[1] = sub_1E622FCA0;
    v5 = *(v0 + 144);
LABEL_11:

    return v20(v5);
  }

  v15 = *(v0 + 88);
  v14 = *(v0 + 96);
  v17 = *(v0 + 72);
  v16 = *(v0 + 80);
  v18 = *(v0 + 64);
  *(swift_task_alloc() + 16) = v17;
  (*(v15 + 104))(v14, *MEMORY[0x1E69E8650], v16);
  v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v18[4] = sub_1E6233764(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88);
  __swift_allocate_boxed_opaque_existential_1(v18);
  sub_1E65E6128();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1E622FA50()
{

  return MEMORY[0x1EEE6DFA0](sub_1E622FB68, 0, 0);
}

uint64_t sub_1E622FB68()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[8];
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0759C8, &qword_1E65F25F8);
  v5 = sub_1E6233764(&qword_1ED0759D0, &qword_1ED074130, &qword_1E65EFAA8);
  v0[6] = v3;
  v0[7] = v5;
  v4[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_1E65E6188();
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E622FCA0()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1E6230158;
  }

  else
  {
    v2 = sub_1E622FDD0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E622FDD0()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[8];
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB0, &qword_1E65F83D0);
  v5 = sub_1E6233764(&qword_1EE2D47C8, &qword_1ED073CF0, &qword_1E65EECD8);
  v0[4] = v3;
  v0[5] = v5;
  v4[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_1E65E6188();
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E622FF08()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6230020, 0, 0);
}

uint64_t sub_1E6230020()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[8];
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA8, &qword_1E65F83C8);
  v5 = sub_1E6233764(&qword_1ED0759B0, &qword_1ED075998, &qword_1E65F25C0);
  v0[2] = v3;
  v0[3] = v5;
  v4[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_1E65E6188();
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E6230158()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6230210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v22 - v12;
  sub_1E5DF4C84(a1, v22 - v12);
  v14 = sub_1E65E60A8();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1E5DF4CF4(v13);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_1E65E5FC8();
      v18 = v17;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E65E6098();
    (*(v15 + 8))(v13, v14);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_6:
  v19 = *v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v20 = (v18 | v16);
  if (v18 | v16)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v16;
    v23[3] = v18;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v19;
  swift_task_create();
}

uint64_t sub_1E62303F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  sub_1E5DF4C84(a1, v19 - v9);
  v11 = sub_1E65E60A8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1E5DF4CF4(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1E65E5FC8();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E65E6098();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v5;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_1E62305C8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 312) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v4 = sub_1E65D8BD8();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  v5 = sub_1E65D86C8();
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 - 8);
  *(v3 + 80) = swift_task_alloc();
  v6 = sub_1E65D8438();
  *(v3 + 88) = v6;
  *(v3 + 96) = *(v6 - 8);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6230750, 0, 0);
}

uint64_t sub_1E6230750()
{
  v1 = *(v0 + 312);
  if (v1 <= 3)
  {
    if (*(v0 + 312) <= 1u)
    {
      if (*(v0 + 312))
      {
        type metadata accessor for AppEnvironment(0);
        v27 = BookmarkService.queryBookmarkCountWithFilter.getter();
        *(v0 + 144) = v28;
        if (qword_1ED071890 != -1)
        {
          swift_once();
        }

        v29 = *(v0 + 24);

        v31 = sub_1E622F208(v30, sub_1E601C638, 1);

        v32 = sub_1E622F208(v29, sub_1E601C638, 0);
        sub_1E5FA9FA8(v32);
        sub_1E600BD90(v31);

        sub_1E65D8428();
        v44 = (v27 + *v27);
        v33 = swift_task_alloc();
        *(v0 + 152) = v33;
        *v33 = v0;
        v33[1] = sub_1E6231258;
        v34 = *(v0 + 104);
      }

      else
      {
        v2 = *(v0 + 32);
        type metadata accessor for AppEnvironment(0);
        v3 = BookmarkService.queryBookmarkCountWithFilter.getter();
        *(v0 + 120) = v4;
        v5 = &unk_1F5FA7FD0;
        if (*(v2 + 8) > 1u)
        {
          if (*(v2 + 8) == 2)
          {
            return sub_1E65E69D8();
          }
        }

        else if (!*(v2 + 8))
        {
          v5 = &unk_1F5FA7FA8;
        }

        v37 = *(v0 + 24);
        v38 = sub_1E5F9B388(v5);
        v39 = sub_1E622F208(v38, sub_1E601C638, 1);

        v40 = sub_1E622F208(v37, sub_1E601C638, 0);
        sub_1E5FA9FA8(v40);
        sub_1E600BD90(v39);

        sub_1E65D8428();
        v44 = (v3 + *v3);
        v41 = swift_task_alloc();
        *(v0 + 128) = v41;
        *v41 = v0;
        v41[1] = sub_1E6231060;
        v34 = *(v0 + 112);
      }

      v16 = v34;
      goto LABEL_31;
    }

    if (v1 == 2)
    {
      v11 = *(v0 + 24);
      type metadata accessor for AppEnvironment(0);
      v12 = BookmarkService.queryPlaylistCountWithFilter.getter();
      *(v0 + 168) = v13;
      v14 = sub_1E622EFD8(v11);
      sub_1E600AAA0(v14);

      sub_1E65D86B8();
      v44 = (v12 + *v12);
      v15 = swift_task_alloc();
      *(v0 + 176) = v15;
      *v15 = v0;
      v15[1] = sub_1E6231450;
      v16 = *(v0 + 80);
LABEL_31:
      v26 = v44;

      return v26(v16);
    }

    type metadata accessor for AppEnvironment(0);
    v35 = BookmarkService.queryBookmarkCountByReferenceTypes.getter();
    *(v0 + 192) = v36;
    v8 = sub_1E5F9B84C(&unk_1F5FA8608);
    *(v0 + 200) = v8;
    v43 = (v35 + *v35);
    v9 = swift_task_alloc();
    *(v0 + 208) = v9;
    *v9 = v0;
    v10 = sub_1E6231648;
LABEL_24:
    v9[1] = v10;
    v16 = v8;
    v26 = v43;

    return v26(v16);
  }

  if (*(v0 + 312) <= 5u)
  {
    if (v1 == 4)
    {
      type metadata accessor for AppEnvironment(0);
      v6 = BookmarkService.queryBookmarkCountByReferenceTypes.getter();
      *(v0 + 224) = v7;
      v8 = sub_1E5F9B84C(&unk_1F5FA8630);
      *(v0 + 232) = v8;
      v43 = (v6 + *v6);
      v9 = swift_task_alloc();
      *(v0 + 240) = v9;
      *v9 = v0;
      v10 = sub_1E62317CC;
      goto LABEL_24;
    }

LABEL_17:
    v22 = *(v0 + 24);
    type metadata accessor for AppEnvironment(0);
    v23 = AssetService.filterAssetBundlesOnCurrentDevice.getter();
    *(v0 + 256) = v24;
    v46 = sub_1E622F208(v22, sub_1E601C600, 0);
    sub_1E5FA9F88(&unk_1F5FA8658);
    sub_1E600BE38(v46);

    sub_1E65D8BC8();
    v45 = (v23 + *v23);
    v25 = swift_task_alloc();
    *(v0 + 264) = v25;
    *v25 = v0;
    v25[1] = sub_1E6231950;
    v16 = *(v0 + 56);
    v26 = v45;

    return v26(v16);
  }

  if (v1 != 6)
  {
    goto LABEL_17;
  }

  v17 = swift_task_alloc();
  *(v0 + 288) = v17;
  v17[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v18 = swift_task_alloc();
  *(v0 + 296) = v18;
  *v18 = v0;
  v18[1] = sub_1E6231B9C;
  v19 = MEMORY[0x1E69E6530];
  v20 = MEMORY[0x1E69E6530];
  v21 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DD58](v0 + 16, v19, v20, 0, 0, &unk_1E65F8440, v17, v21);
}

uint64_t sub_1E6231060(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  v4[17] = v1;

  (*(v5 + 8))(v4[14], v4[11]);

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6231D4C, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t sub_1E6231258(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  v4[20] = v1;

  (*(v5 + 8))(v4[13], v4[11]);

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6231DD8, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t sub_1E6231450(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  v4[23] = v1;

  (*(v5 + 8))(v4[10], v4[8]);

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6231E64, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t sub_1E6231648(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 216) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6231EF0, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1E62317CC(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 248) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6231F8C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1E6231950(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v4[34] = v1;

  v6 = (v5 + 8);
  v7 = v4[7];
  v8 = v4[5];
  if (v1)
  {
    (*v6)(v7, v8);

    v9 = sub_1E62320BC;
  }

  else
  {
    v4[35] = a1;
    (*v6)(v7, v8);

    v9 = sub_1E6231B00;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E6231B00()
{
  v1 = *(*(v0 + 280) + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E6231B9C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1E6232028;
  }

  else
  {

    v2 = sub_1E6231CB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6231CB8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E6231D4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6231DD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6231E64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6231EF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6231F8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6232028()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E62320BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6232148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DD8, &qword_1E65F8448);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = *(type metadata accessor for AppEnvironment(0) - 8);
  v4[12] = v6;
  v4[13] = *(v6 + 64);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E62322B0, 0, 0);
}

uint64_t sub_1E62322B0()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[7];
  v5 = v0[8];
  v17 = v6;
  v7 = sub_1E65E60A8();
  v8 = *(*(v7 - 8) + 56);
  v8(v1, 1, 1, v7);
  sub_1E60190C0(v6, v2);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = (v9 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_1E6019124(v2, v11 + v9);
  *(v11 + v10) = v5;

  sub_1E62303F4(v1, &unk_1E65F8458, v11, MEMORY[0x1E69E6530]);
  sub_1E5DF4CF4(v1);
  v8(v1, 1, 1, v7);
  sub_1E60190C0(v17, v2);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  sub_1E6019124(v2, v12 + v9);
  sub_1E62303F4(v1, &unk_1E65F8468, v12, MEMORY[0x1E69E6530]);
  sub_1E5DF4CF4(v1);
  v8(v1, 1, 1, v7);
  sub_1E60190C0(v17, v2);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_1E6019124(v2, v13 + v9);
  *(v13 + v10) = v5;

  sub_1E62303F4(v1, &unk_1E65F8478, v13, MEMORY[0x1E69E6530]);
  sub_1E5DF4CF4(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  sub_1E65E6168();
  v0[16] = 0;
  v14 = swift_task_alloc();
  v0[17] = v14;
  *v14 = v0;
  v14[1] = sub_1E62325DC;
  v15 = v0[9];

  return MEMORY[0x1EEE6DAD8](v0 + 2, 0, 0, v15, v0 + 4);
}

uint64_t sub_1E62325DC()
{

  if (v0)
  {
    v1 = sub_1E60B46A0;
  }

  else
  {
    v1 = sub_1E62326EC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E62326EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 128);
  if (*(v5 + 24))
  {
    v8 = *(v5 + 40);
    (*(*(v5 + 80) + 8))(*(v5 + 88), *(v5 + 72), a3, a4, a5);
    *v8 = v7;

    v9 = *(v5 + 8);

    return v9();
  }

  else
  {
    v11 = __OFADD__(v7, v6);
    v12 = v7 + v6;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      *(v5 + 128) = v12;
      v13 = swift_task_alloc();
      *(v5 + 136) = v13;
      *v13 = v5;
      v13[1] = sub_1E62325DC;
      a4 = *(v5 + 72);
      a5 = v5 + 32;
      a1 = v5 + 16;
      a2 = 0;
      a3 = 0;
    }

    return MEMORY[0x1EEE6DAD8](a1, a2, a3, a4, a5);
  }
}

uint64_t sub_1E6232848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1E65D8438();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E623290C, 0, 0);
}

uint64_t sub_1E623290C()
{
  v1 = v0[3];
  type metadata accessor for AppEnvironment(0);
  v2 = BookmarkService.queryBookmarkCountWithFilter.getter();
  v0[8] = v3;
  v4 = &unk_1F5FA7FD0;
  if (*(v1 + 8) > 1u)
  {
    if (*(v1 + 8) == 2)
    {
      return sub_1E65E69D8();
    }
  }

  else if (!*(v1 + 8))
  {
    v4 = &unk_1F5FA7FA8;
  }

  v6 = v0[4];
  v7 = sub_1E5F9B388(v4);
  v8 = sub_1E622F208(v7, sub_1E601C638, 1);

  v9 = sub_1E622F208(v6, sub_1E601C638, 0);
  sub_1E5FA9FA8(v9);
  sub_1E600BD90(v8);

  sub_1E65D8428();
  v12 = (v2 + *v2);
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_1E6232B60;
  v11 = v0[7];

  return v12(v11);
}

uint64_t sub_1E6232B60(uint64_t a1)
{
  v4 = *v2;
  v4[10] = v1;

  v5 = v4[7];
  v6 = v4[6];
  v7 = v4[5];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    v8 = sub_1E6235FE4;
  }

  else
  {
    v4[11] = a1;
    (*(v6 + 8))(v5, v7);

    v8 = sub_1E6235FE0;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1E6232D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E6232D2C, 0, 0);
}

uint64_t sub_1E6232D2C()
{
  type metadata accessor for AppEnvironment(0);
  v1 = BookmarkService.queryBookmarkCountByReferenceTypes.getter();
  v0[4] = v2;
  v3 = sub_1E5F9B84C(&unk_1F5FA8758);
  v0[5] = v3;
  v6 = (v1 + *v1);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1E6232E58;

  return v6(v3);
}

uint64_t sub_1E6232E58(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1E6232FB4;
  }

  else
  {

    *(v4 + 64) = a1;
    v5 = sub_1E6232F90;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6232FB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6233020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1E65D86C8();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E62330E4, 0, 0);
}

uint64_t sub_1E62330E4()
{
  v1 = v0[4];
  type metadata accessor for AppEnvironment(0);
  v2 = BookmarkService.queryPlaylistCountWithFilter.getter();
  v0[8] = v3;
  v4 = sub_1E622EFD8(v1);
  sub_1E600AAA0(v4);

  sub_1E65D86B8();
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1E623323C;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E623323C(uint64_t a1)
{
  v4 = *v2;
  v4[10] = v1;

  v5 = v4[7];
  v6 = v4[6];
  v7 = v4[5];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    v8 = sub_1E6233458;
  }

  else
  {
    v4[11] = a1;
    (*(v6 + 8))(v5, v7);

    v8 = sub_1E62333E8;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1E62333E8()
{
  **(v0 + 16) = *(v0 + 88);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6233458()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E62334BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = type metadata accessor for AppEnvironment(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - v13;
  v15 = sub_1E65E60A8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1E60190C0(a2, v11);
  (*(v5 + 16))(v7, a1, v4);
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = (v10 + *(v5 + 80) + v16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_1E6019124(v11, v18 + v16);
  (*(v5 + 32))(v18 + v17, v7, v4);
  sub_1E64B80F8(0, 0, v14, &unk_1E65F83E8, v18);
  return sub_1E65E60B8();
}

uint64_t sub_1E6233764(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1E62337B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E62337DC, 0, 0);
}

uint64_t sub_1E62337DC()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1E62338C8;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x1E69E7CA8] + 8;
  v5 = MEMORY[0x1E69E7CA8] + 8;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v3, v4, v5, 0, 0, &unk_1E65F83F8, v1, v6);
}

void sub_1E62338C8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 8);

    v3();
  }
}

uint64_t sub_1E62339FC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppEnvironment(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFA78C;

  return sub_1E62337B8(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6233B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v4[7] = *(v6 + 64);
  v4[8] = swift_task_alloc();
  v7 = *(type metadata accessor for AppEnvironment(0) - 8);
  v4[9] = v7;
  v4[10] = *(v7 + 64);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6233CC8, 0, 0);
}

uint64_t sub_1E6233CC8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v17 = v0[9];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v19 = v8;
  v20 = v7;
  v21 = sub_1E65E60A8();
  v22 = *(*(v21 - 8) + 56);
  v22(v1, 1, 1, v21);
  sub_1E60190C0(v7, v2);
  v18 = *(v5 + 16);
  v18(v4, v8, v6);
  v9 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v10 = (v3 + *(v5 + 80) + v9) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_1E6019124(v2, v11 + v9);
  v16 = *(v5 + 32);
  v16(v11 + v10, v4, v6);
  sub_1E62303F4(v1, &unk_1E65F8408, v11, MEMORY[0x1E69E7CA8] + 8);
  sub_1E5DF4CF4(v1);
  v22(v1, 1, 1, v21);
  sub_1E60190C0(v20, v2);
  v12 = v6;
  v18(v4, v19, v6);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_1E6019124(v2, v13 + v9);
  v16(v13 + v10, v4, v12);
  sub_1E62303F4(v1, &unk_1E65F8418, v13, MEMORY[0x1E69E7CA8] + 8);
  sub_1E5DF4CF4(v1);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E6233F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DC0, &qword_1E660ACC0);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DD0, &qword_1E65F8428);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074130, &qword_1E65EFAA8);
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0759C8, &qword_1E65F25F8);
  v5[15] = v9;
  v5[16] = *(v9 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6234194, 0, 0);
}

uint64_t sub_1E6234194()
{
  type metadata accessor for AppEnvironment(0);
  v1 = BookmarkService.makeBookmarkUpdatedStream.getter();
  v0[19] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_1E62342A0;
  v4 = v0[14];

  return v6(v4);
}

uint64_t sub_1E62342A0()
{

  return MEMORY[0x1EEE6DFA0](sub_1E62343B8, 0, 0);
}

uint64_t sub_1E62343B8()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = sub_1E6233764(&qword_1ED0759D0, &qword_1ED074130, &qword_1E65EFAA8);
  sub_1E65E6188();
  (*(v6 + 8))(v5, v7);
  (*(v4 + 16))(v2, v1, v3);
  v0[2] = v7;
  v0[3] = v8;
  v0[21] = swift_getOpaqueTypeConformance2();
  sub_1E65E6198();
  swift_getAssociatedConformanceWitness();
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_1E623455C;

  return MEMORY[0x1EEE6D8D0](v0 + 23, 0, 0);
}

uint64_t sub_1E623455C()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E623466C, 0, 0);
  }

  return result;
}

uint64_t sub_1E623466C()
{
  if (*(v0 + 184) == 1)
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 120);
    v3 = *(v0 + 128);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    (*(v3 + 8))(v1, v2);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    v8 = *(v0 + 48);
    sub_1E65E60C8();
    (*(v7 + 8))(v6, v8);
    swift_getAssociatedConformanceWitness();
    v9 = swift_task_alloc();
    *(v0 + 176) = v9;
    *v9 = v0;
    v9[1] = sub_1E623455C;

    return MEMORY[0x1EEE6D8D0](v0 + 184, 0, 0);
  }
}

uint64_t sub_1E6234830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DC0, &qword_1E660ACC0);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DC8, &qword_1E65F8420);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075998, &qword_1E65F25C0);
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA8, &qword_1E65F83C8);
  v5[15] = v9;
  v5[16] = *(v9 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6234A40, 0, 0);
}

uint64_t sub_1E6234A40()
{
  type metadata accessor for AppEnvironment(0);
  v1 = BookmarkService.makePlaylistUpdatedStream.getter();
  v0[19] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_1E6234B4C;
  v4 = v0[14];

  return v6(v4);
}

uint64_t sub_1E6234B4C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6234C64, 0, 0);
}

uint64_t sub_1E6234C64()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = sub_1E6233764(&qword_1ED0759B0, &qword_1ED075998, &qword_1E65F25C0);
  sub_1E65E6188();
  (*(v6 + 8))(v5, v7);
  (*(v4 + 16))(v2, v1, v3);
  v0[2] = v7;
  v0[3] = v8;
  v0[21] = swift_getOpaqueTypeConformance2();
  sub_1E65E6198();
  swift_getAssociatedConformanceWitness();
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_1E6234E08;

  return MEMORY[0x1EEE6D8D0](v0 + 23, 0, 0);
}

uint64_t sub_1E6234E08()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6234F18, 0, 0);
  }

  return result;
}

uint64_t sub_1E6234F18()
{
  if (*(v0 + 184) == 1)
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 120);
    v3 = *(v0 + 128);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    (*(v3 + 8))(v1, v2);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    v8 = *(v0 + 48);
    sub_1E65E60C8();
    (*(v7 + 8))(v6, v8);
    swift_getAssociatedConformanceWitness();
    v9 = swift_task_alloc();
    *(v0 + 176) = v9;
    *v9 = v0;
    v9[1] = sub_1E6234E08;

    return MEMORY[0x1EEE6D8D0](v0 + 184, 0, 0);
  }
}

uint64_t sub_1E6235100(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6233B58(a1, a2, v7, v6);
}

uint64_t sub_1E62351B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppEnvironment(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6233F84(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6235310(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppEnvironment(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6234830(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E623546C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6232148(a1, a2, v7, v6);
}

uint64_t sub_1E6235520(uint64_t a1)
{
  v4 = *(type metadata accessor for AppEnvironment(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6232848(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E6235640(uint64_t a1)
{
  v4 = *(type metadata accessor for AppEnvironment(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E6232D0C(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_35Tm()
{
  v1 = (type metadata accessor for AppEnvironment(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  swift_unknownObjectRelease();
  v4 = v1[8];
  v5 = type metadata accessor for AccountService();
  (*(v5[-1].Description + 1))(v3 + v4, v5);
  v6 = v1[9];
  v7 = type metadata accessor for AppStateService();
  (*(v7[-1].Description + 1))(v3 + v6, v7);
  v8 = v1[10];
  v9 = type metadata accessor for ArchivedSessionService();
  (*(v9[-1].Description + 1))(v3 + v8, v9);
  v10 = v1[11];
  v11 = type metadata accessor for AssetService();
  (*(v11[-1].Description + 1))(v3 + v10, v11);
  v12 = v1[12];
  v13 = type metadata accessor for AwardsService();
  (*(v13[-1].Description + 1))(v3 + v12, v13);
  v14 = v1[13];
  v15 = type metadata accessor for BookmarkService();
  (*(v15[-1].Description + 1))(v3 + v14, v15);
  v16 = v1[14];
  v17 = type metadata accessor for CatalogService();
  (*(v17[-1].Description + 1))(v3 + v16, v17);
  v18 = v1[15];
  v19 = type metadata accessor for ConfigurationService();
  (*(v19[-1].Description + 1))(v3 + v18, v19);
  v20 = v1[16];
  v21 = type metadata accessor for ContentAvailabilityService();
  (*(v21[-1].Description + 1))(v3 + v20, v21);
  v22 = v1[17];
  v23 = type metadata accessor for EngagementService();
  (*(v23[-1].Description + 1))(v3 + v22, v23);
  v24 = v1[18];
  v25 = type metadata accessor for HealthDataService();
  (*(v25[-1].Description + 1))(v3 + v24, v25);
  v26 = v1[19];
  v27 = type metadata accessor for InteropService();
  (*(v27[-1].Description + 1))(v3 + v26, v27);
  v28 = v1[20];
  v29 = type metadata accessor for LocalizationService();
  (*(v29[-1].Description + 1))(v3 + v28, v29);
  v30 = v1[21];
  v31 = type metadata accessor for MarketingService();
  (*(v31[-1].Description + 1))(v3 + v30, v31);
  v32 = v1[22];
  v33 = type metadata accessor for MetricService();
  (*(v33[-1].Description + 1))(v3 + v32, v33);
  v34 = v1[23];
  v35 = type metadata accessor for PersonalizationService();
  (*(v35[-1].Description + 1))(v3 + v34, v35);
  v36 = v1[24];
  v37 = type metadata accessor for PlayerService();
  (*(v37[-1].Description + 1))(v3 + v36, v37);
  v38 = v1[25];
  v39 = type metadata accessor for PrivacyPreferenceService();
  (*(v39[-1].Description + 1))(v3 + v38, v39);
  v40 = v1[26];
  v41 = type metadata accessor for RecommendationService();
  (*(v41[-1].Description + 1))(v3 + v40, v41);
  v42 = v1[27];
  v43 = type metadata accessor for RemoteBrowsingService();
  (*(v43[-1].Description + 1))(v3 + v42, v43);
  v44 = v1[28];
  v45 = type metadata accessor for SearchService();
  (*(v45[-1].Description + 1))(v3 + v44, v45);
  v46 = v1[29];
  v47 = type metadata accessor for ServiceSubscriptionService();
  (*(v47[-1].Description + 1))(v3 + v46, v47);
  v48 = v1[30];
  v49 = type metadata accessor for SessionService();
  (*(v49[-1].Description + 1))(v3 + v48, v49);
  v50 = v1[31];
  v51 = type metadata accessor for SharePlayService();
  (*(v51[-1].Description + 1))(v3 + v50, v51);
  v52 = v1[32];
  v53 = type metadata accessor for SiriService();
  (*(v53[-1].Description + 1))(v3 + v52, v53);
  v54 = v1[33];
  v55 = type metadata accessor for SyncService();
  (*(v55[-1].Description + 1))(v3 + v54, v55);

  v56 = v1[35];
  QueueService = type metadata accessor for UpNextQueueService();
  (*(QueueService[-1].Description + 1))(v3 + v56, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v3 + v1[36]));

  v58 = v1[38];
  v59 = type metadata accessor for WorkoutPlanService();
  (*(v59[-1].Description + 1))(v3 + v58, v59);

  return swift_deallocObject();
}

uint64_t sub_1E6235EC0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppEnvironment(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6233020(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E6235FE8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076E10, &qword_1E65F85F8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6237BB8();
  sub_1E65E6DA8();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  sub_1E6237C70(&qword_1ED0759E8, MEMORY[0x1E6999B20]);
  sub_1E65E6B78();
  if (!v1)
  {
    type metadata accessor for DynamicStartWorkoutButtonLoadState(0);
    v8[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    sub_1E613BED0(&qword_1ED075A08, MEMORY[0x1E6999B20]);
    sub_1E65E6B78();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1E62361D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  MEMORY[0x1EEE9AC00](v5);
  v24 = &v18 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076E00, &qword_1E65F85F0);
  v22 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v8 = &v18 - v7;
  started = type metadata accessor for DynamicStartWorkoutButtonLoadState(0);
  MEMORY[0x1EEE9AC00](started);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6237BB8();
  sub_1E65E6D98();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = started;
  v19 = a1;
  v12 = v11;
  v14 = v22;
  v13 = v23;
  v27 = 0;
  sub_1E6237C70(&qword_1ED075A30, MEMORY[0x1E6999B30]);
  v16 = v24;
  v15 = v25;
  sub_1E65E6AD8();
  sub_1E5FAB460(v16, v12, &qword_1ED0737C8, &unk_1E6605140);
  v26 = 1;
  sub_1E613BED0(&qword_1ED075A40, MEMORY[0x1E6999B30]);
  sub_1E65E6AD8();
  (*(v14 + 8))(v8, v15);
  sub_1E5FAB460(v13, v12 + *(v18 + 20), &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E6237C0C(v12, v20);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_1E6236B04(v12);
}

uint64_t sub_1E6236560()
{
  if (*v0)
  {
    return 0x64616F6C6E776F64;
  }

  else
  {
    return 0x726F577472617473;
  }
}

uint64_t sub_1E62365A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F577472617473 && a2 == 0xEC00000074756F6BLL;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E6236684(uint64_t a1)
{
  v2 = sub_1E6237BB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E62366C0(uint64_t a1)
{
  v2 = sub_1E6237BB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E623672C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  sub_1E5DF2DE0(&qword_1EE2D6888, MEMORY[0x1E699CC08], MEMORY[0x1E699CC18]);
  sub_1E65E4DB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E613CC1C();
  return sub_1E65E4DB8();
}

uint64_t sub_1E62367E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E65DE788();
  sub_1E5DF2DE0(&qword_1EE2D6880, MEMORY[0x1E699CC08], MEMORY[0x1E699CC20]);
  if ((sub_1E65E4D98() & 1) == 0)
  {
    return 0;
  }

  sub_1E5DF23E0();

  return sub_1E65E4D98();
}

uint64_t sub_1E62368B0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  started = type metadata accessor for DynamicStartWorkoutButtonLoadState(0);
  MEMORY[0x1EEE9AC00](started - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v16 - v8);
  sub_1E5DFD1CC(v2, &v16 - v8, &qword_1ED0736B0, &unk_1E65F8480);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *v9;
  v11 = v9[1];
  if (EnumCaseMultiPayload == 1)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C0, &unk_1E65F7310);
    sub_1E6236AA0(v9 + *(v13 + 48), v6);
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073878, &unk_1E65F8490) + 48);
    *a1 = v12;
    a1[1] = v11;
    sub_1E5DFD1CC(v6, a1 + v14, &qword_1ED0737C8, &unk_1E6605140);
    sub_1E6236B04(v6);
  }

  else
  {
    *a1 = v12;
    a1[1] = v11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for DynamicStartWorkoutButtonLoadState(uint64_t a1)
{
  result = qword_1EE2D7AE8;
  if (!qword_1EE2D7AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E6236AA0(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for DynamicStartWorkoutButtonLoadState(0);
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t sub_1E6236B04(uint64_t a1)
{
  started = type metadata accessor for DynamicStartWorkoutButtonLoadState(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_1E6236B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v74 = a2;
  started = type metadata accessor for DynamicStartWorkoutButtonLoadState(0);
  MEMORY[0x1EEE9AC00](started);
  v60 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C0, &unk_1E6606290);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v57 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v66 = *(v4 - 8);
  v67 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v57 - v5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE8, &qword_1E65F84B8);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DF0, &unk_1E65F84C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v73 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v70 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB8, &unk_1E65F84D0);
  v57 = *(v11 - 8);
  v58 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v57 - v21;
  v23 = sub_1E65D7848();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v59 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v62 = &v57 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480);
  MEMORY[0x1EEE9AC00](v28);
  v30 = (&v57 - v29);
  sub_1E5DFD1CC(v64, &v57 - v29, &qword_1ED0736B0, &unk_1E65F8480);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v32 = v30[1];
  v64 = *v30;
  if (EnumCaseMultiPayload == 1)
  {
    v62 = v32;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C0, &unk_1E65F7310);
    v34 = v60;
    sub_1E6236AA0(v30 + *(v33 + 48), v60);
    type metadata accessor for AppState(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    v35 = v63;
    sub_1E65E4C98();
    sub_1E5E1F544(v20);
    sub_1E5DFE50C(v16, &qword_1ED071F78, &unk_1E65EA3F0);
    v36 = *(v24 + 48);
    if (v36(v20, 1, v23) == 1)
    {
      sub_1E65D77C8();
      if (v36(v20, 1, v23) != 1)
      {
        sub_1E5DFE50C(v20, &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v24 + 32))(v59, v20, v23);
    }

    LODWORD(v59) = sub_1E624D4A8();
    v39 = v64;
    v40 = v62;
    v41 = sub_1E6237610(v64, v62);
    v57 = v42;
    v58 = v41;
    sub_1E5DFD1CC(v34 + *(started + 20), v70, &unk_1ED077CD0, &unk_1E65F42F0);
    v75 = v39;
    v76 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
    v43 = v65;
    sub_1E65E4D78();
    v44 = v34;
    v45 = v69;
    v46 = v67;
    sub_1E65E4C98();
    (*(v66 + 8))(v43, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
    sub_1E6237A2C();
    v47 = v72;
    sub_1E65E4DA8();
    v48 = sub_1E5DFE50C(v45, &qword_1ED0753C0, &unk_1E6606290);
    MEMORY[0x1EEE9AC00](v48);
    *(&v57 - 2) = v35;
    sub_1E5DF4334();
    sub_1E65E4DA8();
    sub_1E5DFE50C(v47, &qword_1ED076DE8, &qword_1E65F84B8);
    sub_1E65DEA88();
    return sub_1E6236B04(v44);
  }

  else
  {
    type metadata accessor for AppState(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    v37 = v63;
    sub_1E65E4C98();
    sub_1E5E1F544(v22);
    sub_1E5DFE50C(v16, &qword_1ED071F78, &unk_1E65EA3F0);
    v38 = *(v24 + 48);
    if (v38(v22, 1, v23) == 1)
    {
      sub_1E65D77C8();
      if (v38(v22, 1, v23) != 1)
      {
        sub_1E5DFE50C(v22, &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v24 + 32))(v62, v22, v23);
    }

    LODWORD(started) = sub_1E624D4A8();
    v50 = v64;
    sub_1E6237610(v64, v32);
    v75 = v50;
    v76 = v32;
    v77 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
    sub_1E65E4D78();
    v51 = v58;
    sub_1E65E4C98();
    (*(v57 + 8))(v13, v51);
    v75 = v50;
    v76 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
    v52 = v65;
    sub_1E65E4D78();
    v53 = v69;
    v54 = v67;
    sub_1E65E4C98();
    (*(v66 + 8))(v52, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
    sub_1E6237A2C();
    v55 = v72;
    sub_1E65E4DA8();
    v56 = sub_1E5DFE50C(v53, &qword_1ED0753C0, &unk_1E6606290);
    MEMORY[0x1EEE9AC00](v56);
    *(&v57 - 2) = v37;
    sub_1E5DF4334();
    sub_1E65E4DA8();
    sub_1E5DFE50C(v55, &qword_1ED076DE8, &qword_1E65F84B8);
    return sub_1E65DEA88();
  }
}

uint64_t sub_1E6237610(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D8668();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C0, &unk_1E6606290);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CD8, &qword_1E65F3678);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752C8, &unk_1E65F8500);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v29 - v18;
  type metadata accessor for AppState(0);
  v32 = a1;
  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  sub_1E65E4D78();
  sub_1E65E4C98();
  sub_1E60EFC20(v16);
  sub_1E5DFE50C(v9, &qword_1ED0753C0, &unk_1E6606290);
  (*(v11 + 8))(v13, v10);
  v20 = sub_1E65D9658();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v16, 1, v20) == 1)
  {
    v22 = &qword_1ED075CD8;
    v23 = &qword_1E65F3678;
    v24 = v16;
LABEL_5:
    sub_1E5DFE50C(v24, v22, v23);
    return 0;
  }

  sub_1E65D9618();
  (*(v21 + 8))(v16, v20);
  sub_1E65D85C8();
  (*(v30 + 8))(v6, v31);
  v25 = sub_1E65D9678();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v19, 1, v25) == 1)
  {
    v22 = &qword_1ED0752C8;
    v23 = &unk_1E65F8500;
    v24 = v19;
    goto LABEL_5;
  }

  v28 = sub_1E65D9668();
  (*(v26 + 8))(v19, v25);
  return v28;
}

unint64_t sub_1E6237A2C()
{
  result = qword_1ED076DF8;
  if (!qword_1ED076DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072978, &unk_1E65F0E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076DF8);
  }

  return result;
}

void sub_1E6237AEC(uint64_t a1)
{
  sub_1E5DF2250(319);
  if (v1 <= 0x3F)
  {
    sub_1E5DF2384(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1E6237BB8()
{
  result = qword_1ED076E08;
  if (!qword_1ED076E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076E08);
  }

  return result;
}

uint64_t sub_1E6237C0C(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for DynamicStartWorkoutButtonLoadState(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_1E6237C70(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0737C8, &unk_1E6605140);
    v4 = MEMORY[0x1E699CC08];
    sub_1E5DF2DE0(&qword_1ED0759F0, MEMORY[0x1E699CC08], MEMORY[0x1E699CC28]);
    sub_1E5DF2DE0(&qword_1ED0759F8, v4, MEMORY[0x1E699CC10]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E6237D58()
{
  result = qword_1ED076E18;
  if (!qword_1ED076E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076E18);
  }

  return result;
}

unint64_t sub_1E6237DB0()
{
  result = qword_1ED076E20;
  if (!qword_1ED076E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076E20);
  }

  return result;
}

unint64_t sub_1E6237E08()
{
  result = qword_1ED076E28;
  if (!qword_1ED076E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076E28);
  }

  return result;
}

uint64_t sub_1E6237E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v3[5] = v4;
  v3[6] = *(v4 + 64);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for RouteResource(0);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6237FA4, 0, 0);
}

uint64_t sub_1E6237FA4()
{
  sub_1E6238730(v0[3], v0[10], type metadata accessor for RouteResource);
  if (swift_getEnumCaseMultiPayload() == 24)
  {
    v1 = v0[10];
    v3 = v0[7];
    v2 = v0[8];
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    v7 = *v1;
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
    v9 = sub_1E65DB848();
    (*(*(v9 - 8) + 8))(v1 + v8, v9);
    v10 = sub_1E65E60A8();
    (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
    sub_1E6238730(v6, v3, type metadata accessor for AppComposer);
    v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    sub_1E5E1FA80(v3, v12 + v11);
    *(v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
    v13 = v7;
    sub_1E6059EAC(0, 0, v2, &unk_1E65F8740, v12);

    sub_1E5FAA54C();
    swift_allocError();
    *v14 = 3;
    swift_willThrow();
  }

  else
  {
    v17 = v0[2];
    v16 = v0[3];
    sub_1E62386D4(v0[10]);
    sub_1E6238730(v16, v17, type metadata accessor for RouteDestination);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1E623823C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E623825C, 0, 0);
}

uint64_t sub_1E623825C()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = ServiceSubscriptionService.performPurchase.getter();
  v0[4] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1E6238378;
  v4 = v0[3];

  return v6(v4);
}

uint64_t sub_1E6238378(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_1E60274D4;
  }

  else
  {

    v4 = sub_1E6238494;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6238494()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 141558274;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Finished purchase %{mask.hash}@", v8, 0x16u);
    sub_1E5F91480(v9);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    v7 = v4;
    v4 = *(v0 + 48);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1E6238624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E6237E74(a1, a2, a3);
}

uint64_t sub_1E62386D4(uint64_t a1)
{
  v2 = type metadata accessor for RouteResource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6238730(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6238798(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E623823C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E62388C8@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F58, &qword_1E65EA388);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v79 - v2;
  v4 = sub_1E65D7828();
  v80 = *(v4 - 8);
  v81 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65D7768();
  v83 = *(v7 - 8);
  v84 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v79 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v79 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F60, &qword_1E65EA390);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v79 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F68, &qword_1E65EA398);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v79 - v19;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v18 + 8))(v20, v17);
  sub_1E5F9AE38(v16, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload)
  {
    v22 = v84;
    v23 = v85;
    if (EnumCaseMultiPayload == 1)
    {
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F70, &qword_1E65EA3E8) + 48);
      v25 = *v14;
      v26 = sub_1E65D76A8();
      (*(*(v26 - 8) + 8))(v14 + v24, v26);
      goto LABEL_6;
    }

    sub_1E5DFE50C(v14, &qword_1ED071F60, &qword_1E65EA390);
LABEL_12:
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v36 = sub_1E65E3B68();
    __swift_project_value_buffer(v36, qword_1EE2EA2A0);
    v37 = sub_1E65E3B48();
    v38 = sub_1E65E6338();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_22;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "[MatchingAudioLanguageTransformable] Failed to resolve value for availableAudioLanguageCodes";
    goto LABEL_21;
  }

  v25 = *v14;
  v22 = v84;
  v23 = v85;
LABEL_6:
  sub_1E65D7838();
  sub_1E65D77F8();
  (*(v80 + 8))(v6, v81);
  v27 = v83;
  if ((*(v83 + 48))(v3, 1, v22) == 1)
  {

    sub_1E5DFE50C(v3, &qword_1ED071F58, &qword_1E65EA388);
LABEL_17:
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v41 = sub_1E65E3B68();
    __swift_project_value_buffer(v41, qword_1EE2EA2A0);
    v37 = sub_1E65E3B48();
    v38 = sub_1E65E6338();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_22;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "[MatchingAudioLanguageTransformable] Failed to determine user's locale";
LABEL_21:
    _os_log_impl(&dword_1E5DE9000, v37, v38, v40, v39, 2u);
    MEMORY[0x1E694F1C0](v39, -1, -1);
LABEL_22:

    return sub_1E65D7758();
  }

  (*(v27 + 32))(v23, v3, v22);
  v28 = sub_1E65D7788();
  if (!v28[2])
  {
    (*(v27 + 8))(v23, v22);

    goto LABEL_17;
  }

  v30 = v28[4];
  v29 = v28[5];

  v87[0] = v30;
  v87[1] = v29;
  sub_1E5F9AEA8();
  v31 = sub_1E65E66E8();

  if (v31[2])
  {
    v32 = v31[4];
    v33 = v31[5];
    v35 = v31[6];
    v34 = v31[7];
  }

  else
  {

    v32 = sub_1E65E6688();
    v33 = v43;
    v35 = v44;
    v34 = v45;
  }

  v46 = v79;
  v47 = MEMORY[0x1E694D730](v32, v33, v35, v34);
  v49 = v48;

  if (sub_1E65D7748() == 28261 && v50 == 0xE200000000000000)
  {
  }

  else
  {
    v51 = sub_1E65E6C18();

    if ((v51 & 1) == 0)
    {
      v54 = sub_1E65D7748();
      v56 = sub_1E637CA94(v54, v55, v25);

      if (v47 == 28261 && v49 == 0xE200000000000000)
      {
        v53 = 0;
        v52 = v56;
        goto LABEL_38;
      }

      v52 = v56;
      goto LABEL_35;
    }
  }

  v52 = 0;
  if (v47 != 28261 || (v53 = 0, v49 != 0xE200000000000000))
  {
LABEL_35:
    if (sub_1E65E6C18())
    {
      v53 = 0;
    }

    else
    {
      v53 = sub_1E637CA94(v47, v49, v25);
    }
  }

LABEL_38:

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v57 = sub_1E65E3B68();
  v58 = __swift_project_value_buffer(v57, qword_1EE2EA2A0);
  (*(v27 + 16))(v46, v23, v22);

  v82 = v58;
  v59 = sub_1E65E3B48();
  v60 = v27;
  v61 = sub_1E65E6338();

  v62 = os_log_type_enabled(v59, v61);
  LODWORD(v84) = v53;
  if (v62)
  {
    v63 = swift_slowAlloc();
    LODWORD(v81) = v52;
    v64 = v63;
    v65 = swift_slowAlloc();
    v80 = v49;
    v66 = v47;
    v67 = v65;
    v87[0] = v65;
    *v64 = 136315394;
    v68 = sub_1E65D7748();
    v69 = v46;
    v71 = v70;
    v72 = *(v60 + 8);
    v72(v69, v22);
    v73 = sub_1E5DFD4B0(v68, v71, v87);

    *(v64 + 4) = v73;
    *(v64 + 12) = 2080;
    *(v64 + 14) = sub_1E5DFD4B0(v66, v80, v87);
    _os_log_impl(&dword_1E5DE9000, v59, v61, "[MatchingAudioLanguageTransformable] storeFrontLanguage: %s deviceLanguage: %s", v64, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v67, -1, -1);
    v74 = v64;
    LOBYTE(v64) = v81;
    MEMORY[0x1E694F1C0](v74, -1, -1);

    v75 = v85;
    if ((v64 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_47:
    if ((v84 & 1) == 0)
    {

      sub_1E65D7748();
    }

    goto LABEL_50;
  }

  v72 = *(v60 + 8);
  v72(v46, v22);
  v75 = v85;
  if (v52)
  {
    goto LABEL_47;
  }

LABEL_42:
  if ((v84 & 1) == 0)
  {

    v76 = sub_1E65E3B48();
    v77 = sub_1E65E6338();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_1E5DE9000, v76, v77, "[MatchingAudioLanguageTransformable] No matching audio language found", v78, 2u);
      MEMORY[0x1E694F1C0](v78, -1, -1);
    }

    sub_1E65D7758();
    return (v72)(v75, v22);
  }

LABEL_50:
  sub_1E65D7778();
  return (v72)(v75, v22);
}

char *sub_1E6239324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v51 = a7;
  v52 = a1;
  v57 = a4;
  v58 = a6;
  v53 = a2;
  ObjectType = swift_getObjectType();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v12 = &v50 - v11;
  v13 = sub_1E65DDE68();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_blurBackgroundView;
  v18 = [objc_opt_self() effectWithStyle_];
  v19 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  *&v8[v17] = v19;
  (*(v14 + 104))(v16, *MEMORY[0x1E69CAB40], v13);
  v20 = v51;
  LOBYTE(v59) = 0;
  sub_1E65DDC88();
  v21 = v53;
  *&v8[OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_supportedOrientations] = v52;
  v22 = &v8[OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_onDeactivateApplication];
  *v22 = v21;
  v22[1] = a3;
  v23 = &v8[OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_onTerminateApplication];
  v24 = v58;
  *v23 = v57;
  v23[1] = a5;
  v25 = &v8[OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_requirePresentation];
  *v25 = v24;
  v25[1] = v20;
  v26 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v57 = a3;

  v58 = a5;

  v27 = [v26 initWithTarget:0 action:0];
  v28 = OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_menuGestureRecognizer;
  *&v8[OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_menuGestureRecognizer] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1E65EA660;
  v30 = v27;
  *(v29 + 32) = sub_1E65E6288();
  sub_1E5DEF738(0, &qword_1EE2D4500, 0x1E696AD98);
  v31 = sub_1E65E5EF8();

  [v30 setAllowedPressTypes_];

  [*&v8[v28] setEnabled_];
  v32 = objc_allocWithZone(sub_1E65DC3D8());
  *&v8[OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_activityIndicatorView] = sub_1E65DC3B8();
  v62.receiver = v8;
  v62.super_class = ObjectType;
  v33 = objc_msgSendSuper2(&v62, sel_initWithNibName_bundle_, 0, 0);
  v34 = v54;
  v35 = v56;
  (*(v54 + 16))(v12, v33 + OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController__decorateProgressEnabled, v56);
  v36 = v33;
  sub_1E65DDC48();
  (*(v34 + 8))(v12, v35);
  if (v59 == 1)
  {
    v37 = *&v36[OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_activityIndicatorView];
    v59 = 0;
    v60 = 0xE000000000000000;
    v38 = v37;
    sub_1E65E68A8();

    v59 = 0xD00000000000002ALL;
    v60 = 0x80000001E6614CA0;
    v61 = v36;
    v39 = sub_1E65E5CE8();
    MEMORY[0x1E694D7C0](v39);

    sub_1E65DC3A8();
  }

  v40 = v36;
  [v40 setModalPresentationStyle_];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v41 = sub_1E65E3B68();
  __swift_project_value_buffer(v41, qword_1EE2EA2A0);
  v42 = sub_1E65E3B48();
  v43 = sub_1E65E6338();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v59 = v45;
    *v44 = 136315138;
    v61 = v40;
    v46 = sub_1E65E5CE8();
    v48 = sub_1E5DFD4B0(v46, v47, &v59);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_1E5DE9000, v42, v43, "init RouteDetourNavigationController %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1E694F1C0](v45, -1, -1);
    MEMORY[0x1E694F1C0](v44, -1, -1);
  }

  return v40;
}

id sub_1E6239910()
{
  ObjectType = swift_getObjectType();
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v0;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    v8 = sub_1E65E5CE8();
    v10 = sub_1E5DFD4B0(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "deinit RouteDetourNavigationController %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E694F1C0](v7, -1, -1);
    MEMORY[0x1E694F1C0](v6, -1, -1);
  }

  v13.receiver = v3;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

void sub_1E6239BCC()
{
  v1 = v0;
  v31.receiver = v0;
  v31.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v31, sel_viewDidLoad);
  v2 = [v0 navigationBar];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E65EA660;
  *(v3 + 32) = [objc_opt_self() effectWithStyle_];
  sub_1E5DEF738(0, &qword_1EE2D4690, 0x1E69DD290);
  v4 = sub_1E65E5EF8();

  [v2 setBackgroundEffects_];

  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  [v5 addGestureRecognizer_];

  v7 = [v1 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = *&v1[OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_blurBackgroundView];
  [v7 insertSubview:v9 atIndex:0];

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = [v1 view];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  v12 = *&v1[OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_activityIndicatorView];
  [v10 addSubview_];

  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v13;
  sub_1E65E6518();

  v15 = [v1 view];
  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = v15;
  v17 = sub_1E65E64F8();

  sub_1E5FAA11C(v17);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65F3310;
  v19 = [v12 leadingAnchor];
  v20 = [v1 view];
  if (!v20)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = v20;
  v22 = [v20 leadingAnchor];

  v23 = [v19 constraintGreaterThanOrEqualToAnchor:v22 constant:20.0];
  *(inited + 32) = v23;
  v24 = [v12 topAnchor];
  v25 = [v1 view];
  if (v25)
  {
    v26 = v25;
    v27 = objc_opt_self();
    v28 = [v26 topAnchor];

    v29 = [v24 constraintGreaterThanOrEqualToAnchor:v28 constant:20.0];
    *(inited + 40) = v29;
    sub_1E5FAA11C(inited);
    sub_1E5DEF738(0, &qword_1EE2D45D0, 0x1E696ACD8);
    v30 = sub_1E65E5EF8();

    [v27 activateConstraints_];

    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1E623A04C()
{
  v1 = sub_1E65E4F38();
  v31 = *(v1 - 8);
  v32 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E65E4F68();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65E4F28();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1E65E4F88();
  v27 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  v15 = [v0 viewControllers];
  sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
  v16 = sub_1E65E5F18();

  if (v16 >> 62)
  {
    v17 = sub_1E65E67C8();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v17)
  {
    return sub_1E65DC398();
  }

  sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
  v26 = sub_1E65E63C8();
  sub_1E65E4F78();
  *v8 = 1;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E7F48], v5);
  MEMORY[0x1E694C9B0](v12, v8);
  (*(v6 + 8))(v8, v5);
  v19 = *(v27 + 8);
  v19(v12, v9);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1E623B16C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5E05AB0;
  aBlock[3] = &block_descriptor_7;
  v21 = _Block_copy(aBlock);

  sub_1E65E4F48();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E623B174();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078770, &unk_1E65EAB00);
  sub_1E5E05A4C();
  v22 = v29;
  v23 = v32;
  sub_1E65E6738();
  v24 = v26;
  MEMORY[0x1E694DDB0](v14, v4, v22, v21);
  _Block_release(v21);

  (*(v31 + 8))(v22, v23);
  (*(v28 + 8))(v4, v30);
  return (v19)(v14, v9);
}

void sub_1E623A588(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong viewControllers];

    sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
    v4 = sub_1E65E5F18();

    if (v4 >> 62)
    {
      v9 = sub_1E65E67C8();

      if (v9)
      {
        return;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v5)
      {
        return;
      }
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_activityIndicatorView);

    sub_1E65DC3C8();
  }
}

uint64_t sub_1E623A740(uint64_t a1)
{
  v3 = a1;
  *(v2 + 16) = v1;
  *(v2 + 96) = a1;
  *(v2 + 24) = sub_1E65E6058();
  *(v2 + 32) = sub_1E65E6048();
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_1E623A804;

  return sub_1E6394EA4(v3);
}

uint64_t sub_1E623A804()
{
  v1 = *v0;

  v3 = sub_1E65E5FC8();
  *(v1 + 48) = v3;
  *(v1 + 56) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E623A948, v3, v2);
}

uint64_t sub_1E623A948(uint64_t a1)
{
  v1[8] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();
  v1[9] = v3;
  v1[10] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E623A9D4, v3, v2);
}

uint64_t sub_1E623A9D4()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 96);
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  sub_1E65E3B38();
  sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
  v4 = sub_1E65E5EF8();
  [v1 setViewControllers:v4 animated:v2];

  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_1E623AB44;
  v6 = *(v0 + 96);

  return sub_1E6395954(v6);
}

uint64_t sub_1E623AB44()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1E623AC64, v3, v2);
}

uint64_t sub_1E623AC64()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E623ACC8, v1, v2);
}

uint64_t sub_1E623ACC8()
{

  sub_1E623A04C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E623AD98(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1E65E6058();
  v3[5] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E623AE34, v5, v4);
}

uint64_t sub_1E623AE34()
{
  v4 = (*(*(v0 + 32) + OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_requirePresentation) + **(*(v0 + 32) + OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_requirePresentation));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1E623AF38;
  v2 = *(v0 + 32);

  return v4(v2, 1);
}

uint64_t sub_1E623AF38()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1E623B058, v3, v2);
}

uint64_t sub_1E623B058()
{
  v1 = v0[4];
  v2 = v0[2];

  v2(v1);
  sub_1E623A04C();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E623B0D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E623A740(a1);
}

unint64_t sub_1E623B174()
{
  result = qword_1EE2D4A00;
  if (!qword_1EE2D4A00)
  {
    sub_1E65E4F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4A00);
  }

  return result;
}

void sub_1E623B1CC()
{
  v1 = sub_1E65DDE68();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_blurBackgroundView;
  v6 = [objc_opt_self() effectWithStyle_];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  *(v0 + v5) = v7;
  (*(v2 + 104))(v4, *MEMORY[0x1E69CAB40], v1);
  v8[15] = 0;
  sub_1E65DDC88();
  sub_1E65E69D8();
  __break(1u);
}

uint64_t sub_1E623B368@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1E65D8668();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752C8, &unk_1E65F8500);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v15 - v7;
  sub_1E65D9618();
  sub_1E65D85C8();
  (*(v3 + 8))(v5, v2);
  v9 = sub_1E65D9678();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_1E623BB68(v8);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = sub_1E65D9668();
    v13 = v14;
    result = (*(v10 + 8))(v8, v9);
  }

  *a1 = v12;
  a1[1] = v13;
  return result;
}

void sub_1E623B53C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DF0, &unk_1E65F84C0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076E68, &qword_1E65F87C0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - v9;
  v11 = a1[1];
  if (!v11)
  {
    v17 = sub_1E65DEDC8();
    sub_1E623BB10();
    swift_allocError();
    v19 = v18;
    v20 = MEMORY[0x1E699CDB8];
LABEL_19:
    (*(*(v17 - 8) + 104))(v19, *v20, v17);
    swift_willThrow();
    return;
  }

  v42 = v2;
  v12 = *a1;
  type metadata accessor for AppState(0);
  v41 = v12;
  v44[0] = v12;
  v44[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E28, &qword_1E65F1118);
  sub_1E65E4D78();
  sub_1E65E4C98();
  (*(v8 + 8))(v10, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v17 = sub_1E65DEDC8();
    sub_1E623BB10();
    swift_allocError();
    v19 = v21;
    v20 = MEMORY[0x1E699CDC0];
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *v6;
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076E78, &qword_1E65F87C8) + 48);
      *v43 = v14;
      v16 = sub_1E65D76A8();
      (*(*(v16 - 8) + 8))(&v6[v15], v16);
      return;
    }

    v32 = *(v6 + 3);
    v31 = *(v6 + 4);

    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v33 = sub_1E65E3B68();
    __swift_project_value_buffer(v33, qword_1EE2EA2A0);

    v34 = sub_1E65E3B48();
    v35 = sub_1E65E6338();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v44[0] = v37;
      *v36 = 136315394;
      *(v36 + 4) = sub_1E5DFD4B0(v41, v11, v44);
      *(v36 + 12) = 2080;
      v38 = sub_1E5DFD4B0(v32, v31, v44);

      *(v36 + 14) = v38;
      _os_log_impl(&dword_1E5DE9000, v34, v35, "Failed to fetch sample content session status for %s with error %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v37, -1, -1);
      MEMORY[0x1E694F1C0](v36, -1, -1);
    }

    else
    {
    }

    v17 = sub_1E65DEDC8();
    sub_1E623BB10();
    swift_allocError();
    v19 = v39;
    v20 = MEMORY[0x1E699CDC8];
    goto LABEL_19;
  }

  v22 = *v6;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v23 = sub_1E65E3B68();
  __swift_project_value_buffer(v23, qword_1EE2EA2A0);

  v24 = sub_1E65E3B48();
  v25 = sub_1E65E6338();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v44[0] = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_1E5DFD4B0(v41, v11, v44);
    *(v26 + 12) = 2080;
    v45 = v22;
    v28 = sub_1E65E5CE8();
    v30 = sub_1E5DFD4B0(v28, v29, v44);

    *(v26 + 14) = v30;
    _os_log_impl(&dword_1E5DE9000, v24, v25, "Returning previous sample content session status for %s: %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v27, -1, -1);
    MEMORY[0x1E694F1C0](v26, -1, -1);
  }

  *v43 = v22;
}

unint64_t sub_1E623BB10()
{
  result = qword_1ED076E70;
  if (!qword_1ED076E70)
  {
    sub_1E65DEDC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076E70);
  }

  return result;
}

uint64_t sub_1E623BB68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752C8, &unk_1E65F8500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E623BBD0(uint64_t a1)
{
  v2 = sub_1E623CCBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E623BC0C(uint64_t a1)
{
  v2 = sub_1E623CCBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E623BC48(uint64_t a1)
{
  v2 = sub_1E623CC68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E623BC84(uint64_t a1)
{
  v2 = sub_1E623CC68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E623BCC0()
{
  v1 = *v0;
  v2 = 0x636E75614C707061;
  v3 = 0xD000000000000016;
  v4 = 0x647055656E656373;
  if (v1 == 3)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E623BD74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E623EAE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E623BD9C(uint64_t a1)
{
  v2 = sub_1E623CA60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E623BDD8(uint64_t a1)
{
  v2 = sub_1E623CA60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E623BE14()
{
  v1 = *v0;
  v2 = 0x73646E756F62;
  v3 = 0x5379616C70736964;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x5463696D616E7964;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x617274726F507369;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E623BEC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E623ECA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E623BEF0(uint64_t a1)
{
  v2 = sub_1E623CB18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E623BF2C(uint64_t a1)
{
  v2 = sub_1E623CB18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E623BF68(uint64_t a1)
{
  v2 = sub_1E623CC14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E623BFA4(uint64_t a1)
{
  v2 = sub_1E623CC14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E623BFE0(uint64_t a1)
{
  v2 = sub_1E623CBC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E623C01C(uint64_t a1)
{
  v2 = sub_1E623CBC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppAction.encode(to:)(void *a1)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076E80, &qword_1E65F87D0);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v45 - v2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076E88, &qword_1E65F87D8);
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v45 - v3;
  *&v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076E90, &qword_1E65F87E0);
  *&v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  *&v57 = &v45 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076E98, &qword_1E65F87E8);
  v48 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v45 - v5;
  v6 = type metadata accessor for BrowsingIdentity(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076EA0, &qword_1E65F87F0);
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v10 = &v45 - v9;
  v11 = type metadata accessor for AppAction(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076EA8, &qword_1E65F87F8);
  v15 = *(v14 - 8);
  v62 = v14;
  v63 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E623CA60();
  v60 = v17;
  sub_1E65E6DA8();
  sub_1E623CAB4(v61, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v28 = v55;
    v29 = v56;
    v30 = v57;
    v31 = v58;
    v32 = v59;
    if (EnumCaseMultiPayload)
    {
      LOBYTE(v66) = 2;
      sub_1E623CC14();
      v35 = v62;
      v36 = v60;
      sub_1E65E6B18();
      sub_1E65E6B58();
      (*(v31 + 8))(v30, v32);
    }

    else
    {
      v33 = v8;
      sub_1E623DC0C(v13, v8, type metadata accessor for BrowsingIdentity);
      LOBYTE(v66) = 1;
      sub_1E623CC68();
      v34 = v28;
      v35 = v62;
      v36 = v60;
      sub_1E65E6B18();
      sub_1E623DC74(&qword_1ED074908, type metadata accessor for BrowsingIdentity, &protocol conformance descriptor for BrowsingIdentity);
      sub_1E65E6B78();
      (*(v48 + 8))(v34, v29);
      sub_1E5E006D4(v33, type metadata accessor for BrowsingIdentity);
    }

    return (*(v63 + 8))(v36, v35);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v38 = *v13;
    v39 = *(v13 + 1);
    LOBYTE(v66) = 3;
    sub_1E623CBC0();
    v40 = v49;
    v41 = v62;
    v42 = v60;
    sub_1E65E6B18();
    *&v66 = v38;
    *(&v66 + 1) = v39;
    sub_1E5DF6D3C();
    v43 = v51;
    sub_1E65E6B78();
    (*(v50 + 8))(v40, v43);
    (*(v63 + 8))(v42, v41);
    return sub_1E5E0476C(v38, v39);
  }

  else
  {
    v19 = v60;
    if (EnumCaseMultiPayload == 3)
    {
      v20 = *(v13 + 5);
      v21 = *(v13 + 3);
      v57 = *(v13 + 4);
      v58 = v21;
      v22 = v13[80];
      LOBYTE(v66) = 4;
      sub_1E623CB18();
      v23 = *(v13 + 1);
      v61 = *v13;
      v59 = v23;
      v24 = v52;
      v25 = v62;
      sub_1E65E6B18();
      v67 = v59;
      v66 = v61;
      v65 = 0;
      type metadata accessor for CGRect(0);
      sub_1E623DC74(&qword_1ED076EB0, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
      v26 = v54;
      v27 = v64;
      sub_1E65E6B78();
      if (!v27)
      {
        LOBYTE(v66) = 1;
        sub_1E65E6B58();
        *&v66 = v20;
        v65 = 2;
        sub_1E5F8BCBC();
        sub_1E65E6B78();
        v67 = v57;
        v66 = v58;
        v65 = 3;
        type metadata accessor for UIEdgeInsets(0);
        sub_1E623DC74(&qword_1EE2D46C8, type metadata accessor for UIEdgeInsets, MEMORY[0x1E69DC3B8]);
        sub_1E65E6B78();
        LOBYTE(v66) = v22;
        v65 = 4;
        sub_1E623CB6C();
        sub_1E65E6B38();
      }

      (*(v53 + 8))(v24, v26);
      return (*(v63 + 8))(v19, v25);
    }

    else
    {
      LOBYTE(v66) = 0;
      sub_1E623CCBC();
      v44 = v62;
      sub_1E65E6B18();
      (*(v46 + 8))(v10, v47);
      return (*(v63 + 8))(v19, v44);
    }
  }
}

unint64_t sub_1E623CA60()
{
  result = qword_1EE2D74D0;
  if (!qword_1EE2D74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D74D0);
  }

  return result;
}

uint64_t sub_1E623CAB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E623CB18()
{
  result = qword_1EE2D74B8;
  if (!qword_1EE2D74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D74B8);
  }

  return result;
}

unint64_t sub_1E623CB6C()
{
  result = qword_1EE2D6578;
  if (!qword_1EE2D6578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6578);
  }

  return result;
}

unint64_t sub_1E623CBC0()
{
  result = qword_1ED076EB8;
  if (!qword_1ED076EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076EB8);
  }

  return result;
}

unint64_t sub_1E623CC14()
{
  result = qword_1ED076EC0;
  if (!qword_1ED076EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076EC0);
  }

  return result;
}

unint64_t sub_1E623CC68()
{
  result = qword_1ED076EC8;
  if (!qword_1ED076EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076EC8);
  }

  return result;
}

unint64_t sub_1E623CCBC()
{
  result = qword_1EE2D74E8;
  if (!qword_1EE2D74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D74E8);
  }

  return result;
}

uint64_t AppAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076ED0, &qword_1E65F8800);
  v80 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v89 = &v67 - v3;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076ED8, &qword_1E65F8808);
  v79 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  *&v81 = &v67 - v4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076EE0, &qword_1E65F8810);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  *&v88 = &v67 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076EE8, &qword_1E65F8818);
  v75 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  *&v87 = &v67 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076EF0, &qword_1E65F8820);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  *&v85 = &v67 - v7;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076EF8, &unk_1E65F8828);
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v9 = &v67 - v8;
  v83 = type metadata accessor for AppAction(0);
  v10 = MEMORY[0x1EEE9AC00](v83);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v67 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v67 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v67 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v67 - v22;
  v24 = a1[3];
  v90 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1E623CA60();
  v25 = v91;
  sub_1E65E6D98();
  if (v25)
  {
    goto LABEL_9;
  }

  v68 = v18;
  v70 = v21;
  v26 = v85;
  v69 = v15;
  v27 = v87;
  v28 = v88;
  v67 = v12;
  v29 = v89;
  v91 = v23;
  v30 = v86;
  v31 = sub_1E65E6AF8();
  v32 = (2 * *(v31 + 16)) | 1;
  v99 = v31;
  v100 = v31 + 32;
  v101 = 0;
  v102 = v32;
  v33 = sub_1E5FBE3EC();
  if (v33 == 5 || v101 != v102 >> 1)
  {
    v37 = sub_1E65E68F8();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
    *v39 = v83;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    (*(v84 + 8))(v9, v30);
    swift_unknownObjectRelease();
LABEL_9:
    v40 = v90;
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  if (v33 <= 1u)
  {
    if (v33)
    {
      LOBYTE(v97) = 1;
      sub_1E623CC68();
      sub_1E65E6A68();
      v43 = v82;
      type metadata accessor for BrowsingIdentity(0);
      v54 = v30;
      sub_1E623DC74(&qword_1ED074900, type metadata accessor for BrowsingIdentity, &protocol conformance descriptor for BrowsingIdentity);
      v55 = v70;
      v56 = v74;
      sub_1E65E6AD8();
      (*(v75 + 8))(v27, v56);
      (*(v84 + 8))(v9, v54);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v44 = v91;
      sub_1E623DC0C(v55, v91, type metadata accessor for AppAction);
    }

    else
    {
      LOBYTE(v97) = 0;
      sub_1E623CCBC();
      v42 = v26;
      sub_1E65E6A68();
      v43 = v82;
      (*(v71 + 8))(v42, v72);
      (*(v84 + 8))(v9, v30);
      swift_unknownObjectRelease();
      v44 = v91;
      swift_storeEnumTagMultiPayload();
    }

    v45 = v90;
  }

  else if (v33 == 2)
  {
    LOBYTE(v97) = 2;
    sub_1E623CC14();
    v46 = v28;
    sub_1E65E6A68();
    v47 = v77;
    v48 = sub_1E65E6AB8();
    v49 = v84;
    v57 = v48;
    (*(v76 + 8))(v46, v47);
    (*(v49 + 8))(v9, v30);
    swift_unknownObjectRelease();
    v58 = v68;
    *v68 = v57 & 1;
    swift_storeEnumTagMultiPayload();
    v44 = v91;
    sub_1E623DC0C(v58, v91, type metadata accessor for AppAction);
    v45 = v90;
    v43 = v82;
  }

  else
  {
    if (v33 == 3)
    {
      LOBYTE(v97) = 3;
      sub_1E623CBC0();
      v34 = v81;
      sub_1E65E6A68();
      sub_1E5DF6CE4();
      v35 = v78;
      sub_1E65E6AD8();
      v36 = v84;
      (*(v79 + 8))(v34, v35);
      (*(v36 + 8))(v9, v30);
      swift_unknownObjectRelease();
      v59 = v69;
      *v69 = v97;
    }

    else
    {
      LOBYTE(v97) = 4;
      sub_1E623CB18();
      v50 = v29;
      sub_1E65E6A68();
      v51 = v30;
      type metadata accessor for CGRect(0);
      LOBYTE(v94) = 0;
      sub_1E623DC74(&qword_1ED076F00, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
      v52 = v73;
      sub_1E65E6AD8();
      v53 = v84;
      v87 = v98;
      v88 = v97;
      LOBYTE(v94) = 1;
      v60 = sub_1E65E6AB8();
      v61 = v80;
      v62 = v60;
      LOBYTE(v94) = 2;
      sub_1E5F8BF70();
      sub_1E65E6AD8();
      v63 = v96;
      type metadata accessor for UIEdgeInsets(0);
      v93 = 3;
      sub_1E623DC74(&qword_1ED0751D8, type metadata accessor for UIEdgeInsets, MEMORY[0x1E69DC3C8]);
      sub_1E65E6AD8();
      v81 = v95;
      v85 = v94;
      v92 = 4;
      sub_1E623DBB8();
      sub_1E65E6A98();
      (*(v61 + 8))(v50, v52);
      (*(v53 + 8))(v9, v51);
      swift_unknownObjectRelease();
      v64 = v93;
      v59 = v67;
      v65 = v87;
      *v67 = v88;
      *(v59 + 16) = v65;
      *(v59 + 32) = v62 & 1;
      *(v59 + 40) = v63;
      v66 = v81;
      *(v59 + 48) = v85;
      *(v59 + 64) = v66;
      *(v59 + 80) = v64;
    }

    swift_storeEnumTagMultiPayload();
    v44 = v91;
    sub_1E623DC0C(v59, v91, type metadata accessor for AppAction);
    v45 = v90;
    v43 = v82;
  }

  sub_1E623DC0C(v44, v43, type metadata accessor for AppAction);
  v40 = v45;
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

unint64_t sub_1E623DBB8()
{
  result = qword_1ED076F08;
  if (!qword_1ED076F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076F08);
  }

  return result;
}

uint64_t sub_1E623DC0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E623DC74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10Blackbeard9AppActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowsingIdentity(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppAction(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v46 - v12);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F40, &qword_1E65F8F80);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v46 - v21;
  v23 = &v46 + *(v20 + 56) - v21;
  sub_1E623CAB4(a1, &v46 - v21);
  sub_1E623CAB4(a2, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1E623CAB4(v22, v10);
        v25 = LOBYTE(v10[2].f64[0]);
        v26 = v10[2].f64[1];
        v27 = v10[4];
        v48 = v10[3];
        v49 = v27;
        v28 = LOBYTE(v10[5].f64[0]);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v52 = *v10->f64;
          v53 = *v23;
          v29 = v23[32];
          v30 = *(v23 + 5);
          v31 = *(v23 + 4);
          v46 = *(v23 + 3);
          v47 = v31;
          v32 = v23[80];
          if (!CGRectEqualToRect(v52, v53) || v25 != v29 || v26 != v30 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v48, v46), vceqq_f64(v49, v47)))) & 1) == 0)
          {
            goto LABEL_60;
          }

          if (v28 == 12)
          {
            if (v32 != 12)
            {
              goto LABEL_60;
            }
          }

          else if (v32 == 12 || (sub_1E65E07D8() & 1) == 0)
          {
            goto LABEL_60;
          }

          goto LABEL_56;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_56;
      }

      goto LABEL_26;
    }

    sub_1E623CAB4(v22, v13);
    v33 = *v13;
    v34 = v13[1];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1E5E0476C(v33, v34);
      goto LABEL_26;
    }

    v35 = 0x65726F6C707865;
    v36 = *v23;
    v37 = *(v23 + 1);
    if (v34 > 2)
    {
      if (v34 == 3)
      {
        v38 = 0xE600000000000000;
        v39 = 0x686372616573;
        goto LABEL_38;
      }

      if (v34 != 4)
      {
        if (v34 == 5)
        {
          v38 = 0xE500000000000000;
          v39 = 0x736E616C70;
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v38 = 0xE600000000000000;
      v39 = 0x7478654E7075;
    }

    else
    {
      if (!v34)
      {
        v38 = 0xE700000000000000;
        v39 = 0x65726F6C707865;
        goto LABEL_38;
      }

      if (v34 != 1)
      {
        if (v34 == 2)
        {
          v38 = 0xE700000000000000;
          v39 = 0x7972617262696CLL;
          goto LABEL_38;
        }

LABEL_35:
        v50 = 0x7974696C61646F6DLL;
        v51 = 0xE90000000000003ALL;
        MEMORY[0x1E694D7C0](v33, v34);
        sub_1E5E0476C(v33, v34);
        v35 = 0x65726F6C707865;
        v39 = v50;
        v38 = v51;
        goto LABEL_38;
      }

      v38 = 0xE600000000000000;
      v39 = 0x756F59726F66;
    }

LABEL_38:
    if (v37 > 2)
    {
      switch(v37)
      {
        case 3:
          v42 = 0xE600000000000000;
          v35 = 0x686372616573;
          goto LABEL_52;
        case 4:
          v42 = 0xE600000000000000;
          v35 = 0x7478654E7075;
          goto LABEL_52;
        case 5:
          v42 = 0xE500000000000000;
          v35 = 0x736E616C70;
          goto LABEL_52;
      }
    }

    else
    {
      switch(v37)
      {
        case 0:
          v42 = 0xE700000000000000;
          goto LABEL_52;
        case 1:
          v42 = 0xE600000000000000;
          v35 = 0x756F59726F66;
          goto LABEL_52;
        case 2:
          v42 = 0xE700000000000000;
          v35 = 0x7972617262696CLL;
LABEL_52:
          if (v39 == v35 && v38 == v42)
          {
          }

          else
          {
            v44 = sub_1E65E6C18();

            if ((v44 & 1) == 0)
            {
LABEL_60:
              sub_1E5E006D4(v22, type metadata accessor for AppAction);
              goto LABEL_27;
            }
          }

LABEL_56:
          sub_1E5E006D4(v22, type metadata accessor for AppAction);
          v41 = 1;
          return v41 & 1;
      }
    }

    v50 = 0x7974696C61646F6DLL;
    v51 = 0xE90000000000003ALL;
    v43 = v39;
    MEMORY[0x1E694D7C0](v36, v37, 0x65726F6C707865);
    sub_1E5E0476C(v36, v37);
    v39 = v43;
    v35 = v50;
    v42 = v51;
    goto LABEL_52;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1E623CAB4(v22, v18);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1E623DC0C(v23, v6, type metadata accessor for BrowsingIdentity);
      v41 = _s10Blackbeard16BrowsingIdentityO2eeoiySbAC_ACtFZ_0(v18, v6);
      sub_1E5E006D4(v6, type metadata accessor for BrowsingIdentity);
      sub_1E5E006D4(v18, type metadata accessor for BrowsingIdentity);
      sub_1E5E006D4(v22, type metadata accessor for AppAction);
      return v41 & 1;
    }

    sub_1E5E006D4(v18, type metadata accessor for BrowsingIdentity);
    goto LABEL_26;
  }

  sub_1E623CAB4(v22, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_26:
    sub_1E623EE70(v22);
LABEL_27:
    v41 = 0;
    return v41 & 1;
  }

  v40 = *v16 ^ *v23;
  sub_1E5E006D4(v22, type metadata accessor for AppAction);
  v41 = v40 ^ 1;
  return v41 & 1;
}

void sub_1E623E358(uint64_t a1)
{
  if (!qword_1EE2D4540)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for CGRect(255);
    type metadata accessor for UIEdgeInsets(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076F10, &qword_1E65F88C8);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2D4540);
    }
  }
}

unint64_t sub_1E623E50C()
{
  result = qword_1ED076F18;
  if (!qword_1ED076F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076F18);
  }

  return result;
}

unint64_t sub_1E623E564()
{
  result = qword_1ED076F20;
  if (!qword_1ED076F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076F20);
  }

  return result;
}

unint64_t sub_1E623E5BC()
{
  result = qword_1ED076F28;
  if (!qword_1ED076F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076F28);
  }

  return result;
}

unint64_t sub_1E623E614()
{
  result = qword_1ED076F30;
  if (!qword_1ED076F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076F30);
  }

  return result;
}

unint64_t sub_1E623E66C()
{
  result = qword_1ED076F38;
  if (!qword_1ED076F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076F38);
  }

  return result;
}

unint64_t sub_1E623E6C4()
{
  result = qword_1EE2D74D8;
  if (!qword_1EE2D74D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D74D8);
  }

  return result;
}

unint64_t sub_1E623E71C()
{
  result = qword_1EE2D74E0;
  if (!qword_1EE2D74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D74E0);
  }

  return result;
}

unint64_t sub_1E623E774()
{
  result = qword_1EE2D7478;
  if (!qword_1EE2D7478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7478);
  }

  return result;
}

unint64_t sub_1E623E7CC()
{
  result = qword_1EE2D7480;
  if (!qword_1EE2D7480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7480);
  }

  return result;
}

unint64_t sub_1E623E824()
{
  result = qword_1EE2D7498;
  if (!qword_1EE2D7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7498);
  }

  return result;
}

unint64_t sub_1E623E87C()
{
  result = qword_1EE2D74A0;
  if (!qword_1EE2D74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D74A0);
  }

  return result;
}

unint64_t sub_1E623E8D4()
{
  result = qword_1EE2D7488;
  if (!qword_1EE2D7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7488);
  }

  return result;
}

unint64_t sub_1E623E92C()
{
  result = qword_1EE2D7490;
  if (!qword_1EE2D7490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7490);
  }

  return result;
}

unint64_t sub_1E623E984()
{
  result = qword_1EE2D74A8;
  if (!qword_1EE2D74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D74A8);
  }

  return result;
}

unint64_t sub_1E623E9DC()
{
  result = qword_1EE2D74B0;
  if (!qword_1EE2D74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D74B0);
  }

  return result;
}

unint64_t sub_1E623EA34()
{
  result = qword_1EE2D74C0;
  if (!qword_1EE2D74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D74C0);
  }

  return result;
}

unint64_t sub_1E623EA8C()
{
  result = qword_1EE2D74C8;
  if (!qword_1EE2D74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D74C8);
  }

  return result;
}

uint64_t sub_1E623EAE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E75614C707061 && a2 == 0xEB00000000646568;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E6614DF0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E6614E10 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E6614E30 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x647055656E656373 && a2 == 0xEB00000000657461)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E623ECA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73646E756F62 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617274726F507369 && a2 == 0xEA00000000007469 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C6163 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E6614E50 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5463696D616E7964 && a2 == 0xEF657A6953657079)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E623EE70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F40, &qword_1E65F8F80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E623EEE8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void *a5)
{
  v54 = a5;
  v56 = a4;
  v63 = a1;
  v64 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v62 = v49 - v8;
  v9 = sub_1E65D7848();
  v58 = *(v9 - 8);
  v59 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v53 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077DC0, &qword_1E65FAB40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v51 = (v49 - v12);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v52 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v57 = (v49 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DB0, &qword_1E65F10F8);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076FE0, &qword_1E65F9198);
  v60 = *(v21 - 8);
  v61 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v49 - v22;
  v49[1] = *v5;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v24 = v63;
  v65 = v63;
  v66 = a2;
  sub_1E65E4D78();
  (*(v18 + 8))(v20, v17);
  v25 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65F32F0;
  *v16 = v24;
  *(v16 + 1) = a2;
  v27 = v24;
  v16[16] = 1;
  swift_storeEnumTagMultiPayload();

  v28 = v54;
  v29 = sub_1E649226C(v16, v56, v54);
  sub_1E5DFE50C(v16, &qword_1ED073950, &unk_1E65F4360);
  *(inited + 32) = v29;
  v55 = inited + 32;
  *v16 = v27;
  *(v16 + 1) = a2;
  v16[16] = 1;
  v30 = v28;
  swift_storeEnumTagMultiPayload();
  v49[0] = a2;

  v49[2] = v25;
  v31 = sub_1E6492AD8(v16, v64, v28);
  v32 = v23;
  sub_1E5DFE50C(v16, &qword_1ED073950, &unk_1E65F4360);
  *(inited + 40) = v31;
  swift_getKeyPath();
  v33 = v53;
  v34 = v50;
  sub_1E65E4EC8();
  v35 = v51;

  v56 = v32;
  sub_1E62DA2C8(v33, v35);
  (*(v58 + 8))(v33, v59);
  v36 = *(v52 + 48);
  if (v36(v35, 1, v34) == 1)
  {
    v37 = v57;
    v38 = v49[0];
    *v57 = v63;
    v37[1] = v38;
    *(v37 + 16) = 1;
    swift_storeEnumTagMultiPayload();
    v39 = v36(v35, 1, v34);

    if (v39 != 1)
    {
      sub_1E5DFE50C(v35, &qword_1ED077DC0, &qword_1E65FAB40);
    }
  }

  else
  {
    v37 = v57;
    sub_1E5FAB460(v35, v57, &unk_1ED0776E0, &qword_1E65EDC00);
  }

  v40 = sub_1E6200DD8(v37, v64, v30);
  if (qword_1ED071988 != -1)
  {
    swift_once();
  }

  v41 = qword_1ED0962F8;

  v42 = sub_1E63886EC(v41, v40, sub_1E5E278AC, 0, sub_1E5F88C58, 0);
  v43 = sub_1E65E60A8();
  v44 = v62;
  (*(*(v43 - 8) + 56))(v62, 1, 1, v43);
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = v40;

  sub_1E64B80F8(0, 0, v44, &unk_1E65F91E8, v45);

  sub_1E5DFE50C(v37, &unk_1ED0776E0, &qword_1E65EDC00);
  *(inited + 48) = v42;
  sub_1E5F9AF8C(inited);
  v47 = v46;
  swift_setDeallocating();
  swift_arrayDestroy();
  (*(v60 + 8))(v56, v61);
  return v47;
}

char *sub_1E623F674(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = v4;
  v116 = a4;
  v141 = a3;
  v109 = a1;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F88, &qword_1E65F90B8);
  v133 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v128 = &v95 - v8;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CF0, &unk_1E65F7110);
  v131 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v125 = &v95 - v9;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739A8, &qword_1E65F7120);
  v129 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v124 = &v95 - v10;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F90, &qword_1E65F90C0);
  v121 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v117 = &v95 - v11;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F98, &qword_1E65F90C8);
  v123 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v118 = &v95 - v12;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076FA0, &qword_1E65F90D0) - 8;
  MEMORY[0x1EEE9AC00](v126);
  v119 = &v95 - v13;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  MEMORY[0x1EEE9AC00](v115);
  v114 = (&v95 - v14);
  v138 = sub_1E65D76F8();
  v106 = *(v138 - 8);
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v142 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CA0, &unk_1E65F7160);
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v139 = &v95 - v16;
  v17 = type metadata accessor for AppComposer(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073860, &unk_1E65FA8F0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v104 = (&v95 - v22);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CB0, &unk_1E65F7170);
  v110 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v136 = &v95 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  v99 = *(v24 - 8);
  v137 = *(v99 + 64);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v97 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v95 - v27;
  v134 = &v95 - v27;
  *v28 = a1;
  *(v28 + 1) = a2;
  v105 = a2;
  v28[16] = 1;
  swift_storeEnumTagMultiPayload();
  v108 = *v5;
  sub_1E5E1DEAC(v5, v20);
  v29 = *(v18 + 80);
  v30 = ((v29 + 16) & ~v29) + v19;
  v31 = (v29 + 16) & ~v29;
  v32 = v29 | 7;
  v33 = swift_allocObject();
  sub_1E5E1FA80(v20, v33 + v31);
  sub_1E5E1DEAC(v5, v20);
  v34 = swift_allocObject();
  sub_1E5E1FA80(v20, v34 + v31);
  v135 = v5;
  sub_1E5E1DEAC(v5, v20);
  v100 = v30;
  v101 = v32;
  v35 = swift_allocObject();
  v102 = v31;
  sub_1E5E1FA80(v20, v35 + v31);
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_1E65F90E8;
  *(v36 + 24) = v35;
  v98 = v20;
  sub_1E5E1DEAC(v5, v20);
  v37 = swift_allocObject();
  sub_1E5E1FA80(v20, v37 + v31);
  v38 = sub_1E604BABC();

  v111 = v38;
  sub_1E65DED58();
  sub_1E65DEAC8();
  v39 = v134;
  v40 = v97;
  sub_1E5DFD1CC(v134, v97, &qword_1ED072AA8, &unk_1E65FA900);
  v41 = v106;
  v42 = *(v106 + 16);
  v103 = v106 + 16;
  v104 = v42;
  v43 = v142;
  v44 = v138;
  v42(v142, v141, v138);
  v99 = *(v99 + 80);
  v45 = (v99 + 16) & ~v99;
  v96 = v45 + v137;
  v46 = (v45 + v137 + *(v41 + 80)) & ~*(v41 + 80);
  v47 = v46 + v107;
  v48 = swift_allocObject();
  sub_1E5FAB460(v40, v48 + v45, &qword_1ED072AA8, &unk_1E65FA900);
  (*(v41 + 32))(v48 + v46, v43, v44);
  *(v48 + v47) = 0;
  sub_1E5DFD1CC(v39, v40, &qword_1ED072AA8, &unk_1E65FA900);
  v49 = swift_allocObject();
  sub_1E5FAB460(v40, v49 + v45, &qword_1ED072AA8, &unk_1E65FA900);
  type metadata accessor for AppFeature(0);
  sub_1E624525C(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v107 = sub_1E5FED46C(&qword_1EE2D6848, &unk_1ED077CB0, &unk_1E65F7170, MEMORY[0x1E699CCE0]);
  sub_1E65E4DE8();
  v50 = v98;
  sub_1E5E1DEAC(v135, v98);
  v51 = v116;
  v96 = v116[7];
  v106 = v116[9];
  sub_1E5DFD1CC(v39, v40, &qword_1ED072AA8, &unk_1E65FA900);
  v52 = (v100 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + v99 + 80) & ~v99;
  v54 = swift_allocObject();
  sub_1E5E1FA80(v50, v54 + v102);
  v55 = (v54 + v52);
  v56 = *(v51 + 3);
  v55[2] = *(v51 + 2);
  v55[3] = v56;
  v55[4] = *(v51 + 4);
  v57 = *(v51 + 1);
  *v55 = *v51;
  v55[1] = v57;
  sub_1E5FAB460(v40, v54 + v53, &qword_1ED072AA8, &unk_1E65FA900);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v58 = swift_allocObject();
  *(v58 + 16) = sub_1E6245394;
  *(v58 + 24) = v54;

  v59 = v136;
  v60 = v139;
  v61 = v140;
  v137 = sub_1E65E4F08();

  (*(v112 + 8))(v60, v113);
  (*(v110 + 8))(v59, v61);
  sub_1E5DFE50C(v134, &qword_1ED072AA8, &unk_1E65FA900);
  v62 = v109;
  v63 = v114;
  v64 = v105;
  *v114 = v109;
  *(v63 + 8) = v64;
  *(v63 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  v65 = v64;

  v66 = v141;
  v67 = v135;
  v68 = sub_1E6200DD8(v63, v141, v51);
  sub_1E5DFE50C(v63, &unk_1ED0776E0, &qword_1E65EDC00);
  v104(v142, v66, v138);
  v143 = v67;
  v144 = v62;
  v145 = v65;
  v146 = v66;
  v147 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D70, &qword_1E65F9100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076FA8, &qword_1E65F9108);
  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077D80, &qword_1E65EDC48);
  v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776B0, &unk_1E65EDE50);
  v71 = sub_1E604C584();
  v72 = sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
  v148 = v69;
  v149 = v70;
  v150 = v71;
  v151 = v72;
  swift_getOpaqueTypeConformance2();
  sub_1E6245084();
  v73 = v117;
  sub_1E65E45C8();
  v74 = sub_1E5FED46C(&qword_1ED076FC8, &qword_1ED076F90, &qword_1E65F90C0, MEMORY[0x1E697CD28]);
  v75 = sub_1E62438F0();
  v76 = v118;
  v77 = v120;
  sub_1E65E47F8();
  (*(v121 + 8))(v73, v77);
  v148 = v77;
  v149 = &type metadata for NavigationBarButtonStyle;
  v150 = v74;
  v151 = v75;
  swift_getOpaqueTypeConformance2();
  sub_1E6245140();
  v78 = v119;
  v79 = v122;
  sub_1E65E4948();
  (*(v123 + 8))(v76, v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076FD0, &qword_1E65F9118);
  v80 = v137;

  v81 = v124;
  v82 = v80;
  sub_1E65DEE28();
  sub_1E604C89C();

  v83 = v125;
  sub_1E65DE568();
  v84 = sub_1E5FED46C(&qword_1EE2D6810, &qword_1ED0739A8, &qword_1E65F7120, MEMORY[0x1E699CDD8]);
  v85 = v128;
  v86 = v127;
  MEMORY[0x1E69482C0](v81, v127, v84);
  v148 = v86;
  v149 = v84;
  swift_getOpaqueTypeConformance2();
  sub_1E5FED46C(&qword_1EE2D68A8, &unk_1ED077CF0, &unk_1E65F7110, MEMORY[0x1E699CB30]);
  v87 = v83;
  v88 = v132;
  v89 = v130;
  sub_1E65E08A8();
  (*(v133 + 8))(v85, v88);
  (*(v131 + 8))(v87, v89);
  (*(v129 + 8))(v81, v86);
  v90 = swift_allocObject();
  *(v90 + 16) = v82;
  *(v90 + 24) = v68;
  v91 = (v78 + *(v126 + 44));
  *v91 = sub_1E6245194;
  v91[1] = v90;
  v92 = type metadata accessor for BarButtonItem(0);
  v91[2] = 0;
  v91[3] = 0;
  v93 = objc_allocWithZone(v92);
  return sub_1E625BFB4(v142, v78);
}

char *sub_1E62408B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v158 = a4;
  v204 = a3;
  v151 = a1;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077C90, &qword_1E65F8F88);
  v187 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v185 = v140 - v7;
  v184 = sub_1E65DED38();
  v186 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v183 = v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739A8, &qword_1E65F7120);
  v182 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v180 = v140 - v9;
  v177 = sub_1E65E3F88();
  v178 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v176 = v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v161 = *(v11 - 8);
  v160 = *(v161 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v159 = v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v202 = v140 - v14;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0);
  v166 = *(v168 - 8);
  v167 = *(v166 + 64);
  v15 = MEMORY[0x1EEE9AC00](v168);
  v165 = v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v203 = v140 - v17;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  v164 = *(v157 - 8);
  v163 = *(v164 + 64);
  v18 = MEMORY[0x1EEE9AC00](v157);
  v162 = v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v212 = (v140 - v20);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F48, &qword_1E65F8F90);
  v172 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v169 = v140 - v21;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F50, &qword_1E65F8F98);
  v174 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v170 = v140 - v22;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F58, &qword_1E65F8FA0) - 8;
  v23 = MEMORY[0x1EEE9AC00](v175);
  v179 = v140 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v206 = v140 - v25;
  v210 = sub_1E65D76F8();
  v205 = *(v210 - 8);
  v200 = *(v205 + 64);
  v26 = MEMORY[0x1EEE9AC00](v210);
  v199 = v140 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v211 = v140 - v28;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CA0, &unk_1E65F7160);
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v194 = v140 - v29;
  v30 = type metadata accessor for AppComposer(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30 - 8);
  v198 = v140 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = v140 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073860, &unk_1E65FA8F0);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v197 = v140 - v37;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CB0, &unk_1E65F7170);
  v152 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v193 = v140 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  v190 = *(v39 - 8);
  v191 = *(v190 + 64);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v189 = v140 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v43 = v140 - v42;
  v207 = v140 - v42;
  *v43 = a1;
  *(v43 + 1) = a2;
  v149 = a2;
  v43[16] = 1;
  swift_storeEnumTagMultiPayload();
  v150 = *v4;
  sub_1E5E1DEAC(v4, v35);
  v44 = *(v31 + 80);
  v45 = ((v44 + 16) & ~v44) + v32;
  v46 = (v44 + 16) & ~v44;
  v47 = v44 | 7;
  v48 = swift_allocObject();
  sub_1E5E1FA80(v35, v48 + v46);
  sub_1E5E1DEAC(v4, v35);
  v49 = swift_allocObject();
  sub_1E5E1FA80(v35, v49 + v46);
  v213 = v4;
  sub_1E5E1DEAC(v4, v35);
  v214 = v45;
  v208 = v47;
  v50 = swift_allocObject();
  v209 = v46;
  v195 = v35;
  sub_1E5E1FA80(v35, v50 + v46);
  v51 = swift_allocObject();
  *(v51 + 16) = &unk_1E65F7190;
  *(v51 + 24) = v50;
  sub_1E5E1DEAC(v4, v35);
  v52 = swift_allocObject();
  sub_1E5E1FA80(v35, v52 + v46);
  v53 = sub_1E604BABC();

  v201 = v53;
  sub_1E65DED58();
  sub_1E65DEAC8();
  v54 = v189;
  sub_1E5DFD1CC(v207, v189, &qword_1ED072AA8, &unk_1E65FA900);
  v55 = v205;
  v56 = *(v205 + 16);
  v197 = (v205 + 16);
  v196 = v56;
  v57 = v210;
  v58 = v211;
  v56(v211, v204, v210);
  v141 = *(v190 + 80);
  v59 = (v141 + 16) & ~v141;
  v190 = v59 + v191;
  v156 = v141 | 7;
  v146 = *(v55 + 80);
  v60 = (v59 + v191 + v146) & ~v146;
  v61 = v60 + v200;
  v62 = swift_allocObject();
  sub_1E5FAB460(v54, v62 + v59, &qword_1ED072AA8, &unk_1E65FA900);
  v63 = *(v55 + 32);
  v147 = v55 + 32;
  v148 = v63;
  v63(v62 + v60, v58, v57);
  *(v62 + v61) = 0;
  v64 = v207;
  sub_1E5DFD1CC(v207, v54, &qword_1ED072AA8, &unk_1E65FA900);
  v65 = swift_allocObject();
  sub_1E5FAB460(v54, v65 + v59, &qword_1ED072AA8, &unk_1E65FA900);
  v156 = type metadata accessor for AppFeature(0);
  v155 = sub_1E624525C(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v140[1] = sub_1E5FED46C(&qword_1EE2D6848, &unk_1ED077CB0, &unk_1E65F7170, MEMORY[0x1E699CCE0]);
  sub_1E65E4DE8();
  v66 = v195;
  sub_1E5E1DEAC(v213, v195);
  v67 = v158;
  v142 = *v158;
  v143 = v158[3];
  v144 = v158[5];
  v145 = v158[7];
  v190 = v158[9];
  v68 = v64;
  v69 = v189;
  sub_1E5DFD1CC(v68, v189, &qword_1ED072AA8, &unk_1E65FA900);
  v70 = (v214 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v70 + v141 + 80) & ~v141;
  v72 = swift_allocObject();
  sub_1E5E1FA80(v66, v72 + v209);
  v73 = (v72 + v70);
  v74 = v67[3];
  v73[2] = v67[2];
  v73[3] = v74;
  v73[4] = v67[4];
  v75 = v67[1];
  *v73 = *v67;
  v73[1] = v75;
  sub_1E5FAB460(v69, v72 + v71, &qword_1ED072AA8, &unk_1E65FA900);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v76 = swift_allocObject();
  *(v76 + 16) = sub_1E62423E8;
  *(v76 + 24) = v72;

  v77 = v193;
  v78 = v194;
  v79 = v192;
  v191 = sub_1E65E4F08();

  (*(v153 + 8))(v78, v154);
  (*(v152 + 8))(v77, v79);
  sub_1E5DFE50C(v207, &qword_1ED072AA8, &unk_1E65FA900);
  v80 = v213;
  sub_1E5E1DEAC(v213, v66);
  v81 = v210;
  v82 = v204;
  v83 = v196;
  v196(v211, v204, v210);
  v84 = v212;
  v85 = v149;
  *v212 = v151;
  v84[1] = v85;
  *(v84 + 16) = 1;
  swift_storeEnumTagMultiPayload();

  v86 = v202;
  sub_1E6184404(v202);
  v87 = v80;
  v88 = v198;
  sub_1E5E1DEAC(v87, v198);
  v89 = v86;
  v90 = v159;
  sub_1E5DFD1CC(v89, v159, &qword_1ED073950, &unk_1E65F4360);
  v91 = v199;
  v83(v199, v82, v81);
  v92 = (v214 + *(v161 + 80)) & ~*(v161 + 80);
  v93 = (v160 + v146 + v92) & ~v146;
  v94 = (v200 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
  v95 = swift_allocObject();
  sub_1E5E1FA80(v88, v95 + v209);
  sub_1E5FAB460(v90, v95 + v92, &qword_1ED073950, &unk_1E65F4360);
  v148(v95 + v93, v91, v81);
  v96 = (v95 + v94);
  v97 = v67[3];
  v96[2] = v67[2];
  v96[3] = v97;
  v96[4] = v67[4];
  v98 = v67[1];
  *v96 = *v67;
  v96[1] = v98;
  v99 = (v95 + ((v94 + 87) & 0xFFFFFFFFFFFFFFF8));
  *v99 = nullsub_1;
  v99[1] = 0;
  swift_unknownObjectRetain();

  v100 = v203;
  sub_1E65DE518();
  sub_1E5DFE50C(v202, &qword_1ED073950, &unk_1E65F4360);
  v101 = v198;
  sub_1E5E1DEAC(v213, v198);
  v102 = v162;
  sub_1E5DFD1CC(v212, v162, &qword_1ED073958, &qword_1E65EDCD0);
  v103 = (v214 + *(v164 + 80)) & ~*(v164 + 80);
  v104 = swift_allocObject();
  v105 = v209;
  sub_1E5E1FA80(v101, v104 + v209);
  sub_1E5FAB460(v102, v104 + v103, &qword_1ED073958, &qword_1E65EDCD0);
  v106 = v166;
  v107 = v165;
  v108 = v168;
  (*(v166 + 16))(v165, v100, v168);
  v109 = (*(v106 + 80) + 16) & ~*(v106 + 80);
  v110 = swift_allocObject();
  (*(v106 + 32))(v110 + v109, v107, v108);
  sub_1E5E1DEAC(v213, v101);
  v111 = swift_allocObject();
  sub_1E5E1FA80(v101, v111 + v105);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F60, &qword_1E65F8FA8);
  sub_1E604CB00();
  sub_1E5FED46C(&qword_1EE2D68D0, &qword_1ED077CE0, &unk_1E65F72C0, MEMORY[0x1E699CAF8]);
  swift_getOpaqueTypeConformance2();
  v112 = v169;
  sub_1E65DE8A8();
  (*(v106 + 8))(v203, v108);
  sub_1E5DFE50C(v212, &qword_1ED073958, &qword_1E65EDCD0);
  v113 = v176;
  sub_1E65E3F78();
  v114 = sub_1E5FED46C(&qword_1ED076F68, &qword_1ED076F48, &qword_1E65F8F90, MEMORY[0x1E699CC78]);
  v115 = sub_1E624525C(&unk_1ED07A410, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v116 = v170;
  v117 = v171;
  v118 = v177;
  sub_1E65E47D8();
  (*(v178 + 8))(v113, v118);
  (*(v172 + 8))(v112, v117);
  v217 = v117;
  v218 = v118;
  v219 = v114;
  v220 = v115;
  swift_getOpaqueTypeConformance2();
  sub_1E62438F0();
  v119 = v206;
  v120 = v173;
  sub_1E65E47F8();
  (*(v174 + 8))(v116, v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F78, &qword_1E65F8FB0);
  v121 = v191;

  v122 = v180;
  sub_1E65DEE28();
  v123 = sub_1E5FED46C(&qword_1EE2D6810, &qword_1ED0739A8, &qword_1E65F7120, MEMORY[0x1E699CDD8]);
  v124 = v119;
  v125 = v181;
  MEMORY[0x1E69482C0](v122, v181, v123);
  (*(v182 + 8))(v122, v125);
  v126 = (v119 + *(v175 + 44));
  *v126 = sub_1E6243944;
  v126[1] = v121;
  v127 = type metadata accessor for DynamicBarButtonItem(0);
  v126[2] = 0;
  v126[3] = 0;
  v128 = objc_allocWithZone(v127);
  v129 = v195;
  v130 = v183;
  sub_1E65DED28();
  sub_1E624525C(&qword_1EE2D6820, MEMORY[0x1E699CD98], MEMORY[0x1E699CD90]);
  v131 = v185;
  v132 = v184;
  sub_1E65E4DF8();
  sub_1E65E4CC8();
  sub_1E65E4F08();
  (*(v187 + 8))(v131, v188);
  (*(v186 + 8))(v130, v132);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F80, &qword_1E65FA950);
  swift_allocObject();
  *&v128[OBJC_IVAR____TtC10Blackbeard20DynamicBarButtonItem_changeObserver] = sub_1E65E4D18();
  v133 = v199;
  v134 = v210;
  v135 = v211;
  v196(v199, v211, v210);
  v136 = v179;
  sub_1E5ED071C(v124, v179);
  v137 = sub_1E625BFDC(v133, v136);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v138 = v137;

  sub_1E65E4D08();

  v215 = swift_getKeyPath();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E624525C(&qword_1EE2D6840, MEMORY[0x1E699CD20], MEMORY[0x1E699CD28]);
  sub_1E65E4D08();

  sub_1E65E4CF8();

  sub_1E624395C(v129);

  sub_1E5ED0864(v206);
  (*(v205 + 8))(v135, v134);
  return v138;
}

uint64_t sub_1E62423EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076FC0, &qword_1E65F9110);
  sub_1E5FED46C(&qword_1ED076FB8, &qword_1ED076FC0, &qword_1E65F9110, MEMORY[0x1E6981F48]);
  return sub_1E65E4AF8();
}

uint64_t sub_1E6242498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, char *a6@<X8>)
{
  v70 = a5;
  v98 = a4;
  v69 = a3;
  v79 = a2;
  v96 = a1;
  v89 = a6;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v85 = *(v83 - 8);
  v84 = *(v85 + 64);
  v8 = MEMORY[0x1EEE9AC00](v83);
  v82 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v97 = (&v69 - v10);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0738F0, &qword_1E65F7280);
  v100 = *(v88 - 8);
  v11 = MEMORY[0x1EEE9AC00](v88);
  v87 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v69 - v13;
  v90 = sub_1E65D76F8();
  v103 = *(v90 - 8);
  v14 = v103[8];
  MEMORY[0x1EEE9AC00](v90);
  v102 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AppComposer(0);
  v76 = *(v15 - 8);
  v16 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v75 = *(v18 - 8);
  v19 = *(v75 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v71 = (&v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v69 - v21;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0);
  v99 = *(v81 - 8);
  v23 = MEMORY[0x1EEE9AC00](v81);
  v80 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v101 = &v69 - v25;
  *v22 = a2;
  *(v22 + 1) = a3;
  v22[16] = 1;
  swift_storeEnumTagMultiPayload();
  sub_1E5E1DEAC(v96, v17);
  sub_1E5DFD1CC(v22, &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ED073950, &unk_1E65F4360);
  v26 = v103;
  v27 = v103[2];
  v77 = v103 + 2;
  v78 = v27;
  v28 = v90;
  v27(v102, v98, v90);
  v29 = v70;
  v30 = v70[3];
  v91 = *v70;
  v92 = v30;
  v31 = v70[7];
  v93 = v70[5];
  v94 = v31;
  v95 = v70[9];
  v32 = *(v76 + 80);
  v33 = (v32 + 16) & ~v32;
  v76 = v33 + v16;
  v73 = v33;
  v34 = (v33 + v16 + *(v75 + 80)) & ~*(v75 + 80);
  v74 = *(v26 + 80);
  v35 = (v19 + v74 + v34) & ~v74;
  v72 = v32 | v74 | 7;
  v75 = v14 + 7;
  v36 = (v14 + 7 + v35) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  sub_1E5E1FA80(v17, v37 + v33);
  sub_1E5FAB460(v71, v37 + v34, &qword_1ED073950, &unk_1E65F4360);
  v38 = v103[4];
  v103 += 4;
  v71 = v38;
  (v38)(v37 + v35, v102, v28);
  v39 = (v37 + v36);
  v40 = v29[3];
  v39[2] = v29[2];
  v39[3] = v40;
  v39[4] = v29[4];
  v41 = v29[1];
  *v39 = *v29;
  v39[1] = v41;
  v42 = (v37 + ((v36 + 87) & 0xFFFFFFFFFFFFFFF8));
  *v42 = nullsub_1;
  v42[1] = 0;
  sub_1E604BABC();
  v43 = v69;
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();

  sub_1E65DE518();
  sub_1E5DFE50C(v22, &qword_1ED073950, &unk_1E65F4360);
  v44 = v97;
  *v97 = v79;
  v44[1] = v43;
  *(v44 + 16) = 1;
  v45 = v44;
  swift_storeEnumTagMultiPayload();
  v46 = v17;
  sub_1E5E1DEAC(v96, v17);
  v47 = v82;
  sub_1E5DFD1CC(v45, v82, &unk_1ED0776E0, &qword_1E65EDC00);
  v48 = v102;
  v49 = v90;
  v78(v102, v98, v90);
  v50 = (v76 + *(v85 + 80)) & ~*(v85 + 80);
  v51 = (v84 + v74 + v50) & ~v74;
  v52 = (v75 + v51) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  sub_1E5E1FA80(v46, v53 + v73);
  sub_1E5FAB460(v47, v53 + v50, &unk_1ED0776E0, &qword_1E65EDC00);
  (v71)(v53 + v51, v48, v49);
  v54 = (v53 + v52);
  v55 = v29[3];
  v54[2] = v29[2];
  v54[3] = v55;
  v54[4] = v29[4];
  v56 = v29[1];
  *v54 = *v29;
  v54[1] = v56;
  sub_1E604C89C();
  swift_unknownObjectRetain();

  v57 = v86;
  sub_1E65DE4E8();
  sub_1E5DFE50C(v97, &unk_1ED0776E0, &qword_1E65EDC00);
  v58 = *(v99 + 16);
  v59 = v80;
  v60 = v81;
  v58(v80, v101, v81);
  v61 = *(v100 + 16);
  v63 = v87;
  v62 = v88;
  v61(v87, v57, v88);
  v64 = v89;
  v58(v89, v59, v60);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076FD8, &qword_1E65F9190);
  v61(&v64[*(v65 + 48)], v63, v62);
  v66 = *(v100 + 8);
  v66(v57, v62);
  v67 = *(v99 + 8);
  v67(v101, v60);
  v66(v63, v62);
  return (v67)(v59, v60);
}

uint64_t sub_1E6242DE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776B0, &unk_1E65EDE50);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v15 - v1;
  v3 = sub_1E65E4548();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65E49F8();
  sub_1E65E4498();
  sub_1E65E44B8();

  (*(v4 + 104))(v6, *MEMORY[0x1E6980EA8], v3);
  v8 = sub_1E65E4578();

  (*(v4 + 8))(v6, v3);
  KeyPath = swift_getKeyPath();
  v10 = sub_1E65E49C8();
  v11 = swift_getKeyPath();
  v15[2] = v7;
  v15[3] = v7;
  v15[4] = KeyPath;
  v15[5] = v8;
  v15[6] = v11;
  v15[7] = v10;
  v12 = *MEMORY[0x1E697E6E8];
  v13 = sub_1E65E3DD8();
  (*(*(v13 - 8) + 104))(v2, v12, v13);
  sub_1E624525C(&qword_1EE2D4EF0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E65E5B98();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D80, &qword_1E65EDC48);
    sub_1E604C584();
    v15[1] = KeyPath;
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
    sub_1E65E4848();
    sub_1E5DFE50C(v2, &unk_1ED0776B0, &unk_1E65EDE50);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E624310C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1E65E60A8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  sub_1E64B80F8(0, 0, v6, &unk_1E65F9128, v8);
}

uint64_t sub_1E6243224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E6243244, 0, 0);
}

uint64_t sub_1E6243244()
{
  *(v0 + 60) = 0;
  *(v0 + 56) = 0;
  *(v0 + 62) = 1;
  *(v0 + 32) = sub_1E65E6058();
  *(v0 + 40) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62432EC, v2, v1);
}

uint64_t sub_1E62432EC()
{

  sub_1E65E4EE8();

  return MEMORY[0x1EEE6DFA0](sub_1E6243360, 0, 0);
}

uint64_t sub_1E6243360(uint64_t a1)
{
  *(v1 + 56) = 0;
  *(v1 + 48) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62433F0, v3, v2);
}

uint64_t sub_1E62433F0()
{

  sub_1E65E4EE8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E624345C()
{
  v0 = sub_1E65DEBD8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E63969B4();
  (*(v1 + 104))(v3, *MEMORY[0x1E699CD10], v0);
  return sub_1E65DEBA8();
}

uint64_t sub_1E624354C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1E65E60A8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_1E64B80F8(0, 0, v4, &unk_1E65F90B0, v6);
}

uint64_t sub_1E6243678()
{
  *(v0 + 36) = 0;
  *(v0 + 32) = 0;
  *(v0 + 38) = 1;
  sub_1E65E6058();
  *(v0 + 24) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6202C14, v2, v1);
}

uint64_t sub_1E624371C()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0) - 8);
  v5 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1E64495A4(v0 + v2, v5);
}

uint64_t sub_1E62437F4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1E64495A8(v2);
}

uint64_t sub_1E6243870(uint64_t a1)
{
  type metadata accessor for AppComposer(0);

  return sub_1E6448834();
}

unint64_t sub_1E62438F0()
{
  result = qword_1ED076F70;
  if (!qword_1ED076F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076F70);
  }

  return result;
}

uint64_t sub_1E624395C(uint64_t a1)
{
  v2 = type metadata accessor for AppComposer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E62439B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6243658(a1, v4, v5, v6);
}

uint64_t sub_1E6243A6C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6000CF4(a1, v1 + v5);
}

uint64_t sub_1E6243B44(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E6034BC0(a1, v4);
}

uint64_t objectdestroy_19Tm_0()
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

uint64_t objectdestroy_22Tm_0()
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

uint64_t sub_1E62440DC(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E60012AC(a1, a2, v6);
}

uint64_t objectdestroy_25Tm_0()
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

unint64_t sub_1E6245084()
{
  result = qword_1ED076FB0;
  if (!qword_1ED076FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076FA8, &qword_1E65F9108);
    sub_1E5FED46C(&qword_1ED076FB8, &qword_1ED076FC0, &qword_1E65F9110, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076FB0);
  }

  return result;
}

unint64_t sub_1E6245140()
{
  result = qword_1ED077D00;
  if (!qword_1ED077D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077D00);
  }

  return result;
}

uint64_t sub_1E624519C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6243224(a1, v4, v5, v7, v6);
}

uint64_t sub_1E624525C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E62452D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E6202B5C(a1, v4, v5, v6);
}

uint64_t sub_1E624539C()
{
  v1[6] = v0;
  v2 = type metadata accessor for EngagementService();
  v1[7] = v2;
  v1[8] = v2[-1].Description;
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E624545C, 0, 0);
}

uint64_t sub_1E624545C()
{
  v1 = *(v0 + 56);
  v2 = (*(v0 + 48) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router);
  *(v0 + 80) = OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router;
  *(v0 + 88) = 0;
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = byte_1F5FA87A0;
  *(v0 + 120) = byte_1F5FA87A0;
  v6 = *__swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v7 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
  v8 = v7 + *(type metadata accessor for AppComposer(0) + 20);
  v9 = type metadata accessor for AppEnvironment(0);
  (*(v4 + 16))(v3, v6 + v8 + *(v9 + 60), v1);
  v10 = EngagementService.registerPlacement.getter();
  *(v0 + 96) = v11;
  (*(v4 + 8))(v3, v1);
  v14 = (v10 + *v10);
  v12 = swift_task_alloc();
  *(v0 + 104) = v12;
  *v12 = v0;
  v12[1] = sub_1E6245604;

  return v14(v5);
}

uint64_t sub_1E6245604(void *a1)
{
  *(*v2 + 112) = v1;

  if (v1)
  {
    v4 = sub_1E6245930;
  }

  else
  {

    v4 = sub_1E6245730;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6245730()
{
  v1 = *(v0 + 88) + 1;
  if (*(v0 + 88) == 2)
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 88) = v1;
    v4 = *(v0 + 72);
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    v7 = (*(v0 + 48) + *(v0 + 80));
    v8 = *(&unk_1F5FA8780 + v1 + 32);
    *(v0 + 120) = v8;
    v9 = *__swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v10 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
    v11 = v10 + *(type metadata accessor for AppComposer(0) + 20);
    v12 = type metadata accessor for AppEnvironment(0);
    (*(v6 + 16))(v4, v9 + v11 + *(v12 + 60), v5);
    v13 = EngagementService.registerPlacement.getter();
    *(v0 + 96) = v14;
    (*(v6 + 8))(v4, v5);
    v16 = (v13 + *v13);
    v15 = swift_task_alloc();
    *(v0 + 104) = v15;
    *v15 = v0;
    v15[1] = sub_1E6245604;

    return v16(v8);
  }
}

uint64_t sub_1E6245930()
{
  v33 = v0;

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 112);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    *v8 = 136315394;
    v10 = sub_1E65DB7F8();
    v12 = sub_1E5DFD4B0(v10, v11, &v32);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v13 = MEMORY[0x1E694E6D0](*(v0 + 24), *(v0 + 32));
    v15 = sub_1E5DFD4B0(v13, v14, &v32);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Failed to register placement %s with error %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 88) + 1;
  if (*(v0 + 88) == 2)
  {

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    *(v0 + 88) = v16;
    v19 = *(v0 + 72);
    v20 = *(v0 + 56);
    v21 = *(v0 + 64);
    v22 = (*(v0 + 48) + *(v0 + 80));
    v23 = *(&unk_1F5FA8780 + v16 + 32);
    *(v0 + 120) = v23;
    v24 = *__swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v25 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
    v26 = v25 + *(type metadata accessor for AppComposer(0) + 20);
    v27 = type metadata accessor for AppEnvironment(0);
    (*(v21 + 16))(v19, v24 + v26 + *(v27 + 60), v20);
    v28 = EngagementService.registerPlacement.getter();
    *(v0 + 96) = v29;
    (*(v21 + 8))(v19, v20);
    v31 = (v28 + *v28);
    v30 = swift_task_alloc();
    *(v0 + 104) = v30;
    *v30 = v0;
    v30[1] = sub_1E6245604;

    return v31(v23);
  }
}

uint64_t sub_1E6245CCC(uint64_t a1)
{
  v3 = sub_1E65E2948();
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65D9758();
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v28[1] = v1;
  v37 = MEMORY[0x1E69E7CC0];
  sub_1E601BDE0(0, v8, 0);
  v9 = v37;
  v10 = a1 + 56;
  result = sub_1E65E6748();
  v12 = result;
  v13 = 0;
  v29 = a1 + 64;
  v30 = v8;
  v31 = a1 + 56;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v16 = v12 >> 6;
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_21;
    }

    v17 = *(a1 + 36);
    v35 = v13;
    v36 = v17;
    v18 = v33;
    sub_1E5E1D6F4(*(a1 + 48) + *(v34 + 72) * v12, v33, MEMORY[0x1E699F490]);
    sub_1E5FBE400(v7);
    sub_1E624D428(v18, MEMORY[0x1E699F490]);
    v37 = v9;
    v20 = *(v9 + 16);
    v19 = *(v9 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1E601BDE0((v19 > 1), v20 + 1, 1);
      v9 = v37;
    }

    *(v9 + 16) = v20 + 1;
    result = sub_1E5E1E458(v7, v9 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v20, MEMORY[0x1E69CC2A8]);
    v14 = 1 << *(a1 + 32);
    if (v12 >= v14)
    {
      goto LABEL_22;
    }

    v10 = v31;
    v21 = *(v31 + 8 * v16);
    if ((v21 & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    if (v36 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v12 & 0x3F));
    if (v22)
    {
      v14 = __clz(__rbit64(v22)) | v12 & 0x7FFFFFFFFFFFFFC0;
      v15 = v30;
    }

    else
    {
      v23 = v16 << 6;
      v24 = v16 + 1;
      v15 = v30;
      v25 = (v29 + 8 * v16);
      while (v24 < (v14 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1E5F87098(v12, v36, 0);
          v14 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v12, v36, 0);
    }

LABEL_4:
    v13 = v35 + 1;
    v12 = v14;
    if (v35 + 1 == v15)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E6246074(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t (*a7)(uint64_t a1), unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v92 = a8;
  v116 = a7;
  v87 = a6;
  v88 = a5;
  v113 = a4;
  v91 = a3;
  v109 = a2;
  v114 = a9;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076FE8, &qword_1E65F9208);
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v82 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v86 = &v82 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v111 = *(v15 - 8);
  v112 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v110 = &v82 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v115 = (&v82 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v107 = &v82 - v20;
  v21 = sub_1E65D76F8();
  v22 = *(v21 - 8);
  v105 = v21;
  v106 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v108 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1E65E29E8();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v117 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AppComposer(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25 - 8);
  v104 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v102 = (&v82 - v30);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v101 = &v82 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v99 = &v82 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v82 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v82 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v82 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v82 - v44;
  v46 = sub_1E65E2A68();
  MEMORY[0x1EEE9AC00](v46 - 8);
  v103 = &v82 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1E65E2818();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v118 = &v82 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *a1;
  sub_1E5E1D6F4(a1, v45, type metadata accessor for AppComposer);
  v49 = *(v26 + 80);
  v50 = (v49 + 16) & ~v49;
  v100 = swift_allocObject();
  v83 = v45;
  sub_1E5E1E458(v45, v100 + v50, type metadata accessor for AppComposer);
  sub_1E5E1D6F4(a1, v43, type metadata accessor for AppComposer);
  v98 = swift_allocObject();
  sub_1E5E1E458(v43, v98 + v50, type metadata accessor for AppComposer);
  sub_1E5E1D6F4(a1, v40, type metadata accessor for AppComposer);
  v97 = swift_allocObject();
  sub_1E5E1E458(v40, v97 + v50, type metadata accessor for AppComposer);
  sub_1E5E1D6F4(a1, v37, type metadata accessor for AppComposer);
  v96 = swift_allocObject();
  sub_1E5E1E458(v37, v96 + v50, type metadata accessor for AppComposer);
  v51 = v99;
  sub_1E5E1D6F4(a1, v99, type metadata accessor for AppComposer);
  v52 = swift_allocObject();
  sub_1E5E1E458(v51, v52 + v50, type metadata accessor for AppComposer);
  v53 = v101;
  sub_1E5E1D6F4(a1, v101, type metadata accessor for AppComposer);
  v54 = swift_allocObject();
  sub_1E5E1E458(v53, v54 + v50, type metadata accessor for AppComposer);
  v55 = v102;
  sub_1E5E1D6F4(a1, v102, type metadata accessor for AppComposer);
  v56 = swift_allocObject();
  sub_1E5E1E458(v55, v56 + v50, type metadata accessor for AppComposer);
  v102 = a1;
  v57 = a1;
  v59 = v104;
  v58 = v105;
  sub_1E5E1D6F4(v57, v104, type metadata accessor for AppComposer);
  v101 = v49;
  v60 = swift_allocObject();
  sub_1E5E1E458(v59, v60 + v50, type metadata accessor for AppComposer);
  v61 = v106;
  v62 = v107;
  sub_1E65E2A58();
  sub_1E65E2808();
  sub_1E5DFD1CC(v109, v62, &unk_1ED077760, &unk_1E66011D0);
  v63 = *(v61 + 48);
  if (v63(v62, 1, v58) == 1)
  {
    sub_1E65D76E8();
    if (v63(v62, 1, v58) != 1)
    {
      sub_1E5DFE50C(v62, &unk_1ED077760, &unk_1E66011D0);
    }
  }

  else
  {
    (*(v61 + 32))(v108, v62, v58);
  }

  sub_1E5DFD1CC(v113, v115, &unk_1ED077750, &unk_1E66011C0);
  v64 = sub_1E65E2CF8();
  v65 = 1;
  v66 = v116;
  (*(*(v64 - 8) + 48))(v116, 1, v64);
  v67 = swift_projectBox();
  v68 = v110;
  v69 = v111;
  v70 = v112;
  (*(v111 + 16))(v110, v67, v112);
  sub_1E65DDC48();
  (*(v69 + 8))(v68, v70);
  if (!v119[0])
  {
    v65 = 2;
  }

  v71 = sub_1E64F7464(9 - v65, 0);
  result = sub_1E624CA64(v119, (v71 + 4), 9 - v65, v65, 8);
  if (result == 9 - v65)
  {
    v114 = a10;
    sub_1E5DFD1CC(v66, v86, &qword_1ED072B60, &unk_1E65FA490);

    sub_1E65E2968();
    v116 = type metadata accessor for AppComposer;
    v73 = v102;
    v74 = v83;
    sub_1E5E1D6F4(v102, v83, type metadata accessor for AppComposer);
    v75 = swift_allocObject();
    v115 = type metadata accessor for AppComposer;
    sub_1E5E1E458(v74, v75 + v50, type metadata accessor for AppComposer);
    type metadata accessor for AppFeature(0);
    sub_1E624D3E0(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
    sub_1E624D3E0(&qword_1ED076FF0, MEMORY[0x1E699F470], MEMORY[0x1E699F468]);
    v76 = v93;
    v77 = v85;
    sub_1E65E4DE8();
    sub_1E5E1D6F4(v73, v74, v116);
    v78 = swift_allocObject();
    sub_1E5E1E458(v74, v78 + v50, v115);
    v80 = v117;
    v79 = v118;
    v81 = sub_1E65E4F08();

    (*(v94 + 8))(v76, v95);
    (*(v89 + 8))(v80, v90);
    (*(v84 + 8))(v79, v77);
    return v81;
  }

  else
  {
    __break(1u);
  }

  return result;
}