unint64_t sub_1B64D339C()
{
  result = qword_1EDB1E8D8[0];
  if (!qword_1EDB1E8D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB1E8D8);
  }

  return result;
}

uint64_t sub_1B64D33F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeItemPruningPolicy(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B64D3454()
{
  result = qword_1EDB1EFD0;
  if (!qword_1EDB1EFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EFD0);
  }

  return result;
}

unint64_t sub_1B64D34A8()
{
  result = qword_1EDB1EFD8;
  if (!qword_1EDB1EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EFD8);
  }

  return result;
}

uint64_t sub_1B64D34FC(uint64_t a1)
{
  v2 = type metadata accessor for RecipeItemPruningPolicy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B64D3580()
{
  result = qword_1EB957870[0];
  if (!qword_1EB957870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB957870);
  }

  return result;
}

unint64_t sub_1B64D35D8()
{
  result = qword_1EDB21D90;
  if (!qword_1EDB21D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB21D90);
  }

  return result;
}

unint64_t sub_1B64D3630()
{
  result = qword_1EDB21D98;
  if (!qword_1EDB21D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB21D98);
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B64D369C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A398, &qword_1B6811328) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B64D0B6C(a1, v1 + v4, v5);
}

unint64_t sub_1B64D3744()
{
  result = qword_1EDB1E650;
  if (!qword_1EDB1E650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94B630, &qword_1B6816A40);
    sub_1B645C75C(&unk_1EDB1EFA0, MEMORY[0x1E6969558]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E650);
  }

  return result;
}

unint64_t sub_1B64D37EC()
{
  result = qword_1EDB1E8D0;
  if (!qword_1EDB1E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E8D0);
  }

  return result;
}

uint64_t sub_1B64D3840(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B688, &qword_1B6816CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B64D38D4(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  v6 = *v3;
  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B690, &unk_1B6816CC0);
  *(v4 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  *(v4 + 56) = swift_task_alloc();
  v8 = type metadata accessor for RecipeItemInventory.Metadata(0, *(v6 + 80), *(v6 + 88), v7);
  *(v4 + 64) = v8;
  *(v4 + 72) = *(v8 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 104) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1B64D3A4C, 0, 0);
}

uint64_t sub_1B64D3A4C()
{
  sub_1B64D3F24(v0[10]);
  v1 = v0[7];
  sub_1B6415FF0(v0[10], v1, &unk_1EB94A100, &qword_1B680FD50);
  v2 = sub_1B67D877C();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2) != 1;
  sub_1B6418AB4(v1, &unk_1EB94A100, &qword_1B680FD50);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1B64D3BE0;
  v5 = v0[10];

  return sub_1B64D4398(1, 1, v5, v3);
}

uint64_t sub_1B64D3BE0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1B64D3E8C;
  }

  else
  {
    v2 = sub_1B64D3CF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64D3CF4()
{
  v13 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);
  v12[0] = *(v0 + 104);
  sub_1B64DCC84(v12, v4, v3, 0, v2);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 64);
  if (v1)
  {
    (*(v6 + 8))(*(v0 + 80), *(v0 + 64));

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    swift_getOpaqueTypeConformance2();
    v10 = sub_1B67D971C();
    (*(v6 + 8))(v5, v7);

    v11 = *(v0 + 8);

    return v11(v10);
  }
}

uint64_t sub_1B64D3E8C()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B64D3F24@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v3 = *v1;
  v4 = *(v3 + 88);
  v5 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1B67D9DFC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v28 = &v28 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v30 = v5;
  v31 = v4;
  v12 = type metadata accessor for RecipeItemInventory.Metadata(255, v5, v4, v11);
  v13 = sub_1B67D9DFC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B64DD6A4(v12, v16);
  if (v2)
  {
    v17 = v2;
    v18 = sub_1B67D8A7C();
    v19 = sub_1B67D9C8C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      v22 = v2;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_1B63EF000, v18, v19, "failed to load metadata from database, error=%{public}@", v20, 0xCu);
      sub_1B6418AB4(v21, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v21, -1, -1);
      MEMORY[0x1B8C96DF0](v20, -1, -1);
    }

    else
    {
    }

    goto LABEL_7;
  }

  v24 = *(v12 - 8);
  if ((*(v24 + 48))(v16, 1, v12) == 1)
  {
    (*(v14 + 8))(v16, v13);
LABEL_7:
    v25 = sub_1B67D877C();
    (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
    v26 = v28;
    (*(*(AssociatedTypeWitness - 8) + 56))(v28, 1, 1);
    return sub_1B64D76A0(v10, v26, v30, v31, v32);
  }

  return (*(v24 + 32))(v32, v16, v12);
}

uint64_t sub_1B64D4398(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 64) = a4;
  *(v5 + 16) = a3;
  *(v5 + 24) = v4;
  v9 = swift_task_alloc();
  *(v5 + 32) = v9;
  *v9 = v5;
  v9[1] = sub_1B64D444C;

  return sub_1B64D48D0(a1, a2 & 1, a3);
}

uint64_t sub_1B64D444C(char a1)
{
  *(*v1 + 65) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B64D454C, 0, 0);
}

uint64_t sub_1B64D454C()
{
  v14 = v0;
  if (*(v0 + 65) != 1)
  {
LABEL_4:
    v7 = *(v0 + 8);

    return v7();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v1 + *(*v1 + 120));
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  os_unfair_lock_lock((v3 + 24));
  sub_1B64D89A0((v3 + 16), &v13, v5);
  os_unfair_lock_unlock((v3 + 24));
  LOBYTE(v2) = *(v0 + 64);
  v6 = v13;
  *(v0 + 40) = v13;

  if (v2)
  {

    goto LABEL_4;
  }

  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
  *v9 = v0;
  v9[1] = sub_1B64D46F4;
  v11 = MEMORY[0x1E69E7288];
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v10, v6, v12, v10, v11);
}

uint64_t sub_1B64D46F4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1B64D486C;
  }

  else
  {
    v2 = sub_1B64D4808;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64D4808()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B64D486C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B64D48D0(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 184) = a3;
  *(v4 + 192) = v3;
  *(v4 + 105) = a2;
  *(v4 + 176) = a1;
  *(v4 + 200) = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  *(v4 + 208) = swift_task_alloc();
  v5 = sub_1B67D877C();
  *(v4 + 216) = v5;
  *(v4 + 224) = *(v5 - 8);
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64D4A28, 0, 0);
}

uint64_t sub_1B64D4A28()
{
  v69 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  sub_1B6415FF0(*(v0 + 184), v3, &unk_1EB94A100, &qword_1B680FD50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B6418AB4(*(v0 + 208), &unk_1EB94A100, &qword_1B680FD50);
    goto LABEL_3;
  }

  v7 = *(v0 + 105);
  (*(*(v0 + 224) + 32))(*(v0 + 264), *(v0 + 208), *(v0 + 216));
  if ((v7 & 1) == 0)
  {
    v15 = *(v0 + 224);
    v16 = *(v0 + 176);
    sub_1B67D872C();
    v18 = *(v15 + 16);
    v19 = *(v0 + 264);
    v20 = *(v0 + 216);
    if (fabs(v17) < v16)
    {
      v18(*(v0 + 232), v19, v20);
      v21 = sub_1B67D8A7C();
      v22 = sub_1B67D9C9C();
      v23 = os_log_type_enabled(v21, v22);
      v24 = *(v0 + 264);
      v26 = *(v0 + 224);
      v25 = *(v0 + 232);
      v27 = *(v0 + 216);
      if (v23)
      {
        v28 = *(v0 + 176);
        v65 = *(v0 + 264);
        v29 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v68 = v62;
        *v29 = 136446722;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0xE000000000000000;
        *(v0 + 96) = v28;
        *(v0 + 104) = 0;
        sub_1B67DA01C();
        v30 = sub_1B6456540(*(v0 + 16), *(v0 + 24), &v68);

        *(v29 + 4) = v30;
        *(v29 + 12) = 2082;
        sub_1B645C75C(&qword_1EDB1EF98, MEMORY[0x1E6969570]);
        v31 = sub_1B67DA28C();
        v33 = v32;
        v34 = *(v26 + 8);
        v34(v25, v27);
        v35 = sub_1B6456540(v31, v33, &v68);

        *(v29 + 14) = v35;
        *(v29 + 22) = 2050;
        *(v29 + 24) = v28;
        _os_log_impl(&dword_1B63EF000, v21, v22, "should not refresh inventory due to policy=%{public}s, lastRefresh=%{public}s, refreshInterval=%{public}f", v29, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B8C96DF0](v62, -1, -1);
        MEMORY[0x1B8C96DF0](v29, -1, -1);

        v34(v65, v27);
      }

      else
      {

        v60 = *(v26 + 8);
        v60(v25, v27);
        v60(v24, v27);
      }

      v4 = 0;
      goto LABEL_4;
    }

    v18(*(v0 + 240), v19, v20);
    v36 = sub_1B67D8A7C();
    v37 = sub_1B67D9C9C();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 264);
    v40 = *(v0 + 240);
    v42 = *(v0 + 216);
    v41 = *(v0 + 224);
    if (v38)
    {
      v43 = *(v0 + 176);
      v66 = *(v0 + 264);
      v44 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v68 = v63;
      *v44 = 136446722;
      *(v0 + 32) = 0;
      *(v0 + 40) = 0xE000000000000000;
      *(v0 + 112) = v43;
      *(v0 + 120) = 0;
      sub_1B67DA01C();
      v45 = sub_1B6456540(*(v0 + 32), *(v0 + 40), &v68);

      *(v44 + 4) = v45;
      *(v44 + 12) = 2082;
      sub_1B645C75C(&qword_1EDB1EF98, MEMORY[0x1E6969570]);
      v46 = sub_1B67DA28C();
      v48 = v47;
      v49 = *(v41 + 8);
      v49(v40, v42);
      v50 = sub_1B6456540(v46, v48, &v68);

      *(v44 + 14) = v50;
      *(v44 + 22) = 2050;
      *(v44 + 24) = v43;
      _os_log_impl(&dword_1B63EF000, v36, v37, "should refresh inventory due to policy=%{public}s, lastRefresh=%{public}s, refreshInterval=%{public}f", v44, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C96DF0](v63, -1, -1);
      MEMORY[0x1B8C96DF0](v44, -1, -1);

      v49(v66, v42);
    }

    else
    {

      v61 = *(v41 + 8);
      v61(v40, v42);
      v61(v39, v42);
    }

    goto LABEL_3;
  }

  if (!*(v0 + 176))
  {
    v51 = sub_1B67D8A7C();
    v52 = sub_1B67D9C9C();
    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v0 + 264);
    v56 = *(v0 + 216);
    v55 = *(v0 + 224);
    if (v53)
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 136446210;
      *(v0 + 80) = 0;
      *(v0 + 88) = 0xE000000000000000;
      *(v0 + 160) = 0;
      v67 = v54;
      v68 = v58;
      v4 = 1;
      *(v0 + 168) = 1;
      sub_1B67DA01C();
      v59 = sub_1B6456540(*(v0 + 80), *(v0 + 88), &v68);

      *(v57 + 4) = v59;
      _os_log_impl(&dword_1B63EF000, v51, v52, "should refresh inventory due to policy=%{public}s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x1B8C96DF0](v58, -1, -1);
      MEMORY[0x1B8C96DF0](v57, -1, -1);

      (*(v55 + 8))(v67, v56);
      goto LABEL_4;
    }

    (*(v55 + 8))(v54, v56);
LABEL_3:
    v4 = 1;
LABEL_4:

    v5 = *(v0 + 8);

    return v5(v4);
  }

  v9 = *(v0 + 200);
  v10 = *(v0 + 184);
  v11 = *(v9 + 80);
  v12 = *(v9 + 88);
  v13 = *(type metadata accessor for RecipeItemInventory.Metadata(0, v11, v12, v8) + 36);
  v64 = (*(v12 + 32) + **(v12 + 32));
  v14 = swift_task_alloc();
  *(v0 + 272) = v14;
  *v14 = v0;
  v14[1] = sub_1B64D5258;

  return v64(v10 + v13, v11, v12);
}

uint64_t sub_1B64D5258(char a1)
{
  *(*v1 + 106) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B64D5358, 0, 0);
}

uint64_t sub_1B64D5358()
{
  v34 = v0;
  v1 = *(v0 + 106);
  v2 = *(v0 + 216);
  v3 = *(*(v0 + 224) + 16);
  v4 = *(v0 + 264);
  if (v1 == 1)
  {
    v3(*(v0 + 256), v4, v2);
    v5 = sub_1B67D8A7C();
    v6 = sub_1B67D9C9C();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 256);
    v9 = *(v0 + 264);
    v11 = *(v0 + 216);
    v10 = *(v0 + 224);
    if (v7)
    {
      v32 = 1;
      v12 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = v31;
      *v12 = 136446466;
      *(v0 + 64) = 0;
      *(v0 + 72) = 0xE000000000000000;
      *(v0 + 144) = 1;
      *(v0 + 152) = 1;
      sub_1B67DA01C();
      v30 = v9;
      v13 = sub_1B6456540(*(v0 + 64), *(v0 + 72), &v33);

      *(v12 + 4) = v13;
      *(v12 + 12) = 2082;
      sub_1B645C75C(&qword_1EDB1EF98, MEMORY[0x1E6969570]);
      v14 = sub_1B67DA28C();
      v16 = v15;
      v17 = *(v10 + 8);
      v17(v8, v11);
      v18 = sub_1B6456540(v14, v16, &v33);

      *(v12 + 14) = v18;
      v19 = "should refresh inventory due to policy=%{public}s, lastRefresh=%{public}s";
LABEL_6:
      _os_log_impl(&dword_1B63EF000, v5, v6, v19, v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C96DF0](v31, -1, -1);
      v26 = v12;
      v1 = v32;
      MEMORY[0x1B8C96DF0](v26, -1, -1);

      v17(v30, v11);
      goto LABEL_8;
    }
  }

  else
  {
    v3(*(v0 + 248), v4, v2);
    v5 = sub_1B67D8A7C();
    v6 = sub_1B67D9C9C();
    v20 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 264);
    v8 = *(v0 + 248);
    v11 = *(v0 + 216);
    v10 = *(v0 + 224);
    if (v20)
    {
      v32 = v1;
      v12 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = v31;
      *v12 = 136446466;
      *(v0 + 48) = 0;
      *(v0 + 56) = 0xE000000000000000;
      *(v0 + 128) = 1;
      *(v0 + 136) = 1;
      sub_1B67DA01C();
      v30 = v9;
      v21 = sub_1B6456540(*(v0 + 48), *(v0 + 56), &v33);

      *(v12 + 4) = v21;
      *(v12 + 12) = 2082;
      sub_1B645C75C(&qword_1EDB1EF98, MEMORY[0x1E6969570]);
      v22 = sub_1B67DA28C();
      v24 = v23;
      v17 = *(v10 + 8);
      v17(v8, v11);
      v25 = sub_1B6456540(v22, v24, &v33);

      *(v12 + 14) = v25;
      v19 = "should not refresh inventory due to policy=%{public}s, lastRefresh=%{public}s";
      goto LABEL_6;
    }
  }

  v27 = *(v10 + 8);
  v27(v8, v11);
  v27(v9, v11);
LABEL_8:

  v28 = *(v0 + 8);

  return v28(v1);
}

void sub_1B64D5788(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v27 = a3;
  v29 = a4;
  v7 = *(*a2 + 80);
  v8 = *(*a2 + 88);
  v9 = type metadata accessor for RecipeItemInventory.Metadata(0, v7, v8, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - v14;
  v28 = a1;
  v16 = *a1;
  if (v16)
  {
    v17 = v29;

    v18 = sub_1B67D8A7C();
    v19 = sub_1B67D9C9C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1B63EF000, v18, v19, "refresh is already in flight", v20, 2u);
      MEMORY[0x1B8C96DF0](v20, -1, -1);
    }

    *v17 = v16;
  }

  else
  {
    v21 = sub_1B67D993C();
    (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
    (*(v10 + 16))(v12, v27, v9);
    v22 = (*(v10 + 80) + 56) & ~*(v10 + 80);
    v23 = swift_allocObject();
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    *(v23 + 4) = v7;
    *(v23 + 5) = v8;
    *(v23 + 6) = a2;
    (*(v10 + 32))(&v23[v22], v12, v9);

    v24 = sub_1B6461304(0, 0, v15, &unk_1B6816DF8, v23);
    v25 = v29;
    *v28 = v24;
    *v25 = v24;
  }
}

uint64_t sub_1B64D5A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_1B64D5B1C;

  return sub_1B64D5E78(a5);
}

uint64_t sub_1B64D5B1C()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1B64D5CC4;
  }

  else
  {
    v2 = sub_1B64D5C30;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64D5C30()
{
  v1 = *(*(v0 + 16) + *(**(v0 + 16) + 120));
  os_unfair_lock_lock((v1 + 24));

  *(v1 + 16) = 0;
  os_unfair_lock_unlock((v1 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B64D5CC4()
{
  v1 = v0[4];
  v2 = v1;
  v3 = sub_1B67D8A7C();
  v4 = sub_1B67D9C8C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[4];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B63EF000, v3, v4, "failed to refresh inventory, error=%{public}@", v7, 0xCu);
    sub_1B6418AB4(v8, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v8, -1, -1);
    MEMORY[0x1B8C96DF0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0[2] + *(*v0[2] + 120));
  os_unfair_lock_lock((v11 + 24));

  *(v11 + 16) = 0;
  os_unfair_lock_unlock((v11 + 24));
  v12 = v0[1];

  return v12();
}

uint64_t sub_1B64D5E78(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *v1;
  v4 = *(*v1 + 88);
  v2[7] = v4;
  v5 = *(v3 + 80);
  v2[8] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1B67D9DFC();
  v2[9] = v7;
  v2[10] = *(v7 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v2[12] = swift_task_alloc();
  v9 = type metadata accessor for RecipeItemInventory.Metadata(0, v5, v4, v8);
  v2[13] = v9;
  v2[14] = *(v9 - 8);
  v2[15] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for RecipeItemServiceResult(0, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8), *(AssociatedConformanceWitness + 16));
  v2[16] = v11;
  v2[17] = *(v11 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64D60D0, 0, 0);
}

uint64_t sub_1B64D60D0(uint64_t a1)
{
  *(v1 + 160) = *(**(v1 + 48) + 128);
  v2 = sub_1B67D8A7C();
  v3 = sub_1B67D9C9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B63EF000, v2, v3, "refreshing inventory", v4, 2u);
    MEMORY[0x1B8C96DF0](v4, -1, -1);
  }

  *(v1 + 168) = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
  v5 = sub_1B67D8A7C();
  v6 = sub_1B67D9C9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B63EF000, v5, v6, "will acquire write token", v7, 2u);
    MEMORY[0x1B8C96DF0](v7, -1, -1);
  }

  v8 = *(v1 + 48);

  v9 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
  *(v1 + 176) = v9;
  *(v1 + 184) = *(v8 + *(*v8 + 112));
  sub_1B64DCAF4();
  *(v1 + 192) = v10;
  v11 = v9;
  v12 = sub_1B67D8A7C();
  v13 = sub_1B67D9C9C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134349056;
    *(v14 + 4) = [v11 fc_millisecondTimeIntervalUntilNow];

    _os_log_impl(&dword_1B63EF000, v12, v13, "did acquire write token, time=%{public}llums", v14, 0xCu);
    MEMORY[0x1B8C96DF0](v14, -1, -1);
  }

  else
  {

    v12 = v11;
  }

  v15 = *(v1 + 104);
  v16 = *(v1 + 48);
  v30 = *(v1 + 56);
  v17 = *(v1 + 40);

  v18 = swift_allocObject();
  *(v1 + 200) = v18;
  *(v18 + 16) = 0;
  v19 = swift_allocObject();
  *(v1 + 208) = v19;
  *(v19 + 16) = 0;
  *(v19 + 24) = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E695DF00];

  *(v1 + 216) = [objc_allocWithZone(v20) init];
  v21 = *(v15 + 36);
  *(v1 + 32) = 0;
  v22 = swift_allocObject();
  *(v1 + 224) = v22;
  v22[2] = v18;
  v22[3] = v19;
  v22[4] = sub_1B64D8AA8;
  v22[5] = v16;
  v23 = *(v30 + 24);

  v29 = (v23 + *v23);
  v24 = swift_task_alloc();
  *(v1 + 232) = v24;
  *v24 = v1;
  v24[1] = sub_1B64D6590;
  v25 = *(v1 + 152);
  v27 = *(v1 + 56);
  v26 = *(v1 + 64);

  return (v29)(v25, v17 + v21, v1 + 32, sub_1B64D8AB0, v22, v26, v27);
}

