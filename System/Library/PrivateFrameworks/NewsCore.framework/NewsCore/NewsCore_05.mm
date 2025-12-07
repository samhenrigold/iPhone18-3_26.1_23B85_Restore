uint64_t sub_1B64A24F8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v25 = a2;
  v24 = a1;
  v5 = sub_1B67D877C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v23 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - v14;
  v16 = sub_1B67D993C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v12, v24, v8);
  v17 = a4;
  v18 = v5;
  (*(v6 + 16))(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v5);
  v19 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v20 = (v10 + *(v6 + 80) + v19) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v25;
  *(v21 + 40) = v26;
  (*(v9 + 32))(v21 + v19, v12, v8);
  (*(v6 + 32))(v21 + v20, v23, v18);

  sub_1B644BCA8(0, 0, v15, &unk_1B6814940, v21);
}

uint64_t sub_1B64A27D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 104) = a6;
  *(v7 + 112) = a7;
  *(v7 + 96) = a5;
  *(v7 + 25) = a4;
  v8 = sub_1B67D877C();
  *(v7 + 120) = v8;
  *(v7 + 128) = *(v8 - 8);
  *(v7 + 136) = swift_task_alloc();
  v9 = sub_1B67D8A9C();
  *(v7 + 144) = v9;
  *(v7 + 152) = *(v9 - 8);
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADF0, &qword_1B6814950);
  *(v7 + 176) = v10;
  *(v7 + 184) = *(v10 - 8);
  *(v7 + 192) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A7F0, &qword_1B6811318);
  *(v7 + 200) = v11;
  *(v7 + 208) = *(v11 - 8);
  *(v7 + 216) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A310, &unk_1B6812A70);
  *(v7 + 224) = v12;
  *(v7 + 232) = *(v12 - 8);
  *(v7 + 240) = swift_task_alloc();
  type metadata accessor for SmarterFetchRequest(0);
  *(v7 + 248) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64A2A94, 0, 0);
}

uint64_t sub_1B64A2A94()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 25);
  v3 = v1[7];
  v4 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
  if (v2 == 1)
  {
    (*(v4 + 40))(v3, v4);
  }

  else
  {
    (*(v4 + 16))(v3, v4);
  }

  v5 = *(v0 + 248);
  v7 = *(v0 + 208);
  v6 = *(v0 + 216);
  v8 = *(v0 + 200);
  v9 = *(v0 + 96);
  v10 = v9[12];
  v11 = v9[13];
  __swift_project_boxed_opaque_existential_1(v9 + 9, v10);
  (*(v11 + 8))(v5, v10, v11);
  sub_1B67D9A9C();
  (*(v7 + 8))(v6, v8);
  *(v0 + 264) = 0;
  v12 = swift_task_alloc();
  *(v0 + 256) = v12;
  *v12 = v0;
  v12[1] = sub_1B64A2E50;
  v13 = *(v0 + 224);

  return MEMORY[0x1EEE6DB90](v0 + 16, 0, 0, v13, v0 + 72);
}

uint64_t sub_1B64A2E50()
{

  if (v0)
  {
    v1 = sub_1B64A344C;
  }

  else
  {
    v1 = sub_1B64A2F8C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1B64A2F8C()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24) <= 1u)
  {
    if (*(v0 + 24))
    {
      v5 = *(*(v0 + 96) + 112);
      *(v0 + 88) = 0;
      v6 = [v5 feedItemFromPBRecord:v1 error:v0 + 88];
      v7 = *(v0 + 88);
      if (v6)
      {
        v8 = v6;
        v9 = *(v0 + 264);
        v10 = v7;
        [v8 setSurfacedByFlags_];
        [v8 markAsEvergreen];
        if (__OFADD__(v9, 1))
        {
          __break(1u);
        }

        v12 = *(v0 + 184);
        v11 = *(v0 + 192);
        v13 = *(v0 + 176);
        *(v0 + 48) = v8;
        *(v0 + 56) = 0;
        v14 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
        sub_1B67D9A6C();
        sub_1B6449D2C(v1, 1);

        (*(v12 + 8))(v11, v13);
        *(v0 + 264) = v9 + 1;
      }

      else
      {
        v37 = v7;
        v38 = sub_1B67D855C();

        swift_willThrow();
        sub_1B6449D2C(v1, 1);
      }
    }

    else
    {
      sub_1B6449D2C(*(v0 + 16), 0);
    }

    goto LABEL_16;
  }

  if (*(v0 + 24) == 2)
  {
    *(v0 + 32) = v1;
    v3 = *(v0 + 184);
    v2 = *(v0 + 192);
    v4 = *(v0 + 176);
    *(v0 + 40) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
    sub_1B67D9A6C();
    (*(v3 + 8))(v2, v4);
LABEL_16:
    v39 = swift_task_alloc();
    *(v0 + 256) = v39;
    *v39 = v0;
    v39[1] = sub_1B64A2E50;
    v40 = *(v0 + 224);

    return MEMORY[0x1EEE6DB90](v0 + 16, 0, 0, v40, v0 + 72);
  }

  v15 = *(v0 + 168);
  v16 = *(v0 + 144);
  v17 = *(v0 + 152);
  v19 = *(v0 + 128);
  v18 = *(v0 + 136);
  v21 = *(v0 + 112);
  v20 = *(v0 + 120);
  (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
  v22 = sub_1B647147C();
  (*(v17 + 16))(v15, v22, v16);
  (*(v19 + 16))(v18, v21, v20);
  v23 = sub_1B67D8A7C();
  v24 = sub_1B67D9C9C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 264);
    v27 = *(v0 + 128);
    v26 = *(v0 + 136);
    v28 = *(v0 + 120);
    v29 = swift_slowAlloc();
    *v29 = 134349312;
    *(v29 + 4) = v25;
    *(v29 + 12) = 2050;
    v30 = sub_1B644C390();
    (*(v27 + 8))(v26, v28);
    *(v29 + 14) = v30;
    _os_log_impl(&dword_1B63EF000, v23, v24, "did fetch global ESL feed items from Smarter Fetch, count=%{public}ld, time=%{public}lldms", v29, 0x16u);
    MEMORY[0x1B8C96DF0](v29, -1, -1);
  }

  else
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  }

  v31 = *(v0 + 248);
  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = *(v0 + 152);

  (*(v34 + 8))(v32, v33);
  *(v0 + 80) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
  sub_1B67D9A7C();
  sub_1B6467DA0(v31);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1B64A344C()
{
  v1 = v0[31];
  (*(v0[29] + 8))(v0[30], v0[28]);
  sub_1B6467DA0(v1);
  v2 = v0[9];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = sub_1B647147C();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_1B67D8A7C();
  v9 = sub_1B67D9C8C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = v2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1B63EF000, v8, v9, "failed to fetch global ESL feed items from Smarter Fetch, error=%{public}@", v10, 0xCu);
    sub_1B6418AB4(v11, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v11, -1, -1);
    MEMORY[0x1B8C96DF0](v10, -1, -1);
  }

  v15 = v0[19];
  v14 = v0[20];
  v16 = v0[18];

  (*(v15 + 8))(v14, v16);
  v0[8] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
  sub_1B67D9A7C();

  v17 = v0[1];

  return v17();
}

uint64_t sub_1B64A369C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B64A36F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[38] = a4;
  v5[39] = v4;
  v5[36] = a1;
  v5[37] = a3;
  v5[40] = type metadata accessor for FeedItemPruningPolicy(0);
  v5[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v5[42] = swift_task_alloc();
  v6 = sub_1B67D8A9C();
  v5[43] = v6;
  v5[44] = *(v6 - 8);
  v5[45] = swift_task_alloc();
  v7 = sub_1B67D877C();
  v5[46] = v7;
  v5[47] = *(v7 - 8);
  v5[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64A387C, 0, 0);
}

uint64_t sub_1B64A387C(uint64_t a1)
{
  v2 = v1[39];
  sub_1B67D876C();
  v3 = [*(v2 + 16) configurationManager];
  v1[49] = v3;
  v1[2] = v1;
  v1[7] = v1 + 33;
  v1[3] = sub_1B64A39C0;
  v4 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AE60, &qword_1B68149F0);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1B6465578;
  v1[13] = &block_descriptor_6;
  v1[14] = v4;
  [v3 fetchConfigurationIfNeededWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1B64A39C0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 400) = v1;
  if (v1)
  {
    v2 = sub_1B64A422C;
  }

  else
  {
    v2 = sub_1B64A3AD0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64A3AD0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[33];
  v3[51] = v4;
  if (v4)
  {
    swift_unknownObjectRelease();
    v5 = MEMORY[0x1E69E7CC0];
    v3[34] = MEMORY[0x1E69E7CC0];
    sub_1B64A03A4(v4, v3 + 23);
    v6 = v3[26];
    v7 = __swift_project_boxed_opaque_existential_1(v3 + 23, v6);
    v8 = *(v6 - 8);
    v9 = swift_task_alloc();
    (*(v8 + 16))(v9, v7, v6);
    v3[21] = swift_getAssociatedTypeWitness();
    v3[22] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_0(v3 + 18);
    sub_1B67D9A2C();

    __swift_destroy_boxed_opaque_existential_1(v3 + 23);
    v3[53] = 0;
    v3[54] = 0;
    v3[52] = v5;
    __swift_mutable_project_boxed_opaque_existential_1((v3 + 18), v3[21]);
    v10 = swift_task_alloc();
    v3[55] = v10;
    *v10 = v3;
    v10[1] = sub_1B64A3CD0;
    a1 = v3 + 31;
    a2 = 0;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6D8D0](a1, a2, a3);
}

uint64_t sub_1B64A3CD0()
{

  if (v0)
  {

    v1 = sub_1B64A42F0;
  }

  else
  {
    v1 = sub_1B64A3DE8;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1B64A3DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 248);
  v5 = *(v3 + 256);
  if (v5 != 255)
  {
    if (v5)
    {
      swift_beginAccess();
      v6 = v4;
      MEMORY[0x1B8C949F0]();
      if (*((*(v3 + 272) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 272) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B67D97FC();
      }

      sub_1B67D983C();
      v7 = *(v3 + 272);
      swift_endAccess();
      sub_1B6449D2C(v4, v5);
      v9 = *(v3 + 424);
      v8 = *(v3 + 432);
      *(v3 + 416) = v7;
    }

    else
    {
      v33 = *(v3 + 432);
      v9 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        return MEMORY[0x1EEE6D8D0](a1, a2, a3);
      }

      (*(v3 + 296))(v4);
      sub_1B6449D2C(v4, v5);
      sub_1B6449D2C(v4, v5);
      v8 = v9;
    }

    *(v3 + 424) = v9;
    *(v3 + 432) = v8;
    __swift_mutable_project_boxed_opaque_existential_1(v3 + 144, *(v3 + 168));
    v34 = swift_task_alloc();
    *(v3 + 440) = v34;
    *v34 = v3;
    v34[1] = sub_1B64A3CD0;
    a1 = v3 + 248;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x1EEE6D8D0](a1, a2, a3);
  }

  v11 = *(v3 + 352);
  v10 = *(v3 + 360);
  v12 = *(v3 + 344);
  __swift_destroy_boxed_opaque_existential_1((v3 + 144));
  v13 = sub_1B647147C();
  (*(v11 + 16))(v10, v13, v12);
  v14 = sub_1B67D8A7C();
  v15 = sub_1B67D9C9C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v3 + 424);
    v17 = swift_slowAlloc();
    *v17 = 134349056;
    *(v17 + 4) = v16;
    _os_log_impl(&dword_1B63EF000, v14, v15, "did fetch %{public}ld global ESL feed items", v17, 0xCu);
    MEMORY[0x1B8C96DF0](v17, -1, -1);
  }

  v19 = *(v3 + 376);
  v18 = *(v3 + 384);
  v21 = *(v3 + 360);
  v20 = *(v3 + 368);
  v36 = *(v3 + 416);
  v23 = *(v3 + 344);
  v22 = *(v3 + 352);
  v25 = *(v3 + 328);
  v24 = *(v3 + 336);
  v35 = *(v3 + 288);

  (*(v22 + 8))(v21, v23);
  v26 = sub_1B645C624(MEMORY[0x1E69E7CC0]);
  v27 = *(v19 + 16);
  v27(v24, v18, v20);
  (*(v19 + 56))(v24, 0, 1, v20);
  v27(v25, v18, v20);
  swift_storeEnumTagMultiPayload();
  v28 = MEMORY[0x1E6969530];
  v29 = sub_1B64A4C04(&unk_1EDB1EFA0, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v30 = sub_1B64A4C04(&unk_1EDB1EFC0, 255, v28, MEMORY[0x1E6969538]);
  sub_1B65074D8(v26, v24, v36, v25, v20, v29, v30, v35);
  swift_unknownObjectRelease();
  (*(v19 + 8))(v18, v20);

  v31 = *(v3 + 8);

  return v31();
}

uint64_t sub_1B64A422C(uint64_t a1)
{
  v3 = v1[47];
  v2 = v1[48];
  v4 = v1[46];
  swift_willThrow();
  (*(v3 + 8))(v2, v4);
  swift_unknownObjectRelease();

  v5 = v1[1];

  return v5();
}

uint64_t sub_1B64A42F0()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B64A43D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B642694C;

  return sub_1B64A36F4(a1, v8, a3, a4);
}

uint64_t sub_1B64A448C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v6[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A110, &qword_1B6811218);
  v6[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64A4578, 0, 0);
}

uint64_t sub_1B64A4578()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = [v1 lastRefreshed];
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v4 = v0[8];
        v5 = sub_1B67D877C();
        v6 = *(v5 - 8);
        v7 = *(v6 + 56);
        v7(v4, 1, 1, v5);
        sub_1B64A4C04(&qword_1EB94A118, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969568]);
        sub_1B67DA11C();

        if ((*(v6 + 48))(v4, 1, v5) != 1)
        {
          v8 = v0[9];
          (*(v6 + 32))(v8, v0[8], v5);
          v7(v8, 0, 1, v5);
          goto LABEL_8;
        }
      }

      else
      {
      }
    }
  }

  v9 = v0[9];
  v10 = sub_1B67D877C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
LABEL_8:
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_1B6465AEC;
  v13 = v0[11];
  v14 = v0[3];
  v15 = v0[4];

  return sub_1B64A36F4(v13, v11, v14, v15);
}

uint64_t sub_1B64A4998(void *a1, void *aBlock, const void *a3, const void *a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v9 = _Block_copy(aBlock);
  v10 = _Block_copy(a3);
  v5[4] = _Block_copy(a4);
  v11 = swift_allocObject();
  v5[5] = v11;
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  v5[6] = v12;
  *(v12 + 16) = v10;
  v13 = a1;

  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_1B6466108;

  return sub_1B64A448C(a1, sub_1B644DBF4, v11, sub_1B644DCAC, v12);
}

uint64_t sub_1B64A4B3C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B642694C;

  return sub_1B64A4998(v2, v3, v4, v5, v6);
}

uint64_t sub_1B64A4C04(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B64A4C90()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1B67D877C() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1B6422E9C;

  return sub_1B64A27D4(v9, v10, v11, v7, v8, v0 + v3, v0 + v6);
}

uint64_t sub_1B64A4DE0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
  v3 = *(v1 + 16);

  return sub_1B64A1D6C(a1, v3);
}

uint64_t block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B64A4E78(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1B67D877C() - 8);
  v7 = *(v1 + v5);
  v8 = *(v1 + 16);
  v9 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  sub_1B64A1E9C(a1, v8, v1 + v4, v7, v9);
}

