uint64_t sub_1E16051F4()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E1605310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_1E1AF320C();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E16053D8, 0, 0);
}

uint64_t sub_1E16053D8()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
    v3 = v2;
  }

  else
  {
    v4 = [*(*(v0 + 104) + 16) ams_activeiTunesAccount];
    v3 = v4;
    if (!v4)
    {
      v11 = *(v0 + 80);

      goto LABEL_10;
    }

    v1 = *(v0 + 72);
    v2 = v4;
  }

  v5 = *(v0 + 80);
  v6 = v1;
  v7 = v5;

  v8 = v6;
  v9 = [v2 identifier];
  if (v9)
  {
    v10 = v9;
    sub_1E1AF5DEC();
  }

LABEL_10:
  *(v0 + 136) = 0;
  *(v0 + 144) = v3;
  v13 = *(v0 + 96);
  v12 = *(v0 + 104);
  v14 = *(v0 + 80);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v14;
  *(v0 + 48) = v13;
  if (*(v12 + 24) == 1)
  {
    if (qword_1ECEB0EE8 != -1)
    {
      swift_once();
    }

    v15 = off_1ECEB6BA8;
    v16 = swift_task_alloc();
    *(v16 + 16) = v0 + 16;
    v17 = swift_task_alloc();
    v17[2] = sub_1E160882C;
    v17[3] = v16;
    v17[4] = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6BC8, &unk_1E1B1E830);
    sub_1E1AF690C();

    v18 = *(v0 + 56);

    if (v18)
    {

      v19 = *(v0 + 8);

      return v19(v18);
    }

    v21 = swift_task_alloc();
    *(v0 + 152) = v21;
    *v21 = v0;
    v22 = sub_1E16056FC;
  }

  else
  {
    v21 = swift_task_alloc();
    *(v0 + 176) = v21;
    *v21 = v0;
    v22 = sub_1E1605AFC;
  }

  v21[1] = v22;
  v23 = *(v0 + 96);
  v24 = *(v0 + 80);
  v25 = *(v0 + 88);

  return sub_1E1606E84(v3, v24, v25, v23);
}

uint64_t sub_1E16056FC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_1E1605824;
  }

  else
  {
    *(v4 + 168) = a1;
    v5 = sub_1E16058B8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E1605824()
{

  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E16058B8()
{
  v1 = v0[21];
  v13 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v12 = v0[10];
  v5 = off_1ECEB6BA8;
  v6 = swift_task_alloc();
  *(v6 + 16) = v0 + 2;
  *(v6 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40, &unk_1E1B169A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E1B02CC0;

  sub_1E1AF31FC();
  v0[8] = v7;
  sub_1E1302A94(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FE650();
  sub_1E1AF6EEC();
  v8 = swift_task_alloc();
  v8[2] = sub_1E1608848;
  v8[3] = v6;
  v8[4] = v5;
  sub_1E1AF68FC();

  (*(v3 + 8))(v2, v4);

  v9 = v0[21];

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1E1605AFC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_1E1605C24;
  }

  else
  {
    *(v4 + 192) = a1;
    v5 = sub_1E1605CB8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E1605C24()
{

  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E1605CB8()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 192);

  v3 = *(v0 + 8);

  return v3(v2);
}

id sub_1E1605D50(id a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v11 = sub_1E1AF320C();
  v51 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v46 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = v5;
    v15 = a3;
    v16 = a1;
    v17 = a1;
  }

  else
  {
    v18 = [*(v4 + 16) ams_activeiTunesAccount];
    v17 = v18;
    if (!v18)
    {
      v25 = a2;

      v23 = 0;
      goto LABEL_11;
    }

    v14 = v5;
    v15 = a3;
    v16 = v18;
  }

  a1 = a1;
  v19 = a2;

  v20 = a1;
  v21 = [v16 identifier];
  if (!v21)
  {

    v23 = 0;
    a3 = v15;
    v6 = v14;
LABEL_11:
    v24 = 0;
    goto LABEL_12;
  }

  v48 = 0;
  v49 = 0;
  a1 = v21;
  sub_1E1AF5DEC();

  v23 = v48;
  if (!v49)
  {
    v23 = 0;
  }

  a3 = v15;
  v6 = v14;
  v24 = v49;
LABEL_12:
  v50[0] = v23;
  v50[1] = v24;
  v50[2] = a2;
  v50[3] = a3;
  v50[4] = a4;
  if (*(v4 + 24) != 1)
  {
    v29 = sub_1E1606504(v17, a2, a3, a4);
    if (!v6)
    {
      a1 = v29;

      return a1;
    }

LABEL_20:

    return a1;
  }

  v43 = v11;
  v44 = a3;
  v47 = v17;
  v45 = v4;
  if (qword_1ECEB0EE8 != -1)
  {
    v22 = swift_once();
  }

  v26 = off_1ECEB6BA8;
  MEMORY[0x1EEE9AC00](v22);
  v40[-2] = v50;
  MEMORY[0x1EEE9AC00](v27);
  v40[-4] = sub_1E1608A44;
  v40[-3] = v28;
  v40[-2] = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6BC8, &unk_1E1B1E830);
  sub_1E1AF690C();

  a1 = v48;
  if (!v48)
  {
    v17 = v47;
    v30 = sub_1E1606504(v47, a2, v44, a4);
    if (!v6)
    {
      a1 = v30;
      v45 = v40;
      v32 = off_1ECEB6BA8;
      MEMORY[0x1EEE9AC00](v30);
      v41 = v32;
      v42 = &v40[-4];
      v40[-2] = v50;
      v40[-1] = v33;
      v44 = v32[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40, &unk_1E1B169A0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1E1B02CC0;

      sub_1E1AF31FC();
      v48 = v34;
      sub_1E1302A94(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
      sub_1E13FE650();
      v35 = v46;
      v36 = v43;
      v37 = sub_1E1AF6EEC();
      v40[1] = v40;
      MEMORY[0x1EEE9AC00](v37);
      v39 = v41;
      v38 = v42;
      v40[-4] = sub_1E1608A6C;
      v40[-3] = v38;
      v40[-2] = v39;
      sub_1E1AF68FC();

      (*(v51 + 8))(v35, v36);

      return a1;
    }

    goto LABEL_20;
  }

  return a1;
}

uint64_t sub_1E16062B0(void *a1, uint64_t a2, void *a3)
{
  v6 = *a2;
  v7 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = v6;
  sub_1E16087BC(&v14, v12);
  v8 = v7;
  sub_1E15A42EC(&v13, v12);
  v9 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *a1;
  sub_1E159B064(v9, a2, isUniquelyReferenced_nonNull_native);
  sub_1E1308058(&v14, &unk_1ECEB5D40, &unk_1E1B02B90);

  result = sub_1E1455104(&v13);
  *a1 = v12[0];
  return result;
}

unint64_t sub_1E1606378@<X0>(unint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16) && (result = sub_1E1595B78(a2), (v5 & 1) != 0))
  {
    v6 = *(*(v4 + 56) + 8 * result);
    result = v6;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1E16063C8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E160643C(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

void sub_1E1606490(BOOL *a2@<X8>)
{
  v3 = sub_1E1AF72FC();

  *a2 = v3 != 0;
}

id sub_1E1606504(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v51 = a2;
  v6 = sub_1E1AF591C();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v49 - v9;
  v10 = objc_opt_self();
  v11 = sub_1E1AF5DBC();
  v12 = *(v4 + 32);
  v54 = OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag;
  v55 = v12;
  v13 = sub_1E1AF527C();
  v53 = a1;
  v14 = [v10 identifierStoreWithAccount:a1 bagNamespace:v11 bag:v13];

  swift_unknownObjectRelease();
  v15 = [v14 promiseWithTimeout_];

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v49 = (v16 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = dispatch_semaphore_create(1);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  v65 = sub_1E1608740;
  v66 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1E164F7D4;
  ObjectType = &block_descriptor_17;
  v20 = _Block_copy(&aBlock);
  v56 = v17;

  v21 = v18;

  [v15 addErrorBlock_];
  _Block_release(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  *(v22 + 24) = v21;
  v65 = sub_1E1608760;
  v66 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1E1367148;
  ObjectType = &block_descriptor_23;
  v23 = _Block_copy(&aBlock);
  v24 = v21;
  v57 = v16;

  v58 = v15;
  v25 = v15;
  v26 = v24;
  [v25 addSuccessBlock_];
  _Block_release(v23);
  sub_1E1AF6A9C();
  swift_beginAccess();
  v27 = *(v17 + 16);
  if (v27)
  {
    v28 = v27;
    if (qword_1ECEB0EE0 != -1)
    {
      swift_once();
    }

    v29 = v60;
    v30 = __swift_project_value_buffer(v60, qword_1ECEB6B90);
    v31 = v52;
    (*(v59 + 16))(v52, v30, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    sub_1E1AF382C();
    v32 = v53;
    if (v53)
    {
      v33 = sub_1E13006E4(0, &unk_1ECEB8490, 0x1E6959A28);
      v34 = v32;
    }

    else
    {
      v34 = 0;
      v33 = 0;
      v62 = 0;
      v63 = 0;
    }

    aBlock = v34;
    ObjectType = v33;
    v39 = v32;
    sub_1E1AF383C();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF382C();
    v40 = sub_1E1AF527C();
    ObjectType = swift_getObjectType();
    aBlock = v40;
    sub_1E1AF383C();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v38 = v60;
    sub_1E1AF54AC();

    (*(v59 + 8))(v31, v38);
LABEL_10:
    swift_willThrow();

    return v38;
  }

  v35 = v51;
  v36 = v50;
  v37 = v49;
  swift_beginAccess();
  if (!*v37)
  {
    if (qword_1ECEB0EE0 != -1)
    {
      swift_once();
    }

    v42 = v60;
    v43 = __swift_project_value_buffer(v60, qword_1ECEB6B90);
    (*(v59 + 16))(v36, v43, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    sub_1E1AF382C();
    v44 = v53;
    if (v53)
    {
      v45 = sub_1E13006E4(0, &unk_1ECEB8490, 0x1E6959A28);
      v46 = v44;
    }

    else
    {
      v46 = 0;
      v45 = 0;
      v62 = 0;
      v63 = 0;
    }

    aBlock = v46;
    ObjectType = v45;
    v47 = v44;
    sub_1E1AF383C();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF382C();
    v48 = sub_1E1AF527C();
    ObjectType = swift_getObjectType();
    aBlock = v48;
    sub_1E1AF383C();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v38 = v60;
    sub_1E1AF54AC();

    (*(v59 + 8))(v36, v38);
    sub_1E1608768();
    swift_allocError();
    goto LABEL_10;
  }

  v38 = *v37;
  [v38 setIncludeAccountMatchStatus_];
  [v38 setIsActiveITunesAccountRequired_];

  return v38;
}

uint64_t sub_1E1606DC0(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  v5 = a1;
  return sub_1E1AF6AAC();
}

uint64_t sub_1E1606E24(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  v5 = a1;
  return sub_1E1AF6AAC();
}

uint64_t sub_1E1606E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  v6 = sub_1E1AF591C();
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E1606F4C, 0, 0);
}

uint64_t sub_1E1606F4C()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = objc_opt_self();
  v4 = sub_1E1AF5DBC();
  v5 = OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag;
  v0[35] = *(v1 + 32);
  v0[36] = v5;
  v6 = [v3 identifierStoreWithAccount:v2 bagNamespace:v4 bag:sub_1E1AF527C()];
  v0[37] = v6;
  swift_unknownObjectRelease();

  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_1E16070F4;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6BB8, &unk_1E1B1E820);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E160758C;
  v0[13] = &block_descriptor_35;
  v0[14] = v7;
  [v6 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E16070F4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_1E16072C0;
  }

  else
  {
    v2 = sub_1E1607204;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1607204()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);

  [v2 setIncludeAccountMatchStatus_];
  [v2 setIsActiveITunesAccountRequired_];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1E16072C0(uint64_t a1)
{
  v2 = v1[37];
  swift_willThrow();

  if (qword_1ECEB0EE0 != -1)
  {
    swift_once();
  }

  v4 = v1[33];
  v3 = v1[34];
  v5 = v1[32];
  v6 = v1[27];
  v7 = __swift_project_value_buffer(v5, qword_1ECEB6B90);
  (*(v4 + 16))(v3, v7, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  sub_1E1AF382C();
  if (v6)
  {
    v8 = sub_1E13006E4(0, &unk_1ECEB8490, 0x1E6959A28);
    v9 = v1[27];
    v10 = v9;
  }

  else
  {
    v10 = 0;
    v8 = 0;
    v1[19] = 0;
    v1[20] = 0;
    v9 = v1[27];
  }

  v12 = v1[33];
  v11 = v1[34];
  v13 = v1[32];
  v1[18] = v10;
  v1[21] = v8;
  v14 = v9;
  sub_1E1AF383C();
  sub_1E1308058((v1 + 18), &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  v15 = sub_1E1AF527C();
  v1[25] = swift_getObjectType();
  v1[22] = v15;
  sub_1E1AF383C();
  sub_1E1308058((v1 + 22), &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF54AC();

  (*(v12 + 8))(v11, v13);
  swift_willThrow();

  v16 = v1[1];

  return v16();
}

uint64_t sub_1E160758C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0, qword_1E1B05740);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t MetricsIdStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1E16076CC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E1608068(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
  }

  return result;
}

void sub_1E16076FC(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1E137A5C4(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_1E1301CF0(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_1E1308058(v20, &qword_1ECEB6BF0, &unk_1E1B1E870);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

double sub_1E160785C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1E137A5C4((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

double sub_1E16078A8@<D0>(void (*a1)(__int128 *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(a2 + 24);

  a1(&v8, &v7);

  result = *&v8;
  *a3 = v8;
  return result;
}

uint64_t sub_1E160793C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[39] = a4;
  v5[40] = a5;
  v5[38] = a3;
  v9 = a3;

  v10 = swift_task_alloc();
  v5[41] = v10;
  *v10 = v5;
  v10[1] = sub_1E1607A18;

  return sub_1E1605310(a2, v9, a4, a5);
}

uint64_t sub_1E1607A18(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 336) = a1;

  if (v1)
  {
    v5 = *(v3 + 304);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E1607B70, 0, 0);
  }
}

_OWORD *sub_1E1607B70()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170, &qword_1E1B06D90);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E1B06D70;
  *(v3 + 32) = v2;
  sub_1E13006E4(0, &qword_1EE1E3390, 0x1E698CA18);
  v4 = sub_1E1AF620C();

  v5 = [v1 generateEventFieldsForKeys_];

  v6 = sub_1E1AF5C7C();
  v7 = sub_1E1303A74(MEMORY[0x1E69E7CC0]);
  v8 = 0;
  v9 = -1;
  v10 = -1 << *(v6 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v6 + 64);
  v12 = (63 - v10) >> 6;
  while (1)
  {
    v13 = v8;
    if (!v11)
    {
      break;
    }

LABEL_8:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = v14 | (v8 << 6);
    sub_1E134E724(*(v6 + 48) + 40 * v15, v0 + 16);
    sub_1E137A5C4(*(v6 + 56) + 32 * v15, v0 + 56);
    v16 = *(v0 + 32);
    *(v0 + 88) = *(v0 + 16);
    *(v0 + 104) = v16;
    *(v0 + 120) = *(v0 + 48);
    sub_1E1301CF0((v0 + 56), (v0 + 128));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4948, &unk_1E1B0F440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5F80, &qword_1E1B192E0);
    if (swift_dynamicCast())
    {
      v17 = *(v0 + 160);
      v18 = *(v0 + 168);
      sub_1E1301CF0((v0 + 176), (v0 + 208));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v18;
      v45 = v17;
      v20 = sub_1E13018F8(v17, v18);
      v21 = v7[2];
      v22 = (v19 & 1) == 0;
      result = (v21 + v22);
      if (__OFADD__(v21, v22))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        return result;
      }

      if (v7[3] >= result)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v19 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v47 = v19;
          sub_1E14154D8();
          if ((v47 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

LABEL_17:

        v27 = (v7[7] + 32 * v20);
        __swift_destroy_boxed_opaque_existential_1(v27);
        sub_1E1301CF0((v0 + 208), v27);
      }

      else
      {
        v24 = v19;
        sub_1E168807C(result, isUniquelyReferenced_nonNull_native);
        v25 = sub_1E13018F8(v45, v48);
        if ((v24 & 1) != (v26 & 1))
        {
LABEL_33:

          return sub_1E1AF757C();
        }

        v20 = v25;
        if (v24)
        {
          goto LABEL_17;
        }

LABEL_19:
        v7[(v20 >> 6) + 8] |= 1 << v20;
        v28 = (v7[6] + 16 * v20);
        *v28 = v45;
        v28[1] = v48;
        result = sub_1E1301CF0((v0 + 208), (v7[7] + 32 * v20));
        v29 = v7[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_37;
        }

        v7[2] = v31;
      }
    }

    else
    {
      *(v0 + 176) = 0u;
      *(v0 + 192) = 0u;
      *(v0 + 160) = 0u;
      sub_1E1308058(v0 + 160, &qword_1ECEB6BE8, &qword_1E1B1E868);
    }
  }

  while (1)
  {
    v8 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v8 >= v12)
    {
      break;
    }

    v11 = *(v6 + 64 + 8 * v8);
    ++v13;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  v32 = *(v0 + 304);

  v33 = [v32 name];
  v34 = sub_1E1AF5DFC();
  v36 = v35;

  if (v34 == 0x644972657375 && v36 == 0xE600000000000000)
  {

    goto LABEL_28;
  }

  v38 = sub_1E1AF74AC();

  if (v38)
  {
LABEL_28:
    v40 = *(v0 + 336);
    v42 = *(v0 + 312);
    v41 = *(v0 + 320);
    *(v0 + 264) = MEMORY[0x1E69E6158];
    *(v0 + 240) = v42;
    *(v0 + 248) = v41;
    sub_1E1301CF0((v0 + 240), (v0 + 272));
    v43 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C((v0 + 272), 0x734E72657375, 0xE600000000000000, v43);

    goto LABEL_29;
  }

  v39 = *(v0 + 336);

LABEL_29:
  v44 = *(v0 + 8);

  return v44(v7);
}

void *sub_1E1608068(char *a1, uint64_t a2)
{
  v39 = a2;
  v3 = sub_1E1AF380C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  sub_1E1AF381C();
  v15 = sub_1E1AF37CC();
  v17 = v16;
  v18 = *(v4 + 8);
  v18(v14, v3);
  if (!v17)
  {
    v20 = 0xE400000000000000;
    v19 = 1701667182;
    v22 = a1;
LABEL_11:
    v28 = sub_1E1AF5A7C();
    sub_1E1302A94(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v29 = v19;
    v29[1] = v20;
    v29[2] = &type metadata for MetricsIdentifierKeyContext;
    (*(*(v28 - 1) + 104))(v29, *MEMORY[0x1E69AB690], v28);
    swift_willThrow();
    v30 = sub_1E1AF39DC();
    (*(*(v30 - 8) + 8))(v39, v30);
    v18(v22, v3);
    return v28;
  }

  v36 = v15;
  v38 = v17;
  v19 = 0x6E795373736F7263;
  v20 = 0xEF65636976654463;
  sub_1E1AF381C();
  v35 = sub_1E1AF370C();
  v21 = v35;
  v18(v11, v3);
  if (v21 == 2)
  {
    v22 = a1;
LABEL_10:

    goto LABEL_11;
  }

  v19 = 0x73656D614E676162;
  v20 = 0xEC00000065636170;
  sub_1E1AF381C();
  v34 = sub_1E1AF37CC();
  v24 = v23;
  v18(v8, v3);
  v25 = v3;
  v22 = a1;
  if (!v24)
  {
    goto LABEL_10;
  }

  v26 = v37;
  sub_1E1AF381C();
  v27 = sub_1E1AF370C();
  v18(v26, v3);
  if (v27 == 2)
  {
    if (v36 == 0x644972657375 && v38 == 0xE600000000000000)
    {
      v27 = 1;
    }

    else
    {
      v27 = sub_1E1AF74AC();
    }
  }

  v32 = sub_1E1AF5DBC();

  v28 = [objc_opt_self() keyWithName:v32 crossDeviceSync:v35 & 1 isActiveITunesAccountRequired:v27 & 1];

  v33 = sub_1E1AF39DC();
  (*(*(v33 - 8) + 8))(v39, v33);
  v18(a1, v25);
  return v28;
}

uint64_t sub_1E1608528(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0, &unk_1E1B0F2C0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-v8];
  *(v3 + 16) = a1;
  *(v3 + 32) = a2;
  v10 = qword_1EE1E2ED8;
  v11 = a1;

  if (v10 != -1)
  {
    swift_once();
  }

  sub_1E1AF52FC();
  sub_1E1AF532C();
  (*(v7 + 8))(v9, v6);
  *(v3 + 24) = v14[15];
  v12 = [objc_opt_self() defaultCenter];
  [v12 addObserver:v3 selector:sel_storeAccountDidChange name:*MEMORY[0x1E69597D8] object:v11];

  return v3;
}

unint64_t sub_1E1608768()
{
  result = qword_1ECEB6BC0;
  if (!qword_1ECEB6BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6BC0);
  }

  return result;
}

uint64_t sub_1E16087BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40, &unk_1E1B02B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E16088E0(uint64_t a1, int a2)
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

uint64_t sub_1E1608928(uint64_t result, int a2, int a3)
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

unint64_t sub_1E1608994()
{
  result = qword_1ECEB6C00;
  if (!qword_1ECEB6C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6C00);
  }

  return result;
}

unint64_t sub_1E16089EC()
{
  result = qword_1EE1E18F0;
  if (!qword_1EE1E18F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E18F0);
  }

  return result;
}

uint64_t SelectAppAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v27 = *v3;
  v31 = sub_1E1AF39DC();
  v35 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v33 = a1;
  sub_1E1AF381C();
  v13 = sub_1E1AF37CC();
  v15 = v14;
  v16 = *(v7 + 8);
  v34 = v6;
  v16(v12, v6);
  if (v15)
  {
    v17 = (v30 + OBJC_IVAR____TtC11AppStoreKit15SelectAppAction_adamId);
    *v17 = v13;
    v17[1] = v15;
    v18 = v33;
    (*(v7 + 16))(v9, v33, v34);
    v6 = v28;
    v20 = v31;
    v19 = v32;
    (*(v35 + 16))(v28, v32, v31);
    v21 = v29;
    v22 = Action.init(deserializing:using:)(v9, v6);
    if (!v21)
    {
      v6 = v22;
    }

    (*(v35 + 8))(v19, v20);
    v16(v18, v34);
  }

  else
  {
    v23 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v24 = 0x64496D616461;
    v25 = v27;
    v24[1] = 0xE600000000000000;
    v24[2] = v25;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x1E69AB690], v23);
    swift_willThrow();
    (*(v35 + 8))(v32, v31);
    v16(v33, v34);
    swift_deallocPartialClassInstance();
  }

  return v6;
}

double SelectAppAction.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit15SelectAppAction_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit15SelectAppAction_adamId);
  a1[1] = v2;

  return result;
}

uint64_t SelectAppAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return v0;
}