uint64_t sub_1B64D6590()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1B64D6F10;
  }

  else
  {

    v2 = sub_1B64D66AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64D66AC()
{
  v68 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 48);
  os_unfair_lock_lock((v2 + 16));
  v4 = *(v2 + 24);

  os_unfair_lock_unlock((v2 + 16));
  sub_1B64D6FF8(v4, v3);

  v5 = v1;
  v6 = sub_1B67D8A7C();
  v7 = sub_1B67D9C9C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = swift_slowAlloc();
    *v10 = 134349312;
    *(v10 + 4) = *(v9 + 16);

    *(v10 + 12) = 2050;
    *(v10 + 14) = [v8 fc_millisecondTimeIntervalUntilNow];

    _os_log_impl(&dword_1B63EF000, v6, v7, "finished fetching and saving recipe items, count=%{public}ld, time=%{public}llums", v10, 0x16u);
    MEMORY[0x1B8C96DF0](v10, -1, -1);
  }

  else
  {

    v6 = *(v0 + 216);
  }

  v65 = *(v0 + 240);
  v11 = *(v0 + 152);
  v12 = *(v0 + 120);
  v14 = *(v0 + 96);
  v13 = *(v0 + 104);
  v15 = *(v0 + 80);
  v16 = *(v0 + 88);
  v17 = *(v0 + 64);
  v18 = *(v0 + 72);
  v63 = *(v0 + 56);

  sub_1B67D876C();
  v19 = sub_1B67D877C();
  (*(*(v19 - 8) + 56))(v14, 0, 1, v19);
  (*(v15 + 16))(v16, v11, v18);
  sub_1B64D76A0(v14, v16, v17, v63, v12);
  WitnessTable = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  sub_1B64DD948(v12, v13, WitnessTable, v21);
  if (v65)
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    v22 = v65;
    v23 = sub_1B67D8A7C();
    v24 = sub_1B67D9C8C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      v27 = v65;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_1B63EF000, v23, v24, "failed to save metadata, error=%{public}@", v25, 0xCu);
      sub_1B6418AB4(v26, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v26, -1, -1);
      MEMORY[0x1B8C96DF0](v25, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  }

  v29 = *(v0 + 152);
  v31 = *(v0 + 136);
  v30 = *(v0 + 144);
  v32 = *(v0 + 128);
  v33 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
  (*(v31 + 16))(v30, v29, v32);
  v34 = sub_1B67D8A7C();
  v35 = sub_1B67D9C9C();
  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v0 + 136);
  v38 = *(v0 + 144);
  v39 = *(v0 + 128);
  if (v36)
  {
    v40 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v67 = v64;
    *v40 = 136446210;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    type metadata accessor for RecipeItemPruningPolicy(0);
    sub_1B67DA01C();
    v41 = v33;
    v42 = *(v0 + 16);
    v43 = *(v0 + 24);
    v66 = *(v37 + 8);
    v66(v38, v39);
    v44 = sub_1B6456540(v42, v43, &v67);
    v33 = v41;

    *(v40 + 4) = v44;
    _os_log_impl(&dword_1B63EF000, v34, v35, "will prune recipe items, policy=%{public}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x1B8C96DF0](v64, -1, -1);
    MEMORY[0x1B8C96DF0](v40, -1, -1);
  }

  else
  {

    v66 = *(v37 + 8);
    v66(v38, v39);
  }

  sub_1B64DDB4C(*(v0 + 152) + *(*(v0 + 128) + 44));
  v45 = v33;
  v46 = sub_1B67D8A7C();
  v47 = sub_1B67D9C9C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 134349056;
    *(v48 + 4) = [v45 fc_millisecondTimeIntervalUntilNow];

    _os_log_impl(&dword_1B63EF000, v46, v47, "did prune recipe items, time=%{public}llums", v48, 0xCu);
    MEMORY[0x1B8C96DF0](v48, -1, -1);
  }

  else
  {
  }

  v49 = *(v0 + 168);
  v50 = sub_1B67D8A7C();
  v51 = sub_1B67D9C9C();
  v52 = os_log_type_enabled(v50, v51);
  v53 = *(v0 + 216);
  v54 = *(v0 + 168);
  if (v52)
  {
    v55 = *(v0 + 176);
    v56 = swift_slowAlloc();
    *v56 = 134349056;
    *(v56 + 4) = [v54 fc_millisecondTimeIntervalUntilNow];

    _os_log_impl(&dword_1B63EF000, v50, v51, "finished refreshing inventory, time=%{public}llums", v56, 0xCu);
    MEMORY[0x1B8C96DF0](v56, -1, -1);

    v57 = 192;
    v50 = v55;
  }

  else
  {
    v58 = *(v0 + 192);

    v57 = 176;
  }

  v59 = *(v0 + 152);
  v60 = *(v0 + 128);

  v66(v59, v60);

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_1B64D6F10()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);

  v4 = *(v0 + 8);

  return v4();
}

void sub_1B64D6FF8(unint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    if (!sub_1B67DA04C())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];

  v6 = sub_1B67D8A7C();
  v7 = sub_1B67D9C9C();
  v8 = &unk_1B6811000;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    if (v4)
    {
      v10 = sub_1B67DA04C();
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 4) = v10;

    _os_log_impl(&dword_1B63EF000, v6, v7, "will score recipe items, count=%{public}ld", v9, 0xCu);
    MEMORY[0x1B8C96DF0](v9, -1, -1);
  }

  else
  {
  }

  v11 = (a2 + *(*a2 + 104));
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v14 = (*(v13 + 8))(a1, v12, v13);
  v15 = v5;
  v16 = sub_1B67D8A7C();
  v17 = sub_1B67D9C9C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134349056;
    *(v18 + 4) = [v15 fc_millisecondTimeIntervalUntilNow];

    _os_log_impl(&dword_1B63EF000, v16, v17, "successfully scored recipe items, time=%{public}llums", v18, 0xCu);
    v19 = v18;
    v8 = &unk_1B6811000;
    MEMORY[0x1B8C96DF0](v19, -1, -1);
  }

  else
  {
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];

  v21 = sub_1B67D8A7C();
  v22 = sub_1B67D9C9C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = v8;
    v25 = v23;
    *v23 = v24[62];
    if (v4)
    {
      v26 = sub_1B67DA04C();
    }

    else
    {
      v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v25 + 1) = v26;

    _os_log_impl(&dword_1B63EF000, v21, v22, "will save recipe items, count=%{public}ld", v25, 0xCu);
    MEMORY[0x1B8C96DF0](v25, -1, -1);
  }

  else
  {
  }

  sub_1B64DD40C(a1, v14);

  oslog = v20;
  v27 = sub_1B67D8A7C();
  v28 = sub_1B67D9C9C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134349312;
    if (v4)
    {
      v30 = sub_1B67DA04C();
    }

    else
    {
      v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v29 + 4) = v30;

    *(v29 + 12) = 2050;
    *(v29 + 14) = [oslog fc_millisecondTimeIntervalUntilNow];

    _os_log_impl(&dword_1B63EF000, v27, v28, "successfully saved recipe items, count=%{public}ld, time=%{public}llums", v29, 0x16u);
    MEMORY[0x1B8C96DF0](v29, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1B64D76A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1B6404758(a1, a5);
  v10 = *(type metadata accessor for RecipeItemInventory.Metadata(0, a3, a4, v9) + 36);
  swift_getAssociatedTypeWitness();
  v11 = sub_1B67D9DFC();
  v12 = *(*(v11 - 8) + 32);

  return v12(a5 + v10, a2, v11);
}

uint64_t sub_1B64D7764()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 104)));

  v1 = *(*v0 + 128);
  v2 = sub_1B67D8A9C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1B64D787C()
{
  sub_1B64D7764();

  return swift_deallocClassInstance();
}

uint64_t sub_1B64D78D4(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B6435678;

  return sub_1B64D38D4(a1, a2, a3);
}

uint64_t sub_1B64D7984(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B64D79D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B64D7A2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v13[0] = *(a2 + 24);
  v13[1] = v6;
  type metadata accessor for RecipeItemInventory.Metadata.CodingKeys(255, v6, v13[0], a4);
  swift_getWitnessTable();
  v7 = sub_1B67DA26C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B67DA47C();
  v15 = 0;
  sub_1B67D877C();
  sub_1B645C75C(&unk_1EDB1EFC0, MEMORY[0x1E6969538]);
  v11 = v13[3];
  sub_1B67DA1FC();
  if (!v11)
  {
    v14 = 1;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1B67DA1FC();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B64D7C50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1B67D9DFC();
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v36 = &v27 - v10;
  type metadata accessor for RecipeItemInventory.Metadata.CodingKeys(255, a2, a3, v11);
  swift_getWitnessTable();
  v39 = sub_1B67DA1EC();
  v33 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v13 = &v27 - v12;
  v37 = a3;
  v15 = type metadata accessor for RecipeItemInventory.Metadata(0, a2, a3, v14);
  v29 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v38 = v13;
  v18 = v40;
  sub_1B67DA46C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v17;
  v40 = a1;
  v28 = v15;
  v21 = v33;
  v20 = v34;
  sub_1B67D877C();
  v42 = 0;
  sub_1B645C75C(&unk_1EDB1EFA0, MEMORY[0x1E6969558]);
  v22 = v36;
  v23 = v38;
  sub_1B67DA18C();
  sub_1B6404758(v22, v19);
  v41 = 1;
  swift_getAssociatedConformanceWitness();
  sub_1B67DA18C();
  (*(v21 + 8))(v23, v39);
  v24 = v28;
  (*(v30 + 32))(v19 + *(v28 + 36), v20, v31);
  v25 = v29;
  (*(v29 + 16))(v32, v19, v24);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return (*(v25 + 8))(v19, v24);
}

uint64_t dispatch thunk of RecipeItemInventoryType.recipeItems(order:filter:limit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B6484E3C;

  return v13(a1, a2, a3, a4, a5);
}

void sub_1B64D8250(uint64_t a1)
{
  sub_1B6458D7C(319);
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_1B67D9DFC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B64D82F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = sub_1B67D877C();
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

  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  if (v7)
  {
    v14 = *(v6 + 64);
  }

  else
  {
    v14 = *(v6 + 64) + 1;
  }

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

  v18 = v14 + v15;
  if (a2 <= v13)
  {
LABEL_40:
    if (v8 >= v12)
    {
      v26 = (*(v6 + 48))(a1, v7, v5);
    }

    else
    {
      v26 = (*(v10 + 48))((a1 + v18) & ~v15);
    }

    if (v26 >= 2)
    {
      return v26 - 1;
    }

    else
    {
      return 0;
    }
  }

  v19 = v17 + (v18 & ~v15);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v22 = ((a2 - v13 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v22))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v22 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v22 < 2)
    {
LABEL_39:
      if (v13)
      {
        goto LABEL_40;
      }

      return 0;
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_39;
  }

LABEL_26:
  v23 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v23 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v24 = v19;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v13 + (v25 | v23) + 1;
}

void sub_1B64D8568(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = sub_1B67D877C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  if (v9)
  {
    v16 = *(v8 + 64);
  }

  else
  {
    v16 = *(v8 + 64) + 1;
  }

  v17 = *(v12 + 80);
  v18 = *(v12 + 64);
  if (!v13)
  {
    ++v18;
  }

  v19 = ((v16 + v17) & ~v17) + v18;
  if (a3 <= v15)
  {
LABEL_29:
    if (v15 < a2)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  if (v19 > 3)
  {
    v11 = 1;
    if (v15 >= a2)
    {
      goto LABEL_18;
    }

LABEL_30:
    v22 = ~v15 + a2;
    if (v19 >= 4)
    {
      bzero(a1, v19);
      *a1 = v22;
      v23 = 1;
      if (v11 > 1)
      {
        goto LABEL_32;
      }

LABEL_78:
      if (v11)
      {
        a1[v19] = v23;
      }

      return;
    }

    v23 = (v22 >> (8 * v19)) + 1;
    if (v19)
    {
      v27 = v22 & ~(-1 << (8 * v19));
      bzero(a1, v19);
      if (v19 != 3)
      {
        if (v19 == 2)
        {
          *a1 = v27;
          if (v11 <= 1)
          {
            goto LABEL_78;
          }
        }

        else
        {
          *a1 = v22;
          if (v11 <= 1)
          {
            goto LABEL_78;
          }
        }

LABEL_32:
        if (v11 == 2)
        {
          *&a1[v19] = v23;
        }

        else
        {
          *&a1[v19] = v23;
        }

        return;
      }

      *a1 = v27;
      a1[2] = BYTE2(v27);
    }

    if (v11 <= 1)
    {
      goto LABEL_78;
    }

    goto LABEL_32;
  }

  v20 = ((a3 - v15 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
  if (!HIWORD(v20))
  {
    if (v20 < 0x100)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (v20 >= 2)
    {
      v11 = v21;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_29;
  }

  v11 = 4;
  if (v15 < a2)
  {
    goto LABEL_30;
  }

LABEL_18:
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v19] = 0;
  }

  else if (v11)
  {
    a1[v19] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v10 >= v14)
  {
    if (v10 >= a2)
    {
      v30 = *(v8 + 56);

      v30(a1, a2 + 1, v9, v7);
    }

    else
    {
      if (v16 <= 3)
      {
        v28 = ~(-1 << (8 * v16));
      }

      else
      {
        v28 = -1;
      }

      if (v16)
      {
        v25 = v28 & (~v10 + a2);
        if (v16 <= 3)
        {
          v26 = v16;
        }

        else
        {
          v26 = 4;
        }

        bzero(a1, v16);
        if (v26 <= 2)
        {
          if (v26 != 1)
          {
            goto LABEL_48;
          }

          goto LABEL_64;
        }

        goto LABEL_83;
      }
    }
  }

  else
  {
    a1 = (&a1[v16 + v17] & ~v17);
    if (v14 >= a2)
    {
      v29 = *(v12 + 56);

      v29(a1, a2 + 1);
    }

    else
    {
      if (v18 <= 3)
      {
        v24 = ~(-1 << (8 * v18));
      }

      else
      {
        v24 = -1;
      }

      if (v18)
      {
        v25 = v24 & (~v14 + a2);
        if (v18 <= 3)
        {
          v26 = v18;
        }

        else
        {
          v26 = 4;
        }

        bzero(a1, v18);
        if (v26 <= 2)
        {
          if (v26 != 1)
          {
LABEL_48:
            *a1 = v25;
            return;
          }

LABEL_64:
          *a1 = v25;
          return;
        }

LABEL_83:
        if (v26 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else
        {
          *a1 = v25;
        }
      }
    }
  }
}

uint64_t sub_1B64D89CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for RecipeItemInventory.Metadata(0, v4[4], v4[5], a4) - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v4[6];
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1B642694C;

  return sub_1B64D5A7C(v9, v10, v11, v8, v4 + v7);
}

uint64_t sub_1B64D8AB0(char *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v8 = *(v3 + 16);
  v6 = (v3 + 16);
  v7 = v8;
  do
  {
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    v9 = v7;
    atomic_compare_exchange_strong_explicit(v6, &v9, v7 + 1, memory_order_relaxed, memory_order_relaxed);
    v10 = v9 == v7;
    v7 = v9;
  }

  while (!v10);
  os_unfair_lock_lock((v4 + 16));
  v11 = a1;
  MEMORY[0x1B8C949F0]();
  if (*((*(v4 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v4 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_6;
  }

LABEL_17:
  sub_1B67D97FC();
LABEL_6:
  sub_1B67D983C();
  v12 = *(v4 + 24);
  if (v12 >> 62)
  {
    v13 = sub_1B67DA04C();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x1E69E7CC0];
  if (v13 >= 1000)
  {
    v15 = *(v4 + 24);
    *(v4 + 24) = MEMORY[0x1E69E7CC0];
    v14 = v15;
  }

  os_unfair_lock_unlock((v4 + 16));
  if (!(v14 >> 62))
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (sub_1B67DA04C())
  {
LABEL_12:
    v5(v14);
  }

LABEL_13:
}

id sub_1B64D8CB4(uint64_t a1)
{
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v5 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v2 = objc_allocWithZone(FCRecipeItem);
    v3 = sub_1B64DA5BC(v4, v5);
    sub_1B6457448(v4, v5);
    return v3;
  }

  return result;
}

uint64_t sub_1B64D8D5C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v112 = a3;
  v113 = a2;
  v125 = a1;
  v118 = a4;
  v108 = sub_1B67D877C();
  v124 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v116 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v102 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v119 = &v101 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v117 = &v101 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v115 = &v101 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v114 = &v101 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v111 = &v101 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v109 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v107 = &v101 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v101 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC60, &qword_1B6813E08);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v101 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v34 = MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v101 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v101 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v105 = v39;
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v106 = v41;
  v110 = v40 + 56;
  v103 = v38;
  v41(v38, 1, 1, v39);
  v104 = v36;
  v41(v36, 1, 1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v123 = sub_1B67D8B3C();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC68, &qword_1B6813E10);
  v43 = *(*(v42 - 8) + 56);
  v43(v32, 1, 1, v42);
  v43(v30, 1, 1, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC70, &qword_1B6813E18);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC58, &qword_1B6813E00);
  swift_allocObject();
  v122 = sub_1B67D8B3C();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v45 = *(*(v44 - 8) + 56);
  v45(v26, 1, 1, v44);
  v45(v24, 1, 1, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  swift_allocObject();
  v121 = sub_1B67D8B3C();
  v45(v26, 1, 1, v44);
  v45(v24, 1, 1, v44);
  swift_allocObject();
  sub_1B67D8DBC();
  swift_allocObject();
  v120 = sub_1B67D8B3C();
  v45(v26, 1, 1, v44);
  v45(v24, 1, 1, v44);
  swift_allocObject();
  v46 = v108;
  sub_1B67D8DBC();
  v47 = v125;
  swift_allocObject();
  v48 = sub_1B67D8B3C();
  v49 = v105;
  v50 = v106;
  v106(v103, 1, 1, v105);
  v50(v104, 1, 1, v49);
  swift_allocObject();
  sub_1B67D8DBC();
  swift_allocObject();
  v110 = sub_1B67D8B3C();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v52 = *(*(v51 - 8) + 56);
  v52(v107, 1, 1, v51);
  v52(v109, 1, 1, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  swift_allocObject();
  v109 = sub_1B67D8B3C();
  sub_1B67D8B4C();
  v53 = [v47 identifier];
  v54 = sub_1B67D964C();
  v56 = v55;

  v126 = v54;
  v127 = v56;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v57 = v113;
  if (v112)
  {
    v57 = 0;
  }

  v126 = v57;
  LOBYTE(v127) = 0;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v58 = v111;
  sub_1B67D876C();
  v59 = *(v124 + 56);
  v59(v58, 0, 1, v46);
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v60 = &selRef_productVersion;
  v61 = [v47 publishDate];
  if (v61)
  {
    v62 = v116;
    v63 = v61;
    sub_1B67D874C();

    v64 = *(v124 + 32);
    v65 = v115;
    v64(v115, v62, v46);
    v59(v65, 0, 1, v46);
    v66 = v48;
    v67 = v114;
    v68 = v65;
    v60 = &selRef_productVersion;
    v64(v114, v68, v46);
    v69 = v67;
    v48 = v66;
  }

  else
  {
    v70 = v115;
    v59(v115, 1, 1, v46);
    v69 = v114;
    sub_1B67D86AC();
    v71 = (*(v124 + 48))(v70, 1, v46);
    v62 = v116;
    if (v71 != 1)
    {
      sub_1B646FA50(v70);
    }
  }

  v59(v69, 0, 1, v46);
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v72 = [v125 lastReferenceDate];
  v73 = v117;
  if (v72)
  {
    v74 = v72;
    sub_1B67D874C();

    v75 = *(v124 + 32);
    v76 = v119;
    v75(v119, v62, v46);
    v59(v76, 0, 1, v46);
    v75(v73, v76, v46);
  }

  else
  {
    v59(v119, 1, 1, v46);
    v77 = [v125 v60[29]];
    if (v77)
    {
      v78 = v77;
      sub_1B67D874C();

      v79 = v124;
      v80 = *(v124 + 32);
      v81 = v62;
      v82 = v102;
      v80(v102, v81, v46);
      v59(v82, 0, 1, v46);
      v80(v73, v82, v46);
      v83 = *(v79 + 48);
    }

    else
    {
      v84 = v102;
      v59(v102, 1, 1, v46);
      sub_1B67D86AC();
      v83 = *(v124 + 48);
      if (v83(v84, 1, v46) != 1)
      {
        sub_1B646FA50(v84);
      }
    }

    v85 = v119;
    if (v83(v119, 1, v46) != 1)
    {
      sub_1B646FA50(v85);
    }
  }

  v59(v73, 0, 1, v46);
  sub_1B67D8DDC();

  v86 = v110;
  sub_1B67D8B4C();
  v87 = v125;
  v88 = [v125 surfacedBy];
  v89 = sub_1B67D964C();
  v91 = v90;

  v126 = v89;
  v127 = v91;
  sub_1B67D8DDC();

  v92 = v109;
  sub_1B67D8B4C();
  v93 = [v87 data];
  v94 = sub_1B67D866C();
  v96 = v95;

  v126 = v94;
  v127 = v96;
  sub_1B67D8DDC();

  v98 = v118;
  v99 = v122;
  *v118 = v123;
  v98[1] = v99;
  v100 = v120;
  v98[2] = v121;
  v98[3] = v100;
  v98[4] = v48;
  v98[5] = v86;
  v98[6] = v92;
  return result;
}

uint64_t sub_1B64D9BF0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6465636166727573;
  if (v1 != 5)
  {
    v3 = 0x617461446270;
  }

  v4 = 0x446873696C627570;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x53746C7561666564;
  if (v1 != 1)
  {
    v5 = 0x44656761726F7473;
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

uint64_t sub_1B64D9CDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B64DAEEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B64D9D04(uint64_t a1)
{
  v2 = sub_1B64DAE98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64D9D40(uint64_t a1)
{
  v2 = sub_1B64DAE98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B64D9D7C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B6A8, &qword_1B6816FD8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64DAE98();
  sub_1B67DA47C();
  v13 = *v3;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  sub_1B6413CCC(&qword_1EB94A5E8, &qword_1EB949F40, &qword_1B6810290, MEMORY[0x1E69D6168]);
  sub_1B67DA24C();
  if (!v2)
  {
    v11 = v3;
    v13 = v3[1];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC58, &qword_1B6813E00);
    sub_1B6413CCC(&qword_1EB94AC88, &qword_1EB94AC58, &qword_1B6813E00, MEMORY[0x1E69D6168]);
    sub_1B67DA24C();
    v13 = v11[2];
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
    sub_1B6413CCC(&qword_1EB94A608, &qword_1EB949FF8, &qword_1B68123B0, MEMORY[0x1E69D6168]);
    sub_1B67DA24C();
    v13 = v11[3];
    v12 = 3;
    sub_1B67DA24C();
    v13 = v11[4];
    v12 = 4;
    sub_1B67DA24C();
    v9 = v11;
    v13 = v11[5];
    v12 = 5;
    sub_1B67DA24C();
    v13 = v9[6];
    v12 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
    sub_1B6413CCC(&qword_1EB94AC90, &qword_1EB94A640, &qword_1B6811470, MEMORY[0x1E69D6168]);
    sub_1B67DA24C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B64DA178(uint64_t a1)
{
  v2 = sub_1B64DC460();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B64DA1C4(uint64_t a1)
{
  v2 = sub_1B64DC460();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B64DA210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B64DC460();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

double sub_1B64DA274@<D0>(uint64_t a1@<X8>)
{
  sub_1B64DA67C(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

double sub_1B64DA2C0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1B64DB148(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1B64DA328(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B64DC460();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B64DA374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B64DC460();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B64DA3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B64DC460();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

uint64_t sub_1B64DA42C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  v9(v5, 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  result = sub_1B67D8B3C();
  *a1 = result;
  return result;
}

id sub_1B64DA5BC(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1B67D864C();
  v8[0] = 0;
  v4 = [v2 initWithData:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1B67D855C();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1B64DA67C@<X0>(uint64_t *a1@<X8>)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v50 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC60, &qword_1B6813E08);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v40 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v45 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v46 = v25;
  v47 = v24 + 56;
  v42 = v22;
  v25(v22, 1, 1, v23);
  v43 = v20;
  v25(v20, 1, 1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v48 = sub_1B67D8B3C();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC68, &qword_1B6813E10);
  v27 = *(*(v26 - 8) + 56);
  v27(v16, 1, 1, v26);
  v27(v14, 1, 1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC70, &qword_1B6813E18);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC58, &qword_1B6813E00);
  swift_allocObject();
  v44 = sub_1B67D8B3C();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v29 = *(*(v28 - 8) + 56);
  v29(v10, 1, 1, v28);
  v29(v8, 1, 1, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  swift_allocObject();
  v41 = sub_1B67D8B3C();
  v29(v10, 1, 1, v28);
  v29(v8, 1, 1, v28);
  swift_allocObject();
  sub_1B67D8DBC();
  swift_allocObject();
  v40 = sub_1B67D8B3C();
  v29(v10, 1, 1, v28);
  v29(v8, 1, 1, v28);
  swift_allocObject();
  sub_1B67D8DBC();
  swift_allocObject();
  v30 = sub_1B67D8B3C();
  v31 = v45;
  v32 = v46;
  v46(v42, 1, 1, v45);
  v32(v43, 1, 1, v31);
  swift_allocObject();
  sub_1B67D8DBC();
  swift_allocObject();
  v33 = sub_1B67D8B3C();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v35 = *(*(v34 - 8) + 56);
  v35(v49, 1, 1, v34);
  v35(v50, 1, 1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  swift_allocObject();
  result = sub_1B67D8B3C();
  v37 = v51;
  v38 = v44;
  *v51 = v48;
  v37[1] = v38;
  v39 = v40;
  v37[2] = v41;
  v37[3] = v39;
  v37[4] = v30;
  v37[5] = v33;
  v37[6] = result;
  return result;
}

unint64_t sub_1B64DAE98()
{
  result = qword_1EB957A80[0];
  if (!qword_1EB957A80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB957A80);
  }

  return result;
}

uint64_t sub_1B64DAEEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53746C7561666564 && a2 == 0xEC00000065726F63 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44656761726F7473 && a2 == 0xEB00000000657461 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446873696C627570 && a2 == 0xEB00000000657461 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B6829E80 == a2 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6465636166727573 && a2 == 0xEA00000000007942 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x617461446270 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B67DA2DC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1B64DB148@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v54[0] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B6C8, qword_1B68174A8);
  v55 = *(v2 - 8);
  v56 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v66 = v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v68 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC60, &qword_1B6813E08);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v54 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v60 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v61 = v27;
  v65 = v26 + 56;
  v57 = v24;
  v27(v24, 1, 1, v25);
  v58 = v22;
  v27(v22, 1, 1, v25);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v72 = sub_1B67D8B3C();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC68, &qword_1B6813E10);
  v30 = *(*(v29 - 8) + 56);
  v30(v18, 1, 1, v29);
  v30(v16, 1, 1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC70, &qword_1B6813E18);
  swift_allocObject();
  sub_1B67D8DBC();
  v54[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC58, &qword_1B6813E00);
  swift_allocObject();
  v71 = sub_1B67D8B3C();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v32 = *(*(v31 - 8) + 56);
  v32(v12, 1, 1, v31);
  v33 = v68;
  v32(v68, 1, 1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  swift_allocObject();
  v70 = sub_1B67D8B3C();
  v32(v12, 1, 1, v31);
  v32(v33, 1, 1, v31);
  swift_allocObject();
  sub_1B67D8DBC();
  swift_allocObject();
  v69 = sub_1B67D8B3C();
  v32(v12, 1, 1, v31);
  v32(v33, 1, 1, v31);
  swift_allocObject();
  sub_1B67D8DBC();
  swift_allocObject();
  v68 = sub_1B67D8B3C();
  v34 = v60;
  v35 = v61;
  v61(v57, 1, 1, v60);
  v35(v58, 1, 1, v34);
  v36 = v63;
  swift_allocObject();
  sub_1B67D8DBC();
  v37 = v28;
  swift_allocObject();
  v65 = sub_1B67D8B3C();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v39 = *(*(v38 - 8) + 56);
  v39(v62, 1, 1, v38);
  v39(v64, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  swift_allocObject();
  v64 = sub_1B67D8B3C();
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  sub_1B64DAE98();
  v40 = v67;
  v41 = v66;
  sub_1B67DA46C();
  if (v40)
  {
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
    v73 = 0;
    sub_1B6413CCC(&qword_1EB94A618, &qword_1EB949F40, &qword_1B6810290, MEMORY[0x1E69D6170]);
    sub_1B67DA1CC();
    v67 = v37;

    v72 = v74;
    v73 = 1;
    sub_1B6413CCC(&qword_1EB94ACA8, &qword_1EB94AC58, &qword_1B6813E00, MEMORY[0x1E69D6170]);
    sub_1B67DA1CC();

    v71 = v74;
    v73 = 2;
    sub_1B6413CCC(&qword_1EB94A638, &qword_1EB949FF8, &qword_1B68123B0, MEMORY[0x1E69D6170]);
    sub_1B67DA1CC();

    v70 = v74;
    v73 = 3;
    sub_1B67DA1CC();

    v69 = v74;
    v73 = 4;
    sub_1B67DA1CC();

    v42 = v74;
    v73 = 5;
    sub_1B67DA1CC();
    v43 = v55;
    v68 = v42;

    v44 = v74;
    v73 = 6;
    sub_1B6413CCC(&qword_1EB94ACB0, &qword_1EB94A640, &qword_1B6811470, MEMORY[0x1E69D6170]);
    v45 = v56;
    sub_1B67DA1CC();
    (*(v43 + 8))(v41, v45);

    v46 = v74;
    v47 = v72;

    v48 = v71;

    v49 = v70;

    v50 = v69;

    v51 = v68;

    __swift_destroy_boxed_opaque_existential_1(v36);

    v53 = v54[0];
    *v54[0] = v47;
    v53[1] = v48;
    v53[2] = v49;
    v53[3] = v50;
    v53[4] = v51;
    v53[5] = v44;
    v53[6] = v46;
  }

  return result;
}

unint64_t sub_1B64DBE20()
{
  result = qword_1EDB1EDD0;
  if (!qword_1EDB1EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EDD0);
  }

  return result;
}

unint64_t sub_1B64DBE78()
{
  result = qword_1EDB1EDE8;
  if (!qword_1EDB1EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EDE8);
  }

  return result;
}

unint64_t sub_1B64DBEF8()
{
  result = qword_1EB94B6B0;
  if (!qword_1EB94B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B6B0);
  }

  return result;
}

unint64_t sub_1B64DBF4C()
{
  result = qword_1EB94B6B8;
  if (!qword_1EB94B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B6B8);
  }

  return result;
}

unint64_t sub_1B64DBFA0()
{
  result = qword_1EDB1EDC0;
  if (!qword_1EDB1EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EDC0);
  }

  return result;
}

unint64_t sub_1B64DBFF4()
{
  result = qword_1EDB1EDC8;
  if (!qword_1EDB1EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EDC8);
  }

  return result;
}

unint64_t sub_1B64DC048()
{
  result = qword_1EDB1EDE0;
  if (!qword_1EDB1EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EDE0);
  }

  return result;
}

unint64_t sub_1B64DC0A8()
{
  result = qword_1EDB1EDD8;
  if (!qword_1EDB1EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EDD8);
  }

  return result;
}

unint64_t sub_1B64DC104()
{
  result = qword_1EDB1EDF8;
  if (!qword_1EDB1EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EDF8);
  }

  return result;
}

uint64_t sub_1B64DC184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B64DC1C0()
{
  result = qword_1EDB1EB78;
  if (!qword_1EDB1EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EB78);
  }

  return result;
}