uint64_t sub_1B64A4FB8()
{
  v1 = *(v0[19] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B64A50D8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AE60, &qword_1B68149F0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B6465578;
  v0[13] = &block_descriptor_7;
  v0[14] = v2;
  [v1 fetchConfigurationIfNeededWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B64A50D8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1B64A6EB0;
  }

  else
  {
    v2 = sub_1B64A51E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1B64A51E8()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = sub_1B64A5288(v0[19], v1);
    swift_unknownObjectRelease();
    v3 = v0[1];

    v3(v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B64A5288(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 24) preferredContentVariant];
  if (v3 == 1)
  {
    v4 = &selRef_paidRecentRecipeListIDs;
  }

  else
  {
    if (v3)
    {
      result = sub_1B67DA07C();
      __break(1u);
      return result;
    }

    v4 = &selRef_freeRecentRecipeListIDs;
  }

  if (([a2 respondsToSelector_] & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = [a2 *v4];
  v6 = sub_1B67D97BC();

  return v6;
}

uint64_t sub_1B64A537C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B6484FB4;

  return RecentRecipeListProvider.fetchRecipeListIDs()();
}

uint64_t sub_1B64A5438()
{
  v1 = *(v0[19] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B64A5558;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AE60, &qword_1B68149F0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B6465578;
  v0[13] = &block_descriptor_4;
  v0[14] = v2;
  [v1 fetchConfigurationIfNeededWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B64A5558()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1B64A6EB0;
  }

  else
  {
    v2 = sub_1B64A5668;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1B64A5668()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    if (([v1 respondsToSelector_] & 1) != 0 && (v2 = objc_msgSend(v1, sel_trendingRecipesListID)) != 0)
    {
      v3 = v2;
      v4 = sub_1B67D964C();
      v6 = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1B68100D0;
      *(v7 + 32) = v4;
      *(v7 + 40) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    swift_unknownObjectRelease();
    v8 = *(v0 + 8);

    v8(v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t TrendingRecipeListProvider.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B64A57D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B6484FB4;

  return TrendingRecipeListProvider.fetchRecipeListIDs()();
}

uint64_t sub_1B64A5890()
{
  v1 = *(v0[19] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B64A59B0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AE60, &qword_1B68149F0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B6465578;
  v0[13] = &block_descriptor_8_0;
  v0[14] = v2;
  [v1 fetchConfigurationIfNeededWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B64A59B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1B64A5B48;
  }

  else
  {
    v2 = sub_1B64A5AC0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1B64A5AC0()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = sub_1B64A5BB4(v0[19], v1);
    swift_unknownObjectRelease();
    v3 = v0[1];

    v3(v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B64A5B48(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1B64A5BB4(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 24) preferredContentVariant];
  if (v3 == 1)
  {
    v4 = &selRef_paidGlobalRecipeListIDs;
  }

  else
  {
    if (v3)
    {
      result = sub_1B67DA07C();
      __break(1u);
      return result;
    }

    v4 = &selRef_freeGlobalRecipeListIDs;
  }

  if (([a2 respondsToSelector_] & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = [a2 *v4];
  v6 = sub_1B67D97BC();

  return v6;
}

uint64_t sub_1B64A5CA0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1B64A5CCC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B64A5D0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B6435678;

  return sub_1B64A5870();
}

uint64_t sub_1B64A5DC8()
{
  v37 = v0;
  v1 = [*(v0[21] + 24) preferredContentVariant];
  if (v1 == 1)
  {
    v2 = [*(v0[21] + 16) configuration];
    if (!v2)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      v4 = [v3 paidTagRecipeListIDPrefix];
LABEL_9:
      v7 = v4;
      swift_unknownObjectRelease();
      if (v7)
      {
        v8 = sub_1B67D964C();
        v10 = v9;
      }

      else
      {
        v8 = 0;
        v10 = 0;
      }

      v11 = v0 + 10;
      v0[10] = v8;
      v0[11] = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7C0, &qword_1B6812A50);
      sub_1B67D9DEC();

      v12 = v0[19];
      v0[22] = v0[18];
      v0[23] = v12;
      if (!v12)
      {
        goto LABEL_17;
      }

      v13 = v0[21];
      v0[18] = MEMORY[0x1E69E7CD0];
      v14 = [*(v13 + 32) rankedAllSubscribedTagIDs];
      v15 = sub_1B67D97BC();

      sub_1B64A6A4C(v15);

      v16 = [*(v13 + 48) autofavoriteTagIDs];
      v17 = sub_1B67D9AFC();

      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = sub_1B646682C(*(v17 + 16), 0);
        v20 = sub_1B648945C(&v36, v19 + 4, v18, v17);
        sub_1B6449D40(v36);
        if (v20 != v18)
        {
          __break(1u);
          goto LABEL_17;
        }
      }

      else
      {

        v19 = MEMORY[0x1E69E7CC0];
      }

      v24 = v0[21];
      sub_1B64A6A4C(v19);

      v25 = *(v24 + 40);
      v26 = v0[18];
      v0[24] = v26;
      v27 = *(v26 + 16);
      if (!v27)
      {
        v28 = MEMORY[0x1E69E7CC0];
LABEL_25:
        sub_1B6462BFC(v28);

        v31 = sub_1B67D97AC();
        v0[25] = v31;

        v32 = FCCurrentQoS();
        v0[2] = v0;
        v0[7] = v0 + 20;
        v0[3] = sub_1B64A6290;
        v33 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A380, &qword_1B6814A20);
        v0[10] = MEMORY[0x1E69E9820];
        v0[11] = 1107296256;
        v0[12] = sub_1B6462CFC;
        v0[13] = &block_descriptor_12;
        v0[14] = v33;
        [v25 fetchTagsForTagIDs:v31 maximumCachedAge:v32 qualityOfService:v11 completionHandler:1.79769313e308];
        v34 = (v0 + 2);

        return MEMORY[0x1EEE6DEC8](v34);
      }

      v35 = v25;
      v28 = sub_1B646682C(v27, 0);
      v29 = sub_1B648945C(&v36, v28 + 4, v27, v26);
      v30 = v36;

      sub_1B6449D40(v30);
      if (v29 == v27)
      {
        v25 = v35;
        v11 = v0 + 10;
        goto LABEL_25;
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  else
  {
    if (v1)
    {
LABEL_31:
      v34 = sub_1B67DA07C();
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v34);
    }

    v5 = [*(v0[21] + 16) configuration];
    if (!v5)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v5;
    if ([v5 respondsToSelector_])
    {
      v4 = [v6 freeTagRecipeListIDPrefix];
      goto LABEL_9;
    }
  }

  swift_unknownObjectRelease();
LABEL_17:
  v21 = v0[1];
  v22 = MEMORY[0x1E69E7CC0];

  return v21(v22);
}

uint64_t sub_1B64A6290()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {

    v2 = sub_1B64A64A0;
  }

  else
  {
    v2 = sub_1B64A63B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64A63B0()
{
  v1 = *(v0 + 160);
  if (!v1)
  {
    v1 = sub_1B64676E4(MEMORY[0x1E69E7CC0]);
  }

  v3 = *(v0 + 176);
  v2 = *(v0 + 184);

  v4 = sub_1B64A6748(v1);

  v5 = sub_1B64A6ABC(v4, v3, v2);
  swift_bridgeObjectRelease_n();

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1B64A64A0(uint64_t a1)
{
  v2 = *(v1 + 200);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

id sub_1B64A6510(SEL *a1)
{
  result = [*(v1 + 16) configuration];
  if (result)
  {
    v4 = result;
    if ([result respondsToSelector_])
    {
      [v4 *a1];
      v6 = v5;
      swift_unknownObjectRelease();
      return v6;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B64A65B0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B64A6608()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B6484FB4;

  return sub_1B64A5DA8();
}

id sub_1B64A66A4(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = [*(*v3 + 16) configuration];
  if (result)
  {
    v6 = result;
    if ([result respondsToSelector_])
    {
      [v6 *a3];
      v8 = v7;
      swift_unknownObjectRelease();
      return v8;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t *sub_1B64A6748(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1B64A68A8(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1B64A69D4(v8, v4, v2);
  result = MEMORY[0x1B8C96DF0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1B64A68A8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    result = [*(*(a3 + 56) + 8 * v15) hasRecipeList];
    if (result)
    {
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_1B6466BB4(v4, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_1B6466BB4(v4, a2, v5, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1B64A69D4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1B64A68A8(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1B64A6A4C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_1B6469928(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1B64A6ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v4, 0);
    v6 = v31;
    v7 = a1 + 64;
    result = sub_1B67D9E6C();
    v8 = result;
    v9 = 0;
    v26 = v4;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v29 = v9;
      v30 = *(a1 + 36);
      v12 = (*(a1 + 48) + 16 * v8);
      v13 = *v12;
      v14 = v12[1];

      MEMORY[0x1B8C94910](v13, v14);

      v15 = v6;
      v32 = v6;
      v16 = *(v6 + 16);
      v17 = *(v15 + 24);
      if (v16 >= v17 >> 1)
      {
        result = sub_1B6456B24((v17 > 1), v16 + 1, 1);
        v15 = v32;
      }

      *(v15 + 16) = v16 + 1;
      v18 = v15 + 16 * v16;
      *(v18 + 32) = a2;
      *(v18 + 40) = a3;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = a1 + 64;
      v19 = *(a1 + 64 + 8 * v11);
      if ((v19 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v6 = v15;
      if (v30 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v11 << 6;
        v22 = v11 + 1;
        v23 = (a1 + 72 + 8 * v11);
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_1B6467E08(v8, v30, 0);
            v10 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_1B6467E08(v8, v30, 0);
      }

LABEL_4:
      v9 = v29 + 1;
      v8 = v10;
      if (v29 + 1 == v26)
      {
        return v6;
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
  }

  return result;
}

uint64_t dispatch thunk of RecipeListProviderType.fetchRecipeListIDs()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B6484E3C;

  return v7(a1, a2);
}

Swift::Void __swiftcall RecipeHistoryType.addOrUpdate(recipeID:)(Swift::String recipeID)
{
  v3 = v2;
  v4 = v1;
  object = recipeID._object;
  countAndFlagsBits = recipeID._countAndFlagsBits;
  v7 = sub_1B67D877C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D876C();
  (*(v3 + 48))(countAndFlagsBits, object, v10, v4, v3);
  (*(v8 + 8))(v10, v7);
}

uint64_t RecipeHistoryType.historyItems()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B6484FB4;

  return v7(0, 1, a1, a2);
}

uint64_t sub_1B64A70DC()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[3];
  v4 = v0[4];

  v5 = sub_1B64189EC();
  (*(v4 + 16))(v2, v5, v3);
  v6 = v1;
  v7 = sub_1B67D8A7C();
  v8 = sub_1B67D9C8C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1B63EF000, v7, v8, "Recipe history cache initialization failed; error=%@", v11, 0xCu);
    sub_1B6418AB4(v12, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v12, -1, -1);
    MEMORY[0x1B8C96DF0](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v15 = v0[1];

  return v15();
}

double sub_1B64A7284@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_1B6456E70(a2, a3), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 40 * v6);
    v9 = v8[1];
    v10 = v8[2];
    v11 = v8[3];
    v12 = v8[4];
    *a4 = *v8;
    a4[1] = v9;
    a4[2] = v10;
    a4[3] = v11;
    a4[4] = v12;
  }

  else
  {
    a4[4] = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 1) = 0u;
  }

  return result;
}

uint64_t sub_1B64A735C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B64A7380, 0, 0);
}

uint64_t sub_1B64A7380()
{
  v1 = v0[8];
  v2 = v0[7];
  v3 = *(v0[9] + 16);
  v0[10] = v3;
  v0[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A738, &unk_1B68127D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B68100D0;

  *(v4 + 32) = *sub_1B6416A90();
  v0[4] = v4;
  sub_1B641A28C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A740, &qword_1B6814580);
  sub_1B6413CCC(&qword_1EDB1F028, &qword_1EB94A740, &qword_1B6814580, MEMORY[0x1E69E6328]);
  sub_1B67D9E5C();
  v0[5] = v0[3];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  v0[12] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB60, &unk_1B681A0F0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF58, &qword_1B6814C20);
  v9 = sub_1B6413CCC(&unk_1EDB1FA10, &unk_1EB94BB60, &unk_1B681A0F0, &protocol conformance descriptor for PrivateZone<A, B>);
  *v6 = v0;
  v6[1] = sub_1B6478794;
  v10 = v0[6];

  return PrivateZoneType.query<A>(options:executor:)(v10, v0 + 5, sub_1B64AD4E8, v5, v7, v8, v9);
}

uint64_t sub_1B64A75B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15[-1] - v6;
  v8 = sub_1B67D8B1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B64E6720();
  v15[3] = MEMORY[0x1E69E6158];
  v15[4] = MEMORY[0x1E69D62D8];
  v15[0] = a2;
  v15[1] = a3;

  sub_1B67D8C7C();

  __swift_destroy_boxed_opaque_existential_1(v15);
  v12 = sub_1B67D8E4C();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  sub_1B67D8D1C();
  sub_1B6418AB4(v7, &qword_1EB94B510, &unk_1B68102C0);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1B64A77B0(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B64A77D0, 0, 0);
}

uint64_t sub_1B64A77D0()
{
  v1 = v0[7];
  v2 = *(v0[8] + 16);
  v0[9] = v2;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A738, &unk_1B68127D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B68100D0;

  *(v3 + 32) = *sub_1B6416A90();
  v0[5] = v3;
  sub_1B641A28C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A740, &qword_1B6814580);
  sub_1B6413CCC(&qword_1EDB1F028, &qword_1EB94A740, &qword_1B6814580, MEMORY[0x1E69E6328]);
  sub_1B67D9E5C();
  v0[6] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  v0[11] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB60, &unk_1B681A0F0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF60, &unk_1B6814C30);
  v8 = sub_1B6413CCC(&unk_1EDB1FA10, &unk_1EB94BB60, &unk_1B681A0F0, &protocol conformance descriptor for PrivateZone<A, B>);
  *v5 = v0;
  v5[1] = sub_1B64A7A00;

  return PrivateZoneType.query<A>(options:executor:)((v0 + 2), v0 + 6, sub_1B64AD504, v4, v6, v7, v8);
}

uint64_t sub_1B64A7A00()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1B64AEA74;
  }

  else
  {
    v2 = sub_1B64AEAC4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64A7B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v53 = a3;
  v54 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v48 - v7;
  v9 = sub_1B67D8B1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a2 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v50 = v3;
    v51 = v10;
    v52 = v9;
    v55[0] = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v13, 0);
    v14 = v55[0];
    v15 = a2 + 40;
    do
    {

      v16 = sub_1B67D968C();
      v18 = v17;

      v55[0] = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1B6456B24((v19 > 1), v20 + 1, 1);
        v14 = v55[0];
      }

      *(v14 + 16) = v20 + 1;
      v21 = v14 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v15 += 16;
      --v13;
    }

    while (v13);
    v10 = v51;
    v9 = v52;
    v4 = v50;
  }

  v22 = swift_allocObject();
  v23 = sub_1B64E6720();
  v25 = *v23;
  v24 = v23[1];
  v22[2] = v25;
  v22[3] = v24;

  v26 = sub_1B64503A4(v14);

  v22[4] = v26;
  *v12 = v22;
  (*(v10 + 104))(v12, *MEMORY[0x1E69D6138], v9);
  v27 = sub_1B67D8E4C();
  (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
  v28 = sub_1B67D8D2C();
  v29 = v4;
  if (v4)
  {
    sub_1B6418AB4(v8, &qword_1EB94B510, &unk_1B68102C0);
    return (*(v10 + 8))(v12, v9);
  }

  v31 = v28;
  sub_1B6418AB4(v8, &qword_1EB94B510, &unk_1B68102C0);
  (*(v10 + 8))(v12, v9);
  v32 = *(v31 + 16);
  if (v32)
  {
    v54 = 0;
    v56 = MEMORY[0x1E69E7CC0];
    sub_1B64AC430(0, v32, 0);
    v33 = v56;
    v52 = v31;
    v34 = (v31 + 64);
    do
    {
      v35 = *(v34 - 4);
      v36 = *(v34 - 3);
      v38 = *(v34 - 2);
      v37 = *(v34 - 1);
      v39 = *v34;
      v55[0] = v35;
      v55[1] = v36;
      v55[2] = v38;
      v55[3] = v37;
      v55[4] = v39;

      v40 = RecipeHistoryItem.recipeID.getter();
      v56 = v33;
      v42 = *(v33 + 16);
      v43 = *(v33 + 24);
      v44 = v42 + 1;
      if (v42 >= v43 >> 1)
      {
        v50 = v41;
        v51 = v40;
        v49 = v42 + 1;
        sub_1B64AC430((v43 > 1), v42 + 1, 1);
        v44 = v49;
        v41 = v50;
        v40 = v51;
        v33 = v56;
      }

      *(v33 + 16) = v44;
      v45 = (v33 + 56 * v42);
      v45[4] = v40;
      v45[5] = v41;
      v45[6] = v35;
      v45[7] = v36;
      v45[8] = v38;
      v45[9] = v37;
      v45[10] = v39;
      v34 += 5;
      --v32;
    }

    while (v32);

    v29 = v54;
    if (*(v33 + 16))
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_15:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF70, &qword_1B6814DD0);
      v46 = sub_1B67DA0EC();
      goto LABEL_18;
    }
  }

  v46 = MEMORY[0x1E69E7CC8];
LABEL_18:
  v55[0] = v46;

  sub_1B64ABBF0(v47, 1, v55);
  if (v29)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    *v53 = v55[0];
  }

  return result;
}

uint64_t sub_1B64A8010(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1B64AC450(0, v5, 0);
  v6 = v24;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v20[0] = *(i - 1);
    v20[1] = v10;

    a1(&v21, v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v21;
    v12 = v22;
    v13 = v23;
    v24 = v6;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      v18 = v22;
      v19 = v21;
      sub_1B64AC450((v14 > 1), v15 + 1, 1);
      v12 = v18;
      v11 = v19;
      v6 = v24;
    }

    *(v6 + 16) = v15 + 1;
    v16 = v6 + 40 * v15;
    *(v16 + 32) = v11;
    *(v16 + 48) = v12;
    *(v16 + 64) = v13;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B64A8150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v34 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v36 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v33 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - v16;
  v18 = sub_1B67D877C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(v17, a3, v18);
  v21 = *(v19 + 56);
  v21(v17, 0, 1, v18);
  v20(v15, a3, v18);
  v21(v15, 0, 1, v18);
  v21(v12, 1, 1, v18);

  RecipeHistoryItem.init(recipeID:lastVisitedDate:lastSeenDate:lastModifiedDate:)(v34, a2, v17, v15, v12, &v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF78, &qword_1B6814DE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B68100D0;
  v23 = v42;
  v24 = v41;
  *(inited + 32) = v40;
  *(inited + 48) = v24;
  *(inited + 64) = v23;
  sub_1B64AE88C(&v40, v39);
  v25 = v35;
  sub_1B64A9F38();
  swift_setDeallocating();
  swift_arrayDestroy();
  v26 = sub_1B67D993C();
  v27 = v36;
  (*(*(v26 - 8) + 56))(v36, 1, 1, v26);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  v29 = v37;
  v30 = v38;
  *(v28 + 32) = v37;
  *(v28 + 40) = v30;
  *(v28 + 48) = v25;
  v31 = v41;
  *(v28 + 56) = v40;
  *(v28 + 72) = v31;
  *(v28 + 88) = v42;
  sub_1B64AE994(v29, v30);

  sub_1B6461304(0, 0, v27, &unk_1B6814E08, v28);
}

uint64_t sub_1B64A84B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B64A84D4, 0, 0);
}

uint64_t sub_1B64A84D4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1B64A85D4;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B64A85D4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B64AEA70, 0, 0);
}

uint64_t sub_1B64A86EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF68, &qword_1B6814D58);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  sub_1B64A8150(a3, a4, a5, sub_1B64AEA68, v14);
}

uint64_t sub_1B64A8854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15[-v8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B68100D0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v16 = v3;
  v17 = a3;

  v11 = sub_1B64A8010(sub_1B64AD52C, v15, inited);
  swift_setDeallocating();
  sub_1B644F4F4(inited + 32);
  sub_1B64A9F38();
  v12 = sub_1B67D993C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = v3;
  *(v13 + 56) = v11;

  sub_1B6461304(0, 0, v9, &unk_1B6814C48, v13);
}

uint64_t sub_1B64A8A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B64A8A28, 0, 0);
}

uint64_t sub_1B64A8A28()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1B64A8B28;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B64A8B28()
{

  return MEMORY[0x1EEE6DFA0](sub_1B649CC1C, 0, 0);
}

uint64_t sub_1B64A8C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF68, &qword_1B6814D58);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  (*(v13 + 16))(&v23 - v14, a1, v12);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  (*(v13 + 32))(v17 + v16, v15, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B68100D0;
  *(inited + 32) = a3;
  *(inited + 40) = a4;
  v26 = a2;
  v27 = v24;

  v19 = sub_1B64A8010(sub_1B64AEA38, v25, inited);
  swift_setDeallocating();
  sub_1B644F4F4(inited + 32);
  sub_1B64A9F38();
  v20 = sub_1B67D993C();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = sub_1B64AE268;
  v21[5] = v17;
  v21[6] = a2;
  v21[7] = v19;

  sub_1B6461304(0, 0, v11, &unk_1B6814DD8, v21);
}

uint64_t sub_1B64A8EF8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B64A8F18, 0, 0);
}

uint64_t sub_1B64A8F18()
{
  PrivateZone.add(_:)(v0[2]);
  if (v1)
  {
    swift_willThrow();
  }

  rawValue = v0[1]._rawValue;

  return rawValue();
}

uint64_t sub_1B64A8FB8()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B64A9090;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B64A9090()
{

  return MEMORY[0x1EEE6DFA0](sub_1B64AEA70, 0, 0);
}

uint64_t sub_1B64A918C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF68, &qword_1B6814D58);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  (*(v8 + 16))(&v19 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  v13 = *(a2 + 32);
  os_unfair_lock_lock((v13 + 24));

  v14 = MEMORY[0x1E69E7CC0];
  *(v13 + 16) = MEMORY[0x1E69E7CC0];
  os_unfair_lock_unlock((v13 + 24));
  v15 = *(a2 + 40);
  os_unfair_lock_lock((v15 + 24));

  *(v15 + 16) = sub_1B64AD610(v14);
  os_unfair_lock_unlock((v15 + 24));
  v16 = sub_1B67D993C();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = sub_1B64AEA68;
  v17[5] = v12;
  v17[6] = a2;

  sub_1B6461304(0, 0, v6, &unk_1B6814D60, v17);
}

uint64_t sub_1B64A93F4(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for RecipeHistoryObserverProxy();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a3;
  v6 = swift_unknownObjectWeakAssign();
  MEMORY[0x1B8C949F0](v6);
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B67D97FC();
  }

  return sub_1B67D983C();
}

uint64_t sub_1B64A949C(unint64_t *a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v4 = sub_1B649FA80(a1, a2);
  result = swift_unknownObjectRelease();
  if (*a1 >> 62)
  {
    result = sub_1B67DA04C();
    v6 = result;
    if (result >= v4)
    {
      return sub_1B64AE140(v4, v6);
    }
  }

  else
  {
    v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 >= v4)
    {
      return sub_1B64AE140(v4, v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B64A953C()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

void sub_1B64A9580(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 40);
  os_unfair_lock_lock((v3 + 24));
  sub_1B64AEAAC((v3 + 16), a1);
  os_unfair_lock_unlock((v3 + 24));
}

uint64_t sub_1B64A95E0(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B6435678;

  return sub_1B6419EA0(a1, a2 & 1);
}

uint64_t sub_1B64A9688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B642694C;

  return sub_1B64A735C(a1, a2, a3);
}

uint64_t sub_1B64A973C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B6484FB4;

  return sub_1B64A77B0(a1);
}

uint64_t sub_1B64A9800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1B64A9828, 0, 0);
}

