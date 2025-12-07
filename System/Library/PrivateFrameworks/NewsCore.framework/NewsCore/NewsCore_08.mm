uint64_t sub_1B64F09C4()
{
  *(*v1 + 592) = v0;

  if (v0)
  {
    v2 = sub_1B64F207C;
  }

  else
  {
    v2 = sub_1B64F0AF8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64F0AF8()
{
  v1 = MEMORY[0x1B8C945E0]();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[39];
    v15 = MEMORY[0x1E69E7CC0];
    sub_1B67D9FAC();
    v6 = *(v3 + 16);
    v4 = v3 + 16;
    v5 = v6;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v8 = *(v4 + 56);
    do
    {
      v9 = v0[40];
      v10 = v0[38];
      v11 = v5(v9, v7, v10);
      MEMORY[0x1B8C94E60](v11);
      (*(v4 - 8))(v9, v10);
      sub_1B67D9F7C();
      sub_1B67D9FBC();
      sub_1B67D9FCC();
      sub_1B67D9F8C();
      v7 += v8;
      --v2;
    }

    while (v2);

    v12 = v15;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v0[75] = v12;
  v13 = swift_task_alloc();
  v0[76] = v13;
  *v13 = v0;
  v13[1] = sub_1B64F0CA0;

  return sub_1B64F343C(v12);
}

uint64_t sub_1B64F0CA0()
{
  *(*v1 + 616) = v0;

  if (v0)
  {
    v2 = sub_1B64F2220;
  }

  else
  {
    v2 = sub_1B64F0DD4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64F0DD4()
{
  v2 = v0[61];
  v1 = v0[62];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[44];
  sub_1B645745C(v0[69], v0[70]);

  sub_1B641FC34(v2, v1);
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B64F0F70()
{
  *(*v1 + 680) = v0;

  if (v0)
  {

    swift_setDeallocating();
    swift_arrayDestroy();
    v2 = sub_1B64F23C4;
  }

  else
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    v2 = sub_1B64F10E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64F10E8()
{
  while (2)
  {
    result = (*(*(v0 + 224) + 8))(*(v0 + 248), *(v0 + 216));
    while (1)
    {
      while (1)
      {
        v14 = *(v0 + 648) + 1;
        if (v14 == *(v0 + 632))
        {
          v43 = *(v0 + 488);
          v42 = *(v0 + 496);
          v45 = *(v0 + 264);
          v44 = *(v0 + 272);
          v46 = *(v0 + 256);
          sub_1B645745C(*(v0 + 552), *(v0 + 560));

          sub_1B641FC34(v43, v42);

          (*(v45 + 8))(v44, v46);

          v47 = *(v0 + 8);

          return v47();
        }

        *(v0 + 648) = v14;
        v15 = *(v0 + 624);
        if (v14 >= *(v15 + 16))
        {
          __break(1u);
          return result;
        }

        v16 = *(v0 + 224);
        v17 = *(v16 + 16);
        v17(*(v0 + 248), v15 + ((*(v0 + 712) + 32) & ~*(v0 + 712)) + *(v16 + 72) * v14, *(v0 + 216));
        v18 = sub_1B67D928C();
        *(v0 + 80) = v18;
        type metadata accessor for CKError(0);
        sub_1B6415F9C(&unk_1EB94B9E0, type metadata accessor for CKError, &unk_1B6818FC8);
        sub_1B67D850C();

        v19 = *(v0 + 88);
        if (v19 != 26)
        {
          break;
        }

        v50 = *(v0 + 720);
        v48 = *(v0 + 716);
        v51 = *(v0 + 248);
        log = *(v0 + 224);
        v54 = *(v0 + 216);
        v2 = *(v0 + 144);
        v49 = *(v0 + 136);
        v3 = MEMORY[0x1B8C94550]();
        v4 = [v3 recordID];

        sub_1B67D943C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B798, &qword_1B6818B78);
        v5 = sub_1B67D91DC();
        v6 = *(v5 - 8);
        v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1B68100D0;
        v9 = [v4 zoneID];
        v10 = [objc_allocWithZone(MEMORY[0x1E695BA80]) initWithZoneID_];

        *(v8 + v7) = v10;
        (*(v6 + 104))(v8 + v7, v48, v5);
        sub_1B67D940C();

        sub_1B67D943C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7A0, &qword_1B6818B80);
        v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1B68100D0;
        *(v12 + v11) = v4;
        (*(v2 + 104))(v12 + v11, v50, v49);
        v13 = v4;
        sub_1B67D941C();

        result = (log[1].isa)(v51, v54);
      }

      if (v19 == 14)
      {
        break;
      }

      v20 = *(v0 + 248);
      v21 = *(v0 + 232);
      v22 = *(v0 + 216);
      v17(*(v0 + 240), v20, v22);
      v17(v21, v20, v22);
      v23 = sub_1B67D8A7C();
      v24 = sub_1B67D9C8C();
      v25 = os_log_type_enabled(v23, v24);
      v26 = *(v0 + 240);
      v27 = *(v0 + 248);
      v28 = *(v0 + 224);
      v29 = *(v0 + 232);
      v30 = *(v0 + 216);
      if (v25)
      {
        v55 = *(v0 + 248);
        v31 = swift_slowAlloc();
        loga = v23;
        v32 = swift_slowAlloc();
        *v31 = 138543618;
        v33 = MEMORY[0x1B8C94550]();
        v34 = *(v28 + 8);
        v34(v26, v30);
        *(v31 + 4) = v33;
        *v32 = v33;
        *(v31 + 12) = 2112;
        sub_1B67D928C();
        v35 = _swift_stdlib_bridgeErrorToNSError();
        v34(v29, v30);
        *(v31 + 14) = v35;
        v32[1] = v35;
        _os_log_impl(&dword_1B63EF000, loga, v24, "Failed to save record to cloud, record=%{public}@, error=%@", v31, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A780, &qword_1B6810140);
        swift_arrayDestroy();
        MEMORY[0x1B8C96DF0](v32, -1, -1);
        MEMORY[0x1B8C96DF0](v31, -1, -1);

        result = (v34)(v55, v30);
      }

      else
      {

        v36 = *(v28 + 8);
        v36(v29, v30);
        v36(v26, v30);
        result = (v36)(v27, v30);
      }
    }

    v37 = sub_1B67D928C();
    v38 = sub_1B67D951C();
    *(v0 + 656) = v38;

    if (!v38)
    {
      continue;
    }

    break;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A3B0, &qword_1B6810120);
  inited = swift_initStackObject();
  *(v0 + 664) = inited;
  *(inited + 16) = xmmword_1B68100E0;
  *(inited + 32) = v38;
  v40 = v38;
  v41 = swift_task_alloc();
  *(v0 + 672) = v41;
  *v41 = v0;
  v41[1] = sub_1B64F0F70;

  return sub_1B64F2FDC(inited);
}

uint64_t sub_1B64F1854()
{
  *(*v1 + 704) = v0;

  if (v0)
  {
    v2 = sub_1B64F1D60;
  }

  else
  {
    v2 = sub_1B64F1968;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64F1968(uint64_t a1)
{
  v23 = v1;
  v2 = sub_1B67D8A7C();
  v3 = sub_1B67D9C9C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[70];
  v6 = v1[69];
  if (v4)
  {
    v7 = v1[66];
    v8 = v1[64];
    v20 = v1[61];
    v21 = v1[62];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136446210;
    v11 = (*(v7 + 8))(v8, v7);
    v13 = sub_1B6456540(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1B63EF000, v2, v3, "Did handle identity loss from sync engine, zone=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1B8C96DF0](v10, -1, -1);
    MEMORY[0x1B8C96DF0](v9, -1, -1);
    sub_1B645745C(v6, v5);

    v14 = v20;
    v15 = v21;
  }

  else
  {
    v17 = v1[61];
    v16 = v1[62];
    sub_1B645745C(v1[69], v1[70]);

    v14 = v17;
    v15 = v16;
  }

  sub_1B641FC34(v14, v15);

  v18 = v1[1];

  return v18();
}

uint64_t sub_1B64F1BFC()
{
  sub_1B641FC34(v0[61], v0[62]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B64F1D60()
{
  v26 = v0;
  v1 = v0[88];
  v2 = v1;
  v3 = sub_1B67D8A7C();
  v4 = sub_1B67D9C9C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[88];
  v7 = v0[69];
  if (v5)
  {
    v22 = v0[70];
    v8 = v0[66];
    v9 = v0[64];
    v23 = v0[61];
    v24 = v0[62];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v10 = 136446466;
    v13 = (*(v8 + 8))(v9, v8);
    v15 = sub_1B6456540(v13, v14, &v25);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2114;
    v16 = v6;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_1B63EF000, v3, v4, "Failed to handle identity loss from sync engine, zone=%{public}s, error=%{public}@", v10, 0x16u);
    sub_1B6418AB4(v11, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1B8C96DF0](v12, -1, -1);
    MEMORY[0x1B8C96DF0](v10, -1, -1);
    sub_1B645745C(v7, v22);

    sub_1B641FC34(v23, v24);
  }

  else
  {
    v19 = v0[61];
    v18 = v0[62];
    sub_1B645745C(v0[69], v0[70]);

    sub_1B641FC34(v19, v18);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1B64F207C()
{
  v2 = v0[61];
  v1 = v0[62];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[44];
  sub_1B645745C(v0[69], v0[70]);

  sub_1B641FC34(v2, v1);
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B64F2220()
{
  v2 = v0[61];
  v1 = v0[62];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[44];
  sub_1B645745C(v0[69], v0[70]);

  sub_1B641FC34(v2, v1);
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B64F23C4()
{
  v1 = v0[82];
  v3 = v0[61];
  v2 = v0[62];
  v4 = v0[33];
  v11 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v8 = v0[27];
  v7 = v0[28];
  sub_1B645745C(v0[69], v0[70]);

  sub_1B641FC34(v3, v2);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v11, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B64F2590()
{
  v1[5] = v0;
  v1[6] = *v0;
  v1[7] = *v0;
  v2 = sub_1B67D922C();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64F26D8, 0, 0);
}

void sub_1B64F26D8()
{
  if (*(v0[5] + 16))
  {

    sub_1B64251D4((v0 + 2));
    v1 = v0[7];

    v3 = v0[2];
    v2 = v0[3];
    v0[12] = v3;
    v0[13] = v2;
    v4 = swift_task_alloc();
    v0[14] = v4;
    v5 = v1[10];
    v0[15] = v5;
    v6 = v1[11];
    v0[16] = v6;
    v7 = v1[12];
    v0[17] = v7;
    v8 = v1[13];
    v0[18] = v8;
    *v4 = v0;
    v4[1] = sub_1B64F2824;

    sub_1B64252D4(v3, v2, v5, v6, v7, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B64F2824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[19] = a1;
  v5[20] = a2;
  v5[21] = a3;
  v5[22] = v3;

  if (v3)
  {
    v6 = sub_1B64F2E68;
  }

  else
  {
    v6 = sub_1B64F293C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void *sub_1B64F293C(uint64_t a1)
{
  v2 = v1[17];
  v3 = v1[15];
  v50 = v1[6];
  v51 = v1[22];
  v46 = v1[5];
  v48 = v1[11];
  sub_1B67D943C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B798, &qword_1B6818B78);
  v4 = sub_1B67D91DC();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B68100D0;
  *(v7 + v6) = sub_1B65013CC(v3, v2);
  (*(v5 + 104))(v7 + v6, *MEMORY[0x1E695B5D8], v4);
  sub_1B67D940C();
  v8 = v1;

  sub_1B67D943C();
  v1[4] = v46;
  v9 = sub_1B67D8E4C();
  (*(*(v9 - 8) + 56))(v48, 1, 1, v9);
  WitnessTable = swift_getWitnessTable();
  v11 = PrivateZoneType.allModelIDs(orderBy:)(v48, v50, WitnessTable);
  if (v51)
  {
    v12 = v1[20];
    v13 = v1[21];
    v15 = v1[12];
    v14 = v1[13];
    sub_1B6418AB4(v1[11], &qword_1EB94B510, &unk_1B68102C0);
    sub_1B645745C(v12, v13);

    sub_1B641FC34(v15, v14);

    v16 = v1[1];
LABEL_10:

    return v16();
  }

  v17 = v11;
  sub_1B6418AB4(v1[11], &qword_1EB94B510, &unk_1B68102C0);
  v18 = v17[2];
  if (!v18)
  {
LABEL_9:

    v38 = v8;
    v41 = v8 + 20;
    v40 = v8[20];
    v39 = v41[1];
    v43 = v38[12];
    v42 = v38[13];
    sub_1B67D941C();

    sub_1B645745C(v40, v39);

    sub_1B641FC34(v43, v42);

    v16 = v38[1];
    goto LABEL_10;
  }

  v19 = v8[9];
  v53 = MEMORY[0x1E69E7CC0];
  result = sub_1B64FC714(0, v18, 0);
  v21 = 0;
  v22 = v53;
  v44 = *MEMORY[0x1E695B5F0];
  v45 = v19;
  v47 = v18;
  v23 = v17 + 5;
  v49 = v17;
  while (v21 < v17[2])
  {
    v25 = v8[20];
    v24 = v8[21];
    v26 = v8[17];
    v52 = v22;
    v27 = v8[15];
    v28 = v8[16];
    v30 = *(v23 - 1);
    v29 = *v23;

    sub_1B646B894(v25, v24);
    sub_1B6471CBC(v30, v29, v25, v24, v27, v28, v26);
    v31 = v8[10];
    *v31 = v32;

    v33 = sub_1B67D922C();
    (*(*(v33 - 8) + 104))(v31, v44, v33);

    v22 = v52;
    v35 = *(v52 + 16);
    v34 = *(v52 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_1B64FC714((v34 > 1), v35 + 1, 1);
      v22 = v52;
    }

    ++v21;
    v36 = v8[10];
    v37 = v8[8];
    *(v22 + 16) = v35 + 1;
    result = (*(v45 + 32))(v22 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v35, v36, v37);
    v23 += 2;
    v17 = v49;
    if (v47 == v21)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B64F2E68()
{
  sub_1B641FC34(v0[12], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B64F2EDC(_OWORD *a1)
{
  v2 = sub_1B67D93DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  v8[2] = a1[2];
  sub_1B67D923C();
  sub_1B6501AF0(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B64F2FDC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B64F3024, 0, 0);
}

void sub_1B64F3024()
{
  if (*(v0[6] + 16))
  {

    sub_1B64251D4((v0 + 2));
    v1 = v0[7];

    v3 = v0[2];
    v2 = v0[3];
    v0[8] = v3;
    v0[9] = v2;
    v4 = swift_task_alloc();
    v0[10] = v4;
    v5 = v1[10];
    v0[11] = v5;
    v6 = v1[11];
    v0[12] = v6;
    v7 = v1[12];
    v0[13] = v7;
    v8 = v1[13];
    v0[14] = v8;
    *v4 = v0;
    v4[1] = sub_1B64F3160;

    sub_1B64252D4(v3, v2, v5, v6, v7, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B64F3160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[17] = v3;

  if (v3)
  {
    v6 = sub_1B64F33D8;
  }

  else
  {

    v6 = sub_1B64F3284;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B64F3284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 128);
  v6 = *(v4 + 112);
  v7 = *(v4 + 120);
  v8 = *(v4 + 96);
  v21 = *(v4 + 104);
  v9 = *(v4 + 88);
  v11 = *(v4 + 64);
  v10 = *(v4 + 72);
  type metadata accessor for PrivateZoneChange(0, v8, v6, a4);
  v20 = *(v4 + 40);
  *(v4 + 32) = sub_1B67D950C();
  v12 = swift_task_alloc();
  *(v12 + 16) = v20;
  *(v12 + 32) = v7;
  *(v12 + 40) = v5;
  *(v12 + 48) = v4 + 32;
  sub_1B64B6EE8(sub_1B650005C, v12, v11, v10, v9, v8, v21, v6);
  v13 = *(v4 + 120);
  v14 = *(v4 + 128);
  v16 = *(v4 + 64);
  v15 = *(v4 + 72);
  v17 = *(v4 + 48);

  sub_1B64F8620(v17, (v4 + 32));
  sub_1B645745C(v13, v14);
  sub_1B641FC34(v16, v15);

  v18 = *(v4 + 8);

  return v18();
}

uint64_t sub_1B64F33D8()
{
  sub_1B641FC34(v0[8], v0[9]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1B64F343C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B64F3484, 0, 0);
}

void sub_1B64F3484()
{
  if (*(v0[6] + 16))
  {

    sub_1B64251D4((v0 + 2));
    v1 = v0[7];

    v3 = v0[2];
    v2 = v0[3];
    v0[8] = v3;
    v0[9] = v2;
    v4 = swift_task_alloc();
    v0[10] = v4;
    v5 = v1[10];
    v0[11] = v5;
    v6 = v1[11];
    v0[12] = v6;
    v7 = v1[12];
    v0[13] = v7;
    v8 = v1[13];
    v0[14] = v8;
    *v4 = v0;
    v4[1] = sub_1B64F35C0;

    sub_1B64252D4(v3, v2, v5, v6, v7, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B64F35C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[17] = v3;

  if (v3)
  {
    v6 = sub_1B6501330;
  }

  else
  {

    v6 = sub_1B64F36E4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B64F36E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 128);
  v6 = *(v4 + 112);
  v7 = *(v4 + 120);
  v8 = *(v4 + 96);
  v21 = *(v4 + 104);
  v9 = *(v4 + 88);
  v11 = *(v4 + 64);
  v10 = *(v4 + 72);
  type metadata accessor for PrivateZoneChange(0, v8, v6, a4);
  v20 = *(v4 + 40);
  *(v4 + 32) = sub_1B67D950C();
  v12 = swift_task_alloc();
  *(v12 + 16) = v20;
  *(v12 + 32) = v7;
  *(v12 + 40) = v5;
  *(v12 + 48) = v4 + 32;
  sub_1B64B6EE8(sub_1B64FFFE4, v12, v11, v10, v9, v8, v21, v6);
  v13 = *(v4 + 120);
  v14 = *(v4 + 128);
  v16 = *(v4 + 64);
  v15 = *(v4 + 72);
  v17 = *(v4 + 48);

  sub_1B64F8620(v17, (v4 + 32));
  sub_1B645745C(v13, v14);
  sub_1B641FC34(v16, v15);

  v18 = *(v4 + 8);

  return v18();
}

uint64_t sub_1B64F3838(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FA0, &qword_1B68182C0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v10 - v4;
  v6 = a1[1];
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = a1[2];
  sub_1B646CF4C(v3);
  sub_1B67D876C();
  v7 = sub_1B67D877C();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  sub_1B67D8DDC();
}

uint64_t PrivateZone.nextFetchChangesOptions(_:syncEngine:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = *v1;
  v3 = sub_1B67D91AC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64F3A64, 0, 0);
}

uint64_t sub_1B64F3A64()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A3B0, &qword_1B6810120);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B68100E0;
  v6 = *(v3 + 80);
  v7 = *(v3 + 96);
  *(v5 + 32) = sub_1B65013CC(v6, v7);
  *v1 = v5;
  (*(v2 + 104))(v1, *MEMORY[0x1E695B5D0], v4);
  sub_1B67D91BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B780, &qword_1B6818780);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B788, &qword_1B6818788) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B68100D0;
  v11 = (v10 + v9);
  *v11 = sub_1B65013CC(v6, v7);
  (*(v7 + 32))(v6, v7);
  sub_1B67D917C();
  sub_1B64FF040(v10);
  swift_setDeallocating();
  sub_1B6418AB4(v11, &qword_1EB94B788, &qword_1B6818788);
  swift_deallocClassInstance();
  sub_1B67D919C();

  v12 = v0[1];

  return v12();
}

uint64_t PrivateZone.nextRecordZoneChangeBatch(_:syncEngine:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1B64F3D48;

  return sub_1B64F402C(a1, a2);
}

uint64_t sub_1B64F3D48()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B64F3E7C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B64F3E7C()
{
  v1 = v0[5];
  v2 = v1;
  v3 = sub_1B67D8A7C();
  v4 = sub_1B67D9C8C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[5];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B63EF000, v3, v4, "Failed to produce next change batch for sync engine, error=%{public}@", v7, 0xCu);
    sub_1B6418AB4(v8, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v8, -1, -1);
    MEMORY[0x1B8C96DF0](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[2];
  v12 = sub_1B67D920C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = v0[1];

  return v13();
}

uint64_t sub_1B64F402C(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v3[19] = *v2;
  v4 = sub_1B67D922C();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64F4118, 0, 0);
}

void sub_1B64F4118()
{
  if (*(v0[18] + 16))
  {

    sub_1B64251D4((v0 + 6));
    v1 = v0[19];

    v3 = v0[6];
    v2 = v0[7];
    v0[23] = v3;
    v0[24] = v2;
    v4 = swift_task_alloc();
    v0[25] = v4;
    v5 = v1[10];
    v0[26] = v5;
    v6 = v1[11];
    v0[27] = v6;
    v7 = v1[12];
    v0[28] = v7;
    v8 = v1[13];
    v0[29] = v8;
    *v4 = v0;
    v4[1] = sub_1B64F425C;

    sub_1B64252D4(v3, v2, v5, v6, v7, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B64F425C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[30] = a1;
  v5[31] = a2;
  v5[32] = a3;
  v5[33] = v3;

  if (v3)
  {
    v6 = sub_1B64F4CB8;
  }

  else
  {
    v6 = sub_1B64F4374;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B64F4374(uint64_t a1)
{
  v2 = *(v1 + 264);
  v3 = *(v1 + 224);
  v4 = *(v1 + 208);
  v5 = *(v1 + 136);
  sub_1B67D943C();
  v6 = sub_1B67D93FC();

  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  v8 = sub_1B64F4EAC(sub_1B64FF6D8, v7, v6);

  v9 = (*(v3 + 32))(v4, v3);
  if (v10)
  {
    v9 = sub_1B67D91EC();
  }

  sub_1B64F517C(v9, v8);
  v77 = v11;
  v13 = v12;
  v14 = MEMORY[0x1E69E7CC0];
  v81 = MEMORY[0x1E69E7CC0];
  v82 = MEMORY[0x1E69E7CC0];
  v16 = v15 >> 1;

  v79 = v16;
  v71 = v2;
  if (v13 != v16)
  {
    v31 = *(v1 + 168);
    v76 = v31 + 16;
    v72 = *MEMORY[0x1E695B5F0];
    v32 = (v31 + 96);
    v70 = *MEMORY[0x1E695B5F8];
    v33 = v13;
    while (v33 >= v13)
    {
      if (v33 <= v79)
      {
        v34 = v79;
      }

      else
      {
        v34 = v33;
      }

      while (1)
      {
        if (v34 == v33)
        {
          goto LABEL_41;
        }

        v35 = *(v1 + 176);
        v36 = *(v1 + 160);
        v37 = v33 + 1;
        (*(v31 + 16))(v35, v77 + *(v31 + 72) * v33, v36);
        v38 = (*(v31 + 88))(v35, v36);
        if (v38 != v72)
        {
          break;
        }

        v39 = *(v1 + 176);
        (*v32)(v39, *(v1 + 160));
        v40 = *v39;
        MEMORY[0x1B8C949F0]();
        if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B67D97FC();
        }

        sub_1B67D983C();

        v14 = v81;
        ++v33;
        if (v79 == v37)
        {
          goto LABEL_4;
        }
      }

      if (v38 != v70)
      {
        return sub_1B67DA07C();
      }

      v41 = *(v1 + 176);
      (*v32)(v41, *(v1 + 160));
      v42 = *v41;
      MEMORY[0x1B8C949F0]();
      if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B67D97FC();
      }

      sub_1B67D983C();

      if (v79 - 1 == v33++)
      {
        goto LABEL_4;
      }
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_4:
  v74 = *(v1 + 248);
  v17 = *(v1 + 224);
  v18 = *(v1 + 232);
  v20 = *(v1 + 208);
  v19 = *(v1 + 216);
  v80 = *(v1 + 192);
  v78 = *(v1 + 184);
  v21 = *(v1 + 144);

  *(v1 + 80) = v14;
  v22 = swift_task_alloc();
  *(v22 + 16) = v74;
  *(v22 + 32) = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7A8, &qword_1B6818B88);
  *(v1 + 16) = v20;
  *(v1 + 24) = v19;
  *(v1 + 32) = v17;
  *(v1 + 40) = v18;
  _s2IDVMa(0, v1 + 16);
  sub_1B6458C04(&qword_1EB94B7B0, &qword_1EB94B7A8, &qword_1B6818B88);
  v23 = sub_1B67D973C();

  v24 = swift_task_alloc();
  v24[2] = v20;
  v24[3] = v19;
  v24[4] = v17;
  v24[5] = v18;
  v75 = v23;
  v24[6] = v23;
  swift_getWitnessTable();
  sub_1B67D959C();
  sub_1B67D959C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1B641CFC8(sub_1B64FF8C8, v24, v78, v80, v20, v19, TupleTypeMetadata2, v17, v18);
  if (!v71)
  {
    v44 = *(v1 + 144);

    v46 = *(v1 + 64);
    v45 = *(v1 + 72);
    v47 = MEMORY[0x1E69E7CC8];
    *(v1 + 96) = v75;
    *(v1 + 104) = v47;
    v48 = swift_task_alloc();
    v48[2] = v46;
    v48[3] = v44;
    v48[4] = v45;
    sub_1B67D988C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7B8, &qword_1B6818B90);
    swift_getWitnessTable();
    sub_1B67D976C();

    v76 = *(v1 + 88);
    if (!(v14 >> 62))
    {
      v50 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v50)
      {
LABEL_25:
        if (v50 < 1)
        {
          __break(1u);
          return result;
        }

        v51 = 0;
        v52 = *(v1 + 168);
        v73 = *MEMORY[0x1E695B5F0];
        do
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v57 = MEMORY[0x1B8C95180](v51, v14);
          }

          else
          {
            v57 = *(v14 + 8 * v51 + 32);
          }

          v58 = v57;
          if ((v76 & 0xC000000000000001) != 0)
          {
            v59 = v57;
            v60 = sub_1B67DA05C();

            if (v60)
            {
              *(v1 + 120) = v60;
              sub_1B63F3DA0(0, &qword_1EB949A60, 0x1E695BA60);
              swift_dynamicCast();
              v61 = *(v1 + 112);
              if (v61)
              {
                goto LABEL_39;
              }
            }
          }

          else if (*(v76 + 16))
          {
            v62 = sub_1B64FCA90(v57);
            if (v63)
            {
              v61 = *(*(v76 + 56) + 8 * v62);
              if (v61)
              {
LABEL_39:

                goto LABEL_28;
              }
            }
          }

          v53 = *(v1 + 160);
          sub_1B67D943C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7A0, &qword_1B6818B80);
          v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_1B68100D0;
          *(v55 + v54) = v58;
          (*(v52 + 104))(v55 + v54, v73, v53);
          v56 = v58;
          sub_1B67D942C();

LABEL_28:
          ++v51;
        }

        while (v50 != v51);
      }

LABEL_43:
      v65 = *(v1 + 248);
      v64 = *(v1 + 256);
      v67 = *(v1 + 184);
      v66 = *(v1 + 192);
      v68 = *(v1 + 128);

      sub_1B64FD51C(v76);

      sub_1B67D91FC();
      swift_unknownObjectRelease();
      sub_1B645745C(v65, v64);

      sub_1B641FC34(v67, v66);
      v69 = sub_1B67D920C();
      (*(*(v69 - 8) + 56))(v68, 0, 1, v69);

      v30 = *(v1 + 8);
      goto LABEL_44;
    }

LABEL_42:
    result = sub_1B67DA04C();
    v50 = result;
    if (result)
    {
      goto LABEL_25;
    }

    goto LABEL_43;
  }

  v27 = *(v1 + 248);
  v26 = *(v1 + 256);
  v29 = *(v1 + 184);
  v28 = *(v1 + 192);

  sub_1B645745C(v27, v26);

  sub_1B641FC34(v29, v28);
  swift_unknownObjectRelease();

  v30 = *(v1 + 8);
LABEL_44:

  return v30();
}

uint64_t sub_1B64F4CB8()
{
  sub_1B641FC34(v0[23], v0[24]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B64F4D24(uint64_t a1)
{
  v1 = sub_1B67D913C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B67D916C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B67D911C();
  MEMORY[0x1B8C943B0](v9);
  (*(v6 + 8))(v8, v5);
  v10 = sub_1B67D912C();
  (*(v2 + 8))(v4, v1);
  return v10 & 1;
}

uint64_t sub_1B64F4EAC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_1B67D922C();
  v7 = MEMORY[0x1EEE9AC00](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x1E69E7CC0];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B64FC714(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1B64FC714((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_1B64F517C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B67D922C();
    return a2;
  }

  return result;
}

uint64_t sub_1B64F5210@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v29 = a4;
  v25[1] = a1;
  v31 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v26 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - v14;
  sub_1B67D8D5C();
  v16 = sub_1B67D8E4C();
  v17 = *(*(v16 - 8) + 56);
  v17(v15, 1, 1, v16);
  v27 = a2;
  v28 = a3;
  v30 = a6;
  v18 = a6;
  v19 = a5;
  v20 = v32;
  v21 = sub_1B64F543C(a2, v15, a3, v18, a5);
  sub_1B6418AB4(v15, &qword_1EB94B510, &unk_1B68102C0);

  if (!v20)
  {
    *v31 = v21;
    sub_1B67D8D5C();
    v23 = v26;
    v17(v26, 1, 1, v16);
    v24 = sub_1B64F58F8(v27, v23, v28, v29, v19, v30);
    sub_1B6418AB4(v23, &qword_1EB94B510, &unk_1B68102C0);

    v31[1] = v24;
  }

  return result;
}

uint64_t sub_1B64F543C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  v32 = a2;
  v31 = a1;
  v11 = *v8;
  v35 = sub_1B67D8B1C();
  v34 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1;
  v14 = *(v11 + *MEMORY[0x1E69D61F0]);
  v52[0] = a3;
  v52[1] = v14;
  v52[2] = a5;
  v52[3] = a4;
  v15 = _s2IDVMa(0, v52);
  v16 = sub_1B67D94FC();
  v50 = a5;
  v51 = v16;
  v47 = v14;
  v48 = a3;
  v49 = a4;
  v17 = sub_1B67D988C();
  v28[1] = v15;
  sub_1B67D959C();
  swift_getWitnessTable();
  v18 = v33;
  sub_1B67D976C();
  v33 = v52[0];
  v53 = v31;
  v43 = v14;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  KeyPath = swift_getKeyPath();
  v37 = v14;
  v38 = a3;
  v29 = a3;
  v30 = a4;
  v39 = a4;
  v40 = a5;
  v31 = a5;
  v41 = sub_1B6501334;
  v42 = KeyPath;

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B580, &qword_1B68146D0);
  WitnessTable = swift_getWitnessTable();
  sub_1B64EA714(sub_1B6501354, v36, v17, v20, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v22);

  sub_1B67D8C8C();

  v23 = sub_1B67D8D2C();
  if (v18)
  {
    (*(v34 + 8))(v13, v35);
  }

  else
  {
    v25 = v23;
    (*(v34 + 8))(v13, v35);
    v53 = v25;
    swift_getWitnessTable();
    v51 = sub_1B67D94FC();
    MEMORY[0x1EEE9AC00](v51);
    v26 = v29;
    v28[-6] = v14;
    v28[-5] = v26;
    v27 = v31;
    v28[-4] = v30;
    v28[-3] = v27;
    v28[-2] = v33;
    sub_1B67D988C();
    sub_1B67D959C();
    swift_getWitnessTable();
    sub_1B67D976C();

    return v52[0];
  }
}

uint64_t sub_1B64F58F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a2;
  v39 = sub_1B67D8B1C();
  v38 = *(v39 - 1);
  MEMORY[0x1EEE9AC00](v39);
  v35 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  v56[0] = a3;
  v56[1] = a4;
  v56[2] = a5;
  v56[3] = a6;
  v12 = _s2IDVMa(0, v56);
  v13 = sub_1B67D94FC();
  v54 = a6;
  v55 = v13;
  v51 = a3;
  v52 = a4;
  v53 = a5;
  v14 = sub_1B67D988C();
  v30 = v12;
  sub_1B67D959C();
  swift_getWitnessTable();
  v15 = v34;
  sub_1B67D976C();
  v16 = v56[0];
  v57 = a1;
  v47 = a3;
  v48 = a4;
  v49 = a5;
  v50 = a6;
  KeyPath = swift_getKeyPath();
  v31 = a3;
  v41 = a3;
  v42 = a4;
  v32 = a4;
  v33 = a5;
  v43 = a5;
  v44 = a6;
  v34 = a6;
  v45 = sub_1B64FF9EC;
  v46 = KeyPath;

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B580, &qword_1B68146D0);
  WitnessTable = swift_getWitnessTable();
  sub_1B64EA714(sub_1B64FF9F0, v40, v14, v18, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v20);

  v21 = v35;
  sub_1B67D8C8C();
  v22 = v21;

  v23 = sub_1B67D8D2C();
  if (v15)
  {
    (*(v38 + 8))(v21, v39);
  }

  else
  {
    v25 = *(v38 + 8);
    v26 = v23;
    v37 = v23;
    v25(v22, v39);
    v57 = v26;
    swift_getWitnessTable();
    v27 = sub_1B67D94FC();
    v39 = &v30;
    v55 = v27;
    MEMORY[0x1EEE9AC00](v27);
    v28 = v32;
    *(&v30 - 6) = v31;
    *(&v30 - 5) = v28;
    v29 = v34;
    *(&v30 - 4) = v33;
    *(&v30 - 3) = v29;
    *(&v30 - 2) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7C8, &qword_1B6818BE0);
    sub_1B67D959C();
    sub_1B6458C04(&qword_1EB94B7D0, &qword_1EB94B7C8, &qword_1B6818BE0);
    sub_1B67D976C();

    return v56[0];
  }
}

void sub_1B64F5DB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v66 = a5;
  WitnessTable = a3;
  v62 = a1;
  v7 = *a4;
  v8 = *a4;
  v9 = *(*a4 + 88);
  v10 = sub_1B67D9DFC();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v60 - v12;
  v14 = *(v9 - 8);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v63 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v60 - v17;
  v19 = *(a2 + 8);
  v20 = *(a2 + 16);
  v68 = *a2;
  v71 = v68;
  v72 = v19;
  v73 = v20;
  v21 = *(v7 + 80);
  v69 = *(v8 + 96);

  v22 = v20;
  *&v23 = v21;
  *(&v23 + 1) = v9;
  v70[1] = v69;
  v70[0] = v23;
  _s2IDVMa(0, v70);
  WitnessTable = swift_getWitnessTable();
  sub_1B67D95AC();

  if ((*(v14 + 48))(v13, 1, v9) == 1)
  {
    v24 = v68;
    (*(v64 + 8))(v13, v65);

    v25 = v22;
    v26 = sub_1B67D8A7C();
    v27 = sub_1B67D9C8C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v70[0] = v29;
      *v28 = 136446210;

      v30 = sub_1B6456540(v24, v19, v70);

      *(v28 + 4) = v30;
      _os_log_impl(&dword_1B63EF000, v26, v27, "Failed to lookup model for record save, modelID=%{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1B8C96DF0](v29, -1, -1);
      MEMORY[0x1B8C96DF0](v28, -1, -1);
    }
  }

  else
  {
    v60[1] = a4;
    v61 = v18;
    v64 = v14;
    v65 = v9;
    (*(v14 + 32))(v18, v13, v9);
    sub_1B63F3DA0(0, &qword_1EB949A60, 0x1E695BA60);
    (*(v69 + 16))(v21);
    v31 = v22;
    v32 = sub_1B67D9D6C();
    v71 = v68;
    v72 = v19;
    v73 = v31;

    v33 = v31;
    sub_1B67D95AC();

    v34 = *&v70[0];
    if (*&v70[0])
    {
      sub_1B6499B48(*&v70[0]);

      sub_1B67D8DCC();

      v35 = v74;
      if (v72)
      {
        v34 = sub_1B67D963C();
      }

      else
      {
        v34 = 0;
      }

      v37 = v64;
      v36 = v65;
    }

    else
    {
      v35 = v74;
      v37 = v64;
      v36 = v65;
    }

    [v32 setEtag_];

    v38 = v61;
    v39 = v35;
    sub_1B644A610(v32, v36);
    if (!v35)
    {
      v52 = v62;
      v53 = *v62;
      if ((*v62 & 0xC000000000000001) != 0)
      {
        if (v53 < 0)
        {
          v54 = *v62;
        }

        else
        {
          v54 = v53 & 0xFFFFFFFFFFFFFF8;
        }

        v55 = v32;
        v56 = sub_1B67DA04C();
        if (__OFADD__(v56, 1))
        {
          __break(1u);
          return;
        }

        *v52 = sub_1B64FCD90(v54, v56 + 1);
      }

      else
      {
        v58 = v32;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v70[0] = *v52;
      sub_1B64FD244(v32, v33, isUniquelyReferenced_nonNull_native);

      *v52 = *&v70[0];
      (*(v37 + 8))(v38, v36);
      return;
    }

    *&v69 = v32;
    v40 = v63;
    (*(v37 + 16))(v63, v38, v36);
    v41 = v39;
    v42 = sub_1B67D8A7C();
    v43 = sub_1B67D9C8C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v71 = v74;
      *v44 = 136446466;
      *&v70[0] = 0;
      *(&v70[0] + 1) = 0xE000000000000000;
      sub_1B67DA2BC();
      v45 = v70[0];
      v46 = *(v37 + 8);
      v46(v40);
      v47 = sub_1B6456540(v45, *(&v45 + 1), &v71);

      *(v44 + 4) = v47;
      *(v44 + 12) = 2114;
      v48 = v39;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 14) = v49;
      v50 = v68;
      *v68 = v49;
      _os_log_impl(&dword_1B63EF000, v42, v43, "Failed to convert model to record, model=%{public}s, error=%{public}@", v44, 0x16u);
      sub_1B6418AB4(v50, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v50, -1, -1);
      v51 = v74;
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x1B8C96DF0](v51, -1, -1);
      MEMORY[0x1B8C96DF0](v44, -1, -1);

      (v46)(v61, v36);
    }

    else
    {

      v57 = *(v37 + 8);
      v57(v40, v36);
      v57(v38, v36);
    }
  }
}

uint64_t PrivateZone.shouldFetchChanges(zoneID:syncEngine:)(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = v4[10];
  v7 = v4[11];
  v8 = v4[12];
  *v5 = v2;
  v5[1] = sub_1B64D0F34;

  return sub_1B64FF228(a1, v6, v7, v8);
}

uint64_t PrivateZone.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B64D0F34;

  return sub_1B64FF300();
}

uint64_t sub_1B64F6720(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B6422E9C;

  return sub_1B64FE868(a1);
}

uint64_t sub_1B64F67CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B6422E9C;

  return PrivateZone.nextRecordZoneChangeBatch(_:syncEngine:)(a1, a2);
}

uint64_t sub_1B64F6874(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B6422E9C;

  return PrivateZone.nextFetchChangesOptions(_:syncEngine:)(a1);
}

uint64_t sub_1B64F690C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = a3[10];
  v8 = a3[11];
  v9 = a3[12];
  v10 = a3[13];
  *v6 = v3;
  v6[1] = sub_1B65013A0;

  return (sub_1B64FF228)(a1, v7, v8, v9, v10);
}

uint64_t sub_1B64F69C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B65013A0;

  return sub_1B64FF300();
}

uint64_t sub_1B64F6A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[11] = a3;
  v8[12] = a4;
  v8[9] = a1;
  v8[10] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B64F6A90, 0, 0);
}

uint64_t sub_1B64F6A90()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 144) = v2;
    *v2 = v0;
    v2[1] = sub_1B64F6BE4;

    return sub_1B64F6E4C();
  }

  else
  {
    *(v0 + 16) = *(v0 + 104);
    *(v0 + 32) = *(v0 + 120);
    type metadata accessor for PrivateZone.Errors(0, v0 + 16);
    swift_getWitnessTable();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1B64F6BE4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1B64F6DE8;
  }

  else
  {
    v2 = sub_1B64F6CF8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64F6CF8()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  v8 = swift_task_alloc();
  *(v8 + 16) = v6;
  sub_1B64B6EA4(sub_1B6500410, v8, v7, v5, v4, v3, v1, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B64F6DE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B64F6E4C()
{
  *(v1 + 144) = v0;
  *(v1 + 152) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B64F6E94, 0, 0);
}

uint64_t sub_1B64F6E94()
{
  sub_1B641A1BC();
  v0[20] = v1;
  v0[21] = v2;
  v3 = v0[19];
  v4 = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[22] = v6;
  v7 = v3[10];
  v0[23] = v7;
  v8 = v3[11];
  v0[24] = v8;
  v9 = v3[12];
  v0[25] = v9;
  v10 = v3[13];
  v0[26] = v10;
  *v6 = v0;
  v6[1] = sub_1B64F6FB0;

  return sub_1B64252D4(v4, v5, v7, v8, v9, v10);
}

uint64_t sub_1B64F6FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[27] = a1;
  v5[28] = a2;
  v5[29] = a3;
  v5[30] = v3;

  if (v3)
  {
    v6 = sub_1B64F7A08;
  }

  else
  {
    v6 = sub_1B64F70C8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B64F70C8()
{
  v86 = v0;
  v1 = v0[30];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[20];
  v6 = v0[21];
  v8 = swift_task_alloc();
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v2;
  v8[5] = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B810, &qword_1B6818C88);
  sub_1B641CFC8(sub_1B6500444, v8, v7, v6, v5, v4, v9, v2, v3);
  if (v1)
  {
    v11 = v0[20];
    v10 = v0[21];
    sub_1B645745C(v0[28], v0[29]);

    sub_1B641FC34(v11, v10);

    v12 = v0[1];
  }

  else
  {
    v13 = v0[28];
    v83 = v0[29];
    v15 = v0[25];
    v14 = v0[26];
    v17 = v0[23];
    v16 = v0[24];
    v18 = v0[18];
    v81 = v14;

    v69 = v0[7];
    v0[9] = v0[6];
    v0[2] = v17;
    v0[3] = v16;
    v0[4] = v15;
    v0[5] = v14;
    _s2IDVMa(0, (v0 + 2));
    swift_getWitnessTable();
    v0[10] = sub_1B67D94FC();
    v19 = swift_task_alloc();
    v19[2] = v13;
    v19[3] = v83;
    v19[4] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B818, &qword_1B6818C90);
    sub_1B67D959C();
    sub_1B6458C04(&qword_1EB94B820, &qword_1EB94B818, &qword_1B6818C90);
    sub_1B67D976C();

    log = v0[8];
    v0[12] = v69;
    v0[13] = sub_1B67D94FC();
    v20 = swift_task_alloc();
    v20[2] = v13;
    v20[3] = v83;
    v20[4] = v18;
    sub_1B67D976C();

    v21 = v0[11];
    v22 = swift_task_alloc();
    v22[2] = v17;
    v22[3] = v16;
    v22[4] = v15;
    v22[5] = v81;
    v22[6] = v21;
    v23 = swift_task_alloc();
    v23[2] = v17;
    v23[3] = v16;
    v23[4] = v15;
    v23[5] = v81;
    v23[6] = sub_1B6500854;
    v23[7] = v22;

    v84 = sub_1B67D958C();

    v24 = swift_task_alloc();
    v24[2] = v17;
    v24[3] = v16;
    v24[4] = v15;
    v24[5] = v81;
    v24[6] = log;
    v25 = swift_task_alloc();
    v25[2] = v17;
    v25[3] = v16;
    v25[4] = v15;
    v25[5] = v81;
    v25[6] = sub_1B65008A8;
    v25[7] = v24;
    v26 = sub_1B67D958C();

    swift_bridgeObjectRetain_n();
    v82 = v26;
    swift_bridgeObjectRetain_n();
    v27 = sub_1B67D8A7C();
    v28 = sub_1B67D9C9C();
    if (os_log_type_enabled(v27, v28))
    {
      loga = v27;
      v30 = v0[25];
      v29 = v0[26];
      v71 = v30;
      v72 = v29;
      v32 = v0[23];
      v31 = v0[24];
      v67 = v32;
      v66 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v85[0] = v79;
      *v66 = 136446466;
      v0[16] = v84;
      v33 = swift_task_alloc();
      v77 = v28;
      *v33 = v32;
      v33[1] = v31;
      v33[2] = v30;
      v33[3] = v29;
      KeyPath = swift_getKeyPath();

      v35 = sub_1B67D957C();
      WitnessTable = swift_getWitnessTable();
      v37 = MEMORY[0x1E69E6158];
      v39 = sub_1B64EA714(sub_1B6501384, KeyPath, v35, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v38);

      v40 = MEMORY[0x1B8C94A20](v39, v37);
      v42 = v41;

      v43 = sub_1B6456540(v40, v42, v85);

      *(v66 + 4) = v43;
      *(v66 + 12) = 2082;
      v0[17] = v82;
      v44 = swift_task_alloc();
      *v44 = v67;
      v44[1] = v31;
      v44[2] = v71;
      v44[3] = v72;
      v45 = swift_getKeyPath();

      v47 = sub_1B64EA714(sub_1B6500A78, v45, v35, v37, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v46);

      v48 = MEMORY[0x1B8C94A20](v47, v37);
      v50 = v49;

      v51 = sub_1B6456540(v48, v50, v85);

      *(v66 + 14) = v51;
      _os_log_impl(&dword_1B63EF000, loga, v77, "Will merge local data to cloud, idsToSave=%{public}s, idsToDelete=%{public}s", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C96DF0](v79, -1, -1);
      MEMORY[0x1B8C96DF0](v66, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v52 = v0[26];
    v73 = v0[28];
    v53 = v0[24];
    v54 = v0[25];
    v68 = v54;
    v70 = v52;
    v55 = v0[23];
    v80 = v0[21];
    logb = v0[29];
    v78 = v0[20];
    v85[0] = MEMORY[0x1E69E7CC0];
    v0[14] = v84;
    v56 = swift_task_alloc();
    v56[2] = v55;
    v56[3] = v53;
    v56[4] = v54;
    v56[5] = v52;
    v57 = sub_1B67D957C();
    v58 = sub_1B67D922C();
    v59 = swift_getWitnessTable();
    v61 = sub_1B64EA714(sub_1B65009BC, v56, v57, v58, MEMORY[0x1E69E73E0], v59, MEMORY[0x1E69E7410], v60);

    sub_1B64F8F28(v61);
    v0[15] = v82;
    v62 = swift_task_alloc();
    v62[2] = v55;
    v62[3] = v53;
    v62[4] = v68;
    v62[5] = v70;
    v64 = sub_1B64EA714(sub_1B65009DC, v62, v57, v58, MEMORY[0x1E69E73E0], v59, MEMORY[0x1E69E7410], v63);

    sub_1B64F8F28(v64);
    sub_1B67D943C();
    sub_1B67D941C();
    sub_1B645745C(v73, logb);

    sub_1B641FC34(v78, v80);

    v12 = v0[1];
  }

  return v12();
}

uint64_t sub_1B64F7A08()
{
  sub_1B641FC34(v0[20], v0[21]);
  v1 = v0[1];

  return v1();
}

void sub_1B64F7A6C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v8 = v7;
  v95 = a5;
  v96 = a6;
  v100 = a2;
  v91 = a1;
  v11 = *a4;
  v12 = *a4;
  v13 = *(*a4 + 88);
  v107 = a4;
  v14 = *(v11 + 104);
  v84 = type metadata accessor for PrivateZoneChange(0, v13, v14, a4);
  v15 = MEMORY[0x1EEE9AC00](v84);
  v83 = &v79[-v16];
  v98 = v13;
  v17 = *(v13 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v90 = &v79[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v79[-v21];
  MEMORY[0x1EEE9AC00](v20);
  v89 = &v79[-v24];
  if (a3 >> 62)
  {
    v25 = sub_1B67DA04C();
    if (!v25)
    {
      return;
    }
  }

  else
  {
    v25 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v25)
    {
      return;
    }
  }

  v106 = v25;
  if (v25 >= 1)
  {
    v94 = v14;
    v82 = a7;
    v26 = 0;
    v27 = *(v12 + 96);
    v104 = *(v27 + 16);
    v105 = v27 + 16;
    v103 = a3 & 0xC000000000000001;
    v86 = (v17 + 32);
    v108 = *(v12 + 80);
    v85 = (v17 + 16);
    v88 = (v17 + 8);
    v102 = qword_1EDB265A0;
    *&v23 = 136446466;
    v81 = v23;
    *&v23 = 138543618;
    v97 = v23;
    *&v23 = 136446210;
    v92 = v23;
    v101 = a3;
    v93 = v22;
    v99 = v27;
    while (1)
    {
      v28 = v103 ? MEMORY[0x1B8C95180](v26, a3) : *(a3 + 8 * v26 + 32);
      v29 = v28;
      v30 = sub_1B67D9D7C();
      v32 = v31;
      if (v30 == v104() && v32 == v33)
      {
        break;
      }

      v34 = sub_1B67DA2DC();

      if (v34)
      {
        goto LABEL_15;
      }

      v55 = v29;
      v56 = sub_1B67D8A7C();
      v57 = sub_1B67D9C8C();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v109[0] = v59;
        *v58 = v92;
        v60 = sub_1B67D9D7C();
        v62 = sub_1B6456540(v60, v61, v109);

        *(v58 + 4) = v62;
        v27 = v99;
        _os_log_impl(&dword_1B63EF000, v56, v57, "Ignoring unknown record type, recordType=%{public}s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v59);
        v63 = v59;
        a3 = v101;
        MEMORY[0x1B8C96DF0](v63, -1, -1);
        MEMORY[0x1B8C96DF0](v58, -1, -1);
      }

      else
      {
      }

LABEL_7:
      if (v106 == ++v26)
      {
        return;
      }
    }

LABEL_15:
    sub_1B67D8D4C();
    v35 = v29;
    v109[0] = sub_1B6505EFC(v35);
    v109[1] = v36;
    v109[2] = v37;
    v38 = v8;
    sub_1B67D8CDC();
    if (v8)
    {
      v8 = 0;

      v39 = v35;
      v40 = v38;
      v41 = sub_1B67D8A7C();
      v42 = sub_1B67D9C8C();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = v97;
        *(v43 + 4) = v39;
        *v44 = v39;
        *(v43 + 12) = 2114;
        v45 = v39;
        v46 = v38;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v43 + 14) = v47;
        v44[1] = v47;
        _os_log_impl(&dword_1B63EF000, v41, v42, "Failed to save record metadata to database, record=%{public}@, error=%{public}@", v43, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A780, &qword_1B6810140);
        swift_arrayDestroy();
        MEMORY[0x1B8C96DF0](v44, -1, -1);
        MEMORY[0x1B8C96DF0](v43, -1, -1);

        v27 = v99;
      }

      else
      {
      }

      a3 = v101;
    }

    else
    {

      v48 = [v35 recordID];
      v50 = v95;
      v49 = v96;
      sub_1B646B894(v95, v96);
      v51 = v98;
      v52 = v27;
      v53 = v94;
      v54 = sub_1B6471D60(v48, v50, v49, v108, v98, v52);
      v65 = v64;
      v66 = v54;
      v68 = v67;
      v69 = v35;
      v70 = v66;
      v71 = v51;
      sub_1B6449D58(v70, v68, v69, v51, v53, v93);
      a3 = v101;
      v87 = v69;

      v72 = v89;
      (*v86)(v89, v93, v71);
      sub_1B67D8D4C();
      swift_beginAccess();
      v73 = *v85;
      v74 = v90;
      (*v85)(v90, v72, v71);
      sub_1B67D8CDC();
      v8 = 0;
      v80 = *v88;
      v75 = v74;
      v76 = v98;
      v80(v75, v98);

      v77 = *(swift_getTupleTypeMetadata2() + 48);
      v78 = v83;
      v73(v83, v72, v76);
      v78[v77] = 1;
      swift_storeEnumTagMultiPayload();
      sub_1B67D988C();
      sub_1B67D985C();

      v80(v72, v76);
      v27 = v99;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B64F8620(uint64_t a1, void *a2)
{

  sub_1B64F99E0(v2);
}

void sub_1B64F8664(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t **a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v8 = v7;
  v41 = a7;
  v42 = a1;
  v50 = a5;
  v51 = a6;
  v49 = a2;
  v46 = *a4;
  v10 = v46[11];
  v53 = a4;
  v47 = v46[13];
  v48 = v10;
  v40 = type metadata accessor for PrivateZoneChange(0, v10, v47, a4);
  MEMORY[0x1EEE9AC00](v40);
  v39 = (&v39 - v13);
  if (a3 >> 62)
  {
    v37 = v11;
    v38 = sub_1B67DA04C();
    v11 = v37;
    v14 = v38;
    if (!v38)
    {
      return;
    }
  }

  else
  {
    v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
  }

  else
  {
    v15 = 0;
    v52 = qword_1EDB265A0;
    v44 = v11 & 0xC000000000000001;
    *&v12 = 138543618;
    v43 = v12;
    v45 = v11;
    do
    {
      if (v44)
      {
        v16 = MEMORY[0x1B8C95180](v15);
      }

      else
      {
        v16 = *(v11 + 8 * v15 + 32);
      }

      v17 = v16;
      sub_1B67D8D7C();
      v18 = [v17 recordName];
      sub_1B67D964C();

      sub_1B67D8E0C();
      if (v8)
      {

        v19 = v17;
        v20 = v8;
        v21 = sub_1B67D8A7C();
        v22 = sub_1B67D9C8C();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          *v23 = v43;
          *(v23 + 4) = v19;
          *v24 = v19;
          *(v23 + 12) = 2114;
          v25 = v19;
          v26 = v8;
          v27 = _swift_stdlib_bridgeErrorToNSError();
          *(v23 + 14) = v27;
          v24[1] = v27;
          _os_log_impl(&dword_1B63EF000, v21, v22, "Failed to delete record metadata from database, recordID=%{public}@, error=%{public}@", v23, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A780, &qword_1B6810140);
          swift_arrayDestroy();
          MEMORY[0x1B8C96DF0](v24, -1, -1);
          MEMORY[0x1B8C96DF0](v23, -1, -1);
        }

        else
        {
        }
      }

      else
      {
      }

      v28 = v17;
      v30 = v50;
      v29 = v51;
      sub_1B646B894(v50, v51);
      v31 = sub_1B6471D60(v28, v30, v29, v46[10], v48, v46[12]);
      v33 = v32;
      v35 = v34;
      sub_1B67D8D7C();
      sub_1B67D8E0C();
      v8 = 0;

      v36 = v39;
      *v39 = v31;
      v36[1] = v33;
      *(v36 + 16) = 1;
      swift_storeEnumTagMultiPayload();
      sub_1B67D988C();

      sub_1B67D985C();

      ++v15;
      v11 = v45;
    }

    while (v14 != v15);
  }
}

uint64_t sub_1B64F8BC0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v29[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v29[-1] - v19;
  v29[4] = a1;
  v29[5] = a2;
  v29[6] = a3;

  v21 = a3;
  v29[0] = a6;
  v29[1] = a7;
  v29[2] = a8;
  v29[3] = a9;
  _s2IDVMa(0, v29);
  swift_getWitnessTable();
  sub_1B67D95AC();

  if (!v29[7])
  {
    v26 = 1;
    return v26 & 1;
  }

  sub_1B67D8B4C();
  sub_1B67D8DCC();

  v22 = sub_1B67D877C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  result = v24(v20, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1B67D8B4C();
    sub_1B67D8DCC();

    result = v24(v18, 1, v22);
    if (result != 1)
    {
      v26 = sub_1B67D86EC();

      v27 = *(v23 + 8);
      v27(v18, v22);
      v27(v20, v22);
      return v26 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B64F8E30(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_1B67D9F3C();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  type metadata accessor for CKError(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B64F8F28(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1B64FC498(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1B67D922C();
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B64F9054(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = *(v3 + 80);
  *(v6 + 24) = *(v4 + 88);
  *(v6 + 40) = *(v3 + 104);
  *(v6 + 48) = v5;
  *(v6 + 56) = a1;

  sub_1B645C7AC(&unk_1B6818C58, v6);
}

uint64_t sub_1B64F9180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B64F91A8, 0, 0);
}

uint64_t sub_1B64F91A8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {
    sub_1B641A1BC();
    *(v0 + 144) = v2;
    *(v0 + 152) = v3;
    v7 = v2;
    v8 = v3;
    v9 = swift_task_alloc();
    *(v0 + 160) = v9;
    *v9 = v0;
    v9[1] = sub_1B64F9340;
    v10 = *(v0 + 120);
    v11 = *(v0 + 128);
    v12 = *(v0 + 104);
    v13 = *(v0 + 112);

    return sub_1B64252D4(v7, v8, v12, v13, v10, v11);
  }

  else
  {
    *(v0 + 16) = *(v0 + 104);
    *(v0 + 32) = *(v0 + 120);
    type metadata accessor for PrivateZone.Errors(0, v0 + 16);
    swift_getWitnessTable();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1B64F9340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[21] = a1;
  v5[22] = a2;
  v5[23] = a3;
  v5[24] = v3;

  if (v3)
  {
    v6 = sub_1B64F96A8;
  }

  else
  {
    v6 = sub_1B64F9458;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B64F9458()
{
  *(v0 + 72) = *(v0 + 96);
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = swift_task_alloc();
  v7 = *(v0 + 112);
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  *(v6 + 40) = v4;
  *(v6 + 48) = v3;
  *(v6 + 56) = v2;
  type metadata accessor for PrivateZoneChange(255, v7, v4, v8);
  v9 = sub_1B67D988C();
  v10 = sub_1B67D922C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
  WitnessTable = swift_getWitnessTable();
  sub_1B64EA714(sub_1B6500190, v6, v9, v10, v11, WitnessTable, MEMORY[0x1E69E7288], v0 + 80);
  if (v1)
  {
    v14 = *(v0 + 144);
    v13 = *(v0 + 152);
    sub_1B645745C(*(v0 + 176), *(v0 + 184));

    sub_1B641FC34(v14, v13);
  }

  else
  {
    v25 = *(v0 + 144);
    v26 = *(v0 + 152);
    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v18 = *(v0 + 104);
    v17 = *(v0 + 112);
    v19 = *(v0 + 96);

    sub_1B67D943C();
    sub_1B67D941C();

    v20 = swift_task_alloc();
    v20[2] = v18;
    v20[3] = v17;
    v20[4] = v16;
    v20[5] = v15;
    v20[6] = v19;
    sub_1B64B6EA4(sub_1B65001B8, v20, v25, v26, v18, v17, v16, v15);
    v22 = *(v0 + 144);
    v21 = *(v0 + 152);
    sub_1B645745C(*(v0 + 176), *(v0 + 184));

    sub_1B641FC34(v22, v21);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1B64F96A8()
{
  sub_1B641FC34(v0[18], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B64F9718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, void *a9@<X8>)
{
  v41 = a8;
  v42 = a4;
  v43 = a6;
  v40 = a9;
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PrivateZoneChange(0, v18, v19, v17);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v40 - v21);
  (*(v23 + 16))(&v40 - v21, a1, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v14 + 32))(v16, v22, a5);
    v31 = PrivateZoneModel.identifier.getter(a5, a7);
    v33 = v32;
    sub_1B646B894(a2, a3);
    v34 = v44;
    sub_1B6471CBC(v31, v33, a2, a3, v42, a5, v43);
    v36 = v35;
    v29 = v34;
    result = (*(v14 + 8))(v16, a5);
    if (!v34)
    {
      v30 = MEMORY[0x1E695B5F0];
      v28 = v36;
      goto LABEL_7;
    }

LABEL_5:
    *v41 = v29;
    return result;
  }

  v24 = *v22;
  v25 = v22[1];
  sub_1B646B894(a2, a3);
  v26 = v44;
  result = sub_1B6471CBC(v24, v25, a2, a3, v42, a5, v43);
  v29 = v26;
  if (v26)
  {
    goto LABEL_5;
  }

  v30 = MEMORY[0x1E695B5F8];
LABEL_7:
  v37 = v40;
  *v40 = v28;

  v38 = *v30;
  v39 = sub_1B67D922C();
  return (*(*(v39 - 8) + 104))(v37, v38, v39);
}

uint64_t sub_1B64F99E0(uint64_t a1)
{
  v3 = *&v1->_os_unfair_lock_opaque;
  os_unfair_lock_lock(v1 + 8);
  v4 = *(v3 + 88);
  v5 = *(v3 + 104);
  v12[1] = *&v1[10]._os_unfair_lock_opaque;
  type metadata accessor for PrivateZoneChange(255, v4, v5, v6);
  v7 = sub_1B67D988C();
  v10 = type metadata accessor for Multicaster(0, v7, v8, v9);

  os_unfair_lock_unlock(v1 + 8);
  v12[0] = a1;
  sub_1B64F9A9C(v12, v10);
}

uint64_t sub_1B64F9A9C(uint64_t a1, uint64_t a2)
{
  v95 = a1;
  v3 = *(a2 + 16);
  v103 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v94 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1B67D995C();
  v5 = *(v111 - 8);
  v6 = MEMORY[0x1EEE9AC00](v111);
  v104 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v110 = &v75 - v8;
  v99 = v3;
  v9 = sub_1B67D999C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v75 - v14;
  v15 = sub_1B67D87BC();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v85 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v75 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v106 = &v75 - v22;
  v109 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v98 = sub_1B67D9DFC();
  v24 = MEMORY[0x1EEE9AC00](v98);
  v100 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v75 - v27;
  v112 = MEMORY[0x1E69E7CD0];
  v75 = v2;
  v29 = *v2;
  v32 = *(*v2 + 64);
  v31 = *v2 + 64;
  v30 = v32;
  v33 = 1 << *(v29 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v30;
  v77 = (v33 + 63) >> 6;
  v101 = TupleTypeMetadata2;
  v97 = TupleTypeMetadata2 - 8;
  v105 = (v16 + 16);
  v79 = v10 + 16;
  v107 = (v10 + 32);
  v108 = (v16 + 32);
  v96 = (v26 + 32);
  v91 = (v103 + 2);
  v90 = (v5 + 16);
  v89 = (v5 + 88);
  v88 = *MEMORY[0x1E69E8630];
  v78 = *MEMORY[0x1E69E8628];
  v76 = *MEMORY[0x1E69E8620];
  v81 = v16;
  v87 = (v16 + 8);
  v83 = v10;
  v86 = (v10 + 8);
  v103 = (v5 + 8);
  v84 = v29;

  v37 = 0;
  v102 = v21;
  v80 = v28;
  v92 = v31;
  v93 = v13;
  while (v35)
  {
    v42 = v37;
LABEL_17:
    v47 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v48 = v47 | (v42 << 6);
    v49 = v84;
    v50 = v81;
    v51 = v106;
    (*(v81 + 16))(v106, *(v84 + 48) + *(v81 + 72) * v48, v15);
    v52 = v83;
    v53 = v15;
    v54 = v82;
    v55 = v109;
    (*(v83 + 16))(v82, *(v49 + 56) + *(v83 + 72) * v48, v109);
    v45 = v101;
    v56 = *(v101 + 48);
    v57 = *(v50 + 32);
    v58 = v100;
    v59 = v51;
    v60 = v53;
    v57(v100, v59, v53);
    v61 = *(v52 + 32);
    v46 = v58;
    v61(&v58[v56], v54, v55);
    v62 = 0;
    v21 = v102;
    v28 = v80;
LABEL_18:
    v63 = *(v45 - 8);
    (*(v63 + 56))(v46, v62, 1, v45);
    (*v96)(v28, v46, v98);
    if ((*(v63 + 48))(v28, 1, v45) == 1)
    {

      MEMORY[0x1EEE9AC00](v74);
      *(&v75 - 2) = v99;
      *(&v75 - 1) = &v112;
      sub_1B6415F9C(&unk_1EDB1FBB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      *v75 = sub_1B67D958C();
    }

    v64 = *(v45 + 48);
    (*v108)(v21, v28, v60);
    v65 = v93;
    v66 = v109;
    (*v107)(v93, &v28[v64], v109);
    (*v91)(v94, v95, v99);
    v15 = v60;
    v38 = v21;
    v67 = v110;
    sub_1B67D998C();
    v68 = v104;
    v69 = v111;
    (*v90)(v104, v67, v111);
    v70 = (*v89)(v68, v69);
    if (v70 == v88)
    {
      goto LABEL_5;
    }

    if (v70 == v78)
    {
      (*v103)(v104, v111);
      v38 = v102;
LABEL_5:
      v39 = v85;
      (*v105)(v85, v38, v15);
      v40 = v106;
      sub_1B64FD5CC(v106, v39);
      v41 = *v87;
      (*v87)(v40, v15);
      (*v86)(v65, v66);
      v41(v38, v15);
      v21 = v38;
      goto LABEL_6;
    }

    if (v70 == v76)
    {
      (*v86)(v65, v66);
      v21 = v102;
      (*v87)(v102, v15);
    }

    else
    {
      v71 = v85;
      v21 = v102;
      (*v105)(v85, v102, v15);
      v72 = v106;
      sub_1B64FD5CC(v106, v71);
      v73 = *v87;
      (*v87)(v72, v15);
      (*v86)(v65, v66);
      v73(v21, v15);
      (*v103)(v104, v111);
    }

LABEL_6:
    result = (*v103)(v110, v111);
    v31 = v92;
  }

  if (v77 <= v37 + 1)
  {
    v43 = v37 + 1;
  }

  else
  {
    v43 = v77;
  }

  v44 = v43 - 1;
  v46 = v100;
  v45 = v101;
  while (1)
  {
    v42 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v42 >= v77)
    {
      v60 = v15;
      v35 = 0;
      v62 = 1;
      v37 = v44;
      goto LABEL_18;
    }

    v35 = *(v31 + 8 * v42);
    ++v37;
    if (v35)
    {
      v37 = v42;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B64FA510()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B64FA558, 0, 0);
}

uint64_t sub_1B64FA558()
{
  sub_1B641A1BC();
  v0[4] = v1;
  v0[5] = v2;
  v3 = v0[3];
  v4 = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = v3[10];
  v8 = v3[11];
  v9 = v3[12];
  v10 = v3[13];
  *v6 = v0;
  v6[1] = sub_1B64FA65C;

  return sub_1B64252D4(v4, v5, v7, v8, v9, v10);
}

uint64_t sub_1B64FA65C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *v4;
  *(v7 + 56) = a1;
  *(v7 + 64) = v3;

  if (v3)
  {
    v8 = sub_1B64FAAF0;
  }

  else
  {
    sub_1B645745C(a2, a3);
    v8 = sub_1B64FA78C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1B64FA78C()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1B64FA824;

  return sub_1B645CA68();
}

uint64_t sub_1B64FA824()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 80) = v3;
  *v3 = v2;
  v3[1] = sub_1B64FA968;

  return sub_1B64ECCAC(1);
}

uint64_t sub_1B64FA968()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1B64FAB54;
  }

  else
  {
    v2 = sub_1B64FAA7C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64FAA7C()
{
  v1 = v0[4];
  v2 = v0[5];

  sub_1B641FC34(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1B64FAAF0()
{
  sub_1B641FC34(v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1B64FAB54()
{

  sub_1B641FC34(v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1B64FABC0()
{
  *(v0 + 16) = 2;
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B64FAC5C;

  return PrivateZone.synchronize(options:)((v0 + 16));
}

uint64_t sub_1B64FAC5C()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B6460E18, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B64FAD90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B642694C;

  return sub_1B64F2590();
}

uint64_t sub_1B64FAE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1B67D9DFC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v26 = PrivateZoneModel.identifier.getter(a4, a6);
  v27 = v15;
  v22 = a5;
  v23 = a4;
  v24 = a7;
  v25 = a6;
  _s2IDVMa(0, &v22);
  sub_1B67D95AC();

  v17 = v29;
  if (v29)
  {
    v18 = v30;
    v19 = v28;
    v20 = *(a4 - 8);
    (*(v20 + 16))(v14, a2, a4);
    (*(v20 + 56))(v14, 0, 1, a4);
    v22 = v19;
    v23 = v17;
    v24 = v18;
    swift_getWitnessTable();
    sub_1B67D959C();
    return sub_1B67D95BC();
  }

  return result;
}

uint64_t sub_1B64FAFF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B6471C64(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1B64FB034(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CKError(0);
  sub_1B6415F9C(&unk_1EB94B9E0, type metadata accessor for CKError, &unk_1B6818FC8);
  sub_1B67D850C();
  if (v19 != a1 && v19 == 2)
  {
    v3 = sub_1B67D952C();
    if (v3)
    {
      v4 = v3;
      v5 = v3 + 64;
      v6 = 1 << *(v3 + 32);
      v7 = -1;
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      v8 = v7 & *(v3 + 64);
      v9 = (v6 + 63) >> 6;

      v10 = 0;
      while (v8)
      {
LABEL_13:
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = *(*(v4 + 56) + ((v10 << 9) | (8 * v12)));
        v14 = v13;
        v15 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
        if (swift_dynamicCast())
        {
          sub_1B64FB034(a1, v18);
          v17 = v16;

          if (v17)
          {
LABEL_17:

            return;
          }
        }

        else
        {
        }
      }

      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v9)
        {
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v11);
        ++v10;
        if (v8)
        {
          v10 = v11;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1B64FB248(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1B8C95180](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1B67DA04C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1B64FB370@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B6501034();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B64FB398(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B67D87BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1B6415F9C(&unk_1EDB1FBB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v7 = sub_1B67D95CC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1B6415F9C(&qword_1EDB1EF80, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v15 = sub_1B67D962C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1B64FB5B0()
{
  v1 = sub_1B67D93BC();
  v59 = *(v1 - 8);
  v60 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v58 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B67D930C();
  v61 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B67D934C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B67D929C();
  v66 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B67D92DC();
  v64 = *(v12 - 8);
  v65 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B67D93CC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, v0, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x1E695B608] || v18 == *MEMORY[0x1E695B630] || v18 == *MEMORY[0x1E695B698] || v18 == *MEMORY[0x1E695B6A0])
  {
    goto LABEL_35;
  }

  if (v18 == *MEMORY[0x1E695B688])
  {
    (*(v15 + 96))(v17, v14);
    v19 = v63;
    v20 = (*(v64 + 32))(v63, v17, v65);
    v21 = MEMORY[0x1B8C94510](v20);
    v22 = *(v21 + 16);
    if (v22)
    {
      v67 = MEMORY[0x1E69E7CC0];
      sub_1B67D9FAC();
      v23 = v9;
      v24 = v66 + 16;
      v66 = *(v66 + 16);
      v25 = *(v24 + 64);
      v62 = v21;
      v26 = v21 + ((v25 + 32) & ~v25);
      v27 = *(v24 + 56);
      do
      {
        (v66)(v11, v26, v23);
        sub_1B67D928C();
        (*(v24 - 8))(v11, v23);
        sub_1B67D9F7C();
        sub_1B67D9FBC();
        sub_1B67D9FCC();
        sub_1B67D9F8C();
        v26 += v27;
        --v22;
      }

      while (v22);

      v28 = v67;
      v19 = v63;
    }

    else
    {

      v28 = MEMORY[0x1E69E7CC0];
    }

    v45 = sub_1B67D92CC();
    v46 = v45;
    v47 = *(v45 + 16);
    if (v47)
    {
      v48 = sub_1B64FC670(*(v45 + 16), 0);
      v49 = sub_1B64FE400(&v67, v48 + 4, v47, v46);
      result = sub_1B6449D40(v67);
      if (v49 == v47)
      {
LABEL_25:
        if (!__OFADD__(v48[2], *(v28 + 16)))
        {
          v67 = sub_1B67D9F3C();
          sub_1B64F8E30(v28);
          sub_1B64F8E30(v48);
          v51 = sub_1B64FBF28(v67);

          (*(v64 + 8))(v19, v65);
          return v51;
        }

        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    v48 = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

  if (v18 == *MEMORY[0x1E695B690])
  {
    (*(v15 + 96))(v17, v14);
    v65 = v7;
    v29 = v62;
    v30 = (*(v7 + 32))(v62, v17, v6);
    v31 = MEMORY[0x1B8C94570](v30);
    v32 = *(v31 + 16);
    if (v32)
    {
      v64 = v6;
      v67 = MEMORY[0x1E69E7CC0];
      sub_1B67D9FAC();
      v66 = *(v61 + 16);
      v33 = *(v61 + 80);
      v63 = v31;
      v34 = v31 + ((v33 + 32) & ~v33);
      v35 = *(v61 + 72);
      v36 = (v61 + 8);
      do
      {
        (v66)(v5, v34, v3);
        sub_1B67D928C();
        (*v36)(v5, v3);
        sub_1B67D9F7C();
        sub_1B67D9FBC();
        sub_1B67D9FCC();
        sub_1B67D9F8C();
        v34 += v35;
        --v32;
      }

      while (v32);

      v37 = v67;
      v6 = v64;
      v29 = v62;
    }

    else
    {

      v37 = MEMORY[0x1E69E7CC0];
    }

    v52 = sub_1B67D92CC();
    v53 = v52;
    v54 = *(v52 + 16);
    if (v54)
    {
      v55 = sub_1B64FC670(*(v52 + 16), 0);
      v56 = sub_1B64FE400(&v67, v55 + 4, v54, v53);
      result = sub_1B6449D40(v67);
      if (v56 == v54)
      {
LABEL_32:
        v57 = v65;
        if (__OFADD__(v55[2], *(v37 + 16)))
        {
LABEL_40:
          __break(1u);
          return result;
        }

        v67 = sub_1B67D9F3C();
        sub_1B64F8E30(v37);
        sub_1B64F8E30(v55);
        v44 = sub_1B64FBF28(v67);

        (*(v57 + 8))(v29, v6);
        return v44;
      }

      __break(1u);
    }

    v55 = MEMORY[0x1E69E7CC0];
    goto LABEL_32;
  }

  if (v18 == *MEMORY[0x1E695B680] || v18 == *MEMORY[0x1E695B6B0] || v18 != *MEMORY[0x1E695B6A8])
  {
LABEL_35:
    (*(v15 + 8))(v17, v14);
  }

  else
  {
    (*(v15 + 96))(v17, v14);
    v39 = v58;
    v38 = v59;
    v40 = v17;
    v41 = v60;
    (*(v59 + 32))(v58, v40, v60);
    v42 = sub_1B67D93AC();
    if (v42)
    {
      v43 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7F8, &unk_1B6818C38);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1B68100D0;
      *(v44 + 32) = v43;
      (*(v38 + 8))(v39, v41);
      return v44;
    }

    (*(v38 + 8))(v39, v41);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B64FBF28(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1B64FC6F4(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 32);
    type metadata accessor for CKError(0);
    sub_1B6415F9C(&qword_1EB94B800, type metadata accessor for CKError, &unk_1B6818F84);
    do
    {
      v5 = *v4;
      v6 = swift_allocError();
      *v7 = v5;
      v8 = *(v12 + 16);
      v9 = *(v12 + 24);
      v10 = v5;
      if (v8 >= v9 >> 1)
      {
        sub_1B64FC6F4((v9 > 1), v8 + 1, 1);
      }

      *(v12 + 16) = v8 + 1;
      *(v12 + 8 * v8 + 32) = v6;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B64FC05C(uint64_t a1)
{
  v2 = sub_1B6415F9C(&qword_1EB94B828, type metadata accessor for CKError, &unk_1B6818E18);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B64FC0C8(uint64_t a1)
{
  v2 = sub_1B6415F9C(&qword_1EB94B828, type metadata accessor for CKError, &unk_1B6818E18);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B64FC134(uint64_t a1)
{
  v2 = sub_1B6415F9C(&unk_1EB94B9E0, type metadata accessor for CKError, &unk_1B6818FC8);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1B64FC1B0(uint64_t a1)
{
  v2 = sub_1B6415F9C(&unk_1EB94B9E0, type metadata accessor for CKError, &unk_1B6818FC8);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1B64FC21C(uint64_t a1)
{
  v2 = sub_1B6415F9C(&unk_1EB94B9E0, type metadata accessor for CKError, &unk_1B6818FC8);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1B64FC288(void *a1, uint64_t a2)
{
  v4 = sub_1B6415F9C(&unk_1EB94B9E0, type metadata accessor for CKError, &unk_1B6818FC8);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1B64FC318(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6415F9C(&unk_1EB94B9E0, type metadata accessor for CKError, &unk_1B6818FC8);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1B64FC394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6415F9C(&unk_1EB94B9E0, type metadata accessor for CKError, &unk_1B6818FC8);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1B64FC418(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A3B0, &qword_1B6810120);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

void *sub_1B64FC498(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7A0, &qword_1B6818B80);
  v10 = *(sub_1B67D922C() - 8);
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
  v15 = *(sub_1B67D922C() - 8);
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

void *sub_1B64FC670(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B808, &qword_1B6818C48);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1B64FC6F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B64FC734(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B64FC714(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B64FC868(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B64FC734(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7F8, &unk_1B6818C38);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B64FC868(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7A0, &qword_1B6818B80);
  v10 = *(sub_1B67D922C() - 8);
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
  v15 = *(sub_1B67D922C() - 8);
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

unint64_t sub_1B64FCAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B67D95CC();

  return sub_1B64FCC08(a1, v6, a2, a3);
}

unint64_t sub_1B64FCB3C(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1B63F3DA0(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1B67D9D9C();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1B64FCC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_1B67D962C();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_1B64FCD90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7C0, &unk_1B6818B98);
    v2 = sub_1B67DA0DC();
    v19 = v2;
    sub_1B67DA03C();
    v3 = sub_1B67DA06C();
    if (v3)
    {
      v4 = v3;
      sub_1B63F3DA0(0, &qword_1EB94A6A0, 0x1E695BA70);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1B63F3DA0(0, &qword_1EB949A60, 0x1E695BA60);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1B64FCFDC(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1B67D9D8C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1B67DA06C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1B64FCFDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7C0, &unk_1B6818B98);
  result = sub_1B67DA0CC();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_1B67D9D8C();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

id sub_1B64FD244(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1B64FCA90(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1B64FCFDC(v13, a3 & 1);
      v8 = sub_1B64FCA90(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1B63F3DA0(0, &qword_1EB94A6A0, 0x1E695BA70);
        v8 = sub_1B67DA34C();
        __break(1u);
        return MEMORY[0x1EEE66BB8](v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_1B64FD3BC();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return MEMORY[0x1EEE66BB8](v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}

id sub_1B64FD3BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7C0, &unk_1B6818B98);
  v2 = *v0;
  v3 = sub_1B67DA0BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B64FD51C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1B67DA04C();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1B64667A4(v2, 0);

    v1 = sub_1B64FE554(&v5, v3 + 4, v2, v1);
    sub_1B6449D40(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1B64FD5CC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B67D87BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1B6415F9C(&unk_1EDB1FBB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v33 = a2;
  v11 = sub_1B67D95CC();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1B6415F9C(&qword_1EDB1EF80, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = sub_1B67D962C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1B64FDC08(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1B64FD8AC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1B67D87BC();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7F0, &unk_1B6818C28);
  result = sub_1B67D9ECC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1B6415F9C(&unk_1EDB1FBB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1B67D95CC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1B64FDC08(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1B67D87BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B64FD8AC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1B64FDEAC();
      goto LABEL_12;
    }

    sub_1B64FE0E4(v10 + 1);
  }

  v12 = *v3;
  sub_1B6415F9C(&unk_1EDB1FBB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v13 = sub_1B67D95CC();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1B6415F9C(&qword_1EDB1EF80, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = sub_1B67D962C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B67DA33C();
  __break(1u);
  return result;
}

void *sub_1B64FDEAC()
{
  v1 = v0;
  v2 = sub_1B67D87BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7F0, &unk_1B6818C28);
  v6 = *v0;
  v7 = sub_1B67D9EBC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1B64FE0E4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1B67D87BC();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7F0, &unk_1B6818C28);
  v7 = sub_1B67D9ECC();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1B6415F9C(&unk_1EDB1FBB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1B67D95CC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

void *sub_1B64FE400(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1B64FE554(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_1B67DA03C();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_1B67DA06C())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      sub_1B63F3DA0(0, &qword_1EB949A60, 0x1E695BA60);
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 56) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

uint64_t sub_1B64FE758(uint64_t result, unint64_t a2)
{
  if ((~(result & a2) & 0xF000000000000007) != 0)
  {
    return sub_1B641FC34(result, a2);
  }

  return result;
}

uint64_t sub_1B64FE770()
{
  v1 = *(v0 + 72);
  sub_1B67D8D9C();
  v1();
}

uint64_t sub_1B64FE868(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = sub_1B67D93CC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64FE950, 0, 0);
}

uint64_t sub_1B64FE950()
{
  v25 = v0;
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v0[8] = qword_1EDB265A0;
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1B67D8A7C();
  v6 = sub_1B67D9C9C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];
  if (v7)
  {
    v11 = v0[4];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136446466;
    v14 = (*(*(v11 + 96) + 8))(*(v11 + 80));
    v16 = sub_1B6456540(v14, v15, &v24);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    sub_1B6415F9C(&qword_1EB94B7E8, MEMORY[0x1E695B6B8], MEMORY[0x1E695B6C0]);
    v17 = sub_1B67DA28C();
    v19 = v18;
    (*(v9 + 8))(v8, v10);
    v20 = sub_1B6456540(v17, v19, &v24);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_1B63EF000, v5, v6, "Will handle event from sync engine, zone=%{public}s, event=%{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C96DF0](v13, -1, -1);
    MEMORY[0x1B8C96DF0](v12, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v21 = swift_task_alloc();
  v0[9] = v21;
  *v21 = v0;
  v21[1] = sub_1B64FEBD4;
  v22 = v0[2];

  return sub_1B64EE3E0(v22);
}

uint64_t sub_1B64FEBD4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1B64FEE4C;
  }

  else
  {
    v2 = sub_1B64FECE8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64FECE8(uint64_t a1)
{
  v13 = v1;
  v2 = sub_1B67D8A7C();
  v3 = sub_1B67D9C9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 32);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = (*(*(v4 + 96) + 8))();
    v9 = sub_1B6456540(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1B63EF000, v2, v3, "Did handle event from sync engine, zone=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1B8C96DF0](v6, -1, -1);
    MEMORY[0x1B8C96DF0](v5, -1, -1);
  }

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_1B64FEE4C()
{
  v19 = v0;
  v1 = v0[10];
  v2 = v1;
  v3 = sub_1B67D8A7C();
  v4 = sub_1B67D9C8C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136446466;
    v11 = (*(*(v7 + 96) + 8))();
    v13 = sub_1B6456540(v11, v12, &v18);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_1B63EF000, v3, v4, "Failed to handle event from sync engine, zone=%{public}s, error=%{public}@", v8, 0x16u);
    sub_1B6418AB4(v9, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1B8C96DF0](v10, -1, -1);
    MEMORY[0x1B8C96DF0](v8, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

unint64_t sub_1B64FF040(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B788, &qword_1B6818788);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7D8, &qword_1B6818C08);
    v7 = sub_1B67DA0EC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B6415FF0(v9, v5, &qword_1EB94B788, &qword_1B6818788);
      v11 = *v5;
      result = sub_1B64FCA40(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_1B67D918C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
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

uint64_t sub_1B64FF228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B64FF24C, 0, 0);
}

uint64_t sub_1B64FF24C()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1B63F3DA0(0, &qword_1EB94A6A8, 0x1E69E58C0);
  v3 = sub_1B65013CC(v1, v2);
  v4 = sub_1B67D9D9C();

  v5 = v0[1];

  return v5(v4 & 1);
}

uint64_t sub_1B64FF320()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = *(v1 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1B68100D0;
    *(v4 + 32) = v3;
    *(v4 + 40) = v2;
  }

  else
  {
    v4 = 0;
  }

  v6 = *(v0 + 8);

  return v6(v4);
}

unint64_t sub_1B64FF3E4()
{
  result = qword_1EB94B790;
  if (!qword_1EB94B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B790);
  }

  return result;
}

uint64_t dispatch thunk of PrivateZoneType.synchronize(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B6422E9C;

  return v9(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for PrivateZoneSyncOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PrivateZoneSyncOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

void sub_1B64FF708(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = **(v2 + 32);
  v8 = *a1;
  sub_1B646B894(v5, v6);
  v9 = sub_1B6471D60(v8, v5, v6, v7[10], v7[11], v7[12]);
  if (v3)
  {
    v12 = v8;
    v13 = sub_1B67D8A7C();
    v14 = sub_1B67D9C8C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&dword_1B63EF000, v13, v14, "Failed to convert record ID to model ID, recordID=%{public}@", v15, 0xCu);
      sub_1B6418AB4(v16, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v16, -1, -1);
      MEMORY[0x1B8C96DF0](v15, -1, -1);
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v11;
  }
}

uint64_t sub_1B64FF910(uint64_t a1, uint64_t *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v5 = v2[5];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = sub_1B6471C64(*a2, v8, v9);
  v14[6] = v7;
  v14[7] = v8;
  v14[8] = v9;
  v14[4] = v10;
  v14[5] = v11;

  v12 = v9;
  v14[0] = v3;
  v14[1] = v4;
  v14[2] = v6;
  v14[3] = v5;
  _s2IDVMa(255, v14);
  sub_1B67D959C();
  return sub_1B67D95BC();
}

uint64_t sub_1B64FFA08(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 32);
  v8 = *(v2 + 16);
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  sub_1B646D2FC(*a2);
  sub_1B67D8DCC();

  if (v15)
  {
    v11 = v14;
    v12 = v15;
    v9 = v8;
    v10 = v7;
    _s2IDVMa(0, &v9);
    sub_1B67D95AC();

    if (v13)
    {
      *&v9 = v4;
      *(&v9 + 1) = v3;
      *&v10 = v5;

      swift_getWitnessTable();
      sub_1B67D959C();
      return sub_1B67D95BC();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B64FFB60(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v11 = *a2;
  v12 = v3;
  v13 = v4;
  v9 = v11;
  v10 = v3;
  swift_bridgeObjectRetain_n();
  v5 = v4;
  v6 = vextq_s8(v2[2], v2[2], 8uLL);
  v8[0] = vextq_s8(v2[1], v2[1], 8uLL);
  v8[1] = v6;
  _s2IDVMa(255, v8);
  sub_1B67D959C();
  return sub_1B67D95BC();
}

uint64_t sub_1B64FFC04(uint64_t a1, uint64_t a2, void *a3)
{

  v4 = a3;
  swift_getAtKeyPath();

  return v6;
}

uint64_t sub_1B64FFC70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 48))(*a1, a1[1], a1[2]);
  v5 = MEMORY[0x1E69D62D8];
  a2[3] = MEMORY[0x1E69E6158];
  a2[4] = v5;
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B64FFD04()
{
  v0 = MEMORY[0x1B8C94590]();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B67DA04C())
  {
    for (j = 4; ; ++j)
    {
      v4 = j - 4;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1B8C95180](j - 4, v1);
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v1 + 8 * j);
      }

      v6 = v5;
      v7 = j - 3;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      sub_1B67D8D4C();
      v8 = v6;
      sub_1B6505EFC(v8);
      sub_1B67D8CDC();
      if (v10)
      {
      }

      if (v7 == i)
      {
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

uint64_t sub_1B64FFF10(uint64_t a1)
{
  sub_1B67D8D7C();
  sub_1B67D8E1C();
}

uint64_t sub_1B64FFF54(uint64_t a1)
{
  sub_1B67D8D7C();
  sub_1B67D8E1C();

  if (!v1)
  {
    sub_1B67D8D7C();
    sub_1B67D8E1C();
  }

  return result;
}

uint64_t sub_1B6500010(uint64_t a1)
{
  v3 = **(v1 + 24);

  LOBYTE(a1) = sub_1B64FB398(a1, v3);

  return a1 & 1;
}

uint64_t sub_1B65000B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1B6422E9C;

  return sub_1B64F9180(v7, v6, v2, v3, v4, v5);
}

uint64_t sub_1B65001B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PrivateZoneChange(0, *(v4 + 24), *(v4 + 40), a4);
  v5 = sub_1B67D984C();
  v6 = sub_1B6501C78(v5);
  v7 = __OFADD__(v6, v5);
  result = v6 + v5;
  if (!v7)
  {
    return sub_1B6501CC8(result);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6500254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PrivateZoneChange(0, *(v4 + 24), *(v4 + 40), a4);

  v5 = sub_1B67D984C();

  v7 = sub_1B6501BDC(v6);
  v8 = __OFADD__(v7, v5);
  result = v7 + v5;
  if (!v8)
  {
    return sub_1B6501C2C(result);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B65002EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1B642694C;

  return sub_1B64F6A64(v6, v7, v9, v8, v2, v3, v4, v5);
}

uint64_t sub_1B65003C0(uint64_t result, unint64_t a2)
{
  if ((a2 >> 62) >= 2)
  {
    if (a2 >> 62 == 3)
    {
      return v3;
    }
  }
}

uint64_t sub_1B6500444@<X0>(uint64_t *a1@<X8>)
{
  sub_1B6500B04();
  sub_1B67D8D9C();
  v3 = sub_1B67D8F9C();

  if (!v1)
  {
    *a1 = v3;
    sub_1B67D8D9C();
    v5 = sub_1B67D8F9C();

    a1[1] = v5;
  }

  return result;
}

void sub_1B6500578(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t), const char *a4, ...)
{
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v7 = **(v4 + 32);
  v8 = *a2;
  v30 = a2[1];
  v24 = v8;
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v26)
  {
    sub_1B646B894(v6, v5);
    v9 = v7[10];
    v10 = v7[11];
    v11 = v7[12];
    v12 = v7[13];
    v13 = a3(v25, v26, v6, v5, v9, v10, v11, v12);
    if (!v22)
    {
      v29[3] = v24;
      v29[4] = v30;
      v29[0] = v13;
      v29[1] = v14;
      v29[2] = v15;

      v25 = v9;
      v26 = v10;
      v27 = v11;
      v28 = v12;
      _s2IDVMa(255, &v25);
      swift_getWitnessTable();
      sub_1B67D959C();
      sub_1B67D95BC();
      return;
    }

    v16 = sub_1B67D8A7C();
    v17 = sub_1B67D9C8C();
    if (!os_log_type_enabled(v16, v17))
    {

      return;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29[0] = v19;
    *v18 = 136446210;
    sub_1B67D8B4C();
    sub_1B67D8DCC();

    if (v26)
    {

      v20 = sub_1B6456540(v25, v26, v29);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_1B63EF000, v16, v17, a4, v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1B8C96DF0](v19, -1, -1);
      MEMORY[0x1B8C96DF0](v18, -1, -1);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

BOOL sub_1B65008A8(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v11 = a2;
  v12 = a3;

  v5 = a3;
  v6 = *(v3 + 32);
  v9[0] = *(v3 + 16);
  v9[1] = v6;
  _s2IDVMa(0, v9);
  swift_getWitnessTable();
  sub_1B67D95AC();

  v7 = *&v9[0];
  if (*&v9[0])
  {
    sub_1B64C73D4(*&v9[0], *(&v9[0] + 1));
  }

  return v7 == 0;
}

id sub_1B65009FC@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + 16);
  *a3 = v4;
  v5 = *a2;
  v6 = sub_1B67D922C();
  (*(*(v6 - 8) + 104))(a3, v5, v6);
  return v4;
}

void sub_1B6500A90(void *a1)
{
  v1 = a1[2];

  v2 = v1;
  swift_getAtKeyPath();
}

unint64_t sub_1B6500B04()
{
  result = qword_1EB958F70[0];
  if (!qword_1EB958F70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB958F70);
  }

  return result;
}

uint64_t sub_1B6500B58()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for PrivateZoneChange(255, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v7 = *(sub_1B67D999C() - 8);
  v8 = (*(v7 + 80) + 88) & ~*(v7 + 80);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1B642694C;

  return sub_1B64EBB4C(v9, v10, v11, v0 + 48, v0 + v8, v2, v3);
}

unint64_t sub_1B6500D7C()
{
  result = qword_1EB959380;
  if (!qword_1EB959380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB959380);
  }

  return result;
}

unint64_t sub_1B6500DD4()
{
  result = qword_1EB959388[0];
  if (!qword_1EB959388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB959388);
  }

  return result;
}

uint64_t sub_1B6501034()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  v13(v9, 1, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v14 = sub_1B67D8B3C();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v16 = *(*(v15 - 8) + 56);
  v16(v5, 1, 1, v15);
  v16(v3, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  swift_allocObject();
  sub_1B67D8B3C();
  return v14;
}

uint64_t sub_1B65013CC(uint64_t a1, uint64_t a2)
{
  sub_1B63F3DA0(0, &qword_1EB94B7E0, 0x1E695BA90);
  (*(a2 + 8))(a1, a2);
  sub_1B67D964C();
  return sub_1B67D9CAC();
}

uint64_t sub_1B6501460(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a5 + 24))(a4, a5))
  {
    v6 = [objc_allocWithZone(FCCKAESSIVRecordNameCipher) init];
    v7 = [a1 recordName];
    if (!v7)
    {
      sub_1B67D964C();
      v7 = sub_1B67D963C();
    }

    v8 = sub_1B67D864C();
    v9 = [v6 decryptRecordName:v7 withKey:v8];

    if (v9)
    {
      v10 = sub_1B67D964C();

      return v10;
    }

    else
    {
      sub_1B65015DC();
      swift_allocError();
      *v14 = 1;
      return swift_willThrow();
    }
  }

  else
  {
    v12 = [a1 recordName];
    v13 = sub_1B67D964C();

    return v13;
  }
}

unint64_t sub_1B65015DC()
{
  result = qword_1EB959690;
  if (!qword_1EB959690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB959690);
  }

  return result;
}

uint64_t sub_1B6501630(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((*(a6 + 24))(a5, a6))
  {
    if (a4 >> 60 != 15)
    {
      v10 = objc_allocWithZone(FCCKAESSIVRecordNameCipher);
      sub_1B646B894(a3, a4);
      v11 = [v10 init];
      v12 = sub_1B67D963C();
      v13 = sub_1B67D864C();
      v14 = [v11 encryptRecordName:v12 withKey:v13];

      if (v14)
      {
        sub_1B67D964C();

        sub_1B63F3DA0(0, &qword_1EB94A6A0, 0x1E695BA70);
        sub_1B65013CC(a5, a6);
        v15 = sub_1B67D9C2C();
        sub_1B6457448(a3, a4);
        return v15;
      }

      sub_1B6457448(a3, a4);
    }

    sub_1B65015DC();
    swift_allocError();
    *v17 = 0;
    return swift_willThrow();
  }

  else
  {
    sub_1B63F3DA0(0, &qword_1EB94A6A0, 0x1E695BA70);

    sub_1B65013CC(a5, a6);
    return sub_1B67D9C2C();
  }
}

unint64_t sub_1B65018B4()
{
  result = qword_1EB959698[0];
  if (!qword_1EB959698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB959698);
  }

  return result;
}

uint64_t sub_1B6501908@<X0>(uint64_t a2@<X8>)
{
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v10 >> 60 == 11)
  {
    sub_1B6502618(v9, v10);
LABEL_4:
    v4 = sub_1B67D93DC();
    return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  }

  sub_1B64D302C(v9, v10);
  sub_1B6502618(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F98, &qword_1B6810158);
  sub_1B67D9DEC();
  sub_1B6502618(v9, v10);
  if (v8 >> 60 == 15)
  {
    goto LABEL_4;
  }

  sub_1B67D83AC();
  swift_allocObject();
  sub_1B67D839C();
  v6 = sub_1B67D93DC();
  sub_1B650262C(&qword_1EB94B860, MEMORY[0x1E695B6D8]);
  sub_1B67D838C();
  if (v2)
  {

    return sub_1B6457448(v7, v8);
  }

  else
  {
    sub_1B6457448(v7, v8);

    return (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
  }
}

uint64_t sub_1B6501AF0(uint64_t a1)
{
  sub_1B67D8B4C();
  sub_1B67D83FC();
  swift_allocObject();
  sub_1B67D83EC();
  sub_1B67D93DC();
  sub_1B650262C(&qword_1EB94B868, MEMORY[0x1E695B6D0]);
  sub_1B67D83DC();

  if (!v1)
  {
    sub_1B67D8DDC();
  }
}

uint64_t sub_1B6501BDC(uint64_t a1)
{
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if ((v3 & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6501C2C(uint64_t a1)
{
  sub_1B67D8B4C();
  sub_1B67D8DDC();
}

uint64_t sub_1B6501C78(uint64_t a1)
{
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if ((v3 & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6501CC8(uint64_t a1)
{
  sub_1B67D8B4C();
  sub_1B67D8DDC();
}

unint64_t sub_1B6501D38()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000016;
  v4 = 0x747269447473616CLL;
  if (v1 != 4)
  {
    v4 = 0x61656C437473616CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000016;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_1B6501E0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B6502BB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B6501E34(uint64_t a1)
{
  v2 = sub_1B6502B60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6501E70(uint64_t a1)
{
  v2 = sub_1B6502B60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6501EAC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B870, qword_1B68191E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6502B60();
  sub_1B67DA47C();
  v11 = *v3;
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  sub_1B6413CCC(&qword_1EB94A5E8, &qword_1EB949F40, &qword_1B6810290, MEMORY[0x1E69D6168]);
  sub_1B67DA24C();
  if (!v2)
  {
    v11 = v3[1];
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B858, &qword_1B68191D8);
    sub_1B6413CCC(&qword_1EB94B878, &qword_1EB94B858, &qword_1B68191D8, MEMORY[0x1E69D6168]);
    sub_1B67DA24C();
    v11 = v3[2];
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A010, &unk_1B6810300);
    sub_1B6413CCC(&qword_1EB94A600, &qword_1EB94A010, &unk_1B6810300, MEMORY[0x1E69D6168]);
    sub_1B67DA24C();
    v11 = v3[3];
    HIBYTE(v10) = 3;
    sub_1B67DA24C();
    v11 = v3[4];
    HIBYTE(v10) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC8, &qword_1B68102A8);
    sub_1B6413CCC(&qword_1EB94B880, &qword_1EB949FC8, &qword_1B68102A8, MEMORY[0x1E69D6168]);
    sub_1B67DA24C();
    v11 = v3[5];
    HIBYTE(v10) = 5;
    sub_1B67DA24C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B6502238(uint64_t a1)
{
  v2 = sub_1B641A49C();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B6502284(uint64_t a1)
{
  v2 = sub_1B641A49C();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B65022D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B641A49C();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

double sub_1B6502334@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1B6502DBC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1B6502390(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B641A49C();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B65023DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B641A49C();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B6502430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B641A49C();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

uint64_t sub_1B6502494(uint64_t (*a1)(__int128 *))
{
  sub_1B67D8D5C();
  sub_1B641C36C(v5);
  if (!v1)
  {

    v4[0] = v5[0];
    v4[1] = v5[1];
    v4[2] = v5[2];
    a1(v4);
    sub_1B67D8D4C();

    sub_1B67D8CDC();
  }
}

uint64_t sub_1B6502618(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1B6457448(result, a2);
  }

  return result;
}

uint64_t sub_1B650262C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B67D93DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B6502670(uint64_t a1)
{
  v41 = a1;
  v44 = sub_1B67D877C();
  v42 = *(v44 - 8);
  v1 = MEMORY[0x1EEE9AC00](v44);
  v40 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v43 = v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FA0, &qword_1B68182C0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v38 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v38 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v38 - v21;
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  v23 = *(v11 + 48);
  if (v23(v9, 1, v10) == 1)
  {
    v24 = &qword_1EB949FA0;
    v25 = &qword_1B68182C0;
    v26 = v9;
LABEL_5:
    sub_1B6418AB4(v26, v24, v25);
    v28 = 0;
    return v28 & 1;
  }

  sub_1B6404758(v9, v22);
  sub_1B6403FD4(v22, v20);
  v27 = v42;
  v39 = *(v42 + 48);
  if (v39(v20, 1, v44) == 1)
  {
    sub_1B6418AB4(v22, &unk_1EB94A100, &qword_1B680FD50);
    v26 = v20;
    v24 = &unk_1EB94A100;
    v25 = &qword_1B680FD50;
    goto LABEL_5;
  }

  v38[0] = *(v27 + 32);
  v38[1] = v27 + 32;
  (v38[0])(v43, v20, v44);
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v23(v7, 1, v10) == 1)
  {
    (*(v27 + 8))(v43, v44);
    sub_1B6418AB4(v22, &unk_1EB94A100, &qword_1B680FD50);
    v30 = &qword_1EB949FA0;
    v31 = &qword_1B68182C0;
    v32 = v7;
  }

  else
  {
    v33 = v27;
    sub_1B6404758(v7, v17);
    sub_1B6403FD4(v17, v14);
    if (v39(v14, 1, v44) != 1)
    {
      v34 = v40;
      v35 = v44;
      (v38[0])(v40, v14, v44);
      v36 = v43;
      v28 = sub_1B67D86EC();
      v37 = *(v33 + 8);
      v37(v34, v35);
      sub_1B6418AB4(v17, &unk_1EB94A100, &qword_1B680FD50);
      v37(v36, v35);
      sub_1B6418AB4(v22, &unk_1EB94A100, &qword_1B680FD50);
      return v28 & 1;
    }

    sub_1B6418AB4(v17, &unk_1EB94A100, &qword_1B680FD50);
    (*(v27 + 8))(v43, v44);
    sub_1B6418AB4(v22, &unk_1EB94A100, &qword_1B680FD50);
    v32 = v14;
    v30 = &unk_1EB94A100;
    v31 = &qword_1B680FD50;
  }

  sub_1B6418AB4(v32, v30, v31);
  v28 = 1;
  return v28 & 1;
}

unint64_t sub_1B6502B60()
{
  result = qword_1EB959820[0];
  if (!qword_1EB959820[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB959820);
  }

  return result;
}

uint64_t sub_1B6502BB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B682A170 == a2 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B682A190 == a2 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B682A1B0 == a2 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x747269447473616CLL && a2 == 0xED00006574614479 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61656C437473616CLL && a2 == 0xED0000657461446ELL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B67DA2DC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1B6502DBC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v67 = a1;
  v52 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B890, &unk_1B6819530);
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v51 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB0, &unk_1B6810270);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FD8, &unk_1B6811440);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B840, &qword_1B68191C0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v51 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v27 = *(*(v26 - 8) + 56);
  v27(v25, 1, 1, v26);
  v27(v23, 1, 1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v61 = sub_1B67D8B3C();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B848, &qword_1B68191C8);
  v29 = *(*(v28 - 8) + 56);
  v29(v19, 1, 1, v28);
  v29(v17, 1, 1, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B850, &qword_1B68191D0);
  swift_allocObject();
  sub_1B67D8DBC();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B858, &qword_1B68191D8);
  swift_allocObject();
  v64 = sub_1B67D8B3C();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A000, &unk_1B68102F0);
  v31 = *(*(v30 - 8) + 56);
  v31(v13, 1, 1, v30);
  v32 = v11;
  v31(v11, 1, 1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A008, &unk_1B6811450);
  swift_allocObject();
  sub_1B67D8DBC();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A010, &unk_1B6810300);
  swift_allocObject();
  v63 = sub_1B67D8B3C();
  v31(v13, 1, 1, v30);
  v31(v32, 1, 1, v30);
  swift_allocObject();
  sub_1B67D8DBC();
  v53 = v33;
  swift_allocObject();
  v59 = sub_1B67D8B3C();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB8, &qword_1B6810298);
  v35 = *(*(v34 - 8) + 56);
  v36 = v60;
  v35(v60, 1, 1, v34);
  v37 = v62;
  v35(v62, 1, 1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC0, &qword_1B68102A0);
  swift_allocObject();
  sub_1B67D8DBC();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC8, &qword_1B68102A8);
  swift_allocObject();
  v58 = sub_1B67D8B3C();
  v35(v36, 1, 1, v34);
  v35(v37, 1, 1, v34);
  v39 = v65;
  swift_allocObject();
  v40 = v67;
  sub_1B67D8DBC();
  swift_allocObject();
  sub_1B67D8B3C();
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  sub_1B6502B60();
  v41 = v66;
  sub_1B67DA46C();
  if (v41)
  {

    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    v66 = v38;
    v68 = 0;
    sub_1B6413CCC(&qword_1EB94A618, &qword_1EB949F40, &qword_1B6810290, MEMORY[0x1E69D6170]);
    sub_1B67DA1CC();

    v42 = v69;
    v68 = 1;
    sub_1B6413CCC(&qword_1EB94B898, &qword_1EB94B858, &qword_1B68191D8, MEMORY[0x1E69D6170]);
    sub_1B67DA1CC();
    v62 = v42;

    v44 = v69;
    v68 = 2;
    sub_1B6413CCC(&qword_1EB94A630, &qword_1EB94A010, &unk_1B6810300, MEMORY[0x1E69D6170]);
    sub_1B67DA1CC();
    v64 = v44;

    v45 = v69;
    v68 = 3;
    sub_1B67DA1CC();

    v46 = v69;
    v68 = 4;
    sub_1B6413CCC(&qword_1EB94B8A0, &qword_1EB949FC8, &qword_1B68102A8, MEMORY[0x1E69D6170]);
    sub_1B67DA1CC();

    v47 = v69;
    v68 = 5;
    sub_1B67DA1CC();
    (*(v56 + 8))(v39, v57);

    v48 = v69;
    result = __swift_destroy_boxed_opaque_existential_1(v67);
    v49 = v52;
    v50 = v64;
    *v52 = v62;
    v49[1] = v50;
    v49[2] = v45;
    v49[3] = v46;
    v49[4] = v47;
    v49[5] = v48;
  }

  return result;
}

unint64_t sub_1B65039F0()
{
  result = qword_1EB94B888;
  if (!qword_1EB94B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B888);
  }

  return result;
}

unint64_t sub_1B6503A68()
{
  result = qword_1EB9599B0[0];
  if (!qword_1EB9599B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9599B0);
  }

  return result;
}

unint64_t sub_1B6503AC0()
{
  result = qword_1EB959AC0;
  if (!qword_1EB959AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB959AC0);
  }

  return result;
}

unint64_t sub_1B6503B18()
{
  result = qword_1EB959AC8[0];
  if (!qword_1EB959AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB959AC8);
  }

  return result;
}

id ThrottleRegistry.__allocating_init(userDefaults:maxRetryAfter:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___FCThrottleRegistry_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B8B0, &unk_1B6819540);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *&v5[v6] = v7;
  *&v5[OBJC_IVAR___FCThrottleRegistry_userDefaults] = a1;
  *&v5[OBJC_IVAR___FCThrottleRegistry_maxRetryAfter] = a2;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t *sub_1B6503C10()
{
  if (qword_1EDB26998 != -1)
  {
    swift_once();
  }

  return &qword_1EDB20630;
}

id ThrottleRegistry.init(userDefaults:maxRetryAfter:)(uint64_t a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___FCThrottleRegistry_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B8B0, &unk_1B6819540);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *&v2[v6] = v7;
  *&v2[OBJC_IVAR___FCThrottleRegistry_userDefaults] = a1;
  *&v2[OBJC_IVAR___FCThrottleRegistry_maxRetryAfter] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_1B6503D88(uint64_t a1, uint64_t a2)
{
  v9[11] = *MEMORY[0x1E69E9840];
  v9[0] = 0.0;
  result = sub_1B6441388(a1, a2, v9);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A840, &unk_1B6813220);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B68100D0;
    *(inited + 32) = sub_1B67D964C();
    *(inited + 40) = v4;
    v5 = v9[0];
    *(inited + 72) = MEMORY[0x1E69E63B0];
    *(inited + 48) = v5;
    v6 = @"FCErrorDomain";
    sub_1B6482328(inited);
    swift_setDeallocating();
    sub_1B6418AB4(inited + 32, &qword_1EB94A848, &qword_1B6812AB0);
    v7 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v8 = sub_1B67D953C();

    [v7 initWithDomain:v6 code:12 userInfo:v8];

    return swift_willThrow();
  }

  return result;
}

void sub_1B6503F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B67D854C();
  v6 = [v5 fc_retryAfter];

  if (v6)
  {
    [v6 doubleValue];
    sub_1B6503FA8(a2, a3);
  }
}

uint64_t sub_1B6503FA8(uint64_t a1, uint64_t a2)
{
  sub_1B67D9EFC();

  MEMORY[0x1B8C94910](a1, a2);
  v5 = *(v2 + OBJC_IVAR___FCThrottleRegistry_lock);
  os_unfair_lock_lock(v5 + 4);
  sub_1B6504A08();
  os_unfair_lock_unlock(v5 + 4);
}

void sub_1B650414C(void *a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v12 = a1;
    if ([v7 statusCode] == 503 || objc_msgSend(v7, sel_statusCode) == 429)
    {
      v8 = [v7 allHeaderFields];
      v9 = sub_1B67D954C();

      sub_1B67D9EAC();
      if (*(v9 + 16) && (v10 = sub_1B65048C8(v13), (v11 & 1) != 0))
      {
        sub_1B6458B54(*(v9 + 56) + 32 * v10, v14);
        sub_1B645F0FC(v13);

        if (swift_dynamicCast())
        {
          v13[0] = 0;
          sub_1B64B5488(0x66412D7972746552, 0xEB00000000726574, v13);

          sub_1B6503FA8(a2, a3);
        }
      }

      else
      {

        sub_1B645F0FC(v13);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1B65043C8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v30[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v30 - v7;
  v9 = sub_1B67D877C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v30 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v30 - v17;
  v19 = objc_opt_self();
  v20 = [v19 standardUserDefaults];
  v30[2] = a1;
  v30[3] = a2;
  v21 = sub_1B67D963C();
  v22 = [v20 objectForKey_];

  if (v22)
  {
    sub_1B67D9E3C();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33[0] = v31;
  v33[1] = v32;
  if (*(&v32 + 1))
  {
    v23 = swift_dynamicCast();
    (*(v10 + 56))(v8, v23 ^ 1u, 1, v9);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v18, v8, v9);
      goto LABEL_10;
    }
  }

  else
  {
    sub_1B6418AB4(v33, &qword_1EB94B738, &unk_1B6819580);
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  sub_1B67D86AC();
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_1B6418AB4(v8, &unk_1EB94A100, &qword_1B680FD50);
  }

LABEL_10:
  sub_1B67D871C();
  v24 = [v19 standardUserDefaults];
  sub_1B64689AC();
  if (sub_1B67D960C())
  {
    v25 = v16;
  }

  else
  {
    v25 = v18;
  }

  (*(v10 + 16))(v13, v25, v9);
  v26 = sub_1B67D86DC();
  v27 = *(v10 + 8);
  v27(v13, v9);
  v28 = sub_1B67D963C();
  [v24 setObject:v26 forKey:v28];

  v27(v16, v9);
  return (v27)(v18, v9);
}

id ThrottleRegistry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B65048C8(uint64_t a1)
{
  v2 = sub_1B67D9E8C();

  return sub_1B650490C(a1, v2);
}

unint64_t sub_1B650490C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1B645EBB8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B8C950F0](v9, a1);
      sub_1B645F0FC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t CKColumn.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CKColumn.init(wrappedValue:name:encrypted:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_1B6505D38(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_1B6504AD8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5664657070617277 && a2 == 0xEC00000065756C61 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x707972636E456B63 && a2 == 0xEB00000000646574 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7269757165526B63 && a2 == 0xEA00000000006465)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B67DA2DC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1B6504C84(unsigned __int8 a1)
{
  sub_1B67DA3DC();
  MEMORY[0x1B8C95640](a1);
  return sub_1B67DA41C();
}

uint64_t sub_1B6504CCC(unsigned __int8 a1)
{
  v1 = 1701667182;
  v2 = 0x707972636E456B63;
  if (a1 != 2)
  {
    v2 = 0x7269757165526B63;
  }

  if (a1)
  {
    v1 = 0x5664657070617277;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B6504D70(uint64_t a1)
{
  sub_1B67DA3DC();
  sub_1B6504C5C(v3, *v1);
  return sub_1B67DA41C();
}

uint64_t sub_1B6504DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6504AD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6504DE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B6504E34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CKColumn.deinit()
{

  return v0;
}

uint64_t CKColumn.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(*v5 + 80);
  v14[0] = *(*v5 + 88);
  v14[1] = v7;
  type metadata accessor for CKColumn.CodingKeys(255, v7, v14[0], a4);
  swift_getWitnessTable();
  v8 = sub_1B67DA26C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B67DA47C();
  v18 = 0;
  v12 = v14[2];
  sub_1B67DA20C();
  if (!v12)
  {
    v14[3] = v5[4];
    v17 = 1;
    sub_1B67D8DEC();
    swift_getWitnessTable();
    sub_1B67DA24C();
    v16 = 2;
    sub_1B67DA21C();
    v15 = 3;
    sub_1B67DA21C();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t CKColumn.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  CKColumn.init(from:)(a1, v3, v4, v5);
  return v2;
}

uint64_t *CKColumn.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *v4;
  v22 = v5;
  type metadata accessor for CKColumn.CodingKeys(255, *(v21 + 80), *(v21 + 88), a4);
  swift_getWitnessTable();
  v7 = sub_1B67DA1EC();
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = v9;
  v10 = v4;
  v11 = v22;
  v12 = a1;
  sub_1B67DA46C();
  if (v11)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v18;
    v14 = v19;
    v27 = 0;
    v4[2] = sub_1B67DA19C();
    v4[3] = v15;
    sub_1B67D8DEC();
    v26 = 1;
    swift_getWitnessTable();
    sub_1B67DA1CC();
    v4[4] = v23;
    v25 = 2;
    *(v4 + 40) = sub_1B67DA1AC() & 1;
    v24 = 3;
    v17 = sub_1B67DA1AC();
    (*(v13 + 8))(v20, v14);
    *(v10 + 41) = v17 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v10;
}

uint64_t sub_1B6505480@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = CKColumn.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t CKColumn.ckRecordKey.getter()
{
  v0 = sub_1B6505D98();

  return v0;
}

double sub_1B6505508@<D0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = sub_1B67D9DFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  sub_1B67D8DCC();
  if ((*(*(v3 - 8) + 48))(v7, 1, v3) == 1)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B8C8, &unk_1B6819590);
    if (swift_dynamicCast())
    {
      return result;
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1B6505668(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_1B67D9DFC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v32 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v27 - v12;
  v14 = *(v3 - 8);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v31 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - v17;
  sub_1B644A54C(a1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949A68, &qword_1B680FD68);
  v19 = swift_dynamicCast();
  v20 = *(v14 + 56);
  if (v19)
  {
    v21 = *(v14 + 56);
    v20(v13, 0, 1, v3);
    (*(v14 + 32))(v18, v13, v3);
    (*(v14 + 16))(v10, v18, v3);
    v21(v10, 0, 1, v3);
    sub_1B67D8DDC();
    sub_1B6505DA0(a1);
    return (*(v14 + 8))(v18, v3);
  }

  v30 = *(v14 + 56);
  v20(v13, 1, 1, v3);
  v23 = *(v5 + 8);
  v23(v13, v4);
  sub_1B644A54C(a1, v34);
  if (!v34[3])
  {
    sub_1B6505DA0(v34);
    return sub_1B6505DA0(a1);
  }

  v29 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B8C8, &unk_1B6819590);
  sub_1B6505E08();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_1B6505DA0(a1);
  }

  v34[0] = v33;
  v28 = v33;
  v24 = v32;
  if (swift_dynamicCast())
  {
    v25 = v30;
    v30(v24, 0, 1, v3);
    v26 = v31;
    (*(v14 + 32))(v31, v24, v3);
    (*(v14 + 16))(v10, v26, v3);
    v25(v10, 0, 1, v3);
    sub_1B67D8DDC();

    sub_1B6505DA0(a1);
    return (*(v14 + 8))(v26, v3);
  }

  else
  {

    v30(v24, 1, 1, v3);
    sub_1B6505DA0(a1);
    return v29(v24, v4);
  }
}

void (*sub_1B6505AC8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  sub_1B6505508(v3);
  return sub_1B6505B40;
}

void sub_1B6505B40(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1B644A54C(*a1, v2 + 40);
    sub_1B6505668(v2 + 40);
    sub_1B6505DA0(v2);
  }

  else
  {
    sub_1B6505668(*a1);
  }

  free(v2);
}

uint64_t sub_1B6505BF8()
{
  v0 = sub_1B6505D98();

  return v0;
}

uint64_t (*sub_1B6505C7C(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1B6505AC8(v2);
  return sub_1B6505CF0;
}

void sub_1B6505CF0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1B6505D38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a1;
  *(v4 + 16) = a2;
  *(v4 + 40) = a4;

  *(v4 + 41) = (sub_1B67D8DAC() & 1) == 0;
  return v4;
}

uint64_t sub_1B6505DA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949A68, &qword_1B680FD68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B6505E08()
{
  result = qword_1EB94B8D0;
  if (!qword_1EB94B8D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB94B8D0);
  }

  return result;
}

uint64_t sub_1B6505EFC(void *a1)
{
  v39 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v40 = &v39 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v16 = *(*(v15 - 8) + 56);
  v16(v14, 1, 1, v15);
  v16(v12, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v17 = sub_1B67D8B3C();
  v16(v14, 1, 1, v15);
  v18 = v15;
  v19 = v17;
  v16(v12, 1, 1, v18);
  swift_allocObject();

  sub_1B67D8DBC();
  swift_allocObject();
  sub_1B67D8B3C();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v21 = *(*(v20 - 8) + 56);
  v21(v8, 1, 1, v20);
  v21(v6, 1, 1, v20);
  v22 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  swift_allocObject();

  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  swift_allocObject();
  sub_1B67D8B3C();

  sub_1B67D8B4C();
  v23 = [v22 recordID];
  v24 = [v23 recordName];

  v25 = sub_1B67D964C();
  v27 = v26;

  v41 = v25;
  v42 = v27;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v28 = [v22 recordChangeTag];
  if (v28)
  {
    v29 = v28;
    v30 = sub_1B67D964C();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v41 = v30;
  v42 = v32;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v33 = [v22 modificationDate];
  v34 = v40;
  if (v33)
  {
    v35 = v33;
    sub_1B67D874C();

    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = sub_1B67D877C();
  (*(*(v37 - 8) + 56))(v34, v36, 1, v37);
  sub_1B67D8DDC();

  return v19;
}

uint64_t sub_1B65064C8()
{
  v1 = 0x615465676E616863;
  if (*v0 != 1)
  {
    v1 = 0x6465696669646F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1B6506520@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B6506AFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B6506548(uint64_t a1)
{
  v2 = sub_1B6506AA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6506584(uint64_t a1)
{
  v2 = sub_1B6506AA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B65065C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B8D8, qword_1B68197C8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6506AA8();
  sub_1B67DA47C();
  v15 = a2;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  sub_1B6413CCC(&qword_1EB94A5E8, &qword_1EB949F40, &qword_1B6810290, MEMORY[0x1E69D6168]);
  sub_1B67DA24C();
  if (!v4)
  {
    v15 = v13;
    v14 = 1;
    sub_1B67DA24C();
    v15 = a4;
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
    sub_1B6413CCC(&qword_1EB94A608, &qword_1EB949FF8, &qword_1B68123B0, MEMORY[0x1E69D6168]);
    sub_1B67DA24C();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1B6506858(uint64_t a1)
{
  v2 = sub_1B641A78C();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B65068A4(uint64_t a1)
{
  v2 = sub_1B641A78C();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B65068F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B641A78C();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

char *sub_1B6506954@<X0>(char **a1@<X8>, void *a2@<X0>)
{
  result = sub_1B6506C1C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1B65069A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B641A78C();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B65069F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B641A78C();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B6506A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B641A78C();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

unint64_t sub_1B6506AA8()
{
  result = qword_1EB959F50[0];
  if (!qword_1EB959F50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB959F50);
  }

  return result;
}

uint64_t sub_1B6506AFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x615465676E616863 && a2 == 0xE900000000000067 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B67DA2DC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

char *sub_1B6506C1C(void *a1)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B8E8, &unk_1B6819B00);
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 1, 1, v14);
  v15(v11, 1, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v26 = sub_1B67D8B3C();
  v15(v13, 1, 1, v14);
  v16 = v14;
  v17 = v3;
  v15(v11, 1, 1, v16);
  swift_allocObject();
  sub_1B67D8DBC();
  swift_allocObject();
  v18 = sub_1B67D8B3C();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v20 = *(*(v19 - 8) + 56);
  v20(v27, 1, 1, v19);
  v20(v28, 1, 1, v19);
  v21 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  swift_allocObject();
  sub_1B67D8B3C();
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_1B6506AA8();
  v22 = v30;
  sub_1B67DA46C();
  if (v22)
  {
  }

  else
  {
    v30 = v18;
    v31 = 0;
    sub_1B6413CCC(&qword_1EB94A618, &qword_1EB949F40, &qword_1B6810290, MEMORY[0x1E69D6170]);
    sub_1B67DA1CC();

    v17 = v32;
    v31 = 1;
    sub_1B67DA1CC();

    v31 = 2;
    sub_1B6413CCC(&qword_1EB94A638, &qword_1EB949FF8, &qword_1B68123B0, MEMORY[0x1E69D6170]);
    sub_1B67DA1CC();
    (*(v24 + 8))(v3, v25);
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v17;
}

unint64_t sub_1B65072C0()
{
  result = qword_1EB94B8E0;
  if (!qword_1EB94B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B8E0);
  }

  return result;
}

unint64_t sub_1B6507338()
{
  result = qword_1EB95A0E0[0];
  if (!qword_1EB95A0E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB95A0E0);
  }

  return result;
}

unint64_t sub_1B6507390()
{
  result = qword_1EB95A1F0;
  if (!qword_1EB95A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95A1F0);
  }

  return result;
}

unint64_t sub_1B65073E8()
{
  result = qword_1EB95A1F8[0];
  if (!qword_1EB95A1F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB95A1F8);
  }

  return result;
}

uint64_t FeedItemServiceResult.cursor.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1B67D9DFC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B65074D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  v12 = type metadata accessor for FeedItemServiceResult(0, a5, a6, a7);
  v13 = v12[11];
  v14 = sub_1B67D9DFC();
  (*(*(v14 - 8) + 32))(&a8[v13], a2, v14);
  *&a8[v12[12]] = a3;
  v15 = &a8[v12[13]];

  return sub_1B65075BC(a4, v15);
}

uint64_t sub_1B65075BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedItemPruningPolicy(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B6507628(uint64_t a1)
{
  sub_1B6507CC0(319);
  if (v1 <= 0x3F)
  {
    sub_1B67D9DFC();
    if (v2 <= 0x3F)
    {
      sub_1B6507D38(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for FeedItemPruningPolicy(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1B65076E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_1B67D877C() - 8);
  v11 = *(v6 + 80);
  if (v7)
  {
    v12 = 7;
  }

  else
  {
    v12 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
    goto LABEL_32;
  }

  v13 = *(v10 + 64) + ((*(v10 + 80) + ((v12 + *(v6 + 64) + ((v11 + 8) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v10 + 80)) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v9 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v17 < 2)
    {
LABEL_32:
      if ((v8 & 0x80000000) != 0)
      {
        v20 = (*(v6 + 48))((a1 + v11 + 8) & ~v11, v7, v5);
        if (v20 >= 2)
        {
          return v20 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v19 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_32;
  }

LABEL_21:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v9 + (v13 | v18) + 1;
}

void sub_1B6507934(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = 0;
  v13 = *(sub_1B67D877C() - 8);
  v14 = *(v8 + 80);
  if (v9)
  {
    v15 = *(v8 + 64);
  }

  else
  {
    v15 = *(v8 + 64) + 1;
  }

  v16 = *(v13 + 64) + ((*(v13 + 80) + ((v15 + ((v14 + 8) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v13 + 80)) + 1;
  if (a3 <= v11)
  {
    goto LABEL_21;
  }

  if (v16 <= 3)
  {
    v17 = ((a3 - v11 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v17))
    {
      v12 = 4;
      if (v11 >= a2)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    if (v17 >= 2)
    {
      v12 = v18;
    }

    else
    {
      v12 = 0;
    }

LABEL_21:
    if (v11 >= a2)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v12 = 1;
  if (v11 >= a2)
  {
LABEL_31:
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *&a1[v16] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v16] = 0;
    }

    else if (v12)
    {
      a1[v16] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if ((v10 & 0x80000000) != 0)
      {
        v23 = ~v14;
        v24 = &a1[v14 + 8];
        v25 = (v24 & v23);
        if (v10 >= a2)
        {
          v29 = *(v30 + 56);

          v29(v24 & v23, a2 + 1, v9, v7);
        }

        else
        {
          if (v15 <= 3)
          {
            v26 = ~(-1 << (8 * v15));
          }

          else
          {
            v26 = -1;
          }

          if (v15)
          {
            v27 = v26 & (~v10 + a2);
            if (v15 <= 3)
            {
              v28 = v15;
            }

            else
            {
              v28 = 4;
            }

            bzero(v25, v15);
            if (v28 > 2)
            {
              if (v28 == 3)
              {
                *v25 = v27;
                v25[2] = BYTE2(v27);
              }

              else
              {
                *v25 = v27;
              }
            }

            else if (v28 == 1)
            {
              *v25 = v27;
            }

            else
            {
              *v25 = v27;
            }
          }
        }
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v22 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v22 = a2 - 1;
        }

        *a1 = v22;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

LABEL_22:
  v19 = ~v11 + a2;
  if (v16 >= 4)
  {
    bzero(a1, v16);
    *a1 = v19;
    v20 = 1;
    if (v12 > 1)
    {
      goto LABEL_64;
    }

    goto LABEL_61;
  }

  v20 = (v19 >> (8 * v16)) + 1;
  if (!v16)
  {
LABEL_60:
    if (v12 > 1)
    {
      goto LABEL_64;
    }

    goto LABEL_61;
  }

  v21 = v19 & ~(-1 << (8 * v16));
  bzero(a1, v16);
  if (v16 == 3)
  {
    *a1 = v21;
    a1[2] = BYTE2(v21);
    goto LABEL_60;
  }

  if (v16 == 2)
  {
    *a1 = v21;
    if (v12 > 1)
    {
LABEL_64:
      if (v12 == 2)
      {
        *&a1[v16] = v20;
      }

      else
      {
        *&a1[v16] = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v12 > 1)
    {
      goto LABEL_64;
    }
  }

LABEL_61:
  if (v12)
  {
    a1[v16] = v20;
  }
}

void sub_1B6507CC0(uint64_t a1)
{
  if (!qword_1EDB1E640)
  {
    sub_1B63F3DA0(255, &qword_1EDB1E5B0, off_1E7C34420);
    v1 = sub_1B67D959C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDB1E640);
    }
  }
}

void sub_1B6507D38(uint64_t a1)
{
  if (!qword_1EDB1E600)
  {
    sub_1B63F3DA0(255, &qword_1EDB1E570, off_1E7C34970);
    v1 = sub_1B67D988C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDB1E600);
    }
  }
}

uint64_t dispatch thunk of FeedItemServiceType.fetchFeedItems(cursor:feedItemHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B642694C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1B6507F14(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_1B6416D08(a2, v4 + 24);
  return v4;
}

uint64_t sub_1B6507F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[39] = a4;
  v5[40] = v4;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  v5[41] = type metadata accessor for FeedItemPruningPolicy(0);
  v5[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v6 = sub_1B67D877C();
  v5[45] = v6;
  v5[46] = *(v6 - 8);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B65080BC, 0, 0);
}

uint64_t sub_1B65080BC(uint64_t a1)
{
  v3 = v1[48];
  v2 = v1[49];
  v5 = v1[46];
  v4 = v1[47];
  v6 = v1[44];
  v7 = v1[45];
  v8 = v1[43];
  v9 = v1[37];
  sub_1B67D876C();
  sub_1B67D86CC();
  sub_1B6508EE0(v9, v3, v4);
  sub_1B63F3DA0(0, &qword_1EDB1E5D0, off_1E7C34370);
  v10 = *(v5 + 16);
  v1[50] = v10;
  v1[51] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v6, v2, v7);
  v11 = *(v5 + 56);
  v1[52] = v11;
  v1[53] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v6, 0, 1, v7);
  v10(v8, v4, v7);
  v11(v8, 0, 1, v7);
  v12 = sub_1B646FE94(v6, v8);
  v1[54] = v12;
  if (v12)
  {
    v13 = v12;
    v14 = v1[40];
    v15 = v14[6];
    v16 = v14[7];
    __swift_project_boxed_opaque_existential_1(v14 + 3, v15);
    v17 = sub_1B64830A0();
    v18 = sub_1B64830A0();
    v19 = sub_1B64830A0();
    v20 = swift_task_alloc();
    v1[55] = v20;
    *v20 = v1;
    v20[1] = sub_1B6508420;

    return MyArticlesRequestFactoryType.createRequest(dateRange:configuration:sidecar:maxFeeds:maxItemsPerFeed:binOverride:)(v13, 0, 0, v17, v18, v19, v15, v16);
  }

  else
  {
    v22 = v1[49];
    v31 = v1[48];
    v24 = v1[46];
    v23 = v1[47];
    v25 = v1[45];
    type metadata accessor for MyArticlesFeedItemService.Errors(0);
    sub_1B6509120();
    swift_allocError();
    v27 = v26;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B8F0, qword_1B6819BD0) + 48);
    v10(v27, v22, v25);
    v10(v27 + v28, v23, v25);
    swift_willThrow();
    v29 = *(v24 + 8);
    v29(v23, v25);
    v29(v31, v25);
    v29(v22, v25);

    v30 = v1[1];

    return v30();
  }
}

uint64_t sub_1B6508420(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  if (v1)
  {
    v4 = sub_1B6508C90;
  }

  else
  {
    v4 = sub_1B6508534;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6508534()
{
  v1 = v0;
  v16 = v0 + 2;
  v2 = v0 + 18;
  v3 = v0 + 24;
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[38];
  v7 = sub_1B64802E0();
  v1[58] = v7;
  v8 = swift_allocObject();
  v1[59] = v8;
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  v9 = swift_allocObject();
  v1[60] = v9;
  *(v9 + 16) = MEMORY[0x1E69E7CD0];
  v17 = objc_opt_self();
  v18 = *(v4 + 16);
  sub_1B6480148();
  sub_1B63F3DA0(0, &unk_1EDB1E5A0, off_1E7C344C0);
  v10 = sub_1B67D97AC();
  v1[61] = v10;

  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v7;
  v11[4] = v6;
  v11[5] = v5;
  v1[22] = sub_1B6509178;
  v1[23] = v11;
  v1[18] = MEMORY[0x1E69E9820];
  v1[19] = 1107296256;
  v1[20] = sub_1B645C7A8;
  v1[21] = &block_descriptor_10;
  v12 = _Block_copy(v2);
  v1[62] = v12;

  v1[28] = sub_1B645C34C;
  v1[29] = v8;
  v1[24] = MEMORY[0x1E69E9820];
  v1[25] = 1107296256;
  v1[26] = sub_1B645C7A8;
  v1[27] = &block_descriptor_10;
  v13 = _Block_copy(v3);
  v1[63] = v13;

  v1[2] = v1;
  v1[3] = sub_1B6508848;
  v14 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B900, qword_1B6810C80);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1B645C474;
  v1[13] = &block_descriptor_13;
  v1[14] = v14;
  [v17 streamFeedItemsWithContext:v18 feedRequests:v10 feedItemHandler:v12 networkEventHandler:v13 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v16);
}

uint64_t sub_1B6508848()
{
  v1 = *(*v0 + 48);
  *(*v0 + 512) = v1;
  if (v1)
  {

    v2 = sub_1B6508D8C;
  }

  else
  {
    v2 = sub_1B6508960;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B6508960()
{
  v30 = v0;
  v1 = *(v0 + 496);
  v3 = *(v0 + 480);
  v2 = *(v0 + 488);
  _Block_release(*(v0 + 504));
  _Block_release(v1);

  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_1B646682C(*(v4 + 16), 0);
    v7 = sub_1B648945C(&v29, v6 + 4, v5, v4);
    v8 = v29;

    sub_1B6449D40(v8);
    if (v7 != v5)
    {
      __break(1u);
    }
  }

  v28 = *(v0 + 432);
  v21 = *(v0 + 416);
  v9 = *(v0 + 400);
  v10 = *(v0 + 392);
  v22 = *(v0 + 384);
  v23 = *(v0 + 472);
  v11 = *(v0 + 368);
  v26 = *(v0 + 448);
  v27 = *(v0 + 376);
  v12 = *(v0 + 352);
  v13 = *(v0 + 360);
  v14 = *(v0 + 336);
  v25 = *(v0 + 288);
  sub_1B63F3DA0(0, &qword_1EDB1E5B0, off_1E7C34420);
  v24 = sub_1B67D956C();

  v9(v12, v10, v13);
  v21(v12, 0, 1, v13);
  swift_beginAccess();
  v15 = *(v23 + 16);
  v9(v14, v22, v13);
  swift_storeEnumTagMultiPayload();
  v16 = sub_1B645C75C(&unk_1EDB1EFA0, MEMORY[0x1E6969558]);
  v17 = sub_1B645C75C(&unk_1EDB1EFC0, MEMORY[0x1E6969538]);

  sub_1B65074D8(v24, v12, v15, v14, v13, v16, v17, v25);

  v18 = *(v11 + 8);
  v18(v27, v13);
  v18(v22, v13);
  v18(v10, v13);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1B6508C90()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);
  v4 = *(v0 + 368);
  v3 = *(v0 + 376);
  v5 = *(v0 + 360);

  v6 = *(v4 + 8);
  v6(v3, v5);
  v6(v1, v5);
  v6(v2, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B6508D8C(uint64_t a1)
{
  v2 = v1[63];
  aBlock = v1[62];
  v14 = v1[61];
  v3 = v1[56];
  v4 = v1[54];
  v6 = v1[48];
  v5 = v1[49];
  v7 = v1[46];
  v8 = v1[47];
  v9 = v1[45];
  swift_willThrow();

  v10 = *(v7 + 8);
  v10(v8, v9);
  v10(v6, v9);
  v10(v5, v9);
  _Block_release(v2);
  _Block_release(aBlock);

  v11 = v1[1];

  return v11();
}

uint64_t sub_1B6508EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_1B67D877C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6403FD4(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B646FA50(v8);
    return (*(v10 + 16))(a3, a2, v9);
  }

  v13 = *(v10 + 32);
  v13(v12, v8, v9);
  sub_1B645C75C(&qword_1EDB1EFB0, MEMORY[0x1E6969548]);
  if (sub_1B67D960C())
  {
    (*(v10 + 8))(v12, v9);
    return (*(v10 + 16))(a3, a2, v9);
  }

  return (v13)(a3, v12, v9);
}

uint64_t type metadata accessor for MyArticlesFeedItemService.Errors(uint64_t a1)
{
  result = qword_1EB95A290;
  if (!qword_1EB95A290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B6509120()
{
  result = qword_1EB95A280;
  if (!qword_1EB95A280)
  {
    type metadata accessor for MyArticlesFeedItemService.Errors(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95A280);
  }

  return result;
}

uint64_t sub_1B6509178(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = [a1 feedID];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1B67D964C();
    v9 = v8;

    swift_beginAccess();

    sub_1B6469928(&v14, v7, v9);
    swift_endAccess();

    if (*(v3 + 16))
    {
      v10 = sub_1B6456E70(v7, v9);
      v12 = v11;

      if (v12)
      {
        [a1 applyFeedContext_];
      }
    }

    else
    {
    }
  }

  return v4(a1);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  return sub_1B6458B54(a2 + 32, a1 + 32);
}

{
  return sub_1B6458B54(a2 + 32, a1 + 32);
}

uint64_t block_destroy_helper_12(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

{
}

uint64_t sub_1B65092D0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1B6509310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B642694C;

  return sub_1B6507F68(a1, a2, a3, a4);
}

uint64_t sub_1B65093F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B8F0, qword_1B6819BD0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B6509470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B8F0, qword_1B6819BD0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1B65094F8(uint64_t a1)
{
  sub_1B65095C8(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = sub_1B67D877C();
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

void sub_1B65095C8(uint64_t a1)
{
  if (!qword_1EB94B910)
  {
    sub_1B67D877C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB94B910);
    }
  }
}

uint64_t sub_1B6509644(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1B650968C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

double static PrivateDataContext.readOnlyLocal.getter()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

void *static PrivateDataContext.readWriteCloud(container:apsMachServiceName:relatedAppBundleID:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;

  v11 = a1;

  return v10;
}

uint64_t static PrivateDataContext.testing(_:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  v3 = a1;
  return v2;
}

uint64_t sub_1B65097DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = *a5;
  v13 = sub_1B67D8A9C();
  v8[4] = v13;
  v8[5] = *(v13 - 8);
  v8[6] = swift_task_alloc();
  v14 = swift_task_alloc();
  v8[7] = v14;
  *v14 = v8;
  v14[1] = sub_1B650992C;

  return sub_1B650ADF4(a5, a6, a7, a8, v17);
}

uint64_t sub_1B650992C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 64) = v3;

  if (v3)
  {
    v9 = sub_1B6509AE4;
  }

  else
  {
    v8[9] = a3;
    v8[10] = a2;
    v8[11] = a1;
    v9 = sub_1B6509A68;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1B6509A68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 72);
  *v1 = *(v0 + 88);
  *(v1 + 8) = vextq_s8(v2, v2, 8uLL);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B6509AE4()
{
  v28 = v0;
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = sub_1B64189EC();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1B67D8A7C();
  v8 = sub_1B67D9C8C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[8];
    v10 = v0[5];
    v11 = v0[3];
    v25 = v0[4];
    v26 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v12 = 136315394;
    v15 = (*(*(v11 + 96) + 8))();
    v17 = sub_1B6456540(v15, v16, &v27);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2114;
    v18 = v9;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    _os_log_impl(&dword_1B63EF000, v7, v8, "Failed to bring up cloud syncing support, zone=%s, error=%{public}@", v12, 0x16u);
    sub_1B6418AB4(v13, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1B8C96DF0](v14, -1, -1);
    MEMORY[0x1B8C96DF0](v12, -1, -1);

    (*(v10 + 8))(v26, v25);
  }

  else
  {
    v21 = v0[5];
    v20 = v0[6];
    v22 = v0[4];

    (*(v21 + 8))(v20, v22);
  }

  swift_willThrow();

  v23 = v0[1];

  return v23();
}

uint64_t sub_1B6509D24(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B642694C;

  return sub_1B65097DC(a1, v8, v9, v10, v4, v5, v6, v7);
}

uint64_t sub_1B6509DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1B6415FF0(a3, v22 - v9, &unk_1EB94A300, &qword_1B68111C0);
  v11 = sub_1B67D993C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1B6418AB4(v10, &unk_1EB94A300, &qword_1B68111C0);
  }

  else
  {
    sub_1B67D992C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1B67D989C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1B67D965C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B940, "0;");
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1B6418AB4(a3, &unk_1EB94A300, &qword_1B68111C0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B6418AB4(a3, &unk_1EB94A300, &qword_1B68111C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B940, "0;");
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id sub_1B650A0AC(id result, uint64_t a2, uint64_t a3)
{
  if (result >= 2)
  {
    v4 = result;

    return v4;
  }

  return result;
}

uint64_t sub_1B650A0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a2;
  v4[7] = a4;
  v4[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B650A118, 0, 0);
}

uint64_t sub_1B650A118()
{
  if ((*(v0[7] + 24))())
  {
    v1 = swift_task_alloc();
    v0[8] = v1;
    *v1 = v0;
    v1[1] = sub_1B650A208;
    v2 = v0[5];

    return sub_1B650A49C(v2);
  }

  else
  {
    v4 = v0[1];

    return v4(0, 0xC000000000000000);
  }
}

uint64_t sub_1B650A208(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B650A33C, 0, 0);
  }
}

uint64_t sub_1B650A33C()
{
  v1 = [objc_msgSend(*(v0 + 72) encryptedValues)];
  swift_unknownObjectRelease();
  if (v1 && (*(v0 + 32) = v1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B9B0, &qword_1B6819E30), (swift_dynamicCast() & 1) != 0))
  {

    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 8);

    return v4(v2, v3);
  }

  else
  {
    v6 = *(v0 + 72);
    sub_1B650B4C0();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1B650A4BC()
{
  v1 = [*(v0 + 152) privateCloudDatabase];
  *(v0 + 160) = v1;
  v2 = [objc_allocWithZone(MEMORY[0x1E695BA70]) initWithRecordName_];
  *(v0 + 168) = v2;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1B650A630;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B9B8, &qword_1B6819E38);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1B650A8E4;
  *(v0 + 104) = &block_descriptor_11;
  *(v0 + 112) = v3;
  [v1 fetchRecordWithID:v2 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B650A630()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1B650A7B0;
  }

  else
  {
    v2 = sub_1B650A740;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B650A740()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}