unint64_t sub_1B64DC214()
{
  result = qword_1EB94B6C0;
  if (!qword_1EB94B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B6C0);
  }

  return result;
}

unint64_t sub_1B64DC26C()
{
  result = qword_1EDB1EB80;
  if (!qword_1EDB1EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EB80);
  }

  return result;
}

unint64_t sub_1B64DC2C4()
{
  result = qword_1EDB1EB70;
  if (!qword_1EDB1EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EB70);
  }

  return result;
}

unint64_t sub_1B64DC35C()
{
  result = qword_1EB957D90[0];
  if (!qword_1EB957D90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB957D90);
  }

  return result;
}

unint64_t sub_1B64DC3B4()
{
  result = qword_1EB957EA0[0];
  if (!qword_1EB957EA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB957EA0);
  }

  return result;
}

unint64_t sub_1B64DC40C()
{
  result = qword_1EDB23608[0];
  if (!qword_1EDB23608[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB23608);
  }

  return result;
}

unint64_t sub_1B64DC460()
{
  result = qword_1EDB1EDF0;
  if (!qword_1EDB1EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EDF0);
  }

  return result;
}

NewsCore::RecipeItemOrder_optional __swiftcall RecipeItemOrder.init(rawValue:)(Swift::String rawValue)
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

unint64_t RecipeItemOrder.rawValue.getter()
{
  v1 = 7958113;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0x73654465726F6373;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B64DC5E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000017;
    }

    else
    {
      v3 = 0xD000000000000015;
    }

    if (v2 == 2)
    {
      v4 = 0x80000001B6829EB0;
    }

    else
    {
      v4 = 0x80000001B68299B0;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x73654465726F6373;
    }

    else
    {
      v3 = 7958113;
    }

    if (v2)
    {
      v4 = 0xEF676E69646E6563;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000017;
    }

    else
    {
      v7 = 0xD000000000000015;
    }

    if (a2 == 2)
    {
      v6 = 0x80000001B6829EB0;
    }

    else
    {
      v6 = 0x80000001B68299B0;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x73654465726F6373;
    }

    else
    {
      v5 = 7958113;
    }

    if (a2)
    {
      v6 = 0xEF676E69646E6563;
    }

    else
    {
      v6 = 0xE300000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = sub_1B67DA2DC();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_1B64DC744()
{
  sub_1B67DA3DC();
  sub_1B67D967C();

  return sub_1B67DA41C();
}

uint64_t sub_1B64DC818(uint64_t a1)
{
  sub_1B67D967C();
}

uint64_t sub_1B64DC8D8(uint64_t a1)
{
  sub_1B67DA3DC();
  sub_1B67D967C();

  return sub_1B67DA41C();
}

void sub_1B64DC9B4(unint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7958113;
  v4 = 0x80000001B6829EB0;
  v5 = 0xD000000000000017;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000015;
    v4 = 0x80000001B68299B0;
  }

  if (*v1)
  {
    v3 = 0x73654465726F6373;
    v2 = 0xEF676E69646E6563;
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

void sub_1B64DCAF4()
{
  v2 = v0;
  v3 = *v0;
  v4 = sub_1B67D85FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v2 + OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_storage);
  v11 = v2;
  v12 = v3;
  os_unfair_lock_lock(v8 + 11);
  sub_1B64E1E00(&v8[4], &v13);
  os_unfair_lock_unlock(v8 + 11);
  if (!v1)
  {

    (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_fileURL, v4);
    v9 = objc_allocWithZone(FCFileAccessToken);
    sub_1B64BE94C(v7, &selRef_initForWritingURL_error_);
  }
}

void sub_1B64DCC84(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v34 = a4;
  v38 = a2;
  v10 = *v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B470, &unk_1B6815A80);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v31 - v15);
  v17 = *a1;
  v18 = *(v5 + OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_storage);
  v35 = v5;
  v36 = v10;
  os_unfair_lock_lock(v18 + 11);
  sub_1B64E1E00(&v18[4], v37);
  if (v6)
  {
    os_unfair_lock_unlock(v18 + 11);
    return;
  }

  v32 = a5;
  v19 = v34;
  os_unfair_lock_unlock(v18 + 11);
  v20 = v37[0];
  v31 = v37[1];
  v21 = v37[2];

  v33 = v16;
  sub_1B64DD080(v16);
  if (v17 > 1)
  {
    v22 = v13;
    if (v17 == 2)
    {
      v24 = sub_1B64D8C9C();
    }

    else
    {
      v24 = sub_1B64D8C90();
    }

    goto LABEL_10;
  }

  v22 = v13;
  if (v17)
  {
    v24 = sub_1B64D8C78();
LABEL_10:
    v25 = v24[1];
    *v22 = *v24;
    *(v22 + 1) = v25;
    LODWORD(v38) = *MEMORY[0x1E69D6220];
    v26 = sub_1B67D8E4C();
    v27 = *(v26 - 8);
    (*(v27 + 104))(v22, v38, v26);
    (*(v27 + 56))(v22, 0, 1, v26);

    goto LABEL_11;
  }

  v23 = sub_1B67D8E4C();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
LABEL_11:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v31 - 6) = v33;
  *(&v31 - 5) = v21;
  *(&v31 - 4) = v22;
  *(&v31 - 3) = a3;
  *(&v31 - 16) = v19 & 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B6D8, &unk_1B6817508);
  sub_1B67D8F1C();
  v29 = v37[0];

  if (!v29)
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  v30 = v32;
  sub_1B6418AB4(v22, &qword_1EB94B510, &unk_1B68102C0);
  sub_1B6418AB4(v33, &qword_1EB94B470, &unk_1B6815A80);
  *v30 = v20;
  v30[1] = v21;
  v30[2] = KeyPath;
  v30[3] = v29;
}

uint64_t sub_1B64DD080@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B67D877C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecipeItemFilter(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B64E1B30(v2, v10, type metadata accessor for RecipeItemFilter);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *v10;
      v13 = swift_allocObject();
      v14 = sub_1B64D8CA8();
      v16 = *v14;
      v15 = *(v14 + 1);
      v13[2] = v16;
      v13[3] = v15;

      v17 = sub_1B64503A4(v12);

      v13[4] = v17;
      *a1 = v13;
      v18 = *MEMORY[0x1E69D6138];
      v19 = sub_1B67D8B1C();
      v20 = *(v19 - 8);
      (*(v20 + 104))(a1, v18, v19);
      return (*(v20 + 56))(a1, 0, 1, v19);
    }

    else
    {
      v31 = sub_1B67D8B1C();
      return (*(*(v31 - 8) + 56))(a1, 1, 1, v31);
    }
  }

  else
  {
    v22 = *(v5 + 32);
    v22(v7, v10, v4);
    v23 = swift_allocObject();
    v24 = sub_1B64D8C90();
    v25 = *(v24 + 1);
    v23[2] = *v24;
    v23[3] = v25;
    v26 = MEMORY[0x1E69D6130];
    v23[7] = v4;
    v23[8] = v26;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23 + 4);
    v22(boxed_opaque_existential_0, v7, v4);
    *a1 = v23;
    v28 = *MEMORY[0x1E69D6148];
    v29 = sub_1B67D8B1C();
    v30 = *(v29 - 8);
    (*(v30 + 104))(a1, v28, v29);
    (*(v30 + 56))(a1, 0, 1, v29);
  }
}

id sub_1B64DD3C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B64D8CB4(a1);
  *a2 = result;
  return result;
}

void sub_1B64DD40C(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v8 = sub_1B67D8C1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v12 = sub_1B67DA04C();
    if (!v12)
    {
      return;
    }
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      return;
    }
  }

  v20 = a2;
  v22 = v9;
  v13 = *(v4 + OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_storage);
  MEMORY[0x1EEE9AC00](v12);
  v19[-2] = v4;
  v19[-1] = v7;
  os_unfair_lock_lock(v13 + 11);
  sub_1B64E1E00(&v13[4], v21);
  os_unfair_lock_unlock(v13 + 11);
  if (!v3)
  {
    v15 = v21[1];
    v16 = v21[2];
    v19[1] = v19;
    MEMORY[0x1EEE9AC00](v14);
    v19[-4] = a1;
    v19[-3] = v15;
    v17 = v20;
    v19[-2] = v16;
    v19[-1] = v17;
    v18 = v22;
    (*(v22 + 104))(v11, *MEMORY[0x1E69D6188], v8);
    sub_1B67D8F4C();
    (*(v18 + 8))(v11, v8);
  }
}

void sub_1B64DD6A4(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v7 = *(v3 + OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_storage);
  os_unfair_lock_lock(v7 + 11);
  sub_1B64E1E00(&v7[4], &v12);
  v8 = v7 + 11;
  if (v4)
  {
    os_unfair_lock_unlock(v8);
  }

  else
  {
    os_unfair_lock_unlock(v8);
    MEMORY[0x1EEE9AC00](v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B6E0, &qword_1B6817518);
    sub_1B67D8F1C();
    if (v12)
    {
      v14 = v12;
      sub_1B67D83AC();
      swift_allocObject();
      sub_1B67D839C();
      sub_1B67D8B4C();
      sub_1B67D8DCC();

      v10 = v13;
      if (v13 >> 60 == 15)
      {
        __break(1u);
      }

      else
      {
        v11 = v12;
        sub_1B67D838C();

        sub_1B6457448(v11, v10);
        (*(*(a1 - 8) + 56))(a3, 0, 1, a1);
      }
    }

    else
    {
      (*(*(a1 - 8) + 56))(a3, 1, 1, a1);
    }
  }
}

void sub_1B64DD948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v19 = a1;
  v8 = *v4;
  v9 = sub_1B67D8C1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_storage);
  v20 = v4;
  v21 = v8;
  os_unfair_lock_lock(v13 + 11);
  sub_1B64E1E00(&v13[4], &v22);
  os_unfair_lock_unlock(v13 + 11);
  if (!v5)
  {
    MEMORY[0x1EEE9AC00](v14);
    *(&v18 - 6) = a2;
    *(&v18 - 5) = a3;
    *(&v18 - 4) = v23;
    *(&v18 - 3) = v15;
    v16 = v19;
    *(&v18 - 2) = v17;
    *(&v18 - 1) = v16;
    (*(v10 + 104))(v12, *MEMORY[0x1E69D6188], v9);
    sub_1B67D8F4C();
    (*(v10 + 8))(v12, v9);
  }
}

void sub_1B64DDB4C(uint64_t a1)
{
  v3 = v1;
  v47 = a1;
  v4 = *v1;
  v5 = sub_1B67D8C1C();
  v6 = *(v5 - 8);
  v39 = v5;
  v40 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B470, &unk_1B6815A80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v43 = (&v34 - v9);
  v10 = sub_1B67D8B1C();
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RecipeItemPruningPolicy(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - v18;
  v20 = *(v3 + OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_storage);
  v44 = v3;
  v45 = v4;
  os_unfair_lock_lock(v20 + 11);
  sub_1B64E1E00(&v20[4], v46);
  os_unfair_lock_unlock(v20 + 11);
  if (!v2)
  {
    v21 = v43;
    v35 = v12;
    v22 = v46[1];
    v36 = v46[2];
    v37 = v46[0];
    sub_1B64E1B30(v47, v19, type metadata accessor for RecipeItemPruningPolicy);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v47 = v22;
      v23 = *(*v19 + 16);

      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = 0;
        while (v25 < *(v23 + 16))
        {
          sub_1B64E1B30(v23 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v25, v17, type metadata accessor for RecipeItemPruningPolicy);
          sub_1B64DDB4C(v17);
          ++v25;
          sub_1B64D34FC(v17);
          if (v24 == v25)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_7:
      }
    }

    else
    {
      sub_1B64D34FC(v19);
      sub_1B64DE0B4(v21);
      v27 = v41;
      v26 = v42;
      if ((*(v41 + 48))(v21, 1, v42) == 1)
      {

        sub_1B6418AB4(v21, &qword_1EB94B470, &unk_1B6815A80);
      }

      else
      {
        v28 = v35;
        v29 = (*(v27 + 32))(v35, v21, v26);
        v43 = &v34;
        MEMORY[0x1EEE9AC00](v29);
        v47 = v22;
        v30 = v36;
        *(&v34 - 4) = v22;
        *(&v34 - 3) = v30;
        *(&v34 - 2) = v28;
        v31 = v39;
        v32 = v40;
        v33 = v38;
        (*(v40 + 104))(v38, *MEMORY[0x1E69D6188], v39);
        sub_1B67D8F4C();
        (*(v32 + 8))(v33, v31);

        (*(v27 + 8))(v28, v26);
      }
    }
  }
}

uint64_t sub_1B64DE0B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B470, &unk_1B6815A80);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v62 = (&v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v58 - v6);
  v8 = sub_1B67D8B1C();
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v61 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v58 - v11;
  v12 = sub_1B67D877C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RecipeItemPruningPolicy(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v58 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v58 - v23);
  sub_1B64E1B30(v2, &v58 - v23, type metadata accessor for RecipeItemPruningPolicy);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        (*(v13 + 32))(v15, v24, v12);
        sub_1B64D8C84();
        v67[3] = v12;
        v67[4] = MEMORY[0x1E69D6130];
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v67);
        (*(v13 + 16))(boxed_opaque_existential_0, v15, v12);

        v38 = v64;
        sub_1B67D8C5C();

        (*(v13 + 8))(v15, v12);
        __swift_destroy_boxed_opaque_existential_1(v67);
        v30 = *(v65 + 56);
        v31 = v38;
        goto LABEL_13;
      }

      v26 = *v24;
      sub_1B64D8CA8();

      sub_1B64503A4(v26);

      v27 = v64;
      sub_1B67D8CAC();
    }

    else
    {
      v29 = *v24;
      sub_1B64D8CA8();

      sub_1B64503A4(v29);

      v27 = v64;
      sub_1B67D8C8C();
    }

    v30 = *(v65 + 56);
    v31 = v27;
LABEL_13:
    v39 = 0;
    return v30(v31, v39, 1, v66);
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_1B64D34FC(v24);
      sub_1B64E1ADC();
      swift_allocError();
      return swift_willThrow();
    }

    v31 = v64;
    v30 = *(v65 + 56);
    v39 = 1;
    return v30(v31, v39, 1, v66);
  }

  v32 = *v24;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B640, &qword_1B6816A60);
  v34 = swift_projectBox();
  v35 = *(v33 + 48);
  sub_1B64E1B30(v34, v22, type metadata accessor for RecipeItemPruningPolicy);
  sub_1B64E1B30(v34 + v35, v19, type metadata accessor for RecipeItemPruningPolicy);
  v36 = v68;
  sub_1B64DE0B4(v7);
  if (v36)
  {
    sub_1B64D34FC(v19);
    sub_1B64D34FC(v22);
  }

  else
  {
    v41 = v65;
    v40 = v66;
    v42 = *(v65 + 48);
    if (v42(v7, 1, v66) == 1)
    {
      sub_1B6418AB4(v7, &qword_1EB94B470, &unk_1B6815A80);
      sub_1B64DE0B4(v64);
      sub_1B64D34FC(v19);
      sub_1B64D34FC(v22);
    }

    else
    {
      v60 = v32;
      v68 = 0;
      v43 = v63;
      v59 = *(v41 + 32);
      v59(v63, v7, v40);
      v44 = v62;
      v45 = v68;
      sub_1B64DE0B4(v62);
      v68 = v45;
      if (v45)
      {
        (*(v41 + 8))(v43, v66);
        sub_1B64D34FC(v19);
        sub_1B64D34FC(v22);
      }

      else
      {
        v46 = v59;
        sub_1B64D34FC(v19);
        sub_1B64D34FC(v22);
        v47 = v66;
        if (v42(v44, 1, v66) == 1)
        {
          sub_1B6418AB4(v44, &qword_1EB94B470, &unk_1B6815A80);
          v48 = v64;
          v46(v64, v63, v47);
          (*(v65 + 56))(v48, 0, 1, v47);
        }

        else
        {
          v49 = v61;
          v46(v61, v44, v47);
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B710, &unk_1B6817A28);
          v51 = v47;
          v52 = swift_allocBox();
          v54 = v53;
          v55 = *(v50 + 48);
          v46(v53, v63, v51);
          v46((v54 + v55), v49, v51);
          v56 = v64;
          *v64 = v52;
          v57 = v65;
          (*(v65 + 104))(v56, *MEMORY[0x1E69D6140], v51);
          (*(v57 + 56))(v56, 0, 1, v51);
        }
      }
    }
  }
}