uint64_t sub_1B64A9828()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1B64A85D4;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B64A994C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13[-v6];
  v8 = *v2;
  v14 = v8;
  v15 = a2;
  v9 = sub_1B64A8010(sub_1B64AEA38, v13, a1);
  sub_1B64A9F38();
  v10 = sub_1B67D993C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = v8;
  *(v11 + 56) = v9;

  sub_1B6461304(0, 0, v7, &unk_1B6814D50, v11);
}

uint64_t sub_1B64A9A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1B64A9AC0, 0, 0);
}

uint64_t sub_1B64A9AC0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1B64A85D4;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B64A9BC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = *v0;
  sub_1B64AA0B8();
  v5 = sub_1B67D993C();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = v4;

  sub_1B6461304(0, 0, v3, &unk_1B6814D48, v6);
}

uint64_t sub_1B64A9CF8()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B64A9090;

  return MEMORY[0x1EEE6DDE0]();
}

void sub_1B64A9DD0()
{
  v1 = *(*v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_1B64AEA94((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_1B64A9E28()
{
  v1 = *(*v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_1B64AEA7C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_1B64A9E80()
{
  v1 = *(*v0 + 24);
  os_unfair_lock_lock((v1 + 24));

  *(v1 + 16) = MEMORY[0x1E69E7CC0];

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1B64A9ED4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1B64A9F38()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_1B64AE2C4((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
  v2 = *(v0 + 40);
  os_unfair_lock_lock((v2 + 24));
  sub_1B64AEA50((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_1B64A9FC0(uint64_t result)
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

  result = sub_1B64ABAD0(result, v10, 1, v3);
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

void sub_1B64AA0B8()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));

  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  os_unfair_lock_unlock((v1 + 24));
  v3 = *(v0 + 40);
  os_unfair_lock_lock((v3 + 24));

  *(v3 + 16) = sub_1B64AD610(v2);

  os_unfair_lock_unlock((v3 + 24));
}

uint64_t sub_1B64AA138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B64AA15C, 0, 0);
}

uint64_t sub_1B64AA15C()
{
  v1 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF78, &qword_1B6814DE8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B68100D0;
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  *(v2 + 32) = *v1;
  *(v2 + 48) = v4;
  *(v2 + 64) = v3;
  sub_1B64AE88C(v1, (v0 + 2));
  PrivateZone.add(_:)(v2);

  v6 = v0[7];
  if (v7)
  {
    v8 = swift_willThrow();
    if (v6)
    {
      (v0[7])(v8);
    }

    v9 = v0[1];
  }

  else
  {
    if (v6)
    {
      v6(v5);
    }

    v9 = v0[1];
  }

  return v9();
}

void sub_1B64AA274(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v38 = a3;
  v41 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v39 = &v37 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v42 = (&v37 - v11);
  v12 = *a1;
  v45 = a1[1];
  v13 = *(a2 + 32);
  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);

  os_unfair_lock_unlock((v13 + 24));
  v43 = *(v14 + 16);
  v44 = v14;
  if (v43)
  {
    v15 = 0;
    v16 = (v44 + 64);
    while (v15 < *(v44 + 16))
    {
      v17 = *(v16 - 4);
      v18 = *(v16 - 3);
      v19 = *(v16 - 2);
      v20 = *(v16 - 1);
      v21 = *v16;
      v46 = v17;
      v47 = v18;
      v48 = v19;
      v49 = v20;
      v50 = v21;

      if (RecipeHistoryItem.recipeID.getter() == v12 && v22 == v45)
      {
        v23 = v12;

LABEL_10:

        v46 = v17;
        v47 = v18;
        v48 = v19;
        v49 = v20;
        v50 = v21;

        RecipeHistoryItem.lastVisitedDate.getter(v42);
        v32 = sub_1B67D877C();
        v33 = *(v32 - 8);
        v34 = v39;
        (*(v33 + 16))(v39, v38, v32);
        v35 = *(v33 + 56);
        v35(v34, 0, 1, v32);
        v36 = v40;
        v35(v40, 1, 1, v32);
        RecipeHistoryItem.init(recipeID:lastVisitedDate:lastSeenDate:lastModifiedDate:)(v23, v45, v42, v34, v36, v41);

        return;
      }

      v23 = v12;
      v24 = sub_1B67DA2DC();

      if (v24)
      {
        goto LABEL_10;
      }

      ++v15;

      v16 += 5;
      v12 = v23;
      if (v43 == v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v25 = sub_1B67D877C();
    v26 = *(v25 - 8);
    v27 = *(v26 + 56);
    v28 = v42;
    v27(v42, 1, 1, v25);
    v29 = v39;
    (*(v26 + 16))(v39, v38, v25);
    v27(v29, 0, 1, v25);
    v30 = v40;
    v27(v40, 1, 1, v25);
    v31 = v45;

    RecipeHistoryItem.init(recipeID:lastVisitedDate:lastSeenDate:lastModifiedDate:)(v12, v31, v28, v29, v30, v41);
  }
}

uint64_t sub_1B64AA698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B64AA6BC, 0, 0);
}

uint64_t sub_1B64AA6BC()
{
  PrivateZone.add(_:)(v0[5]);
  rawValue = v0[2]._rawValue;
  if (v2)
  {
    v3 = swift_willThrow();
    if (rawValue)
    {
      (v0[2]._rawValue)(v3);
    }

    v4 = v0[1]._rawValue;
  }

  else
  {
    if (rawValue)
    {
      rawValue();
    }

    v4 = v0[1]._rawValue;
  }

  return v4();
}

uint64_t sub_1B64AA778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = swift_task_alloc();
  v6[12] = v7;
  *v7 = v6;
  v7[1] = sub_1B64AA818;

  return sub_1B6419EA0(0, 1);
}

uint64_t sub_1B64AA818(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_1B64AAE58;
  }

  else
  {
    v4 = sub_1B64AA92C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B64AA92C()
{
  v1 = v0[13];
  swift_getKeyPath();
  v2 = *(v1 + 16);
  v3 = v0[13];
  if (v2)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v2, 0);
    v4._rawValue = v21;
    v5 = (v3 + 64);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v0[2] = *(v5 - 4);
      v0[3] = v6;
      v0[4] = v7;
      v0[5] = v8;
      v0[6] = v9;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_getAtKeyPath();

      v10 = v0[7];
      v11 = v0[8];
      v13 = v21[2];
      v12 = v21[3];
      if (v13 >= v12 >> 1)
      {
        sub_1B6456B24((v12 > 1), v13 + 1, 1);
      }

      v21[2] = v13 + 1;
      v14 = &v21[2 * v13];
      v14[4] = v10;
      v14[5] = v11;
      v5 += 5;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4._rawValue = MEMORY[0x1E69E7CC0];
  }

  PrivateZone.remove(_:)(v4);
  if (v15)
  {
    v16 = v0[9];

    if (v16)
    {
      (v0[9])(v17);
    }

    v18 = v0[1];

    return v18();
  }

  else
  {

    v0[15] = swift_allocObject();
    swift_weakInit();
    v20 = swift_task_alloc();
    v0[16] = v20;
    *v20 = v0;
    v20[1] = sub_1B64AAC54;

    return MEMORY[0x1EEE6DD58]();
  }
}

uint64_t sub_1B64AAC54()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1B64AADE0;
  }

  else
  {

    v2 = sub_1B64AAD70;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64AAD70()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B64AADE0()
{
  v1 = *(v0 + 72);

  if (v1)
  {
    (*(v0 + 72))(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B64AAE58()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B64AAEC8@<X0>(uint64_t a1@<X0>, uint64_t *a6@<X8>)
{
  result = RecipeHistoryItem.id.getter(a1);
  *a6 = result;
  return result;
}

uint64_t sub_1B64AAF0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;

  sub_1B64E67E4(v2);
}

double sub_1B64AAFD4@<D0>(_OWORD *a1@<X8>)
{
  sub_1B67D8DCC();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1B64AB04C()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B64AB15C, 0, 0);
  }

  return result;
}

uint64_t sub_1B64AB15C()
{
  v1 = v0[17];
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = 0;
      v4 = v1 + 73;
      v5 = MEMORY[0x1E69E7CC0];
      v25 = MEMORY[0x1E69E7CC0];
      v26 = *(v1 + 16);
      v23 = v1 + 73;
      do
      {
        v6 = (v4 + 48 * v3);
        while (1)
        {
          if (v3 >= v2)
          {
            __break(1u);
LABEL_28:
            __break(1u);
            return MEMORY[0x1EEE6DD58]();
          }

          if (__OFADD__(v3, 1))
          {
            goto LABEL_28;
          }

          v28 = v3 + 1;
          v7 = *(v6 - 41);
          v8 = *(v6 - 33);
          v9 = *(v6 - 25);
          v10 = *(v6 - 17);
          v11 = *(v6 - 9);
          v12 = *(v6 - 1);
          if (*v6)
          {
            break;
          }

          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_1B64ABAD0(0, *(v5 + 2) + 1, 1, v5);
          }

          v14 = *(v5 + 2);
          v13 = *(v5 + 3);
          v15 = v5;
          if (v14 >= v13 >> 1)
          {
            v15 = sub_1B64ABAD0((v13 > 1), v14 + 1, 1, v5);
          }

          *(v15 + 2) = v14 + 1;
          v5 = v15;
          v16 = &v15[40 * v14];
          *(v16 + 4) = v7;
          *(v16 + 5) = v8;
          *(v16 + 6) = v9;
          *(v16 + 7) = v10;
          *(v16 + 8) = v11;
          sub_1B64AE9A4(v7, v8, v9, v10, v11, v12, 0);
          ++v3;
          v6 += 48;
          v2 = v26;
          if (v28 == v26)
          {
            goto LABEL_24;
          }
        }

        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1B646A2E0(0, *(v25 + 2) + 1, 1, v25);
        }

        v18 = *(v25 + 2);
        v17 = *(v25 + 3);
        if (v18 >= v17 >> 1)
        {
          v25 = sub_1B646A2E0((v17 > 1), v18 + 1, 1, v25);
        }

        *(v25 + 2) = v18 + 1;
        v19 = &v25[16 * v18];
        *(v19 + 4) = v7;
        *(v19 + 5) = v8;
        sub_1B64AE9A4(v7, v8, v9, v10, v11, v12, 1);
        v2 = v26;
        v3 = v28;
        v4 = v23;
      }

      while (v28 != v26);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
      v25 = MEMORY[0x1E69E7CC0];
    }

LABEL_24:
    v24[21] = v25;
    v24[22] = v5;

    v24[23] = swift_allocObject();
    swift_weakInit();
    v22 = swift_task_alloc();
    v24[24] = v22;
    *v22 = v24;
    v22[1] = sub_1B64AB508;

    return MEMORY[0x1EEE6DD58]();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1B64AB508()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1B64AB878;
  }

  else
  {

    v2 = sub_1B64AB624;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64AB624()
{
  sub_1B67D990C();
  *(v0 + 208) = sub_1B67D98FC();
  v2 = sub_1B67D989C();

  return MEMORY[0x1EEE6DFA0](sub_1B64AB6B8, v2, v1);
}

uint64_t sub_1B64AB6B8()
{
  v1 = v0[18];

  v2 = *(v1 + 24);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));
  if (v3 >> 62)
  {
    v4 = sub_1B67DA04C();
    v7 = v4;
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v4, v5, v6);
  }

  v8 = 0;
  v16 = v7;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B8C95180](v8, v3);
    }

    else
    {
      v9 = *(v3 + 8 * v8 + 32);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = v0[21];
      v18 = v0[22];
      v11 = v0[18];
      v10 = v0[19];
      v12 = *(v9 + 24);
      ObjectType = swift_getObjectType();
      v0[15] = v10;
      v0[16] = &off_1F2DBFB50;
      v0[12] = v11;
      v14 = *(v12 + 8);

      v14(v0 + 12, v18, v17, ObjectType, v12);
      v7 = v16;
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_1(v0 + 12);
    }

    else
    {
    }

    ++v8;
  }

  while (v7 != v8);
LABEL_13:

  v4 = sub_1B64AB8F8;
  v5 = 0;
  v6 = 0;

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B64AB878()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B64AB8F8()
{

  __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_1B64AB04C;

  return MEMORY[0x1EEE6D8D0](v0 + 136, 0, 0);
}

char *sub_1B64AB9CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B650, &qword_1B6814DE0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B64ABAD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF78, &qword_1B6814DE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1B64ABBF0(uint64_t a1, char a2, void *a3)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
LABEL_18:

    return;
  }

  v4 = 0;
  v5 = (a1 + 80);
  while (1)
  {
    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_1B67DA34C();
      __break(1u);
      goto LABEL_24;
    }

    v6 = *(v5 - 1);
    v7 = *v5;
    v8 = *(v5 - 3);
    v9 = *(v5 - 2);
    v11 = *(v5 - 5);
    v10 = *(v5 - 4);
    v12 = *(v5 - 6);

    if (!v11)
    {
      goto LABEL_18;
    }

    v32 = v6;
    v33 = v9;
    v34 = v8;
    v13 = *a3;
    v15 = sub_1B6456E70(v12, v11);
    v16 = v13[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_21;
    }

    v19 = v14;
    if (v13[3] < v18)
    {
      break;
    }

    if (a2)
    {
      if (v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1B64ABF38();
      if (v19)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v22 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    v23 = (v22[6] + 16 * v15);
    *v23 = v12;
    v23[1] = v11;
    v24 = (v22[7] + 40 * v15);
    *v24 = v10;
    v24[1] = v34;
    v24[2] = v33;
    v24[3] = v32;
    v24[4] = v7;
    v25 = v22[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_22;
    }

    ++v4;
    v22[2] = v27;
    v5 += 7;
    a2 = 1;
    if (v30 == v4)
    {
      goto LABEL_18;
    }
  }

  sub_1B64AC10C(v18, a2 & 1);
  v20 = sub_1B6456E70(v12, v11);
  if ((v19 & 1) != (v21 & 1))
  {
    goto LABEL_23;
  }

  v15 = v20;
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v28 = swift_allocError();
  swift_willThrow();
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_24:
  sub_1B67D9EFC();
  MEMORY[0x1B8C94910](0xD00000000000001BLL, 0x80000001B6829360);
  sub_1B67DA01C();
  MEMORY[0x1B8C94910](39, 0xE100000000000000);
  sub_1B67DA07C();
  __break(1u);
}

void *sub_1B64ABF38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF70, &qword_1B6814DD0);
  v27 = v0;
  v1 = *v0;
  v28 = sub_1B67DA0BC();
  if (*(v1 + 16))
  {
    result = (v28 + 64);
    v3 = ((1 << *(v28 + 32)) + 63) >> 6;
    if (v28 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v28 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = 16 * v14;
        v16 = (*(v1 + 48) + 16 * v14);
        v18 = *v16;
        v17 = v16[1];
        v14 *= 40;
        v19 = (*(v1 + 56) + v14);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v24 = v19[4];
        v25 = (*(v28 + 48) + v15);
        *v25 = v18;
        v25[1] = v17;
        v26 = (*(v28 + 56) + v14);
        *v26 = v20;
        v26[1] = v21;
        v26[2] = v22;
        v26[3] = v23;
        v26[4] = v24;
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v27 = v28;
  }

  return result;
}