uint64_t SelectAppAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SelectAppAction(uint64_t a1)
{
  result = qword_1EE1F98C8;
  if (!qword_1EE1F98C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E1609178(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t (*a7)(void *), uint64_t a8)
{
  v48 = a7;
  v46 = a6;
  v47 = *&a4;
  v50 = a3;
  v51 = a1;
  v45 = sub_1E1AF364C();
  v11 = *(v45 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF48CC();
  v44 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  if ((a5 & 1) == 0 && v47 > COERCE_DOUBLE(1))
  {
    v18 = *(v11 + 16);
    v43 = a2;
    v19 = v45;
    v18(v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v50, v45);
    v20 = *(v11 + 80);
    v42[1] = a8;
    v21 = (v20 + 32) & ~v20;
    v42[0] = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v23 = v47;
    *(v22 + 16) = v17;
    *(v22 + 24) = v23;
    v24 = v19;
    a2 = v43;
    (*(v11 + 32))(v22 + v21, v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
    v25 = v51;
    *(v22 + v42[0]) = v51;

    v26 = v25;
    sub_1E1AF48DC();

    (*(v44 + 8))(v16, v14);
  }

  v27 = v49;
  v49 = v48(v51);
  if (v27)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80, &unk_1E1B02B80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1E1B02CC0;
    v29 = sub_1E1434AFC();
    v30 = MEMORY[0x1E68FF960](v27, v51);
    *(v28 + 56) = v29;
    *(v28 + 32) = v30;
    v31 = sub_1E1AF363C();
  }

  else
  {
    v32 = *(v11 + 16);
    v33 = a2;
    v34 = v45;
    v32(v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v45);
    v48 = 0;
    v35 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    *&v36 = COERCE_DOUBLE(swift_allocObject());
    v47 = *&v36;
    *(v36 + 16) = v17;
    v44 = v17;
    v37 = *(v11 + 32);
    v37(v36 + v35, v13, v34);
    v32(v13, v50, v34);
    v38 = (v35 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    *(v39 + 16) = v44;
    v37(v39 + v35, v13, v34);
    v40 = v51;
    *(v39 + v38) = v51;
    v52[3] = sub_1E1AF490C();
    v52[4] = MEMORY[0x1E69AB298];
    v52[0] = v46;
    swift_retain_n();
    v41 = v40;

    sub_1E1AF57FC();

    __swift_destroy_boxed_opaque_existential_1(v52);
  }
}

void sub_1E1609614(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    v14 = a4;
    if (qword_1EE1E35B0 != -1)
    {
      swift_once();
    }

    v7 = sub_1E1AF591C();
    __swift_project_value_buffer(v7, qword_1EE216158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B03760;
    sub_1E1AF382C();
    sub_1E1AF382C();
    v15[3] = MEMORY[0x1E69E63B0];
    *v15 = a2;
    sub_1E1AF38BC();
    sub_1E13E44F8(v15);
    sub_1E1AF54AC();

    swift_beginAccess();
    *(a1 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80, &unk_1E1B02B80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1E1B02CC0;
    v9 = sub_1E1434AFC();
    sub_1E13EB930();
    v10 = swift_allocError();
    *v11 = 1;
    v12 = MEMORY[0x1E68FF960](v10, v14);

    *(v8 + 56) = v9;
    *(v8 + 32) = v12;
    v13 = sub_1E1AF363C();
  }
}

void sub_1E16099B0(void **a1, uint64_t a2)
{
  v3 = *a1;
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80, &unk_1E1B02B80);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1E1B02CC0;
    *(v4 + 56) = sub_1E1434AFC();
    *(v4 + 32) = v3;
    v5 = v3;
    v6 = sub_1E1AF363C();
  }
}

void sub_1E1609C54(void **a1)
{
  sub_1E1AF364C();
  v3 = *(v1 + 16);

  sub_1E16099B0(a1, v3);
}

void sub_1E1609CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80, &unk_1E1B02B80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1E1B02CC0;
    v8 = sub_1E1434AFC();
    v9 = MEMORY[0x1E68FF960](a1, a4);
    *(v7 + 56) = v8;
    *(v7 + 32) = v9;
    v10 = sub_1E1AF363C();
  }
}

void sub_1E1609F80(uint64_t a1)
{
  v3 = *(sub_1E1AF364C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1E1609CC8(a1, v5, v1 + v4, v6);
}

void sub_1E160A020()
{
  v1 = *(sub_1E1AF364C() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1E1609614(v3, v4, v0 + v2, v5);
}

unint64_t sub_1E160A0C8()
{
  result = qword_1ECEB6C08;
  if (!qword_1ECEB6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6C08);
  }

  return result;
}

uint64_t FramedMediaLayout.init(metrics:mediaView:captionView:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for FramedMediaLayout(0);
  sub_1E160A1AC(a1, a4 + *(v8 + 24));
  sub_1E1308EC0(a2, a4);

  return sub_1E1308EC0(a3, a4 + 40);
}

uint64_t sub_1E160A1AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FramedMediaLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FramedMediaLayout.Metrics.init(mediaAspectRatio:mediaMaxHeight:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E1AF127C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for FramedMediaLayout.Metrics(0) + 20);

  return sub_1E1308EC0(a2, v7);
}

uint64_t FramedMediaLayout.Metrics.mediaAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF127C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FramedMediaLayout.Metrics.mediaAspectRatio.setter(uint64_t a1)
{
  v3 = sub_1E1AF127C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FramedMediaLayout.Metrics.mediaMaxHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for FramedMediaLayout.Metrics(0) + 20);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t FramedMediaLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FramedMediaLayout(0) + 24);

  return sub_1E160A508(v3, a1);
}

uint64_t sub_1E160A508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FramedMediaLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double FramedMediaLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v5 = sub_1E1AF745C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm((v3 + 40), *(v3 + 64));
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm((v3 + 40), *(v3 + 64));
  sub_1E1AF117C();
  v9 = v3 + *(type metadata accessor for FramedMediaLayout(0) + 24);
  sub_1E1AF123C();
  v10 = (v9 + *(type metadata accessor for FramedMediaLayout.Metrics(0) + 20));
  v11 = v10[3];
  __swift_project_boxed_opaque_existential_1Tm(v10, v11);
  sub_1E13BC274(v11);
  sub_1E1AF12DC();
  (*(v6 + 8))(v8, v5);
  return a2;
}