id sub_1B64DE808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v59 = a2;
  v53 = a3;
  v4 = sub_1B67D8C1C();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B67D8E6C();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1B67D8F7C();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B67D8E8C();
  v54 = *(v10 - 8);
  v55 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B67D8EDC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B67D8C4C();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_1B67D8F5C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *a1;
  v22 = *(a1 + 16);
  v64 = *(a1 + 8);
  v65 = v22;
  v23 = *(a1 + 24);
  if (v23 != 255)
  {
    v24 = v21;
    v25 = v23;
    if ((v23 & 1) == 0)
    {
      v26 = v53;
      v27 = v64;
      v28 = v65;
      *v53 = v21;
      v26[1] = v27;
      v26[2] = v28;
    }

    goto LABEL_7;
  }

  v48 = (a1 + 8);
  v49 = v21;
  v67 = 255;
  v47 = v6;
  v50 = a1;
  *v20 = sub_1B67D85BC();
  v20[1] = v30;
  (*(v18 + 104))(v20, *MEMORY[0x1E69D6280], v17);
  sub_1B67D8C3C();
  (*(v13 + 104))(v15, *MEMORY[0x1E69D6270], v12);
  (*(v54 + 104))(v57, *MEMORY[0x1E69D6268], v55);
  (*(v56 + 104))(v60, *MEMORY[0x1E69D62A0], v58);
  (*(v61 + 104))(v63, *MEMORY[0x1E69D6250], v62);
  sub_1B67D8F8C();
  swift_allocObject();
  v68 = 1;
  v31 = v66;
  v32 = sub_1B67D8F6C();
  if (v31)
  {
    v33 = v50;
    *v50 = v31;
    v40 = v48;
    *v48 = 0;
    v40[1] = 0;
    *(v33 + 24) = 1;
    v41 = v31;
    v24 = v49;
    v25 = v67;
LABEL_7:
    swift_willThrow();
    return sub_1B64574B0(v24, v64, v65, v25);
  }

  v34 = v32;
  sub_1B64E0CFC();
  v35 = sub_1B67D8F3C();
  v36 = v50;
  v37 = v35;
  sub_1B64DC460();
  v38 = sub_1B67D8F3C();
  v39 = sub_1B67D8E7C();
  if (v39 != (FCRecipeItemVersion | 0x10000))
  {
    v63 = (FCRecipeItemVersion | 0x10000);
    v66 = &v46;
    MEMORY[0x1EEE9AC00](v39);
    *(&v46 - 2) = v37;
    *(&v46 - 1) = v38;
    v43 = v51;
    v44 = v52;
    v45 = v47;
    (*(v51 + 104))(v47, *MEMORY[0x1E69D6188], v52);
    sub_1B67D8F4C();
    (*(v43 + 8))(v45, v44);
    sub_1B67D8EEC();
  }

  *v36 = v34;
  v36[1] = v37;
  v36[2] = v38;
  *(v36 + 24) = 0;
  v42 = v53;
  *v53 = v34;
  v42[1] = v37;
  v42[2] = v38;
}

uint64_t sub_1B64DEF60()
{
  v1 = OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_fileURL;
  v2 = sub_1B67D85FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_logger;
  v4 = sub_1B67D8A9C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1B64DF04C(uint64_t a1)
{
  v2 = sub_1B64E1A34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64DF088(uint64_t a1)
{
  v2 = sub_1B64E1A34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B64DF0C4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B700, &unk_1B6817A18);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64E1A34();
  sub_1B67DA47C();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  sub_1B6413CCC(&qword_1EB94A5E8, &qword_1EB949F40, &qword_1B6810290, MEMORY[0x1E69D6168]);
  sub_1B67DA24C();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
    sub_1B6413CCC(&qword_1EB94AC90, &qword_1EB94A640, &qword_1B6811470, MEMORY[0x1E69D6168]);
    sub_1B67DA24C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B64DF2DC(uint64_t a1)
{
  v2 = sub_1B64E0CFC();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B64DF328(uint64_t a1)
{
  v2 = sub_1B64E0CFC();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B64DF374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B64E0CFC();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1B64DF3D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B64E11A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B64DF400@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B64E14E4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1B64DF448(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B64E0CFC();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B64DF494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B64E0CFC();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B64DF4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B64E0CFC();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

void *sub_1B64DF54C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v30 = a2;
  v27 = a5;
  v28 = a4;
  v32 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v29 = sub_1B67D8E4C();
  v9 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v26 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &unk_1B6815A80;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B470, &unk_1B6815A80);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_1B67D8B1C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6415FF0(a1, v14, &qword_1EB94B470, &unk_1B6815A80);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    (*(v16 + 32))(v18, v14, v15);
    sub_1B64DC1C0();
    sub_1B67D8D9C();
    v21 = v31;
    v22 = sub_1B67D8FEC();
    if (!v21)
    {
      v11 = v22;
    }

    (*(v16 + 8))(v18, v15);
    goto LABEL_10;
  }

  v11 = v30;
  v19 = v31;
  sub_1B6418AB4(v14, &qword_1EB94B470, &unk_1B6815A80);
  sub_1B6415FF0(v32, v8, &qword_1EB94B510, &unk_1B68102C0);
  v20 = v29;
  if ((*(v9 + 48))(v8, 1, v29) != 1)
  {
    v23 = v26;
    (*(v9 + 32))(v26, v8, v20);
    sub_1B64DC1C0();
    sub_1B67D8D9C();
    v24 = sub_1B67D8FBC();
    if (!v19)
    {
      v11 = v24;
    }

    (*(v9 + 8))(v23, v20);
LABEL_10:

    return v11;
  }

  sub_1B6418AB4(v8, &qword_1EB94B510, &unk_1B68102C0);
  sub_1B64DC1C0();
  sub_1B67D8D9C();
  v11 = sub_1B67D8F9C();

  return v11;
}

uint64_t sub_1B64DF97C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    goto LABEL_2;
  }

  v4 = a2;
  v8 = a3;
  v9 = a4;
  sub_1B67DA2FC();
  swift_unknownObjectRetain_n();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v10 + 16);

  if (__OFSUB__(v9 >> 1, v8))
  {
    goto LABEL_25;
  }

  if (v11 != (v9 >> 1) - v8)
  {
LABEL_26:
    swift_unknownObjectRelease();
    a3 = v8;
    a4 = v9;
    a2 = v4;
LABEL_2:
    sub_1B64E0378(a1, a2, a3, a4);
    v7 = v6;
    goto LABEL_9;
  }

  v7 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v7)
  {
    goto LABEL_10;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  v12 = *(v7 + 16);
  if (v12 >= 2)
  {
    v9 = v12 >> 1;
    v8 = v12 + 3;
    v14 = 4;
    do
    {
      if (v14 != v8)
      {
        v15 = *(v7 + 16);
        if (v14 - 4 >= v15)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        if (v8 - 4 >= v15)
        {
          goto LABEL_23;
        }

        a1 = *(v7 + 8 * v14);
        v4 = *(v7 + 8 * v8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1B64BFF84(v7);
        }

        *(v7 + 8 * v14) = v4;

        if ((v8 - 4) >= *(v7 + 16))
        {
          goto LABEL_24;
        }

        *(v7 + 8 * v8) = a1;
      }

      --v8;
      ++v14;
      --v9;
    }

    while (v9);
  }

  return v7;
}

uint64_t sub_1B64DFB24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v6 = sub_1B67D9DFC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = v25 - v12;
  v14 = *(v2 + 24);
  if (!v14)
  {
    goto LABEL_15;
  }

  if (*(v14 + 16))
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v15 = *(v14 + 16);
      if (v15)
      {
        goto LABEL_5;
      }
    }

    else
    {
      result = sub_1B64BFF84(v14);
      v14 = result;
      v15 = *(result + 16);
      if (v15)
      {
LABEL_5:
        v26 = a2;
        v16 = v15 - 1;
        v17 = *(v14 + 8 * v16 + 32);
        *(v14 + 16) = v16;
        *(v2 + 24) = v14;
        v18 = objc_autoreleasePoolPush();
        v19 = a1[2];
        v25[1] = v17;
        sub_1B64DFE38(v2, v17, v19, v5, v13);
        objc_autoreleasePoolPop(v18);
        (*(v7 + 16))(v10, v13, v6);
        v20 = *(v5 - 8);
        v21 = *(v20 + 48);
        if (v21(v10, 1, v5) == 1)
        {
          sub_1B64DFB24(a1, v26);

          v22 = *(v7 + 8);
          v22(v13, v6);
          result = v21(v10, 1, v5);
          if (result != 1)
          {
            return (v22)(v10, v6);
          }
        }

        else
        {
          (*(v7 + 8))(v13, v6);

          v24 = v26;
          (*(v20 + 32))(v26, v10, v5);
          return (*(v20 + 56))(v24, 0, 1, v5);
        }

        return result;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v23 = *(*(v5 - 8) + 56);

  return v23(a2, 1, 1, v5);
}

uint64_t sub_1B64DFE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v28 = a4;
  v36 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  v12 = sub_1B67D8B1C();
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B67D9DFC();
  v26 = *(v15 - 8);
  v27 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v25 - v17;
  v32 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v25[0] = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = a1;

  sub_1B67D8D9C();

  sub_1B64D8C6C();

  sub_1B646D2FC(a2);
  sub_1B67D8DCC();

  if (v34)
  {
    v35[3] = MEMORY[0x1E69E6158];
    v35[4] = MEMORY[0x1E69D62D8];
    v35[0] = v33;
    v35[1] = v34;
    sub_1B67D8C7C();

    __swift_destroy_boxed_opaque_existential_1(v35);
    v21 = sub_1B67D8E4C();
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    v22 = v29;
    sub_1B67D8FDC();
    if (v22)
    {

      sub_1B6418AB4(v11, &qword_1EB94B510, &unk_1B68102C0);
      (*(v30 + 8))(v14, v31);
      (*(v32 + 56))(v18, 1, 1, a3);
LABEL_5:
      (*(v26 + 8))(v18, v27);
      return (*(*(v28 - 8) + 56))(v36, 1, 1);
    }

    sub_1B6418AB4(v11, &qword_1EB94B510, &unk_1B68102C0);
    (*(v30 + 8))(v14, v31);
    v23 = v32;
    if ((*(v32 + 48))(v18, 1, a3) == 1)
    {
      goto LABEL_5;
    }

    v24 = v25[0];
    (*(v23 + 32))(v25[0], v18, a3);

    swift_getAtKeyPath();

    return (*(v23 + 8))(v24, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B64E02EC@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  result = sub_1B64DF54C(*(v1 + 16), *(v1 + 24), *(v1 + 32), v4, v5);
  if (!v2)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v5)
    {
      v7 = v4;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v8 = *(result + 16);
      if (v8 >= v7)
      {
        v8 = v7;
      }

      v9 = 2 * v8;
      if (v7)
      {
        v10 = v9 + 1;
      }

      else
      {
        v10 = 1;
      }

      result = sub_1B64DF97C(result, result + 32, 0, v10);
      *a1 = result;
    }
  }

  return result;
}

void sub_1B64E0378(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B718, &qword_1B6817A38);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1B64E0450()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  if (v1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B67DA04C())
  {
    v19 = v2;
    for (j = 4; ; ++j)
    {
      v5 = j - 4;
      if ((v1 & 0xC000000000000001) == 0)
      {
        break;
      }

      v6 = MEMORY[0x1B8C95180](j - 4, v1);
      v2 = v19;
      v7 = j - 3;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_20;
      }

LABEL_10:
      v20 = v7;
      v21 = objc_autoreleasePoolPush();
      sub_1B67D8D4C();
      v8 = [v6 identifier];
      v9 = sub_1B67D964C();
      v11 = v10;

      if (*(v2 + 16))
      {
        v12 = sub_1B6456E70(v9, v11);
        v14 = v13;

        if (v14)
        {
          v15 = 0;
          v16 = *(*(v2 + 56) + 8 * v12);
          goto LABEL_15;
        }
      }

      else
      {
      }

      v16 = 0;
      v15 = 1;
LABEL_15:
      v17 = v6;
      sub_1B64D8D5C(v17, v16, v15, &v22);
      v18 = v23;
      sub_1B67D8CDC();
      v23 = v18;
      if (v18)
      {

        objc_autoreleasePoolPop(v21);

        return;
      }

      objc_autoreleasePoolPop(v21);

      if (v20 == i)
      {
        return;
      }
    }

    v2 = v19;
    if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    v6 = *(v1 + 8 * j);
    v7 = j - 3;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }
}

uint64_t sub_1B64E0700(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[4];
  v5 = v1[7];
  sub_1B67D8D4C();
  sub_1B64E0DC4(v5, v3, v4);
  if (!v2)
  {
    sub_1B67D8CDC();
  }
}

uint64_t sub_1B64E07C4(uint64_t a1)
{
  sub_1B67D8D7C();
  sub_1B67D8E2C();
}

unint64_t sub_1B64E081C()
{
  result = qword_1EB94B6E8;
  if (!qword_1EB94B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B6E8);
  }

  return result;
}

void sub_1B64E0888(uint64_t a1)
{
  sub_1B67D877C();
  if (v1 <= 0x3F)
  {
    sub_1B64E0A98(319, &qword_1EDB1E608, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B64E0920(uint64_t a1)
{
  sub_1B64E0A98(319, &qword_1EDB1E608, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B67D877C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_1B64E09D0()
{
  result = qword_1EDB225A0[0];
  if (!qword_1EDB225A0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94B6F0, &qword_1B68176A8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB225A0);
  }

  return result;
}

uint64_t sub_1B64E0A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1B64E0A98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1B64E0AEC()
{
  result = qword_1EDB23A40;
  if (!qword_1EDB23A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB23A40);
  }

  return result;
}

unint64_t sub_1B64E0B44()
{
  result = qword_1EDB23A48;
  if (!qword_1EDB23A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB23A48);
  }

  return result;
}

unint64_t sub_1B64E0B9C()
{
  result = qword_1EDB23A60;
  if (!qword_1EDB23A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB23A60);
  }

  return result;
}

unint64_t sub_1B64E0BF4()
{
  result = qword_1EDB23A70[0];
  if (!qword_1EDB23A70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB23A70);
  }

  return result;
}

unint64_t sub_1B64E0C4C()
{
  result = qword_1EDB23A50;
  if (!qword_1EDB23A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB23A50);
  }

  return result;
}

unint64_t sub_1B64E0CA4()
{
  result = qword_1EDB23A88;
  if (!qword_1EDB23A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB23A88);
  }

  return result;
}

unint64_t sub_1B64E0CFC()
{
  result = qword_1EDB23A90[0];
  if (!qword_1EDB23A90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB23A90);
  }

  return result;
}

unint64_t sub_1B64E0D54()
{
  result = qword_1EB958138[0];
  if (!qword_1EB958138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB958138);
  }

  return result;
}

uint64_t sub_1B64E0DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[1] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v26 - v13;
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
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v19 = *(*(v18 - 8) + 56);
  v19(v8, 1, 1, v18);
  v19(v6, 1, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  swift_allocObject();
  sub_1B67D8B3C();
  sub_1B67D8B4C();
  v27 = xmmword_1B68100F0;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  sub_1B67D83FC();
  swift_allocObject();
  sub_1B67D83EC();
  v20 = v28;
  v21 = sub_1B67D83DC();
  if (v20)
  {
  }

  else
  {
    v23 = v21;
    v24 = v22;

    *&v27 = v23;
    *(&v27 + 1) = v24;
    sub_1B67D8DDC();
  }

  return v17;
}

uint64_t sub_1B64E11A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
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
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v16 = *(*(v15 - 8) + 56);
  v16(v5, 1, 1, v15);
  v16(v3, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  swift_allocObject();

  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  swift_allocObject();
  sub_1B67D8B3C();

  sub_1B67D8B4C();
  v18 = xmmword_1B68100F0;
  sub_1B67D8DDC();

  return v14;
}

uint64_t sub_1B64E14E4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B6F8, &qword_1B6817A10);
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 1, 1, v17);
  v18(v14, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v19 = sub_1B67D8B3C();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v21 = *(*(v20 - 8) + 56);
  v21(v10, 1, 1, v20);
  v21(v8, 1, 1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  swift_allocObject();
  sub_1B67D8B3C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64E1A34();
  v22 = v27;
  sub_1B67DA46C();
  if (v22)
  {
  }

  else
  {
    v28 = 0;
    sub_1B6413CCC(&qword_1EB94A618, &qword_1EB949F40, &qword_1B6810290, MEMORY[0x1E69D6170]);
    v23 = v26;
    sub_1B67DA1CC();

    v19 = v29;
    v28 = 1;
    sub_1B6413CCC(&qword_1EB94ACB0, &qword_1EB94A640, &qword_1B6811470, MEMORY[0x1E69D6170]);
    sub_1B67DA1CC();
    (*(v25 + 8))(v4, v23);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v19;
}

unint64_t sub_1B64E1A34()
{
  result = qword_1EB9581C0;
  if (!qword_1EB9581C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9581C0);
  }

  return result;
}

unint64_t sub_1B64E1A88()
{
  result = qword_1EB94B708;
  if (!qword_1EB94B708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B708);
  }

  return result;
}

unint64_t sub_1B64E1ADC()
{
  result = qword_1EB9581C8[0];
  if (!qword_1EB9581C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9581C8);
  }

  return result;
}

uint64_t sub_1B64E1B30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B64E1B98(uint64_t a1)
{
  sub_1B67D8D3C();
  sub_1B67D8CCC();

  if (!v1)
  {
    sub_1B67D8D6C();
    sub_1B67D8DFC();

    sub_1B67D8D3C();
    sub_1B67D8CCC();

    sub_1B67D8D6C();
    sub_1B67D8DFC();
  }

  return result;
}

unint64_t sub_1B64E1CA0()
{
  result = qword_1EB9582D0[0];
  if (!qword_1EB9582D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9582D0);
  }

  return result;
}

unint64_t sub_1B64E1CF8()
{
  result = qword_1EB9583E0[0];
  if (!qword_1EB9583E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9583E0);
  }

  return result;
}

unint64_t sub_1B64E1D50()
{
  result = qword_1EB958570;
  if (!qword_1EB958570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB958570);
  }

  return result;
}

unint64_t sub_1B64E1DA8()
{
  result = qword_1EB958578;
  if (!qword_1EB958578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB958578);
  }

  return result;
}

uint64_t RecipeItemServiceResult.cursor.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_1B67D9DFC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_1B64E1EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1B67D9DFC();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = a6 + *(type metadata accessor for RecipeItemServiceResult(0, a3, a4, a5) + 44);

  return sub_1B64E1F6C(a2, v13);
}