uint64_t sub_1B64AC10C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF70, &qword_1B6814DD0);
  v46 = v4;
  result = sub_1B67DA0CC();
  v7 = result;
  if (*(v5 + 16))
  {
    v43 = v3;
    v44 = v5;
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
    v45 = result;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v47 = (v12 - 1) & v12;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = v25[1];
      v49 = *v25;
      v27 = (*(v5 + 56) + 40 * v24);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v31 = v27[3];
      v32 = v27[4];
      if ((v46 & 1) == 0)
      {
      }

      v48 = v30;
      v33 = v29;
      v34 = v28;
      sub_1B67DA3DC();
      sub_1B67D967C();
      result = sub_1B67DA41C();
      v7 = v45;
      v35 = -1 << *(v45 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v14 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v16 = v48;
        v17 = v32;
        v18 = v31;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v14 + 8 * v37);
          if (v41 != -1)
          {
            v15 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v16 = v48;
      v17 = v32;
      v18 = v31;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v19 = (*(v45 + 48) + 16 * v15);
      *v19 = v49;
      v19[1] = v26;
      v20 = (*(v45 + 56) + 40 * v15);
      *v20 = v34;
      v20[1] = v33;
      v20[2] = v16;
      v20[3] = v18;
      v20[4] = v17;
      ++*(v45 + 16);
      v5 = v44;
      v12 = v47;
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v47 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if (v46)
    {
      v42 = 1 << *(v5 + 32);
      if (v42 >= 64)
      {
        bzero(v9, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v42;
      }

      *(v5 + 16) = 0;
    }

    v3 = v43;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void *sub_1B64AC430(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B64AC470(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B64AC450(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B64AC5C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B64AC470(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF80, &qword_1B6814E10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AF88, &qword_1B6814E18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B64AC5C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF78, &qword_1B6814DE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1B64AC6E0(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_1B67DA04C();
    }

    result = sub_1B67D9F3C();
    *v2 = result;
  }

  return result;
}

uint64_t sub_1B64AC79C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B64AD4A8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B64AC808(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B64AC808(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B67DA27C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B67D981C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B64ACA24(v7, v8, a1, v4);
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
    return sub_1B64AC900(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B64AC900(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_1B64AE738();
    v7 = (v6 + 40 * v4);
    v8 = v5 - v4;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = sub_1B67D95EC();
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v4;
        v7 = (v7 + 40);
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *v10;
      v12 = v10[1];
      v13 = *(v10 + 4);
      v14 = *(v10 - 24);
      *v10 = *(v10 - 40);
      v10[1] = v14;
      *(v10 + 4) = *(v10 - 1);
      *(v10 - 24) = v12;
      *(v10 - 1) = v13;
      *(v10 - 40) = v11;
      v10 = (v10 - 40);
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B64ACA24(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v9 = *v7;
    if (!*v7)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v4 = a3;
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1B64AD494(v10);
      v10 = result;
    }

    v84 = v6;
    v85 = *(v10 + 2);
    if (v85 >= 2)
    {
      while (1)
      {
        v86 = *v4;
        if (!*v4)
        {
          goto LABEL_126;
        }

        v6 = v85 - 1;
        v4 = *&v10[16 * v85];
        v87 = *&v10[16 * v85 + 24];
        sub_1B64AD104((v86 + 40 * v4), (v86 + 40 * *&v10[16 * v85 + 16]), v86 + 40 * v87, v9);
        if (v84)
        {
        }

        if (v87 < v4)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1B64AD494(v10);
        }

        if (v85 - 2 >= *(v10 + 2))
        {
          goto LABEL_116;
        }

        v88 = &v10[16 * v85];
        *v88 = v4;
        *(v88 + 1) = v87;
        result = sub_1B64AD408(v6);
        v85 = *(v10 + 2);
        v4 = a3;
        if (v85 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v91 = result;
  while (1)
  {
    v11 = v9;
    if (v9 + 1 >= v8)
    {
      v16 = v9 + 1;
      v17 = a3;
    }

    else
    {
      v12 = 40 * v9;
      v9 = *a3 + 40 * v9;
      sub_1B64AE738();
      result = sub_1B67D95EC();
      v13 = v11;
      v14 = result;
      v90 = v13;
      v4 = v13 + 2;
      v15 = (v9 + 56);
      do
      {
        if (v8 == v4)
        {
          v16 = v8;
          v7 = v91;
          v17 = a3;
          if ((v14 & 1) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_70;
        }

        v9 = (v15 + 40);
        result = sub_1B67D95EC();
        ++v4;
        v15 = v9;
      }

      while ((v14 & 1) == (result & 1));
      v16 = v4 - 1;
      v7 = v91;
      v17 = a3;
      if ((v14 & 1) == 0)
      {
LABEL_9:
        v11 = v90;
        goto LABEL_11;
      }

LABEL_70:
      v11 = v90;
      if (v16 < v90)
      {
        goto LABEL_119;
      }

      if (v90 < v16)
      {
        v64 = 40 * v16 - 40;
        v65 = v16;
        v66 = v90;
        do
        {
          if (v66 != --v65)
          {
            v74 = *v17;
            if (!*v17)
            {
              goto LABEL_125;
            }

            v67 = v74 + v12;
            v68 = *(v74 + v12 + 32);
            v69 = v74 + v64;
            v70 = *v67;
            v71 = *(v67 + 16);
            v72 = *(v69 + 32);
            v73 = *(v69 + 16);
            *v67 = *v69;
            *(v67 + 16) = v73;
            *(v67 + 32) = v72;
            *v69 = v70;
            *(v69 + 16) = v71;
            *(v69 + 32) = v68;
          }

          ++v66;
          v64 -= 40;
          v12 += 40;
        }

        while (v66 < v65);
      }
    }

LABEL_11:
    v18 = v17[1];
    if (v16 < v18)
    {
      if (__OFSUB__(v16, v11))
      {
        goto LABEL_118;
      }

      if (v16 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_120;
        }

        if (v11 + a4 < v18)
        {
          v18 = v11 + a4;
        }

        if (v18 < v11)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v16 != v18)
        {
          break;
        }
      }
    }

    v9 = v16;
    if (v16 < v11)
    {
      goto LABEL_117;
    }

LABEL_20:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B64AB9CC(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v4 = *(v10 + 2);
    v19 = *(v10 + 3);
    v20 = v4 + 1;
    if (v4 >= v19 >> 1)
    {
      result = sub_1B64AB9CC((v19 > 1), v4 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v20;
    v21 = &v10[16 * v4];
    *(v21 + 4) = v11;
    *(v21 + 5) = v9;
    v22 = *v7;
    if (!*v7)
    {
      goto LABEL_127;
    }

    if (v4)
    {
      while (1)
      {
        v23 = v20 - 1;
        if (v20 >= 4)
        {
          break;
        }

        if (v20 == 3)
        {
          v24 = *(v10 + 4);
          v25 = *(v10 + 5);
          v34 = __OFSUB__(v25, v24);
          v26 = v25 - v24;
          v27 = v34;
LABEL_39:
          if (v27)
          {
            goto LABEL_106;
          }

          v40 = &v10[16 * v20];
          v42 = *v40;
          v41 = *(v40 + 1);
          v43 = __OFSUB__(v41, v42);
          v44 = v41 - v42;
          v45 = v43;
          if (v43)
          {
            goto LABEL_109;
          }

          v46 = &v10[16 * v23 + 32];
          v48 = *v46;
          v47 = *(v46 + 1);
          v34 = __OFSUB__(v47, v48);
          v49 = v47 - v48;
          if (v34)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v44, v49))
          {
            goto LABEL_113;
          }

          if (v44 + v49 >= v26)
          {
            if (v26 < v49)
            {
              v23 = v20 - 2;
            }

            goto LABEL_60;
          }

          goto LABEL_53;
        }

        v50 = &v10[16 * v20];
        v52 = *v50;
        v51 = *(v50 + 1);
        v34 = __OFSUB__(v51, v52);
        v44 = v51 - v52;
        v45 = v34;
LABEL_53:
        if (v45)
        {
          goto LABEL_108;
        }

        v53 = &v10[16 * v23];
        v55 = *(v53 + 4);
        v54 = *(v53 + 5);
        v34 = __OFSUB__(v54, v55);
        v56 = v54 - v55;
        if (v34)
        {
          goto LABEL_111;
        }

        if (v56 < v44)
        {
          goto LABEL_3;
        }

LABEL_60:
        v4 = v23 - 1;
        if (v23 - 1 >= v20)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*v17)
        {
          goto LABEL_124;
        }

        v61 = *&v10[16 * v4 + 32];
        v62 = *&v10[16 * v23 + 40];
        sub_1B64AD104((*v17 + 40 * v61), (*v17 + 40 * *&v10[16 * v23 + 32]), *v17 + 40 * v62, v22);
        if (v5)
        {
        }

        if (v62 < v61)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1B64AD494(v10);
        }

        if (v4 >= *(v10 + 2))
        {
          goto LABEL_103;
        }

        v63 = &v10[16 * v4];
        *(v63 + 4) = v61;
        *(v63 + 5) = v62;
        result = sub_1B64AD408(v23);
        v20 = *(v10 + 2);
        if (v20 <= 1)
        {
          goto LABEL_3;
        }
      }

      v28 = &v10[16 * v20 + 32];
      v29 = *(v28 - 64);
      v30 = *(v28 - 56);
      v34 = __OFSUB__(v30, v29);
      v31 = v30 - v29;
      if (v34)
      {
        goto LABEL_104;
      }

      v33 = *(v28 - 48);
      v32 = *(v28 - 40);
      v34 = __OFSUB__(v32, v33);
      v26 = v32 - v33;
      v27 = v34;
      if (v34)
      {
        goto LABEL_105;
      }

      v35 = &v10[16 * v20];
      v37 = *v35;
      v36 = *(v35 + 1);
      v34 = __OFSUB__(v36, v37);
      v38 = v36 - v37;
      if (v34)
      {
        goto LABEL_107;
      }

      v34 = __OFADD__(v26, v38);
      v39 = v26 + v38;
      if (v34)
      {
        goto LABEL_110;
      }

      if (v39 >= v31)
      {
        v57 = &v10[16 * v23 + 32];
        v59 = *v57;
        v58 = *(v57 + 1);
        v34 = __OFSUB__(v58, v59);
        v60 = v58 - v59;
        if (v34)
        {
          goto LABEL_114;
        }

        if (v26 < v60)
        {
          v23 = v20 - 2;
        }

        goto LABEL_60;
      }

      goto LABEL_39;
    }

LABEL_3:
    v8 = v17[1];
    v7 = v91;
    if (v9 >= v8)
    {
      goto LABEL_89;
    }
  }

  v93 = v18;
  v75 = *v17;
  sub_1B64AE738();
  v76 = v75 + 40 * v16;
  v4 = v11 - v16;
LABEL_80:
  v94 = v16;
  v77 = v4;
  v78 = v76;
  while (1)
  {
    result = sub_1B67D95EC();
    if ((result & 1) == 0)
    {
LABEL_79:
      ++v16;
      v76 += 40;
      --v4;
      if ((v94 + 1) != v93)
      {
        goto LABEL_80;
      }

      v7 = v91;
      v17 = a3;
      v9 = v93;
      if (v93 < v11)
      {
        goto LABEL_117;
      }

      goto LABEL_20;
    }

    if (!v75)
    {
      break;
    }

    v79 = *v78;
    v80 = v78[1];
    v81 = *(v78 + 4);
    v82 = *(v78 - 24);
    *v78 = *(v78 - 40);
    v78[1] = v82;
    *(v78 + 4) = *(v78 - 1);
    *(v78 - 24) = v80;
    *(v78 - 1) = v81;
    *(v78 - 40) = v79;
    v78 = (v78 - 40);
    if (__CFADD__(v77++, 1))
    {
      goto LABEL_79;
    }
  }

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
  return result;
}

uint64_t sub_1B64AD104(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[40 * v11] <= a4)
    {
      memmove(a4, a2, 40 * v11);
    }

    v12 = &v4[40 * v11];
    if (v10 < 40 || v6 <= v7)
    {
      v17 = v6;
    }

    else
    {
      v32 = v4;
      sub_1B64AE738();
LABEL_23:
      v31 = v5;
      v18 = 0;
      v19 = v12;
      v30 = v6 - 40;
      do
      {
        v20 = v19;
        v12 = &v19[v18];
        v21 = &v19[v18 - 40];
        v22 = (v31 + v18);
        v23 = (v31 + v18 - 40);
        if (sub_1B67D95EC())
        {
          v17 = v6 - 40;
          if (v22 != v6)
          {
            v26 = *v30;
            v27 = *(v6 - 24);
            *(v31 + v18 - 8) = *(v6 - 1);
            *v23 = v26;
            *(v31 + v18 - 24) = v27;
          }

          if (v12 <= v32 || (v5 = v31 + v18 - 40, v6 -= 40, v30 <= v7))
          {
            v12 = &v20[v18];
            goto LABEL_35;
          }

          goto LABEL_23;
        }

        if (v22 != v12)
        {
          v24 = *v21;
          v25 = *(v21 + 16);
          *(v31 + v18 - 8) = *(v21 + 32);
          *v23 = v24;
          *(v31 + v18 - 24) = v25;
        }

        v18 -= 40;
        v19 = v20;
        v12 = &v20[v18];
      }

      while (&v20[v18] > v32);
      v17 = v6;
LABEL_35:
      v4 = v32;
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
    }

    v12 = &v4[40 * v9];
    if (v8 >= 40 && v6 < v5)
    {
      sub_1B64AE738();
      while ((sub_1B67D95EC() & 1) != 0)
      {
        v13 = v6;
        v14 = v7 == v6;
        v6 += 40;
        if (!v14)
        {
          goto LABEL_13;
        }

LABEL_14:
        v7 += 40;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_16;
        }
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 40;
      if (v14)
      {
        goto LABEL_14;
      }

LABEL_13:
      v15 = *v13;
      v16 = *(v13 + 1);
      *(v7 + 4) = *(v13 + 4);
      *v7 = v15;
      *(v7 + 1) = v16;
      goto LABEL_14;
    }

LABEL_16:
    v17 = v7;
  }

  v28 = (v12 - v4) / 40;
  if (v17 != v4 || v17 >= &v4[40 * v28])
  {
    memmove(v17, v4, 40 * v28);
  }

  return 1;
}

uint64_t sub_1B64AD408(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B64AD494(v3);
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

uint64_t sub_1B64AD558()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B6422E9C;

  return sub_1B64AA698(v6, v7, v8, v2, v3, v5, v4);
}

unint64_t sub_1B64AD610(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF70, &qword_1B6814DD0);
    v3 = sub_1B67DA0EC();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = sub_1B6456E70(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = (v3[7] + 40 * result);
      *v15 = v7;
      v15[1] = v8;
      v15[2] = v9;
      v15[3] = v10;
      v15[4] = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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

uint64_t dispatch thunk of RecipeHistoryType.historyItems(maxAge:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B6484E3C;

  return v11(a1, a2 & 1, a3, a4);
}

uint64_t dispatch thunk of RecipeHistoryType.historyItem(recipeID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B6422E9C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of RecipeHistoryType.historyItems(recipeIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B64AEA6C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of RecipeHistoryType.addOrUpdate(recipeID:lastVisitedDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 48))(a1, a2, a3, a4);
}

{
  v13 = (*(a5 + 56) + **(a5 + 56));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B6422E9C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of RecipeHistoryType.addOrUpdate(recipeID:lastSeenDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 64))(a1, a2, a3, a4);
}

{
  v13 = (*(a5 + 80) + **(a5 + 80));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B6422E9C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of RecipeHistoryType.removeAll()(uint64_t a1, uint64_t a2)
{
  return (*(a2 + 88))(a1);
}

{
  v7 = (*(a2 + 96) + **(a2 + 96));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B6422E9C;

  return v7(a1, a2);
}

uint64_t sub_1B64ADF9C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B6422E9C;

  return sub_1B64AA778(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1B64AE044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for RecipeHistoryObserverProxy();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1B67DA04C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1B67DA04C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B64AE140(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1B67DA04C();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_1B67DA04C();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_1B64AC6E0(result, 1);

  return sub_1B64AE044(v5, v3, 0);
}

uint64_t objectdestroy_20Tm()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B64AE2C4(char **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v51 = MEMORY[0x1E69E7CC0];
    sub_1B647DDF4(0, v3, 0);
    v4 = v51;
    v5 = (v2 + 64);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v50[0] = *(v5 - 4);
      v50[1] = v6;
      v50[2] = v7;
      v50[3] = v8;
      v50[4] = v9;

      RecipeHistoryItem.id.getter(v10);
      sub_1B67D8DCC();

      v11 = v53;
      v51 = v4;
      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1B647DDF4((v12 > 1), v13 + 1, 1);
        v11 = v53;
        v4 = v51;
      }

      *(v4 + 16) = v13 + 1;
      *(v4 + 16 * v13 + 32) = v11;
      v5 += 5;
      --v3;
    }

    while (v3);
    v14 = a1;
  }

  else
  {
    v14 = a1;
  }

  v15 = sub_1B647F10C(v4);

  v16 = *v14;
  v46 = *(*v14 + 16);
  if (!v46)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_36;
  }

  v17 = 0;
  v43 = v16 + 32;
  v18 = v15 + 56;
  v19 = MEMORY[0x1E69E7CC0];
  v20 = v15;
  v44 = *v14;
  v45 = v15;
LABEL_10:
  v47 = v19;
  do
  {
    if (v17 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }

    v21 = (v43 + 40 * v17);
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];
    v25 = v21[3];
    v26 = v21[4];
    ++v17;
    *&v53 = *v21;
    *(&v53 + 1) = v23;
    v54 = v24;
    v55 = v25;
    v56 = v26;

    v48 = v24;

    RecipeHistoryItem.id.getter(v27);
    sub_1B67D8DCC();

    v49 = v26;
    if (!*(v20 + 16))
    {
      goto LABEL_29;
    }

    sub_1B67DA3DC();
    sub_1B67DA3FC();
    if (v52)
    {
      sub_1B67D967C();
    }

    v28 = sub_1B67DA41C();
    v29 = -1 << *(v20 + 32);
    v30 = v28 & ~v29;
    if (((*(v18 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
    {
LABEL_29:

      v19 = v47;
      v57 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B64AC450(0, *(v47 + 16) + 1, 1);
        v19 = v57;
      }

      v16 = v44;
      v37 = *(v19 + 16);
      v36 = *(v19 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1B64AC450((v36 > 1), v37 + 1, 1);
        v19 = v57;
      }

      *(v19 + 16) = v37 + 1;
      v38 = (v19 + 40 * v37);
      v38[4] = v22;
      v38[5] = v23;
      v38[6] = v48;
      v38[7] = v25;
      v38[8] = v49;
      v20 = v45;
      if (v17 == v46)
      {
        break;
      }

      goto LABEL_10;
    }

    v31 = ~v29;
    v32 = *(v20 + 48);
    while (1)
    {
      v33 = (v32 + 16 * v30);
      v34 = v33[1];
      if (v34)
      {
        break;
      }

      if (!v52)
      {
        goto LABEL_27;
      }

LABEL_18:
      v30 = (v30 + 1) & v31;
      if (((*(v18 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    if (!v52)
    {
      goto LABEL_18;
    }

    v35 = *v33 == v51 && v34 == v52;
    if (!v35 && (sub_1B67DA2DC() & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_27:

    v20 = v45;
    v16 = v44;
    v19 = v47;
  }

  while (v17 != v46);
LABEL_36:

  *a1 = v19;

  sub_1B64A9FC0(v39);
  v50[0] = *a1;

  sub_1B64AC79C(v50);
  v20 = v41;
  if (!v41)
  {

    *a1 = v50[0];
    return result;
  }

LABEL_39:

  __break(1u);
  return result;
}

unint64_t sub_1B64AE738()
{
  result = qword_1EDB1EC40;
  if (!qword_1EDB1EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EC40);
  }

  return result;
}

uint64_t objectdestroy_66Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF68, &qword_1B6814D58);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B64AE8E8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B642694C;

  return sub_1B64AA138(v5, v6, v7, v2, v3, v4, (v0 + 7));
}

uint64_t sub_1B64AE994(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B64AE9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
  }
}

void *sub_1B64AEAC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v34 = sub_1B67D8A9C();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B67D856C();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB50, &qword_1B6814FD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_1B67D85FC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v31 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0F0, &unk_1B6814FA0);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v19 = [result contentDirectory];
  sub_1B67D964C();

  v29 = v10;
  v30 = v9;
  (*(v10 + 56))(v8, 1, 1, v9);
  (*(v37 + 104))(v36, *MEMORY[0x1E6968F70], v38);
  sub_1B67D85CC();
  sub_1B67D859C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for GlobalESLService();
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v40 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B140, &qword_1B6814FF8);
  result = sub_1B67D88DC();
  if (v39[3])
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B160, &qword_1B6815018);
    v22 = v29;
    v21 = v30;
    v23 = v31;
    (*(v29 + 16))(v31, v15, v30);
    v24 = sub_1B647147C();
    v25 = v33;
    (*(v32 + 16))(v33, v24, v34);
    v26 = FeedItemInventory.__allocating_init(feedItemService:feedItemScoringService:fileURL:refreshInterval:logger:)(&v40, v39, v23, v25, 86400.0);
    v27 = v35;
    v35[3] = v20;
    v27[4] = &protocol witness table for FeedItemInventory<A>;
    swift_unknownObjectRelease();
    *v27 = v26;
    v28 = *(v22 + 8);
    v28(v15, v21);
    return (v28)(v17, v21);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1B64AEF54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v34 = sub_1B67D8A9C();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B67D856C();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB50, &qword_1B6814FD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_1B67D85FC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v31 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0F0, &unk_1B6814FA0);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v19 = [result contentDirectory];
  sub_1B67D964C();

  v29 = v10;
  v30 = v9;
  (*(v10 + 56))(v8, 1, 1, v9);
  (*(v37 + 104))(v36, *MEMORY[0x1E6968F70], v38);
  sub_1B67D85CC();
  sub_1B67D859C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagESLService();
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v40 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B140, &qword_1B6814FF8);
  result = sub_1B67D88DC();
  if (v39[3])
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B158, &qword_1B6815010);
    v22 = v29;
    v21 = v30;
    v23 = v31;
    (*(v29 + 16))(v31, v15, v30);
    v24 = sub_1B6471680();
    v25 = v33;
    (*(v32 + 16))(v33, v24, v34);
    v26 = FeedItemInventory.__allocating_init(feedItemService:feedItemScoringService:fileURL:refreshInterval:logger:)(&v40, v39, v23, v25, 86400.0);
    v27 = v35;
    v35[3] = v20;
    v27[4] = &protocol witness table for FeedItemInventory<A>;
    swift_unknownObjectRelease();
    *v27 = v26;
    v28 = *(v22 + 8);
    v28(v15, v21);
    return (v28)(v17, v21);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1B64AF3E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v34 = sub_1B67D8A9C();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B67D856C();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB50, &qword_1B6814FD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_1B67D85FC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v31 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0F0, &unk_1B6814FA0);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v19 = [result contentDirectory];
  sub_1B67D964C();

  v29 = v10;
  v30 = v9;
  (*(v10 + 56))(v8, 1, 1, v9);
  (*(v37 + 104))(v36, *MEMORY[0x1E6968F70], v38);
  sub_1B67D85CC();
  sub_1B67D859C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for BridgedFeedItemService();
  result = sub_1B67D88BC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v40 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B140, &qword_1B6814FF8);
  result = sub_1B67D88DC();
  if (v39[3])
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B150, &qword_1B6815008);
    v22 = v29;
    v21 = v30;
    v23 = v31;
    (*(v29 + 16))(v31, v15, v30);
    v24 = sub_1B64715D4();
    v25 = v33;
    (*(v32 + 16))(v33, v24, v34);
    v26 = FeedItemInventory.__allocating_init(feedItemService:feedItemScoringService:fileURL:refreshInterval:logger:)(&v40, v39, v23, v25, 21600.0);
    v27 = v35;
    v35[3] = v20;
    v27[4] = &protocol witness table for FeedItemInventory<A>;
    swift_unknownObjectRelease();
    *v27 = v26;
    v28 = *(v22 + 8);
    v28(v15, v21);
    return (v28)(v17, v21);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1B64AF88C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v36 = sub_1B67D8A9C();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B67D856C();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v38 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB50, &qword_1B6814FD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v30 - v7;
  v9 = sub_1B67D85FC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v31 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v30 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v30 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0F0, &unk_1B6814FA0);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v30[1] = result;
  v19 = [result contentDirectory];
  sub_1B67D964C();

  v32 = v10;
  v33 = v9;
  (*(v10 + 56))(v8, 1, 1, v9);
  (*(v39 + 104))(v38, *MEMORY[0x1E6968F70], v40);
  sub_1B67D85CC();
  sub_1B67D859C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v20 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B018, &unk_1B6814F08);
  result = sub_1B67D88DC();
  if (!v43)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  type metadata accessor for MyArticlesFeedItemService();
  v41 = sub_1B6507F14(v20, v42);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B140, &qword_1B6814FF8);

  result = sub_1B67D88DC();
  v22 = v32;
  v21 = v33;
  if (v43)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B148, &qword_1B6815000);
    v24 = v31;
    (*(v22 + 16))(v31, v15, v21);
    v25 = sub_1B6471528();
    v26 = v35;
    (*(v34 + 16))(v35, v25, v36);
    v27 = FeedItemInventory.__allocating_init(feedItemService:feedItemScoringService:fileURL:refreshInterval:logger:)(&v41, v42, v24, v26, 900.0);
    v28 = v37;
    v37[3] = v23;
    v28[4] = &protocol witness table for FeedItemInventory<A>;

    swift_unknownObjectRelease();
    *v28 = v27;
    v29 = *(v22 + 8);
    v29(v15, v21);
    return (v29)(v17, v21);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1B64AFD98(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B63F3DA0(0, &unk_1EDB1F010, off_1E7C34E00);
  result = sub_1B67D88CC();
  if (result)
  {
    v2 = result;
    type metadata accessor for BridgedFeedItemService();
    return sub_1B64314B0(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PingBasedOnlineNetworkTransitionMonitor.__allocating_init(configurationManager:hostName:port:)(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = objc_allocWithZone(v4);
  v13 = OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_dateOfLastTransitionLock;
  v14 = sub_1B67D877C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AD68, &qword_1B6814558);
  v15 = swift_allocObject();
  *(v15 + ((*(*v15 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1B6404758(v11, v15 + *(*v15 + *MEMORY[0x1E69E6B68] + 16));
  *&v12[v13] = v15;
  *&v12[OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_configurationManager] = a1;
  v16 = &v12[OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_hostName];
  *v16 = a2;
  *(v16 + 1) = a3;
  *&v12[OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_port] = a4;
  v18.receiver = v12;
  v18.super_class = v4;
  return objc_msgSendSuper2(&v18, sel_init);
}

id sub_1B64B007C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [*&v3[OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_configurationManager] possiblyUnfetchedAppConfiguration];
  v8 = 1.0;
  if ([v7 respondsToSelector_])
  {
    [v7 offlineModeDetectionPingInterval];
    v8 = v9;
  }

  v10 = 5.0;
  if ([v7 respondsToSelector_])
  {
    [v7 offlineModeDetectionPingTimeoutInterval];
    v10 = v11;
  }

  v12 = *&v3[OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_hostName + 8];
  v26 = *&v3[OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_hostName];
  v25 = *&v3[OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_port];
  v13 = swift_allocObject();
  *(v13 + 2) = a1;
  *(v13 + 3) = a2;
  *(v13 + 4) = a3;
  *(v13 + 5) = v3;
  v14 = type metadata accessor for PingBasedOnlineNetworkTransitionOperation();
  v15 = objc_allocWithZone(v14);
  v16 = OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_log;
  sub_1B63F3DA0(0, &qword_1EDB1E538, 0x1E69E9BF8);

  v17 = a1;

  v18 = v3;
  *&v15[v16] = sub_1B67D9DCC();
  v19 = OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_probeLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B1A8, &qword_1B6815020);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = 0;
  *&v15[v19] = v20;
  *&v15[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_probe] = 0;
  *&v15[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_pingInterval] = v8;
  *&v15[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_pingTimeoutInterval] = v10;
  v21 = &v15[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_hostName];
  *v21 = v26;
  *(v21 + 1) = v12;
  *&v15[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_port] = v25;
  v22 = &v15[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_notificationBlock];
  *v22 = sub_1B64B05E0;
  v22[1] = v13;
  v27.receiver = v15;
  v27.super_class = v14;
  v23 = objc_msgSendSuper2(&v27, sel_init);
  [v23 start];
  swift_unknownObjectRelease();
  return v23;
}

void sub_1B64B02F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[0] = a4;
  v6 = sub_1B67D946C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B67D949C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B64B2AA0;
  aBlock[3] = &block_descriptor_55;
  v14 = _Block_copy(aBlock);

  sub_1B67D947C();
  v18[1] = MEMORY[0x1E69E7CC0];
  sub_1B64B2808(&qword_1EDB1EF78, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B1F0, &qword_1B6810310);
  sub_1B64B2278();
  sub_1B67D9E5C();
  MEMORY[0x1B8C94F30](0, v13, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);

  v15 = *(v18[0] + OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_dateOfLastTransitionLock);
  v16 = *(*v15 + *MEMORY[0x1E69E6B68] + 16);
  v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v15 + v17));
  sub_1B64B05EC(v15 + v16);
  os_unfair_lock_unlock((v15 + v17));
}

uint64_t sub_1B64B05EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  sub_1B6404758(a1, &v16 - v6);
  v8 = sub_1B67D877C();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v10 = sub_1B67D86DC();
    (*(v9 + 8))(v7, v8);
  }

  v11 = objc_opt_self();
  v12 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
  v13 = [v11 fc:v10 laterDateAllowingNilWithDate:v12 andDate:?];

  if (v13)
  {
    sub_1B67D874C();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  (*(v9 + 56))(v5, v14, 1, v8);
  return sub_1B6404758(v5, a1);
}