uint64_t FramedMediaLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = sub_1E1AF745C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v5 + 5, v5[8]);
  if ((sub_1E1AF117C() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1Tm(v5 + 5, v5[8]);
    sub_1E1AF11CC();
  }

  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetWidth(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetHeight(v21);
  v15 = v5 + *(type metadata accessor for FramedMediaLayout(0) + 24);
  sub_1E1AF123C();
  v16 = &v15[*(type metadata accessor for FramedMediaLayout.Metrics(0) + 20)];
  v17 = *(v16 + 3);
  __swift_project_boxed_opaque_existential_1Tm(v16, v17);
  sub_1E13BC274(v17);
  sub_1E1AF12DC();
  (*(v12 + 8))(v14, v11);
  __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetWidth(v22);
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm(v6 + 5, v6[8]);
  __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
  sub_1E1AF115C();
  CGRectGetMaxY(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetWidth(v24);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetHeight(v25);
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
  sub_1E1AF115C();
  CGRectGetHeight(v26);
  __swift_project_boxed_opaque_existential_1Tm(v6 + 5, v6[8]);
  sub_1E1AF115C();
  CGRectGetHeight(v27);
  return sub_1E1AF106C();
}

double sub_1E160AAAC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = sub_1E1AF745C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm((v4 + 40), *(v4 + 64));
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm((v4 + 40), *(v4 + 64));
  sub_1E1AF117C();
  v11 = v4 + *(a2 + 24);
  sub_1E1AF123C();
  v12 = (v11 + *(type metadata accessor for FramedMediaLayout.Metrics(0) + 20));
  v13 = v12[3];
  __swift_project_boxed_opaque_existential_1Tm(v12, v13);
  sub_1E13BC274(v13);
  sub_1E1AF12DC();
  (*(v8 + 8))(v10, v7);
  return a3;
}

uint64_t sub_1E160ACD8(uint64_t a1)
{
  result = sub_1E138432C(319, &qword_1EE1D2AE0, MEMORY[0x1E69AB888]);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FramedMediaLayout.Metrics(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E160AD94(uint64_t a1)
{
  result = sub_1E1AF127C();
  if (v2 <= 0x3F)
  {
    result = sub_1E138432C(319, &qword_1EE1D2AC0, MEMORY[0x1E69AB8E8]);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E160AE50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E160AE98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1E160AEF4(uint64_t a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  result = [v4 valueWithNewObjectInContext_];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  v21 = *(v2 + 16);
  v19 = *(v2 + 16);
  sub_1E15A42EC(&v21, v20);
  v7 = v6;
  v8 = &selRef_remoteDownloadIdentifiersDidChange_;
  v9 = [v4 valueWithObject:sub_1E1AF755C() inContext:a1];
  result = swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1E1AF6C5C();
  LOBYTE(v19) = *(v2 + 32);
  v10 = [v4 valueWithObject:sub_1E1AF755C() inContext:a1];
  result = swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1E1AF6C5C();
  *&v19 = *(v2 + 40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
  v11 = [v4 valueWithObject:sub_1E1AF755C() inContext:a1];
  result = swift_unknownObjectRelease();
  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1E1AF6C5C();
  v12 = *(v2 + 48);
  v13 = *(v12 + 16);
  if (v13)
  {
    v18 = v4;
    v14 = sub_1E1545A54(v13, 0);
    v15 = sub_1E1546A64(&v19, v14 + 4, v13, v12);
    v16 = v19;

    result = sub_1E1337ECC(v16);
    if (v15 == v13)
    {
      v4 = v18;
      v8 = &selRef_remoteDownloadIdentifiersDidChange_;
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_12;
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_9:
  *&v19 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10, &unk_1E1B04970);
  v17 = [v4 v8[3]];
  result = swift_unknownObjectRelease();
  if (v17)
  {
    sub_1E1AF6C5C();

    return v7;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1E160B204()
{
  result = qword_1ECEB6C30;
  if (!qword_1ECEB6C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6C30);
  }

  return result;
}

uint64_t LockupContextMenuData.__allocating_init(shareSheetData:shareAction:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t LockupContextMenuData.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LockupContextMenuData.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *LockupContextMenuData.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v24[1] = *v4;
  v25 = v3;
  v7 = sub_1E1AF39DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF380C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v24[0] = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  v27 = a1;
  sub_1E1AF381C();
  v17 = *(v8 + 16);
  v26 = a2;
  v17(v10, a2, v7);
  type metadata accessor for ShareSheetData(0);
  swift_allocObject();
  v18 = v25;
  v19 = ShareSheetData.init(deserializing:using:)(v16, v10);
  if (v18)
  {
    (*(v8 + 8))(v26, v7);
    (*(v12 + 8))(v27, v11);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v4[2] = v19;
    type metadata accessor for Action(0);
    v20 = v24[0];
    sub_1E1AF381C();
    v22 = static Action.makeInstance(byDeserializing:using:)(v20, v26);
    (*(v8 + 8))(v26, v7);
    v23 = *(v12 + 8);
    v23(v27, v11);
    v23(v20, v11);
    v4[3] = v22;
  }

  return v4;
}

uint64_t LockupContextMenuData.init(shareSheetData:shareAction:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t LockupContextMenuData.deinit()
{

  return v0;
}

uint64_t LockupContextMenuData.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t *sub_1E160B6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = LockupContextMenuData.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t _s11AppStoreKit21LockupContextMenuDataC6adamId3url5title4icon014isMessagesOnlyA0AcA04AdamI0V_10Foundation3URLVSSAA7ArtworkCSbtcfC_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v75 = a6;
  v76 = a5;
  v74 = a4;
  v73 = a3;
  v78 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v77 = &v66 - v8;
  v68 = sub_1E1AEFEAC();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v72 = &v66 - v11;
  v12 = sub_1E1AF45FC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v71 = sub_1E1AF3E1C();
  v13 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v80 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v66 - v16;
  v70 = sub_1E1AF3ABC();
  v17 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v79 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[1];
  v82 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7220, &qword_1E1B0E110);
  v20 = sub_1E1AF523C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1E1B02CD0;
  v25 = v24 + v23;
  v26 = qword_1EE1E3680;
  v83 = v19;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v20, qword_1EE1E3688);
  v28 = *(v21 + 16);
  v28(v25, v27, v20);
  if (qword_1EE1E3708 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v20, qword_1EE1E3710);
  v28(v25 + v22, v29, v20);
  v30 = sub_1E1498AF4(v24);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v31 = MEMORY[0x1E69E7CC0];
  v32 = sub_1E1584724(MEMORY[0x1E69E7CC0]);
  type metadata accessor for ClickMetricsEvent();
  inited = swift_initStackObject();
  inited[6] = 0x70756B636F6CLL;
  inited[7] = 0xE600000000000000;
  v34 = v83;
  inited[4] = v82;
  inited[5] = v34;
  v35 = MEMORY[0x1E69E7CD0];
  inited[8] = v30;
  inited[9] = v35;
  inited[2] = v32;
  inited[3] = v31;
  v36 = v79;
  sub_1E1560214();
  swift_setDeallocating();
  ClickMetricsEvent.__deallocating_deinit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBD7F0, &qword_1E1B1EE90);
  v37 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1E1B02CC0;
  v39 = v70;
  (*(v17 + 16))(v38 + v37, v36, v70);
  sub_1E1AF45EC();
  v40 = v81;
  sub_1E1AF3E0C();
  v91 = 0;
  memset(v90, 0, sizeof(v90));
  v69 = v13;
  v41 = *(v13 + 16);
  v42 = v80;
  v43 = v71;
  v41(v80, v40, v71);
  v44 = sub_1E1AF46DC();
  v45 = v72;
  (*(*(v44 - 8) + 56))(v72, 1, 1, v44);
  type metadata accessor for BlankAction(0);
  v46 = swift_allocObject();
  sub_1E134FD1C(v90, v89, &unk_1ECEB5670, qword_1E1B03EC0);
  v41((v46 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics), v42, v43);
  sub_1E134FD1C(v45, v46 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  v47 = (v46 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v47 = 0u;
  v47[1] = 0u;
  v48 = v46 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E134FD1C(v89, &v86, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v87 + 1))
  {
    v49 = v87;
    *v48 = v86;
    *(v48 + 16) = v49;
    *(v48 + 32) = v88;
  }

  else
  {
    v50 = v66;
    sub_1E1AEFE9C();
    v51 = sub_1E1AEFE7C();
    v53 = v52;
    (*(v67 + 8))(v50, v68);
    v84 = v51;
    v85 = v53;
    sub_1E1AF6F6C();
    sub_1E1308058(&v86, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v54 = v75;
  sub_1E1308058(v89, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v45, &unk_1ECEB1770, &unk_1E1AFED20);
  v55 = *(v69 + 8);
  v55(v80, v43);
  sub_1E1308058(v90, &unk_1ECEB5670, qword_1E1B03EC0);
  v55(v81, v43);
  (*(v17 + 8))(v79, v39);
  *(v46 + 16) = 0u;
  *(v46 + 32) = 0u;
  if (v54)
  {
    v56 = v76;

    v57 = v56;
  }

  else
  {
    v57 = 0;
    v56 = v76;
  }

  type metadata accessor for ShareSheetProductMetadata();
  v58 = swift_allocObject();
  v59 = v83;
  *(v58 + 16) = v82;
  *(v58 + 24) = v59;
  *(v58 + 32) = 0;
  *(v58 + 40) = 0;
  v60 = v74;
  *(v58 + 48) = v73;
  *(v58 + 56) = v60;
  *(v58 + 64) = 0u;
  *(v58 + 80) = 0u;
  *(v58 + 104) = 0;
  *(v58 + 112) = 0;
  *(v58 + 96) = v56;
  *(v58 + 120) = v54 & 1;
  *(v58 + 128) = v57;
  *(v58 + 136) = 0;
  v61 = sub_1E1AEFCCC();
  v62 = *(v61 - 8);
  v63 = v77;
  (*(v62 + 56))(v77, 1, 1, v61);
  type metadata accessor for ShareSheetData(0);
  v64 = swift_allocObject();
  (*(v62 + 32))(v64 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_url, v78, v61);
  sub_1E13E23F8(v63, v64 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_shortUrl);
  *(v64 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_metadata) = v58 | 0x4000000000000000;
  type metadata accessor for LockupContextMenuData();
  result = swift_allocObject();
  *(result + 16) = v64;
  *(result + 24) = v46;
  return result;
}

uint64_t Conditional.description.getter()
{
  v1 = *v0;
  strcpy(v4, "Conditional(");
  BYTE5(v4[1]) = 0;
  HIWORD(v4[1]) = -5120;
  v2 = (*(*v1 + 96))();
  MEMORY[0x1E68FECA0](v2);

  MEMORY[0x1E68FECA0](41, 0xE100000000000000);
  return v4[0];
}

uint64_t Conditional.debugDescription.getter(uint64_t a1)
{
  v2 = *v1;
  sub_1E1AF6FEC();

  strcpy(v8, "Conditional<");
  BYTE5(v8[1]) = 0;
  HIWORD(v8[1]) = -5120;
  v3 = sub_1E1AF772C();
  MEMORY[0x1E68FECA0](v3);

  MEMORY[0x1E68FECA0](8236, 0xE200000000000000);
  v4 = sub_1E1AF772C();
  MEMORY[0x1E68FECA0](v4);

  v5 = MEMORY[0x1E68FECA0](10302, 0xE200000000000000);
  v6 = (*(*v2 + 96))(v5);
  MEMORY[0x1E68FECA0](v6);

  MEMORY[0x1E68FECA0](41, 0xE100000000000000);
  return v8[0];
}

uint64_t sub_1E160C4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

int *ArcadePageIntent.init(url:isSubscribed:isTrialAvailable:isTrialEnrolled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_1E1AEFCCC();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for ArcadePageIntent(0);
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t type metadata accessor for ArcadePageIntent(uint64_t a1)
{
  result = qword_1EE1DF360;
  if (!qword_1EE1DF360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

JSValue __swiftcall ArcadePageIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result.super.isa;
  v9 = sub_1E1AEFBDC();
  v7 = [v3 valueWithObject:sub_1E1AF755C() inContext:{in.super.isa, v9, v6}];
  result.super.isa = swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1E1AF6C5C();
  v8 = type metadata accessor for ArcadePageIntent(0);
  result.super.isa = [v3 valueWithBool:*(v1 + v8[5]) inContext:in.super.isa];
  if (!result.super.isa)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1E1AF6C5C();
  result.super.isa = [v3 valueWithBool:*(v1 + v8[6]) inContext:in.super.isa];
  if (!result.super.isa)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1E1AF6C5C();
  result.super.isa = [v3 valueWithBool:*(v1 + v8[7]) inContext:in.super.isa];
  if (result.super.isa)
  {
    sub_1E1AF6C5C();

    return v5;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1E160C8D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E160C944(uint64_t a1)
{
  result = sub_1E1AEFCCC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ClientControlButton.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ClientControlButton.__allocating_init(id:title:buttonAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  sub_1E134FD1C(a1, &v25, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v26 + 1))
  {
    v28 = v25;
    v29 = v26;
    v30 = v27;
  }

  else
  {
    sub_1E1AEFE9C();
    v15 = sub_1E1AEFE7C();
    v24[0] = a5;
    v16 = a2;
    v17 = a3;
    v18 = a4;
    v19 = v15;
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    v24[1] = v19;
    v24[2] = v21;
    a4 = v18;
    a3 = v17;
    a2 = v16;
    a5 = v24[0];
    sub_1E1AF6F6C();
    sub_1E1308058(&v25, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v22 = v29;
  *(v14 + 40) = v28;
  *(v14 + 56) = v22;
  *(v14 + 72) = v30;
  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E134B7C8(a5, v14 + OBJC_IVAR____TtC11AppStoreKit19ClientControlButton_impressionMetrics);
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  return v14;
}

uint64_t ClientControlButton.init(id:title:buttonAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1E1AEFEAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a1, &v26, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v27 + 1))
  {
    v29 = v26;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    sub_1E1AEFE9C();
    v16 = sub_1E1AEFE7C();
    v25[0] = a5;
    v17 = a2;
    v18 = a3;
    v19 = a4;
    v20 = v16;
    v22 = v21;
    (*(v13 + 8))(v15, v12);
    v25[1] = v20;
    v25[2] = v22;
    a4 = v19;
    a3 = v18;
    a2 = v17;
    a5 = v25[0];
    sub_1E1AF6F6C();
    sub_1E1308058(&v26, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  v23 = v30;
  *(v6 + 40) = v29;
  *(v6 + 56) = v23;
  *(v6 + 72) = v31;
  sub_1E134B7C8(a5, v6 + OBJC_IVAR____TtC11AppStoreKit19ClientControlButton_impressionMetrics);
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  return v6;
}

uint64_t ClientControlButton.deinit()
{

  sub_1E134B88C(v0 + 40);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit19ClientControlButton_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  return v0;
}

uint64_t ClientControlButton.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 40);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit19ClientControlButton_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  return swift_deallocClassInstance();
}

uint64_t sub_1E160CF10@<X0>(uint64_t *a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E160CF78(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E160CF78(char *a1, uint64_t a2)
{
  v70 = a2;
  v65 = sub_1E1AEFEAC();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1E1AF39DC();
  v82 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v73 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v59 - v11;
  v13 = sub_1E1AF380C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v59 - v20;
  v22 = a1;
  sub_1E1AF381C();
  v23 = sub_1E1AF37CC();
  v25 = v24;
  v26 = *(v14 + 8);
  v71 = v14 + 8;
  v75 = v26;
  v26(v21, v13);
  v68 = v25;
  if (v25)
  {
    v61 = v23;
    v62 = v2;
    sub_1E1AF46DC();
    v27 = v70;
    v60 = v22;
    sub_1E1AF381C();
    v28 = *(v82 + 16);
    v59 = v13;
    v29 = v74;
    v28(v66, v27, v74);
    v69 = v12;
    sub_1E1AF464C();
    v30 = v72;
    v28(v72, v27, v29);
    type metadata accessor for Action(0);
    sub_1E1AF381C();
    v66 = static Action.tryToMakeInstance(byDeserializing:using:)(v18, v30);
    v31 = v59;
    v32 = v75;
    v75(v18, v59);
    v33 = v67;
    sub_1E1AF381C();
    v34 = sub_1E1AF37CC();
    if (v35)
    {
      *&v78 = v34;
      *(&v78 + 1) = v35;
    }

    else
    {
      v43 = v63;
      sub_1E1AEFE9C();
      v44 = sub_1E1AEFE7C();
      v46 = v45;
      (*(v64 + 8))(v43, v65);
      *&v78 = v44;
      *(&v78 + 1) = v46;
    }

    sub_1E1AF6F6C();
    v32(v33, v31);
    sub_1E134FD1C(v69, v73, &unk_1ECEB1770, &unk_1E1AFED20);
    type metadata accessor for ClientControlButton(0);
    v39 = swift_allocObject();
    sub_1E134FD1C(v81, &v78, &unk_1ECEB5670, qword_1E1B03EC0);
    v47 = v74;
    if (*(&v79 + 1))
    {
      v48 = v79;
      *(v39 + 40) = v78;
      *(v39 + 56) = v48;
      *(v39 + 72) = v80;
    }

    else
    {
      v49 = v27;
      v50 = v63;
      sub_1E1AEFE9C();
      v51 = sub_1E1AEFE7C();
      v53 = v52;
      v54 = v50;
      v27 = v49;
      (*(v64 + 8))(v54, v65);
      v76 = v51;
      v77 = v53;
      sub_1E1AF6F6C();
      sub_1E1308058(&v78, &unk_1ECEB5670, qword_1E1B03EC0);
    }

    v55 = v72;
    v56 = *(v82 + 8);
    v56(v27, v47);
    v75(v60, v31);
    sub_1E1308058(v81, &unk_1ECEB5670, qword_1E1B03EC0);
    v56(v55, v47);
    sub_1E1308058(v69, &unk_1ECEB1770, &unk_1E1AFED20);
    sub_1E134B7C8(v73, v39 + OBJC_IVAR____TtC11AppStoreKit19ClientControlButton_impressionMetrics);
    v57 = v68;
    *(v39 + 16) = v61;
    *(v39 + 24) = v57;
    *(v39 + 32) = v66;
  }

  else
  {
    v36 = sub_1E1AF5A7C();
    sub_1E160D8B8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    v37 = swift_allocError();
    v38 = v82;
    v39 = v37;
    v41 = v40;
    v42 = type metadata accessor for ClientControlButton(0);
    *v41 = 0x656C746974;
    v41[1] = 0xE500000000000000;
    v41[2] = v42;
    (*(*(v36 - 8) + 104))(v41, *MEMORY[0x1E69AB690], v36);
    swift_willThrow();
    (*(v38 + 8))(v70, v74);
    v75(v22, v13);
  }

  return v39;
}

uint64_t type metadata accessor for ClientControlButton(uint64_t a1)
{
  result = qword_1EE1EF178;
  if (!qword_1EE1EF178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E160D7B4(uint64_t a1)
{
  sub_1E134EAF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E160D8B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

AppStoreKit::ComponentSeparator::Position_optional __swiftcall ComponentSeparator.Position.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ComponentSeparator.Position.rawValue.getter()
{
  v1 = 7368564;
  v2 = 0x676E696461656CLL;
  if (*v0 != 2)
  {
    v2 = 0x676E696C69617274;
  }

  if (*v0)
  {
    v1 = 0x6D6F74746F62;
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

uint64_t sub_1E160D9D8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E160DA90(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E160DB34(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E160DBF4(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7368564;
  v4 = 0xE700000000000000;
  v5 = 0x676E696461656CLL;
  if (*v1 != 2)
  {
    v5 = 0x676E696C69617274;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x6D6F74746F62;
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

_BYTE *ComponentSeparator.init(position:leadingInset:trailingInset:color:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = *result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a2;
  return result;
}

void *ComponentSeparator.color.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void static ComponentSeparator.thickness(compatibleWith:)(void *a1)
{
  if ((sub_1E1AF698C() & 1) == 0)
  {
    [a1 displayScale];
    if (v2 <= 0.0)
    {
      v3 = [objc_opt_self() mainScreen];
      [v3 scale];
    }
  }
}

double ComponentSeparator.height(in:)(void *a1)
{
  v1 = [a1 traitCollection];
  sub_1E1AF1E6C();
  v3 = v2;

  return v3;
}

double ComponentSeparator.frame(forBoundingRect:in:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = *v5;
  v11 = [a1 traitCollection];
  if ((sub_1E1AF698C() & 1) == 0)
  {
    [v11 displayScale];
    if (v12 <= 0.0)
    {
      v13 = [objc_opt_self() mainScreen];
      [v13 scale];
    }
  }

  if (v10 == 2)
  {
    goto LABEL_13;
  }

  v14 = sub_1E1AF74AC();

  if (v14)
  {
    v15 = 1;
    if (v10 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  if (v10 > 1)
  {
LABEL_13:

    v15 = 1;
    goto LABEL_14;
  }

  v15 = sub_1E1AF74AC();

LABEL_7:
  if (!v10)
  {
LABEL_19:

LABEL_20:
    v29.origin.x = a2;
    v29.origin.y = a3;
    v29.size.width = a4;
    v29.size.height = a5;
    CGRectGetWidth(v29);
    if ((v15 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_14:
  v16 = sub_1E1AF74AC();

  if (v16)
  {
    goto LABEL_20;
  }

  if (v10 == 1)
  {
    goto LABEL_19;
  }

  v17 = sub_1E1AF74AC();

  if (v17)
  {
    goto LABEL_20;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_21:
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  CGRectGetHeight(v30);
LABEL_22:
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  if (v10 >= 2)
  {
    if (v10 == 2)
    {
      CGRectGetMinX(*&v18);
    }

    else
    {
      CGRectGetMaxX(*&v18);
    }

    v31.origin.x = a2;
    v31.origin.y = a3;
    v31.size.width = a4;
    v31.size.height = a5;
    CGRectGetMinY(v31);
  }

  else
  {
    CGRectGetMinX(*&v18);
    v22 = a2;
    v23 = a3;
    v24 = a4;
    v25 = a5;
    if (v10)
    {
      CGRectGetMaxY(*&v22);
    }

    else
    {
      CGRectGetMinY(*&v22);
    }
  }

  sub_1E1AF6B1C();
  v27 = v26;

  return v27;
}

BOOL static ComponentSeparator.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = sub_1E145ADF0(*a1, *a2);
  result = 0;
  if ((v6 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

unint64_t sub_1E160E290()
{
  result = qword_1ECEB6C48;
  if (!qword_1ECEB6C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6C48);
  }

  return result;
}

uint64_t sub_1E160E2E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1E160E340(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

id OverlayViewController.__allocating_init(overlayView:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11AppStoreKit21OverlayViewController_overlayView] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

id OverlayViewController.init(overlayView:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11AppStoreKit21OverlayViewController_overlayView] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

id OverlayViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall OverlayViewController.viewDidLoad()()
{
  v29.receiver = v0;
  v29.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v29, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = *&v0[OBJC_IVAR____TtC11AppStoreKit21OverlayViewController_overlayView];
  [v1 addSubview_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170, &qword_1E1B06D90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E1B1F2F0;
  v5 = [v3 topAnchor];
  v6 = [v0 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 topAnchor];

  v9 = [v5 constraintEqualToAnchor_];
  *(v4 + 32) = v9;
  v10 = [v3 leadingAnchor];
  v11 = [v0 view];
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v11;
  v13 = [v11 layoutMarginsGuide];

  v14 = [v13 leadingAnchor];
  v15 = [v10 constraintEqualToAnchor_];

  *(v4 + 40) = v15;
  v16 = [v3 bottomAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = v17;
  v19 = [v17 bottomAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v4 + 48) = v20;
  v21 = [v3 trailingAnchor];
  v22 = [v0 view];
  if (v22)
  {
    v23 = v22;
    v24 = objc_opt_self();
    v25 = [v23 layoutMarginsGuide];

    v26 = [v25 trailingAnchor];
    v27 = [v21 constraintEqualToAnchor_];

    *(v4 + 56) = v27;
    sub_1E160E98C();
    v28 = sub_1E1AF620C();

    [v24 activateConstraints_];

    return;
  }

LABEL_11:
  __break(1u);
}

unint64_t sub_1E160E98C()
{
  result = qword_1ECEB6C58;
  if (!qword_1ECEB6C58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECEB6C58);
  }

  return result;
}

id OverlayViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E1AF5DBC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id OverlayViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E160EBF0()
{
  result = qword_1ECEB6C60;
  if (!qword_1ECEB6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6C60);
  }

  return result;
}

uint64_t sub_1E160EC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v65 = type metadata accessor for MediaPageHeaderView.TextStack(0);
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v67 = (&v57 - v5);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6C80, &qword_1E1B1F448);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v57 - v6;
  v60 = type metadata accessor for SwiftUIArtworkView(0);
  MEMORY[0x1EEE9AC00](v60);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6C88, &qword_1E1B1F450);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6C90, &qword_1E1B1F458);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v57 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6C98, &qword_1E1B1F460);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v64 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = a1;
  v23 = *(a1 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_backgroundColor);
  v63 = &v57 - v21;
  if (v23)
  {
    v24 = &v57 - v21;
    v25 = v23;
    *v17 = sub_1E1AF2D1C();
    v17[1] = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6CC8, &qword_1E1B1F4C0);
    sub_1E160F82C(v25, (v17 + *(v27 + 44)));

    sub_1E16105E4(v17, v24);
    (*(v15 + 56))(v24, 0, 1, v14);
  }

  else
  {
    (*(v15 + 56))(&v57 - v21, 1, 1, v14);
  }

  v28 = *(v22 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_artwork);
  if (v28)
  {
    v29 = v60;
    v30 = *(v60 + 24);
    v31 = *MEMORY[0x1E6981688];
    v32 = sub_1E1AF2BAC();
    (*(*(v32 - 8) + 104))(&v8[v30], v31, v32);
    *(v8 + 1) = 0;
    *(v8 + 2) = 0;
    *v8 = v28;
    v8[24] = 1;
    v33 = &v8[v29[7]];
    *v33 = 0;
    *(v33 + 1) = 0;
    v33[16] = 1;
    v8[v29[8]] = 1;
    v8[v29[9]] = 0;
    sub_1E161051C(v8, v59, type metadata accessor for SwiftUIArtworkView);
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6CB8, &qword_1E1B1F4B8);
    sub_1E16104D4(&qword_1ECEB3C58, type metadata accessor for SwiftUIArtworkView, &unk_1E1B1B914);
    sub_1E1302CD4(&qword_1ECEB6CC0, &qword_1ECEB6CB8, &qword_1E1B1F4B8, MEMORY[0x1E6981870]);
    sub_1E1AF259C();
    sub_1E1610584(v8, type metadata accessor for SwiftUIArtworkView);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6CA0, &qword_1E1B1F468);
    (*(*(v34 - 8) + 56))(v13, 0, 1, v34);
  }

  else
  {
    v35 = *(v22 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_collectionIcons);
    if (v35)
    {
      v36 = sub_1E1AF256C();
      v84 = 0;
      sub_1E160F6B4(v22, v35, &v71);
      v95 = v81;
      v96[0] = v82[0];
      *(v96 + 9) = *(v82 + 9);
      v91 = v77;
      v92 = v78;
      v93 = v79;
      v94 = v80;
      v87 = v73;
      v88 = v74;
      v89 = v75;
      v90 = v76;
      v85 = v71;
      v86 = v72;
      v97[9] = v80;
      v97[10] = v81;
      v98[0] = v82[0];
      *(v98 + 9) = *(v82 + 9);
      v97[6] = v77;
      v97[7] = v78;
      v97[8] = v79;
      v97[2] = v73;
      v97[3] = v74;
      v97[4] = v75;
      v97[5] = v76;
      v97[0] = v71;
      v97[1] = v72;
      sub_1E134FD1C(&v85, &v70, &qword_1ECEB6CB0, &qword_1E1B1F4B0);
      sub_1E1308058(v97, &qword_1ECEB6CB0, &qword_1E1B1F4B0);
      *(&v83[9] + 7) = v94;
      *(&v83[10] + 7) = v95;
      *(&v83[11] + 7) = v96[0];
      v83[12] = *(v96 + 9);
      *(&v83[5] + 7) = v90;
      *(&v83[6] + 7) = v91;
      *(&v83[7] + 7) = v92;
      *(&v83[8] + 7) = v93;
      *(&v83[1] + 7) = v86;
      *(&v83[2] + 7) = v87;
      *(&v83[3] + 7) = v88;
      *(&v83[4] + 7) = v89;
      *(v83 + 7) = v85;
      v37 = v83[8];
      v38 = v59;
      *(v59 + 161) = v83[9];
      v39 = v83[11];
      *(v38 + 177) = v83[10];
      *(v38 + 193) = v39;
      *(v38 + 209) = v83[12];
      v40 = v83[4];
      *(v38 + 97) = v83[5];
      v41 = v83[7];
      *(v38 + 113) = v83[6];
      *(v38 + 129) = v41;
      *(v38 + 145) = v37;
      v42 = v83[0];
      *(v38 + 33) = v83[1];
      v43 = v83[3];
      *(v38 + 49) = v83[2];
      *(v38 + 65) = v43;
      *(v38 + 81) = v40;
      v44 = v84;
      *v38 = v36;
      *(v38 + 8) = 0;
      *(v38 + 16) = v44;
      *(v38 + 17) = v42;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6CB8, &qword_1E1B1F4B8);
      sub_1E16104D4(&qword_1ECEB3C58, type metadata accessor for SwiftUIArtworkView, &unk_1E1B1B914);
      sub_1E1302CD4(&qword_1ECEB6CC0, &qword_1ECEB6CB8, &qword_1E1B1F4B8, MEMORY[0x1E6981870]);
      sub_1E1AF259C();
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6CA0, &qword_1E1B1F468);
      (*(*(v45 - 8) + 56))(v13, 0, 1, v45);
    }

    else
    {
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6CA0, &qword_1E1B1F468);
      (*(*(v46 - 8) + 56))(v13, 1, 1, v46);
    }
  }

  v61 = v13;
  v62 = v22;
  v47 = v67;
  *v67 = v22;
  v48 = *(v65 + 20);
  *(v47 + v48) = swift_getKeyPath(byte_1E1B1F470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8, &qword_1E1B09640);
  swift_storeEnumTagMultiPayload();
  v50 = v63;
  v49 = v64;
  sub_1E134FD1C(v63, v64, &qword_1ECEB6C98, &qword_1E1B1F460);
  v51 = v13;
  v52 = v66;
  sub_1E134FD1C(v51, v66, &qword_1ECEB6C88, &qword_1E1B1F450);
  v53 = v68;
  sub_1E161051C(v47, v68, type metadata accessor for MediaPageHeaderView.TextStack);
  v54 = v69;
  sub_1E134FD1C(v49, v69, &qword_1ECEB6C98, &qword_1E1B1F460);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6CA8, &qword_1E1B1F4A8);
  sub_1E134FD1C(v52, v54 + *(v55 + 48), &qword_1ECEB6C88, &qword_1E1B1F450);
  sub_1E161051C(v53, v54 + *(v55 + 64), type metadata accessor for MediaPageHeaderView.TextStack);

  sub_1E1610584(v47, type metadata accessor for MediaPageHeaderView.TextStack);
  sub_1E1308058(v61, &qword_1ECEB6C88, &qword_1E1B1F450);
  sub_1E1308058(v50, &qword_1ECEB6C98, &qword_1E1B1F460);
  sub_1E1610584(v53, type metadata accessor for MediaPageHeaderView.TextStack);
  sub_1E1308058(v52, &qword_1ECEB6C88, &qword_1E1B1F450);
  return sub_1E1308058(v49, &qword_1ECEB6C98, &qword_1E1B1F460);
}

uint64_t sub_1E160F6B4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_placementStyle);
  if (v5 == 8)
  {
    LOBYTE(v5) = 1;
  }

  LOBYTE(v26[0]) = v5;

  sub_1E13B4428(v26, 0, a2, &v27);
  sub_1E1AF2D1C();
  sub_1E1AF214C();
  v6 = v35;
  v7 = v34;
  v25[8] = v35;
  v25[9] = v36;
  v8 = v36;
  v9 = v37;
  v25[10] = v37;
  v25[11] = v38;
  v10 = v31;
  v11 = v30;
  v25[4] = v31;
  v25[5] = v32;
  v12 = v32;
  v13 = v33;
  v25[6] = v33;
  v25[7] = v34;
  v25[0] = v27;
  v25[1] = v28;
  v15 = v27;
  v14 = v28;
  v25[2] = v29;
  v25[3] = v30;
  v16 = v36;
  *(a3 + 128) = v35;
  *(a3 + 144) = v16;
  v17 = v38;
  *(a3 + 160) = v37;
  *(a3 + 176) = v17;
  v18 = v32;
  *(a3 + 64) = v31;
  *(a3 + 80) = v18;
  v19 = v34;
  *(a3 + 96) = v33;
  *(a3 + 112) = v19;
  v20 = v28;
  v21 = v29;
  *a3 = v27;
  *(a3 + 16) = v20;
  v22 = v30;
  *(a3 + 32) = v29;
  *(a3 + 48) = v22;
  v26[8] = v6;
  v26[9] = v8;
  v26[10] = v9;
  v26[11] = v38;
  v26[4] = v10;
  v26[5] = v12;
  v26[6] = v13;
  v26[7] = v7;
  v26[0] = v15;
  v26[1] = v14;
  v24[192] = 1;
  *(a3 + 192) = 0;
  *(a3 + 200) = 1;
  v26[2] = v21;
  v26[3] = v11;
  sub_1E134FD1C(v25, v24, &qword_1ECEB6CE8, &unk_1E1B1F4E0);
  return sub_1E1308058(v26, &qword_1ECEB6CE8, &unk_1E1B1F4E0);
}

uint64_t sub_1E160F82C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6CD0, &qword_1E1B1F4C8);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22[-v9];
  v11 = a1;
  v12 = sub_1E1AF2AAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6CD8, &qword_1E1B1F4D0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E1B02CD0;
  sub_1E1AF2AFC();
  v14 = sub_1E1AF2B0C();

  *(v13 + 32) = v14;
  sub_1E1AF2AFC();
  v15 = sub_1E1AF2B0C();

  *(v13 + 40) = v15;
  MEMORY[0x1E68FBA20](v13);
  sub_1E1AF2D8C();
  sub_1E1AF2D9C();
  sub_1E1AF220C();
  v16 = *(v5 + 44);
  v17 = *MEMORY[0x1E6981DB8];
  v18 = sub_1E1AF2D7C();
  (*(*(v18 - 8) + 104))(&v10[v16], v17, v18);
  v19 = v23;
  *v10 = *&v22[8];
  *(v10 + 1) = v19;
  *(v10 + 4) = v24;
  sub_1E134FD1C(v10, v7, &qword_1ECEB6CD0, &qword_1E1B1F4C8);
  *a2 = v12;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6CE0, &qword_1E1B1F4D8);
  sub_1E134FD1C(v7, a2 + *(v20 + 48), &qword_1ECEB6CD0, &qword_1E1B1F4C8);

  sub_1E1308058(v10, &qword_1ECEB6CD0, &qword_1E1B1F4C8);
  sub_1E1308058(v7, &qword_1ECEB6CD0, &qword_1E1B1F4C8);
}

__n128 sub_1E160FA88@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1E1AF257C();
  v25 = 1;
  sub_1E160FBE8(v3, &v16);
  v30 = v20;
  v31 = v21;
  v32 = v22;
  v33 = v23;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v34[0] = v16;
  v34[1] = v17;
  v34[2] = v18;
  v34[3] = v19;
  v34[4] = v20;
  v34[5] = v21;
  v34[6] = v22;
  v35 = v23;
  sub_1E134FD1C(&v26, &v15, &qword_1ECEB6D10, &qword_1E1B1F558);
  sub_1E1308058(v34, &qword_1ECEB6D10, &qword_1E1B1F558);
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[103] = v32;
  *&v24[7] = v26;
  *&v24[23] = v27;
  *&v24[39] = v28;
  *&v24[119] = v33;
  *&v24[55] = v29;
  LOBYTE(v3) = v25;
  v6 = sub_1E1AF26DC();
  v7 = *&v24[80];
  *(a2 + 81) = *&v24[64];
  *(a2 + 97) = v7;
  *(a2 + 113) = *&v24[96];
  *(a2 + 128) = *&v24[111];
  v8 = *&v24[16];
  *(a2 + 17) = *v24;
  *(a2 + 33) = v8;
  v9 = *&v24[48];
  *(a2 + 49) = *&v24[32];
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v3;
  *(a2 + 65) = v9;
  *(a2 + 144) = v6;
  *(a2 + 152) = xmmword_1E1B1F350;
  __asm { FMOV            V0.2D, #20.0 }

  *(a2 + 168) = result;
  *(a2 + 184) = 0;
  return result;
}

double sub_1E160FBE8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v95 = a2;
  v3 = sub_1E1AF227C();
  v98 = *(v3 - 8);
  KeyPath = v3;
  MEMORY[0x1EEE9AC00](v3);
  v96 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AEF91C();
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = a1;
  v9 = *a1;
  v10 = *(v9 + 24);
  v105 = v9;
  if (v10)
  {
    v108 = *(v9 + 16);
    v109 = v10;
    v103 = v6;
    sub_1E13B8AA4();
    v102 = v8;

    v11 = sub_1E1AF293C();
    v13 = v12;
    v15 = v14;
    sub_1E1AF274C();
    v16 = sub_1E1AF28EC();
    v18 = v17;
    v20 = v19;

    sub_1E1431100(v11, v13, v15 & 1);

    LODWORD(v108) = sub_1E1AF25BC();
    v21 = sub_1E1AF28DC();
    v23 = v22;
    LOBYTE(v11) = v24;
    v26 = v25;
    v27 = v16;
    v9 = v105;
    sub_1E1431100(v27, v18, v20 & 1);

    v107 = v21;
    v28 = v21;
    v8 = v102;
    v100 = v23;
    v104 = v11 & 1;
    sub_1E1431110(v28, v23, v11 & 1);
    v106 = v26;

    v6 = v103;
  }

  else
  {
    v106 = 0;
    v107 = 0;
    v100 = 0;
    v104 = 0;
  }

  (*(v6 + 16))(v8, v9 + OBJC_IVAR____TtC11AppStoreKit10PageHeader_title, v5);
  v29 = sub_1E1AF292C();
  v31 = v30;
  v33 = v32;
  if (*(v9 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_backgroundStyle) == 1)
  {
    v34 = sub_1E1AF2AFC();
  }

  else
  {
    v34 = sub_1E1AF2ADC();
  }

  v108 = v34;
  v35 = sub_1E1AF28DC();
  v37 = v36;
  v39 = v38;
  sub_1E1431100(v29, v31, v33 & 1);

  sub_1E1AF273C();
  v40 = sub_1E1AF28EC();
  v42 = v41;
  v44 = v43;

  sub_1E1431100(v35, v37, v39 & 1);

  sub_1E1AF278C();
  v101 = sub_1E1AF285C();
  v102 = v45;
  v47 = v46;
  v103 = v48;
  sub_1E1431100(v40, v42, v44 & 1);

  type metadata accessor for MediaPageHeaderView.TextStack(0);
  v49 = v96;
  sub_1E18710E0();
  v50 = _s11AppStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v98 + 8))(v49, KeyPath);
  KeyPath = swift_getKeyPath("07;\v");
  v51 = *(v105 + OBJC_IVAR____TtC11AppStoreKit10PageHeader_subtitle + 8);
  if (v51)
  {
    v108 = *(v105 + OBJC_IVAR____TtC11AppStoreKit10PageHeader_subtitle);
    v109 = v51;
    sub_1E13B8AA4();

    v52 = sub_1E1AF293C();
    v54 = v53;
    v56 = v55;
    sub_1E1AF274C();
    v57 = sub_1E1AF28EC();
    LODWORD(v98) = v50;
    v58 = v47;
    v60 = v59;
    v62 = v61;

    sub_1E1431100(v52, v54, v56 & 1);

    LODWORD(v108) = sub_1E1AF25BC();
    v63 = sub_1E1AF28DC();
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v70 = v62 & 1;
    v47 = v58;
    LOBYTE(v50) = v98;
    sub_1E1431100(v57, v60, v70);

    v71 = v63;
    v105 = v65;
    v72 = v67 & 1;
    sub_1E1431110(v63, v65, v67 & 1);
    v73 = v69;
  }

  else
  {
    v71 = 0;
    v105 = 0;
    v72 = 0;
    v73 = 0;
  }

  v74 = v47 & 1;
  LOBYTE(v108) = v47 & 1;
  v75 = 2;
  if (v50)
  {
    v75 = 3;
  }

  v98 = v75;
  v111 = v47 & 1;
  v110 = 0;
  v77 = v101;
  v76 = v102;
  sub_1E1431110(v101, v102, v47 & 1);

  v78 = KeyPath;

  v79 = v107;
  v80 = v100;
  sub_1E1431120(v107, v100, v104, v106);
  sub_1E1431110(v77, v76, v74);

  v81 = v78;

  v82 = v105;
  sub_1E1431120(v71, v105, v72, v73);
  v83 = v79;
  v84 = v104;
  v85 = v106;
  sub_1E1431164(v83, v80, v104, v106);
  sub_1E1431164(v71, v82, v72, v73);
  v86 = v101;
  v87 = v102;
  sub_1E1431100(v101, v102, v74);

  v88 = v103;

  v89 = v111;
  v90 = v110;
  v91 = v95;
  *v95 = v107;
  v91[1] = v80;
  v91[2] = v84;
  v91[3] = v85;
  v91[4] = v86;
  v91[5] = v87;
  *(v91 + 48) = v89;
  v91[7] = v88;
  v91[8] = v81;
  v91[9] = v98;
  *(v91 + 80) = v90;
  v92 = v105;
  v91[11] = v71;
  v91[12] = v92;
  v91[13] = v72;
  v91[14] = v73;
  sub_1E1431164(v71, v92, v72, v73);
  sub_1E1431100(v86, v87, v108);

  return sub_1E1431164(v107, v80, v84, v106);
}

uint64_t sub_1E16102EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *a2 = sub_1E1AF2D0C();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6C78, &qword_1E1B1F440);
  return sub_1E160EC44(v3, a2 + *(v5 + 44));
}

uint64_t sub_1E1610340(uint64_t a1)
{
  sub_1E160EBF0();

  return sub_1E1AF0CBC();
}

unint64_t sub_1E1610388()
{
  result = qword_1ECEB6C68;
  if (!qword_1ECEB6C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6C68);
  }

  return result;
}

uint64_t type metadata accessor for MediaPageHeaderView.TextStack(uint64_t a1)
{
  result = qword_1ECEB6CF0;
  if (!qword_1ECEB6CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E16104D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E161051C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E1610584(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E16105E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6C90, &qword_1E1B1F458);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E161067C(uint64_t a1)
{
  type metadata accessor for MediaPageHeader(319);
  if (v1 <= 0x3F)
  {
    sub_1E1430C30(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1E161071C()
{
  result = qword_1ECEB6D18;
  if (!qword_1ECEB6D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6D20, &qword_1E1B1F590);
    sub_1E1302CD4(&qword_1ECEB6D28, &qword_1ECEB6D30, &qword_1E1B1F598, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6D18);
  }

  return result;
}

uint64_t Unimpressable<>.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E1AF46DC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void *SearchEntityChangeAction.__allocating_init(title:entity:searchOrigin:actionMetrics:)(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5)
{
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC11AppStoreKit24SearchEntityChangeAction_entity) = *a3;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit24SearchEntityChangeAction_searchOrigin) = *a4;
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v15 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v16 = sub_1E1AF3E1C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v14 + v15, a5, v16);
  v18 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v19 = sub_1E1AF46DC();
  (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
  v20 = (v14 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v20 = 0u;
  v20[1] = 0u;
  v21 = v14 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v37, &v34);
  if (*(&v35 + 1))
  {
    v22 = v35;
    *v21 = v34;
    *(v21 + 1) = v22;
    *(v21 + 4) = v36;
  }

  else
  {
    sub_1E1AEFE9C();
    v23 = sub_1E1AEFE7C();
    v24 = v10;
    v25 = a5;
    v26 = a1;
    v27 = a2;
    v28 = v23;
    v29 = v11;
    v31 = v30;
    (*(v29 + 8))(v13, v24);
    v33[1] = v28;
    v33[2] = v31;
    a2 = v27;
    a1 = v26;
    a5 = v25;
    sub_1E1AF6F6C();
    sub_1E1308058(&v34, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v17 + 8))(a5, v16);
  sub_1E1308058(v37, &unk_1ECEB5670, qword_1E1B03EC0);
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = 0;
  v14[5] = 0;
  return v14;
}

void *SearchEntityChangeAction.init(title:entity:searchOrigin:actionMetrics:)(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5)
{
  v6 = v5;
  v30 = a1;
  v31 = a2;
  v10 = sub_1E1AEFEAC();
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v29 - v14;
  v16 = sub_1E1AF3E1C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC11AppStoreKit24SearchEntityChangeAction_entity) = *a3;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit24SearchEntityChangeAction_searchOrigin) = *a4;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  (*(v17 + 16))(v19, a5, v16);
  v20 = sub_1E1AF46DC();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = (v6 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
  sub_1E138853C(v40, &v34);
  if (*(&v35 + 1))
  {
    v37 = v34;
    v38 = v35;
    v39 = v36;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v24 = v23;
    (*(v29 + 8))(v12, v10);
    v32 = v22;
    v33 = v24;
    sub_1E1AF6F6C();
    sub_1E1308058(&v34, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v17 + 8))(a5, v16);
  sub_1E1308058(v40, &unk_1ECEB5670, qword_1E1B03EC0);
  v25 = v6 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v25 + 4) = v39;
  v26 = v38;
  *v25 = v37;
  *(v25 + 1) = v26;
  sub_1E134B7C8(v15, v6 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v27 = v31;
  v6[2] = v30;
  v6[3] = v27;
  v6[4] = 0;
  v6[5] = 0;
  (*(v17 + 32))(v6 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v19, v16);
  return v6;
}

uint64_t *SearchEntityChangeAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v30 = *v4;
  v31 = v3;
  v7 = sub_1E1AF39DC();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v35 = a1;
  sub_1E1AF381C();
  sub_1E1611548();
  sub_1E1AF36DC();
  v34 = *(v10 + 8);
  v34(v15, v9);
  v16 = v37;
  if (v37 == 15)
  {
    v17 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    strcpy(v18, "searchOrigin");
    v19 = v30;
    v18[13] = 0;
    *(v18 + 7) = -5120;
    *(v18 + 2) = v19;
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x1E69AB690], v17);
    swift_willThrow();
    (*(v32 + 8))(a2, v33);
    v34(v35, v9);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = a2;
    v20 = v35;
    sub_1E1AF381C();
    sub_1E14B7B80();
    sub_1E1AF36DC();
    v34(v15, v9);
    *(v4 + OBJC_IVAR____TtC11AppStoreKit24SearchEntityChangeAction_entity) = v36;
    *(v4 + OBJC_IVAR____TtC11AppStoreKit24SearchEntityChangeAction_searchOrigin) = v16;
    v21 = v30;
    (*(v10 + 16))(v12, v20, v9);
    v23 = v32;
    v22 = v33;
    v24 = v29;
    (*(v32 + 16))(v29, v21, v33);
    v25 = v31;
    v26 = Action.init(deserializing:using:)(v12, v24);
    if (!v25)
    {
      v4 = v26;
    }

    (*(v23 + 8))(v21, v22);
    v34(v35, v9);
  }

  return v4;
}

uint64_t SearchEntityChangeAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  return v0;
}

uint64_t SearchEntityChangeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return swift_deallocClassInstance();
}

unint64_t sub_1E1611548()
{
  result = qword_1EE1E0438;
  if (!qword_1EE1E0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E0438);
  }

  return result;
}

uint64_t type metadata accessor for SearchEntityChangeAction(uint64_t a1)
{
  result = qword_1EE1D91F8;
  if (!qword_1EE1D91F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Bool.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF370C();
  v5 = sub_1E1AF39DC();
  (*(*(v5 - 8) + 8))(a2, v5);
  v6 = sub_1E1AF380C();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v4 & 1;
}

uint64_t sub_1E1611728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_1E1AF370C();
  v7 = sub_1E1AF39DC();
  (*(*(v7 - 8) + 8))(a2, v7);
  v8 = sub_1E1AF380C();
  result = (*(*(v8 - 8) + 8))(a1, v8);
  *a3 = v6 & 1;
  return result;
}

void sub_1E1611830(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  swift_getObjectType();
  v7 = swift_conformsToProtocol2();
  if (v7)
  {
    if (a1)
    {
      v8 = v7;
      type metadata accessor for PlaybackCoordinator();
      sub_1E1AF421C();
      v9 = a1;
      sub_1E1AF55EC();
      v10 = v9;
      a5(v9, v8);
    }
  }
}

void sub_1E1611940(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t))
{
  swift_getObjectType();
  v9 = swift_conformsToProtocol2();
  if (v9)
  {
    if (a1)
    {
      v10 = v9;
      type metadata accessor for PlaybackCoordinator();
      sub_1E1AF421C();
      v11 = a1;
      sub_1E1AF55EC();
      v12 = v11;
      a7(v11, v10);
    }
  }
}

uint64_t type metadata accessor for AMSMetricsIdentifierFieldsProvider(uint64_t a1)
{
  result = qword_1EE1E75E0;
  if (!qword_1EE1E75E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E1611B3C(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA70, &qword_1E1B1AE80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x1E698CA10]) init];
  sub_1E1AF59DC();
  sub_1E1AF59CC();
  MEMORY[0x1E68FE6D0]();

  v7 = sub_1E1AF594C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_1E1308058(v5, &qword_1ECEBBA70, &qword_1E1B1AE80);
    v9 = 0;
  }

  else
  {
    v9 = sub_1E1AF593C();
    (*(v8 + 8))(v5, v7);
  }

  [v6 setAccount_];

  v10 = [objc_opt_self() currentProcess];
  [v6 setClientInfo_];

  [v6 setDuration_];
  v24 = v6;
  v11 = [v6 generateEventFields];
  v12 = sub_1E1AF5C7C();

  v13 = 0;
  v14 = v12 + 64;
  v15 = 1 << *(v12 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v12 + 64);
  v18 = (v15 + 63) >> 6;
  v25 = v12;
  if (v17)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v19 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      return;
    }

    v17 = *(v14 + 8 * v19);
    ++v13;
    if (v17)
    {
      while (1)
      {
        v20 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v21 = v20 | (v19 << 6);
        sub_1E134E724(*(v12 + 48) + 40 * v21, v32);
        sub_1E137A5C4(*(v12 + 56) + 32 * v21, &v34);
        v29[0] = v32[0];
        v29[1] = v32[1];
        v30 = v33;
        sub_1E1301CF0(&v34, &v31);
        sub_1E1611F8C(v29, v27);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_1(v28);
          v22 = v2;
          v23 = *(v26 + 24);
          v35 = *(v26 + 32);
          __swift_mutable_project_boxed_opaque_existential_1(v26, v23);
          sub_1E1AF4A1C();
          v2 = v22;
          sub_1E1308058(v29, &qword_1ECEB4948, &unk_1E1B0F440);
          if (v22)
          {

            return;
          }

          v13 = v19;
          v12 = v25;
          if (!v17)
          {
            goto LABEL_10;
          }
        }

        else
        {
          sub_1E1308058(v29, &qword_1ECEB4948, &unk_1E1B0F440);
          __swift_destroy_boxed_opaque_existential_1(v28);
          v13 = v19;
          if (!v17)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v19 = v13;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1E1611F8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4948, &unk_1E1B0F440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ShelfBasedCollectionViewControllerDependencies.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2C00, &unk_1E1B042E0);
  swift_allocObject();
  *a1 = sub_1E1AF497C();
  a1[9] = &type metadata for EmptyLayoutSectionProvider;
  a1[10] = &protocol witness table for EmptyLayoutSectionProvider;
  a1[14] = &type metadata for EmptyPageGridProvider;
  a1[15] = &protocol witness table for EmptyPageGridProvider;
  v2 = type metadata accessor for EmptyShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  a1[4] = v2;
  a1[5] = &protocol witness table for EmptyShelfComponentTypeMappingProvider;
  a1[1] = v3;
  a1[19] = &type metadata for EmptyShelfLayoutSpacingProvider;
  a1[20] = &protocol witness table for EmptyShelfLayoutSpacingProvider;
  type metadata accessor for EmptyShelfSupplementaryProvider();
  a1[21] = swift_allocObject();
  a1[22] = &protocol witness table for EmptyShelfSupplementaryProvider;
  type metadata accessor for EmptyItemSupplementaryProvider();
  a1[23] = swift_allocObject();
  a1[24] = &protocol witness table for EmptyItemSupplementaryProvider;
  type metadata accessor for EmptyCollectionElementsObserver();
  result = swift_allocObject();
  a1[25] = result;
  a1[26] = &protocol witness table for EmptyCollectionElementsObserver;
  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1E1612154(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_1E161219C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t Commerce.__allocating_init(objectGraph:intentDispatcher:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1E1618FF0(a1, a2);

  return v4;
}

uint64_t Commerce.init(objectGraph:intentDispatcher:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E1618FF0(a1, a2);

  return v2;
}

uint64_t sub_1E16122C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = sub_1E1AF4C2C();
  v7 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v11 = (*(a3 + 56))(ObjectType, a3);
  if (v11)
  {
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = *(v3 + 24);
    v14 = *(v3 + 32);
    swift_unknownObjectRetain();
  }

  v15 = swift_getObjectType();
  v16 = *(a1 + 48);
  v54 = *(a1 + 40);
  v55 = v16;
  LOBYTE(v44) = *a1;
  v17 = v13;
  v18 = *(v14 + 64);

  v40 = v14;
  v18(&v54, &v44, v15, v14);

  v19 = *(a1 + 64);
  if (v19)
  {
    v54 = *(a1 + 56);
    v55 = v19;
    LOBYTE(v44) = 0;
    v18(&v54, &v44, v15, v40);
  }

  sub_1E16190EC(a1, &v56);
  v54 = 0xD000000000000018;
  v55 = 0x80000001E1B6AA90;
  sub_1E1AF4C1C();

  sub_1E1AF422C();
  v20 = v39;
  (*(v7 + 104))(v9, *MEMORY[0x1E69AB2E0], v39);
  v21 = sub_1E1AF4BCC();

  (*(v7 + 8))(v9, v20);
  sub_1E136A0E0(&v54, v21, "AppStoreKit/Commerce.swift", 26, 2);
  *(&v45 + 1) = sub_1E1AF470C();
  *&v46 = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(&v44);

  sub_1E1AF46FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6D38, &qword_1E1B1F850);
  sub_1E13BBB38(&qword_1EE1D27F8, &qword_1ECEB6D38, &qword_1E1B1F850);
  v22 = sub_1E1AF585C();

  __swift_destroy_boxed_opaque_existential_1(&v44);
  sub_1E16190EC(a1, &v44);
  sub_1E1300B24(v4 + 40, &v41);
  v23 = swift_allocObject();
  v24 = v51;
  *(v23 + 112) = v50;
  *(v23 + 128) = v24;
  v25 = v53;
  *(v23 + 144) = v52;
  *(v23 + 160) = v25;
  v26 = v47;
  *(v23 + 48) = v46;
  *(v23 + 64) = v26;
  v27 = v49;
  *(v23 + 80) = v48;
  *(v23 + 96) = v27;
  v28 = v45;
  *(v23 + 16) = v44;
  *(v23 + 32) = v28;
  sub_1E1308EC0(&v41, v23 + 176);
  v29 = v40;
  *(v23 + 216) = v17;
  *(v23 + 224) = v29;
  sub_1E16190EC(a1, &v44);
  v30 = swift_allocObject();
  *(v30 + 16) = v17;
  *(v30 + 24) = v29;
  v31 = v51;
  *(v30 + 128) = v50;
  *(v30 + 144) = v31;
  v32 = v53;
  *(v30 + 160) = v52;
  *(v30 + 176) = v32;
  v33 = v47;
  *(v30 + 64) = v46;
  *(v30 + 80) = v33;
  v34 = v49;
  *(v30 + 96) = v48;
  *(v30 + 112) = v34;
  v35 = v45;
  *(v30 + 32) = v44;
  *(v30 + 48) = v35;
  v36 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  swift_unknownObjectRetain_n();
  v37 = sub_1E1AF68EC();
  v42 = v36;
  v43 = MEMORY[0x1E69AB720];
  *&v41 = v37;
  sub_1E1AF57FC();
  swift_unknownObjectRelease();

  sub_1E161916C(&v54);
  __swift_destroy_boxed_opaque_existential_1(&v41);
  return v22;
}