uint64_t sub_1B64E1F6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeItemPruningPolicy(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B64E1FD0(uint64_t a1)
{
  result = sub_1B67D9DFC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RecipeItemPruningPolicy(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B64E2058(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = *(sub_1B67D877C() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  if (v8 <= 0xFA)
  {
    v11 = 250;
  }

  else
  {
    v11 = v8;
  }

  v12 = *(v6 + 64);
  if (!v7)
  {
    ++v12;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v9 + 80) & 0xF8 | 7;
  v14 = v12 + v13;
  if (a2 <= v11)
  {
    goto LABEL_35;
  }

  v15 = v10 + (v14 & ~v13) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v19 < 2)
    {
LABEL_35:
      if (v8 < 0xFA)
      {
        v24 = *(((a1 + v14) & ~v13) + v10);
        if (v24 >= 6)
        {
          return (v24 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v23 = (*(v6 + 48))(a1, v7, v5);
        if (v23 >= 2)
        {
          return v23 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_35;
  }

LABEL_22:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v11 + (v22 | v20) + 1;
}

void sub_1B64E22A0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v11 = 0;
  v12 = *(sub_1B67D877C() - 8);
  v13 = *(v12 + 64);
  if (v13 <= 8)
  {
    v13 = 8;
  }

  if (v10 <= 0xFA)
  {
    v14 = 250;
  }

  else
  {
    v14 = v10;
  }

  if (v9)
  {
    v15 = *(v8 + 64);
  }

  else
  {
    v15 = *(v8 + 64) + 1;
  }

  v16 = *(v12 + 80) & 0xF8 | 7;
  v17 = v13 + ((v15 + v16) & ~v16) + 1;
  if (a3 <= v14)
  {
LABEL_26:
    if (v14 < a2)
    {
      goto LABEL_27;
    }

    goto LABEL_15;
  }

  if (v17 > 3)
  {
    v11 = 1;
    if (v14 >= a2)
    {
      goto LABEL_15;
    }

LABEL_27:
    v20 = ~v14 + a2;
    if (v17 >= 4)
    {
      bzero(a1, v17);
      *a1 = v20;
      v21 = 1;
      if (v11 > 1)
      {
        goto LABEL_29;
      }

LABEL_73:
      if (v11)
      {
        a1[v17] = v21;
      }

      return;
    }

    v21 = (v20 >> (8 * v17)) + 1;
    if (v13 + ((v15 + v16) & ~v16) != -1)
    {
      v25 = v20 & ~(-1 << (8 * v17));
      bzero(a1, v17);
      if (v17 != 3)
      {
        if (v17 == 2)
        {
          *a1 = v25;
          if (v11 <= 1)
          {
            goto LABEL_73;
          }
        }

        else
        {
          *a1 = v20;
          if (v11 <= 1)
          {
            goto LABEL_73;
          }
        }

LABEL_29:
        if (v11 == 2)
        {
          *&a1[v17] = v21;
        }

        else
        {
          *&a1[v17] = v21;
        }

        return;
      }

      *a1 = v25;
      a1[2] = BYTE2(v25);
    }

    if (v11 <= 1)
    {
      goto LABEL_73;
    }

    goto LABEL_29;
  }

  v18 = ((a3 - v14 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
  if (!HIWORD(v18))
  {
    if (v18 < 0x100)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    if (v18 >= 2)
    {
      v11 = v19;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_26;
  }

  v11 = 4;
  if (v14 < a2)
  {
    goto LABEL_27;
  }

LABEL_15:
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v17] = 0;
  }

  else if (v11)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v10 < 0xFA)
  {
    a1 = (&a1[v15 + v16] & ~v16);
    if (a2 <= 0xFA)
    {
      a1[v13] = -a2;
      return;
    }

    v27 = (v13 + 1);
    v28 = -1 << (8 * (v13 + 1));
    if (v27 <= 3)
    {
      v29 = ~v28;
    }

    else
    {
      v29 = -1;
    }

    if (v27)
    {
      v23 = v29 & (a2 - 251);
      if (v27 <= 3)
      {
        v24 = v27;
      }

      else
      {
        v24 = 4;
      }

      bzero(a1, v27);
      if (v24 <= 2)
      {
        if (v24 == 1)
        {
          goto LABEL_45;
        }

        goto LABEL_70;
      }

      goto LABEL_78;
    }
  }

  else if (v10 >= a2)
  {
    v26 = *(v30 + 56);

    v26(a1, a2 + 1, v9, v7);
  }

  else
  {
    if (v15 <= 3)
    {
      v22 = ~(-1 << (8 * v15));
    }

    else
    {
      v22 = -1;
    }

    if (v15)
    {
      v23 = v22 & (~v10 + a2);
      if (v15 <= 3)
      {
        v24 = v15;
      }

      else
      {
        v24 = 4;
      }

      bzero(a1, v15);
      if (v24 <= 2)
      {
        if (v24 == 1)
        {
LABEL_45:
          *a1 = v23;
          return;
        }

LABEL_70:
        *a1 = v23;
        return;
      }

LABEL_78:
      if (v24 == 3)
      {
        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      else
      {
        *a1 = v23;
      }
    }
  }
}

uint64_t sub_1B64E2664(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B64E26B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B64E2708(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1B64E2720(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t dispatch thunk of RecipeItemServiceType.fetchRecipeItems(cursor:controlFlow:recipeItemHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 24) + **(a7 + 24));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1B642694C;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of RecipeItemServiceType.shouldRefresh(cursor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B64D0F34;

  return v9(a1, a2, a3);
}

uint64_t *sub_1B64E29D4()
{
  if (qword_1EDB25A10 != -1)
  {
    swift_once();
  }

  return &qword_1EDB20598;
}

uint64_t RecipeBoxItem.identifier.getter(uint64_t a1)
{
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v3)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t RecipeBoxItem.recipeID.getter()
{

  sub_1B67D8DCC();

  if (v2)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t RecipeBoxItem.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;

  sub_1B67D8DCC();

  v5 = sub_1B67D877C();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B64E2C48@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1B67D8B4C();
  *a2 = result;
  return result;
}

uint64_t sub_1B64E2C74(void *a1, uint64_t *a2)
{

  sub_1B67D8B5C();
}

uint64_t RecipeBoxItem.init(recipeID:dateAdded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v49 = a3;
  v46 = a1;
  v47 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 1, 1, v18);
  v19(v15, 1, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v44 = sub_1B67D8B3C();
  *a4 = v44;
  v19(v17, 1, 1, v18);
  v19(v15, 1, 1, v18);
  swift_allocObject();
  v20 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
  if (qword_1EDB25A10 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDB20598;
  v22 = unk_1EDB205A0;

  v23 = sub_1B6421E80();
  v43 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v20, v21, v22, v23 & 1);
  a4[1] = v43;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v25 = *(v24 - 8);
  v42 = a4;
  v26 = *(v25 + 56);
  v26(v50, 1, 1, v24);
  v26(v10, 1, 1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  swift_allocObject();
  v45 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B8, &unk_1B6812390);
  v27 = v10;
  if (qword_1EDB25A08 != -1)
  {
    swift_once();
  }

  v28 = qword_1EDB20588;
  v29 = unk_1EDB20590;
  v30 = sub_1B67D877C();
  sub_1B6421ED0();

  v31 = sub_1B6421E80();
  v32 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v45, v28, v29, v31 & 1);
  v33 = v42;
  v42[2] = v32;
  v26(v50, 1, 1, v24);
  v26(v27, 1, 1, v24);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  swift_allocObject();
  v33[3] = sub_1B67D8B3C();
  sub_1B67D8B4C();
  v35 = v46;
  v34 = v47;
  v51 = v46;
  v52 = v47;

  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v36 = v48;
  sub_1B67D876C();
  v37 = *(v30 - 8);
  v38 = *(v37 + 56);
  v38(v36, 0, 1, v30);
  sub_1B67D8DDC();

  v51 = v35;
  v52 = v34;

  sub_1B67D8DDC();

  v39 = v49;
  (*(v37 + 16))(v36, v49, v30);
  v38(v36, 0, 1, v30);

  sub_1B67D8DDC();

  return (*(v37 + 8))(v39, v30);
}

uint64_t RecipeBoxItem.fastEntity.getter()
{
  sub_1B67D8B6C();
  CKColumn.projectedValue.getter();
  CKColumn.projectedValue.getter();
  sub_1B67D8B6C();
  sub_1B67D8B8C();
  swift_allocObject();
  return sub_1B67D8BDC();
}

uint64_t sub_1B64E3488()
{
  v1 = 25705;
  v2 = 0x646441657461645FLL;
  if (*v0 != 2)
  {
    v2 = 0x6465696669646F6DLL;
  }

  if (*v0)
  {
    v1 = 0x496570696365725FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B64E3500@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B64E4514(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B64E3528(uint64_t a1)
{
  v2 = sub_1B64E38D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64E3564(uint64_t a1)
{
  v2 = sub_1B64E38D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecipeBoxItem.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B720, &qword_1B6817D18);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v15 = v1[2];
  v16 = v8;
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64E38D4();

  sub_1B67DA47C();
  v18 = v9;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  sub_1B6413CCC(&qword_1EB94A5E8, &qword_1EB949F40, &qword_1B6810290, MEMORY[0x1E69D6168]);
  sub_1B67DA24C();

  if (!v2)
  {
    v11 = v14;
    v12 = v15;
    v18 = v16;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
    sub_1B6413CCC(&qword_1EB94A6E8, &qword_1EB94A6B0, &qword_1B6812380, &protocol conformance descriptor for CKColumn<A>);
    sub_1B67DA24C();
    v18 = v12;
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B8, &unk_1B6812390);
    sub_1B6413CCC(&qword_1EB94A5F0, &qword_1EB94A5B8, &unk_1B6812390, &protocol conformance descriptor for CKColumn<A>);
    sub_1B67DA24C();
    v18 = v11;
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
    sub_1B6413CCC(&qword_1EB94A608, &qword_1EB949FF8, &qword_1B68123B0, MEMORY[0x1E69D6168]);
    sub_1B67DA24C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1B64E38D4()
{
  result = qword_1EB958600[0];
  if (!qword_1EB958600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB958600);
  }

  return result;
}

uint64_t RecipeBoxItem.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a1;
  v38 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B728, &qword_1B6817D20);
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v49 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v16 = *(*(v15 - 8) + 56);
  v16(v14, 1, 1, v15);
  v16(v12, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v45 = sub_1B67D8B3C();
  v16(v14, 1, 1, v15);
  v16(v12, 1, 1, v15);
  swift_allocObject();
  v17 = sub_1B67D8DBC();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
  if (qword_1EDB25A10 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDB20598;
  v20 = unk_1EDB205A0;

  v21 = sub_1B6421E80();
  v39 = v18;
  v44 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v17, v19, v20, v21 & 1);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v23 = *(*(v22 - 8) + 56);
  v23(v8, 1, 1, v22);
  v23(v49, 1, 1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  swift_allocObject();
  v48 = sub_1B67D8DBC();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B8, &unk_1B6812390);
  if (qword_1EDB25A08 != -1)
  {
    swift_once();
  }

  v26 = qword_1EDB20588;
  v25 = unk_1EDB20590;
  sub_1B67D877C();
  sub_1B6421ED0();

  v27 = sub_1B6421E80();
  v48 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v48, v26, v25, v27 & 1);
  v23(v8, 1, 1, v22);
  v23(v49, 1, 1, v22);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  swift_allocObject();
  sub_1B67D8B3C();
  v28 = v47;
  __swift_project_boxed_opaque_existential_1(v47, v47[3]);
  sub_1B64E38D4();
  v29 = v46;
  v30 = v43;
  sub_1B67DA46C();
  if (!v30)
  {
    v49 = v24;
    v50 = 0;
    sub_1B6413CCC(&qword_1EB94A618, &qword_1EB949F40, &qword_1B6810290, MEMORY[0x1E69D6170]);
    v31 = v42;
    sub_1B67DA1CC();

    v32 = v51;
    v50 = 1;
    sub_1B6413CCC(&qword_1EB94A708, &qword_1EB94A6B0, &qword_1B6812380, &protocol conformance descriptor for CKColumn<A>);
    sub_1B67DA1CC();

    v33 = v51;
    v50 = 2;
    sub_1B6413CCC(&qword_1EB94A620, &qword_1EB94A5B8, &unk_1B6812390, &protocol conformance descriptor for CKColumn<A>);
    sub_1B67DA1CC();

    v48 = v51;
    v50 = 3;
    sub_1B6413CCC(&qword_1EB94A638, &qword_1EB949FF8, &qword_1B68123B0, MEMORY[0x1E69D6170]);
    sub_1B67DA1CC();
    (*(v41 + 8))(v29, v31);

    v35 = v51;
    v36 = v38;
    *v38 = v32;
    v36[1] = v33;
    v36[2] = v48;
    v36[3] = v35;
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_1B64E41EC(uint64_t a1)
{
  v2 = sub_1B6417710();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B64E4238(uint64_t a1)
{
  v2 = sub_1B6417710();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B64E4284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6417710();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1B64E42E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6417710();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B64E4334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6417710();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B64E4388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B6417710();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

unint64_t sub_1B64E4410()
{
  result = qword_1EB958710[0];
  if (!qword_1EB958710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB958710);
  }

  return result;
}

unint64_t sub_1B64E4468()
{
  result = qword_1EB958820;
  if (!qword_1EB958820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB958820);
  }

  return result;
}

unint64_t sub_1B64E44C0()
{
  result = qword_1EB958828[0];
  if (!qword_1EB958828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB958828);
  }

  return result;
}

uint64_t sub_1B64E4514(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496570696365725FLL && a2 == 0xE900000000000044 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646441657461645FLL && a2 == 0xEA00000000006465 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441)
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

uint64_t sub_1B64E4684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v54 = a1;
  v55 = a2;
  v9 = sub_1B67D87BC();
  v48 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SmarterFetchRequest.DataType(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v56 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_opt_self();
  v15 = [v14 sharedAccount];
  v16 = [v15 currentStoreFrontID];

  if (v16)
  {
    v53 = a4;
    v17 = sub_1B67D964C();
    v51 = v18;
    v52 = v17;

    v19 = *(v6 + 80);
    v20 = *(v6 + 88);
    __swift_project_boxed_opaque_existential_1((v6 + 56), v19);
    v21 = (*(v20 + 8))(v19, v20);
    if (v5)
    {

      v49 = 0xF000000000000000;
      v50 = 0;
    }

    else
    {
      v49 = v22;
      v50 = v21;
    }

    sub_1B64E4EC4(v54, v56);
    if (a3)
    {
      v54 = a3;
    }

    else
    {
      sub_1B67D87AC();
      v25 = sub_1B67D879C();
      v54 = v26;
      v55 = v25;
      (*(v48 + 8))(v11, v9);
    }

    v27 = [v14 sharedAccount];
    v28 = [v27 preferredLanguageCodes];

    v45 = v28;
    v48 = sub_1B67D97BC();
    v29 = [*(v6 + 24) cachedSubscription];
    v47 = [v29 subscriptionState];

    v30 = *(v6 + 40);
    v31 = [v30 rankedAllSubscribedTagIDs];
    v46 = sub_1B67D97BC();
    v32 = [v30 autoFavoriteTagIDs];
    v44 = sub_1B67D9AFC();
    v33 = [v30 mutedTagIDs];
    v43 = sub_1B67D9AFC();
    v34 = [*(v6 + 32) purchasedTagIDs];
    v42 = sub_1B67D9AFC();
    v35 = [*(v6 + 48) requiredArticleKeys];
    v36 = sub_1B67D97BC();
    v37 = [*(v6 + 16) possiblyUnfetchedAppConfiguration];
    result = [v37 respondsToSelector_];
    if (result)
    {

      v38 = [v37 smarterFetchStrategy];
      swift_unknownObjectRelease();
      if (v38)
      {
        v39 = sub_1B67D964C();
        v41 = v40;
      }

      else
      {
        v39 = 0;
        v41 = 0;
      }

      return sub_1B650C918(v56, v55, v54, v52, v51, v48, v47, v46, v53, v44, v43, v42, v36, v39, v41, v50, v49);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1B64E4E70();
    swift_allocError();
    *v23 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B64E4B20(uint64_t a1)
{
  v2 = type metadata accessor for SmarterFetchRequest.DataType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B64E4B7C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1B64E4C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v17 = a4;
  v10 = type metadata accessor for SmarterFetchRequest.DataType(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA90, &unk_1B68180C0) + 48);
  v14 = sub_1B67D877C();
  (*(*(v14 - 8) + 16))(v12, a1, v14);
  sub_1B6403FD4(a2, &v12[v13]);
  swift_storeEnumTagMultiPayload();
  sub_1B64E4684(v12, a3, v17, a6);
  return sub_1B64E4B20(v12);
}

uint64_t sub_1B64E4DB0@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for SmarterFetchRequest.DataType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1B64E4684(v5, 0, 0, a2);
  return sub_1B64E4B20(v5);
}

unint64_t sub_1B64E4E70()
{
  result = qword_1EB9588B0;
  if (!qword_1EB9588B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9588B0);
  }

  return result;
}

uint64_t sub_1B64E4EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmarterFetchRequest.DataType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B64E4F3C()
{
  result = qword_1EB9588B8[0];
  if (!qword_1EB9588B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9588B8);
  }

  return result;
}

id sub_1B64E504C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1B67D877C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1 + *a3, v5);
  v9 = sub_1B67D86DC();
  (*(v6 + 8))(v8, v5);

  return v9;
}

uint64_t sub_1B64E5164@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1B67D877C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id ItemExposure.__allocating_init(itemID:firstExposedAt:lastExposedAt:maxExposedVersion:maxExposedVersionFirstExposedAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = objc_allocWithZone(v7);
  v14 = &v13[OBJC_IVAR___FCItemExposure_itemID];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = OBJC_IVAR___FCItemExposure_firstExposedAt;
  v16 = sub_1B67D877C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v18(&v13[v15], a3, v16);
  v18(&v13[OBJC_IVAR___FCItemExposure_lastExposedAt], a4, v16);
  v18(&v13[OBJC_IVAR___FCItemExposure_maxExposedVersionFirstExposedAt], a6, v16);
  *&v13[OBJC_IVAR___FCItemExposure_maxExposedVersion] = a5;
  v23.receiver = v13;
  v23.super_class = v7;
  v19 = objc_msgSendSuper2(&v23, sel_init);
  v20 = *(v17 + 8);
  v20(a6, v16);
  v20(a4, v16);
  v20(a3, v16);
  return v19;
}

id ItemExposure.init(itemID:firstExposedAt:lastExposedAt:maxExposedVersion:maxExposedVersionFirstExposedAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v14 = &v7[OBJC_IVAR___FCItemExposure_itemID];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = OBJC_IVAR___FCItemExposure_firstExposedAt;
  v16 = sub_1B67D877C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v18(&v7[v15], a3, v16);
  v18(&v7[OBJC_IVAR___FCItemExposure_lastExposedAt], a4, v16);
  v18(&v7[OBJC_IVAR___FCItemExposure_maxExposedVersionFirstExposedAt], a6, v16);
  *&v7[OBJC_IVAR___FCItemExposure_maxExposedVersion] = a5;
  v23.receiver = v7;
  v23.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v23, sel_init);
  v20 = *(v17 + 8);
  v20(a6, v16);
  v20(a4, v16);
  v20(a3, v16);
  return v19;
}

id ItemExposure.__allocating_init(itemID:exposedAt:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___FCItemExposure_itemID];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = OBJC_IVAR___FCItemExposure_firstExposedAt;
  v12 = sub_1B67D877C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v14(&v9[v11], a3, v12);
  v14(&v9[OBJC_IVAR___FCItemExposure_lastExposedAt], a3, v12);
  *&v9[OBJC_IVAR___FCItemExposure_maxExposedVersion] = a4;
  v14(&v9[OBJC_IVAR___FCItemExposure_maxExposedVersionFirstExposedAt], a3, v12);
  v17.receiver = v9;
  v17.super_class = v4;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v13 + 8))(a3, v12);
  return v15;
}

id ItemExposure.init(itemID:exposedAt:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR___FCItemExposure_itemID];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = OBJC_IVAR___FCItemExposure_firstExposedAt;
  v12 = sub_1B67D877C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v14(&v4[v11], a3, v12);
  v14(&v4[OBJC_IVAR___FCItemExposure_lastExposedAt], a3, v12);
  *&v4[OBJC_IVAR___FCItemExposure_maxExposedVersion] = a4;
  v14(&v4[OBJC_IVAR___FCItemExposure_maxExposedVersionFirstExposedAt], a3, v12);
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v13 + 8))(a3, v12);
  return v15;
}

uint64_t ItemExposure.description.getter()
{
  ItemExposure.shortDescription.getter(v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v0 = sub_1B67D897C();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}

uint64_t ItemExposure.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A840, &unk_1B6813220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B6818210;
  *(inited + 32) = 0x44496D657469;
  *(inited + 40) = 0xE600000000000000;
  v5 = *(v2 + OBJC_IVAR___FCItemExposure_itemID + 8);
  v6 = MEMORY[0x1E69E6158];
  *(inited + 48) = *(v2 + OBJC_IVAR___FCItemExposure_itemID);
  *(inited + 56) = v5;
  *(inited + 72) = v6;
  strcpy((inited + 80), "firstExposedAt");
  *(inited + 95) = -18;
  v7 = OBJC_IVAR___FCItemExposure_firstExposedAt;
  v8 = sub_1B67D877C();
  *(inited + 120) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 96));
  v10 = *(*(v8 - 8) + 16);
  v10(boxed_opaque_existential_0, v2 + v7, v8);
  strcpy((inited + 128), "lastExposedAt");
  *(inited + 142) = -4864;
  v11 = OBJC_IVAR___FCItemExposure_lastExposedAt;
  *(inited + 168) = v8;
  v12 = __swift_allocate_boxed_opaque_existential_0((inited + 144));
  v10(v12, v2 + v11, v8);
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = 0x80000001B6828440;
  v13 = MEMORY[0x1E69E6530];
  *(inited + 192) = *(v2 + OBJC_IVAR___FCItemExposure_maxExposedVersion);
  *(inited + 216) = v13;
  *(inited + 224) = 0xD00000000000001FLL;
  *(inited + 232) = 0x80000001B6828460;
  v14 = OBJC_IVAR___FCItemExposure_maxExposedVersionFirstExposedAt;
  *(inited + 264) = v8;
  v15 = __swift_allocate_boxed_opaque_existential_0((inited + 240));
  v10(v15, v2 + v14, v8);

  sub_1B6482328(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A848, &qword_1B6812AB0);
  swift_arrayDestroy();
  a1[3] = sub_1B67D895C();
  a1[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_1B67D894C();
}

uint64_t ItemExposure.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1B6415FF0(a1, v6, &qword_1EB94B738, &unk_1B6819580);
  if (!v7)
  {
    sub_1B64E6418(v6);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  v3 = _s8NewsCore12ItemExposureC2eeoiySbAC_ACtFZ_0(v1, v5);

  return v3 & 1;
}

uint64_t ItemExposure.hash.getter()
{
  sub_1B67DA42C();
  sub_1B67D967C();
  sub_1B67D877C();
  sub_1B64E6594(&qword_1EB94B740, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1B67D95DC();
  sub_1B67D95DC();
  MEMORY[0x1B8C95640](*(v0 + OBJC_IVAR___FCItemExposure_maxExposedVersion));
  sub_1B67D95DC();
  return sub_1B67DA40C();
}

id ItemExposure.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ItemExposure.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ItemExposure.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___FCItemExposure_itemID);

  return v1;
}

uint64_t sub_1B64E63B4()
{
  v1 = *(*v0 + OBJC_IVAR___FCItemExposure_itemID);

  return v1;
}

uint64_t sub_1B64E6418(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B738, &unk_1B6819580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s8NewsCore12ItemExposureC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR___FCItemExposure_itemID) == *(a2 + OBJC_IVAR___FCItemExposure_itemID) && *(a1 + OBJC_IVAR___FCItemExposure_itemID + 8) == *(a2 + OBJC_IVAR___FCItemExposure_itemID + 8);
  if (!v4 && (sub_1B67DA2DC() & 1) == 0 || (sub_1B67D873C() & 1) == 0 || (sub_1B67D873C() & 1) == 0 || *(a1 + OBJC_IVAR___FCItemExposure_maxExposedVersion) != *(a2 + OBJC_IVAR___FCItemExposure_maxExposedVersion))
  {
    return 0;
  }

  return sub_1B67D873C();
}

uint64_t sub_1B64E6594(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ItemExposure(uint64_t a1)
{
  result = qword_1EDB26510;
  if (!qword_1EDB26510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B64E6630(uint64_t a1)
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

uint64_t *sub_1B64E6720()
{
  if (qword_1EDB24C00 != -1)
  {
    swift_once();
  }

  return &qword_1EDB20558;
}

uint64_t RecipeHistoryItem.identifier.getter(uint64_t a1)
{
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v3)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t RecipeHistoryItem.recipeID.getter()
{

  sub_1B67D8DCC();

  if (v2)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t RecipeHistoryItem.lastVisitedDate.getter@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FA0, &qword_1B68182C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;

  sub_1B67D8DCC();

  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1B6418AB4(v8, &qword_1EB949FA0, &qword_1B68182C0);
    v9 = sub_1B67D877C();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    sub_1B6403FD4(v8, v5);
    sub_1B6418AB4(v8, &qword_1EB949FA0, &qword_1B68182C0);
    sub_1B67D9DEC();
    return sub_1B6418AB4(v5, &unk_1EB94A100, &qword_1B680FD50);
  }
}

uint64_t RecipeHistoryItem.lastSeenDate.getter@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FA0, &qword_1B68182C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;

  sub_1B67D8DCC();

  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1B6418AB4(v8, &qword_1EB949FA0, &qword_1B68182C0);
    v9 = sub_1B67D877C();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    sub_1B6403FD4(v8, v5);
    sub_1B6418AB4(v8, &qword_1EB949FA0, &qword_1B68182C0);
    sub_1B67D9DEC();
    return sub_1B6418AB4(v5, &unk_1EB94A100, &qword_1B680FD50);
  }
}