id PingBasedOnlineNetworkTransitionOperation.__allocating_init(pingInterval:pingTimeoutInterval:hostName:port:notificationBlock:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v8 = v7;
  v16 = objc_allocWithZone(v7);
  v17 = OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_log;
  sub_1B63F3DA0(0, &qword_1EDB1E538, 0x1E69E9BF8);
  *&v16[v17] = sub_1B67D9DCC();
  v18 = OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_probeLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B1A8, &qword_1B6815020);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = 0;
  *&v16[v18] = v19;
  *&v16[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_probe] = 0;
  *&v16[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_pingInterval] = a6;
  *&v16[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_pingTimeoutInterval] = a7;
  v20 = &v16[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_hostName];
  *v20 = a1;
  *(v20 + 1) = a2;
  *&v16[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_port] = a3;
  v21 = &v16[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_notificationBlock];
  *v21 = a4;
  *(v21 + 1) = a5;
  v23.receiver = v16;
  v23.super_class = v8;
  return objc_msgSendSuper2(&v23, sel_init);
}

void sub_1B64B0A10(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_dateOfLastTransitionLock);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1B6403FD4(v3 + v4, a1);

  os_unfair_lock_unlock((v3 + v5));
}

id PingBasedOnlineNetworkTransitionMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B64B0C04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_probe;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id PingBasedOnlineNetworkTransitionOperation.init(pingInterval:pingTimeoutInterval:hostName:port:notificationBlock:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v8 = v7;
  v16 = OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_log;
  sub_1B63F3DA0(0, &qword_1EDB1E538, 0x1E69E9BF8);
  *&v7[v16] = sub_1B67D9DCC();
  v17 = OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_probeLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B1A8, &qword_1B6815020);
  v18 = swift_allocObject();
  *&v8[v17] = v18;
  *&v8[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_probe] = 0;
  *(v18 + 24) = 0;
  *&v8[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_pingInterval] = a6;
  *&v8[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_pingTimeoutInterval] = a7;
  v19 = &v8[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_hostName];
  *v19 = a1;
  *(v19 + 1) = a2;
  *&v8[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_port] = a3;
  *(v18 + 16) = 0;
  v20 = &v8[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_notificationBlock];
  *v20 = a4;
  *(v20 + 1) = a5;
  v22.receiver = v8;
  v22.super_class = type metadata accessor for PingBasedOnlineNetworkTransitionOperation();
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t sub_1B64B0E24()
{
  v1 = v0;
  v59 = sub_1B67D946C();
  v62 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B67D949C();
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v57 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B67D94BC();
  v6 = *(v5 - 8);
  v66 = v5;
  v67 = v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v55 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v56 = v50 - v9;
  v10 = sub_1B67D902C();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v63 = v50 - v14;
  v15 = sub_1B67D8FFC();
  v53 = v15;
  v54 = *(v15 - 8);
  v16 = v54;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v50 - v20;
  v52 = v50 - v20;
  v22 = [v0 operationID];
  v23 = sub_1B67D964C();
  v51 = v23;
  v25 = v24;

  v26 = *&v1[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_log];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B1E0, &unk_1B6815028);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1B68100D0;
  *(v27 + 56) = MEMORY[0x1E69E6158];
  *(v27 + 64) = sub_1B64B164C();
  *(v27 + 32) = v23;
  *(v27 + 40) = v25;

  v28 = sub_1B67D9C9C();
  sub_1B67D8A6C("performing ping operation %@", 28, 2, &dword_1B63EF000, v26, v28, v27);

  sub_1B67D900C();
  v29 = v63;
  sub_1B67D901C();
  sub_1B67D908C();
  (*(v16 + 16))(v19, v21, v15);
  (*(v64 + 16))(v13, v29, v65);
  sub_1B67D90AC();
  sub_1B67D909C();
  v30 = sub_1B67D905C();
  v31 = [v1 retryCount];
  v32 = [objc_allocWithZone(FCOnce) init];
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v26;
  v34[4] = v51;
  v34[5] = v25;
  v34[6] = v31;
  v34[7] = v32;

  v35 = v26;
  v36 = v32;
  sub_1B64AE994(sub_1B64B2110, v34);
  sub_1B67D904C();

  v37 = *&v1[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_probeLock];
  os_unfair_lock_lock((v37 + 24));
  v50[1] = v30;
  sub_1B64B2120((v37 + 16));
  os_unfair_lock_unlock((v37 + 24));
  sub_1B63F3DA0(0, &qword_1EDB1FB00, 0x1E69E9610);
  v38 = sub_1B67D9CFC();
  sub_1B67D907C();
  v39 = v55;
  sub_1B67D94AC();
  v40 = v56;
  sub_1B67D94DC();
  v41 = *(v67 + 8);
  v67 += 8;
  v51 = v41;
  v41(v39, v66);
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v36;
  aBlock[4] = sub_1B64B215C;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B6453FF4;
  aBlock[3] = &block_descriptor_8;
  v44 = _Block_copy(aBlock);
  v45 = v36;

  v46 = v57;
  sub_1B67D947C();
  v68 = MEMORY[0x1E69E7CC0];
  sub_1B64B2808(&qword_1EDB1EF78, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B1F0, &qword_1B6810310);
  sub_1B64B2278();
  v48 = v58;
  v47 = v59;
  sub_1B67D9E5C();
  MEMORY[0x1B8C94F20](v40, v46, v48, v44);

  _Block_release(v44);

  (*(v62 + 8))(v48, v47);
  (*(v60 + 8))(v46, v61);
  v51(v40, v66);
  (*(v64 + 8))(v63, v65);
  (*(v54 + 8))(v52, v53);
}

unint64_t sub_1B64B164C()
{
  result = qword_1EDB1E668;
  if (!qword_1EDB1E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E668);
  }

  return result;
}

void sub_1B64B16A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v82 = a7;
  v83 = a4;
  v84 = a6;
  v85 = a5;
  v86 = a3;
  v8 = sub_1B67D90BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v80 - v13;
  v15 = sub_1B67D906C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    (*(v16 + 16))(v18, a1, v15);
    v21 = (*(v16 + 88))(v18, v15);
    if (v21 == *MEMORY[0x1E6977C18])
    {
      (*(v16 + 96))(v18, v15);
      v81 = v20;
      v80 = *(v9 + 32);
      v80(v14, v18, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B1E0, &unk_1B6815028);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1B6813190;
      *(v22 + 56) = MEMORY[0x1E69E6158];
      v23 = sub_1B64B164C();
      v24 = v85;
      *(v22 + 32) = v83;
      *(v22 + 40) = v24;
      v25 = MEMORY[0x1E69E6870];
      *(v22 + 96) = MEMORY[0x1E69E6810];
      *(v22 + 104) = v25;
      v26 = v84;
      *(v22 + 64) = v23;
      *(v22 + 72) = v26;
      sub_1B64B2808(&qword_1EB94B2D8, MEMORY[0x1E6977D78], MEMORY[0x1E6977D88]);

      v27 = sub_1B67DA37C();
      *(v22 + 136) = MEMORY[0x1E69E6158];
      *(v22 + 144) = v23;
      *(v22 + 112) = v27;
      *(v22 + 120) = v28;
      v29 = sub_1B67D9C9C();
      sub_1B67D8A6C("pinger for %@, attempt %d waiting with %@", 41, 2, &dword_1B63EF000, v86, v29, v22);

      (*(v9 + 16))(v12, v14, v8);
      v30 = (*(v9 + 80) + 24) & ~*(v9 + 80);
      v31 = swift_allocObject();
      v32 = v80;
      v33 = v81;
      *(v31 + 16) = v81;
      v32(v31 + v30, v12, v8);
      v91 = sub_1B64B2AA4;
      v92 = v31;
      aBlock = MEMORY[0x1E69E9820];
      v88 = 1107296256;
      v34 = &block_descriptor_52;
LABEL_6:
      v89 = sub_1B64B2AA0;
      v90 = v34;
      v46 = _Block_copy(&aBlock);
      v47 = v33;

      [v82 executeOnce_];
      _Block_release(v46);

      (*(v9 + 8))(v14, v8);
      return;
    }

    if (v21 == *MEMORY[0x1E6977C10])
    {
      (*(v16 + 96))(v18, v15);
      v81 = v20;
      v80 = *(v9 + 32);
      v80(v14, v18, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B1E0, &unk_1B6815028);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1B6813190;
      *(v35 + 56) = MEMORY[0x1E69E6158];
      v36 = sub_1B64B164C();
      v37 = v85;
      *(v35 + 32) = v83;
      *(v35 + 40) = v37;
      v38 = MEMORY[0x1E69E6870];
      *(v35 + 96) = MEMORY[0x1E69E6810];
      *(v35 + 104) = v38;
      v39 = v84;
      *(v35 + 64) = v36;
      *(v35 + 72) = v39;
      sub_1B64B2808(&qword_1EB94B2D8, MEMORY[0x1E6977D78], MEMORY[0x1E6977D88]);

      v40 = sub_1B67DA37C();
      *(v35 + 136) = MEMORY[0x1E69E6158];
      *(v35 + 144) = v36;
      *(v35 + 112) = v40;
      *(v35 + 120) = v41;
      v42 = sub_1B67D9C9C();
      sub_1B67D8A6C("pinger for %@, attempt %d failed with %@", 40, 2, &dword_1B63EF000, v86, v42, v35);

      (*(v9 + 16))(v12, v14, v8);
      v43 = (*(v9 + 80) + 24) & ~*(v9 + 80);
      v44 = swift_allocObject();
      v45 = v80;
      v33 = v81;
      *(v44 + 16) = v81;
      v45(v44 + v43, v12, v8);
      v91 = sub_1B64B2850;
      v92 = v44;
      aBlock = MEMORY[0x1E69E9820];
      v88 = 1107296256;
      v34 = &block_descriptor_40_0;
      goto LABEL_6;
    }

    if (v21 == *MEMORY[0x1E6977C08])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B1E0, &unk_1B6815028);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1B6812A80;
      *(v48 + 56) = MEMORY[0x1E69E6158];
      v49 = sub_1B64B164C();
      v50 = v85;
      *(v48 + 32) = v83;
      *(v48 + 40) = v50;
      v51 = MEMORY[0x1E69E6870];
      *(v48 + 96) = MEMORY[0x1E69E6810];
      *(v48 + 104) = v51;
      v52 = v84;
      *(v48 + 64) = v49;
      *(v48 + 72) = v52;

      v53 = sub_1B67D9C9C();
      sub_1B67D8A6C("pinger for %@, attempt %d was set up", 36, 2, &dword_1B63EF000, v86, v53, v48);
    }

    else
    {
      if (v21 == *MEMORY[0x1E6977C28])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B1E0, &unk_1B6815028);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_1B6812A80;
        *(v54 + 56) = MEMORY[0x1E69E6158];
        v55 = sub_1B64B164C();
        v56 = v85;
        *(v54 + 32) = v83;
        *(v54 + 40) = v56;
        v57 = MEMORY[0x1E69E6870];
        *(v54 + 96) = MEMORY[0x1E69E6810];
        *(v54 + 104) = v57;
        v58 = v84;
        *(v54 + 64) = v55;
        *(v54 + 72) = v58;

        v59 = sub_1B67D9C9C();
        v60 = "pinger for %@, attempt %d preparing";
      }

      else
      {
        if (v21 == *MEMORY[0x1E6977C00])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B1E0, &unk_1B6815028);
          v61 = swift_allocObject();
          *(v61 + 16) = xmmword_1B6812A80;
          *(v61 + 56) = MEMORY[0x1E69E6158];
          v62 = sub_1B64B164C();
          v63 = v85;
          *(v61 + 32) = v83;
          *(v61 + 40) = v63;
          v64 = MEMORY[0x1E69E6870];
          *(v61 + 96) = MEMORY[0x1E69E6810];
          *(v61 + 104) = v64;
          v65 = v84;
          *(v61 + 64) = v62;
          *(v61 + 72) = v65;

          v66 = sub_1B67D9C9C();
          sub_1B67D8A6C("pinger for %@, attempt %d ready", 31, 2, &dword_1B63EF000, v86, v66, v61);

          v67 = swift_allocObject();
          *(v67 + 16) = v20;
          v91 = sub_1B64B2854;
          v92 = v67;
          aBlock = MEMORY[0x1E69E9820];
          v88 = 1107296256;
          v89 = sub_1B64B2AA0;
          v90 = &block_descriptor_46;
          v68 = _Block_copy(&aBlock);
          v69 = v20;

          [v82 executeOnce_];

          _Block_release(v68);
          return;
        }

        if (v21 != *MEMORY[0x1E6977C20])
        {
          v74 = sub_1B67D9C8C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B1E0, &unk_1B6815028);
          v75 = swift_allocObject();
          *(v75 + 16) = xmmword_1B6812A80;
          *(v75 + 56) = MEMORY[0x1E69E6158];
          v76 = sub_1B64B164C();
          v77 = v85;
          *(v75 + 32) = v83;
          *(v75 + 40) = v77;
          v78 = MEMORY[0x1E69E6870];
          *(v75 + 96) = MEMORY[0x1E69E6810];
          *(v75 + 104) = v78;
          v79 = v84;
          *(v75 + 64) = v76;
          *(v75 + 72) = v79;

          sub_1B67D8A6C("pinger for %@, attempt %d encountered unknown default", 53, 2, &dword_1B63EF000, v86, v74, v75);

          (*(v16 + 8))(v18, v15);
          return;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B1E0, &unk_1B6815028);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_1B6812A80;
        *(v54 + 56) = MEMORY[0x1E69E6158];
        v70 = sub_1B64B164C();
        v71 = v85;
        *(v54 + 32) = v83;
        *(v54 + 40) = v71;
        v72 = MEMORY[0x1E69E6870];
        *(v54 + 96) = MEMORY[0x1E69E6810];
        *(v54 + 104) = v72;
        v73 = v84;
        *(v54 + 64) = v70;
        *(v54 + 72) = v73;

        v59 = sub_1B67D9C9C();
        v60 = "pinger for %@, attempt %d cancelled";
      }

      sub_1B67D8A6C(v60, 35, 2, &dword_1B63EF000, v86, v59, v54);
    }
  }
}

uint64_t sub_1B64B2120(void *a1)
{

  *a1 = v1;
}