uint64_t sub_1E161274C(__int128 *a1, uint64_t a2)
{
  v4 = a1[11];
  v44 = a1[10];
  v45 = v4;
  v46 = a1[12];
  v47 = *(a1 + 26);
  v5 = a1[7];
  v40 = a1[6];
  v41 = v5;
  v6 = a1[9];
  v42 = a1[8];
  v43 = v6;
  v7 = a1[3];
  v36 = a1[2];
  v37 = v7;
  v8 = a1[5];
  v38 = a1[4];
  v39 = v8;
  v9 = a1[1];
  v34 = *a1;
  v35 = v9;
  sub_1E13006E4(0, &qword_1EE1D25C0, 0x1E698B518);
  v10 = a1[11];
  v32[10] = a1[10];
  v32[11] = v10;
  v32[12] = a1[12];
  v33 = *(a1 + 26);
  v11 = a1[7];
  v32[6] = a1[6];
  v32[7] = v11;
  v12 = a1[9];
  v32[8] = a1[8];
  v32[9] = v12;
  v13 = a1[3];
  v32[2] = a1[2];
  v32[3] = v13;
  v14 = a1[5];
  v32[4] = a1[4];
  v32[5] = v14;
  v15 = a1[1];
  v32[0] = *a1;
  v32[1] = v15;
  sub_1E141CFB8(&v34, aBlock);
  sub_1E162EB3C(v32);
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6D38, &qword_1E1B1F850);
  v18 = sub_1E1AF588C();
  v19 = [objc_opt_self() sharedManager];
  sub_1E1300B24(a2 + 80, v30);
  v20 = swift_allocObject();
  sub_1E1308EC0(v30, v20 + 16);
  v21 = v45;
  *(v20 + 232) = v44;
  *(v20 + 248) = v21;
  *(v20 + 264) = v46;
  v22 = v41;
  *(v20 + 168) = v40;
  *(v20 + 184) = v22;
  v23 = v43;
  *(v20 + 200) = v42;
  *(v20 + 216) = v23;
  v24 = v37;
  *(v20 + 104) = v36;
  *(v20 + 120) = v24;
  v25 = v39;
  *(v20 + 136) = v38;
  *(v20 + 152) = v25;
  v26 = v35;
  *(v20 + 72) = v34;
  *(v20 + 56) = v17;
  *(v20 + 64) = v18;
  *(v20 + 280) = v47;
  *(v20 + 88) = v26;
  aBlock[4] = sub_1E16199A8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1619988;
  aBlock[3] = &block_descriptor_107;
  v27 = _Block_copy(aBlock);
  sub_1E141CFB8(&v34, v32);
  v28 = v17;

  [v19 startPurchase:v28 withResultHandler:v27];
  _Block_release(v27);

  return v18;
}

uint64_t sub_1E16129C8(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = *(a1 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v36 = v12;
  if (!v11)
  {
    if (qword_1EE1E35A0 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v11 != 1)
  {
    if (v10 | v9)
    {
      if (qword_1EE1E35A0 != -1)
      {
        swift_once();
      }

      goto LABEL_15;
    }

    if (qword_1EE1E35A0 == -1)
    {
LABEL_15:
      v23 = sub_1E1AF591C();
      __swift_project_value_buffer(v23, qword_1EE216128);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      sub_1E1AF382C();
      *(&v38 + 1) = &type metadata for PurchaseIntent;
      *&v37 = swift_allocObject();
      sub_1E16190EC(a2, v37 + 16);
      sub_1E1AF383C();
      sub_1E1308058(&v37, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF549C();

      goto LABEL_16;
    }

LABEL_14:
    swift_once();
    goto LABEL_15;
  }

  *(v12 + 16) = BYTE1(v10) & 1;
  if (qword_1EE1E35A0 != -1)
  {
    swift_once();
  }

  v13 = sub_1E1AF591C();
  __swift_project_value_buffer(v13, qword_1EE216128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  *(&v38 + 1) = &type metadata for PurchaseIntent;
  *&v37 = swift_allocObject();
  sub_1E16190EC(a2, v37 + 16);
  sub_1E1AF383C();
  sub_1E1308058(&v37, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF549C();

  if (v10)
  {
    v14 = a3[3];
    v15 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm(a3, v14);
    sub_1E16190EC(a2, &v37);
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;
    v17 = v44;
    *(v16 + 128) = v43;
    *(v16 + 144) = v17;
    v18 = v46;
    *(v16 + 160) = v45;
    *(v16 + 176) = v18;
    v19 = v40;
    *(v16 + 64) = v39;
    *(v16 + 80) = v19;
    v20 = v42;
    *(v16 + 96) = v41;
    *(v16 + 112) = v20;
    v21 = v38;
    *(v16 + 32) = v37;
    *(v16 + 48) = v21;
    *(v16 + 192) = v36;
    v22 = *(v15 + 64);
    swift_unknownObjectRetain();

    v22(0, sub_1E16197F4, v16, v14, v15);
  }

LABEL_16:
  ObjectType = swift_getObjectType();
  v25 = a2[6];
  v47[0] = a2[5];
  v47[1] = v25;
  sub_1E16190EC(a2, &v37);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  v27 = v44;
  *(v26 + 128) = v43;
  *(v26 + 144) = v27;
  v28 = v46;
  *(v26 + 160) = v45;
  *(v26 + 176) = v28;
  v29 = v40;
  *(v26 + 64) = v39;
  *(v26 + 80) = v29;
  v30 = v42;
  *(v26 + 96) = v41;
  *(v26 + 112) = v30;
  v31 = v38;
  *(v26 + 32) = v37;
  *(v26 + 48) = v31;
  v32 = *(a5 + 24);
  swift_unknownObjectRetain();

  v32(v47, sub_1E16197D4, v26, ObjectType, a5);

  v33 = a2[8];
  if (v33)
  {
    *&v37 = a2[7];
    *(&v37 + 1) = v33;
    v34.underlyingAdamID._countAndFlagsBits = &v37;
    v34.underlyingAdamID._object = ObjectType;
    AppStateController.clearWaiting(for:)(v34);
  }
}

double sub_1E1613148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = *(a4 + 48);
  v20[0] = *(a4 + 40);
  v20[1] = v10;
  sub_1E16190EC(a4, v19);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = v19[7];
  *(v11 + 128) = v19[6];
  *(v11 + 144) = v12;
  v13 = v19[9];
  *(v11 + 160) = v19[8];
  *(v11 + 176) = v13;
  v14 = v19[3];
  *(v11 + 64) = v19[2];
  *(v11 + 80) = v14;
  v15 = v19[5];
  *(v11 + 96) = v19[4];
  *(v11 + 112) = v15;
  v16 = v19[1];
  *(v11 + 32) = v19[0];
  *(v11 + 48) = v16;
  *(v11 + 192) = a5;
  v17 = *(a3 + 24);

  swift_unknownObjectRetain();

  v17(v20, sub_1E161988C, v11, ObjectType, a3);

  return result;
}

void sub_1E1613264(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = a3[6];
  v11 = a3[5];
  v12 = v8;
  swift_beginAccess();
  LOBYTE(a4) = *(a4 + 16);

  sub_1E1613314(&v11, a4, ObjectType, a2);

  v9 = a3[8];
  if (v9)
  {
    v11 = a3[7];
    v12 = v9;
    v10.underlyingAdamID._countAndFlagsBits = &v11;
    v10.underlyingAdamID._object = ObjectType;
    AppStateController.clearWaiting(for:)(v10);
  }
}

uint64_t sub_1E1613314(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[1];
  *&v22 = *a1;
  v7 = v22;
  *(&v22 + 1) = v8;
  (*(a4 + 72))(&v22, 0);
  *&v22 = v7;
  *(&v22 + 1) = v8;
  (*(a4 + 56))(&v22, a3, a4);
  v10 = v9;
  *&v18 = v7;
  *(&v18 + 1) = v8;
  (*(a4 + 48))(&v22, &v18, a3, a4);
  v18 = v22;
  v19 = v23;
  v20 = v24;
  v21 = v25;
  *v16 = 4;
  memset(&v16[8], 0, 40);
  v17 = xmmword_1E1B11BA0;
  if (_s11AppStoreKit06LegacyA5StateO2eeoiySbAC_ACtFZ_0(&v18, v16))
  {
    ObjectType = swift_getObjectType();
    *&v18 = a2 & 1;
    *&v21 = 0x1000000000000000;
    (*(v10 + 64))(&v18, ObjectType, v10);
  }

  else
  {
    *v16 = v22;
    *&v16[16] = v23;
    *&v16[32] = v24;
    v17 = v25;
    v12 = swift_getObjectType();
    (*(v10 + 16))(v15, v12, v10);
    v13 = _s11AppStoreKit06LegacyA5StateO2eeoiySbAC_ACtFZ_0(v16, v15);
    v18 = v15[0];
    v19 = v15[1];
    v20 = v15[2];
    v21 = v15[3];
    sub_1E139CEA8(&v18);
    if ((v13 & 1) == 0)
    {
      *v16 = v7;
      *&v16[8] = v8;
      (*(a4 + 40))(v16, a3, a4);
    }
  }

  sub_1E139CEA8(&v22);
  return swift_unknownObjectRelease();
}

void sub_1E1613500(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v8 = a4[6];
  v19[0] = a4[5];
  v19[1] = v8;
  sub_1E16190EC(a4, v18);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = v18[7];
  *(v9 + 128) = v18[6];
  *(v9 + 144) = v10;
  v11 = v18[9];
  *(v9 + 160) = v18[8];
  *(v9 + 176) = v11;
  v12 = v18[3];
  *(v9 + 64) = v18[2];
  *(v9 + 80) = v12;
  v13 = v18[5];
  *(v9 + 96) = v18[4];
  *(v9 + 112) = v13;
  v14 = v18[1];
  *(v9 + 32) = v18[0];
  *(v9 + 48) = v14;
  v15 = *(a3 + 24);
  swift_unknownObjectRetain();

  v15(v19, sub_1E1619958, v9, ObjectType, a3);

  v16 = a4[8];
  if (v16)
  {
    *&v18[0] = a4[7];
    *(&v18[0] + 1) = v16;
    v17.underlyingAdamID._countAndFlagsBits = v18;
    v17.underlyingAdamID._object = ObjectType;
    AppStateController.clearWaiting(for:)(v17);
  }
}

double sub_1E161362C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v5 = *(a3 + 48);
  v8[0] = *(a3 + 40);
  v8[1] = v5;

  v6.underlyingAdamID._countAndFlagsBits = v8;
  v6.underlyingAdamID._object = ObjectType;
  AppStateController.clearWaiting(for:)(v6);

  return result;
}

uint64_t sub_1E16136A0(__int128 *a1)
{
  v2 = v1;
  v4 = a1[11];
  v44 = a1[10];
  v45 = v4;
  v46 = a1[12];
  v47 = *(a1 + 26);
  v5 = a1[7];
  v40 = a1[6];
  v41 = v5;
  v6 = a1[9];
  v42 = a1[8];
  v43 = v6;
  v7 = a1[3];
  v36 = a1[2];
  v37 = v7;
  v8 = a1[5];
  v38 = a1[4];
  v39 = v8;
  v9 = a1[1];
  v34 = *a1;
  v35 = v9;
  sub_1E13006E4(0, &qword_1EE1D25C0, 0x1E698B518);
  v10 = a1[11];
  v32[10] = a1[10];
  v32[11] = v10;
  v32[12] = a1[12];
  v33 = *(a1 + 26);
  v11 = a1[7];
  v32[6] = a1[6];
  v32[7] = v11;
  v12 = a1[9];
  v32[8] = a1[8];
  v32[9] = v12;
  v13 = a1[3];
  v32[2] = a1[2];
  v32[3] = v13;
  v14 = a1[5];
  v32[4] = a1[4];
  v32[5] = v14;
  v15 = a1[1];
  v32[0] = *a1;
  v32[1] = v15;
  sub_1E141CFB8(&v34, aBlock);
  sub_1E162EB3C(v32);
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6D38, &qword_1E1B1F850);
  v18 = sub_1E1AF588C();
  v19 = [objc_opt_self() sharedManager];
  sub_1E1300B24(v2 + 80, v30);
  v20 = swift_allocObject();
  sub_1E1308EC0(v30, v20 + 16);
  v21 = v45;
  *(v20 + 232) = v44;
  *(v20 + 248) = v21;
  *(v20 + 264) = v46;
  v22 = v41;
  *(v20 + 168) = v40;
  *(v20 + 184) = v22;
  v23 = v43;
  *(v20 + 200) = v42;
  *(v20 + 216) = v23;
  v24 = v37;
  *(v20 + 104) = v36;
  *(v20 + 120) = v24;
  v25 = v39;
  *(v20 + 136) = v38;
  *(v20 + 152) = v25;
  v26 = v35;
  *(v20 + 72) = v34;
  *(v20 + 56) = v17;
  *(v20 + 64) = v18;
  *(v20 + 280) = v47;
  *(v20 + 88) = v26;
  aBlock[4] = sub_1E16191C0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1619988;
  aBlock[3] = &block_descriptor_36;
  v27 = _Block_copy(aBlock);
  sub_1E141CFB8(&v34, v32);
  v28 = v17;

  [v19 startPurchase:v28 withResultHandler:v27];
  _Block_release(v27);

  return v18;
}

void sub_1E161391C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  __swift_project_boxed_opaque_existential_1Tm(a3, a3[3]);
  sub_1E1AF49DC();

  if (a1)
  {
    v9 = a1;
    if ([v9 success])
    {
      sub_1E1613B1C();
      v10 = *a6;
      v11 = a6[136];
      if (v11 != 1 || v10 == 3)
      {
        if (*a6)
        {
          v18 = v10 == 3;
        }

        else
        {
          v18 = 1;
        }

        v19 = v18;
        if (a6[89])
        {
          v12 = v19;
        }

        else
        {
          v12 = 1;
        }
      }

      else
      {
        v12 = 0;
      }

      v20 = v10 == 3;
      v18 = v11 == 0;
      v21 = 0x10000;
      if (v18)
      {
        v21 = 0;
      }

      v23 = v21 | (v20 << 8) | v12;
      v17 = 1;
    }

    else
    {
      v14 = [v9 error];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 code];

        if (v16 == 511)
        {
          v25 = *(a6 + 8);
          v23 = v25;
          v24 = 0;
          sub_1E16196E4(&v25, &v22);
          sub_1E1AF586C();

          sub_1E1619740(v23, *(&v23 + 1), v24);
          return;
        }
      }

      v23 = xmmword_1E1B16440;
      v17 = 2;
    }

    v24 = v17;
    sub_1E1AF586C();
  }

  else if (a2)
  {
    v13 = a2;
    sub_1E1AF584C();
  }

  else
  {
    sub_1E1AF586C();
  }
}