uint64_t sub_1B64E6C74(void *a1, uint64_t *a2)
{

  sub_1B67D8B5C();
}

uint64_t RecipeHistoryItem.init(recipeID:lastVisitedDate:lastSeenDate:lastModifiedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v76 = a4;
  v77 = a3;
  v69 = a1;
  v70 = a2;
  v78 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FA0, &qword_1B68182C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v74 = &v66 - v8;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v73 = *(v82 - 8);
  v9 = MEMORY[0x1EEE9AC00](v82);
  v71 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v66 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v68 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v66 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB0, &unk_1B6810270);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v79 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v66 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v66 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v28 = *(*(v27 - 8) + 56);
  v28(v26, 1, 1, v27);
  v28(v24, 1, 1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v81 = sub_1B67D8B3C();
  v28(v26, 1, 1, v27);
  v28(v24, 1, 1, v27);
  swift_allocObject();
  v29 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
  if (qword_1EDB24C00 != -1)
  {
    swift_once();
  }

  v75 = a5;
  v30 = qword_1EDB20558;
  v31 = unk_1EDB20560;

  v32 = sub_1B6421E80();
  v80 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v29, v30, v31, v32 & 1);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB8, &qword_1B6810298);
  v34 = *(*(v33 - 8) + 56);
  v34(v20, 1, 1, v33);
  v34(v79, 1, 1, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC0, &qword_1B68102A0);
  swift_allocObject();
  v35 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B750, &unk_1B68182C8);
  if (qword_1EDB24C08 != -1)
  {
    swift_once();
  }

  v36 = qword_1EDB20568;
  v37 = unk_1EDB20570;
  sub_1B6416C84();

  v38 = sub_1B6421E80();
  v66 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v35, v36, v37, v38 & 1);
  v34(v20, 1, 1, v33);
  v34(v79, 1, 1, v33);
  swift_allocObject();
  v39 = sub_1B67D8DBC();
  if (qword_1EDB24C10 != -1)
  {
    swift_once();
  }

  v40 = qword_1EDB20578;
  v41 = unk_1EDB20580;

  v42 = v82;
  v43 = sub_1B6421E80();
  v79 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v39, v40, v41, v43 & 1);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v45 = *(*(v44 - 8) + 56);
  v45(v67, 1, 1, v44);
  v45(v68, 1, 1, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  swift_allocObject();
  v46 = sub_1B67D8B3C();
  sub_1B67D8B4C();
  v48 = v69;
  v47 = v70;
  v83 = v69;
  v84 = v70;

  sub_1B67D8DDC();

  v83 = v48;
  v84 = v47;

  sub_1B67D8DDC();

  v70 = v46;
  sub_1B67D8B4C();
  v49 = v75;
  v50 = v71;
  sub_1B6403FD4(v75, v71);
  v51 = sub_1B67D877C();
  v52 = *(v51 - 8);
  v53 = *(v52 + 48);
  v54 = v53(v50, 1, v51);
  v55 = v42;
  v56 = v72;
  if (v54 == 1)
  {
    sub_1B67D876C();
    if (v53(v50, 1, v51) != 1)
    {
      sub_1B6418AB4(v50, &unk_1EB94A100, &qword_1B680FD50);
    }
  }

  else
  {
    (*(v52 + 32))(v72, v50, v51);
  }

  (*(v52 + 56))(v56, 0, 1, v51);
  sub_1B67D8DDC();

  v57 = v66;
  v58 = v77;
  v59 = v74;
  sub_1B6403FD4(v77, v74);
  v60 = *(v73 + 56);
  v60(v59, 0, 1, v55);

  sub_1B67D8DDC();

  v61 = v79;
  v62 = v76;
  sub_1B6403FD4(v76, v59);
  v60(v59, 0, 1, v55);

  sub_1B67D8DDC();

  sub_1B6418AB4(v49, &unk_1EB94A100, &qword_1B680FD50);
  sub_1B6418AB4(v62, &unk_1EB94A100, &qword_1B680FD50);
  result = sub_1B6418AB4(v58, &unk_1EB94A100, &qword_1B680FD50);
  v64 = v78;
  v65 = v80;
  *v78 = v81;
  v64[1] = v65;
  v64[2] = v57;
  v64[3] = v61;
  v64[4] = v70;
  return result;
}

uint64_t RecipeHistoryItem.init(recipeID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v58 = a1;
  v59 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v62 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v65 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FA0, &qword_1B68182C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v60 = &v53 - v6;
  v7 = sub_1B67D877C();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v57 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB0, &unk_1B6810270);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v53 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v53 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v25 = *(*(v24 - 8) + 56);
  v25(v23, 1, 1, v24);
  v25(v21, 1, 1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v55 = sub_1B67D8B3C();
  *a3 = v55;
  v25(v23, 1, 1, v24);
  v25(v21, 1, 1, v24);
  swift_allocObject();
  v26 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
  if (qword_1EDB24C00 != -1)
  {
    swift_once();
  }

  v27 = qword_1EDB20558;
  v28 = unk_1EDB20560;

  v29 = sub_1B6421E80();
  v54 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v26, v27, v28, v29 & 1);
  a3[1] = v54;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB8, &qword_1B6810298);
  v31 = *(*(v30 - 8) + 56);
  v31(v67, 1, 1, v30);
  v31(v16, 1, 1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC0, &qword_1B68102A0);
  swift_allocObject();
  v32 = sub_1B67D8DBC();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B750, &unk_1B68182C8);
  if (qword_1EDB24C08 != -1)
  {
    swift_once();
  }

  v34 = qword_1EDB20568;
  v33 = unk_1EDB20570;
  sub_1B6416C84();

  v35 = sub_1B6421E80();
  a3[2] = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v32, v34, v33, v35 & 1);
  v31(v67, 1, 1, v30);
  v31(v16, 1, 1, v30);
  swift_allocObject();
  v36 = sub_1B67D8DBC();
  v37 = a3;
  if (qword_1EDB24C10 != -1)
  {
    swift_once();
  }

  v38 = qword_1EDB20578;
  v39 = unk_1EDB20580;

  v40 = v68;
  v41 = sub_1B6421E80();
  v37[3] = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v36, v38, v39, v41 & 1);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v43 = *(*(v42 - 8) + 56);
  v43(v56, 1, 1, v42);
  v43(v57, 1, 1, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  swift_allocObject();
  v37[4] = sub_1B67D8B3C();
  sub_1B67D8B4C();
  v45 = v58;
  v44 = v59;
  v69 = v58;
  v70 = v59;

  sub_1B67D8DDC();

  v69 = v45;
  v70 = v44;

  sub_1B67D8DDC();

  v46 = v61;
  sub_1B67D876C();
  v47 = *(v62 + 56);
  v48 = v60;
  v47(v60, 1, 1, v40);

  sub_1B67D8DDC();

  v47(v48, 1, 1, v40);

  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v50 = v63;
  v49 = v64;
  v51 = v65;
  (*(v63 + 16))(v65, v46, v64);
  (*(v50 + 56))(v51, 0, 1, v49);
  sub_1B67D8DDC();

  return (*(v50 + 8))(v46, v49);
}

uint64_t RecipeHistoryItem.fastEntity.getter()
{
  sub_1B67D8B6C();
  CKColumn.projectedValue.getter();
  CKColumn.projectedValue.getter();
  CKColumn.projectedValue.getter();
  sub_1B67D8B6C();
  sub_1B67D8B8C();
  swift_allocObject();
  return sub_1B67D8BCC();
}

unint64_t sub_1B64E8168()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000010;
  v4 = 0x6565537473616C5FLL;
  if (v1 != 3)
  {
    v4 = 0x6465696669646F6DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x496570696365725FLL;
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

uint64_t sub_1B64E8210@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B64E9490(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B64E8238(uint64_t a1)
{
  v2 = sub_1B64E8630();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64E8274(uint64_t a1)
{
  v2 = sub_1B64E8630();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecipeHistoryItem.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B758, &qword_1B68182D8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v17 = v1[2];
  v18 = v8;
  v15 = v1[4];
  v16 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64E8630();

  sub_1B67DA47C();
  v20 = v9;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  sub_1B6413CCC(&qword_1EB94A5E8, &qword_1EB949F40, &qword_1B6810290, MEMORY[0x1E69D6168]);
  sub_1B67DA24C();
  if (v2)
  {
  }

  else
  {
    v12 = v16;
    v11 = v17;

    v20 = v18;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
    sub_1B6413CCC(&qword_1EB94A6E8, &qword_1EB94A6B0, &qword_1B6812380, &protocol conformance descriptor for CKColumn<A>);
    sub_1B67DA24C();
    v20 = v11;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B750, &unk_1B68182C8);
    sub_1B6413CCC(&qword_1EB94B760, &qword_1EB94B750, &unk_1B68182C8, &protocol conformance descriptor for CKColumn<A>);
    sub_1B67DA24C();
    v20 = v12;
    v19 = 3;
    sub_1B67DA24C();
    v20 = v15;
    v19 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
    sub_1B6413CCC(&qword_1EB94A608, &qword_1EB949FF8, &qword_1B68123B0, MEMORY[0x1E69D6168]);
    sub_1B67DA24C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1B64E8630()
{
  result = qword_1EB958B48[0];
  if (!qword_1EB958B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB958B48);
  }

  return result;
}

uint64_t RecipeHistoryItem.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B768, &qword_1B68182E0);
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB0, &unk_1B6810270);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v52 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v21 = *(*(v20 - 8) + 56);
  v21(v19, 1, 1, v20);
  v21(v17, 1, 1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v67 = sub_1B67D8B3C();
  v21(v19, 1, 1, v20);
  v21(v17, 1, 1, v20);
  swift_allocObject();
  v22 = sub_1B67D8DBC();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
  if (qword_1EDB24C00 != -1)
  {
    swift_once();
  }

  v63 = a1;
  v24 = qword_1EDB20558;
  v25 = unk_1EDB20560;

  v26 = sub_1B6421E80();
  v54 = v23;
  v66 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v22, v24, v25, v26 & 1);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB8, &qword_1B6810298);
  v28 = *(*(v27 - 8) + 56);
  v28(v68, 1, 1, v27);
  v28(v12, 1, 1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC0, &qword_1B68102A0);
  swift_allocObject();
  v64 = sub_1B67D8DBC();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B750, &unk_1B68182C8);
  v29 = v12;
  if (qword_1EDB24C08 != -1)
  {
    swift_once();
  }

  v30 = qword_1EDB20568;
  v31 = unk_1EDB20570;

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  sub_1B6416C84();
  v58 = v32;
  v33 = sub_1B6421E80();
  v64 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v64, v30, v31, v33 & 1);
  v28(v68, 1, 1, v27);
  v28(v29, 1, 1, v27);
  swift_allocObject();
  v34 = sub_1B67D8DBC();
  if (qword_1EDB24C10 != -1)
  {
    swift_once();
  }

  v36 = qword_1EDB20578;
  v35 = unk_1EDB20580;

  v37 = sub_1B6421E80();
  CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v34, v36, v35, v37 & 1);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v39 = *(*(v38 - 8) + 56);
  v39(v59, 1, 1, v38);
  v39(v60, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  swift_allocObject();
  sub_1B67D8B3C();
  v40 = v63;
  __swift_project_boxed_opaque_existential_1(v63, v63[3]);
  sub_1B64E8630();
  v41 = v61;
  v42 = v62;
  sub_1B67DA46C();
  if (!v41)
  {
    v69 = 0;
    sub_1B6413CCC(&qword_1EB94A618, &qword_1EB949F40, &qword_1B6810290, MEMORY[0x1E69D6170]);
    v43 = v57;
    sub_1B67DA1CC();

    v44 = v70;
    v69 = 1;
    sub_1B6413CCC(&qword_1EB94A708, &qword_1EB94A6B0, &qword_1B6812380, &protocol conformance descriptor for CKColumn<A>);
    sub_1B67DA1CC();
    v67 = v44;

    v66 = v70;
    v69 = 2;
    v68 = sub_1B6413CCC(&qword_1EB94B770, &qword_1EB94B750, &unk_1B68182C8, &protocol conformance descriptor for CKColumn<A>);
    sub_1B67DA1CC();

    v64 = v70;
    v69 = 3;
    sub_1B67DA1CC();

    v46 = v70;
    v69 = 4;
    sub_1B6413CCC(&qword_1EB94A638, &qword_1EB949FF8, &qword_1B68123B0, MEMORY[0x1E69D6170]);
    sub_1B67DA1CC();
    (*(v56 + 8))(v42, v43);
    v47 = v67;

    v48 = v47;
    v49 = v70;
    v50 = v53;
    v51 = v66;
    *v53 = v48;
    v50[1] = v51;
    v50[2] = v64;
    v50[3] = v46;
    v50[4] = v49;
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_1B64E9194(uint64_t a1)
{
  v2 = sub_1B6413B38();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B64E91E0(uint64_t a1)
{
  v2 = sub_1B6413B38();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B64E922C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6413B38();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1B64E9290(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6413B38();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B64E92DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6413B38();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B64E9330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B6413B38();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

BOOL sub_1B64E93A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v10 = v2;
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = v3;
  return (_s8NewsCore17RecipeHistoryItemV1loiySbAC_ACtFZ_0(v7, v9) & 1) == 0;
}

BOOL sub_1B64E93F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v10 = v2;
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = v3;
  return (_s8NewsCore17RecipeHistoryItemV1loiySbAC_ACtFZ_0(v9, v7) & 1) == 0;
}

uint64_t sub_1B64E9440(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v10 = v2;
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = v3;
  return _s8NewsCore17RecipeHistoryItemV1loiySbAC_ACtFZ_0(v7, v9) & 1;
}

uint64_t sub_1B64E9490(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496570696365725FLL && a2 == 0xE900000000000044 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B682A030 == a2 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6565537473616C5FLL && a2 == 0xED0000657461446ELL || (sub_1B67DA2DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B67DA2DC();

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

uint64_t _s8NewsCore17RecipeHistoryItemV1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v78 = sub_1B67D877C();
  v74 = *(v78 - 8);
  v4 = MEMORY[0x1EEE9AC00](v78);
  v73 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v72 = v64 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v69 = v64 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v68 = v64 - v10;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B778, &unk_1B68186F0);
  MEMORY[0x1EEE9AC00](v75);
  v12 = v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FA0, &qword_1B68182C0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v70 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v65 = v64 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v64 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v64 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v71 = v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v67 = v64 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = v64 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = v64 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = v64 - v35;
  v64[1] = *(a1 + 24);
  v66 = *(a2 + 24);

  sub_1B67D8DCC();

  v76 = *(v24 + 48);
  v77 = v24 + 48;
  if (v76(v22, 1, v23))
  {
    sub_1B6418AB4(v22, &qword_1EB949FA0, &qword_1B68182C0);
    v37 = v74;
    (*(v74 + 56))(v36, 1, 1, v78);
  }

  else
  {
    v37 = v74;
    sub_1B6403FD4(v22, v34);
    sub_1B6418AB4(v22, &qword_1EB949FA0, &qword_1B68182C0);
    sub_1B67D9DEC();
    sub_1B6418AB4(v34, &unk_1EB94A100, &qword_1B680FD50);
  }

  sub_1B67D8DCC();

  v38 = v76(v20, 1, v23);
  v64[0] = v34;
  if (v38)
  {
    sub_1B6418AB4(v20, &qword_1EB949FA0, &qword_1B68182C0);
    v39 = v78;
    (*(v37 + 56))(v31, 1, 1, v78);
  }

  else
  {
    sub_1B6403FD4(v20, v34);
    sub_1B6418AB4(v20, &qword_1EB949FA0, &qword_1B68182C0);
    sub_1B67D9DEC();
    sub_1B6418AB4(v34, &unk_1EB94A100, &qword_1B680FD50);
    v39 = v78;
  }

  v40 = *(v75 + 48);
  sub_1B6404758(v36, v12);
  sub_1B6404758(v31, &v12[v40]);
  v41 = *(v37 + 48);
  v42 = v41(v12, 1, v39);
  v43 = v41(&v12[v40], 1, v39);
  if (v42 == 1)
  {
    if (v43 == 1)
    {

      v44 = v65;
      sub_1B67D8DCC();

      if (v76(v44, 1, v23))
      {
        v45 = v23;
        sub_1B6418AB4(v44, &qword_1EB949FA0, &qword_1B68182C0);
        v46 = v67;
        (*(v37 + 56))(v67, 1, 1, v39);
        v48 = v72;
        v47 = v73;
        v50 = v70;
        v49 = v71;
      }

      else
      {
        v57 = v64[0];
        sub_1B6403FD4(v44, v64[0]);
        sub_1B6418AB4(v44, &qword_1EB949FA0, &qword_1B68182C0);
        v58 = v67;
        v45 = v23;
        sub_1B67D9DEC();
        v59 = v57;
        v46 = v58;
        sub_1B6418AB4(v59, &unk_1EB94A100, &qword_1B680FD50);
        v60 = v41(v58, 1, v39);
        v48 = v72;
        v47 = v73;
        v50 = v70;
        v49 = v71;
        if (v60 != 1)
        {
          (*(v37 + 32))(v72, v46, v39);
          goto LABEL_19;
        }
      }

      sub_1B67D86AC();
      if (v41(v46, 1, v39) != 1)
      {
        sub_1B6418AB4(v46, &unk_1EB94A100, &qword_1B680FD50);
      }

LABEL_19:

      sub_1B67D8DCC();

      if (v76(v50, 1, v45))
      {
        sub_1B6418AB4(v50, &qword_1EB949FA0, &qword_1B68182C0);
        (*(v37 + 56))(v49, 1, 1, v39);
      }

      else
      {
        v61 = v64[0];
        sub_1B6403FD4(v50, v64[0]);
        sub_1B6418AB4(v50, &qword_1EB949FA0, &qword_1B68182C0);
        sub_1B67D9DEC();
        sub_1B6418AB4(v61, &unk_1EB94A100, &qword_1B680FD50);
        if (v41(v49, 1, v39) != 1)
        {
          (*(v37 + 32))(v47, v49, v39);
LABEL_25:
          v51 = sub_1B67D86FC();
          v62 = *(v37 + 8);
          v62(v47, v39);
          v62(v48, v39);
          return v51 & 1;
        }
      }

      sub_1B67D86AC();
      if (v41(v49, 1, v39) != 1)
      {
        sub_1B6418AB4(v49, &unk_1EB94A100, &qword_1B680FD50);
      }

      goto LABEL_25;
    }

    sub_1B6418AB4(&v12[v40], &unk_1EB94A100, &qword_1B680FD50);
    v51 = 0;
  }

  else if (v43 == 1)
  {
    (*(v37 + 8))(v12, v39);
    v51 = 1;
  }

  else
  {
    v52 = *(v37 + 32);
    v53 = v68;
    v52(v68, v12, v39);
    v54 = &v12[v40];
    v55 = v69;
    v52(v69, v54, v39);
    v51 = sub_1B67D86FC();
    v56 = *(v37 + 8);
    v56(v55, v39);
    v56(v53, v39);
  }

  return v51 & 1;
}

uint64_t _s8NewsCore17RecipeHistoryItemV2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v6)
  {
    if (v4)
    {
      if (v5 == v3 && v6 == v4)
      {

        v1 = 1;
      }

      else
      {
        v1 = sub_1B67DA2DC();
      }
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      v1 = 1;
      return v1 & 1;
    }

    v1 = 0;
  }

  return v1 & 1;
}

unint64_t sub_1B64EA07C()
{
  result = qword_1EDB1EC38;
  if (!qword_1EDB1EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EC38);
  }

  return result;
}

unint64_t sub_1B64EA0F4()
{
  result = qword_1EB958C50[0];
  if (!qword_1EB958C50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB958C50);
  }

  return result;
}

unint64_t sub_1B64EA14C()
{
  result = qword_1EB958D60;
  if (!qword_1EB958D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB958D60);
  }

  return result;
}

unint64_t sub_1B64EA1A4()
{
  result = qword_1EB958D68[0];
  if (!qword_1EB958D68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB958D68);
  }

  return result;
}

uint64_t PrivateZoneModel.identifier.getter(uint64_t a1, uint64_t a2)
{
  sub_1B67D8AAC();
  sub_1B67D8DCC();

  if (v4)
  {
    return v3;
  }

  __break(1u);
  return result;
}

void *PrivateZoneType.allModelIDs(orderBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;
  v6 = *(a3 + 48);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F90, &qword_1B6810150);
  v8 = sub_1B64577E8();
  result = v6(&v11, &type metadata for IDEntity, sub_1B64EA6F8, v10, v7, &type metadata for IDEntity, v8, a2, a3);
  if (!v3)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1B64EA34C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_1B67D8E4C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6415FF0(a1, v6, &qword_1EB94B510, &unk_1B68102C0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B6418AB4(v6, &qword_1EB94B510, &unk_1B68102C0);
    result = sub_1B67D8F9C();
    if (v2)
    {
      return result;
    }

    v37 = 0;
    v12 = *(result + 16);
    if (v12)
    {
      v39 = MEMORY[0x1E69E7CC0];
      sub_1B6456B24(0, v12, 0);
      v13 = 32;
      v14 = v39;
      do
      {

        v16 = sub_1B644DFB8(v15);
        v18 = v17;

        v39 = v14;
        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1B6456B24((v19 > 1), v20 + 1, 1);
          v14 = v39;
        }

        *(v14 + 16) = v20 + 1;
        v21 = v14 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        v13 += 8;
        --v12;
      }

      while (v12);

      *v38 = v14;
      return result;
    }

LABEL_19:
    *v38 = MEMORY[0x1E69E7CC0];
    return result;
  }

  (*(v8 + 32))(v10, v6, v7);
  v22 = sub_1B67D8FBC();
  if (v2)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v37 = 0;
  v23 = *(v22 + 16);
  if (!v23)
  {

    result = (*(v8 + 8))(v10, v7);
    goto LABEL_19;
  }

  v34 = v10;
  v35 = v8;
  v36 = v7;
  v39 = MEMORY[0x1E69E7CC0];
  sub_1B6456B24(0, v23, 0);
  v24 = 32;
  v25 = v39;
  do
  {

    v27 = sub_1B644DFB8(v26);
    v29 = v28;

    v39 = v25;
    v31 = *(v25 + 16);
    v30 = *(v25 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_1B6456B24((v30 > 1), v31 + 1, 1);
      v25 = v39;
    }

    *(v25 + 16) = v31 + 1;
    v32 = v25 + 16 * v31;
    *(v32 + 32) = v27;
    *(v32 + 40) = v29;
    v24 += 8;
    --v23;
  }

  while (v23);
  (*(v35 + 8))(v34, v36);

  *v38 = v25;
  return result;
}