void sub_1B64B215C()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    aBlock[4] = sub_1B64B2734;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B64B2AA0;
    aBlock[3] = &block_descriptor_34;
    v5 = _Block_copy(aBlock);
    v6 = v3;

    [v1 executeOnce_];
    _Block_release(v5);
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B64B2278()
{
  result = qword_1EDB1E630;
  if (!qword_1EDB1E630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB94B1F0, &qword_1B6810310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E630);
  }

  return result;
}

id sub_1B64B24E4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1B64B2600()
{
  result = qword_1EB94B200;
  if (!qword_1EB94B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B200);
  }

  return result;
}

void sub_1B64B2734()
{
  v1 = *(v0 + 16);
  sub_1B64B27B4();
  v2 = swift_allocError();
  v3 = sub_1B67D854C();

  [v1 finishedPerformingOperationWithError_];
}

unint64_t sub_1B64B27B4()
{
  result = qword_1EDB1E670[0];
  if (!qword_1EDB1E670[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB1E670);
  }

  return result;
}

uint64_t sub_1B64B2808(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1B64B2854()
{
  v1 = *(v0 + 16);
  (*&v1[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_notificationBlock])();

  return [v1 finishedPerformingOperationWithError_];
}

uint64_t objectdestroy_36Tm()
{
  v1 = sub_1B67D90BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1B64B2970()
{
  v1 = sub_1B67D90BC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  sub_1B64B2808(&qword_1EB94B2D8, MEMORY[0x1E6977D78], MEMORY[0x1E6977D88]);
  v5 = swift_allocError();
  (*(v2 + 16))(v6, v0 + v3, v1);
  v7 = sub_1B67D854C();

  [v4 finishedPerformingOperationWithError_];
}

id Assembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Assembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B64B2B4C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B67D9C5C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - v9;
  v11 = sub_1B67D9C3C();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URLResponsePayload.Kind(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B648CE30(a1 + OBJC_IVAR___FCURLResponsePayload_kind, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AB78, &qword_1B6813230) + 48));
      sub_1B67D9C4C();
      a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B300, &qword_1B68151D8);
      a2[4] = sub_1B6413CCC(&qword_1EB94B308, &qword_1EB94B300, &qword_1B68151D8, &unk_1B6813670);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
      v20 = sub_1B64B2FBC(&qword_1EB94AB80, MEMORY[0x1E6969E90], MEMORY[0x1E6969E98]);
      sub_1B648D654(v13, v11, v20, boxed_opaque_existential_0);

      v21 = sub_1B67D85FC();
      (*(*(v21 - 8) + 8))(v16, v21);
    }

    else
    {

      (*(v5 + 32))(v10, v16, v4);
      (*(v5 + 16))(v8, v10, v4);
      a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B2F0, &unk_1B68151C8);
      a2[4] = sub_1B6413CCC(&qword_1EB94B2F8, &qword_1EB94B2F0, &unk_1B68151C8, &unk_1B6813670);
      v25 = __swift_allocate_boxed_opaque_existential_0(a2);
      v26 = sub_1B64B2FBC(&qword_1EB94AB58, MEMORY[0x1E6969EA0], MEMORY[0x1E6969EA8]);
      sub_1B648D654(v8, v4, v26, v25);
      (*(v5 + 8))(v10, v4);
    }
  }

  else
  {
    v22 = *v16;
    v23 = v16[1];
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B310, &unk_1B68151E0);
    a2[4] = sub_1B6413CCC(&qword_1EB94B318, &qword_1EB94B310, &unk_1B68151E0, &unk_1B6813710);
    v24 = swift_allocObject();
    *a2 = v24;
    sub_1B648FFD4(v24 + 16, v22, v23);
  }
}

uint64_t sub_1B64B2FBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B64B3054()
{
  result = sub_1B6490C88();
  byte_1EB955278 = result & 1;
  qword_1EB955280 = v1;
  return result;
}

uint64_t sub_1B64B3088()
{
  result = sub_1B6490C88();
  byte_1EB955290 = result & 1;
  qword_1EB955298 = v1;
  return result;
}

uint64_t sub_1B64B30BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ABE8, &qword_1B68134F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B6812A80;
  if (qword_1EB955270 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB955280;
  *(v0 + 32) = byte_1EB955278;
  *(v0 + 40) = v1;
  v2 = qword_1EB955288;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB955298;
  *(v0 + 48) = byte_1EB955290;
  *(v0 + 56) = v3;

  return v0;
}

id sub_1B64B31A4@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, char a4@<W2>, uint64_t a5@<X3>)
{
  result = sub_1B64B31D8(a2, a3, a4, a5);
  if (!v5)
  {
    *a1 = result;
    *(a1 + 8) = v8 & 1;
  }

  return result;
}

id sub_1B64B31D8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1EB955270 != -1)
  {
    v13 = a3;
    swift_once();
    a3 = v13;
  }

  v16[0] = byte_1EB955278;
  v17 = qword_1EB955280;
  v5 = a3 & 1;
  LOBYTE(v14) = a3 & 1;
  v15 = a4;
  sub_1B648D48C();
  if (sub_1B67D962C())
  {
    v6 = MEMORY[0x1E69B6FD8];
  }

  else
  {
    if (qword_1EB955288 != -1)
    {
      swift_once();
    }

    v16[0] = byte_1EB955290;
    v17 = qword_1EB955298;
    LOBYTE(v14) = v5;
    v15 = a4;
    if ((sub_1B67D962C() & 1) == 0)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v6 = MEMORY[0x1E69B6D78];
  }

  v7 = objc_allocWithZone(v6);
  v8 = sub_1B67D864C();
  v9 = [v7 initWithData_];

  if (v9)
  {
    return v9;
  }

  v11 = 1;
LABEL_13:
  sub_1B64B33B4();
  swift_allocError();
  *v12 = v11;
  return swift_willThrow();
}

unint64_t sub_1B64B33B4()
{
  result = qword_1EB9552A0;
  if (!qword_1EB9552A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9552A0);
  }

  return result;
}

unint64_t sub_1B64B341C()
{
  result = qword_1EB9552A8[0];
  if (!qword_1EB9552A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9552A8);
  }

  return result;
}

uint64_t UserEventHistorySession.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___FCUserEventHistorySession_date;
  v4 = sub_1B67D877C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UserEventHistorySession.ID.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B330, &unk_1B6815378);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_1B67D87BC();
  v37 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B67D877C();
  v39 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[0] = a1;
  v42[1] = a2;
  v40 = 45;
  v41 = 0xE100000000000000;
  sub_1B64B5234();
  v14 = sub_1B67D9E2C();
  if (v14[2] == 6 && (v35 = a3, v36 = v12, v16 = v14[4], v15 = v14[5], v42[0] = 0, , v17 = sub_1B64B5488(v16, v15, v42), , v17))
  {

    v18 = sub_1B67D969C();

    if (__OFADD__(v18, 1))
    {
      __break(1u);
    }

    else
    {
      v20 = sub_1B67D96AC();
      v21 = sub_1B64B5580(v20, a1, a2);
      v23 = v22;
      v25 = v24;
      v27 = v26;

      MEMORY[0x1B8C948C0](v21, v23, v25, v27);

      v28 = v38;
      sub_1B67D868C();
      sub_1B67D878C();

      v29 = v37;
      if ((*(v37 + 48))(v8, 1, v9) == 1)
      {
        sub_1B6418AB4(v8, &unk_1EB94B330, &unk_1B6815378);
        sub_1B64B5288();
        swift_allocError();
        *v30 = 0;
        swift_willThrow();
        return (*(v39 + 8))(v28, v36);
      }

      else
      {
        v32 = *(v29 + 32);
        v32(v11, v8, v9);
        v33 = v35;
        v32(v35, v11, v9);
        v34 = type metadata accessor for UserEventHistorySession.ID(0);
        return (*(v39 + 32))(&v33[*(v34 + 20)], v28, v36);
      }
    }
  }

  else
  {

    sub_1B64B5288();
    swift_allocError();
    *v31 = 1;
    return swift_willThrow();
  }

  return result;
}

id sub_1B64B3C98(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B328, &qword_1B6815370);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_1B67D877C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;

  UserEventHistorySession.ID.init(_:)(a1, a2, v10);
  v18 = type metadata accessor for UserEventHistorySession.ID(0);
  (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
  (*(v12 + 16))(v15, &v10[*(v18 + 20)], v11);
  sub_1B646B8E8(v10);
  v19 = *(v12 + 32);
  v19(v17, v15, v11);
  v20 = &v4[OBJC_IVAR___FCUserEventHistorySession_sessionID];
  *v20 = a1;
  *(v20 + 1) = a2;
  v19(&v4[OBJC_IVAR___FCUserEventHistorySession_date], v17, v11);
  v21 = &v4[OBJC_IVAR___FCUserEventHistorySession_kind];
  *v21 = v24;
  *(v21 + 1) = a4;
  v21[16] = 0;
  v26.receiver = v4;
  v26.super_class = ObjectType;
  return objc_msgSendSuper2(&v26, sel_init);
}

id sub_1B64B4064(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v27 = a3;
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B328, &qword_1B6815370);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_1B67D877C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - v16;

  v26 = a1;
  UserEventHistorySession.ID.init(_:)(a1, a2, v10);
  if (v5)
  {

    v18 = type metadata accessor for UserEventHistorySession.ID(0);
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    sub_1B6418AB4(v10, &qword_1EB94B328, &qword_1B6815370);
    sub_1B64B5288();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();

    return swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = type metadata accessor for UserEventHistorySession.ID(0);
    (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
    (*(v12 + 16))(v15, &v10[*(v21 + 20)], v11);
    sub_1B646B8E8(v10);
    v22 = *(v12 + 32);
    v22(v17, v15, v11);
    v23 = &v4[OBJC_IVAR___FCUserEventHistorySession_sessionID];
    *v23 = v26;
    v23[1] = a2;
    v22(&v4[OBJC_IVAR___FCUserEventHistorySession_date], v17, v11);
    v24 = &v4[OBJC_IVAR___FCUserEventHistorySession_kind];
    v25 = v29;
    *v24 = v27;
    *(v24 + 1) = v25;
    v24[16] = 1;
    v30.receiver = v4;
    v30.super_class = ObjectType;
    return objc_msgSendSuper2(&v30, sel_init);
  }
}

id sub_1B64B43B8(uint64_t a1)
{

  v1 = sub_1B67D963C();

  return v1;
}

uint64_t UserEventHistorySession.fileName.getter()
{
  v1 = *(v0 + OBJC_IVAR___FCUserEventHistorySession_sessionID);

  return v1;
}

uint64_t UserEventHistorySession.path.getter()
{
  if (*(v0 + OBJC_IVAR___FCUserEventHistorySession_kind + 16))
  {
    result = sub_1B67DA07C();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR___FCUserEventHistorySession_kind);

    return v1;
  }

  return result;
}

uint64_t UserEventHistorySession.data.getter()
{
  v23[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1B67D8A9C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = UserEventHistorySession.compressedData.getter();
  if (v5 >> 60 != 15)
  {
    v6 = result;
    v7 = v5;
    v8 = sub_1B67D864C();
    v23[0] = 0;
    v9 = [v8 decompressedDataUsingAlgorithm:0 error:v23];

    v10 = v23[0];
    if (v9)
    {
      v11 = sub_1B67D866C();
      sub_1B6457448(v6, v7);

      return v11;
    }

    else
    {
      v12 = v10;
      v13 = sub_1B67D855C();

      swift_willThrow();
      v14 = sub_1B6422D0C();
      (*(v1 + 16))(v3, v14, v0);
      v15 = v13;
      v16 = sub_1B67D8A7C();
      v17 = sub_1B67D9C8C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138543362;
        v20 = v13;
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 4) = v21;
        *v19 = v21;
        _os_log_impl(&dword_1B63EF000, v16, v17, "failed to decompress session data, error=%{public}@", v18, 0xCu);
        sub_1B6418AB4(v19, &qword_1EB94A780, &qword_1B6810140);
        MEMORY[0x1B8C96DF0](v19, -1, -1);
        MEMORY[0x1B8C96DF0](v18, -1, -1);
        sub_1B6457448(v6, v7);
      }

      else
      {
        sub_1B6457448(v6, v7);
      }

      (*(v1 + 8))(v3, v0);
      return 0;
    }
  }

  return result;
}

uint64_t UserEventHistorySession.compressedData.getter()
{
  v1 = sub_1B67D8A9C();
  MEMORY[0x1EEE9AC00](v1);
  v3 = *(v0 + OBJC_IVAR___FCUserEventHistorySession_kind);
  v2 = *(v0 + OBJC_IVAR___FCUserEventHistorySession_kind + 8);
  if (*(v0 + OBJC_IVAR___FCUserEventHistorySession_kind + 16))
  {

    sub_1B64251D4(&v8);
    sub_1B64B55CC(v3, v2, 1);
    return v8;
  }

  else
  {
    v4 = objc_allocWithZone(MEMORY[0x1E695DEF0]);

    v5 = sub_1B67D963C();
    sub_1B64B55CC(v3, v2, 0);
    v6 = [v4 initWithContentsOfFile_];

    if (v6)
    {
      v8 = xmmword_1B6815360;
      sub_1B67D865C();
    }

    return 0;
  }
}

id sub_1B64B4B7C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v9 = sub_1B67D864C();
    sub_1B6457448(v5, v7);
    v8 = v9;
  }

  return v8;
}

void UserEventHistorySession.size.getter()
{
  if ((*(v0 + OBJC_IVAR___FCUserEventHistorySession_kind + 16) & 1) == 0)
  {
    v1 = [objc_opt_self() defaultManager];
    v2 = sub_1B67D963C();
    v3 = [v1 fc:v2 sizeOfItemAtPath:0 error:?];

    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }
  }
}

id UserEventHistorySession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserEventHistorySession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void UserEventHistorySession.ID.rawValue.getter()
{
  type metadata accessor for UserEventHistorySession.ID(0);
  sub_1B67D869C();
  if ((*&v0 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v0 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v0 < 9.22337204e18)
  {
    sub_1B67DA28C();
    MEMORY[0x1B8C94910](45, 0xE100000000000000);
    v1 = sub_1B67D879C();
    MEMORY[0x1B8C94910](v1);

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t UserEventHistorySession.ID.init()(uint64_t a1)
{
  sub_1B67D87AC();
  type metadata accessor for UserEventHistorySession.ID(0);
  return sub_1B67D876C();
}

uint64_t UserEventHistorySession.ID.init(uuidString:date:)@<X0>(uint64_t a3@<X2>, char *a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B330, &unk_1B6815378);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v19 - v7;
  v9 = sub_1B67D87BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D878C();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B6418AB4(v8, &unk_1EB94B330, &unk_1B6815378);
    sub_1B64B5288();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    v14 = sub_1B67D877C();
    return (*(*(v14 - 8) + 8))(a3, v14);
  }

  else
  {
    v16 = *(v10 + 32);
    v16(v12, v8, v9);
    v16(a4, v12, v9);
    v17 = *(type metadata accessor for UserEventHistorySession.ID(0) + 20);
    v18 = sub_1B67D877C();
    return (*(*(v18 - 8) + 32))(&a4[v17], a3, v18);
  }
}

unint64_t sub_1B64B5234()
{
  result = qword_1EDB1FBC0;
  if (!qword_1EDB1FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1FBC0);
  }

  return result;
}

unint64_t sub_1B64B5288()
{
  result = qword_1EB955430;
  if (!qword_1EB955430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB955430);
  }

  return result;
}

uint64_t UserEventHistorySession.ID.init(uuid:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B67D87BC();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for UserEventHistorySession.ID(0) + 20);
  v8 = sub_1B67D877C();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t UserEventHistorySession.ID.init(uuid:timeIntervalSinceReferenceDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B67D87BC();
  v8 = *(v5 - 8);
  (*(v8 + 16))(a2, a1, v5);
  type metadata accessor for UserEventHistorySession.ID(0);
  sub_1B67D868C();
  v6 = *(v8 + 8);

  return v6(a1, v5);
}

BOOL sub_1B64B5488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1B67D9EEC();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_1B64B5580(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x1EEE69100]();
}

uint64_t sub_1B64B55CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1B64B5604(uint64_t a1)
{
  result = sub_1B67D877C();
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

uint64_t sub_1B64B56E8(uint64_t a1)
{
  result = sub_1B67D87BC();
  if (v2 <= 0x3F)
  {
    result = sub_1B67D877C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B64B578C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B64B57D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_1B64B5848()
{
  result = qword_1EB955440[0];
  if (!qword_1EB955440[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB955440);
  }

  return result;
}

_BYTE *sub_1B64B589C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

id sub_1B64B5924(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = OBJC_IVAR____TtC8NewsCore19FeedItemDatabaseRef__resolved;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B340, &qword_1B6815520);
  v6 = swift_allocObject();
  *(v6 + 28) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = -1;
  *&v4[v5] = v6;
  v7 = OBJC_IVAR____TtC8NewsCore19FeedItemDatabaseRef_fileURL;
  v8 = sub_1B67D85FC();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v4[v7], a1, v8);
  v12.receiver = v4;
  v12.super_class = v2;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v9 + 8))(a1, v8);
  return v10;
}

uint64_t FeedItemDatabaseRef.resolve()()
{
  v2 = v1;
  v3 = *(v0 + OBJC_IVAR____TtC8NewsCore19FeedItemDatabaseRef__resolved);

  os_unfair_lock_lock((v3 + 28));
  sub_1B64B5D24((v3 + 16), &v5);
  os_unfair_lock_unlock((v3 + 28));
  if (!v1)
  {
    v2 = v5;
  }

  return v2;
}

id sub_1B64B5AD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B3E0, &qword_1B68165A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v20 - v7;
  v9 = sub_1B67D85FC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(a1 + 8);
  if (v14 == 255)
  {
    v20[0] = type metadata accessor for FeedItemDatabase(0);
    (*(v10 + 16))(v12, a2 + OBJC_IVAR____TtC8NewsCore19FeedItemDatabaseRef_fileURL, v9);
    v16 = sub_1B64713D0();
    v17 = sub_1B67D8A9C();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v8, v16, v17);
    (*(v18 + 56))(v8, 0, 1, v17);
    v19 = FeedItemDatabase.__allocating_init(fileURL:logger:)(v12, v8);
    *a1 = v19;
    *(a1 + 8) = 0;
    *a3 = v19;
  }

  else
  {
    if (v14)
    {
      v20[3] = *a1;
      sub_1B64B6D4C(v13, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
      return swift_willThrowTypedImpl();
    }

    *a3 = v13;
  }

  return sub_1B64B6D34(v13, v14);
}

Swift::Void __swiftcall FeedItemDatabaseRef.encode(with:)(NSCoder with)
{
  v2 = sub_1B67D858C();
  v3 = sub_1B67D963C();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];
}

id FeedItemDatabaseRef.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1B67D85FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8NewsCore19FeedItemDatabaseRef__resolved;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B340, &qword_1B6815520);
  v10 = swift_allocObject();
  *(v10 + 28) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = -1;
  *&v2[v9] = v10;
  sub_1B64B6090();
  v11 = sub_1B67D9D5C();
  if (v11)
  {
    v12 = v11;
    sub_1B67D85AC();

    (*(v6 + 32))(&v2[OBJC_IVAR____TtC8NewsCore19FeedItemDatabaseRef_fileURL], v8, v5);
    v15.receiver = v2;
    v15.super_class = ObjectType;
    v13 = objc_msgSendSuper2(&v15, sel_init);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v13;
}

unint64_t sub_1B64B6090()
{
  result = qword_1EB94B348;
  if (!qword_1EB94B348)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB94B348);
  }

  return result;
}

id FeedItemDatabaseRef.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeedItemDatabaseRef.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B64B6264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B67DA2DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B64B62EC(uint64_t a1)
{
  v2 = sub_1B64B6A68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64B6328(uint64_t a1)
{
  v2 = sub_1B64B6A68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedItemDatabaseRef.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B350, &qword_1B6815528);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64B6A68();
  sub_1B67DA47C();
  sub_1B67D85FC();
  sub_1B64B6CF0(&unk_1EB94B358, MEMORY[0x1E6968FB8]);
  sub_1B67DA24C();
  return (*(v3 + 8))(v5, v2);
}