void sub_1E1613B1C()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1EE1E6DB0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE1E6DB8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A98, &qword_1E1B09130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  sub_1E1AF6F6C();
  *(inited + 96) = sub_1E13006E4(0, &qword_1EE1D25C0, 0x1E698B518);
  *(inited + 72) = v0;
  v4 = v0;
  sub_1E13609A4(inited);
  swift_setDeallocating();
  sub_1E1308058(inited + 32, &qword_1ECEBCAA0, &unk_1E1B02C50);
  v5 = sub_1E1AF5C6C();

  [v1 postNotificationName:v2 object:0 userInfo:v5];
}

uint64_t sub_1E1613CA8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0, &unk_1E1B0F2C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-v5];
  type metadata accessor for ASKBagContract(0);
  sub_1E1AF416C();
  if (qword_1ECEB1508 != -1)
  {
    swift_once();
  }

  sub_1E1AF52FC();
  sub_1E1AF532C();

  (*(v4 + 8))(v6, v3);
  if (v12[7] == 1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1E1619200;
    *(v7 + 24) = v1;

    v8 = sub_1E1613F64(a1, sub_1E1613F1C, 0, sub_1E1619204, v7);
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1E16191D0;
    *(v9 + 24) = v1;

    v8 = sub_1E16144F4(a1, sub_1E1613F40, 0, sub_1E16191D4, v9);
  }

  v10 = v8;

  return v10;
}

double sub_1E1613F1C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xD00000000000001DLL;
  a2[1] = 0x80000001E1B6AD10;
  a2[2] = a1;

  return result;
}

double sub_1E1613F40@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xD000000000000019;
  a2[1] = 0x80000001E1B6AD30;
  a2[2] = a1;

  return result;
}

uint64_t sub_1E1613F64(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v42 = a4;
  v36[1] = a3;
  v37 = a2;
  v41 = sub_1E1AF4C2C();
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0, &unk_1E1B1C8F0);
  v38 = v5;
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v8 = v50;
  v44 = a1;
  v9 = *(a1 + 16);
  if (v9)
  {
    ObjectType = swift_getObjectType();
    v11 = *(*(&v8 + 1) + 64);
    v12 = v44 + 32;
    v13 = v9;
    do
    {
      sub_1E16190EC(v12, &v50);
      v46[0] = v53;
      v46[1] = v54;
      v14 = v50;

      sub_1E16194D4(&v50);
      LOBYTE(v47) = v14;
      v11(v46, &v47, ObjectType, *(&v8 + 1));

      v12 += 160;
      --v13;
    }

    while (v13);
  }

  v15 = v44;
  v37(&v47, v44);
  sub_1E1AF4C1C();

  sub_1E1AF422C();
  v16 = v40;
  v17 = v39;
  v18 = v41;
  (*(v40 + 104))(v39, *MEMORY[0x1E69AB2E0], v41);
  v19 = sub_1E1AF4BCC();

  (*(v16 + 8))(v17, v18);
  v20 = v38;
  v41 = v48;
  v39 = v49;
  v40 = v19;
  sub_1E136A328(v47, v48, v49, v19, "AppStoreKit/Commerce.swift", 26, 2);
  sub_1E1300B24(v20 + 40, v46);
  v21 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v45 = MEMORY[0x1E69E7CC0];
    sub_1E135C028(0, v9, 0);
    v21 = v45;
    v22 = v15 + 32;
    do
    {
      sub_1E16190EC(v22, &v50);
      v24 = v53;
      v23 = v54;

      sub_1E16194D4(&v50);
      v45 = v21;
      v26 = *(v21 + 16);
      v25 = *(v21 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1E135C028((v25 > 1), v26 + 1, 1);
        v21 = v45;
      }

      *(v21 + 16) = v26 + 1;
      v27 = v21 + 16 * v26;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      v22 += 160;
      --v9;
    }

    while (v9);
  }

  v28 = sub_1E13C49CC(v21);

  sub_1E1300B24(v46, &v50);
  v29 = swift_allocObject();
  v30 = v43;
  *(v29 + 16) = v42;
  *(v29 + 24) = v30;
  sub_1E1308EC0(&v50, v29 + 32);
  *(v29 + 72) = v8;
  *(v29 + 88) = v28;
  v51 = sub_1E1AF470C();
  v52 = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(&v50);

  swift_unknownObjectRetain();

  sub_1E1AF46FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6D60, &qword_1E1B1F910);
  sub_1E13BBB38(&qword_1ECEB6D68, &qword_1ECEB6D60, &qword_1E1B1F910);
  v31 = sub_1E1AF585C();

  __swift_destroy_boxed_opaque_existential_1(&v50);
  v32 = swift_allocObject();
  *(v32 + 16) = v28;
  *(v32 + 24) = v8;
  v33 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  swift_unknownObjectRetain();
  v34 = sub_1E1AF68EC();
  v51 = v33;
  v52 = MEMORY[0x1E69AB720];
  *&v50 = v34;
  sub_1E1AF57FC();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v46);

  __swift_destroy_boxed_opaque_existential_1(&v50);
  return v31;
}

uint64_t sub_1E16144F4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v43 = a4;
  v37 = a3;
  v38 = a2;
  v41 = sub_1E1AF4C2C();
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0, &unk_1E1B1C8F0);
  v42 = v5;
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v8 = v50;
  v46 = a1;
  v9 = *(a1 + 16);
  if (v9)
  {
    ObjectType = swift_getObjectType();
    v11 = *(*(&v8 + 1) + 64);
    v12 = v46 + 32;
    v13 = v9;
    do
    {
      sub_1E16190EC(v12, &v50);
      v48[0] = v53;
      v48[1] = v54;
      v14 = v50;

      sub_1E16194D4(&v50);
      LOBYTE(v49[0]) = v14;
      v11(v48, v49, ObjectType, *(&v8 + 1));

      v12 += 160;
      --v13;
    }

    while (v13);
  }

  v45 = *(&v8 + 1);
  v15 = v46;
  v38(v49, v46);
  sub_1E1AF4C1C();

  sub_1E1AF422C();
  v16 = v40;
  v17 = v39;
  v18 = v41;
  (*(v40 + 104))(v39, *MEMORY[0x1E69AB2E0], v41);
  v19 = sub_1E1AF4BCC();

  (*(v16 + 8))(v17, v18);
  v20 = v42;
  sub_1E136A2D8(v49[0], v49[1], v49[2], v19, "AppStoreKit/Commerce.swift", 26, 2);
  sub_1E1300B24(v20 + 40, v48);
  v21 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v47 = MEMORY[0x1E69E7CC0];
    sub_1E135C028(0, v9, 0);
    v21 = v47;
    v22 = v15 + 32;
    do
    {
      sub_1E16190EC(v22, &v50);
      v24 = v53;
      v23 = v54;

      sub_1E16194D4(&v50);
      v47 = v21;
      v26 = *(v21 + 16);
      v25 = *(v21 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1E135C028((v25 > 1), v26 + 1, 1);
        v21 = v47;
      }

      *(v21 + 16) = v26 + 1;
      v27 = v21 + 16 * v26;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      v22 += 160;
      --v9;
    }

    while (v9);
  }

  v28 = sub_1E13C49CC(v21);

  sub_1E1300B24(v48, &v50);
  v29 = swift_allocObject();
  v30 = v44;
  v29[2] = v43;
  v29[3] = v30;
  sub_1E1308EC0(&v50, (v29 + 4));
  v31 = v45;
  v29[9] = v8;
  v29[10] = v31;
  v29[11] = v28;
  v51 = sub_1E1AF470C();
  v52 = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(&v50);

  swift_unknownObjectRetain();

  sub_1E1AF46FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6D60, &qword_1E1B1F910);
  sub_1E13BBB38(&qword_1ECEB6D68, &qword_1ECEB6D60, &qword_1E1B1F910);
  v32 = sub_1E1AF585C();

  __swift_destroy_boxed_opaque_existential_1(&v50);
  v33 = swift_allocObject();
  v33[2] = v28;
  v33[3] = v8;
  v33[4] = v31;
  v34 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  swift_unknownObjectRetain();
  v35 = sub_1E1AF68EC();
  v51 = v34;
  v52 = MEMORY[0x1E69AB720];
  *&v50 = v35;
  sub_1E1AF57FC();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v48);

  __swift_destroy_boxed_opaque_existential_1(&v50);
  return v32;
}

uint64_t sub_1E1614A78(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a1;
  a2(&v18);
  v11 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  v12 = sub_1E1AF68EC();
  v17[3] = v11;
  v17[4] = MEMORY[0x1E69AB720];
  v17[0] = v12;
  sub_1E1300B24(a4, v16);
  v13 = swift_allocObject();
  sub_1E1308EC0(v16, (v13 + 2));
  v13[7] = a5;
  v13[8] = a6;
  v13[9] = a7;
  swift_unknownObjectRetain();

  v14 = sub_1E1AF57DC();

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v14;
}

uint64_t sub_1E1614B98(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a1;
  a2(&v18);
  v11 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  v12 = sub_1E1AF68EC();
  v17[3] = v11;
  v17[4] = MEMORY[0x1E69AB720];
  v17[0] = v12;
  sub_1E1300B24(a4, v16);
  v13 = swift_allocObject();
  sub_1E1308EC0(v16, (v13 + 2));
  v13[7] = a5;
  v13[8] = a6;
  v13[9] = a7;
  swift_unknownObjectRetain();

  v14 = sub_1E1AF57DC();

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v14;
}