uint64_t sub_1B64EA714(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1B67D9B4C();
  if (!v19)
  {
    return sub_1B67D980C();
  }

  v41 = v19;
  v45 = sub_1B67D9FEC();
  v32 = sub_1B67D9FFC();
  sub_1B67D9F9C();
  result = sub_1B67D9B2C();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1B67D9B7C();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1B67D9FDC();
      result = sub_1B67D9B5C();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *PrivateZoneType.all<A>(_:orderBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[2] = a3;
  v14[3] = a5;
  v14[4] = a2;
  v11 = *(a5 + 48);
  v12 = sub_1B67D988C();
  result = v11(&v15, a4, sub_1B64EADF0, v14, v12, a4, a6, a3, a5);
  if (!v6)
  {
    return v15;
  }

  return result;
}

uint64_t sub_1B64EABF0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v15 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_1B67D8E4C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6415FF0(a1, v6, &qword_1EB94B510, &unk_1B68102C0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B6418AB4(v6, &qword_1EB94B510, &unk_1B68102C0);
    result = sub_1B67D8F9C();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v12 = sub_1B67D8FBC();
    if (v2)
    {
      return (*(v8 + 8))(v10, v7);
    }

    v13 = v12;
    (*(v8 + 8))(v10, v7);
    result = v13;
  }

  *v15 = result;
  return result;
}

void *PrivateZoneType.where<A>(_:_:orderBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[5] = a3;
  v15[2] = a4;
  v15[3] = a6;
  v15[4] = a2;
  v12 = *(a6 + 48);
  v13 = sub_1B67D988C();
  result = v12(&v16, a5, sub_1B64EAEC8, v15, v13, a5, a7, a4, a6);
  if (!v7)
  {
    return v16;
  }

  return result;
}

uint64_t sub_1B64EAEC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B67D8FEC();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t PrivateZoneType.first<A>(_:_:orderBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[2] = a4;
  v14[3] = a6;
  v14[4] = a2;
  v14[5] = a3;
  v11 = *(a6 + 48);
  v12 = sub_1B67D9DFC();
  return v11(a5, sub_1B64EAFBC, v14, v12, a5, a7, a4, a6);
}

uint64_t PrivateZoneType.first<A>(_:orderBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[2] = a3;
  v13[3] = a5;
  v13[4] = a2;
  v10 = *(a5 + 48);
  v11 = sub_1B67D9DFC();
  return v10(a4, sub_1B64EB09C, v13, v11, a4, a6, a3, a5);
}

uint64_t PrivateZoneType.querySome<A, B>(_:options:executor:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[11] = v16;
  v9[12] = v8;
  v9[9] = a8;
  v9[10] = v15;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a1;
  v9[4] = a2;
  v9[2] = *a3;
  v13 = (*(v15 + 88) + **(v15 + 88));
  v11 = swift_task_alloc();
  v9[13] = v11;
  *v11 = v9;
  v11[1] = sub_1B64EB210;

  return v13(v9 + 2, a6);
}