void *sub_1B64B64E8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B64B672C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B64B6514(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B350, &qword_1B6815528);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64B6A68();
  sub_1B67DA47C();
  sub_1B67D85FC();
  sub_1B64B6CF0(&unk_1EB94B358, MEMORY[0x1E6968FB8]);
  sub_1B67DA24C();
  return (*(v3 + 8))(v5, v2);
}

void *sub_1B64B672C(void *a1)
{
  v3 = sub_1B67D85FC();
  v24 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v19 - v7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B3D0, &qword_1B68156E0);
  v8 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v10 = &v19 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64B6A68();
  sub_1B67DA46C();
  if (!v1)
  {
    v22 = v8;
    v12 = v24;
    sub_1B64B6CF0(&qword_1EB94B3D8, MEMORY[0x1E6968FD0]);
    v13 = v23;
    sub_1B67DA1CC();
    v21 = *(v12 + 16);
    v21(v6, v26, v3);
    v15 = type metadata accessor for FeedItemDatabaseRef(0);
    v16 = objc_allocWithZone(v15);
    v20 = OBJC_IVAR____TtC8NewsCore19FeedItemDatabaseRef__resolved;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B340, &qword_1B6815520);
    v17 = swift_allocObject();
    *(v17 + 28) = 0;
    *(v17 + 16) = 0;
    *(v17 + 24) = -1;
    *&v16[v20] = v17;
    v21(&v16[OBJC_IVAR____TtC8NewsCore19FeedItemDatabaseRef_fileURL], v6, v3);
    v25.receiver = v16;
    v25.super_class = v15;
    v11 = objc_msgSendSuper2(&v25, sel_init);
    v18 = *(v24 + 8);
    v18(v6, v3);
    v18(v26, v3);
    (*(v22 + 8))(v10, v13);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

unint64_t sub_1B64B6A68()
{
  result = qword_1EB9555D0[0];
  if (!qword_1EB9555D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9555D0);
  }

  return result;
}

uint64_t type metadata accessor for FeedItemDatabaseRef(uint64_t a1)
{
  result = qword_1EDB24600;
  if (!qword_1EDB24600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B64B6B10(uint64_t a1)
{
  result = sub_1B67D85FC();
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

unint64_t sub_1B64B6BEC()
{
  result = qword_1EB9557E0[0];
  if (!qword_1EB9557E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9557E0);
  }

  return result;
}

unint64_t sub_1B64B6C44()
{
  result = qword_1EB9558F0;
  if (!qword_1EB9558F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9558F0);
  }

  return result;
}

unint64_t sub_1B64B6C9C()
{
  result = qword_1EB9558F8[0];
  if (!qword_1EB9558F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9558F8);
  }

  return result;
}

uint64_t sub_1B64B6CF0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B67D85FC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1B64B6D34(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1B64B6D4C(result, a2 & 1);
  }

  return result;
}

id sub_1B64B6D4C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1B64B6D58()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B64B6E8C;
  }

  else
  {
    v2 = sub_1B64B6E6C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64B6EA4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a5;
  v9[3] = a6;
  v9[4] = a7;
  v9[5] = a8;
  v9[6] = a1;
  v9[7] = a2;
  return sub_1B64B6EE8(sub_1B64B70F0, v9, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1B64B6EE8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a3;
  v23 = a1;
  v24 = a2;
  v14 = sub_1B67D8C1C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 >> 62)
  {
    v22[1] = v22;
    MEMORY[0x1EEE9AC00](v16);
    v22[0] = v8;
    v22[-8] = a5;
    v22[-7] = a6;
    v22[-6] = a7;
    v22[-5] = a8;
    v21 = v24;
    v22[-4] = v23;
    v22[-3] = v21;
    v22[-2] = v26;
    v22[-1] = a4;
    (*(v15 + 104))(v18, *MEMORY[0x1E69D6188], v14);

    sub_1B67D8F4C();
    (*(v15 + 8))(v18, v14);
  }

  else
  {
    v25[0] = a5;
    v25[1] = a6;
    v25[2] = a7;
    v25[3] = a8;
    _s11AccessModelO6ErrorsOMa(0, v25);
    swift_getWitnessTable();
    swift_allocError();
    *v19 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1B64B711C()
{
  v2 = v0[6];
  result = sub_1B6426BC0(v0[8], v0[3], v0[5]);
  if (!v1)
  {
    v2();
  }

  return result;
}

uint64_t sub_1B64B7198(uint64_t a1)
{

  sub_1B67D8F2C();
}

uint64_t sub_1B64B7208(char a1)
{
  sub_1B67DA3DC();
  MEMORY[0x1B8C95640](a1 & 1);
  return sub_1B67DA41C();
}

uint64_t sub_1B64B726C(uint64_t a1)
{
  sub_1B67DA3DC();
  sub_1B64B71E0(v3, *v1);
  return sub_1B67DA41C();
}

uint64_t sub_1B64B72AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 16))
  {
    return (*a1 + 16382);
  }

  v3 = (((*(a1 + 8) >> 50) >> 12) | (4 * ((*(a1 + 8) >> 50) & 0xC00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B64B7324(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1B64B73A0(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[1] = v2;
  return result;
}

uint64_t sub_1B64B73B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B64B7428(uint64_t a1)
{
  v2 = sub_1B64B7754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64B7464(uint64_t a1)
{
  v2 = sub_1B64B7754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B64B74A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B450, &qword_1B68158C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64B7754();
  sub_1B67DA46C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_1B67DA1DC();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  return result;
}

unint64_t sub_1B64B7754()
{
  result = qword_1EB955B00[0];
  if (!qword_1EB955B00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB955B00);
  }

  return result;
}

uint64_t sub_1B64B77A8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B458, &qword_1B68158C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64B7754();
  sub_1B67DA47C();
  sub_1B67DA25C();
  return (*(v3 + 8))(v5, v2);
}

void type metadata accessor for FCFeedFilterOptions()
{
  if (!qword_1EB94B460)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB94B460);
    }
  }
}

unint64_t sub_1B64B7A74()
{
  result = qword_1EB955D10[0];
  if (!qword_1EB955D10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB955D10);
  }

  return result;
}

unint64_t sub_1B64B7ACC()
{
  result = qword_1EB955E20;
  if (!qword_1EB955E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB955E20);
  }

  return result;
}

unint64_t sub_1B64B7B24()
{
  result = qword_1EB955E28[0];
  if (!qword_1EB955E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB955E28);
  }

  return result;
}