void sub_1E1614CB8(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v151 = a5;
  v6 = *a1;
  v7 = *(*a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v131 = *a1;
  v128 = v7;
  if (v7)
  {
    *&v136 = MEMORY[0x1E69E7CC0];
    sub_1E135C028(0, v7, 0);
    v9 = v136;
    v10 = (v6 + 48);
    v11 = v7;
    do
    {
      v13 = *(v10 - 1);
      v12 = *v10;
      *&v136 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);

      if (v15 >= v14 >> 1)
      {
        sub_1E135C028((v14 > 1), v15 + 1, 1);
        v9 = v136;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      v10 += 27;
      --v11;
    }

    while (v11);
    v6 = v131;
    v17 = *(v131 + 16);
    if (v17)
    {
      v18 = (v131 + 121);
      v19 = *(v131 + 16);
      do
      {
        v20 = *(v18 - 89);
        if (v18[47] != 1 || v20 == 3)
        {
          if (*v18 != 1 || (*(v18 - 89) ? (v22 = v20 == 3) : (v22 = 1), v22))
          {
            v133 = 0;
            goto LABEL_25;
          }
        }

        v18 += 216;
        --v19;
      }

      while (v19);
      v133 = 1;
LABEL_25:
      v24 = 0;
      v25 = v131 + 32;
      v26 = v17 - 1;
      v23 = MEMORY[0x1E69E7CC0];
LABEL_26:
      v27 = *(v131 + 16);
      v28 = (v25 + 216 * v24);
      v29 = v24;
      while (v29 < v27)
      {
        v30 = v28[1];
        v136 = *v28;
        v137 = v30;
        v31 = v28[2];
        v32 = v28[3];
        v33 = v28[5];
        v140 = v28[4];
        v141 = v33;
        v138 = v31;
        v139 = v32;
        v34 = v28[6];
        v35 = v28[7];
        v36 = v28[9];
        v144 = v28[8];
        v145 = v36;
        v142 = v34;
        v143 = v35;
        v37 = v28[10];
        v38 = v28[11];
        v39 = v28[12];
        v149 = *(v28 + 26);
        v147 = v38;
        v148 = v39;
        v146 = v37;
        v24 = v29 + 1;
        if (v136 == 3)
        {
          v40 = v17;
          sub_1E141CFB8(&v136, v135);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v150 = v23;
          v127 = v25;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E135C924(0, *(v23 + 16) + 1, 1);
            v23 = v150;
          }

          v43 = *(v23 + 16);
          v42 = *(v23 + 24);
          v17 = v40;
          if (v43 >= v42 >> 1)
          {
            sub_1E135C924((v42 > 1), v43 + 1, 1);
            v17 = v40;
            v23 = v150;
          }

          *(v23 + 16) = v43 + 1;
          v44 = v23 + 216 * v43;
          v45 = v137;
          *(v44 + 32) = v136;
          *(v44 + 48) = v45;
          v46 = v138;
          v47 = v139;
          v48 = v141;
          *(v44 + 96) = v140;
          *(v44 + 112) = v48;
          *(v44 + 64) = v46;
          *(v44 + 80) = v47;
          v49 = v142;
          v50 = v143;
          v51 = v145;
          *(v44 + 160) = v144;
          *(v44 + 176) = v51;
          *(v44 + 128) = v49;
          *(v44 + 144) = v50;
          v52 = v146;
          v53 = v147;
          v54 = v148;
          *(v44 + 240) = v149;
          *(v44 + 208) = v53;
          *(v44 + 224) = v54;
          *(v44 + 192) = v52;
          v25 = v127;
          if (v26 == v29)
          {
LABEL_36:
            v126 = 0;
            v8 = MEMORY[0x1E69E7CC0];
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        v28 = (v28 + 216);
        ++v29;
        if (v17 == v24)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_80;
    }

    v8 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v17 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  v133 = 1;
  v126 = 1;
LABEL_37:
  v124 = v17;
  v55 = *(v23 + 16);
  if (v55)
  {
    *&v136 = v8;
    v56 = v23;
    sub_1E135C028(0, v55, 0);
    v57 = v136;
    v58 = (v56 + 48);
    do
    {
      v59 = *(v58 - 1);
      v60 = *v58;
      *&v136 = v57;
      v62 = *(v57 + 16);
      v61 = *(v57 + 24);

      if (v62 >= v61 >> 1)
      {
        sub_1E135C028((v61 > 1), v62 + 1, 1);
        v57 = v136;
      }

      *(v57 + 16) = v62 + 1;
      v63 = v57 + 16 * v62;
      *(v63 + 32) = v59;
      *(v63 + 40) = v60;
      v58 += 27;
      --v55;
    }

    while (v55);

    v6 = v131;
  }

  else
  {

    v57 = MEMORY[0x1E69E7CC0];
  }

  v64 = sub_1E13C49CC(v57);

  if (v133)
  {

    v123 = v151 + 56;
    v65 = 1 << *(v151 + 32);
    v66 = -1;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    v67 = v66 & *(v151 + 56);
    v68 = (v65 + 63) >> 6;

    v69 = 0;
    while (v67)
    {
      v70 = v69;
LABEL_53:
      v71 = __clz(__rbit64(v67));
      v67 &= v67 - 1;
      v72 = (*(v151 + 48) + ((v70 << 10) | (16 * v71)));
      v74 = *v72;
      v73 = v72[1];
      ObjectType = swift_getObjectType();
      *&v136 = v74;
      *(&v136 + 1) = v73;
      v75 = swift_allocObject();
      v75[2] = a3;
      v75[3] = a4;
      v75[4] = v74;
      v75[5] = v73;
      v76 = *(a4 + 24);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
      v76(&v136, sub_1E161995C, v75, ObjectType, a4);
    }

    while (1)
    {
      v70 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      if (v70 >= v68)
      {

        v6 = v131;
        goto LABEL_57;
      }

      v67 = *(v123 + 8 * v70);
      ++v69;
      if (v67)
      {
        v69 = v70;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_79;
  }

  v77 = a2[3];
  v78 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v77);
  v79 = swift_allocObject();
  v79[2] = v9;
  v79[3] = a3;
  v79[4] = a4;
  v80 = v151;
  v79[5] = v64;
  v79[6] = v80;
  v81 = *(v78 + 64);
  swift_unknownObjectRetain();

  v81(0, sub_1E1619570, v79, v77, v78);

LABEL_57:
  v82 = MEMORY[0x1E69E7CC0];
  v83 = v128;
  if (v128)
  {
    *&v136 = MEMORY[0x1E69E7CC0];
    sub_1E135C028(0, v128, 0);
    v82 = v136;
    v84 = (v6 + 48);
    do
    {
      v86 = *(v84 - 1);
      v85 = *v84;
      *&v136 = v82;
      v88 = *(v82 + 16);
      v87 = *(v82 + 24);

      if (v88 >= v87 >> 1)
      {
        sub_1E135C028((v87 > 1), v88 + 1, 1);
        v82 = v136;
      }

      *(v82 + 16) = v88 + 1;
      v89 = v82 + 16 * v88;
      *(v89 + 32) = v86;
      *(v89 + 40) = v85;
      v84 += 27;
      --v83;
    }

    while (v83);
    v6 = v131;
  }

  v90 = sub_1E13C49CC(v82);

  if ((v126 & 1) == 0)
  {
    v93 = 0;
    v94 = v6 + 32;
    v95 = v124;
    v91 = MEMORY[0x1E69E7CC0];
LABEL_67:
    v96 = *(v6 + 16);
    v97 = (v94 + 216 * v93);
    v98 = v93;
    while (v98 < v96)
    {
      v99 = v97[1];
      v136 = *v97;
      v137 = v99;
      v100 = v97[2];
      v101 = v97[3];
      v102 = v97[5];
      v140 = v97[4];
      v141 = v102;
      v138 = v100;
      v139 = v101;
      v103 = v97[6];
      v104 = v97[7];
      v105 = v97[9];
      v144 = v97[8];
      v145 = v105;
      v142 = v103;
      v143 = v104;
      v106 = v97[10];
      v107 = v97[11];
      v108 = v97[12];
      v149 = *(v97 + 26);
      v147 = v107;
      v148 = v108;
      v146 = v106;
      v93 = v98 + 1;
      if (BYTE8(v144))
      {
        sub_1E141CFB8(&v136, v135);
        v109 = swift_isUniquelyReferenced_nonNull_native();
        v150 = v91;
        if ((v109 & 1) == 0)
        {
          sub_1E135C924(0, *(v91 + 16) + 1, 1);
          v91 = v150;
        }

        v111 = *(v91 + 16);
        v110 = *(v91 + 24);
        v95 = v124;
        if (v111 >= v110 >> 1)
        {
          sub_1E135C924((v110 > 1), v111 + 1, 1);
          v95 = v124;
          v91 = v150;
        }

        *(v91 + 16) = v111 + 1;
        v112 = v91 + 216 * v111;
        v113 = v137;
        *(v112 + 32) = v136;
        *(v112 + 48) = v113;
        v114 = v138;
        v115 = v139;
        v116 = v141;
        *(v112 + 96) = v140;
        *(v112 + 112) = v116;
        *(v112 + 64) = v114;
        *(v112 + 80) = v115;
        v117 = v142;
        v118 = v143;
        v119 = v145;
        *(v112 + 160) = v144;
        *(v112 + 176) = v119;
        *(v112 + 128) = v117;
        *(v112 + 144) = v118;
        v120 = v146;
        v121 = v147;
        v122 = v148;
        *(v112 + 240) = v149;
        *(v112 + 208) = v121;
        *(v112 + 224) = v122;
        *(v112 + 192) = v120;
        v6 = v131;
        if (v124 - 1 != v98)
        {
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      v97 = (v97 + 216);
      ++v98;
      if (v95 == v93)
      {
        goto LABEL_65;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    return;
  }

  v91 = MEMORY[0x1E69E7CC0];
LABEL_65:
  v92 = *(v91 + 16);

  *a6 = v90;
  a6[1] = v92;
}

uint64_t sub_1E16154A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a2 + 16);
  if (v8)
  {
    ObjectType = swift_getObjectType();
    v10 = *(a4 + 24);
    v11 = (a2 + 40);
    do
    {
      v13 = *v11;
      v34 = *(v11 - 1);
      v12 = v34;
      v35 = v13;
      v14 = swift_allocObject();
      v14[2] = a3;
      v14[3] = a4;
      v14[4] = v12;
      v14[5] = v13;
      v14[6] = a5;
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();

      v10(&v34, sub_1E1619580, v14, ObjectType, a4);

      v11 += 2;
      --v8;
    }

    while (v8);
  }

  result = sub_1E15CFA24(a2, a6);
  v16 = 0;
  v17 = result + 56;
  v18 = 1 << *(result + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(result + 56);
  v21 = (v18 + 63) >> 6;
  v33 = result;
  if (v20)
  {
    while (1)
    {
      v22 = v16;
LABEL_12:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v24 = (*(v33 + 48) + ((v22 << 10) | (16 * v23)));
      v25 = *v24;
      v26 = v24[1];
      v27 = swift_getObjectType();
      v34 = v25;
      v35 = v26;
      v28 = swift_allocObject();
      v28[2] = a3;
      v28[3] = a4;
      v28[4] = v25;
      v28[5] = v26;
      v29 = *(a4 + 24);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
      v29(&v34, sub_1E16195D0, v28, v27, a4);

      if (!v20)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v22 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return result;
    }

    if (v22 >= v21)
    {
      break;
    }

    v20 = *(v17 + 8 * v22);
    ++v16;
    if (v20)
    {
      v16 = v22;
      goto LABEL_12;
    }
  }
}

uint64_t sub_1E1615704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12[0] = a3;
  v12[1] = a4;
  v10 = sub_1E14AACA8(a3, a4, a5);
  return sub_1E1613314(v12, v10 & 1, ObjectType, a2);
}

void sub_1E1615784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2 + 56;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_9:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = (*(a2 + 48) + ((v12 << 10) | (16 * v13)));
      v15 = *v14;
      v16 = v14[1];
      ObjectType = swift_getObjectType();
      v21[0] = v15;
      v21[1] = v16;
      v18 = swift_allocObject();
      v18[2] = a3;
      v18[3] = a4;
      v18[4] = v15;
      v18[5] = v16;
      v19 = *(a4 + 24);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
      v19(v21, sub_1E161995C, v18, ObjectType, a4);

      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1E1615914(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v158 = v1;
  if (v2)
  {
    v160[0] = MEMORY[0x1E69E7CC0];
    sub_1E135C924(0, v2, 0);
    v3 = v160[0];
    v4 = v1 + 32;
    do
    {
      v5 = *(v4 + 16);
      aBlock = *v4;
      v176 = v5;
      v6 = *(v4 + 32);
      v7 = *(v4 + 48);
      v8 = *(v4 + 80);
      v179 = *(v4 + 64);
      v180 = v8;
      v177 = v6;
      v178 = v7;
      v9 = *(v4 + 96);
      v10 = *(v4 + 112);
      v11 = *(v4 + 144);
      v183 = *(v4 + 128);
      v184 = v11;
      v181 = v9;
      v182 = v10;
      v12 = *(v4 + 160);
      v13 = *(v4 + 176);
      v14 = *(v4 + 192);
      *&v188 = *(v4 + 208);
      v186 = v13;
      v187 = v14;
      v185 = v12;
      sub_1E141CFB8(&aBlock, &v161);
      v160[0] = v3;
      v16 = *(v3 + 16);
      v15 = *(v3 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1E135C924((v15 > 1), v16 + 1, 1);
        v3 = v160[0];
      }

      *(v3 + 16) = v16 + 1;
      v17 = v3 + 216 * v16;
      v18 = v176;
      *(v17 + 32) = aBlock;
      *(v17 + 48) = v18;
      v19 = v177;
      v20 = v178;
      v21 = v180;
      *(v17 + 96) = v179;
      *(v17 + 112) = v21;
      *(v17 + 64) = v19;
      *(v17 + 80) = v20;
      v22 = v181;
      v23 = v182;
      v24 = v184;
      *(v17 + 160) = v183;
      *(v17 + 176) = v24;
      *(v17 + 128) = v22;
      *(v17 + 144) = v23;
      v25 = v185;
      v26 = v186;
      v27 = v187;
      *(v17 + 240) = v188;
      *(v17 + 208) = v26;
      *(v17 + 224) = v27;
      *(v17 + 192) = v25;
      v4 += 224;
      --v2;
    }

    while (v2);
  }

  v28 = sub_1E15A13E8(MEMORY[0x1E69E7CC0]);
  v156 = *(v3 + 16);
  if (v156)
  {
    v29 = 0;
    v30 = v3 + 32;
    while (1)
    {
      if (v29 >= *(v3 + 16))
      {
        goto LABEL_51;
      }

      v52 = *(v30 + 16);
      aBlock = *v30;
      v176 = v52;
      v53 = *(v30 + 32);
      v54 = *(v30 + 48);
      v55 = *(v30 + 80);
      v179 = *(v30 + 64);
      v180 = v55;
      v177 = v53;
      v178 = v54;
      v56 = *(v30 + 96);
      v57 = *(v30 + 112);
      v58 = *(v30 + 144);
      v183 = *(v30 + 128);
      v184 = v58;
      v181 = v56;
      v182 = v57;
      v59 = *(v30 + 160);
      v60 = *(v30 + 176);
      v61 = *(v30 + 192);
      *&v188 = *(v30 + 208);
      v186 = v60;
      v187 = v61;
      v185 = v59;
      v63 = *(&aBlock + 1);
      v62 = v176;
      sub_1E141CFB8(&aBlock, &v161);
      sub_1E141CFB8(&aBlock, &v161);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v160[0] = v28;
      v65 = sub_1E15A47D8();
      v67 = *(v28 + 16);
      v68 = (v66 & 1) == 0;
      v69 = __OFADD__(v67, v68);
      v70 = v67 + v68;
      if (v69)
      {
        goto LABEL_52;
      }

      v71 = v66;
      if (*(v28 + 24) < v70)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v87 = v65;
      sub_1E14193F0();
      v65 = v87;
      if (v71)
      {
LABEL_8:
        v28 = v160[0];
        v31 = *(v160[0] + 56) + 216 * v65;
        v32 = *(v31 + 16);
        v161 = *v31;
        v162 = v32;
        v33 = *(v31 + 80);
        v35 = *(v31 + 32);
        v34 = *(v31 + 48);
        v165 = *(v31 + 64);
        v166 = v33;
        v163 = v35;
        v164 = v34;
        v36 = *(v31 + 144);
        v38 = *(v31 + 96);
        v37 = *(v31 + 112);
        v169 = *(v31 + 128);
        v170 = v36;
        v167 = v38;
        v168 = v37;
        v40 = *(v31 + 176);
        v39 = *(v31 + 192);
        v41 = *(v31 + 160);
        v174 = *(v31 + 208);
        v172 = v40;
        v173 = v39;
        v171 = v41;
        v42 = v176;
        *v31 = aBlock;
        *(v31 + 16) = v42;
        v43 = v177;
        v44 = v178;
        v45 = v180;
        *(v31 + 64) = v179;
        *(v31 + 80) = v45;
        *(v31 + 32) = v43;
        *(v31 + 48) = v44;
        v46 = v181;
        v47 = v182;
        v48 = v184;
        *(v31 + 128) = v183;
        *(v31 + 144) = v48;
        *(v31 + 96) = v46;
        *(v31 + 112) = v47;
        v49 = v185;
        v50 = v186;
        v51 = v187;
        *(v31 + 208) = v188;
        *(v31 + 176) = v50;
        *(v31 + 192) = v51;
        *(v31 + 160) = v49;
        sub_1E137D75C(&v161);
        sub_1E137D75C(&aBlock);
        goto LABEL_9;
      }

LABEL_17:
      v28 = v160[0];
      *(v160[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
      v73 = (*(v28 + 48) + 16 * v65);
      *v73 = v63;
      v73[1] = v62;
      v74 = *(v28 + 56) + 216 * v65;
      v75 = v188;
      v77 = v186;
      v76 = v187;
      *(v74 + 160) = v185;
      *(v74 + 176) = v77;
      *(v74 + 192) = v76;
      *(v74 + 208) = v75;
      v79 = v183;
      v78 = v184;
      v80 = v182;
      *(v74 + 96) = v181;
      *(v74 + 112) = v80;
      *(v74 + 128) = v79;
      *(v74 + 144) = v78;
      v82 = v179;
      v81 = v180;
      v83 = v178;
      *(v74 + 32) = v177;
      *(v74 + 48) = v83;
      *(v74 + 64) = v82;
      *(v74 + 80) = v81;
      v84 = v176;
      *v74 = aBlock;
      *(v74 + 16) = v84;

      sub_1E137D75C(&aBlock);
      v85 = *(v28 + 16);
      v69 = __OFADD__(v85, 1);
      v86 = v85 + 1;
      if (v69)
      {
        goto LABEL_55;
      }

      *(v28 + 16) = v86;
LABEL_9:
      ++v29;
      v30 += 216;
      if (v156 == v29)
      {
        goto LABEL_21;
      }
    }

    sub_1E168EE80(v70, isUniquelyReferenced_nonNull_native);
    v65 = sub_1E15A47D8();
    if ((v71 & 1) != (v72 & 1))
    {
      goto LABEL_59;
    }

LABEL_16:
    if (v71)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_21:

  v88 = sub_1E15A1608(MEMORY[0x1E69E7CC0]);
  v157 = *(v158 + 16);
  if (v157)
  {
    v89 = 0;
    v90 = (v158 + 32);
    while (1)
    {
      if (v89 >= *(v158 + 16))
      {
        goto LABEL_53;
      }

      v91 = v90[1];
      aBlock = *v90;
      v176 = v91;
      v92 = v90[2];
      v93 = v90[3];
      v94 = v90[5];
      v179 = v90[4];
      v180 = v94;
      v177 = v92;
      v178 = v93;
      v95 = v90[6];
      v96 = v90[7];
      v97 = v90[9];
      v183 = v90[8];
      v184 = v97;
      v181 = v95;
      v182 = v96;
      v98 = v90[10];
      v99 = v90[11];
      v100 = v90[13];
      v187 = v90[12];
      v188 = v100;
      v185 = v98;
      v186 = v99;
      v160[0] = *(&aBlock + 1);
      v160[1] = v176;
      sub_1E1619330(&aBlock, &v161);
      AdamId.numberValue.getter();
      if (!v101)
      {
        goto LABEL_58;
      }

      v102 = v101;
      v103 = *(&v188 + 1);

      v104 = swift_isUniquelyReferenced_nonNull_native();
      *&v161 = v88;
      v105 = sub_1E1595C9C(v102);
      v107 = v88[2];
      v108 = (v106 & 1) == 0;
      v69 = __OFADD__(v107, v108);
      v109 = v107 + v108;
      if (v69)
      {
        goto LABEL_54;
      }

      v110 = v106;
      if (v88[3] < v109)
      {
        break;
      }

      if (v104)
      {
        goto LABEL_32;
      }

      v114 = v105;
      sub_1E141928C();
      v105 = v114;
      v88 = v161;
      if (v110)
      {
LABEL_23:
        *(v88[7] + 8 * v105) = v103;

        goto LABEL_24;
      }

LABEL_33:
      v88[(v105 >> 6) + 8] |= 1 << v105;
      *(v88[6] + 8 * v105) = v102;
      *(v88[7] + 8 * v105) = v103;
      v112 = v88[2];
      v69 = __OFADD__(v112, 1);
      v113 = v112 + 1;
      if (v69)
      {
        goto LABEL_56;
      }

      v88[2] = v113;
LABEL_24:
      ++v89;
      sub_1E161938C(&aBlock);
      v90 += 14;
      if (v157 == v89)
      {
        goto LABEL_37;
      }
    }

    sub_1E168EC10(v109, v104);
    v105 = sub_1E1595C9C(v102);
    if ((v110 & 1) != (v111 & 1))
    {
      goto LABEL_60;
    }

LABEL_32:
    v88 = v161;
    if (v110)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_37:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6D40, &unk_1E1B1F8F0);
  v115 = sub_1E1AF729C();
  v116 = v115;
  v117 = 0;
  v118 = 1 << *(v28 + 32);
  v119 = -1;
  if (v118 < 64)
  {
    v119 = ~(-1 << v118);
  }

  v120 = v119 & *(v28 + 64);
  v121 = (v118 + 63) >> 6;
  v153 = v115 + 64;
  v154 = v115;
  if (v120)
  {
    while (1)
    {
      v122 = __clz(__rbit64(v120));
      v120 &= v120 - 1;
LABEL_46:
      v125 = v122 | (v117 << 6);
      v126 = (*(v28 + 48) + 16 * v125);
      v159 = *v126;
      v155 = v126[1];
      v127 = *(v28 + 56) + 216 * v125;
      v128 = *(v127 + 16);
      aBlock = *v127;
      v176 = v128;
      v129 = *(v127 + 80);
      v131 = *(v127 + 32);
      v130 = *(v127 + 48);
      v179 = *(v127 + 64);
      v180 = v129;
      v177 = v131;
      v178 = v130;
      v132 = *(v127 + 144);
      v134 = *(v127 + 96);
      v133 = *(v127 + 112);
      v183 = *(v127 + 128);
      v184 = v132;
      v181 = v134;
      v182 = v133;
      v136 = *(v127 + 176);
      v135 = *(v127 + 192);
      v137 = *(v127 + 160);
      *&v188 = *(v127 + 208);
      v186 = v136;
      v187 = v135;
      v185 = v137;
      sub_1E13006E4(0, &qword_1EE1D25C0, 0x1E698B518);
      v171 = *(v127 + 160);
      v172 = *(v127 + 176);
      v173 = *(v127 + 192);
      v174 = *(v127 + 208);
      v167 = *(v127 + 96);
      v168 = *(v127 + 112);
      v169 = *(v127 + 128);
      v170 = *(v127 + 144);
      v163 = *(v127 + 32);
      v164 = *(v127 + 48);
      v165 = *(v127 + 64);
      v166 = *(v127 + 80);
      v161 = *v127;
      v162 = *(v127 + 16);

      sub_1E141CFB8(&aBlock, v160);
      sub_1E162EB3C(&v161);
      v116 = v154;
      *(v153 + ((v125 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v125;
      v138 = (v154[6] + 16 * v125);
      *v138 = v159;
      v138[1] = v155;
      *(v154[7] + 8 * v125) = v139;
      v140 = v154[2];
      v69 = __OFADD__(v140, 1);
      v141 = v140 + 1;
      if (v69)
      {
        break;
      }

      v154[2] = v141;
      if (!v120)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
LABEL_41:
    v123 = v117;
    while (1)
    {
      v117 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        break;
      }

      if (v117 >= v121)
      {
        v142 = v116;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6D48, qword_1E1B40260);
        v143 = sub_1E1AF588C();
        v144 = [objc_opt_self() sharedManager];
        sub_1E14C6B28(v88);

        sub_1E13006E4(0, &qword_1EE1E31F0, 0x1E696AD98);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
        sub_1E16193E0();
        v145 = sub_1E1AF5C6C();

        sub_1E14C6330(*(a1 + 24));
        v146 = sub_1E1AF5C6C();

        sub_1E1300B24(v152 + 80, &aBlock);
        v147 = swift_allocObject();
        sub_1E1308EC0(&aBlock, (v147 + 2));
        v147[7] = v142;
        v147[8] = 0xD000000000000020;
        v147[9] = 0x80000001E1B6ACE0;
        v147[10] = v143;
        *&v177 = sub_1E161998C;
        *(&v177 + 1) = v147;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v176 = sub_1E1619988;
        *(&v176 + 1) = &block_descriptor_38_0;
        v148 = _Block_copy(&aBlock);

        [v144 purchaseBatchWithItemMetadata:v145 additionalBuyParams:v146 withResultHandler:v148];
        _Block_release(v148);

        *(swift_allocObject() + 16) = v28;
        *(&v176 + 1) = sub_1E1AF470C();
        *&v177 = MEMORY[0x1E69AB218];
        __swift_allocate_boxed_opaque_existential_0(&aBlock);
        sub_1E1AF46FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6D50, &unk_1E1B1F900);
        v149 = sub_1E1AF57DC();

        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        return v149;
      }

      v124 = *(v28 + 64 + 8 * v117);
      ++v123;
      if (v124)
      {
        v122 = __clz(__rbit64(v124));
        v120 = (v124 - 1) & v124;
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  sub_1E1AF757C();
  __break(1u);
LABEL_60:
  sub_1E13006E4(0, &qword_1EE1E31F0, 0x1E696AD98);
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

uint64_t sub_1E1616394(uint64_t a1)
{
  v2 = sub_1E15A13E8(MEMORY[0x1E69E7CC0]);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      v26 = *(v4 + 176);
      v128 = *(v4 + 160);
      v129 = v26;
      v130 = *(v4 + 192);
      v131 = *(v4 + 208);
      v27 = *(v4 + 112);
      v124 = *(v4 + 96);
      v125 = v27;
      v28 = *(v4 + 144);
      v126 = *(v4 + 128);
      v127 = v28;
      v29 = *(v4 + 48);
      v120 = *(v4 + 32);
      v121 = v29;
      v30 = *(v4 + 80);
      v122 = *(v4 + 64);
      v123 = v30;
      v31 = *(v4 + 16);
      aBlock = *v4;
      v119 = v31;
      v33 = *(&aBlock + 1);
      v32 = v31;
      sub_1E141CFB8(&aBlock, &v104);
      sub_1E141CFB8(&aBlock, &v104);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v103[0] = v2;
      v35 = sub_1E15A47D8();
      v37 = *(v2 + 16);
      v38 = (v36 & 1) == 0;
      v39 = __OFADD__(v37, v38);
      v40 = v37 + v38;
      if (v39)
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        result = sub_1E1AF757C();
        __break(1u);
        return result;
      }

      v41 = v36;
      if (*(v2 + 24) < v40)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v57 = v35;
      sub_1E14193F0();
      v35 = v57;
      if (v41)
      {
LABEL_3:
        v2 = v103[0];
        v5 = *(v103[0] + 56) + 216 * v35;
        v6 = *(v5 + 16);
        v104 = *v5;
        v105 = v6;
        v7 = *(v5 + 80);
        v9 = *(v5 + 32);
        v8 = *(v5 + 48);
        v108 = *(v5 + 64);
        v109 = v7;
        v106 = v9;
        v107 = v8;
        v10 = *(v5 + 144);
        v12 = *(v5 + 96);
        v11 = *(v5 + 112);
        v112 = *(v5 + 128);
        v113 = v10;
        v110 = v12;
        v111 = v11;
        v14 = *(v5 + 176);
        v13 = *(v5 + 192);
        v15 = *(v5 + 160);
        v117 = *(v5 + 208);
        v115 = v14;
        v116 = v13;
        v114 = v15;
        v16 = v119;
        *v5 = aBlock;
        *(v5 + 16) = v16;
        v17 = v120;
        v18 = v121;
        v19 = v123;
        *(v5 + 64) = v122;
        *(v5 + 80) = v19;
        *(v5 + 32) = v17;
        *(v5 + 48) = v18;
        v20 = v124;
        v21 = v125;
        v22 = v127;
        *(v5 + 128) = v126;
        *(v5 + 144) = v22;
        *(v5 + 96) = v20;
        *(v5 + 112) = v21;
        v23 = v128;
        v24 = v129;
        v25 = v130;
        *(v5 + 208) = v131;
        *(v5 + 176) = v24;
        *(v5 + 192) = v25;
        *(v5 + 160) = v23;
        sub_1E137D75C(&v104);
        sub_1E137D75C(&aBlock);
        goto LABEL_4;
      }

LABEL_11:
      v2 = v103[0];
      *(v103[0] + 8 * (v35 >> 6) + 64) |= 1 << v35;
      v43 = (*(v2 + 48) + 16 * v35);
      *v43 = v33;
      v43[1] = v32;
      v44 = *(v2 + 56) + 216 * v35;
      v45 = v131;
      v47 = v129;
      v46 = v130;
      *(v44 + 160) = v128;
      *(v44 + 176) = v47;
      *(v44 + 192) = v46;
      *(v44 + 208) = v45;
      v49 = v126;
      v48 = v127;
      v50 = v125;
      *(v44 + 96) = v124;
      *(v44 + 112) = v50;
      *(v44 + 128) = v49;
      *(v44 + 144) = v48;
      v52 = v122;
      v51 = v123;
      v53 = v121;
      *(v44 + 32) = v120;
      *(v44 + 48) = v53;
      *(v44 + 64) = v52;
      *(v44 + 80) = v51;
      v54 = v119;
      *v44 = aBlock;
      *(v44 + 16) = v54;

      sub_1E137D75C(&aBlock);
      v55 = *(v2 + 16);
      v39 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v39)
      {
        goto LABEL_33;
      }

      *(v2 + 16) = v56;
LABEL_4:
      v4 += 216;
      if (!--v3)
      {
        goto LABEL_15;
      }
    }

    sub_1E168EE80(v40, isUniquelyReferenced_nonNull_native);
    v35 = sub_1E15A47D8();
    if ((v41 & 1) != (v42 & 1))
    {
      goto LABEL_36;
    }

LABEL_10:
    if (v41)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6D40, &unk_1E1B1F8F0);
  v58 = sub_1E1AF729C();
  v59 = v58;
  v60 = 0;
  v61 = 1 << *(v2 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v63 = v62 & *(v2 + 64);
  v64 = (v61 + 63) >> 6;
  v99 = v58 + 64;
  for (i = v58; v63; i[2] = v85)
  {
    v65 = __clz(__rbit64(v63));
    v63 &= v63 - 1;
LABEL_24:
    v68 = v65 | (v60 << 6);
    v69 = (*(v2 + 48) + 16 * v68);
    v70 = v69[1];
    v102 = *v69;
    v71 = *(v2 + 56) + 216 * v68;
    v72 = *(v71 + 16);
    aBlock = *v71;
    v119 = v72;
    v73 = *(v71 + 80);
    v75 = *(v71 + 32);
    v74 = *(v71 + 48);
    v122 = *(v71 + 64);
    v123 = v73;
    v120 = v75;
    v121 = v74;
    v76 = *(v71 + 144);
    v78 = *(v71 + 96);
    v77 = *(v71 + 112);
    v126 = *(v71 + 128);
    v127 = v76;
    v124 = v78;
    v125 = v77;
    v80 = *(v71 + 176);
    v79 = *(v71 + 192);
    v81 = *(v71 + 160);
    v131 = *(v71 + 208);
    v129 = v80;
    v130 = v79;
    v128 = v81;
    sub_1E13006E4(0, &qword_1EE1D25C0, 0x1E698B518);
    v114 = *(v71 + 160);
    v115 = *(v71 + 176);
    v116 = *(v71 + 192);
    v117 = *(v71 + 208);
    v110 = *(v71 + 96);
    v111 = *(v71 + 112);
    v112 = *(v71 + 128);
    v113 = *(v71 + 144);
    v106 = *(v71 + 32);
    v107 = *(v71 + 48);
    v108 = *(v71 + 64);
    v109 = *(v71 + 80);
    v104 = *v71;
    v105 = *(v71 + 16);

    sub_1E141CFB8(&aBlock, v103);
    sub_1E162EB3C(&v104);
    v59 = i;
    *(v99 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v68;
    v82 = (i[6] + 16 * v68);
    *v82 = v102;
    v82[1] = v70;
    *(i[7] + 8 * v68) = v83;
    v84 = i[2];
    v39 = __OFADD__(v84, 1);
    v85 = v84 + 1;
    if (v39)
    {
      goto LABEL_34;
    }
  }

  v66 = v60;
  while (1)
  {
    v60 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v60 >= v64)
    {
      break;
    }

    v67 = *(v2 + 64 + 8 * v60);
    ++v66;
    if (v67)
    {
      v65 = __clz(__rbit64(v67));
      v63 = (v67 - 1) & v67;
      goto LABEL_24;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6D48, qword_1E1B40260);
  v86 = sub_1E1AF588C();
  v87 = [objc_opt_self() sharedManager];
  v88 = v87;
  v89 = *(v59 + 16);
  if (v89)
  {
    v101 = v87;
    v90 = sub_1E154713C();
    v91 = sub_1E1546BBC(&aBlock, (v90 + 32), v89, v59);
    v92 = aBlock;

    sub_1E1337ECC(v92);
    if (v91 != v89)
    {
      goto LABEL_35;
    }

    v88 = v101;
  }

  sub_1E13006E4(0, &qword_1EE1D25C0, 0x1E698B518);
  v93 = sub_1E1AF620C();

  sub_1E1300B24(v98 + 80, &aBlock);
  v94 = swift_allocObject();
  sub_1E1308EC0(&aBlock, (v94 + 2));
  v94[7] = i;
  v94[8] = 0xD000000000000023;
  v94[9] = 0x80000001E1B6AB40;
  v94[10] = v86;
  *&v120 = sub_1E161932C;
  *(&v120 + 1) = v94;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v119 = sub_1E1619988;
  *(&v119 + 1) = &block_descriptor_28_0;
  v95 = _Block_copy(&aBlock);

  [v88 processPurchases:v93 withResponseHandler:v95];
  _Block_release(v95);

  *(swift_allocObject() + 16) = v2;
  *(&v119 + 1) = sub_1E1AF470C();
  *&v120 = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(&aBlock);
  sub_1E1AF46FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6D50, &unk_1E1B1F900);
  v96 = sub_1E1AF57DC();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  return v96;
}

void sub_1E1616AE8(void *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v5 = *a1 + 56;
  v6 = 1 << *(*a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(*a1 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (v8)
  {
    v12 = v8;
LABEL_10:
    v8 = (v12 - 1) & v12;
    if (*(a2 + 16))
    {

      v14 = sub_1E15A47D8();
      if (v15)
      {
        v16 = *(a2 + 56) + 216 * v14;
        v17 = *(v16 + 16);
        v43 = *v16;
        v44 = v17;
        v18 = *(v16 + 80);
        v20 = *(v16 + 32);
        v19 = *(v16 + 48);
        v47 = *(v16 + 64);
        v48 = v18;
        v45 = v20;
        v46 = v19;
        v21 = *(v16 + 144);
        v23 = *(v16 + 96);
        v22 = *(v16 + 112);
        v51 = *(v16 + 128);
        v52 = v21;
        v49 = v23;
        v50 = v22;
        v25 = *(v16 + 176);
        v24 = *(v16 + 192);
        v26 = *(v16 + 160);
        v56 = *(v16 + 208);
        v54 = v25;
        v55 = v24;
        v53 = v26;
        sub_1E141CFB8(&v43, v42);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1E172E9F0(0, *(v11 + 2) + 1, 1, v11);
        }

        v28 = *(v11 + 2);
        v27 = *(v11 + 3);
        v29 = v28 + 1;
        if (v28 >= v27 >> 1)
        {
          v41 = sub_1E172E9F0((v27 > 1), v28 + 1, 1, v11);
          v29 = v28 + 1;
          v11 = v41;
        }

        *(v11 + 2) = v29;
        v30 = &v11[216 * v28];
        v31 = v44;
        *(v30 + 2) = v43;
        *(v30 + 3) = v31;
        v32 = v45;
        v33 = v46;
        v34 = v48;
        *(v30 + 6) = v47;
        *(v30 + 7) = v34;
        *(v30 + 4) = v32;
        *(v30 + 5) = v33;
        v35 = v49;
        v36 = v50;
        v37 = v52;
        *(v30 + 10) = v51;
        *(v30 + 11) = v37;
        *(v30 + 8) = v35;
        *(v30 + 9) = v36;
        v38 = v53;
        v39 = v54;
        v40 = v55;
        *(v30 + 30) = v56;
        *(v30 + 13) = v39;
        *(v30 + 14) = v40;
        *(v30 + 12) = v38;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      *a3 = v11;
      return;
    }

    v12 = *(v5 + 8 * v13);
    ++v10;
    if (v12)
    {
      v10 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1E1616D2C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v87 = a7;
  *(&v95 + 1) = a6;
  *&v95 = a5;
  v96 = a4;
  v10 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v99 = sub_1E1AF591C();
  v12 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a3, a3[3]);
  sub_1E1AF49DC();

  if (!a1)
  {
    if (!a2)
    {
      if (qword_1EE1E35A0 == -1)
      {
LABEL_39:
        __swift_project_value_buffer(v99, qword_1EE216128);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
        sub_1E1AF388C();
        sub_1E1AF387C();
        *(&v103 + 1) = MEMORY[0x1E69E6158];
        v102 = v95;

        sub_1E1AF385C();
        sub_1E1308058(&v102, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        sub_1E1AF387C();
        sub_1E1AF38AC();
        sub_1E1AF54AC();

        *&v102 = MEMORY[0x1E69E7CD0];
        sub_1E1AF586C();
        return;
      }

LABEL_93:
      swift_once();
      goto LABEL_39;
    }

    v41 = a2;
    sub_1E1AF584C();
    v42 = a2;

    goto LABEL_32;
  }

  v14 = &selRef_addPayment_;
  v86 = a1;
  if (([v86 success] & 1) == 0)
  {
    v43 = [v86 error];
    if (!v43)
    {
      if (qword_1EE1E35A0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v99, qword_1EE216128);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      *(&v103 + 1) = MEMORY[0x1E69E6158];
      v102 = v95;

      sub_1E1AF385C();
      sub_1E1308058(&v102, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      sub_1E1AF54AC();

      *&v102 = MEMORY[0x1E69E7CD0];
      sub_1E1AF586C();
      goto LABEL_89;
    }

    v44 = v43;
    sub_1E1AF584C();

    v42 = v86;

LABEL_32:

    return;
  }

  v109 = MEMORY[0x1E69E7CC0];
  v15 = [v86 items];
  sub_1E13006E4(0, &qword_1ECEB6D58, 0x1E698B548);
  v16 = sub_1E1AF621C();

  if (v16 >> 62)
  {
    v17 = sub_1E1AF71CC();
    if (v17)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
LABEL_5:
      v94 = v17;
      if (v17 >= 1)
      {
        v18 = 0;
        v98 = v16 & 0xC000000000000001;
        v92 = (v12 + 16);
        v91 = "s neither success nor error";
        v90 = (v12 + 8);
        v88 = MEMORY[0x1E69E7CC0];
        v89 = xmmword_1E1B02CC0;
        v93 = v16;
        v19 = v94;
        while (1)
        {
          if (v98)
          {
            v20 = MEMORY[0x1E68FFD80](v18, v16);
          }

          else
          {
            v20 = *(v16 + 8 * v18 + 32);
          }

          v21 = v20;
          if ([v20 v14[35]] && (v22 = sub_1E1617DA4(v96)) != 0)
          {
            v23 = v22;
            MEMORY[0x1E68FEF20]();
            if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E1AF625C();
              v19 = v94;
            }

            sub_1E1AF62AC();

            v88 = v109;
          }

          else
          {
            v24 = [v21 error];
            if (v24)
            {
              v25 = v24;
              v26 = [v21 purchase];
              if (v26)
              {
                v27 = v26;
                v28 = [v26 itemID];

                v29 = [v28 stringValue];
                goto LABEL_21;
              }

              v29 = [v21 bundleID];
              if (v29)
              {
LABEL_21:
                v30 = sub_1E1AF5DFC();
                v32 = v31;
              }

              else
              {
                v30 = 0;
                v32 = 0;
              }

              if (qword_1EE1E35A0 != -1)
              {
                swift_once();
              }

              v33 = v99;
              v34 = __swift_project_value_buffer(v99, qword_1EE216128);
              (*v92)(v97, v34, v33);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
              sub_1E1AF38EC();
              *(swift_allocObject() + 16) = v89;
              sub_1E1AF388C();
              sub_1E1AF387C();
              v35 = MEMORY[0x1E69E6158];
              *(&v103 + 1) = MEMORY[0x1E69E6158];
              v102 = v95;

              sub_1E1AF385C();
              sub_1E1308058(&v102, &qword_1ECEB2DF0, &unk_1E1B02CE0);
              sub_1E1AF387C();
              if (v32)
              {
                *(&v103 + 1) = v35;
                *&v102 = v30;
                *(&v102 + 1) = v32;
              }

              else
              {
                v103 = 0u;
                v102 = 0u;
              }

              sub_1E1AF385C();
              sub_1E1308058(&v102, &qword_1ECEB2DF0, &unk_1E1B02CE0);
              sub_1E1AF387C();
              swift_getErrorValue();
              v36 = v100;
              v37 = v101;
              *(&v103 + 1) = v101;
              boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v102);
              (*(*(v37 - 8) + 16))(boxed_opaque_existential_0, v36, v37);
              sub_1E1AF386C();
              sub_1E1308058(&v102, &qword_1ECEB2DF0, &unk_1E1B02CE0);
              sub_1E1AF387C();
              sub_1E1AF38AC();
              v39 = v99;
              v40 = v97;
              sub_1E1AF54AC();

              (*v90)(v40, v39);
              v14 = &selRef_addPayment_;
              v19 = v94;
              v16 = v93;
              goto LABEL_8;
            }
          }

LABEL_8:
          if (v19 == ++v18)
          {

            v45 = v88;
            goto LABEL_45;
          }
        }
      }

      __break(1u);
      goto LABEL_91;
    }
  }

  v45 = MEMORY[0x1E69E7CC0];
LABEL_45:
  v97 = (v45 >> 62);
  if (v45 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E1AF71CC())
  {
    v47 = 0;
    v99 = v45 & 0xC000000000000001;
    v98 = v45 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v99)
      {
        v48 = MEMORY[0x1E68FFD80](v47, v45);
      }

      else
      {
        if (v47 >= *(v98 + 16))
        {
          goto LABEL_60;
        }

        v48 = *(v45 + 8 * v47 + 32);
      }

      v49 = v48;
      v50 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      v51 = [objc_opt_self() defaultCenter];
      if (qword_1EE1E6DB0 != -1)
      {
        swift_once();
      }

      v52 = qword_1EE1E6DB8;
      *&v102 = 0x6573616863727570;
      *(&v102 + 1) = 0xE800000000000000;
      sub_1E1AF6F6C();
      v108 = sub_1E13006E4(0, &qword_1EE1D25C0, 0x1E698B518);
      v107 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27B8, &qword_1E1B19E10);
      v53 = sub_1E1AF72CC();
      v54 = v49;
      sub_1E134FD1C(v106, &v102, &qword_1ECEBCAA0, &unk_1E1B02C50);
      v55 = sub_1E135FCF4(&v102);
      if (v56)
      {
        goto LABEL_61;
      }

      v53[(v55 >> 6) + 8] |= 1 << v55;
      v57 = v53[6] + 40 * v55;
      v58 = v102;
      v59 = v103;
      *(v57 + 32) = v104;
      *v57 = v58;
      *(v57 + 16) = v59;
      sub_1E1301CF0(&v105, (v53[7] + 32 * v55));
      v60 = v53[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_62;
      }

      v53[2] = v62;
      sub_1E1308058(v106, &qword_1ECEBCAA0, &unk_1E1B02C50);
      v63 = v45;
      v64 = sub_1E1AF5C6C();

      [v51 postNotificationName:v52 object:0 userInfo:v64];

      v45 = v63;
      ++v47;
      if (v50 == i)
      {
        goto LABEL_64;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

LABEL_64:
  if (v97)
  {
    v65 = sub_1E1AF71CC();
  }

  else
  {
    v65 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = MEMORY[0x1E69E7CC0];
  if (!v65)
  {
    v71 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_75;
    }

LABEL_86:
    v72 = sub_1E1AF71CC();
    if (v72)
    {
      goto LABEL_76;
    }

    goto LABEL_87;
  }

  *&v102 = MEMORY[0x1E69E7CC0];
  sub_1E1AF70EC();
  if (v65 < 0)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v67 = 0;
  do
  {
    if ((v45 & 0xC000000000000001) != 0)
    {
      v68 = MEMORY[0x1E68FFD80](v67, v45);
    }

    else
    {
      v68 = *(v45 + 8 * v67 + 32);
    }

    v69 = v68;
    ++v67;
    v70 = [v68 itemID];

    sub_1E1AF70BC();
    sub_1E1AF70FC();
    sub_1E1AF710C();
    sub_1E1AF70CC();
  }

  while (v65 != v67);
  v71 = v102;
  if (v102 >> 62)
  {
    goto LABEL_86;
  }

LABEL_75:
  v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v72)
  {
LABEL_76:
    *&v102 = v66;
    sub_1E135C028(0, v72 & ~(v72 >> 63), 0);
    if (v72 < 0)
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v73 = 0;
    v74 = v102;
    do
    {
      if ((v71 & 0xC000000000000001) != 0)
      {
        v75 = MEMORY[0x1E68FFD80](v73, v71);
      }

      else
      {
        v75 = *(v71 + 8 * v73 + 32);
      }

      v76 = v75;
      v77 = [v75 stringValue];
      v78 = sub_1E1AF5DFC();
      v80 = v79;

      *&v102 = v74;
      v82 = *(v74 + 16);
      v81 = *(v74 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_1E135C028((v81 > 1), v82 + 1, 1);
        v74 = v102;
      }

      ++v73;
      *(v74 + 16) = v82 + 1;
      v83 = v74 + 16 * v82;
      *(v83 + 32) = v78;
      *(v83 + 40) = v80;
    }

    while (v72 != v73);

    goto LABEL_88;
  }

LABEL_87:

  v74 = MEMORY[0x1E69E7CC0];
LABEL_88:
  v84 = sub_1E13C49CC(v74);

  *&v102 = v84;
  sub_1E1AF586C();

LABEL_89:
}

id sub_1E1617DA4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF591C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v2 purchase];
  if (v12)
  {

    return [v2 purchase];
  }

  v63 = v6;
  v67 = v2;
  v14 = [v2 itemID];
  if (v14)
  {
    v15 = v14;
    v16 = [v15 stringValue];
    sub_1E1AF5DFC();

    if (*(a1 + 16))
    {
      v17 = sub_1E15A47D8();
      v19 = v18;

      if (v19)
      {
        v13 = *(*(a1 + 56) + 8 * v17);

        return v13;
      }
    }

    else
    {
    }
  }

  v64 = v11;
  v65 = v8;
  if (qword_1EE1E35A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v20 = __swift_project_value_buffer(v7, qword_1EE216128);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  v22 = *(sub_1E1AF38EC() - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v57 = *(v22 + 80);
  v58 = v23;
  v59 = v21;
  v25 = swift_allocObject();
  v56 = xmmword_1E1B02CC0;
  *(v25 + 16) = xmmword_1E1B02CC0;
  v61 = v24;
  sub_1E1AF382C();
  v62 = v7;
  v60 = v20;
  sub_1E1AF54AC();

  v26 = a1 + 64;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(a1 + 64);
  v7 = (v27 + 63) >> 6;

  v30 = 0;
  v31 = &selRef_remoteDownloadIdentifiersDidChange_;
  v66 = a1;
  while (v29)
  {
    v33 = v67;
LABEL_23:
    v13 = *(*(a1 + 56) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
    v35 = [v13 v31[71]];
    if (v35)
    {
      v36 = v35;
      v37 = sub_1E1AF5DFC();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    v29 &= v29 - 1;
    v40 = [v33 v31[71]];
    if (v40)
    {
      v41 = v40;
      v42 = sub_1E1AF5DFC();
      v44 = v43;

      if (!v39)
      {
        if (!v44)
        {
          goto LABEL_44;
        }

        goto LABEL_14;
      }

      if (v44)
      {
        if (v37 == v42 && v39 == v44)
        {

          return v13;
        }

        v32 = sub_1E1AF74AC();

        if (v32)
        {
LABEL_44:

          return v13;
        }

LABEL_14:

        goto LABEL_15;
      }
    }

    else if (!v39)
    {
      goto LABEL_44;
    }

LABEL_15:
    a1 = v66;
    v31 = &selRef_remoteDownloadIdentifiersDidChange_;
  }

  v33 = v67;
  while (1)
  {
    v34 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v34 >= v7)
    {
      break;
    }

    v29 = *(v26 + 8 * v34);
    ++v30;
    if (v29)
    {
      v30 = v34;
      goto LABEL_23;
    }
  }

  v45 = v62;
  (*(v65 + 16))(v64, v60, v62);
  *(swift_allocObject() + 16) = v56;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v46 = [v33 itemID];
  v47 = v46;
  if (v46)
  {
    v46 = sub_1E13006E4(0, &qword_1EE1E31F0, 0x1E696AD98);
  }

  else
  {
    v69 = 0;
    v70 = 0;
  }

  v68 = v47;
  v71 = v46;
  sub_1E1AF385C();
  sub_1E1308058(&v68, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  v48 = [v33 v31 + 3960];
  if (v48)
  {
    v49 = v48;
    v50 = sub_1E1AF5DFC();
    v52 = v51;

    v53 = MEMORY[0x1E69E6158];
  }

  else
  {
    v50 = 0;
    v52 = 0;
    v53 = 0;
    v70 = 0;
  }

  v68 = v50;
  v69 = v52;
  v71 = v53;
  sub_1E1AF385C();
  sub_1E1308058(&v68, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  v54 = v64;
  sub_1E1AF54AC();

  (*(v65 + 8))(v54, v45);
  return 0;
}

uint64_t sub_1E1618440(uint64_t *a1, char a2)
{
  v5 = sub_1E1AF4C2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB29A8, &qword_1E1B03100);
  v11 = sub_1E1AF588C();
  v12 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  v20[0] = v10;
  v20[1] = v9;
  v21 = 0;
  (*(v12 + 64))(v20, &v21, ObjectType, v12);
  sub_1E1AF4C1C();

  sub_1E1AF422C();
  (*(v6 + 104))(v8, *MEMORY[0x1E69AB2E0], v5);
  v14 = sub_1E1AF4BCC();

  (*(v6 + 8))(v8, v5);
  sub_1E136A378(v10, v9, a2, v14, "AppStoreKit/Commerce.swift", 26, 2);

  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v11;
  v16[3] = v15;
  v16[4] = v10;
  v16[5] = v9;
  v17 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  swift_retain_n();

  v18 = sub_1E1AF68EC();
  v20[3] = v17;
  v20[4] = MEMORY[0x1E69AB720];
  v20[0] = v18;
  sub_1E1AF57FC();

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v11;
}

uint64_t sub_1E1618704(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a1)
  {
    v16 = *a1;
    return sub_1E1AF586C();
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v10 = *(result + 32);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v12 = a4;
      v15[0] = a4;
      v15[1] = a5;
      v13 = swift_allocObject();
      *(v13 + 16) = a3;
      *(v13 + 24) = v12;
      *(v13 + 32) = a5;
      *(v13 + 40) = a2;
      *(v13 + 48) = 0;
      v14 = *(v10 + 24);

      v14(v15, sub_1E16194C4, v13, ObjectType, v10);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1E1618844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + 32);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    *&v61 = a2;
    *(&v61 + 1) = a3;
    (*(v9 + 72))(&v61, 0, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  if (v11)
  {
    v12 = *(v11 + 32);
    swift_unknownObjectRetain();

    v13 = swift_getObjectType();
    *&v61 = a2;
    *(&v61 + 1) = a3;
    v14 = (*(v12 + 56))(&v61, v13, v12);
    v42 = v15;
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
    v42 = 0;
  }

  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  *&v41 = a2;
  *(&v41 + 1) = a3;
  if (!v16)
  {
    v19 = 0;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = xmmword_1E1B0E0F0;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v20 = 0x3FFFFFEFELL;
    goto LABEL_12;
  }

  v17 = *(v16 + 32);
  swift_unknownObjectRetain();

  v18 = swift_getObjectType();
  *&v76 = a2;
  *(&v76 + 1) = a3;
  (*(v17 + 48))(&v61, &v76, v18, v17);
  swift_unknownObjectRelease();
  v78 = v63;
  v79 = v64;
  v76 = v61;
  v77 = v62;
  v19 = *(&v64 + 1);
  v20 = v64;
  v73 = v61;
  v74 = v62;
  v75 = v63;
  if ((v64 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
LABEL_12:
    sub_1E134FD1C(&v76, &v61, &unk_1ECEB7B50, &qword_1E1B16990);
    v61 = v73;
    v62 = v74;
    v63 = v75;
    *&v64 = v20;
    *(&v64 + 1) = v19;
    v65 = 1;
    v71 = 0x1000000000000000;
    sub_1E1308058(&v61, &qword_1ECEB5668, &unk_1E1B16B30);
    goto LABEL_13;
  }

  v61 = v76;
  v62 = v77;
  v63 = v78;
  v57 = v76;
  v58 = v77;
  v59 = v78;
  v60 = v64;
  *&v53 = 1;
  *&v56 = 0x1000000000000000;
  sub_1E134FD1C(&v76, &v49, &unk_1ECEB7B50, &qword_1E1B16990);
  sub_1E134FD1C(&v61, &v49, &unk_1ECEB7B50, &qword_1E1B16990);
  v21 = _s11AppStoreKit06LegacyA5StateO2eeoiySbAC_ACtFZ_0(&v57, &v53);
  v45 = v53;
  v46 = v54;
  v47 = v55;
  v48 = v56;
  sub_1E139CEA8(&v45);
  v49 = v57;
  v50 = v58;
  v51 = v59;
  v52 = v60;
  sub_1E139CEA8(&v49);
  v53 = v73;
  v54 = v74;
  v55 = v75;
  v56 = __PAIR128__(v19, v20);
  sub_1E1308058(&v53, &unk_1ECEB7B50, &qword_1E1B16990);
  if (v21)
  {
    if (v14)
    {
      v22 = a5;
      v23 = swift_getObjectType();
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = xmmword_1E1B11BA0;
      v24 = *(v42 + 64);
      swift_unknownObjectRetain();
      v25 = v23;
      a5 = v22;
      v24(&v61, v25, v42);
LABEL_25:
      swift_unknownObjectRelease();
      goto LABEL_26;
    }

    goto LABEL_26;
  }

LABEL_13:
  v44 = a5;
  if (v14)
  {
    v26 = swift_getObjectType();
    v27 = *(v42 + 16);
    swift_unknownObjectRetain();
    v27(&v61, v26, v42);
    swift_unknownObjectRelease();
    v29 = *(&v61 + 1);
    v28 = v61;
    v30 = *(&v62 + 1);
    v31 = v62;
    v14 = *(&v63 + 1);
    v32 = v63;
    v33 = *(&v64 + 1);
    v34 = v64;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v31 = 0;
    v30 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0x3FFFFFEFELL;
  }

  v73 = v76;
  v74 = v77;
  v75 = v78;
  v35 = v79;
  if ((v79 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    if ((v34 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
    {
      v61 = v76;
      v62 = v77;
      v63 = v78;
      v64 = v79;
      sub_1E134FD1C(&v76, &v57, &unk_1ECEB7B50, &qword_1E1B16990);
      sub_1E1308058(&v61, &unk_1ECEB7B50, &qword_1E1B16990);
      a5 = v44;
      goto LABEL_26;
    }

    v43 = v33;
    sub_1E134FD1C(&v76, &v61, &unk_1ECEB7B50, &qword_1E1B16990);
    goto LABEL_22;
  }

  v61 = v76;
  v62 = v77;
  v63 = v78;
  v64 = v79;
  v57 = v76;
  v58 = v77;
  v59 = v78;
  v60 = v79;
  if ((v34 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    v43 = v33;
    v53 = v61;
    v54 = v62;
    v55 = v63;
    v56 = v64;
    sub_1E134FD1C(&v76, &v49, &unk_1ECEB7B50, &qword_1E1B16990);
    sub_1E134FD1C(&v61, &v49, &unk_1ECEB7B50, &qword_1E1B16990);
    sub_1E139CEA8(&v53);
LABEL_22:
    v61 = v73;
    v62 = v74;
    v63 = v75;
    v64 = v35;
    v65 = v28;
    v66 = v29;
    v67 = v31;
    v68 = v30;
    v69 = v32;
    v70 = v14;
    v71 = v34;
    v72 = v43;
    sub_1E1308058(&v61, &qword_1ECEB5668, &unk_1E1B16B30);
    a5 = v44;
    goto LABEL_23;
  }

  *&v53 = v28;
  *(&v53 + 1) = v29;
  *&v54 = v31;
  *(&v54 + 1) = v30;
  *&v55 = v32;
  *(&v55 + 1) = v14;
  *&v56 = v34;
  *(&v56 + 1) = v33;
  sub_1E134FD1C(&v76, &v49, &unk_1ECEB7B50, &qword_1E1B16990);
  sub_1E134FD1C(&v61, &v49, &unk_1ECEB7B50, &qword_1E1B16990);
  v40 = _s11AppStoreKit06LegacyA5StateO2eeoiySbAC_ACtFZ_0(&v57, &v53);
  v45 = v53;
  v46 = v54;
  v47 = v55;
  v48 = v56;
  sub_1E139CEA8(&v45);
  v49 = v57;
  v50 = v58;
  v51 = v59;
  v52 = v60;
  sub_1E139CEA8(&v49);
  v53 = v73;
  v54 = v74;
  v55 = v75;
  v56 = v35;
  sub_1E1308058(&v53, &unk_1ECEB7B50, &qword_1E1B16990);
  a5 = v44;
  if (v40)
  {
    goto LABEL_26;
  }

LABEL_23:
  swift_beginAccess();
  v36 = swift_weakLoadStrong();
  if (v36)
  {
    v37 = *(v36 + 32);
    swift_unknownObjectRetain();

    v38 = swift_getObjectType();
    v57 = v41;
    (*(v37 + 40))(&v57, v38, v37);
    goto LABEL_25;
  }

LABEL_26:
  LOBYTE(v57) = a5;
  sub_1E1AF586C();
  swift_unknownObjectRelease();
  return sub_1E1308058(&v76, &unk_1ECEB7B50, &qword_1E1B16990);
}

void *Commerce.deinit()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return v0;
}

uint64_t Commerce.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_1E1618FF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0, &unk_1E1B1C8F0);
  sub_1E1AF421C();

  sub_1E1AF55EC();
  *(v2 + 24) = v5[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5648, &unk_1E1B16980);
  sub_1E1AF55EC();
  sub_1E1308EC0(v5, v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3D70, &qword_1E1B1ABC0);
  sub_1E1AF55EC();
  sub_1E1308EC0(v5, v2 + 80);
  *(v2 + 120) = a2;
  return v2;
}

uint64_t dispatch thunk of Commerce.purchase(with:)()
{
  return (*(*v0 + 136))();
}

{
  return (*(*v0 + 152))();
}

unint64_t sub_1E16193E0()
{
  result = qword_1EE1E31E8;
  if (!qword_1EE1E31E8)
  {
    sub_1E13006E4(255, &qword_1EE1E31F0, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E31E8);
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroy_52Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_46Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_49Tm_1()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_55Tm_0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

double sub_1E1619740(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t objectdestroy_2Tm_0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocObject();
}

uint64_t objectdestroy_94Tm()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

id sub_1E16199F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = 100;
  result = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(a1, &v4, 1, 2);
  *a2 = result;
  return result;
}

Swift::Bool __swiftcall AppStateController.isLocalApplication(for:)(AppStoreKit::AdamId a1)
{
  v2 = *(a1.underlyingAdamID._countAndFlagsBits + 8);
  v4[0] = *a1.underlyingAdamID._countAndFlagsBits;
  v4[1] = v2;
  return (*(v1 + 88))(v4, 0, a1.underlyingAdamID._object) & 1;
}

Swift::Void __swiftcall AppStateController.clearWaiting(for:)(AppStoreKit::AdamId a1)
{
  v2 = *(a1.underlyingAdamID._countAndFlagsBits + 8);
  v3[0] = *a1.underlyingAdamID._countAndFlagsBits;
  v3[1] = v2;
  (*(v1 + 72))(v3, 1, a1.underlyingAdamID._object);
}

uint64_t dispatch thunk of AppStateController.refreshUpdateRegistry(for:externalVersionId:buyParams:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 80) + **(a6 + 80));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1E130B5DC;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AppStateController.fetchBetaAppBundleVersion(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 104) + **(a3 + 104));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E1619E40;

  return v9(a1, a2, a3);
}

uint64_t sub_1E1619E40(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t type metadata accessor for LinkableTextView(uint64_t a1)
{
  result = qword_1ECEB6D78;
  if (!qword_1ECEB6D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E161A04C(uint64_t a1)
{
  type metadata accessor for LinkableTextViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1E161A120(319);
    if (v2 <= 0x3F)
    {
      sub_1E161A184(319);
      if (v3 <= 0x3F)
      {
        sub_1E1430C88();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E161A120(uint64_t a1)
{
  if (!qword_1ECEB6D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6D90, &qword_1E1B1F9E8);
    v1 = sub_1E1AF20BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECEB6D88);
    }
  }
}

void sub_1E161A184(uint64_t a1)
{
  if (!qword_1ECEB6D98)
  {
    sub_1E1AF0D5C();
    v1 = sub_1E1AF20BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECEB6D98);
    }
  }
}

uint64_t sub_1E161A1F8@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v2 = type metadata accessor for LinkableTextView(0);
  v3 = v2 - 8;
  v75 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v76 = v4;
  v77 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6DA0, &qword_1E1B1FA40);
  MEMORY[0x1EEE9AC00](v74);
  v6 = &v66 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6DA8, &qword_1E1B1FA48);
  MEMORY[0x1EEE9AC00](v72);
  v78 = &v66 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6DB0, &qword_1E1B1FA50);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6DB8, &unk_1E1B1FA58);
  v83 = *(v9 - 8);
  v84 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v66 - v10;
  v11 = sub_1E1AF24DC();
  v73 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B50, "~9\b");
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v66 - v15;
  v17 = sub_1E1AEF91C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v82 = &v66 - v22;
  v23 = *v1;
  v24 = *(v3 + 44);
  v85 = v1;
  v25 = v1 + v24;
  v26 = *v25;
  if (v25[8] != 1)
  {

    sub_1E1AF682C();
    v27 = sub_1E1AF26BC();
    v71 = v11;
    v28 = v18;
    v29 = v17;
    v30 = v27;
    sub_1E1AF0F1C();

    v17 = v29;
    v18 = v28;
    sub_1E1AF24CC();
    swift_getAtKeyPath();
    sub_1E161B3FC(v26, 0);
    (*(v73 + 8))(v13, v71);
    LOBYTE(v26) = v87;
  }

  sub_1E148C490(v26 & 1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1E1308058(v16, &qword_1ECEB3B50, "~9\b");
    v31 = 1;
    v32 = v86;
    v34 = v83;
    v33 = v84;
  }

  else
  {
    v35 = v82;
    (*(v18 + 32))(v82, v16, v17);
    v71 = v18;
    v36 = *(v18 + 16);
    v73 = v17;
    v36(v20, v35, v17);
    v70 = sub_1E1AF292C();
    v69 = v37;
    v39 = v38;
    v68 = v40;
    v41 = v85;
    v42 = *(v85 + 8);
    KeyPath = swift_getKeyPath("83;\v");
    v43 = *(v23 + 24);
    v44 = *(v23 + 32);
    v66 = swift_getKeyPath(byte_1E1B1FA98);
    *&v87 = v43;

    v45 = sub_1E1AF215C();
    v46 = v39 & 1;
    LOBYTE(v87) = v39 & 1;
    v47 = swift_getKeyPath(byte_1E1B1FAC8);
    v48 = v77;
    sub_1E161B408(v41, v77);
    v49 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v50 = swift_allocObject();
    sub_1E161B46C(v48, v50 + v49);
    v51 = &v6[*(v74 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6DC8, &qword_1E1B1FB00);
    sub_1E1AF21AC();
    *v51 = v47;
    v52 = v69;
    *v6 = v70;
    *(v6 + 1) = v52;
    v6[16] = v46;
    v53 = KeyPath;
    *(v6 + 3) = v68;
    *(v6 + 4) = v53;
    v6[40] = v42;
    v54 = v66;
    *(v6 + 6) = v44;
    *(v6 + 7) = v54;
    *(v6 + 8) = v45;
    if (v42)
    {
      if (v42 == 1)
      {
        sub_1E1AF2D1C();
      }

      else
      {
        sub_1E1AF2D3C();
      }
    }

    else
    {
      sub_1E1AF2D2C();
    }

    v55 = v72;
    v56 = v73;
    sub_1E1AF230C();
    v57 = v78;
    sub_1E161B550(v6, v78);
    v58 = (v57 + *(v55 + 36));
    v59 = v92;
    v58[4] = v91;
    v58[5] = v59;
    v58[6] = v93;
    v60 = v88;
    *v58 = v87;
    v58[1] = v60;
    v61 = v90;
    v58[2] = v89;
    v58[3] = v61;
    sub_1E161B5C0();
    v62 = v80;
    sub_1E1AF2A1C();
    v63 = sub_1E1308058(v57, &qword_1ECEB6DA8, &qword_1E1B1FA48);
    MEMORY[0x1EEE9AC00](v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6E48, &qword_1E1B1FB38);
    sub_1E161B934();
    sub_1E161B9F0();
    v64 = v79;
    sub_1E1AF29EC();
    sub_1E1308058(v62, &qword_1ECEB6DB0, &qword_1E1B1FA50);
    (*(v71 + 8))(v82, v56);
    v34 = v83;
    v33 = v84;
    v32 = v86;
    (*(v83 + 32))(v86, v64, v84);
    v31 = 0;
  }

  return (*(v34 + 56))(v32, v31, 1, v33);
}

uint64_t sub_1E161AAD4(uint64_t a1)
{
  v2 = sub_1E1AF21BC();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1E1AF249C();
}

uint64_t sub_1E161AB9C()
{
  v0 = sub_1E1AF0D5C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E148CDF0();
  if (v4)
  {
    v5 = v4;
    sub_1E1870650(v8);
    if (v9)
    {
      __swift_project_boxed_opaque_existential_1Tm(v8, v9);
      v7[3] = type metadata accessor for Action(0);
      v7[4] = sub_1E161BBA8(qword_1EE1D2F80, type metadata accessor for Action, &protocol conformance descriptor for Action);
      v7[0] = v5;
      type metadata accessor for LinkableTextView(0);

      sub_1E18707C4(v3);
      sub_1E1AF0CAC();
      (*(v1 + 8))(v3, v0);
      __swift_destroy_boxed_opaque_existential_1(v7);
      __swift_destroy_boxed_opaque_existential_1(v8);
    }

    else
    {
      sub_1E1308058(v8, &qword_1ECEB6D90, &qword_1E1B1F9E8);
    }

    sub_1E1AF218C();
  }

  else
  {

    return MEMORY[0x1EEDDE3A0]();
  }
}

uint64_t sub_1E161ADA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E1AF24DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LinkableTextView(0);
  v9 = a1 + *(v8 + 44);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_5:
    v12 = a1 + *(v8 + 40);
    v13 = *v12;
    if (*(v12 + 8) == 1)
    {
      if (v13)
      {
        goto LABEL_7;
      }
    }

    else
    {

      sub_1E1AF682C();
      v15 = sub_1E1AF26BC();
      sub_1E1AF0F1C();

      sub_1E1AF24CC();
      swift_getAtKeyPath();
      sub_1E161B3FC(v13, 0);
      (*(v5 + 8))(v7, v4);
      if (v20)
      {
        goto LABEL_7;
      }
    }

    v16 = sub_1E148C3CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6E98, &unk_1E1B1FB78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6E80, &qword_1E1B1FB48);
    sub_1E1302CD4(&qword_1ECEB6EA0, &qword_1ECEB6E98, &unk_1E1B1FB78, MEMORY[0x1E69E6338]);
    sub_1E161BAF8();
    sub_1E1AF2CAC();
    v14 = 0;
    goto LABEL_10;
  }

  sub_1E1AF682C();
  v11 = sub_1E1AF26BC();
  sub_1E1AF0F1C();

  sub_1E1AF24CC();
  swift_getAtKeyPath();
  sub_1E161B3FC(v10, 0);
  (*(v5 + 8))(v7, v4);
  if ((v21 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_7:
  v14 = 1;
LABEL_10:
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6E70, &qword_1E1B1FB40);
  return (*(*(v17 - 8) + 56))(a2, v14, 1, v17);
}

uint64_t sub_1E161B0F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5350, &qword_1E1B15CC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6E90, &qword_1E1B1FB50);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - v10;
  v12 = *a1;
  v13 = *(v12 + 24);
  if (v13)
  {
    v14 = *(v12 + 16);
    v19[0] = v8;
    v15 = sub_1E1AF206C();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    v19[4] = type metadata accessor for Action(0);
    v19[5] = sub_1E161BBA8(qword_1EE1D2F80, type metadata accessor for Action, &protocol conformance descriptor for Action);
    v19[1] = v12;
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = v13;

    sub_1E1AF0C7C();
    (*(v19[0] + 32))(a2, v11, v7);
    return (*(v19[0] + 56))(a2, 0, 1, v7);
  }

  else
  {
    v18 = *(v8 + 56);

    return v18(a2, 1, 1, v7, v9);
  }
}

uint64_t sub_1E161B38C@<X0>(uint64_t a3@<X8>)
{
  sub_1E13B8AA4();

  result = sub_1E1AF293C();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1E161B3FC(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_1E161B408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkableTextView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E161B46C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkableTextView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E161B4D0()
{
  type metadata accessor for LinkableTextView(0);

  return sub_1E161AB9C();
}

uint64_t sub_1E161B550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6DA0, &qword_1E1B1FA40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E161B5C0()
{
  result = qword_1ECEB6DD0;
  if (!qword_1ECEB6DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6DA8, &qword_1E1B1FA48);
    sub_1E161B64C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6DD0);
  }

  return result;
}

unint64_t sub_1E161B64C()
{
  result = qword_1ECEB6DD8;
  if (!qword_1ECEB6DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6DA0, &qword_1E1B1FA40);
    sub_1E161B704();
    sub_1E1302CD4(&qword_1ECEB6E40, &qword_1ECEB6DC8, &qword_1E1B1FB00, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6DD8);
  }

  return result;
}

unint64_t sub_1E161B704()
{
  result = qword_1ECEB6DE0;
  if (!qword_1ECEB6DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6DE8, &qword_1E1B1FB08);
    sub_1E161B7BC();
    sub_1E1302CD4(&qword_1ECEB6E30, &qword_1ECEB6E38, &qword_1E1B1FB30, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6DE0);
  }

  return result;
}

unint64_t sub_1E161B7BC()
{
  result = qword_1ECEB6DF0;
  if (!qword_1ECEB6DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6DF8, &qword_1E1B1FB10);
    sub_1E161B874();
    sub_1E1302CD4(&qword_1ECEB6E20, &qword_1ECEB6E28, &qword_1E1B1FB28, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6DF0);
  }

  return result;
}

unint64_t sub_1E161B874()
{
  result = qword_1ECEB6E00;
  if (!qword_1ECEB6E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6E08, &qword_1E1B1FB18);
    sub_1E1302CD4(&qword_1ECEB6E10, &qword_1ECEB6E18, &qword_1E1B1FB20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6E00);
  }

  return result;
}

unint64_t sub_1E161B934()
{
  result = qword_1ECEB6E50;
  if (!qword_1ECEB6E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6DB0, &qword_1E1B1FA50);
    sub_1E161B5C0();
    sub_1E161BBA8(&qword_1ECEB6E58, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6E50);
  }

  return result;
}

unint64_t sub_1E161B9F0()
{
  result = qword_1ECEB6E60;
  if (!qword_1ECEB6E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6E48, &qword_1E1B1FB38);
    sub_1E161BA74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6E60);
  }

  return result;
}