uint64_t sub_1B64EB210()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1B6493278;
  }

  else
  {
    v2 = sub_1B64EB324;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64EB324()
{
  (*(v0[10] + 48))(v0[4], v0[5], v0[6], v0[8], v0[9], v0[11], v0[7]);
  v1 = v0[1];

  return v1();
}

uint64_t PrivateZoneType.add(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B64FC418(AssociatedTypeWitness, AssociatedTypeWitness);
  v7 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  v8 = sub_1B67D97DC();
  (*(v7 + 16))(v9, a1, AssociatedTypeWitness);
  sub_1B67D988C();
  (*(a3 + 56))(v8, a2, a3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PrivateZoneType.remove(_:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B68100D0;
  *(v7 + 32) = countAndFlagsBits;
  *(v7 + 40) = object;
  v8 = *(v3 + 64);

  v8(v7, v4, v3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PrivateZoneType.removeAll()()
{
  v3 = v1;
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  v8 = sub_1B67D8E4C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = PrivateZoneType.allModelIDs(orderBy:)(v7, v4, v3);
  sub_1B6418AB4(v7, &qword_1EB94B510, &unk_1B68102C0);
  if (!v2)
  {
    (*(v3 + 64))(v9, v4, v3);
  }
}

uint64_t PrivateZoneType.individualChanges.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for PrivateZoneChange(255, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v9 = sub_1B67D997C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15[-v10];
  (*(a2 + 72))(v19, a1, a2);
  v16 = a1;
  v17 = a2;
  v18 = v19;
  swift_checkMetadataState();
  v12 = *MEMORY[0x1E69E8650];
  v13 = sub_1B67D997C();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  a3[3] = sub_1B67D99AC();
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_0(a3);
  sub_1B67D99BC();
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1B64EB8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for PrivateZoneChange(255, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v11 = sub_1B67D999C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v24 - v16;
  v18 = sub_1B67D993C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_1B6431D18(a2, v25);
  (*(v12 + 16))(v14, a1, v11);
  v19 = (*(v12 + 80) + 88) & ~*(v12 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = a3;
  *(v20 + 5) = a4;
  sub_1B6416D08(v25, (v20 + 48));
  (*(v12 + 32))(&v20[v19], v14, v11);
  v21 = sub_1B644BCA8(0, 0, v17, &unk_1B6818D00, v20);
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = v21;
  return sub_1B67D996C();
}

uint64_t sub_1B64EBB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a4;
  v7[10] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for PrivateZoneChange(255, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v11 = sub_1B67D995C();
  v7[11] = v11;
  v7[12] = *(v11 - 8);
  v7[13] = swift_task_alloc();
  v12 = swift_checkMetadataState();
  v7[14] = v12;
  v13 = *(v12 - 8);
  v7[15] = v13;
  v7[16] = *(v13 + 64);
  v7[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64EBCE0, 0, 0);
}

uint64_t sub_1B64EBCE0()
{
  v1 = v0[9];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_1B67D9A2C();

  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1B64EBE98;

  return MEMORY[0x1EEE6D8D0](v0 + 7, 0, 0);
}

uint64_t sub_1B64EBE98()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B64EBFA8, 0, 0);
  }

  return result;
}

uint64_t sub_1B64EBFA8()
{
  v1 = v0[7];
  if (v1)
  {
    if (sub_1B67D984C())
    {
      v2 = 0;
      do
      {
        v3 = sub_1B67D982C();
        sub_1B67D97EC();
        if (v3)
        {
          (*(v0[15] + 16))(v0[17], v1 + ((*(v0[15] + 80) + 32) & ~*(v0[15] + 80)) + *(v0[15] + 72) * v2, v0[14]);
          v4 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_11;
          }
        }

        else
        {
          v8 = v0[16];
          v9 = sub_1B67D9F1C();
          if (v8 != 8)
          {
            __break(1u);
            return MEMORY[0x1EEE6D8D0](v9, v10, v11);
          }

          v12 = v0[17];
          v13 = v0[14];
          v14 = v0[15];
          v0[8] = v9;
          (*(v14 + 16))(v12, v0 + 8, v13);
          swift_unknownObjectRelease();
          v4 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
LABEL_11:
            __break(1u);
            break;
          }
        }

        v5 = v0[13];
        v7 = v0[11];
        v6 = v0[12];
        sub_1B67D999C();
        sub_1B67D998C();
        (*(v6 + 8))(v5, v7);
        ++v2;
      }

      while (v4 != sub_1B67D984C());
    }

    __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
    v15 = swift_task_alloc();
    v0[18] = v15;
    *v15 = v0;
    v15[1] = sub_1B64EBE98;
    v9 = (v0 + 7);
    v10 = 0;
    v11 = 0;

    return MEMORY[0x1EEE6D8D0](v9, v10, v11);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v16 = v0[1];

    return v16();
  }
}

void *sub_1B64EC2A4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1B64EC2D0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1B64EC3A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void PrivateZone.deinit()
{
  v1 = v0;
  if (v0[2])
  {
    v2 = *v0;

    sub_1B64601C4(&v11);

    v3 = v11;
    v4 = v12;
    if ((~(v11 & v12) & 0xF000000000000007) != 0)
    {
      sub_1B64B7198(v11);
      sub_1B64FE758(v3, v4);
    }

    type metadata accessor for PrivateZoneChange(255, *(v2 + 88), *(v2 + 104), v5);
    v6 = sub_1B67D988C();
    type metadata accessor for Multicaster(255, v6, v7, v8);
    sub_1B67D8A4C();
    sub_1B67D9DDC();

    v9 = qword_1EDB265A0;
    v10 = sub_1B67D8A9C();
    (*(*(v10 - 8) + 8))(v1 + v9, v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t PrivateZone.__deallocating_deinit()
{
  PrivateZone.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1B64EC5C0()
{
  v1 = *(v0 + 80);
  sub_1B645745C(*(v0 + 168), *(v0 + 160));
  if ((v1 & 2) != 0 || (*(v0 + 80) & 1) != 0 && (v2 = *(v0 + 152), sub_1B641C49C(*(v0 + 88), *(v0 + 96), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), (v0 + 16)), !v2) && (v5 = sub_1B6501D14(), , , , , , , v5))
  {
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_1B64EC73C;

    return sub_1B645CA68();
  }

  else
  {

    sub_1B641FC34(*(v0 + 88), *(v0 + 96));
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1B64EC73C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 184) = v3;
  *v3 = v2;
  v3[1] = sub_1B64EC880;

  return sub_1B64ECCAC(1);
}

uint64_t sub_1B64EC880()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1B64ECBC8;
  }

  else
  {
    v2 = sub_1B64EC994;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64EC994()
{
  v1 = sub_1B65013CC(v0[14], v0[16]);
  v0[25] = v1;
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_1B64ECA40;

  return sub_1B64ED460(v1);
}

uint64_t sub_1B64ECA40()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1B64ECC34;
  }

  else
  {

    v3 = sub_1B64ECB5C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B64ECB5C()
{

  sub_1B641FC34(v0[11], v0[12]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1B64ECBC8()
{

  sub_1B641FC34(v0[11], v0[12]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1B64ECC34()
{

  sub_1B641FC34(*(v0 + 88), *(v0 + 96));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B64ECCAC(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 128) = a1;
  v3 = sub_1B67D913C();
  *(v2 + 40) = v3;
  *(v2 + 48) = *(v3 - 8);
  *(v2 + 56) = swift_task_alloc();
  v4 = sub_1B67D916C();
  *(v2 + 64) = v4;
  *(v2 + 72) = *(v4 - 8);
  *(v2 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64ECDCC, 0, 0);
}

uint64_t sub_1B64ECDCC()
{
  (*(v0[6] + 104))(v0[7], *MEMORY[0x1E695B5A8], v0[5]);
  sub_1B67D914C();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1B64ECEA4;
  v2 = v0[10];

  return MEMORY[0x1EEDB5460](v2);
}

uint64_t sub_1B64ECEA4()
{
  v2 = *v1;
  v3 = *v1;
  v2[12] = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B64ED04C, 0, 0);
  }

  else
  {

    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_1B64ED04C()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
  type metadata accessor for CKError(0);
  if (!swift_dynamicCast())
  {
    goto LABEL_11;
  }

  v3 = *(v0 + 24);
  *(v0 + 104) = v3;
  v4 = v3;
  sub_1B64FB034(26, v4);
  if (v5)
  {
    v6 = *(v0 + 128);
    sub_1B67D943C();
    v7 = sub_1B67D93EC();

    v8 = *(v7 + 16);

    if (v8 && (v6 & 1) != 0)
    {

      v9 = swift_task_alloc();
      *(v0 + 112) = v9;
      *v9 = v0;
      v9[1] = sub_1B64ED24C;

      return sub_1B64ECCAC(0);
    }
  }

  else
  {
  }

  sub_1B64FB034(14, v4);
  v12 = v11;

  if (v12)
  {

    v13 = *(v0 + 8);
  }

  else
  {
LABEL_11:

    swift_willThrow();

    v13 = *(v0 + 8);
  }

  return v13();
}

uint64_t sub_1B64ED24C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B64ED3E0;
  }

  else
  {
    v2 = sub_1B64ED360;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64ED360()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B64ED3E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B64ED460(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B67D91AC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1B67D91CC();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64ED57C, 0, 0);
}

uint64_t sub_1B64ED57C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  sub_1B67D921C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A3B0, &qword_1B6810120);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B68100E0;
  *(v5 + 32) = v4;
  *v1 = v5;
  (*(v2 + 104))(v1, *MEMORY[0x1E695B5D0], v3);
  v6 = v4;
  sub_1B67D91BC();
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1B64ED6A8;
  v8 = v0[9];

  return MEMORY[0x1EEDB5468](v8);
}

uint64_t sub_1B64ED6A8()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(v5 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B64ED860, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1B64ED860()
{

  v1 = *(v0 + 8);

  return v1();
}

void PrivateZone.querySome<A, B>(_:executor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *v6;
  sub_1B641A1BC();
  if (!v7)
  {
    v33[1] = v33;
    v16 = MEMORY[0x1EEE9AC00](v15);
    v17 = v14[11];
    v23 = v14[10];
    v24 = v17;
    v25 = a4;
    v26 = a5;
    v18 = v14[13];
    v27 = v14[12];
    v28 = v18;
    v29 = a6;
    v30 = a2;
    v31 = a3;
    v32 = a1;
    v19 = v16;
    v21 = v20;
    sub_1B641CFC8(sub_1B64FE770, &v22, v16, v20, v23, v17, a4, v27, v18);
    sub_1B641FC34(v19, v21);
  }
}

uint64_t sub_1B64EDA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a5;
  v39 = a7;
  v47 = a1;
  v48 = a4;
  v40 = a2;
  v45 = type metadata accessor for PrivateZoneChange(0, a6, a8, a4);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v46 = &v37 - v14;
  v15 = *(a6 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v51 = &v37 - v19;
  v20 = sub_1B67D984C();
  v49 = a8;
  if (v20)
  {
    v37 = v16;
    v21 = 0;
    v50 = (v15 + 16);
    v42 = a8 + 24;
    v43 = (v15 + 32);
    v41 = (v15 + 8);
    while (1)
    {
      v22 = sub_1B67D982C();
      sub_1B67D97EC();
      if (v22)
      {
        v23 = *(v15 + 16);
        result = (v23)(v51, a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v21, a6);
      }

      else
      {
        result = sub_1B67D9F1C();
        if (v37 != 8)
        {
          goto LABEL_15;
        }

        v53 = result;
        v23 = *v50;
        (*v50)(v51, &v53, a6);
        result = swift_unknownObjectRelease();
      }

      v25 = v21 + 1;
      v26 = v49;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v27 = v15;
      v28 = a3;
      (*v43)(v18, v51, a6);
      (*(v26 + 24))(a6, v26);
      v29 = v46;
      sub_1B67D876C();
      v30 = sub_1B67D877C();
      (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
      sub_1B67D8DDC();

      sub_1B67D8D4C();
      v31 = v52;
      sub_1B67D8CDC();

      if (v31)
      {
        return (*v41)(v18, a6);
      }

      v52 = 0;
      v32 = *(swift_getTupleTypeMetadata2() + 48);
      v33 = v44;
      v23(v44, v18, a6);
      v33[v32] = 0;
      swift_storeEnumTagMultiPayload();
      sub_1B67D988C();
      sub_1B67D985C();
      (*v41)(v18, a6);
      a3 = v28;
      v20 = sub_1B67D984C();
      ++v21;
      v15 = v27;
      if (v25 == v20)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_11:
    MEMORY[0x1EEE9AC00](v20);
    v34 = v39;
    *(&v37 - 6) = v38;
    *(&v37 - 5) = a6;
    v35 = v48;
    v36 = v49;
    *(&v37 - 4) = v34;
    *(&v37 - 3) = v36;
    *(&v37 - 2) = v35;
    return sub_1B6502494(sub_1B650023C);
  }

  return result;
}

uint64_t sub_1B64EDEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(*v4 + 88);
  v10 = *(*v4 + 104);
  type metadata accessor for PrivateZoneChange(0, v9, v10, a4);
  v23 = sub_1B67D950C();
  sub_1B641A1BC();
  if (v5)
  {
    sub_1B64EE068(v4, &v23);
  }

  else
  {
    v13 = v11;
    v14 = v12;
    MEMORY[0x1EEE9AC00](v11);
    v17 = *(v8 + 80);
    v18 = v9;
    v19 = *(v8 + 96);
    v20 = v10;
    v21 = a1;
    v22 = &v23;
    sub_1B64B6EE8(a2, &v16, v13, v14, v17, v9, v19, v10);
    sub_1B641FC34(v13, v14);
    sub_1B64EE068(v4, &v23);
  }
}

uint64_t sub_1B64EE068(uint64_t a1, void *a2)
{

  sub_1B64F9054(v2);

  sub_1B64F99E0(v3);
}

uint64_t sub_1B64EE0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a6;
  v24 = a7;
  v22 = a5;
  v27 = a4;
  v25 = a8;
  v26 = a2;
  v10 = type metadata accessor for PrivateZoneChange(0, a6, a8, a4);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v14 = *(a3 + 16);
  if (v14)
  {
    v15 = (a3 + 40);
    while (1)
    {
      v16 = *(v15 - 1);
      v17 = *v15;

      sub_1B67D8D7C();
      sub_1B67D8E0C();
      if (v8)
      {
        break;
      }

      *v13 = v16;
      *(v13 + 1) = v17;
      v13[16] = 0;
      swift_storeEnumTagMultiPayload();
      sub_1B67D988C();
      v11 = sub_1B67D985C();
      v15 += 2;
      if (!--v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    MEMORY[0x1EEE9AC00](v11);
    v18 = v23;
    *(&v21 - 6) = v22;
    *(&v21 - 5) = v18;
    v19 = v25;
    *(&v21 - 4) = v24;
    *(&v21 - 3) = v19;
    *(&v21 - 2) = v27;
    return sub_1B6502494(sub_1B65013A4);
  }
}

uint64_t PrivateZone.handleEvent(_:syncEngine:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B642694C;

  return sub_1B64FE868(a1);
}

uint64_t sub_1B64EE3E0(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v2[15] = *v1;
  v2[16] = *v1;
  v3 = sub_1B67D922C();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v2[20] = swift_task_alloc();
  v4 = sub_1B67D925C();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  v5 = sub_1B67D927C();
  v2[24] = v5;
  v2[25] = *(v5 - 8);
  v2[26] = swift_task_alloc();
  v6 = sub_1B67D930C();
  v2[27] = v6;
  v2[28] = *(v6 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v7 = sub_1B67D934C();
  v2[32] = v7;
  v2[33] = *(v7 - 8);
  v2[34] = swift_task_alloc();
  v8 = sub_1B67D92DC();
  v2[35] = v8;
  v2[36] = *(v8 - 8);
  v2[37] = swift_task_alloc();
  v9 = sub_1B67D9C1C();
  v2[38] = v9;
  v2[39] = *(v9 - 8);
  v2[40] = swift_task_alloc();
  v10 = sub_1B67D9BFC();
  v2[41] = v10;
  v2[42] = *(v10 - 8);
  v2[43] = swift_task_alloc();
  v11 = sub_1B67D939C();
  v2[44] = v11;
  v2[45] = *(v11 - 8);
  v2[46] = swift_task_alloc();
  v12 = sub_1B67D9BDC();
  v2[47] = v12;
  v2[48] = *(v12 - 8);
  v2[49] = swift_task_alloc();
  v13 = sub_1B67D936C();
  v2[50] = v13;
  v2[51] = *(v13 - 8);
  v2[52] = swift_task_alloc();
  v14 = sub_1B67D924C();
  v2[53] = v14;
  v2[54] = *(v14 - 8);
  v2[55] = swift_task_alloc();
  v15 = sub_1B67D93CC();
  v2[56] = v15;
  v2[57] = *(v15 - 8);
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64EE9A8, 0, 0);
}

void sub_1B64EE9A8()
{
  if (*(v0[14] + 16))
  {

    sub_1B64251D4((v0 + 7));
    v1 = v0[16];

    v3 = v0[7];
    v2 = v0[8];
    v0[61] = v3;
    v0[62] = v2;
    v4 = swift_task_alloc();
    v0[63] = v4;
    v5 = v1[10];
    v0[64] = v5;
    v6 = v1[11];
    v0[65] = v6;
    v7 = v1[12];
    v0[66] = v7;
    v8 = v1[13];
    v0[67] = v8;
    *v4 = v0;
    v4[1] = sub_1B64EEBE4;

    sub_1B64252D4(v3, v2, v5, v6, v7, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B64EEBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[68] = a1;
  v5[69] = a2;
  v5[70] = a3;
  v5[71] = v3;

  if (v3)
  {
    v6 = sub_1B64F1BFC;
  }

  else
  {
    v6 = sub_1B64EED04;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B64EED04()
{
  v309 = v0;
  v1 = sub_1B64FB5B0();
  v2 = 0;
  v3 = *(v1 + 16);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return sub_1B67DA07C();
    }

    v4 = v2 + 1;
    v5 = *(v1 + 8 * v2 + 32);
    v6 = v5;
    v7 = sub_1B67D854C();
    v8 = [v7 fc_hasCKIdentityLostError];

    v2 = v4;
    if (v8)
    {
      v10 = *(v0 + 456);
      v9 = *(v0 + 464);
      v11 = *(v0 + 448);
      v12 = *(v0 + 104);

      *(v0 + 688) = qword_1EDB265A0;
      (*(v10 + 16))(v9, v12, v11);
      v13 = sub_1B67D8A7C();
      v14 = sub_1B67D9C9C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = *(v0 + 528);
        v16 = *(v0 + 512);
        v18 = *(v0 + 456);
        v17 = *(v0 + 464);
        v19 = *(v0 + 448);
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v308[0] = v21;
        *v20 = 136446466;
        v22 = (*(v15 + 8))(v16, v15);
        v24 = sub_1B6456540(v22, v23, v308);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2082;
        sub_1B6415F9C(&qword_1EB94B7E8, MEMORY[0x1E695B6B8], MEMORY[0x1E695B6C0]);
        v25 = sub_1B67DA28C();
        v27 = v26;
        (*(v18 + 8))(v17, v19);
        v28 = sub_1B6456540(v25, v27, v308);

        *(v20 + 14) = v28;
        _os_log_impl(&dword_1B63EF000, v13, v14, "Will handle identity loss from sync engine, zone=%{public}s, event=%{public}s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8C96DF0](v21, -1, -1);
        MEMORY[0x1B8C96DF0](v20, -1, -1);
      }

      else
      {
        v66 = *(v0 + 456);
        v65 = *(v0 + 464);
        v67 = *(v0 + 448);

        (*(v66 + 8))(v65, v67);
      }

      v68 = swift_task_alloc();
      *(v0 + 696) = v68;
      *v68 = v0;
      v68[1] = sub_1B64F1854;

      return sub_1B64F2590();
    }
  }

  v29 = *(v0 + 480);
  v30 = *(v0 + 448);
  v31 = *(v0 + 456);
  v32 = *(v0 + 104);

  v33 = *(v31 + 16);
  v33(v29, v32, v30);
  v34 = (*(v31 + 88))(v29, v30);
  if (v34 == *MEMORY[0x1E695B608])
  {
    v294 = *(v0 + 536);
    v301 = *(v0 + 568);
    v35 = *(v0 + 528);
    v36 = *(v0 + 520);
    v37 = *(v0 + 512);
    v39 = *(v0 + 488);
    v38 = *(v0 + 496);
    v40 = *(v0 + 480);
    v41 = *(v0 + 432);
    v42 = *(v0 + 440);
    v43 = *(v0 + 424);
    (*(*(v0 + 456) + 96))(v40, *(v0 + 448));
    (*(v41 + 32))(v42, v40, v43);
    v44 = swift_task_alloc();
    *(v44 + 16) = v42;
    sub_1B64B6EA4(sub_1B64FFFC8, v44, v39, v38, v37, v36, v35, v294);
    v46 = *(v0 + 488);
    v45 = *(v0 + 496);
    v48 = *(v0 + 432);
    v47 = *(v0 + 440);
    v49 = *(v0 + 424);
    sub_1B645745C(*(v0 + 552), *(v0 + 560));

    sub_1B641FC34(v46, v45);

    (*(v48 + 8))(v47, v49);
    if (!v301)
    {
      goto LABEL_87;
    }

LABEL_13:

    v64 = *(v0 + 8);
LABEL_88:

    return v64();
  }

  if (v34 == *MEMORY[0x1E695B630])
  {
    v50 = *(v0 + 536);
    v51 = *(v0 + 528);
    v52 = *(v0 + 520);
    v53 = *(v0 + 512);
    v54 = *(v0 + 488);
    v295 = *(v0 + 496);
    v302 = *(v0 + 568);
    v55 = *(v0 + 480);
    v56 = *(v0 + 200);
    v57 = *(v0 + 208);
    v58 = *(v0 + 192);
    (*(*(v0 + 456) + 96))(v55, *(v0 + 448));
    (*(v56 + 32))(v57, v55, v58);
    v59 = swift_task_alloc();
    v59[2] = v53;
    v59[3] = v52;
    v59[4] = v51;
    v59[5] = v50;
    sub_1B64B6EE8(sub_1B650136C, v59, v54, v295, v53, v52, v51, v50);
    if (v302)
    {
      v60 = *(v0 + 560);
      v61 = *(v0 + 552);
      v63 = *(v0 + 488);
      v62 = *(v0 + 496);
      (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
      sub_1B645745C(v61, v60);

      sub_1B641FC34(v63, v62);

      goto LABEL_13;
    }

    v115 = *(v0 + 176);
    v114 = *(v0 + 184);
    v116 = *(v0 + 168);

    sub_1B67D926C();
    v117 = (*(v115 + 88))(v114, v116);
    if (v117 != *MEMORY[0x1E695B620])
    {
      if (v117 != *MEMORY[0x1E695B628] && v117 != *MEMORY[0x1E695B618])
      {
        return sub_1B67DA07C();
      }

      v150 = *(v0 + 560);
      v151 = *(v0 + 552);
      v153 = *(v0 + 488);
      v152 = *(v0 + 496);
      v154 = *(v0 + 184);
      v155 = *(v0 + 168);
      v156 = *(v0 + 176);
      (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
      sub_1B645745C(v151, v150);

      sub_1B641FC34(v153, v152);
      (*(v156 + 8))(v154, v155);
      goto LABEL_87;
    }

    v118 = *(v0 + 160);
    v119 = *(v0 + 112);
    v120 = *(v0 + 120);
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    *(v0 + 72) = v119;
    v121 = sub_1B67D8E4C();
    (*(*(v121 - 8) + 56))(v118, 1, 1, v121);
    WitnessTable = swift_getWitnessTable();
    p_isa = PrivateZoneType.allModelIDs(orderBy:)(v118, v120, WitnessTable);
    sub_1B6418AB4(*(v0 + 160), &qword_1EB94B510, &unk_1B68102C0);
    v180 = p_isa[2];
    if (v180)
    {
      v181 = *(v0 + 144);
      v308[0] = MEMORY[0x1E69E7CC0];
      result = sub_1B64FC714(0, v180, 0);
      v182 = 0;
      v183 = v308[0];
      v280 = *MEMORY[0x1E695B5F0];
      loga = v181;
      v287 = v180;
      v184 = p_isa + 5;
      v290 = p_isa;
      while (1)
      {
        v305 = v183;
        if (v182 >= p_isa[2])
        {
          break;
        }

        v185 = *(v0 + 560);
        v186 = *(v0 + 552);
        v187 = *(v0 + 528);
        v188 = *(v0 + 520);
        v189 = *(v0 + 512);
        v191 = *(v184 - 1);
        v190 = *v184;

        sub_1B646B894(v186, v185);
        sub_1B6471CBC(v191, v190, v186, v185, v189, v188, v187);
        v192 = *(v0 + 152);
        *v192 = v193;

        v194 = sub_1B67D922C();
        (*(*(v194 - 8) + 104))(v192, v280, v194);

        v183 = v305;
        v308[0] = v305;
        v196 = *(v305 + 16);
        v195 = *(v305 + 24);
        if (v196 >= v195 >> 1)
        {
          sub_1B64FC714((v195 > 1), v196 + 1, 1);
          v183 = v308[0];
        }

        ++v182;
        v197 = *(v0 + 152);
        v198 = *(v0 + 136);
        *(v183 + 16) = v196 + 1;
        result = (loga[4].isa)(v183 + ((LOBYTE(loga[10].isa) + 32) & ~LOBYTE(loga[10].isa)) + loga[9].isa * v196, v197, v198);
        v184 += 2;
        p_isa = &v290->isa;
        if (v287 == v182)
        {
          goto LABEL_62;
        }
      }

LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      return result;
    }

LABEL_62:

    v266 = *(v0 + 560);
    v267 = *(v0 + 552);
    v269 = *(v0 + 488);
    v268 = *(v0 + 496);
    v270 = *(v0 + 200);
    v307 = *(v0 + 208);
    v271 = *(v0 + 192);
    sub_1B67D943C();
    sub_1B67D941C();
    sub_1B645745C(v267, v266);

    sub_1B641FC34(v269, v268);

    (*(v270 + 8))(v307, v271);
    goto LABEL_87;
  }

  if (v34 == *MEMORY[0x1E695B698])
  {
    v70 = *(v0 + 480);
    v72 = *(v0 + 408);
    v71 = *(v0 + 416);
    v73 = *(v0 + 400);
    (*(*(v0 + 456) + 96))(v70, *(v0 + 448));
    v74 = (*(v72 + 32))(v71, v70, v73);
    result = MEMORY[0x1B8C945B0](v74);
    v296 = *(result + 16);
    v303 = result;
    if (!v296)
    {
LABEL_39:
      v124 = *(v0 + 488);
      v123 = *(v0 + 496);
      v125 = *(v0 + 408);
      v126 = *(v0 + 416);
      v127 = *(v0 + 400);
      sub_1B645745C(*(v0 + 552), *(v0 + 560));

      sub_1B641FC34(v124, v123);

      (*(v125 + 8))(v126, v127);
      goto LABEL_87;
    }

    v75 = 0;
    v286 = *(v0 + 384);
    v279 = result + ((*(v286 + 80) + 32) & ~*(v286 + 80));
    log = *(*(v0 + 528) + 8);
    v76 = *(v0 + 568);
    while (1)
    {
      if (v75 >= *(v303 + 16))
      {
        __break(1u);
        goto LABEL_93;
      }

      v77 = *(v0 + 528);
      v78 = *(v0 + 512);
      v79 = *(v0 + 392);
      v80 = *(v0 + 376);
      v81 = (*(v286 + 16))(v79, v279 + *(v286 + 72) * v75, v80);
      v82 = MEMORY[0x1B8C94E20](v81);
      (*(v286 + 8))(v79, v80);
      v83 = [v82 zoneName];

      v84 = sub_1B67D964C();
      v86 = v85;

      if (v84 == (log)(v78, v77) && v86 == v87)
      {
      }

      else
      {
        v89 = sub_1B67DA2DC();

        if ((v89 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v90 = *(v0 + 536);
      v91 = *(v0 + 528);
      v92 = *(v0 + 520);
      v93 = *(v0 + 512);
      v95 = *(v0 + 488);
      v94 = *(v0 + 496);
      v96 = swift_task_alloc();
      v96[2] = v93;
      v96[3] = v92;
      v96[4] = v91;
      v96[5] = v90;
      sub_1B64B6EE8(sub_1B64FFF54, v96, v95, v94, v93, v92, v91, v90);
      if (v76)
      {
        v158 = *(v0 + 488);
        v157 = *(v0 + 496);
        v159 = *(v0 + 408);
        v160 = *(v0 + 416);
        v161 = *(v0 + 400);
        sub_1B645745C(*(v0 + 552), *(v0 + 560));

        sub_1B641FC34(v158, v157);

        (*(v159 + 8))(v160, v161);
        goto LABEL_13;
      }

LABEL_21:
      if (v296 == ++v75)
      {
        goto LABEL_39;
      }
    }
  }

  if (v34 != *MEMORY[0x1E695B6A0])
  {
    if (v34 == *MEMORY[0x1E695B688])
    {
      v128 = *(v0 + 568);
      v129 = *(v0 + 528);
      v130 = *(v0 + 512);
      v131 = *(v0 + 480);
      v133 = *(v0 + 288);
      v132 = *(v0 + 296);
      v134 = *(v0 + 280);
      (*(*(v0 + 456) + 96))(v131, *(v0 + 448));
      v135 = (*(v133 + 32))(v132, v131, v134);
      v136 = MEMORY[0x1B8C94500](v135);
      v137 = sub_1B65013CC(v130, v129);
      *(v0 + 96) = v137;
      v138 = swift_task_alloc();
      *(v138 + 16) = v0 + 96;
      LOBYTE(v130) = sub_1B64FB248(sub_1B64FFE90, v138, v136);

      if (v130)
      {
        v139 = *(v0 + 536);
        v140 = *(v0 + 528);
        v141 = *(v0 + 520);
        v142 = *(v0 + 512);
        v144 = *(v0 + 488);
        v143 = *(v0 + 496);
        v145 = swift_task_alloc();
        v145[2] = v142;
        v145[3] = v141;
        v145[4] = v140;
        v145[5] = v139;
        sub_1B64B6EE8(sub_1B64FFEF8, v145, v144, v143, v142, v141, v140, v139);
        v146 = *(v0 + 560);
        v147 = *(v0 + 552);
        v149 = *(v0 + 488);
        v148 = *(v0 + 496);
        (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
        sub_1B645745C(v147, v146);

        sub_1B641FC34(v149, v148);

        if (!v128)
        {
          goto LABEL_87;
        }

        goto LABEL_13;
      }

      v199 = *(v0 + 560);
      v200 = *(v0 + 552);
      v202 = *(v0 + 488);
      v201 = *(v0 + 496);
      (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
      sub_1B645745C(v200, v199);

      sub_1B641FC34(v202, v201);
    }

    else if (v34 == *MEMORY[0x1E695B690])
    {
      v162 = *(v0 + 536);
      v163 = *(v0 + 528);
      v164 = *(v0 + 520);
      v165 = *(v0 + 512);
      v166 = *(v0 + 488);
      v297 = *(v0 + 496);
      v304 = *(v0 + 568);
      v167 = *(v0 + 480);
      v168 = *(v0 + 264);
      v169 = *(v0 + 272);
      v170 = *(v0 + 256);
      (*(*(v0 + 456) + 96))(v167, *(v0 + 448));
      (*(v168 + 32))(v169, v167, v170);
      v171 = swift_task_alloc();
      v171[2] = v165;
      v171[3] = v164;
      v171[4] = v163;
      v171[5] = v162;
      v171[6] = v169;
      sub_1B64B6EE8(sub_1B64FFD04, v171, v166, v297, v165, v164, v163, v162);
      if (v304)
      {
        v173 = *(v0 + 488);
        v172 = *(v0 + 496);
        v175 = *(v0 + 264);
        v174 = *(v0 + 272);
        v176 = *(v0 + 256);
        sub_1B645745C(*(v0 + 552), *(v0 + 560));

        sub_1B641FC34(v173, v172);

        (*(v175 + 8))(v174, v176);
        goto LABEL_13;
      }

      result = MEMORY[0x1B8C94570](v224);
      *(v0 + 624) = result;
      v225 = *(result + 16);
      *(v0 + 632) = v225;
      if (v225)
      {
        v226 = 0;
        v227 = *(v0 + 224);
        v228 = MEMORY[0x1E695B5E0];
        v229 = MEMORY[0x1E695B5F0];
        *(v0 + 640) = qword_1EDB265A0;
        *(v0 + 712) = *(v227 + 80);
        *(v0 + 716) = *v228;
        *(v0 + 720) = *v229;
        do
        {
          *(v0 + 648) = v226;
          v242 = *(v0 + 624);
          if (v226 >= *(v242 + 16))
          {
            goto LABEL_94;
          }

          v243 = *(v0 + 224);
          v244 = *(v243 + 16);
          v244(*(v0 + 248), v242 + ((*(v0 + 712) + 32) & ~*(v0 + 712)) + *(v243 + 72) * v226, *(v0 + 216));
          v245 = sub_1B67D928C();
          *(v0 + 80) = v245;
          type metadata accessor for CKError(0);
          sub_1B6415F9C(&unk_1EB94B9E0, type metadata accessor for CKError, &unk_1B6818FC8);
          sub_1B67D850C();

          v246 = *(v0 + 88);
          if (v246 == 26)
          {
            logc = *(v0 + 720);
            v278 = *(v0 + 716);
            v289 = *(v0 + 248);
            v292 = *(v0 + 224);
            v299 = *(v0 + 216);
            v230 = *(v0 + 144);
            v281 = *(v0 + 136);
            v231 = MEMORY[0x1B8C94550]();
            v232 = [v231 recordID];

            sub_1B67D943C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B798, &qword_1B6818B78);
            v233 = sub_1B67D91DC();
            v234 = *(v233 - 8);
            v235 = (*(v234 + 80) + 32) & ~*(v234 + 80);
            v236 = swift_allocObject();
            *(v236 + 16) = xmmword_1B68100D0;
            v237 = [v232 zoneID];
            v238 = [objc_allocWithZone(MEMORY[0x1E695BA80]) initWithZoneID_];

            *(v236 + v235) = v238;
            (*(v234 + 104))(v236 + v235, v278, v233);
            sub_1B67D940C();

            sub_1B67D943C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7A0, &qword_1B6818B80);
            v239 = (*(v230 + 80) + 32) & ~*(v230 + 80);
            v240 = swift_allocObject();
            *(v240 + 16) = xmmword_1B68100D0;
            *(v240 + v239) = v232;
            (*(v230 + 104))(v240 + v239, logc, v281);
            v241 = v232;
            sub_1B67D941C();

            result = (v292[1].isa)(v289, v299);
          }

          else if (v246 == 14)
          {
            v247 = sub_1B67D928C();
            v248 = sub_1B67D951C();
            *(v0 + 656) = v248;

            if (v248)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A3B0, &qword_1B6810120);
              inited = swift_initStackObject();
              *(v0 + 664) = inited;
              *(inited + 16) = xmmword_1B68100E0;
              *(inited + 32) = v248;
              v277 = v248;
              v177 = swift_task_alloc();
              *(v0 + 672) = v177;
              *v177 = v0;
              v178 = sub_1B64F0F70;
              goto LABEL_53;
            }

            result = (*(*(v0 + 224) + 8))(*(v0 + 248), *(v0 + 216));
          }

          else
          {
            v249 = *(v0 + 248);
            v250 = *(v0 + 232);
            v251 = *(v0 + 216);
            v244(*(v0 + 240), v249, v251);
            v244(v250, v249, v251);
            v252 = sub_1B67D8A7C();
            v253 = sub_1B67D9C8C();
            v254 = os_log_type_enabled(v252, v253);
            v255 = *(v0 + 240);
            v256 = *(v0 + 248);
            v257 = *(v0 + 224);
            v258 = *(v0 + 232);
            v259 = *(v0 + 216);
            if (v254)
            {
              v300 = *(v0 + 248);
              v260 = swift_slowAlloc();
              v293 = v252;
              v261 = swift_slowAlloc();
              *v260 = 138543618;
              v262 = MEMORY[0x1B8C94550]();
              v263 = *(v257 + 8);
              v263(v255, v259);
              *(v260 + 4) = v262;
              *v261 = v262;
              *(v260 + 12) = 2112;
              sub_1B67D928C();
              v264 = _swift_stdlib_bridgeErrorToNSError();
              v263(v258, v259);
              *(v260 + 14) = v264;
              v261[1] = v264;
              _os_log_impl(&dword_1B63EF000, v293, v253, "Failed to save record to cloud, record=%{public}@, error=%@", v260, 0x16u);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A780, &qword_1B6810140);
              swift_arrayDestroy();
              MEMORY[0x1B8C96DF0](v261, -1, -1);
              MEMORY[0x1B8C96DF0](v260, -1, -1);

              result = (v263)(v300, v259);
            }

            else
            {

              v265 = *(v257 + 8);
              v265(v258, v259);
              v265(v255, v259);
              result = (v265)(v256, v259);
            }
          }

          v226 = *(v0 + 648) + 1;
        }

        while (v226 != *(v0 + 632));
      }

      v273 = *(v0 + 488);
      v272 = *(v0 + 496);
      v275 = *(v0 + 264);
      v274 = *(v0 + 272);
      v276 = *(v0 + 256);
      sub_1B645745C(*(v0 + 552), *(v0 + 560));

      sub_1B641FC34(v273, v272);

      (*(v275 + 8))(v274, v276);
    }

    else
    {
      if (v34 != *MEMORY[0x1E695B6A8])
      {
        v33(*(v0 + 472), *(v0 + 104), *(v0 + 448));
        v209 = sub_1B67D8A7C();
        v210 = sub_1B67D9C9C();
        v211 = os_log_type_enabled(v209, v210);
        v213 = *(v0 + 488);
        v212 = *(v0 + 496);
        v214 = *(v0 + 472);
        v216 = *(v0 + 448);
        v215 = *(v0 + 456);
        if (v211)
        {
          v298 = *(v0 + 552);
          v306 = *(v0 + 560);
          v217 = swift_slowAlloc();
          logb = v209;
          v218 = swift_slowAlloc();
          v308[0] = v218;
          *v217 = 136446210;
          sub_1B6415F9C(&qword_1EB94B7E8, MEMORY[0x1E695B6B8], MEMORY[0x1E695B6C0]);
          v288 = v213;
          v291 = v212;
          v219 = sub_1B67DA28C();
          v221 = v220;
          v222 = *(v215 + 8);
          v222(v214, v216);
          v223 = sub_1B6456540(v219, v221, v308);

          *(v217 + 4) = v223;
          _os_log_impl(&dword_1B63EF000, logb, v210, "Will ignore sync engine event, event=%{public}s", v217, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v218);
          MEMORY[0x1B8C96DF0](v218, -1, -1);
          MEMORY[0x1B8C96DF0](v217, -1, -1);
          sub_1B645745C(v298, v306);

          sub_1B641FC34(v288, v291);
        }

        else
        {
          sub_1B645745C(*(v0 + 552), *(v0 + 560));

          sub_1B641FC34(v213, v212);

          v222 = *(v215 + 8);
          v222(v214, v216);
        }

        v222(*(v0 + 480), *(v0 + 448));
        goto LABEL_87;
      }

      v203 = *(v0 + 568);
      sub_1B64B6EA4(sub_1B64F3838, 0, *(v0 + 488), *(v0 + 496), *(v0 + 512), *(v0 + 520), *(v0 + 528), *(v0 + 536));
      v205 = *(v0 + 488);
      v204 = *(v0 + 496);
      v206 = *(v0 + 480);
      v207 = *(v0 + 448);
      v208 = *(v0 + 456);
      sub_1B645745C(*(v0 + 552), *(v0 + 560));

      sub_1B641FC34(v205, v204);
      (*(v208 + 8))(v206, v207);
      if (v203)
      {
        goto LABEL_13;
      }
    }

LABEL_87:

    v64 = *(v0 + 8);
    goto LABEL_88;
  }

  v97 = *(v0 + 480);
  v99 = *(v0 + 360);
  v98 = *(v0 + 368);
  v100 = *(v0 + 352);
  (*(*(v0 + 456) + 96))(v97, *(v0 + 448));
  v101 = (*(v99 + 32))(v98, v97, v100);
  v102 = MEMORY[0x1B8C945D0](v101);
  v103 = *(v102 + 16);
  if (v103)
  {
    v104 = *(v0 + 336);
    v308[0] = MEMORY[0x1E69E7CC0];
    sub_1B67D9FAC();
    v107 = *(v104 + 16);
    v105 = v104 + 16;
    v106 = v107;
    v108 = v102 + ((*(v105 + 64) + 32) & ~*(v105 + 64));
    v109 = *(v105 + 56);
    do
    {
      v110 = *(v0 + 344);
      v111 = *(v0 + 328);
      v112 = v106(v110, v108, v111);
      MEMORY[0x1B8C94E40](v112);
      (*(v105 - 8))(v110, v111);
      sub_1B67D9F7C();
      sub_1B67D9FBC();
      sub_1B67D9FCC();
      sub_1B67D9F8C();
      v108 += v109;
      --v103;
    }

    while (v103);

    inited = v308[0];
  }

  else
  {

    inited = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 576) = inited;
  v177 = swift_task_alloc();
  *(v0 + 584) = v177;
  *v177 = v0;
  v178 = sub_1B64F09C4;
LABEL_53:
  v177[1] = v178;

  return sub_1B64F2FDC(inited);
}