NewsCore::FeedItemOrder_optional __swiftcall FeedItemOrder.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B67DA12C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FeedItemOrder.rawValue.getter()
{
  v1 = *v0;
  v2 = 7958113;
  if (v1 == 2)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_1B64B7C58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000015;
  if (a1 > 1u)
  {
    v3 = 0x80000001B68299D0;
    v4 = 0x80000001B68299F0;
    v5 = a1 == 2;
    if (a1 == 2)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0xD000000000000015;
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 0x80000001B68299B0;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 7958113;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0x80000001B68299D0;
  if (a2 == 2)
  {
    v9 = 0xD000000000000016;
  }

  else
  {
    v9 = 0xD000000000000015;
  }

  if (a2 != 2)
  {
    v8 = 0x80000001B68299F0;
  }

  if (a2)
  {
    v10 = 0x80000001B68299B0;
  }

  else
  {
    v2 = 7958113;
    v10 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1B67DA2DC();
  }

  return v13 & 1;
}

uint64_t sub_1B64B7D68()
{
  sub_1B67DA3DC();
  sub_1B67D967C();

  return sub_1B67DA41C();
}

uint64_t sub_1B64B7E28(uint64_t a1)
{
  sub_1B67D967C();
}

uint64_t sub_1B64B7ED4(uint64_t a1)
{
  sub_1B67DA3DC();
  sub_1B67D967C();

  return sub_1B67DA41C();
}

void sub_1B64B7F9C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7958113;
  v5 = 0x80000001B68299D0;
  if (v2 == 2)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (v2 != 2)
  {
    v5 = 0x80000001B68299F0;
  }

  if (*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x80000001B68299B0;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FeedItemDatabase.__allocating_init(fileURL:logger:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FeedItemDatabase.init(fileURL:logger:)(a1, a2);
  return v4;
}

uint64_t FeedItemDatabase.init(fileURL:logger:)(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B3E0, &qword_1B68165A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_1B67D8A9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B468, &unk_1B6815A70);
  v12 = swift_allocObject();
  *(v12 + 52) = 0;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = -1;
  *(v2 + v11) = v12;
  v13 = OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_fileURL;
  v14 = sub_1B67D85FC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v23 = v2;
  v16(v2 + v13, a1, v14);
  v17 = v22;
  sub_1B6415FF0(v22, v6, &unk_1EB94B3E0, &qword_1B68165A0);
  v18 = *(v8 + 48);
  if (v18(v6, 1, v7) == 1)
  {
    v19 = sub_1B64713D0();
    (*(v8 + 16))(v10, v19, v7);
    sub_1B6418AB4(v17, &unk_1EB94B3E0, &qword_1B68165A0);
    (*(v15 + 8))(a1, v14);
    if (v18(v6, 1, v7) != 1)
    {
      sub_1B6418AB4(v6, &unk_1EB94B3E0, &qword_1B68165A0);
    }
  }

  else
  {
    sub_1B6418AB4(v17, &unk_1EB94B3E0, &qword_1B68165A0);
    (*(v15 + 8))(a1, v14);
    (*(v8 + 32))(v10, v6, v7);
  }

  v20 = v23;
  (*(v8 + 32))(v23 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_logger, v10, v7);
  return v20;
}

void FeedItemDatabase.toReference()()
{
  v2 = v0;
  v3 = *v0;
  v4 = sub_1B67D85FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v2 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  v10 = v2;
  v11 = v3;
  os_unfair_lock_lock((v8 + 52));
  sub_1B64BC9B8((v8 + 16), &v12);
  os_unfair_lock_unlock((v8 + 52));
  if (!v1)
  {

    type metadata accessor for FeedItemDatabaseRef(0);
    (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_fileURL, v4);
    sub_1B64B5924(v7);
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeedItemDatabase.tokenForCoordinatedRead()(FCFileAccessToken *__return_ptr retstr)
{
  v3 = v1;
  v4 = *v1;
  v5 = sub_1B67D85FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v3 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  v12 = v3;
  v13 = v4;
  os_unfair_lock_lock((v9 + 52));
  sub_1B64C2DD8((v9 + 16), &v14);
  os_unfair_lock_unlock((v9 + 52));
  if (!v2)
  {

    (*(v6 + 16))(v8, v3 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_fileURL, v5);
    v10 = objc_allocWithZone(FCFileAccessToken);
    sub_1B64BE94C(v8, &selRef_initForReadingURL_error_);
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeedItemDatabase.tokenForCoordinatedWrite()(FCFileAccessToken *__return_ptr retstr)
{
  v3 = v1;
  v4 = *v1;
  v5 = sub_1B67D85FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v3 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  v12 = v3;
  v13 = v4;
  os_unfair_lock_lock((v9 + 52));
  sub_1B64C2DD8((v9 + 16), &v14);
  os_unfair_lock_unlock((v9 + 52));
  if (!v2)
  {

    (*(v6 + 16))(v8, v3 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_fileURL, v5);
    v10 = objc_allocWithZone(FCFileAccessToken);
    sub_1B64BE94C(v8, &selRef_initForWritingURL_error_);
  }
}

void FeedItemDatabase.allFeedItems(order:)(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B470, &unk_1B6815A80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v32[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32[-v14];
  v16 = *a1;
  v17 = *(v2 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  v36 = v2;
  v37 = v6;
  os_unfair_lock_lock((v17 + 52));
  sub_1B64C2DD8((v17 + 16), &v38);
  os_unfair_lock_unlock((v17 + 52));
  if (!v3)
  {
    v18 = v38;
    v42 = v39;
    v19 = v40;
    v35 = v41;
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v21 = sub_1B6496910();
      }

      else
      {
        v21 = sub_1B649693C();
      }
    }

    else
    {
      if (!v16)
      {
        v20 = sub_1B67D8E4C();
        (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
LABEL_10:
        v26 = sub_1B67D8B1C();
        (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
        sub_1B6415FF0(v15, v13, &qword_1EB94B510, &unk_1B68102C0);
        KeyPath = swift_getKeyPath();
        v38 = v18;
        v39 = v19;
        v40 = KeyPath;
        v41 = 0;
        MEMORY[0x1EEE9AC00](KeyPath);
        *&v32[-32] = v9;
        *&v32[-24] = &v38;
        *&v32[-16] = v19;
        *&v32[-8] = v13;
        swift_retain_n();

        sub_1B67D8F1C();

        sub_1B6418AB4(v15, &qword_1EB94B510, &unk_1B68102C0);
        v28 = v41;
        v29 = v38;
        v30 = v39;
        v31 = v40;

        sub_1B6418AB4(v13, &qword_1EB94B510, &unk_1B68102C0);
        sub_1B6418AB4(v9, &qword_1EB94B470, &unk_1B6815A80);

        *a2 = v29;
        a2[1] = v30;
        a2[2] = v31;
        a2[3] = v28;
        return;
      }

      v21 = sub_1B64968E4();
    }

    v22 = *v21;
    v34 = *(v21 + 1);
    v23 = v34;
    *v15 = v22;
    v15[1] = v23;
    v33 = *MEMORY[0x1E69D6220];
    v24 = sub_1B67D8E4C();
    v25 = *(v24 - 8);
    (*(v25 + 104))(v15, v33, v24);
    (*(v25 + 56))(v15, 0, 1, v24);

    goto LABEL_10;
  }
}

uint64_t sub_1B64B8DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{

  sub_1B67D8F1C();

  sub_1B6418AB4(a4, &qword_1EB94B510, &unk_1B68102C0);
  sub_1B6418AB4(a3, &qword_1EB94B470, &unk_1B6815A80);

  return a1;
}

void FeedItemDatabase.allFeedItemEntities<A>(_:order:)(unsigned __int8 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v54 = a3;
  v50 = a2;
  v8 = *v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B470, &unk_1B6815A80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v43 - v16);
  v18 = *a1;
  v19 = *(v4 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  v51 = v4;
  v52 = v8;
  os_unfair_lock_lock((v19 + 52));
  sub_1B64C2DD8((v19 + 16), v53);
  os_unfair_lock_unlock((v19 + 52));
  if (!v5)
  {
    v48 = v15;
    v49 = a4;
    v20 = v54;
    v46 = v53[2];
    v47 = v53[1];
    v44 = v53[0];
    v45 = v53[3];
    if (v18 > 1)
    {
      v21 = v50;
      if (v18 == 2)
      {
        v23 = sub_1B6496910();
      }

      else
      {
        v23 = sub_1B649693C();
      }
    }

    else
    {
      v21 = v50;
      if (!v18)
      {
        v22 = sub_1B67D8E4C();
        (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
LABEL_10:
        v28 = v11;
        v29 = v48;
        v30 = sub_1B67D8B1C();
        (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
        v31 = sub_1B6415FF0(v17, v29, &qword_1EB94B510, &unk_1B68102C0);
        MEMORY[0x1EEE9AC00](v31);
        *(&v43 - 2) = v21;
        *(&v43 - 1) = v20;
        KeyPath = swift_getKeyPath();
        v33 = *(v20 + 8);
        v34 = v46;

        v35 = sub_1B64B8DE0(v44, v34, v28, v29, KeyPath, v33);
        v37 = v36;
        v39 = v38;
        v41 = v40;

        sub_1B6418AB4(v17, &qword_1EB94B510, &unk_1B68102C0);
        v42 = v49;
        *v49 = v35;
        v42[1] = v37;
        v42[2] = v39;
        v42[3] = v41;
        return;
      }

      v23 = sub_1B64968E4();
    }

    v24 = *(v23 + 1);
    *v17 = *v23;
    v17[1] = v24;
    v25 = *MEMORY[0x1E69D6220];
    v26 = sub_1B67D8E4C();
    v27 = *(v26 - 8);
    (*(v27 + 104))(v17, v25, v26);
    (*(v27 + 56))(v17, 0, 1, v26);

    goto LABEL_10;
  }
}

void FeedItemDatabase.allFeedItemEntities<A>(_:where:order:)(uint64_t a1@<X1>, unsigned __int8 *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v54 = a3;
  v55 = a4;
  v59 = a1;
  v9 = *v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B470, &unk_1B6815A80);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v47[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v47[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v47[-v17];
  v19 = *a2;
  v20 = *(v5 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  v56 = v5;
  v57 = v9;
  os_unfair_lock_lock((v20 + 52));
  sub_1B64C2DD8((v20 + 16), v58);
  os_unfair_lock_unlock((v20 + 52));
  if (!v6)
  {
    v21 = v16;
    v22 = v18;
    v24 = v54;
    v23 = v55;
    v52 = v58[1];
    v53 = a5;
    v51 = v58[2];
    v49 = v58[0];
    v50 = v58[3];
    if (v19 > 1)
    {
      v25 = v12;
      if (v19 == 2)
      {
        v28 = sub_1B6496910();
      }

      else
      {
        v28 = sub_1B649693C();
      }
    }

    else
    {
      v25 = v12;
      if (!v19)
      {
        v26 = sub_1B67D8E4C();
        v27 = v22;
        (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
LABEL_10:
        v32 = v59;
        v33 = sub_1B67D8B1C();
        v34 = *(v33 - 8);
        (*(v34 + 16))(v25, v32, v33);
        (*(v34 + 56))(v25, 0, 1, v33);
        v35 = sub_1B6415FF0(v27, v21, &qword_1EB94B510, &unk_1B68102C0);
        MEMORY[0x1EEE9AC00](v35);
        *&v47[-16] = v24;
        *&v47[-8] = v23;
        KeyPath = swift_getKeyPath();
        v37 = *(v23 + 8);
        v38 = v51;

        v39 = sub_1B64B8DE0(v49, v38, v25, v21, KeyPath, v37);
        v41 = v40;
        v43 = v42;
        v45 = v44;

        sub_1B6418AB4(v27, &qword_1EB94B510, &unk_1B68102C0);
        v46 = v53;
        *v53 = v39;
        v46[1] = v41;
        v46[2] = v43;
        v46[3] = v45;
        return;
      }

      v28 = sub_1B64968E4();
    }

    v29 = *(v28 + 1);
    v27 = v22;
    *v22 = *v28;
    v22[1] = v29;
    v48 = *MEMORY[0x1E69D6220];
    v30 = sub_1B67D8E4C();
    v31 = *(v30 - 8);
    (*(v31 + 104))(v27, v48, v30);
    (*(v31 + 56))(v27, 0, 1, v30);

    goto LABEL_10;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeedItemDatabase.saveFeedItems(_:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = sub_1B67D8C1C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1._rawValue >> 62)
  {
    v10 = sub_1B67DA04C();
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v10 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return;
    }
  }

  v19 = v7;
  v11 = *(v3 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  MEMORY[0x1EEE9AC00](v10);
  v17[-2] = v3;
  v17[-1] = v5;
  os_unfair_lock_lock((v11 + 52));
  sub_1B64C2DD8((v11 + 16), v18);
  os_unfair_lock_unlock((v11 + 52));
  if (!v2)
  {
    v14 = v18[2];
    v13 = v18[3];
    MEMORY[0x1EEE9AC00](v12);
    v17[-4] = a1._rawValue;
    v17[-3] = v15;
    v17[1] = v15;
    v17[-2] = v14;
    v17[-1] = v13;
    v16 = v19;
    (*(v19 + 104))(v9, *MEMORY[0x1E69D6188], v6);
    sub_1B67D8F4C();
    (*(v16 + 8))(v9, v6);
  }
}

void FeedItemDatabase.modifyBatchesOfFeedItems<A>(_:batchSize:modifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  os_unfair_lock_lock((v13 + 52));
  sub_1B64C2DD8((v13 + 16), v30);
  os_unfair_lock_unlock((v13 + 52));
  if (!v7)
  {
    v25 = a2;
    v28 = a3;
    v29 = a4;
    v31 = a5;
    v15 = v30[0];
    v16 = v30[1];
    v17 = v30[2];
    v18 = v30[3];
    MEMORY[0x1EEE9AC00](v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B478, &qword_1B6815AD8);
    sub_1B67D8F1C();
    if (v25 < 0)
    {
LABEL_10:
      __break(1u);
      return;
    }

    v26 = v17;
    v27 = v16;
    sub_1B6413CCC(&qword_1EB94B480, &qword_1EB94B478, &qword_1B6815AD8, MEMORY[0x1E69E6340]);
    v19 = sub_1B67D9B3C();

    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = a6;
      v22 = 0;
      while (v22 < *(v19 + 16))
      {
        v23 = *(v19 + 8 * v22 + 32);

        v24 = objc_autoreleasePoolPush();
        sub_1B64B9C84(v15, v23, v27, v26, v18, v28, v29, v31, v21, v30);
        ++v22;
        objc_autoreleasePoolPop(v24);

        if (v20 == v22)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_10;
    }

LABEL_7:
  }
}

uint64_t sub_1B64B9C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v22 = a6;
  v23 = a7;
  v24 = a1;
  v15 = sub_1B67D8C1C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a8;
  v26 = a9;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = v22;
  v32 = v23;
  (*(v16 + 104))(v18, *MEMORY[0x1E69D6188], v15);
  v19 = v33;
  sub_1B67D8F4C();
  result = (*(v16 + 8))(v18, v15);
  if (v19)
  {
    *a10 = v19;
  }

  return result;
}

uint64_t sub_1B64B9E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v57 = a5;
  v12 = *(a5 - 8);
  v53 = v6;
  v54 = v12;
  MEMORY[0x1EEE9AC00](a1);
  v46 = v13;
  v58 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v50 = &v46 - v15;
  v16 = sub_1B67D8B1C();
  v51 = *(v16 - 8);
  v52 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v19 = *(a1 + 16);
  v56 = a6;
  v48 = a4;
  v49 = a3;
  if (v19)
  {
    v47 = v18;
    v55 = a2;
    v61 = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v19, 0);
    v20 = v61;
    v21 = (a1 + 32);
    do
    {
      v59 = *v21;

      swift_getAtKeyPath();

      v22 = v60[0];
      v23 = v60[1];
      v61 = v20;
      v25 = *(v20 + 16);
      v24 = *(v20 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1B6456B24((v24 > 1), v25 + 1, 1);
        v20 = v61;
      }

      *(v20 + 16) = v25 + 1;
      v26 = v20 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v21;
      --v19;
    }

    while (v19);

    a2 = v55;
    v18 = v47;
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  v27 = v57;
  sub_1B67D8D9C();
  v28 = swift_allocObject();
  v29 = sub_1B64968B8();
  v31 = *v29;
  v30 = v29[1];
  v28[2] = v31;
  v28[3] = v30;

  v32 = sub_1B64503A4(v20);

  v28[4] = v32;
  *v18 = v28;
  v34 = v51;
  v33 = v52;
  (*(v51 + 104))(v18, *MEMORY[0x1E69D6138], v52);
  v35 = sub_1B67D8E4C();
  v36 = v50;
  (*(*(v35 - 8) + 56))(v50, 1, 1, v35);
  v37 = v53;
  v38 = sub_1B67D8FEC();
  if (v37)
  {

    sub_1B6418AB4(v36, &qword_1EB94B510, &unk_1B68102C0);
    return (*(v34 + 8))(v18, v33);
  }

  v40 = v38;

  sub_1B6418AB4(v36, &qword_1EB94B510, &unk_1B68102C0);
  (*(v34 + 8))(v18, v33);
  v49(v40);
  if (!sub_1B67D984C())
  {
LABEL_20:
  }

  v55 = a2;
  v41 = 0;
  v53 = (v54 + 16);
  v42 = (v54 + 8);
  while (1)
  {
    v43 = sub_1B67D982C();
    sub_1B67D97EC();
    if (v43)
    {
      (*(v54 + 16))(v58, v40 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v41, v27);
      v44 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    result = sub_1B67D9F1C();
    if (v46 != 8)
    {
      break;
    }

    v60[0] = result;
    (*v53)(v58, v60, v27);
    swift_unknownObjectRelease();
    v44 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_14:
    sub_1B67D8D8C();
    v27 = v57;
    v45 = v58;
    sub_1B67D8E3C();
    (*v42)(v45, v27);

    ++v41;
    if (v44 == sub_1B67D984C())
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B64BA3AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B646D2FC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B64BA3D8(void *a1)
{

  return sub_1B646D320(v1);
}

void FeedItemDatabase.allFeedContext.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  os_unfair_lock_lock((v2 + 52));
  sub_1B64C2DD8((v2 + 16), &v4);
  os_unfair_lock_unlock((v2 + 52));
  if (!v1)
  {
    MEMORY[0x1EEE9AC00](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B488, &qword_1B6815AE0);
    sub_1B67D8F1C();
  }
}

id sub_1B64BA55C(uint64_t a1)
{
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v11 == 1)
  {
    v1 = 0;
  }

  else
  {
    v1 = v11;
  }

  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v11 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v11;
  }

  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v11 == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v11;
  }

  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if ((v11 & 0x100) != 0)
  {
    __break(1u);
    return result;
  }

  if (v1)
  {
    v5 = sub_1B67D963C();
    sub_1B64C25CC(v10, v11);
    if (v2)
    {
      goto LABEL_13;
    }

LABEL_16:
    v6 = 0;
    if (v3)
    {
      goto LABEL_14;
    }

LABEL_17:
    v7 = 0;
    goto LABEL_18;
  }

  v5 = 0;
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_13:
  v6 = sub_1B67D963C();
  sub_1B64C25CC(v10, v11);
  if (!v3)
  {
    goto LABEL_17;
  }

LABEL_14:
  v7 = sub_1B67D963C();
  sub_1B64C25CC(v10, v11);
LABEL_18:
  if (v11)
  {
    v8 = 0;
  }

  else
  {
    v8 = v10;
  }

  v9 = [objc_allocWithZone(FCFeedContext) initWithChannelID:v5 sectionID:v6 topicID:v7 flags:v8];

  return v9;
}

void FeedItemDatabase.feedContextForFeedIDs(_:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  os_unfair_lock_lock((v3 + 52));
  sub_1B64C2DD8((v3 + 16), &v5);
  os_unfair_lock_unlock((v3 + 52));
  if (!v2)
  {
    MEMORY[0x1EEE9AC00](v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B488, &qword_1B6815AE0);
    sub_1B67D8F1C();
  }
}

uint64_t sub_1B64BA880@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_1B67D8B1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B67D8D5C();
  v12 = swift_allocObject();
  v12[2] = 25705;
  v12[3] = 0xE200000000000000;
  v12[4] = sub_1B64503A4(a1);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x1E69D6138], v8);
  v13 = sub_1B67D8E4C();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = sub_1B67D8D2C();
  if (v2)
  {

    sub_1B6418AB4(v7, &qword_1EB94B510, &unk_1B68102C0);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v16 = v14;
    v29 = 0;

    sub_1B6418AB4(v7, &qword_1EB94B510, &unk_1B68102C0);
    result = (*(v9 + 8))(v11, v8);
    v32 = *(v16 + 16);
    if (v32)
    {
      v17 = 0;
      v18 = (v16 + 64);
      v19 = MEMORY[0x1E69E7CC8];
      v30 = v16;
      v31 = a2;
      while (v17 < *(v16 + 16))
      {
        v35 = v19;
        v20 = *(v18 - 3);
        v21 = *(v18 - 2);
        v22 = *(v18 - 1);
        v23 = *v18;
        v38 = *(v18 - 4);
        v39 = v20;
        v40 = v21;
        v41 = v22;
        v42 = v23;

        sub_1B67D8B4C();
        sub_1B67D8DCC();

        v24 = v37;
        if (!v37)
        {
          goto LABEL_13;
        }

        v33 = v36;
        v34 = v17 + 1;
        v25 = sub_1B64BA55C(result);
        v26 = v35;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v26;
        v28 = v25;
        v17 = v34;
        sub_1B64BFACC(v28, v33, v24, isUniquelyReferenced_nonNull_native);

        v19 = v43;
        v18 += 5;
        a2 = v31;
        v16 = v30;
        if (v32 == v17)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC8];
LABEL_10:

      *a2 = v19;
    }
  }

  return result;
}

void FeedItemDatabase.feedContextForTagIDs(_:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  os_unfair_lock_lock((v3 + 52));
  sub_1B64C2DD8((v3 + 16), &v5);
  os_unfair_lock_unlock((v3 + 52));
  if (!v2)
  {
    MEMORY[0x1EEE9AC00](v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B490, &qword_1B6815AE8);
    sub_1B67D8F1C();
  }
}

uint64_t sub_1B64BAD68@<X0>(uint64_t a1@<X1>, char **a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = v40 - v4;
  v5 = sub_1B67D8B1C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v40 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v45 = v40 - v13;
  v46 = sub_1B67D8D5C();
  v14 = swift_allocObject();
  v14[2] = 0x496C656E6E616843;
  v14[3] = 0xE900000000000044;
  v14[4] = sub_1B64503A4(a1);
  *v12 = v14;
  v15 = *MEMORY[0x1E69D6138];
  v16 = *(v6 + 104);
  v16(v12, v15, v5);
  v17 = swift_allocObject();
  v17[2] = 0x44496369706F54;
  v17[3] = 0xE700000000000000;
  v17[4] = sub_1B64503A4(a1);
  *v9 = v17;
  v16(v9, v15, v5);
  v18 = v45;
  sub_1B67D8CBC();
  v19 = *(v6 + 8);
  v19(v9, v5);
  v20 = v12;
  v21 = v47;
  v19(v20, v5);
  v22 = sub_1B67D8E4C();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  v23 = v57;
  v43 = sub_1B67D8D2C();
  if (v23)
  {

    sub_1B6418AB4(v21, &qword_1EB94B510, &unk_1B68102C0);
    return v19(v18, v5);
  }

  else
  {
    v40[1] = 0;

    sub_1B6418AB4(v21, &qword_1EB94B510, &unk_1B68102C0);
    result = v19(v18, v5);
    v41 = *(v43 + 16);
    if (v41)
    {
      v25 = 0;
      v26 = (v43 + 64);
      v27 = MEMORY[0x1E69E7CC8];
      while (v25 < *(v43 + 16))
      {
        v28 = *(v26 - 3);
        v30 = *(v26 - 2);
        v29 = *(v26 - 1);
        v31 = *v26;
        v52 = *(v26 - 4);
        v53 = v28;
        v54 = v30;
        v55 = v29;
        v56 = v31;

        v57 = v31;

        sub_1B67D8B4C();
        sub_1B67D8DCC();

        v32 = v51;
        if (v51 == 1)
        {
          sub_1B67D8B4C();
          sub_1B67D8DCC();

          v32 = v49;
          if (v49 == 1)
          {
            goto LABEL_20;
          }

          v33 = v48;
        }

        else
        {
          v33 = v50;
        }

        v46 = v29;
        v47 = v33;
        if (!v32)
        {
          goto LABEL_18;
        }

        v45 = v28;
        sub_1B67D8B4C();
        sub_1B67D8DCC();

        v34 = v51;
        if (!v51)
        {
          goto LABEL_19;
        }

        v44 = v25 + 1;
        v35 = v50;
        v36 = sub_1B64BA55C(result);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v27;
        v38 = v35;
        v25 = v44;
        sub_1B64BFC44(v38, v34, v36, v47, v32, isUniquelyReferenced_nonNull_native);

        v27 = v48;
        v26 += 5;
        v39 = v42;
        if (v41 == v25)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    else
    {
      v27 = MEMORY[0x1E69E7CC8];
      v39 = v42;
LABEL_15:

      *v39 = v27;
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeedItemDatabase.saveFeedContext(_:)(Swift::OpaquePointer a1)
{
  v4 = *v1;
  v5 = sub_1B67D8C1C();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1._rawValue + 2))
  {
    v19 = v7;
    v10 = *(v1 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
    MEMORY[0x1EEE9AC00](v6);
    *(&v16 - 2) = v1;
    *(&v16 - 1) = v4;
    os_unfair_lock_lock((v10 + 52));
    sub_1B64C2DD8((v10 + 16), v18);
    os_unfair_lock_unlock((v10 + 52));
    if (!v2)
    {
      v11 = v18[1];
      v13 = v18[2];
      v12 = v18[3];
      v14 = objc_autoreleasePoolPush();
      v16 = &v16;
      v17 = v14;
      MEMORY[0x1EEE9AC00](v14);
      *(&v16 - 4) = a1._rawValue;
      *(&v16 - 3) = v11;
      *(&v16 - 2) = v13;
      *(&v16 - 1) = v12;
      v15 = v19;
      (*(v19 + 104))(v9, *MEMORY[0x1E69D6188], v5);
      sub_1B67D8F4C();
      (*(v15 + 8))(v9, v5);
      objc_autoreleasePoolPop(v17);
    }
  }
}

void FeedItemDatabase.sidecar<A>()(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v7 = *(v3 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  os_unfair_lock_lock((v7 + 52));
  sub_1B64C2DD8((v7 + 16), &v11);
  if (v4)
  {
    os_unfair_lock_unlock((v7 + 52));
  }

  else
  {
    v13 = a3;
    os_unfair_lock_unlock((v7 + 52));
    MEMORY[0x1EEE9AC00](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B498, &qword_1B6815AF0);
    sub_1B67D8F1C();
    if (v11)
    {
      sub_1B67D83AC();
      swift_allocObject();
      sub_1B67D839C();
      sub_1B67D8B4C();
      sub_1B67D8DCC();

      v9 = v12;
      if (v12 >> 60 == 15)
      {
        __break(1u);
      }

      else
      {
        v10 = v11;
        sub_1B67D838C();

        sub_1B6457448(v10, v9);
        (*(*(a1 - 8) + 56))(v13, 0, 1, a1);
      }
    }

    else
    {
      (*(*(a1 - 8) + 56))(v13, 1, 1, a1);
    }
  }
}

void FeedItemDatabase.saveSidecar<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v23 = a1;
  v8 = *v4;
  v9 = sub_1B67D8C1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  v20 = v4;
  v21 = v8;
  os_unfair_lock_lock((v13 + 52));
  sub_1B64C2DD8((v13 + 16), &v22);
  os_unfair_lock_unlock((v13 + 52));
  if (!v5)
  {
    v18 = &v18;
    MEMORY[0x1EEE9AC00](v14);
    *(&v18 - 8) = a2;
    *(&v18 - 7) = a3;
    *(&v18 - 6) = v19;
    *(&v18 - 5) = v15;
    *(&v18 - 4) = v16;
    *(&v18 - 3) = v17;
    *(&v18 - 2) = v23;
    (*(v10 + 104))(v12, *MEMORY[0x1E69D6188], v9);
    sub_1B67D8F4C();
    (*(v10 + 8))(v12, v9);
  }
}

void FeedItemDatabase.prune(policy:)(uint64_t a1)
{
  v45 = a1;
  v2 = *v1;
  v42 = sub_1B67D8C1C();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B67D877C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeedItemPruningPolicy(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B67D8B1C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  v46 = v1;
  v47 = v2;
  os_unfair_lock_lock((v14 + 52));
  v15 = v51;
  sub_1B64C2DD8((v14 + 16), v48);
  os_unfair_lock_unlock((v14 + 52));
  if (!v15)
  {
    v16 = v43;
    v17 = v44;
    v38 = v11;
    v39 = v13;
    v37 = v10;
    v18 = v48[0];
    v19 = v48[1];
    v20 = v48[2];
    v51 = v49;
    sub_1B64BF250(v45, v9);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v36 = v18;
      v45 = 0;
      v22 = v16;
      v27 = *(v16 + 32);
      v25 = v6;
      v28 = v6;
      v26 = v17;
      v27(v28, v9, v17);
      sub_1B64968E4();
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v36 = v18;
      v45 = 0;
      v22 = v16;
      v23 = *(v16 + 32);
      v24 = v6;
      v25 = v6;
      v26 = v17;
      v23(v24, v9, v17);
      sub_1B6496968();
LABEL_6:
      v49 = v17;
      v50 = MEMORY[0x1E69D6130];
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v48);
      (*(v22 + 16))(boxed_opaque_existential_0, v25, v17);

      v30 = v39;
      sub_1B67D8C5C();

      (*(v22 + 8))(v25, v26);
      v31 = __swift_destroy_boxed_opaque_existential_1(v48);
      v44 = &v36;
      MEMORY[0x1EEE9AC00](v31);
      *(&v36 - 4) = v19;
      *(&v36 - 3) = v20;
      *(&v36 - 2) = v51;
      *(&v36 - 1) = v30;
      v32 = v40;
      v33 = v41;
      v34 = v42;
      (*(v40 + 104))(v41, *MEMORY[0x1E69D6188], v42);
      sub_1B67D8F4C();
      v35 = v37;
      (*(v32 + 8))(v33, v34);

      (*(v38 + 8))(v39, v35);
      return;
    }
  }
}

uint64_t sub_1B64BBE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B67D8B1C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D8D7C();
  sub_1B67D8E2C();

  if (!v3)
  {
    sub_1B649AEE8();
    sub_1B67D8D9C();
    v10 = sub_1B67D8F9C();

    v30 = 0;
    v31 = v8;
    v32 = v6;
    v33 = v5;
    result = swift_getKeyPath();
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = 0;
      v29 = v11 - 1;
      v38 = MEMORY[0x1E69E7CC0];
      do
      {
        v13 = v12;
        while (1)
        {
          if (v13 >= *(v10 + 16))
          {
            __break(1u);
            return result;
          }

          v14 = a2;
          v12 = v13 + 1;
          v34 = *(v10 + 32 + 16 * v13);
          v35 = v34;

          swift_getAtKeyPath();

          v15 = v37;
          if (v37)
          {
            break;
          }

          ++v13;
          a2 = v14;
          if (v11 == v12)
          {
            goto LABEL_16;
          }
        }

        v16 = v36;
        result = swift_isUniquelyReferenced_nonNull_native();
        *&v34 = v16;
        if ((result & 1) == 0)
        {
          result = sub_1B646A2E0(0, *(v38 + 2) + 1, 1, v38);
          v38 = result;
        }

        v18 = *(v38 + 2);
        v17 = *(v38 + 3);
        v19 = v18 + 1;
        if (v18 >= v17 >> 1)
        {
          v28 = v18 + 1;
          result = sub_1B646A2E0((v17 > 1), v18 + 1, 1, v38);
          v19 = v28;
          v38 = result;
        }

        v20 = v38;
        *(v38 + 2) = v19;
        v21 = &v20[16 * v18];
        *(v21 + 4) = v34;
        *(v21 + 5) = v15;
        a2 = v14;
      }

      while (v29 != v13);
    }

    else
    {
      v38 = MEMORY[0x1E69E7CC0];
    }

LABEL_16:

    sub_1B67D8D7C();
    v22 = swift_allocObject();
    v22[2] = 25705;
    v22[3] = 0xE200000000000000;
    v23 = sub_1B64503A4(v38);

    v22[4] = v23;
    v24 = v31;
    v25 = v32;
    *v31 = v22;
    v26 = v24;
    v27 = v33;
    (*(v25 + 104))(v24, *MEMORY[0x1E69D6150], v33);
    sub_1B67D8E2C();
    (*(v25 + 8))(v26, v27);
  }

  return result;
}