unint64_t sub_1E161BA74()
{
  result = qword_1ECEB6E68;
  if (!qword_1ECEB6E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6E70, &qword_1E1B1FB40);
    sub_1E161BAF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6E68);
  }

  return result;
}

unint64_t sub_1E161BAF8()
{
  result = qword_1ECEB6E78;
  if (!qword_1ECEB6E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6E80, &qword_1E1B1FB48);
    sub_1E1302CD4(&qword_1ECEB6E88, &qword_1ECEB6E90, &qword_1E1B1FB50, MEMORY[0x1E69E3A80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6E78);
  }

  return result;
}

uint64_t sub_1E161BBA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E161BBF8()
{
  result = qword_1ECEB6EA8;
  if (!qword_1ECEB6EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6EB0, &unk_1E1B1FB88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6DB0, &qword_1E1B1FA50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6E48, &qword_1E1B1FB38);
    sub_1E161B934();
    sub_1E161B9F0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6EA8);
  }

  return result;
}

AppStoreKit::AlertActionStyle_optional __swiftcall AlertActionStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t AlertActionStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x7473616F74;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1E161BD80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7473616F74;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x7473616F74;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t sub_1E161BE24()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E161BEA4(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E161BF10(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E161BF8C(char *a2@<X8>)
{
  v3 = sub_1E1AF72FC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1E161BFEC(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x7473616F74;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

char *AlertAction.__allocating_init(title:message:isCancelable:cancelTitle:cancelAction:buttonActions:destructiveActionIndex:style:artwork:toastDuration:presentationStyle:imageName:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, char a19, char *a20, uint64_t a21, double a22, unsigned __int8 a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v61 = a7;
  v68 = a1;
  v69 = a2;
  v67 = a24;
  v63 = a8;
  v64 = a25;
  v62 = a23;
  v65 = a26;
  v66 = a21;
  v60 = sub_1E1AEFEAC();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = swift_allocObject();
  v33 = v32;
  v34 = *a20;
  v35 = (v32 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_message);
  *v35 = a3;
  v35[1] = a4;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_isCancelable) = a5;
  v36 = (v32 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_cancelTitle);
  v37 = v61;
  *v36 = a6;
  v36[1] = v37;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_cancelAction) = v63;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_buttonActions) = a17;
  v38 = v32 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_destructiveActionIndex;
  *v38 = a18;
  *(v38 + 8) = a19 & 1;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_style) = v34;
  if (v62)
  {
    a22 = 1.5;
  }

  *(v32 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_toastDuration) = a22;
  v40 = (v32 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_imageName);
  v41 = v65;
  *v40 = v64;
  v40[1] = v41;
  v76 = 0;
  memset(v75, 0, sizeof(v75));
  v42 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v43 = sub_1E1AF3E1C();
  v44 = *(v43 - 8);
  (*(v44 + 16))(&v33[v42], a27, v43);
  v45 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v46 = sub_1E1AF46DC();
  (*(*(v46 - 8) + 56))(&v33[v45], 1, 1, v46);
  v47 = &v33[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v47 = 0u;
  *(v47 + 1) = 0u;
  v48 = &v33[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E138853C(v75, &v72);
  if (*(&v73 + 1))
  {
    v49 = v73;
    *v48 = v72;
    *(v48 + 1) = v49;
    *(v48 + 4) = v74;
  }

  else
  {
    v50 = v58;
    sub_1E1AEFE9C();
    v51 = sub_1E1AEFE7C();
    v53 = v52;
    (*(v59 + 8))(v50, v60);
    v70 = v51;
    v71 = v53;
    sub_1E1AF6F6C();
    sub_1E1308058(&v72, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v44 + 8))(a27, v43);
  sub_1E1308058(v75, &unk_1ECEB5670, qword_1E1B03EC0);
  v54 = v69;
  *(v33 + 2) = v68;
  *(v33 + 3) = v54;
  v55 = v67;
  *(v33 + 4) = v66;
  *(v33 + 5) = v55;
  return v33;
}

void *AlertAction.init(title:message:isCancelable:cancelTitle:cancelAction:buttonActions:destructiveActionIndex:style:artwork:toastDuration:presentationStyle:imageName:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, _BYTE *a20, uint64_t a21, double a22, unsigned __int8 a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v28 = v27;
  v67 = a8;
  v65 = a7;
  v64 = a6;
  v61 = a5;
  v72 = a1;
  v73 = a2;
  v69 = a26;
  v71 = a24;
  v68 = a25;
  v66 = a23;
  v63 = a19;
  v62 = a18;
  v60 = a17;
  v70 = a21;
  v59 = sub_1E1AEFEAC();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v32 = &v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v57 - v34;
  v36 = sub_1E1AF3E1C();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v57 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v38) = *a20;
  v40 = (v28 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_message);
  *v40 = a3;
  v40[1] = a4;
  *(v28 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_isCancelable) = v61;
  v41 = (v28 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_cancelTitle);
  v42 = v65;
  *v41 = v64;
  v41[1] = v42;
  *(v28 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_cancelAction) = v67;
  *(v28 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_buttonActions) = v60;
  v43 = v28 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_destructiveActionIndex;
  *v43 = v62;
  v43[8] = v63 & 1;
  *(v28 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_style) = v38;
  if (v66)
  {
    a22 = 1.5;
  }

  *(v28 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_toastDuration) = a22;
  v45 = (v28 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_imageName);
  v46 = v69;
  *v45 = v68;
  v45[1] = v46;
  v83 = 0;
  memset(v82, 0, sizeof(v82));
  (*(v37 + 16))(v39, a27, v36);
  v47 = sub_1E1AF46DC();
  (*(*(v47 - 8) + 56))(v35, 1, 1, v47);
  v48 = (v28 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v48 = 0u;
  v48[1] = 0u;
  sub_1E138853C(v82, &v76);
  if (*(&v77 + 1))
  {
    v79 = v76;
    v80 = v77;
    v81 = v78;
  }

  else
  {
    sub_1E1AEFE9C();
    v49 = sub_1E1AEFE7C();
    v51 = v50;
    (*(v58 + 8))(v32, v59);
    v74 = v49;
    v75 = v51;
    sub_1E1AF6F6C();
    sub_1E1308058(&v76, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v37 + 8))(a27, v36);
  sub_1E1308058(v82, &unk_1ECEB5670, qword_1E1B03EC0);
  v52 = v28 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v52 + 4) = v81;
  v53 = v80;
  *v52 = v79;
  *(v52 + 1) = v53;
  sub_1E134B7C8(v35, v28 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v54 = v73;
  v28[2] = v72;
  v28[3] = v54;
  v55 = v71;
  v28[4] = v70;
  v28[5] = v55;
  (*(v37 + 32))(v28 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v39, v36);
  return v28;
}

uint64_t AlertAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v127 = v2;
  v128 = a2;
  v132 = *v3;
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  v125 = v5;
  v126 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v118 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v131 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v129 = &v113 - v11;
  v12 = sub_1E1AF5A6C();
  v13 = *(v12 - 8);
  v122 = v12;
  v123 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v115 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v114 = &v113 - v16;
  v17 = sub_1E1AF380C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v117 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v130 = &v113 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v121 = &v113 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v120 = &v113 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v119 = &v113 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v113 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v113 - v32;
  v133 = 0xE500000000000000;
  v34 = 0x656C746974;
  v35 = a1;
  sub_1E1AF381C();
  LOBYTE(a1) = sub_1E1AF37AC();
  v116 = v18;
  v38 = *(v18 + 8);
  v36 = (v18 + 8);
  v37 = v38;
  v39 = v17;
  (v38)(v33, v17);
  if (a1)
  {
    goto LABEL_8;
  }

  v34 = 0x6567617373656DLL;
  sub_1E1AF381C();
  v40 = sub_1E1AF37CC();
  v42 = v41;
  (v37)(v30, v39);
  v43 = v37;
  if (!v42)
  {
    v133 = 0xE700000000000000;
LABEL_8:
    v74 = v39;
    v75 = v35;
    v76 = v125;
    v77 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v79 = v132;
    v78 = v133;
    *v80 = v34;
    v80[1] = v78;
    v80[2] = v79;
    (*(*(v77 - 8) + 104))(v80, *MEMORY[0x1E69AB690], v77);
    swift_willThrow();
    (v37)(v75, v74);
    (*(v126 + 8))(v128, v76);
    swift_deallocPartialClassInstance();
    return v77;
  }

  v44 = v127;
  v45 = (v127 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_message);
  *v45 = v40;
  v45[1] = v42;
  v46 = v35;
  sub_1E1AF381C();
  v47 = sub_1E1AF36EC();
  v49 = v48;
  (v37)(v33, v39);
  v50 = v44 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_destructiveActionIndex;
  *v50 = v47;
  *(v50 + 8) = v49 & 1;
  sub_1E1AF381C();
  sub_1E161D5A0();
  sub_1E1AF369C();
  (v37)(v33, v39);
  *(v44 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_style) = v134;
  v51 = v119;
  sub_1E1AF381C();
  LOBYTE(v47) = sub_1E1AF370C();
  v43(v51, v39);
  *(v44 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_isCancelable) = (v47 == 2) | v47 & 1;
  sub_1E1AF381C();
  v52 = sub_1E1AF37CC();
  v54 = v53;
  v43(v33, v39);
  v55 = (v44 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_cancelTitle);
  *v55 = v52;
  v55[1] = v54;
  v56 = v36;
  v57 = type metadata accessor for Action(0);
  sub_1E1AF381C();
  v132 = v57;
  v58 = static Action.tryToMakeInstance(byDeserializing:using:)(v33, v128);
  v43(v33, v39);
  *(v44 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_cancelAction) = v58;
  v59 = v120;
  sub_1E1AF381C();
  v60 = sub_1E1AF379C();
  LOBYTE(v57) = v61;
  v43(v59, v39);
  v62 = *&v60;
  if (v57)
  {
    v62 = 1.5;
  }

  *(v44 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_toastDuration) = v62;
  sub_1E1AF381C();
  v63 = v43;
  v64 = sub_1E1AF37CC();
  v66 = v65;
  v63(v33, v39);
  v67 = (v44 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_imageName);
  *v67 = v64;
  v67[1] = v66;
  v68 = v121;
  sub_1E1AF381C();
  v69 = v129;
  sub_1E1AF374C();
  v120 = v63;
  v121 = v56;
  v63(v68, v39);
  v71 = v122;
  v70 = v123;
  v72 = *(v123 + 48);
  v73 = v46;
  if (v72(v69, 1, v122) == 1)
  {
    sub_1E1308058(v69, &qword_1ECEB1F90, &qword_1E1B00D30);
    v133 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v81 = v114;
    (*(v70 + 32))(v114, v69, v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40, &unk_1E1B02B90);
    v82 = v124;
    v133 = sub_1E1AF5A1C();
    v124 = v82;
    (*(v70 + 8))(v81, v71);
  }

  v83 = v130;
  v84 = v131;
  v119 = v73;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v114 = v39;
  (v120)(v83, v39);
  v85 = v72(v84, 1, v71);
  v86 = v126;
  if (v85 != 1)
  {
    v89 = (*(v123 + 32))(v115, v84, v71);
    MEMORY[0x1EEE9AC00](v89);
    v90 = v128;
    *(&v113 - 2) = v132;
    *(&v113 - 1) = v90;
    v91 = v124;
    v92 = sub_1E1AF59FC();
    v93 = v92;
    v124 = v91;
    if (v92 >> 62)
    {
      goto LABEL_32;
    }

    v94 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v94)
    {
LABEL_33:
      v87 = MEMORY[0x1E69E7CC0];
LABEL_34:

      (*(v123 + 8))(v115, v122);
      v44 = v127;
      v88 = v128;
      v86 = v126;
      goto LABEL_35;
    }

LABEL_14:
    v95 = 0;
    v131 = (v93 & 0xFFFFFFFFFFFFFF8);
    v132 = v93 & 0xC000000000000001;
    v96 = (v133 + 40);
    v87 = MEMORY[0x1E69E7CC0];
    v129 = v94;
    v130 = v93;
    while (1)
    {
      if (v132)
      {
        v97 = MEMORY[0x1E68FFD80](v95, v93);
        v98 = (v95 + 1);
        if (__OFADD__(v95, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v95 >= *(v131 + 2))
        {
          goto LABEL_31;
        }

        v97 = *(v93 + 8 * v95 + 32);

        v98 = (v95 + 1);
        if (__OFADD__(v95, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          v94 = sub_1E1AF71CC();
          if (!v94)
          {
            goto LABEL_33;
          }

          goto LABEL_14;
        }
      }

      if (v95 < *(v133 + 16) && (v99 = *v96) != 0)
      {
        v100 = *(v96 - 1);
      }

      else
      {
        v100 = *(v97 + 16);
        v99 = *(v97 + 24);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = sub_1E172CD2C(0, v87[2] + 1, 1, v87);
      }

      v102 = v87[2];
      v101 = v87[3];
      if (v102 >= v101 >> 1)
      {
        v87 = sub_1E172CD2C((v101 > 1), v102 + 1, 1, v87);
      }

      v87[2] = v102 + 1;
      v103 = &v87[5 * v102];
      v103[4] = v100;
      v103[5] = v99;
      v103[7] = 0;
      v103[8] = 0;
      v103[6] = v97;
      ++v95;
      v96 += 2;
      v93 = v130;
      if (v98 == v129)
      {
        goto LABEL_34;
      }
    }
  }

  sub_1E1308058(v84, &qword_1ECEB1F90, &qword_1E1B00D30);
  v87 = MEMORY[0x1E69E7CC0];
  v88 = v128;
LABEL_35:
  *(v44 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_buttonActions) = v87;
  v104 = v117;
  v105 = v119;
  v106 = v114;
  (*(v116 + 16))(v117, v119, v114);
  v107 = v118;
  v108 = v125;
  (*(v86 + 16))(v118, v88, v125);
  v109 = v104;
  v77 = v44;
  v110 = v124;
  v111 = Action.init(deserializing:using:)(v109, v107);
  if (!v110)
  {
    v77 = v111;
  }

  (v120)(v105, v106);
  (*(v86 + 8))(v88, v108);
  return v77;
}