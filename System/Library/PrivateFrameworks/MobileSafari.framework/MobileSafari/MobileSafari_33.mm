unint64_t sub_18BBD3F00()
{
  result = qword_1EA9DB820;
  if (!qword_1EA9DB820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB820);
  }

  return result;
}

unint64_t sub_18BBD3F58()
{
  result = qword_1EA9DB828;
  if (!qword_1EA9DB828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB828);
  }

  return result;
}

unint64_t sub_18BBD3FAC()
{
  result = qword_1EA9DB830;
  if (!qword_1EA9DB830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB830);
  }

  return result;
}

uint64_t sub_18BBD4000()
{
  v25 = sub_18BC20B08();
  v0 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v24 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_18BC20B68();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = v19 - v4;
  v5 = sub_18BC1E8B8();
  v20 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_18BC1E8D8();
  v22 = *(v11 - 8);
  v23 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_18BC1E4F8();
  __swift_allocate_value_buffer(v12, qword_1EA9F84D0);
  v21 = __swift_project_value_buffer(v12, qword_1EA9F84D0);
  sub_18BC20B18();
  sub_18BC1EC38();
  v13 = *MEMORY[0x1E6968DF0];
  v14 = *(v6 + 104);
  v19[1] = v6 + 104;
  v14(v8, v13, v5);
  sub_18BC1E8E8();
  sub_18BC20B58();
  sub_18BC20B48();
  v16 = v24;
  v15 = v25;
  (*(v0 + 104))(v24, *MEMORY[0x1E6969D68], v25);
  sub_18BC20B28();
  (*(v0 + 8))(v16, v15);
  sub_18BC20B48();
  sub_18BC20B78();
  sub_18BC1EC38();
  v14(v8, v13, v20);
  v17 = v26;
  sub_18BC1E8F8();
  (*(v22 + 56))(v17, 0, 1, v23);
  return sub_18BC1E4E8();
}

uint64_t sub_18BBD44D4@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4608, &unk_18BC47050);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v16 = &v14 - v2;
  v15 = sub_18BC1EA98();
  v3 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v14 = sub_18BC1E8D8();
  v9 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v10 = sub_18BC20B68();
  MEMORY[0x1EEE9AC00](v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  sub_18BC20B58();
  sub_18BC20B48();
  sub_18BC1DFE8();
  if (!v18)
  {
    sub_18BC1DFE8();
  }

  sub_18BC20B38();

  sub_18BC20B48();
  sub_18BC1E8C8();
  sub_18BC20B58();
  sub_18BC20B48();
  sub_18BC1DFE8();
  sub_18BC1E9B8();
  (*(v3 + 8))(v5, v15);
  sub_18BC20B38();

  sub_18BC20B48();
  sub_18BC1E8C8();
  (*(v9 + 56))(v8, 0, 1, v14);
  v12 = sub_18BC1E398();
  (*(*(v12 - 8) + 56))(v16, 1, 1, v12);
  return sub_18BC1E3A8();
}

unint64_t sub_18BBD4888()
{
  result = qword_1EA9DB838;
  if (!qword_1EA9DB838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB838);
  }

  return result;
}

unint64_t sub_18BBD48DC()
{
  result = qword_1EA9DB840;
  if (!qword_1EA9DB840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB840);
  }

  return result;
}

unint64_t sub_18BBD4934()
{
  result = qword_1EA9DB848;
  if (!qword_1EA9DB848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB848);
  }

  return result;
}

unint64_t sub_18BBD4988()
{
  result = qword_1EA9DB850;
  if (!qword_1EA9DB850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB850);
  }

  return result;
}

unint64_t sub_18BBD49E0()
{
  result = qword_1EA9DB858;
  if (!qword_1EA9DB858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB858);
  }

  return result;
}

uint64_t sub_18BBD4AB4(uint64_t a1)
{
  v2 = sub_18BA5F904();

  return MEMORY[0x1EEDB2C50](a1, v2);
}

uint64_t sub_18BBD4B00(uint64_t a1)
{
  v2 = sub_18BBD4888();

  return MEMORY[0x1EEDB3F70](a1, v2);
}

uint64_t sub_18BBD4B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_18B9EC2C0;

  return sub_18BBD8278(a2, a3);
}

uint64_t sub_18BBD4C24()
{
  sub_18BC20F28();
  *(v0 + 24) = sub_18BC20F18();
  v2 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BBD4CB8, v2, v1);
}

uint64_t sub_18BBD4CB8()
{

  sub_18BB18CDC(0, 0);
  **(v0 + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_18BBD4D54()
{
  result = qword_1EA9DB870;
  if (!qword_1EA9DB870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB870);
  }

  return result;
}

unint64_t sub_18BBD4DAC()
{
  result = qword_1EA9DB878;
  if (!qword_1EA9DB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB878);
  }

  return result;
}

uint64_t sub_18BBD4E00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18B9EDB00;

  return sub_18BBD7FA8(a1);
}

uint64_t sub_18BBD4EA8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_18BA82598;

  return sub_18BBD8474();
}

unint64_t sub_18BBD4F50()
{
  result = qword_1EA9DB880;
  if (!qword_1EA9DB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB880);
  }

  return result;
}

unint64_t sub_18BBD4FA8()
{
  result = qword_1EA9DB888;
  if (!qword_1EA9DB888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9DB890, qword_18BC542B0);
    sub_18BBD4988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB888);
  }

  return result;
}

uint64_t sub_18BBD502C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_18BBD3FAC();
  *v5 = v2;
  v5[1] = sub_18B987B10;

  return MEMORY[0x1EEDB2ED0](a1, a2, v6);
}

unint64_t sub_18BBD50E4()
{
  result = qword_1EA9DB898;
  if (!qword_1EA9DB898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB898);
  }

  return result;
}

void (*sub_18BBD5160(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_18BC1E098();
  return sub_18BB92404;
}

uint64_t sub_18BBD5244@<X0>(uint64_t *a1@<X8>, __n128 a2@<Q0>)
{
  result = sub_18BBD8668(a2);
  *a1 = result;
  return result;
}

id sub_18BBD526C(void *a1)
{
  result = [a1 canCreateNewBookmark];
  if (!result)
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v2 = sub_18BC1DE48();
    v3 = __swift_project_value_buffer(v2, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
    swift_allocError();
    (*(*(v2 - 8) + 16))(v4, v3, v2);
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_18BBD5380()
{
  result = qword_1EA9DB8B0;
  if (!qword_1EA9DB8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB8B0);
  }

  return result;
}

unint64_t sub_18BBD53D8()
{
  result = qword_1EA9DB8B8;
  if (!qword_1EA9DB8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB8B8);
  }

  return result;
}

unint64_t sub_18BBD5478()
{
  result = qword_1EA9DB8C0;
  if (!qword_1EA9DB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB8C0);
  }

  return result;
}

uint64_t sub_18BBD54CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4500, &qword_18BC478E0);
  v3[22] = swift_task_alloc();
  v3[23] = type metadata accessor for TabEntity(0);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v4 = sub_18BC1EA98();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  sub_18BC20F28();
  v3[29] = sub_18BC20F18();
  v6 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BBD5638, v6, v5);
}

uint64_t sub_18BBD5638()
{

  v1 = [objc_opt_self() sharedApplication];
  v0[18] = &unk_1F0032E60;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (!v2)
  {

    goto LABEL_5;
  }

  v3 = v2;
  v4 = v0[26];
  v5 = v0[27];
  v6 = v0[25];
  v7 = v0[22];
  sub_18BC1E0A8();
  sub_18BC1DFE8();
  sub_18BA5F48C(v6);
  if ((*(v5 + 48))(v7, 1, v4) == 1)
  {
    v8 = v0[22];

    sub_18BACE6CC(v8);
LABEL_5:
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v9 = sub_18BC1DE48();
    v10 = __swift_project_value_buffer(v9, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
    swift_allocError();
    (*(*(v9 - 8) + 16))(v11, v10, v9);
    swift_willThrow();
LABEL_8:

    v12 = v0[1];
    goto LABEL_9;
  }

  (*(v0[27] + 32))(v0[28], v0[22], v0[26]);
  sub_18BC1E0A8();
  if (!v0[15])
  {
    v14 = v0[24];
    sub_18BC1E0A8();
    sub_18BC1DFE8();
    v15 = v0[17];
    sub_18BA5F48C(v14);
    if (!v15)
    {
      sub_18BC1E9B8();
    }
  }

  v16 = sub_18BC20B98();

  v17 = sub_18BC1E9E8();
  v18 = [v3 createBookmarkWithTitle:v16 url:v17];

  v19 = v18;
  sub_18BBD7294(v19, v0 + 2);
  v20 = v0[3];
  if (!v20)
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v27 = v0[27];
    v26 = v0[28];
    v28 = v0[26];
    v29 = sub_18BC1DE48();
    v30 = __swift_project_value_buffer(v29, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
    swift_allocError();
    (*(*(v29 - 8) + 16))(v31, v30, v29);
    swift_willThrow();

    (*(v27 + 8))(v26, v28);
    goto LABEL_8;
  }

  v21 = v0[27];
  v33 = v0[28];
  v32 = v0[26];
  v23 = v0[5];
  v22 = v0[6];
  v24 = v0[4];
  v25 = v0[2];
  v0[7] = v25;
  v0[8] = v20;
  v0[9] = v24;
  v0[10] = v23;
  v0[11] = v22;
  sub_18BBD4988();
  sub_18BC1DF88();

  (*(v21 + 8))(v33, v32);
  v0[12] = v25;
  v0[13] = v20;
  sub_18BA835C4((v0 + 12));

  v12 = v0[1];
LABEL_9:

  return v12();
}

uint64_t sub_18BBD5B2C(uint64_t a1)
{
  v2 = sub_18BBD993C();

  return MEMORY[0x1EEDB39D0](a1, v2);
}

uint64_t sub_18BBD5B78(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_18B7B6968;

  return sub_18BBD54CC(a1, v5, v4);
}

uint64_t sub_18BBD5C24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BBD8BC0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18BBD5C4C(uint64_t a1)
{
  v2 = sub_18BBD5478();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

unint64_t sub_18BBD5C8C()
{
  result = qword_1EA9DB8C8;
  if (!qword_1EA9DB8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB8C8);
  }

  return result;
}

unint64_t sub_18BBD5CE4()
{
  result = qword_1EA9DB8D0;
  if (!qword_1EA9DB8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB8D0);
  }

  return result;
}

unint64_t sub_18BBD5D84()
{
  result = qword_1EA9DB8D8;
  if (!qword_1EA9DB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB8D8);
  }

  return result;
}

uint64_t sub_18BBD5DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  v4 = sub_18BC1EA98();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  sub_18BC20F28();
  v3[23] = sub_18BC20F18();
  v6 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BBD5ED0, v6, v5);
}

uint64_t sub_18BBD5ED0()
{

  v1 = [objc_opt_self() sharedApplication];
  v0[16] = &unk_1F0032E60;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v2;
    sub_18BC1E0A8();
    if (!v0[15])
    {
      v7 = v0[21];
      v8 = v0[22];
      v9 = v0[20];
      sub_18BC1E0A8();
      sub_18BC1E9B8();
      (*(v7 + 8))(v8, v9);
    }

    v10 = v0[21];
    v11 = v0[22];
    v12 = v0[20];
    v13 = sub_18BC20B98();

    sub_18BC1E0A8();
    v14 = sub_18BC1E9E8();
    (*(v10 + 8))(v11, v12);
    v15 = [v3 createBookmarkWithTitle:v13 url:v14];

    v16 = v15;
    sub_18BBD7294(v16, v0 + 2);
    v17 = v0[3];
    if (v17)
    {
      v19 = v0[5];
      v18 = v0[6];
      v20 = v0[4];
      v21 = v1;
      v22 = v0[2];
      v0[7] = v22;
      v0[8] = v17;
      v0[9] = v20;
      v0[10] = v19;
      v0[11] = v18;
      sub_18BBD4988();
      sub_18BC1DF88();

      v0[12] = v22;
      v0[13] = v17;
      sub_18BA835C4((v0 + 12));

      v23 = v0[1];
      goto LABEL_14;
    }

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v24 = sub_18BC1DE48();
    v25 = __swift_project_value_buffer(v24, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
    swift_allocError();
    (*(*(v24 - 8) + 16))(v26, v25, v24);
    swift_willThrow();
  }

  else
  {

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1DE48();
    v5 = __swift_project_value_buffer(v4, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
    swift_allocError();
    (*(*(v4 - 8) + 16))(v6, v5, v4);
    swift_willThrow();
  }

  v23 = v0[1];
LABEL_14:

  return v23();
}

uint64_t sub_18BBD62E0(uint64_t a1)
{
  v2 = sub_18BBD98E8();

  return MEMORY[0x1EEDB39D0](a1, v2);
}

uint64_t sub_18BBD632C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_18B7B6968;

  return sub_18BBD5DD8(a1, v5, v4);
}

uint64_t sub_18BBD63D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BBD9030();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18BBD6400(uint64_t a1)
{
  v2 = sub_18BBD5D84();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

unint64_t sub_18BBD6440()
{
  result = qword_1EA9DB8E0;
  if (!qword_1EA9DB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB8E0);
  }

  return result;
}

uint64_t sub_18BBD64C0(__n128 a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_18BC1E8B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_18BC1E8D8();
  __swift_allocate_value_buffer(v12, a3);
  __swift_project_value_buffer(v12, a3);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v7 + 104))(v9, *MEMORY[0x1E6968DF0], v6);
  return sub_18BC1E8F8();
}

void (*sub_18BBD66AC(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_18BC1E098();
  return sub_18B99C5B4;
}

uint64_t sub_18BBD6790@<X0>(uint64_t *a1@<X8>, __n128 a2@<Q0>)
{
  result = sub_18BBD9438(a2);
  *a1 = result;
  return result;
}

unint64_t sub_18BBD67BC()
{
  result = qword_1EA9DB8F8;
  if (!qword_1EA9DB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB8F8);
  }

  return result;
}

uint64_t sub_18BBD6810(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  sub_18BC20F28();
  v2[6] = sub_18BC20F18();
  v4 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BBD68A8, v4, v3);
}

uint64_t sub_18BBD68A8()
{

  v1 = [objc_opt_self() sharedApplication];
  v0[2] = &unk_1F0032E60;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v2;
    sub_18BC1E0A8();
    v4 = v0[3];
    v5 = *(v4 + 16);
    if (v5)
    {
      v21 = v1;
      v20 = v0;
      v22 = MEMORY[0x1E69E7CC0];
      sub_18B7B7A54(0, v5, 0);
      v6 = 0;
      v7 = *(v22 + 16);
      v8 = 16 * v7;
      do
      {
        v9 = v4;
        v10 = *(v4 + v6 + 32);
        v11 = *(v4 + v6 + 40);
        v12 = *(v22 + 24);
        sub_18BC1E3F8();
        if (v7 >= v12 >> 1)
        {
          sub_18B7B7A54((v12 > 1), v7 + 1, 1);
        }

        *(v22 + 16) = v7 + 1;
        v13 = v22 + v8;
        *(v13 + 32) = v10;
        *(v13 + 40) = v11;
        v8 += 16;
        v6 += 40;
        ++v7;
        --v5;
        v4 = v9;
      }

      while (v5);

      v0 = v20;
      v1 = v21;
    }

    else
    {
    }

    v18 = sub_18BC20D88();

    [v3 deleteBookmarksWithUUIDs_];

    sub_18BC1DF98();
    v17 = v0[1];
  }

  else
  {

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v14 = sub_18BC1DE48();
    v15 = __swift_project_value_buffer(v14, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
    swift_allocError();
    (*(*(v14 - 8) + 16))(v16, v15, v14);
    swift_willThrow();
    v17 = v0[1];
  }

  return v17();
}

unint64_t sub_18BBD6B80()
{
  result = qword_1EA9DB900;
  if (!qword_1EA9DB900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB900);
  }

  return result;
}

unint64_t sub_18BBD6BD8()
{
  result = qword_1EA9DB908;
  if (!qword_1EA9DB908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB908);
  }

  return result;
}

unint64_t sub_18BBD6C30()
{
  result = qword_1EA9DB910;
  if (!qword_1EA9DB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB910);
  }

  return result;
}

uint64_t sub_18BBD6D0C(uint64_t a1)
{
  v2 = sub_18BBD7860();

  return MEMORY[0x1EEDB39D0](a1, v2);
}

uint64_t sub_18BBD6D58(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B7B6968;

  return sub_18BBD6810(a1, v4);
}

uint64_t sub_18BBD6DF8@<X0>(uint64_t *a1@<X8>)
{
  v19[0] = a1;
  v2 = sub_18BC1E488();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0, &unk_18BC472F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v19 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB948, &qword_18BC54C68);
  v15 = sub_18BC1E8D8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v19[1] = 0;
  v16 = sub_18BC1DF68();
  v17 = *(*(v16 - 8) + 56);
  v17(v11, 1, 1, v16);
  v17(v8, 1, 1, v16);
  (*(v3 + 104))(v5, *MEMORY[0x1E695A4F8], v2);
  sub_18BA5F904();
  result = sub_18BC1E108();
  *v19[0] = result;
  return result;
}

uint64_t sub_18BBD7080(uint64_t a1)
{
  v2 = sub_18BBD6B80();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

unint64_t sub_18BBD70C0()
{
  result = qword_1EA9DB918;
  if (!qword_1EA9DB918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB918);
  }

  return result;
}

unint64_t sub_18BBD7118()
{
  result = qword_1EA9DB920;
  if (!qword_1EA9DB920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB920);
  }

  return result;
}

unint64_t sub_18BBD7174()
{
  result = qword_1EA9DB928;
  if (!qword_1EA9DB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB928);
  }

  return result;
}

unint64_t sub_18BBD71D0()
{
  result = qword_1EA9DB930;
  if (!qword_1EA9DB930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB930);
  }

  return result;
}

void sub_18BBD7294(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = a2;
  v54 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4500, &qword_18BC478E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v48 - v3;
  v5 = sub_18BC1EA98();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v48 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v48 - v11;
  v12 = sub_18BC1E8B8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = sub_18BC1E8D8();
  MEMORY[0x1EEE9AC00](v18 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9030, &unk_18BC498B0);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v13 + 104))(v15, *MEMORY[0x1E6968DF0], v12);
  v19 = v54;
  sub_18BC1E8E8();
  v20 = sub_18BC1E038();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9028, &qword_18BC4C6A0);
  v21 = sub_18BC1E028();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5460, &qword_18BC482F0);
  v22 = sub_18BC1E048();
  v23 = [v19 address];
  sub_18BC20BD8();

  sub_18BC1EA68();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_18BACE6CC(v4);

    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  else
  {
    (*(v6 + 32))(v52, v4, v5);
    v29 = [v19 UUID];
    v30 = sub_18BC20BD8();
    v48 = v31;
    v49 = v30;

    sub_18BC1E3F8();
    v32 = [v19 title];
    v33 = sub_18BC20BD8();
    v34 = v19;
    v36 = v35;

    v55 = v33;
    v56 = v36;
    sub_18BC1DFF8();
    v37 = [v34 title];
    v38 = sub_18BC20BD8();
    v40 = v39;

    v55 = v38;
    v56 = v40;
    sub_18BC1DFF8();
    v41 = *(v6 + 16);
    v43 = v51;
    v42 = v52;
    v41(v51, v52, v5);
    v28 = v22;
    v44 = v5;
    v45 = v21;
    v26 = v20;
    v41(v50, v43, v44);
    v27 = v45;
    sub_18BC1DFF8();

    v46 = *(v6 + 8);
    v46(v43, v44);
    v46(v42, v44);
    v25 = v48;

    v24 = v49;
  }

  v47 = v53;
  *v53 = v24;
  v47[1] = v25;
  v47[2] = v26;
  v47[3] = v27;
  v47[4] = v28;
}

unint64_t sub_18BBD7860()
{
  result = qword_1EA9DB9B0;
  if (!qword_1EA9DB9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB9B0);
  }

  return result;
}

void sub_18BBD78B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4500, &qword_18BC478E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v51 - v7;
  v8 = sub_18BC1EA98();
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v51 - v13;
  v14 = sub_18BC1E8B8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v19 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v20 = sub_18BC1E8D8();
  MEMORY[0x1EEE9AC00](v20 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9030, &unk_18BC498B0);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v15 + 104))(v17, *MEMORY[0x1E6968DF0], v14);
  sub_18BC1E8E8();
  v21 = sub_18BC1E038();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9028, &qword_18BC4C6A0);
  v22 = sub_18BC1E028();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5460, &qword_18BC482F0);
  v23 = sub_18BC1E048();
  if (qword_1EA9D24D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v25 = [Strong bookmarkCollection], swift_unknownObjectRelease(), !v25))
  {

LABEL_11:

    goto LABEL_12;
  }

  v26 = sub_18BC20B98();
  v27 = [v25 bookmarkWithUUID_];

  if (!v27)
  {

    goto LABEL_11;
  }

  v54 = a1;
  v28 = [v27 address];
  sub_18BC20BD8();

  v29 = v57;
  sub_18BC1EA68();
  v30 = v29;

  v31 = v59;
  v32 = v29;
  v33 = v60;
  if ((*(v59 + 48))(v32, 1, v60) != 1)
  {
    (*(v31 + 32))(v58, v30, v33);
    v53 = a2;
    sub_18BC1E3F8();
    v36 = [v27 title];
    v52 = v27;
    v37 = v36;
    v38 = v31;
    v39 = sub_18BC20BD8();
    v41 = v40;

    v61 = v39;
    v62 = v41;
    sub_18BC1DFF8();
    v42 = [v27 title];
    v43 = sub_18BC20BD8();
    v45 = v44;

    v61 = v43;
    v62 = v45;
    sub_18BC1DFF8();
    v46 = *(v38 + 16);
    v47 = v56;
    v48 = v60;
    v46(v56, v58, v60);
    v46(v55, v47, v48);
    v35 = v53;
    sub_18BC1DFF8();

    v49 = v60;
    v50 = *(v59 + 8);
    v50(v47, v60);
    v50(v58, v49);

    v34 = v54;
    goto LABEL_13;
  }

  sub_18BACE6CC(v30);

LABEL_12:
  v34 = 0;
  v35 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
LABEL_13:
  *a3 = v34;
  a3[1] = v35;
  a3[2] = v21;
  a3[3] = v22;
  a3[4] = v23;
}

uint64_t sub_18BBD7FA8(uint64_t a1)
{
  *(v1 + 56) = a1;
  sub_18BC20F28();
  *(v1 + 64) = sub_18BC20F18();
  v3 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BBD8040, v3, v2);
}

uint64_t sub_18BBD8040()
{

  if (qword_1EA9D22B0 != -1)
  {
LABEL_20:
    swift_once();
  }

  v1 = sub_18BC1F2C8();
  __swift_project_value_buffer(v1, qword_1EA9F7EC8);
  v2 = sub_18BC1F2A8();
  v3 = sub_18BC21218();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18B7AC000, v2, v3, "Matching bookmark with identifiers", v4, 2u);
    MEMORY[0x18CFFEEE0](v4, -1, -1);
  }

  v5 = v0[7];

  v6 = 0;
  v7 = *(v5 + 16);
  v8 = v5 + 40;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v10 = (v8 + 16 * v6);
  while (v7 != v6)
  {
    if (v6 >= v7)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_19;
    }

    v13 = *(v10 - 1);
    v12 = *v10;
    sub_18BC1E3F8();
    sub_18BBD78B4(v13, v12, v0 + 2);
    v14 = v0[3];
    v10 += 2;
    ++v6;
    if (v14)
    {
      v24 = v8;
      v15 = v0[2];
      v16 = v0[4];
      v17 = v0[5];
      v23 = v0[6];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_18B9B6294(0, *(v9 + 2) + 1, 1, v9);
      }

      v19 = *(v9 + 2);
      v18 = *(v9 + 3);
      if (v19 >= v18 >> 1)
      {
        v9 = sub_18B9B6294((v18 > 1), v19 + 1, 1, v9);
      }

      *(v9 + 2) = v19 + 1;
      v20 = &v9[40 * v19];
      *(v20 + 4) = v15;
      *(v20 + 5) = v14;
      *(v20 + 6) = v16;
      *(v20 + 7) = v17;
      v8 = v24;
      *(v20 + 8) = v23;
      v6 = v11;
      goto LABEL_5;
    }
  }

  v21 = v0[1];

  return v21(v9);
}

uint64_t sub_18BBD8278(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18BBD8298, 0, 0);
}

uint64_t sub_18BBD8298()
{
  if (qword_1EA9D22B0 != -1)
  {
    swift_once();
  }

  v1 = sub_18BC1F2C8();
  __swift_project_value_buffer(v1, qword_1EA9F7EC8);
  v2 = sub_18BC1F2A8();
  v3 = sub_18BC21218();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18B7AC000, v2, v3, "Matching bookmark with string", v4, 2u);
    MEMORY[0x18CFFEEE0](v4, -1, -1);
  }

  sub_18BC20F28();
  *(v0 + 32) = sub_18BC20F18();
  v6 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BBD83E8, v6, v5);
}

uint64_t sub_18BBD83E8()
{
  v1 = v0[3];
  v2 = v0[2];

  sub_18BB18CDC(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_18BBD8490()
{
  if (qword_1EA9D22B0 != -1)
  {
    swift_once();
  }

  v1 = sub_18BC1F2C8();
  __swift_project_value_buffer(v1, qword_1EA9F7EC8);
  v2 = sub_18BC1F2A8();
  v3 = sub_18BC21218();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18B7AC000, v2, v3, "Get all bookmarks", v4, 2u);
    MEMORY[0x18CFFEEE0](v4, -1, -1);
  }

  sub_18BC20F28();
  *(v0 + 16) = sub_18BC20F18();
  v6 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BBD85E0, v6, v5);
}

uint64_t sub_18BBD85E0()
{

  sub_18BB18CDC(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18BBD8668(__n128 a1)
{
  v1 = sub_18BC1E488();
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v28 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0, &unk_18BC472F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v27 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7430, &unk_18BC50F30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v26 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v25 = &v22 - v8;
  v9 = sub_18BC1E8B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v23 = sub_18BC1E8D8();
  v15 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7438, &qword_18BC482D0);
  sub_18BC20B18();
  sub_18BC1EC38();
  v16 = *MEMORY[0x1E6968DF0];
  v17 = *(v10 + 104);
  v17(v12, v16, v9);
  sub_18BC1E8E8();
  sub_18BC20B18();
  sub_18BC1EC38();
  v17(v12, v16, v9);
  v18 = v25;
  sub_18BC1E8F8();
  (*(v15 + 56))(v18, 0, 1, v23);
  v19 = sub_18BC20AF8();
  v31 = 0;
  v32 = 0;
  (*(*(v19 - 8) + 56))(v26, 1, 1, v19);
  v20 = sub_18BC1DF68();
  (*(*(v20 - 8) + 56))(v27, 1, 1, v20);
  (*(v29 + 104))(v28, *MEMORY[0x1E695A4F8], v30);
  return sub_18BC1E168();
}

uint64_t sub_18BBD8BC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7430, &unk_18BC50F30);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v32 = &v26 - v1;
  v33 = sub_18BC1E488();
  v2 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0, &unk_18BC472F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6EC8, &unk_18BC472E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - v15;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D77E8, &qword_18BC498E0);
  v17 = sub_18BC1E8D8();
  v18 = *(v17 - 8);
  v29 = *(v18 + 56);
  v30 = v18 + 56;
  v29(v16, 1, 1, v17);
  v19 = type metadata accessor for TabEntity(0);
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = sub_18BC1DF68();
  v21 = *(*(v20 - 8) + 56);
  v21(v10, 1, 1, v20);
  v21(v7, 1, 1, v20);
  v28 = *MEMORY[0x1E695A4F8];
  v22 = *(v2 + 104);
  v26 = v2 + 104;
  v27 = v22;
  v22(v4);
  sub_18BA5F958(&qword_1EA9D6EF0, type metadata accessor for TabEntity, &unk_18BC48BC0);
  v23 = sub_18BC1E108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7438, &qword_18BC482D0);
  v29(v16, 1, 1, v17);
  v24 = sub_18BC20AF8();
  v34 = 0;
  v35 = 0;
  (*(*(v24 - 8) + 56))(v32, 1, 1, v24);
  v21(v10, 1, 1, v20);
  v27(v4, v28, v33);
  sub_18BC1E158();
  return v23;
}

uint64_t sub_18BBD9030()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7430, &unk_18BC50F30);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v32 = v24 - v1;
  v29 = sub_18BC1E488();
  v2 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0, &unk_18BC472F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4500, &qword_18BC478E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v24 - v12;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D77E0, &qword_18BC498D8);
  v14 = sub_18BC1E8D8();
  v15 = *(v14 - 8);
  v30 = *(v15 + 56);
  v28 = v15 + 56;
  v30(v13, 1, 1, v14);
  v16 = sub_18BC1EA98();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = sub_18BC1DF68();
  v18 = *(v17 - 8);
  v26 = *(v18 + 56);
  v27 = v18 + 56;
  v26(v7, 1, 1, v17);
  v19 = *MEMORY[0x1E695A4F8];
  v20 = *(v2 + 104);
  v24[1] = v2 + 104;
  v25 = v20;
  v21 = v29;
  v20(v4, v19, v29);
  v31 = sub_18BC1E148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7438, &qword_18BC482D0);
  v30(v13, 1, 1, v14);
  v22 = sub_18BC20AF8();
  v33 = 0;
  v34 = 0;
  (*(*(v22 - 8) + 56))(v32, 1, 1, v22);
  v26(v7, 1, 1, v17);
  v25(v4, v19, v21);
  sub_18BC1E158();
  return v31;
}

uint64_t sub_18BBD9438(__n128 a1)
{
  v1 = sub_18BC1E488();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v24 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0, &unk_18BC472F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v23 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  v11 = sub_18BC1E8B8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_18BC1E8D8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v22[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6ED8, &qword_18BC47300);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v12 + 104))(v14, *MEMORY[0x1E6968DF0], v11);
  sub_18BC1E8E8();
  sub_18BC1E8A8();
  (*(v18 + 56))(v10, 0, 1, v17);
  v19 = sub_18BC1DF68();
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v20 = *(*(v19 - 8) + 56);
  v20(v7, 1, 1, v19);
  v20(v23, 1, 1, v19);
  (*(v25 + 104))(v24, *MEMORY[0x1E695A4F8], v26);
  sub_18BA5F904();
  return sub_18BC1E118();
}

unint64_t sub_18BBD98E8()
{
  result = qword_1EA9DB9B8;
  if (!qword_1EA9DB9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB9B8);
  }

  return result;
}

unint64_t sub_18BBD993C()
{
  result = qword_1EA9DB9C0;
  if (!qword_1EA9DB9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB9C0);
  }

  return result;
}

void sub_18BBD99B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8AD8, &qword_18BC4B890);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_18BC21628();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC21678();
  (*(v4 + 104))(v6, *MEMORY[0x1E69DC508], v3);
  sub_18BC21638();
  sub_18BC21648();
  v7 = objc_opt_self();
  v8 = *MEMORY[0x1E69DDD80];
  v9 = [v7 _preferredFontForTextStyle_weight_];
  if (v9)
  {
    v10 = v9;
    if (![objc_opt_self() isSolariumEnabled])
    {
LABEL_5:
      v13 = objc_opt_self();
      v14 = v10;
      v15 = [v13 configurationWithFont:v14 scale:2];
      sub_18BC215F8();
      *(swift_allocObject() + 16) = v14;
      sub_18BC1FF68();
      v16 = sub_18BC1FF58();
      (*(*(v16 - 8) + 56))(v2, 0, 1, v16);
      sub_18BC21748();

      return;
    }

    v11 = [v7 _preferredFontForTextStyle_weight_];
    if (v11)
    {
      v12 = v11;

      v10 = v12;
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_18BBD9C50@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_18BC1E7F8();
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  sub_18B9EA798();
  v8 = a2;
  return sub_18BC1E808();
}

uint64_t sub_18BBD9CF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_18BBD9D58(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_18BBD9D8C()
{
  result = qword_1EA9DB9C8;
  if (!qword_1EA9DB9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB9C8);
  }

  return result;
}

void sub_18BBD9DE0()
{
  v1 = _s7SectionVMa_0(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(_s4PageVMa(0) + 68));
  v6 = *(v5 + 16);
  if (!v6)
  {
    return;
  }

  v7 = *(v1 + 28);
  v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9 = *(v2 + 72);
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_18B82962C(v8, v4, _s7SectionVMa_0);
    v11 = *&v4[v7];
    sub_18BC1E3F8();
    sub_18B816638(v4, _s7SectionVMa_0);
    v12 = *(v11 + 16);
    v13 = v10[2];
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v14 <= v10[3] >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v16 = v13 + v12;
      }

      else
      {
        v16 = v13;
      }

      v10 = sub_18B9B5838(isUniquelyReferenced_nonNull_native, v16, 1, v10);
      if (*(v11 + 16))
      {
LABEL_14:
        v17 = (v10[3] >> 1) - v10[2];
        _s4ItemVMa(0);
        if (v17 < v12)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v18 = v10[2];
          v19 = __OFADD__(v18, v12);
          v20 = v18 + v12;
          if (v19)
          {
            goto LABEL_22;
          }

          v10[2] = v20;
        }

        goto LABEL_4;
      }
    }

    if (v12)
    {
      goto LABEL_20;
    }

LABEL_4:
    v8 += v9;
    if (!--v6)
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
  __break(1u);
}

void sub_18BBDA02C()
{
  v1 = _s7SectionVMa_0(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = *(v0 + *(_s4PageVMa(0) + 68));
  v35 = *(v11 + 16);
  if (!v35)
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v19 = *(v13 + 16);
    if (!v19)
    {
LABEL_30:

      return;
    }

    v35 = *(v1 + 28);
    v20 = v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v21 = *(v2 + 72);
    v22 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_18B82962C(v20, v7, _s7SectionVMa_0);
      v23 = *&v7[v35];
      sub_18BC1E3F8();
      sub_18B816638(v7, _s7SectionVMa_0);
      v24 = *(v23 + 16);
      v25 = v22[2];
      v26 = v25 + v24;
      if (__OFADD__(v25, v24))
      {
        goto LABEL_32;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v26 <= v22[3] >> 1)
      {
        if (!*(v23 + 16))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v25 <= v26)
        {
          v28 = v25 + v24;
        }

        else
        {
          v28 = v25;
        }

        v22 = sub_18B9B5838(isUniquelyReferenced_nonNull_native, v28, 1, v22);
        if (!*(v23 + 16))
        {
LABEL_15:

          if (v24)
          {
            goto LABEL_33;
          }

          goto LABEL_16;
        }
      }

      v29 = (v22[3] >> 1) - v22[2];
      _s4ItemVMa(0);
      if (v29 < v24)
      {
        goto LABEL_34;
      }

      swift_arrayInitWithCopy();

      if (v24)
      {
        v30 = v22[2];
        v31 = __OFADD__(v30, v24);
        v32 = v30 + v24;
        if (v31)
        {
          goto LABEL_35;
        }

        v22[2] = v32;
      }

LABEL_16:
      v20 += v21;
      if (!--v19)
      {
        goto LABEL_30;
      }
    }
  }

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v33 = v4;
  v34 = v1;
  while (v12 < *(v11 + 16))
  {
    v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v15 = *(v2 + 72);
    sub_18B82962C(v11 + v14 + v15 * v12, v10, _s7SectionVMa_0);
    if (v10[*(v1 + 24)] == 1)
    {
      sub_18B82983C(v10, v4, _s7SectionVMa_0);
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v36 = v13;
      if ((v16 & 1) == 0)
      {
        sub_18B828364(0, *(v13 + 16) + 1, 1);
        v13 = v36;
      }

      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_18B828364((v17 > 1), v18 + 1, 1);
        v13 = v36;
      }

      *(v13 + 16) = v18 + 1;
      v4 = v33;
      sub_18B82983C(v33, v13 + v14 + v18 * v15, _s7SectionVMa_0);
      v1 = v34;
    }

    else
    {
      sub_18B816638(v10, _s7SectionVMa_0);
    }

    if (v35 == ++v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_18BBDA430()
{
  v1 = _s4ItemVMa(0);
  v2 = *(v1 - 8);
  v50 = v1;
  v51 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v48 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v48 - v5;
  v7 = _s7SectionVMa_0(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  v16 = *(v0 + *(_s4PageVMa(0) + 68));
  v17 = *(v16 + 16);
  v54 = v6;
  v49 = v7;
  v52 = v17;
  if (v17)
  {
    v18 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    while (v18 < *(v16 + 16))
    {
      v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v21 = *(v8 + 72);
      sub_18B82962C(v16 + v20 + v21 * v18, v15, _s7SectionVMa_0);
      if (v15[*(v7 + 24)])
      {
        sub_18B816638(v15, _s7SectionVMa_0);
      }

      else
      {
        sub_18B82983C(v15, v53, _s7SectionVMa_0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_18B828364(0, *(v19 + 16) + 1, 1);
          v19 = v55;
        }

        v24 = *(v19 + 16);
        v23 = *(v19 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_18B828364((v23 > 1), v24 + 1, 1);
          v19 = v55;
        }

        *(v19 + 16) = v24 + 1;
        sub_18B82983C(v53, v19 + v20 + v24 * v21, _s7SectionVMa_0);
        v6 = v54;
        v7 = v49;
      }

      if (v52 == ++v18)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_13:
  v25 = *(v19 + 16);
  if (v25)
  {
    v53 = *(v49 + 28);
    v26 = v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v27 = *(v8 + 72);
    v28 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_18B82962C(v26, v12, _s7SectionVMa_0);
      v29 = *&v12[v53];
      sub_18BC1E3F8();
      sub_18B816638(v12, _s7SectionVMa_0);
      v30 = *(v29 + 16);
      v31 = v28[2];
      v32 = v31 + v30;
      if (__OFADD__(v31, v30))
      {
        goto LABEL_46;
      }

      v33 = swift_isUniquelyReferenced_nonNull_native();
      if (v33 && v32 <= v28[3] >> 1)
      {
        if (*(v29 + 16))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v31 <= v32)
        {
          v34 = v31 + v30;
        }

        else
        {
          v34 = v31;
        }

        v28 = sub_18B9B5838(v33, v34, 1, v28);
        if (*(v29 + 16))
        {
LABEL_26:
          if ((v28[3] >> 1) - v28[2] < v30)
          {
            goto LABEL_48;
          }

          swift_arrayInitWithCopy();

          if (v30)
          {
            v35 = v28[2];
            v36 = __OFADD__(v35, v30);
            v37 = v35 + v30;
            if (v36)
            {
              goto LABEL_49;
            }

            v28[2] = v37;
          }

          goto LABEL_16;
        }
      }

      if (v30)
      {
        goto LABEL_47;
      }

LABEL_16:
      v26 += v27;
      if (!--v25)
      {

        v6 = v54;
        goto LABEL_32;
      }
    }
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v38 = v28[2];
  v39 = v51;
  v40 = v48;
  if (!v38)
  {
LABEL_43:

    return;
  }

  v41 = 0;
  v42 = MEMORY[0x1E69E7CC0];
  while (v41 < v28[2])
  {
    v43 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v44 = *(v39 + 72);
    sub_18B82962C(v28 + v43 + v44 * v41, v6, _s4ItemVMa);
    if (*v6 == 1)
    {
      sub_18B82983C(v6, v40, _s4ItemVMa);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v55 = v42;
      if ((v45 & 1) == 0)
      {
        sub_18B82F920(0, *(v42 + 16) + 1, 1);
        v42 = v55;
      }

      v47 = *(v42 + 16);
      v46 = *(v42 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_18B82F920((v46 > 1), v47 + 1, 1);
        v42 = v55;
      }

      *(v42 + 16) = v47 + 1;
      sub_18B82983C(v40, v42 + v43 + v47 * v44, _s4ItemVMa);
      v6 = v54;
    }

    else
    {
      sub_18B816638(v6, _s4ItemVMa);
    }

    if (v38 == ++v41)
    {
      goto LABEL_43;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t sub_18BBDAA00@<X0>(uint64_t a1@<X8>)
{
  v3 = _s7SectionVMa_0(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  result = _s4PageVMa(0);
  v11 = *(v1 + *(result + 68));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (1)
    {
      if (v13 >= *(v11 + 16))
      {
        __break(1u);
        return result;
      }

      sub_18B82962C(v14 + *(v4 + 72) * v13, v6, _s7SectionVMa_0);
      if ((v6[*(v3 + 24)] & 1) == 0)
      {
        if (*(*&v6[*(v3 + 28)] + 16))
        {
          break;
        }
      }

      ++v13;
      result = sub_18B816638(v6, _s7SectionVMa_0);
      if (v12 == v13)
      {
        goto LABEL_10;
      }
    }

    sub_18B82983C(v6, v9, _s7SectionVMa_0);
    v15 = *&v9[*(v3 + 28)];
    sub_18BC1E3F8();
    sub_18B816638(v9, _s7SectionVMa_0);
    if (*(v15 + 16))
    {
      v16 = _s4ItemVMa(0);
      v17 = *(v16 - 8);
      sub_18B82962C(v15 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), a1, _s4ItemVMa);

      return (*(v17 + 56))(a1, 0, 1, v16);
    }
  }

LABEL_10:
  v18 = _s4ItemVMa(0);
  return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
}

uint64_t sub_18BBDACAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = _s4ItemVMa_2(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30, &unk_18BC42E60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v34 = &v33 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9250, &unk_18BC4CB30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v33 - v13;
  v15 = _s7SectionVMa_0(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + *(_s7SectionVMa_1(0) + 20));
  v20 = *(_s4PageVMa(0) + 68);
  v35 = v2;
  v21 = *(v2 + v20);
  v37 = a1;
  v38 = v19;
  sub_18BAD1FA4(sub_18BBDC324, v21, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_18B988BAC(v14, &unk_1EA9D9250, &unk_18BC4CB30);
    v22 = _s15DropDestinationVMa_0(0);
    return (*(*(v22 - 8) + 56))(v36, 1, 1, v22);
  }

  else
  {
    v24 = v36;
    sub_18B82983C(v14, v18, _s7SectionVMa_0);
    v25 = _s15DropDestinationVMa(0);
    sub_18BBDC348(a1 + *(v25 + 20), v9);
    if ((*(v5 + 48))(v9, 1, v4) == 1)
    {
      v26 = _s4ItemVMa(0);
      v27 = v34;
      (*(*(v26 - 8) + 56))(v34, 1, 1, v26);
    }

    else
    {
      v28 = v33;
      v29 = sub_18B82983C(v9, v33, _s4ItemVMa_2);
      MEMORY[0x1EEE9AC00](v29);
      *(&v33 - 2) = v30;
      v27 = v34;
      sub_18BAD200C(sub_18BBDC428, v31, v34);
      sub_18B816638(v28, _s4ItemVMa_2);
    }

    sub_18B82962C(v35, v24, _s4PageVMa);
    v32 = _s15DropDestinationVMa_0(0);
    sub_18B82983C(v18, v24 + *(v32 + 20), _s7SectionVMa_0);
    sub_18BBDC3B8(v27, v24 + *(v32 + 24));
    return (*(*(v32 - 8) + 56))(v24, 0, 1, v32);
  }
}

void sub_18BBDB174(void *a1)
{
  v59 = a1;
  v58 = _s4ItemVMa(0);
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v52 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v52 - v7;
  v8 = _s7SectionVMa_0(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  v17 = *(v1 + *(_s4PageVMa(0) + 68));
  v57 = *(v17 + 16);
  if (v57)
  {
    v18 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    v52 = v11;
    v53 = v8;
    while (v18 < *(v17 + 16))
    {
      v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v21 = *(v9 + 72);
      sub_18B82962C(v17 + v20 + v21 * v18, v16, _s7SectionVMa_0);
      if (v16[*(v8 + 24)])
      {
        sub_18B816638(v16, _s7SectionVMa_0);
      }

      else
      {
        sub_18B82983C(v16, v11, _s7SectionVMa_0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_18B828364(0, *(v19 + 16) + 1, 1);
          v19 = v61;
        }

        v24 = *(v19 + 16);
        v23 = *(v19 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_18B828364((v23 > 1), v24 + 1, 1);
          v19 = v61;
        }

        *(v19 + 16) = v24 + 1;
        v11 = v52;
        sub_18B82983C(v52, v19 + v20 + v24 * v21, _s7SectionVMa_0);
        v8 = v53;
      }

      if (v57 == ++v18)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_13:
  v25 = *(v19 + 16);
  if (v25)
  {
    v57 = *(v8 + 28);
    v26 = v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v27 = *(v9 + 72);
    v28 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v29 = v54;
      sub_18B82962C(v26, v54, _s7SectionVMa_0);
      v30 = *(v29 + v57);
      sub_18BC1E3F8();
      sub_18B816638(v29, _s7SectionVMa_0);
      v31 = *(v30 + 16);
      v32 = v28[2];
      v33 = v32 + v31;
      if (__OFADD__(v32, v31))
      {
        goto LABEL_51;
      }

      v34 = swift_isUniquelyReferenced_nonNull_native();
      if (v34 && v33 <= v28[3] >> 1)
      {
        if (*(v30 + 16))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v32 <= v33)
        {
          v35 = v32 + v31;
        }

        else
        {
          v35 = v32;
        }

        v28 = sub_18B9B5838(v34, v35, 1, v28);
        if (*(v30 + 16))
        {
LABEL_26:
          if ((v28[3] >> 1) - v28[2] < v31)
          {
            goto LABEL_53;
          }

          swift_arrayInitWithCopy();

          if (v31)
          {
            v36 = v28[2];
            v37 = __OFADD__(v36, v31);
            v38 = v36 + v31;
            if (v37)
            {
              goto LABEL_54;
            }

            v28[2] = v38;
          }

          goto LABEL_16;
        }
      }

      if (v31)
      {
        goto LABEL_52;
      }

LABEL_16:
      v26 += v27;
      if (!--v25)
      {

        goto LABEL_32;
      }
    }
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v54 = v28[2];
  if (!v54)
  {
    v41 = MEMORY[0x1E69E7CC0];
LABEL_48:

    sub_18BBA3838(v41);

    return;
  }

  v39 = 0;
  v40 = v59 + 7;
  v41 = MEMORY[0x1E69E7CC0];
  while (v39 < v28[2])
  {
    v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v42 = *(v56 + 72);
    sub_18B82962C(v28 + v57 + v42 * v39, v60, _s4ItemVMa);
    if (v59[2] && (v43 = v59, sub_18BC22158(), sub_18BC1EC08(), sub_18BBDC0DC(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), sub_18BC20A78(), v44 = sub_18BC221A8(), v45 = -1 << *(v43 + 32), v46 = v44 & ~v45, ((*(v40 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) != 0))
    {
      v47 = ~v45;
      while (1)
      {
        sub_18B82962C(v59[6] + v46 * v42, v5, _s4ItemVMa);
        updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        sub_18B816638(v5, _s4ItemVMa);
        if (updated)
        {
          break;
        }

        v46 = (v46 + 1) & v47;
        if (((*(v40 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      sub_18B816638(v60, _s4ItemVMa);
    }

    else
    {
LABEL_42:
      sub_18B82983C(v60, v55, _s4ItemVMa);
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v62 = v41;
      if ((v49 & 1) == 0)
      {
        sub_18B82F920(0, *(v41 + 16) + 1, 1);
        v41 = v62;
      }

      v51 = *(v41 + 16);
      v50 = *(v41 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_18B82F920((v50 > 1), v51 + 1, 1);
        v41 = v62;
      }

      *(v41 + 16) = v51 + 1;
      sub_18B82983C(v55, v41 + v57 + v51 * v42, _s4ItemVMa);
    }

    if (++v39 == v54)
    {
      goto LABEL_48;
    }
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

void sub_18BBDB8B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = _s15MoveItemsIntentV11DestinationOMa(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = _s4PageVMa(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18B82962C(a1, v8, _s15MoveItemsIntentV11DestinationOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6338, &unk_18BC4CBC0);
  }

  sub_18B82983C(v8, v11, _s4PageVMa);
  updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
  sub_18B816638(v11, _s4PageVMa);
  v13 = sub_18B82962C(v3, a2, _s4PageVMa);
  if ((updated & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v13);
    *&v18[-16] = a1;
    sub_18BB7041C(sub_18BBDC2E4, &v18[-32], v14);
    v16 = v15;
    v17 = *(v9 + 68);

    *(a2 + v17) = v16;
  }
}

uint64_t sub_18BBDBABC(void *a1, void (*a2)(void *))
{
  v6[3] = sub_18B7B0AC0(0, &unk_1EA9DB9E0, 0x1E69DC738);
  v6[0] = a1;
  v4 = a1;
  a2(v6);
  return sub_18B988BAC(v6, &qword_1EA9D5220, &qword_18BC3FCB0);
}

uint64_t sub_18BBDBB3C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    sub_18BC22178();
    v7 = a2;
    sub_18BC215D8();

    if (a3)
    {
LABEL_3:
      sub_18BC22178();
      v8 = a3;
      sub_18BC215D8();

      goto LABEL_6;
    }
  }

  else
  {
    sub_18BC22178();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  sub_18BC22178();
LABEL_6:

  return sub_18BC20C28();
}

uint64_t sub_18BBDBC00()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_18BC22158();
  sub_18BBDBB3C(v6, v1, v2, v4, v3);
  return sub_18BC221A8();
}

uint64_t sub_18BBDBC6C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_18BC22158();
  sub_18BBDBB3C(v7, v2, v3, v5, v4);
  return sub_18BC221A8();
}

void sub_18BBDBCE4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_18B82962C(a1, a3, _s7SectionVMa_0);
  v6 = _s7SectionVMa_0(0);
  v7 = *(a1 + *(v6 + 28));
  v11[2] = a2;
  sub_18BB7021C(sub_18BBDC304, v11, v7);
  v9 = v8;
  v10 = *(v6 + 28);

  *(a3 + v10) = v9;
}

uint64_t sub_18BBDBD98(uint64_t a1, uint64_t a2, char a3)
{
  v5 = _s7SectionVMa_0(0);
  if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
  {
    v6 = *(a1 + *(v5 + 24)) ^ a3 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_18BBDBE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_18BC1EC08();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_18BBDBE88()
{
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18BBDC0DC(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_18BC20A78();
  return sub_18BC221A8();
}

uint64_t sub_18BBDBF24(uint64_t a1)
{
  sub_18BC1EC08();
  sub_18BBDC0DC(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_18BC20A78();
}

uint64_t sub_18BBDBFA4(uint64_t a1)
{
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18BBDC0DC(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_18BC20A78();
  return sub_18BC221A8();
}

uint64_t sub_18BBDC0DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_18BBDC128()
{
  result = qword_1EA9DB9D8;
  if (!qword_1EA9DB9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB9D8);
  }

  return result;
}

uint64_t sub_18BBDC17C(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (!a5)
    {
      return 0;
    }

    sub_18B7B0AC0(0, &qword_1ED6514F0, 0x1E69DCAB8);
    v16 = a5;
    v17 = a1;
    v18 = sub_18BC215C8();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (!a2)
  {
    if (!a6)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!a6)
  {
    return 0;
  }

  sub_18B7B0AC0(0, &unk_1EA9D91D0, 0x1E69DC888);
  v19 = a6;
  v20 = a2;
  v21 = sub_18BC215C8();

  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  return sub_18BC21FD8();
}

uint64_t sub_18BBDC348(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30, &unk_18BC42E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BBDC3B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_18BBDC448(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730, &unk_18BC41F60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_18BC21808();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v4[OBJC_IVAR___SFOneStepBookmarkingButton_didChangeShowingContextMenu];
  *v16 = CGRectMake;
  v16[1] = 0;
  v4[OBJC_IVAR___SFOneStepBookmarkingButton__isShowingContextMenu] = 0;
  v24.receiver = v4;
  v24.super_class = SFOneStepBookmarkingButton;
  v17 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BC21798();
  v18 = sub_18BC20B98();
  v19 = [objc_opt_self() systemImageNamed_];

  sub_18BC21788();
  v20 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:2];
  sub_18BC215F8();
  sub_18BC21678();
  (*(v13 + 16))(v11, v15, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v21 = v17;
  sub_18BC21828();
  [v21 sf_applyContentSizeCategoryLimitsForToolbarButton];
  [v21 setShowsMenuFromSource_];

  v22 = [objc_opt_self() labelColor];
  [v21 setTintColor_];

  (*(v13 + 8))(v15, v12);
  return v21;
}

id SFOneStepBookmarkingButton.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void SFOneStepBookmarkingButton.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR___SFOneStepBookmarkingButton_didChangeShowingContextMenu);
  *v1 = CGRectMake;
  v1[1] = 0;
  *(v0 + OBJC_IVAR___SFOneStepBookmarkingButton__isShowingContextMenu) = 0;
  sub_18BC21CF8();
  __break(1u);
}

double sub_18BBDC974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  sub_18BC1E1A8();
  swift_unknownObjectRetain();
  v5(a2, a3);

  swift_unknownObjectRelease();
  return result;
}

void sub_18BBDCBFC(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, char a5, char a6)
{
  objc_msgSendSuper2(&v11, *a4, a1, a2, a3);
  v6[OBJC_IVAR___SFOneStepBookmarkingButton__isShowingContextMenu] = a5;
  v10 = [v6 didChangeShowingContextMenu];
  v10[2](v10, a6 & 1, a3);
  _Block_release(v10);
}

void sub_18BBDCCB4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, const char **a6, char a7, char a8)
{
  v18.receiver = a1;
  v18.super_class = SFOneStepBookmarkingButton;
  v13 = *a6;
  v14 = a3;
  v15 = a4;
  swift_unknownObjectRetain();
  v16 = a1;
  objc_msgSendSuper2(&v18, v13, v14, v15, a5);
  v16[OBJC_IVAR___SFOneStepBookmarkingButton__isShowingContextMenu] = a7;
  v17 = [v16 didChangeShowingContextMenu];
  v17[2](v17, a8 & 1, a5);

  swift_unknownObjectRelease();
  _Block_release(v17);
}

unint64_t type metadata accessor for SFOneStepBookmarkingButton()
{
  result = qword_1EA9DBA08;
  if (!qword_1EA9DBA08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9DBA08);
  }

  return result;
}

uint64_t sub_18BBDCE60(void (*a1)(__n128))
{
  v2 = sub_18BC20838();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v4);
  sub_18BC20848();
  return (*(v3 + 8))(v6, v2);
}

id sub_18BBDCF40(uint64_t a1)
{
  sub_18BBDD908(a1, &v14);
  if (!*(&v15 + 1))
  {
    goto LABEL_6;
  }

  sub_18B7C3FA4(&v14, v11);
  v2 = OBJC_IVAR____TtC12MobileSafari14ReflectionView_reflection;
  swift_beginAccess();
  sub_18BBDD908(&v1[v2], &v14);
  if (!*(&v15 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
LABEL_6:
    sub_18BBDD978(&v14);
    goto LABEL_7;
  }

  sub_18B7C3FA4(&v14, v10);
  v3 = __swift_project_boxed_opaque_existential_1Tm(v10, v10[3]);
  v15 = *(v3 + 1);
  v16 = *(v3 + 2);
  v17 = *(v3 + 3);
  v18 = v3[8];
  v14 = *v3;
  v4 = __swift_project_boxed_opaque_existential_1Tm(v11, v11[3]);
  v5 = *(v4 + 3);
  v12[2] = *(v4 + 2);
  v12[3] = v5;
  v13 = v4[8];
  v6 = *(v4 + 1);
  v12[0] = *v4;
  v12[1] = v6;
  v7 = sub_18BBDD9E0(v12, &v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v10);
  if (!v7)
  {
LABEL_7:
    v9 = &v1[OBJC_IVAR____TtC12MobileSafari14ReflectionView_reflectionFrame];
    *v9 = 0u;
    *(v9 + 1) = 0u;
    v9[32] = 1;
    return [v1 setNeedsLayout];
  }

  return result;
}

double sub_18BBDD218()
{
  v1 = *&v0[OBJC_IVAR____TtC12MobileSafari14ReflectionView_backdropView];
  v2 = [v1 backdropLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A10, &qword_18BC3EFC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18BC3E410;
  v4 = *MEMORY[0x1E6979928];
  v5 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v6 = v2;
  v7 = [v5 initWithType_];
  v8 = sub_18BC20EC8();
  [v7 setValue:v8 forKey:*MEMORY[0x1E6979B78]];

  v9 = sub_18BC1EEA8();
  [v7 setValue:v9 forKey:*MEMORY[0x1E6979BA8]];

  *(v3 + 56) = sub_18B852D10();
  *(v3 + 32) = v7;
  v10 = sub_18BC20D88();

  [v6 setFilters_];

  v11 = [v0 layer];
  LODWORD(v12) = 1008981770;
  [v11 setShadowOpacity_];
  [v11 setShadowOffset_];
  [v0 addSubview_];
  v13 = [v1 layer];
  v14 = [v0 traitCollection];
  [v14 displayScale];
  v16 = v15;

  [v13 setRasterizationScale_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D51E0, &unk_18BC44660);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_18BC3E410;
  v18 = sub_18BC1F6A8();
  v19 = MEMORY[0x1E69DC050];
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  MEMORY[0x18CFFCA40](v17, sel_displayScaleDidChange);

  swift_unknownObjectRelease();

  return result;
}

id sub_18BBDD58C(uint64_t a1)
{
  v26.receiver = v1;
  v26.super_class = type metadata accessor for ReflectionView();
  objc_msgSendSuper2(&v26, sel_layoutSubviews);
  v2 = OBJC_IVAR____TtC12MobileSafari14ReflectionView_reflection;
  swift_beginAccess();
  sub_18BBDD908(&v1[v2], &v27);
  if (*(&v28 + 1))
  {
    sub_18B7C3FA4(&v27, v24);
    v3 = __swift_project_boxed_opaque_existential_1Tm(v24, v25);
    [v1 bounds];
    v8 = -v3[6] - v3[7];
    if (*(v3 + 16))
    {
      v8 = 0.0;
    }

    v32 = CGRectInset(*&v4, v8, v8);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
    v13 = &v1[OBJC_IVAR____TtC12MobileSafari14ReflectionView_reflectionFrame];
    if (v1[OBJC_IVAR____TtC12MobileSafari14ReflectionView_reflectionFrame + 32] == 1 || !CGRectEqualToRect(*v13, v32))
    {
      v14 = *&v1[OBJC_IVAR____TtC12MobileSafari14ReflectionView_backdropView];
      [v14 setFrame_];
      v15 = [v14 layer];
      v16 = __swift_project_boxed_opaque_existential_1Tm(v24, v25);
      v28 = *(v16 + 1);
      v29 = *(v16 + 2);
      v30 = *(v16 + 3);
      v31 = v16[8];
      v27 = *v16;
      sub_18BB404B8(&v27, width, height);
      v18 = v17;
      [v15 setMeshTransform_];

      v19 = [v14 layer];
      __swift_project_boxed_opaque_existential_1Tm(v24, v25);
      v20 = sub_18BC1EEA8();
      v21 = sub_18BC20B98();
      [v19 setValue:v20 forKeyPath:v21];

      *v13 = x;
      v13[1] = y;
      v13[2] = width;
      v13[3] = height;
      *(v13 + 32) = 0;
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    sub_18BBDD978(&v27);
    v23 = *&v1[OBJC_IVAR____TtC12MobileSafari14ReflectionView_backdropView];
    [v1 bounds];
    return [v23 setFrame_];
  }
}

id sub_18BBDD864(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ReflectionView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_18BBDD908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40C0, &qword_18BC40480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BBDD978(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40C0, &qword_18BC40480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_18BBDD9E0(uint64_t a1, uint64_t a2)
{
  v19[3] = &type metadata for RoundedRectangleReflection;
  v19[4] = sub_18B9962E0();
  v4 = swift_allocObject();
  v19[0] = v4;
  v5 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a1 + 64);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  sub_18B80DBC4(v19, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBAE8, &qword_18BC54ED0);
  v7 = swift_dynamicCast() && *a2 == v9 && *(a2 + 8) == v10 && ((v11 ^ *(a2 + 16)) & 1) == 0 && *(a2 + 24) == v12 && *(a2 + 32) == v13 && *(a2 + 40) == v14 && *(a2 + 48) == v15 && *(a2 + 56) == v16 && *(a2 + 64) == v17;
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return v7;
}

uint64_t sub_18BBDDC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_18BBDDD00@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30, &unk_18BC42E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v35 - v7;
  v9 = _s7SectionVMa_1(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s15DropDestinationVMa_0(0);
  sub_18BAC4834(v11);
  sub_18BBDE024(v1 + *(v12 + 24), v5);
  v13 = _s4ItemVMa(0);
  if ((*(*(v13 - 1) + 48))(v5, 1, v13) == 1)
  {
    sub_18BAC52EC(v5);
    v14 = _s4ItemVMa_2(0);
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  else
  {
    v15 = *v5;
    v16 = v13[7];
    v17 = _s4ItemVMa_2(0);
    v18 = v17[5];
    v19 = sub_18BC1EC08();
    (*(*(v19 - 8) + 16))(&v8[v18], &v5[v16], v19);
    v20 = v5[v13[9]];
    v21 = v5[v13[10]];
    v22 = v5[v13[11]];
    v23 = *&v5[v13[12]];
    v24 = &v5[v13[13]];
    v25 = *v24;
    v26 = v24[1];
    v27 = *&v5[v13[14]];
    v28 = &v5[v13[15]];
    *v8 = v15;
    v8[v17[6]] = v20;
    v8[v17[7]] = v21;
    v8[v17[8]] = 0;
    v8[v17[9]] = v22;
    *&v8[v17[10]] = v23;
    v30 = *v28;
    v29 = v28[1];
    v31 = &v8[v17[11]];
    *v31 = v25;
    v31[1] = v26;
    *&v8[v17[12]] = v27;
    v32 = &v8[v17[13]];
    *v32 = v30;
    v32[1] = v29;
    sub_18BC1E3F8();
    sub_18BC1E1A8();
    sub_18BC1E3F8();
    sub_18BAC522C(v5);
    (*(*(v17 - 1) + 56))(v8, 0, 1, v17);
  }

  sub_18BBDE094(v11, a1);
  v33 = _s15DropDestinationVMa(0);
  return sub_18BBDE0F8(v8, a1 + *(v33 + 20));
}

uint64_t sub_18BBDE024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BBDE094(uint64_t a1, uint64_t a2)
{
  v4 = _s7SectionVMa_1(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BBDE0F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30, &unk_18BC42E60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BBDE168(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_18B9B66A0(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {
      sub_18BC1E3F8();
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_18B9B66A0((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_18B7B1AD4(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t String.truncatedTitle(with:desiredWidth:sortedTabBarItemTitles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v8 = sub_18BC20B98();
  sub_18BBDE168(a2);
  v9 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v10 = sub_18BC20D88();

  v11 = [v9 initWithArray_];

  v12 = [v8 truncatedTitleWithFont:a1 desiredWidth:0 truncatedSize:v11 sortedTabBarItemTitles:a5];
  v13 = sub_18BC20BD8();

  return v13;
}

uint64_t String.truncatedTitle(with:desiredWidth:truncatedSize:sortedTabBarItemTitles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v10 = sub_18BC20B98();
  sub_18BBDE168(a3);
  v11 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v12 = sub_18BC20D88();

  v13 = [v11 initWithArray_];

  v14 = [v10 truncatedTitleWithFont:a1 desiredWidth:a2 truncatedSize:v13 sortedTabBarItemTitles:a6];
  v15 = sub_18BC20BD8();

  return v15;
}

uint64_t sub_18BBDE45C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));

  return swift_continuation_resume();
}

uint64_t sub_18BBDE490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[39] = a3;
  v4[40] = v3;
  v4[38] = a1;
  sub_18BC20F28();
  v4[41] = sub_18BC20F18();
  v6 = sub_18BC20ED8();
  v4[42] = v6;
  v4[43] = v5;

  return MEMORY[0x1EEE6DFA0](sub_18BBDE52C, v6, v5);
}

uint64_t sub_18BBDE52C()
{
  v33 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 352) = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 312);
    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    sub_18B80DBC4(v3, v0 + 16);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32 = v8;
      *v7 = 136315138;
      sub_18B80DBC4(v0 + 16, v0 + 256);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBB20, &qword_18BC54F88);
      v9 = sub_18BC20BF8();
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      v12 = sub_18B7EA850(v9, v11, &v32);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_18B7AC000, v5, v6, "Configure scene for action %s.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x18CFFEEE0](v8, -1, -1);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    }

    sub_18B80DBC4(*(v0 + 312), v0 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBB20, &qword_18BC54F88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBB40, &qword_18BC54FA8);
    if (swift_dynamicCast())
    {
      sub_18B7C3FA4((v0 + 136), v0 + 56);
      v17 = *(v0 + 80);
      v18 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 56), v17);
      v31 = (*(v18 + 8) + **(v18 + 8));
      v19 = swift_task_alloc();
      *(v0 + 360) = v19;
      *v19 = v0;
      v19[1] = sub_18BBDEB1C;
      v20 = *(v0 + 304);

      return v31(v20, v2, v17, v18);
    }

    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_18B988BAC(v0 + 136, &qword_1EA9DBB48, &unk_18BC54FB0);
    v22 = [v2 currentScene];
    if (v22)
    {
      v23 = v22;
      v24 = *(v0 + 304);
      swift_unknownObjectRelease();
      *v24 = v23;
      v25 = MEMORY[0x1E6985C00];
LABEL_22:
      v26 = *v25;
      v27 = sub_18BC1F048();
      (*(*(v27 - 8) + 104))(v24, v26, v27);
      v16 = *(v0 + 8);
      goto LABEL_23;
    }

    sub_18B80DBC4(*(v0 + 312), v0 + 176);
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
LABEL_21:
      v24 = *(v0 + 304);
      v25 = MEMORY[0x1E6985BF8];
      goto LABEL_22;
    }

    sub_18B80DBC4(*(v0 + 312), v0 + 216);
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();

      goto LABEL_21;
    }

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v28 = sub_18BC1DE48();
    v29 = __swift_project_value_buffer(v28, qword_1EA9F8578);
    sub_18B9A33F8();
    swift_allocError();
    (*(*(v28 - 8) + 16))(v30, v29, v28);
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v13 = sub_18BC1DE48();
    v14 = __swift_project_value_buffer(v13, qword_1EA9F8578);
    sub_18B9A33F8();
    swift_allocError();
    (*(*(v13 - 8) + 16))(v15, v14, v13);
    swift_willThrow();
  }

  v16 = *(v0 + 8);
LABEL_23:

  return v16();
}

uint64_t sub_18BBDEB1C()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = *(v2 + 344);
  v4 = *(v2 + 336);
  if (v0)
  {
    v5 = sub_18BBDECD0;
  }

  else
  {
    v5 = sub_18BBDEC58;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_18BBDEC58()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18BBDECD0()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18BBDED48()
{
  sub_18B7B55F4(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_18BBDED80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return sub_18BBDE490(a1, v6, a3);
}

uint64_t sub_18BBDEE2C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B7B6968;

  return sub_18BBDEEE0(a1, a2);
}

uint64_t sub_18BBDEEE0(uint64_t a1, uint64_t a2)
{
  v2[28] = a1;
  v2[29] = a2;
  sub_18BC20F28();
  v2[30] = sub_18BC20F18();
  v4 = sub_18BC20ED8();
  v2[31] = v4;
  v2[32] = v3;

  return MEMORY[0x1EEE6DFA0](sub_18BBDEF78, v4, v3);
}

uint64_t sub_18BBDEF78()
{
  v45 = v0;
  v1 = [*(v0 + 224) delegate];
  *(v0 + 264) = v1;
  if (!v1)
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
LABEL_11:

    goto LABEL_12;
  }

  v3 = [v2 proxy];
  *(v0 + 272) = v3;
  if (v3)
  {
    v4 = v3;
    sub_18B80DBC4(*(v0 + 232), v0 + 144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBB20, &qword_18BC54F88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBB28, &qword_18BC54F90);
    p_name = &OBJC_PROTOCOL___SBSBackgroundActivityCoordinatorDelegate.name;
    if (swift_dynamicCast())
    {
      sub_18B7C3FA4((v0 + 184), v0 + 80);
      if (qword_1EA9D22B0 != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 232);
      v7 = sub_18BC1F2C8();
      __swift_project_value_buffer(v7, qword_1EA9F7EC8);
      sub_18B80DBC4(v6, v0 + 144);
      v8 = sub_18BC1F2A8();
      v9 = sub_18BC21258();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v44[0] = swift_slowAlloc();
        v11 = v44[0];
        *v10 = 136446210;
        __swift_project_boxed_opaque_existential_1Tm((v0 + 144), *(v0 + 168));
        swift_getDynamicType();
        v12 = sub_18BC1E4C8();
        v14 = v13;
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
        v15 = sub_18B7EA850(v12, v14, v44);

        *(v10 + 4) = v15;
        _os_log_impl(&dword_18B7AC000, v8, v9, "Performing validation for %{public}s.", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        MEMORY[0x18CFFEEE0](v11, -1, -1);
        MEMORY[0x18CFFEEE0](v10, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
      }

      v31 = *(v0 + 104);
      v32 = *(v0 + 112);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 80), v31);
      (*(v32 + 8))(v4, v31, v32);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
      p_name = &OBJC_PROTOCOL___SBSBackgroundActivityCoordinatorDelegate.name;
    }

    else
    {
      *(v0 + 216) = 0;
      *(v0 + 200) = 0u;
      *(v0 + 184) = 0u;
      sub_18B988BAC(v0 + 184, &unk_1EA9DBB30, &unk_18BC54F98);
      if (qword_1EA9D22B0 != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 232);
      v22 = sub_18BC1F2C8();
      __swift_project_value_buffer(v22, qword_1EA9F7EC8);
      sub_18B80DBC4(v21, v0 + 80);
      v23 = sub_18BC1F2A8();
      v24 = sub_18BC21258();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v44[0] = v26;
        *v25 = 136446210;
        __swift_project_boxed_opaque_existential_1Tm((v0 + 80), *(v0 + 104));
        swift_getDynamicType();
        v27 = sub_18BC1E4C8();
        v29 = v28;
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
        v30 = sub_18B7EA850(v27, v29, v44);
        p_name = (&OBJC_PROTOCOL___SBSBackgroundActivityCoordinatorDelegate + 8);

        *(v25 + 4) = v30;
        _os_log_impl(&dword_18B7AC000, v23, v24, "Intent %{public}s does not implement ActionValidating.", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x18CFFEEE0](v26, -1, -1);
        MEMORY[0x18CFFEEE0](v25, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
      }
    }

    if (p_name[86] != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 232);
    v34 = sub_18BC1F2C8();
    __swift_project_value_buffer(v34, qword_1EA9F7EC8);
    sub_18B80DBC4(v33, v0 + 80);
    v35 = sub_18BC1F2A8();
    v36 = sub_18BC21218();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v44[0] = v38;
      *v37 = 136315138;
      sub_18B80DBC4(v0 + 80, v0 + 144);
      v39 = sub_18BC20BF8();
      v41 = v40;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
      v42 = sub_18B7EA850(v39, v41, v44);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_18B7AC000, v35, v36, "Navigate to view for action %s.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x18CFFEEE0](v38, -1, -1);
      MEMORY[0x18CFFEEE0](v37, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
    }

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_18BBDF734;
    v43 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8430, &qword_18BC4A5E0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_18BBDE45C;
    *(v0 + 104) = &block_descriptor_64;
    *(v0 + 112) = v43;
    [v4 prepareIntentInteractionWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  swift_unknownObjectRelease();
LABEL_12:
  if (qword_1EA9D2550 != -1)
  {
    swift_once();
  }

  v16 = sub_18BC1DE48();
  v17 = __swift_project_value_buffer(v16, qword_1EA9F8578);
  sub_18B9A33F8();
  swift_allocError();
  (*(*(v16 - 8) + 16))(v18, v17, v16);
  swift_willThrow();
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_18BBDF734()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return MEMORY[0x1EEE6DFA0](sub_18BBDF83C, v2, v1);
}

uint64_t sub_18BBDF83C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

double *sub_18BBDF8B4(double *result)
{
  v2 = &v1[OBJC_IVAR____TtC12MobileSafari34RoundedRectangleReflectionMaskView_reflection];
  if (*&v1[OBJC_IVAR____TtC12MobileSafari34RoundedRectangleReflectionMaskView_reflection] != *result || v2[1] != result[1] || *(v2 + 16) != (result[2] & 1) || v2[3] != result[3] || v2[4] != result[4] || *(v2 + 5) != *(result + 5) || v2[6] != result[6] || v2[7] != result[7] || v2[8] != result[8])
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_18BBDF968(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC12MobileSafari34RoundedRectangleReflectionMaskView_reflection];
  v10 = 6.0 - _SFOnePixel();
  v11 = _SFOnePixel();
  *v9 = 0x4000000000000000;
  *(v9 + 1) = 0x4028000000000000;
  v9[16] = 0;
  __asm { FMOV            V1.2D, #0.5 }

  *(v9 + 24) = _Q1;
  *(v9 + 5) = 12;
  *(v9 + 6) = 0x4008000000000000;
  *(v9 + 7) = v10;
  *(v9 + 8) = v11 + 2.0;
  v17 = OBJC_IVAR____TtC12MobileSafari34RoundedRectangleReflectionMaskView_fillView;
  *&v4[v17] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v18 = OBJC_IVAR____TtC12MobileSafari34RoundedRectangleReflectionMaskView_shadowView;
  *&v4[v18] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v21.receiver = v4;
  v21.super_class = type metadata accessor for RoundedRectangleReflectionMaskView();
  v19 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BBDFAE0();

  return v19;
}

void sub_18BBDFAE0()
{
  v1 = *&v0[OBJC_IVAR____TtC12MobileSafari34RoundedRectangleReflectionMaskView_fillView];
  v2 = [objc_opt_self() blackColor];
  [v1 setBackgroundColor_];

  v3 = *&v0[OBJC_IVAR____TtC12MobileSafari34RoundedRectangleReflectionMaskView_shadowView];
  v5 = [v3 layer];
  [v5 setShadowPathIsBounds_];
  [v5 setShadowOffset_];
  LODWORD(v4) = 1.0;
  [v5 setShadowOpacity_];
  [v0 addSubview_];
  [v0 addSubview_];
}

void sub_18BBDFBF0(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for RoundedRectangleReflectionMaskView();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v2 = &v1[OBJC_IVAR____TtC12MobileSafari34RoundedRectangleReflectionMaskView_reflection];
  v3 = *&v1[OBJC_IVAR____TtC12MobileSafari34RoundedRectangleReflectionMaskView_reflection + 8];
  v4 = *&v1[OBJC_IVAR____TtC12MobileSafari34RoundedRectangleReflectionMaskView_reflection + 64];
  v5 = *&v1[OBJC_IVAR____TtC12MobileSafari34RoundedRectangleReflectionMaskView_fillView];
  [v1 bounds];
  v11 = CGRectInset(v10, v4, v4);
  [v5 setFrame_];
  [v5 _setContinuousCornerRadius_];
  v6 = v4 * v2[3];
  v7 = *&v1[OBJC_IVAR____TtC12MobileSafari34RoundedRectangleReflectionMaskView_shadowView];
  [v1 bounds];
  v13 = CGRectInset(v12, v6, v6);
  [v7 setFrame_];
  [v7 _setContinuousCornerRadius_];
  v8 = [v7 layer];
  [v8 setShadowRadius_];
}

id sub_18BBDFD70(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RoundedRectangleReflectionMaskView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_18BBDFE14()
{
  v1 = v0 + OBJC_IVAR____TtC12MobileSafari34RoundedRectangleReflectionMaskView_reflection;
  v2 = 6.0 - _SFOnePixel();
  v3 = _SFOnePixel();
  *v1 = 0x4000000000000000;
  *(v1 + 8) = 0x4028000000000000;
  *(v1 + 16) = 0;
  __asm { FMOV            V1.2D, #0.5 }

  *(v1 + 24) = _Q1;
  *(v1 + 40) = 12;
  *(v1 + 48) = 0x4008000000000000;
  *(v1 + 56) = v2;
  *(v1 + 64) = v3 + 2.0;
  v9 = OBJC_IVAR____TtC12MobileSafari34RoundedRectangleReflectionMaskView_fillView;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v10 = OBJC_IVAR____TtC12MobileSafari34RoundedRectangleReflectionMaskView_shadowView;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  sub_18BC21CF8();
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_12MobileSafari34MatchMoveReferenceViewRegistration_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_18BBDFF58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18BBDFFA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_18BBE0014()
{
  v1 = v0;
  sub_18BA005EC(v0, v18);
  v2 = v19;
  if (v19)
  {
    v3 = v20;
    __swift_project_boxed_opaque_existential_1Tm(v18, v19);
    v4 = (*(v3 + 16))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    if (qword_1EA9D2288 != -1)
    {
      swift_once();
    }

    v5 = sub_18BC1F2C8();
    __swift_project_value_buffer(v5, qword_1EA9F7E50);
    v6 = sub_18BC1F2A8();
    v7 = sub_18BC21228();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_18B7AC000, v6, v7, "Moving destination reference view over source", v8, 2u);
      MEMORY[0x18CFFEEE0](v8, -1, -1);
    }

    [v4 _removeAllRetargetableAnimations_];
    v9 = *(v1 + 128);
    v10 = *(v1 + 136);
    __swift_project_boxed_opaque_existential_1Tm((v1 + 104), v9);
    v11 = (*(v10 + 16))(v9, v10);
    sub_18BB9669C(v11, *(v1 + 40));

    v12 = *(v1 + 128);
    v13 = *(v1 + 136);
    __swift_project_boxed_opaque_existential_1Tm((v1 + 104), v12);
    v14 = (*(v13 + 16))(v12, v13);
    sub_18BB9737C(0x6E6F697469736F70, 0xE800000000000000, v14);

    v15 = *(v1 + 128);
    v16 = *(v1 + 136);
    __swift_project_boxed_opaque_existential_1Tm((v1 + 104), v15);
    v17 = (*(v16 + 16))(v15, v16);
    sub_18BB9737C(0x73646E756F62, 0xE600000000000000, v17);
  }

  else
  {
    sub_18BA0065C(v18);
  }
}

uint64_t sub_18BBE0264()
{
  sub_18BC22158();
  sub_18BC21A58();
  return sub_18BC221A8();
}

uint64_t sub_18BBE02CC(uint64_t a1)
{
  sub_18BC22158();
  sub_18BC21A58();
  return sub_18BC221A8();
}

unint64_t sub_18BBE031C()
{
  result = qword_1EA9DBB68;
  if (!qword_1EA9DBB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DBB68);
  }

  return result;
}

uint64_t FloatingPoint.rounded(toMultipleOf:)@<X0>(uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v18[1] = a4;
  v5 = sub_18BC21F78();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  sub_18BC20A48();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E7038], v5);
  sub_18BC20A58();
  (*(v6 + 8))(v8, v5);
  v16 = *(v9 + 8);
  v16(v12, a2);
  sub_18BC21108();
  return (v16)(v15, a2);
}

void sub_18BBE0588(id a1)
{
  v3 = *&v1[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController17HistoryInfoHeader_icon];
  *&v1[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController17HistoryInfoHeader_icon] = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v8 = v3;
    goto LABEL_9;
  }

  v8 = v3;
  if (!v3)
  {
    a1 = a1;
LABEL_9:
    [v1 setNeedsUpdateConfiguration];

    v7 = v8;
    goto LABEL_10;
  }

  v4 = v1;
  sub_18B7E7DC4();
  a1 = a1;
  v5 = v8;
  v6 = sub_18BC215C8();

  if ((v6 & 1) == 0)
  {
    v1 = v4;
    goto LABEL_9;
  }

  v7 = v5;
LABEL_10:
}

double sub_18BBE0674(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController17HistoryInfoHeader_title];
  v4 = *&v2[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController17HistoryInfoHeader_title];
  v5 = *&v2[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController17HistoryInfoHeader_title + 8];
  *v3 = a1;
  *(v3 + 1) = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == a1 && v5 == a2;
      if (v6 || (sub_18BC21FD8() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  [v2 setNeedsUpdateConfiguration];
LABEL_11:

  return result;
}

uint64_t sub_18BBE0700()
{
  v1 = v0;
  v23 = sub_18BC1F878();
  v2 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18BC1FA08();
  v5 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18BC1F708();
  v9 = _s17HistoryInfoHeaderCMa();
  v25.receiver = v1;
  v25.super_class = v9;
  objc_msgSendSuper2(&v25, sel__bridgedUpdateConfigurationUsingState_, v8);

  v10 = [objc_opt_self() _sf_preferredFontForTextStyle_symbolicTraits_];
  sub_18BC1F9E8();
  sub_18BC1F998();
  sub_18BC1F968();
  v11 = *&v1[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController17HistoryInfoHeader_icon];
  sub_18BC1F9D8();
  v12 = [objc_opt_self() configurationWithFont_];
  v13 = sub_18BC1F918();
  sub_18BC1F8C8();
  v13(v24, 0);
  sub_18BC1F8B8();
  sub_18BC1F848();
  (*(v2 + 8))(v4, v23);
  v14 = sub_18BC1F918();
  sub_18BC1F908();
  v14(v24, 0);
  sub_18BC1F928();
  sub_18BC1E3F8();
  sub_18BC1F9B8();
  v15 = v10;
  v16 = sub_18BC1F8A8();
  sub_18BC1F838();
  v16(v24, 0);
  v17 = sub_18BC1F8A8();
  sub_18BC1F808();
  v17(v24, 0);
  v18 = v22;
  v24[3] = v22;
  v24[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v24);
  (*(v5 + 16))(boxed_opaque_existential_0Tm, v7, v18);
  MEMORY[0x18CFFC900](v24);

  return (*(v5 + 8))(v7, v18);
}

id sub_18BBE0C90(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s17HistoryInfoHeaderCMa();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void __swiftcall SFBackdropView.init(frame:)(SFBackdropView *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

Swift::Bool __swiftcall SFBackdropView._shouldAnimateProperty(withKey:)(Swift::String_optional withKey)
{
  if (withKey.value._object)
  {
    if (sub_18BC20C78())
    {
      LOBYTE(withKey.value._countAndFlagsBits) = 1;
    }

    else
    {
      v2 = sub_18BC20B98();
      v5.receiver = v1;
      v5.super_class = SFBackdropView;
      v3 = objc_msgSendSuper2(&v5, sel__shouldAnimatePropertyWithKey_, v2);

      LOBYTE(withKey.value._countAndFlagsBits) = v3;
    }
  }

  else
  {
    __break(1u);
  }

  return withKey.value._countAndFlagsBits;
}

id SFBackdropView.init(coder:)(void *a1)
{
  v4.super_class = SFBackdropView;
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, a1);

  if (v2)
  {
  }

  return v2;
}

id SFCapsulePageLayoutTopFloating.__allocating_init(container:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC12MobileSafari30SFCapsulePageLayoutTopFloating_capsuleEdgePadding] = 0x4030000000000000;
  *&v2[OBJC_IVAR____TtC12MobileSafari30SFCapsulePageLayoutTopFloating_toolbarEdgePadding] = 0x4020000000000000;
  *&v2[OBJC_IVAR____TtC12MobileSafari30SFCapsulePageLayoutTopFloating_toolbarHeight] = 0x4048000000000000;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  swift_unknownObjectRelease();
  return v3;
}

id SFCapsulePageLayoutTopFloating.init(container:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC12MobileSafari30SFCapsulePageLayoutTopFloating_capsuleEdgePadding] = 0x4030000000000000;
  *&v1[OBJC_IVAR____TtC12MobileSafari30SFCapsulePageLayoutTopFloating_toolbarEdgePadding] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC12MobileSafari30SFCapsulePageLayoutTopFloating_toolbarHeight] = 0x4048000000000000;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SFCapsulePageLayoutTopFloating();
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  return v2;
}

double sub_18BBE1330(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_18BBE1390(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12MobileSafari30SFCapsulePageLayoutTopFloating_container;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18B9A99E8;
}

void sub_18BBE14E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong bounds];
    v2 = v1;
    v4 = v3;
    v6 = v5;
    v8 = v7;
    swift_unknownObjectRelease();
    v9.origin.x = v2;
    v9.origin.y = v4;
    v9.size.width = v6;
    v9.size.height = v8;
    CGRectGetWidth(v9);
  }
}

uint64_t sub_18BBE163C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9040, &qword_18BC428D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18BC3FC60;
  *(v0 + 32) = sub_18BC20BD8();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_18BC20BD8();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_18BC20BD8();
  *(v0 + 72) = v3;
  return v0;
}

_BYTE *sub_18BBE1730(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, (v4 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    [v4 bounds];
    [a1 capsuleHeightForWidth:0 defaultHeight:CGRectGetWidth(v31) state:44.0];
    v6 = v5;
    swift_unknownObjectRelease();
    v7 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    v29 = fmax(v6, 44.0);
    CACornerRadiiMake(v30, v29 * 0.5, v29 * 0.5, v29 * 0.5, v29 * 0.5);
    v8 = v30[0];
    v9 = v30[1];
    v11 = v30[2];
    v10 = v30[3];
    v13 = v30[4];
    v12 = v30[5];
    v15 = v30[6];
    v14 = v30[7];
    v16 = &v7[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_cornerRadii];
    swift_beginAccess();
    *v16 = v8;
    v16[1] = v9;
    v16[2] = v11;
    v16[3] = v10;
    v16[4] = v13;
    v16[5] = v12;
    v16[6] = v15;
    v16[7] = v14;
    v17 = 0;
    if (v15 == v14 && v15 == v8 && v14 == v9)
    {
      v18 = v15 == v13;
      if (v14 != v12)
      {
        v18 = 0;
      }

      if (v15 != v11)
      {
        v18 = 0;
      }

      v17 = v14 == v10 && v18;
    }

    v19 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_canRepresentCornersAsRadius;
    swift_beginAccess();
    v7[v19] = v17;
    [v3 safeAreaInsets];
    [v3 bounds];
    CGRectGetWidth(v32);
    v20 = _SFRoundRectToPixels(16.0);
    v22 = v21;
    v24 = v23;
    v26 = v25;
    swift_unknownObjectRelease();
    v27 = &v7[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v27 = v20;
    *(v27 + 1) = v22;
    *(v27 + 2) = v24;
    *(v27 + 3) = v26;
    return v7;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

char *sub_18BBE19B8(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_18BC20BD8() == a1 && v6 == a2)
  {

    goto LABEL_20;
  }

  v8 = sub_18BC21FD8();

  if (v8)
  {
LABEL_20:

    return sub_18BBE1BE4(a3);
  }

  if (sub_18BC20BD8() == a1 && v9 == a2)
  {

    goto LABEL_24;
  }

  v11 = sub_18BC21FD8();

  if (v11)
  {
LABEL_24:

    return sub_18BBE2094();
  }

  if (sub_18BC20BD8() == a1 && v12 == a2)
  {
  }

  else
  {
    v14 = sub_18BC21FD8();

    if ((v14 & 1) == 0)
    {
      v15 = objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo());

      return [v15 init];
    }
  }

  return sub_18BBE2344();
}

char *sub_18BBE1BE4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_18BBE1730(a1);
    v5 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    v6 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
    v7 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
    v8 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

    v9 = [a1 lockdownStatusBar];
    v10 = v9;
    if (v9)
    {
      [v9 preferredSize];
    }

    v11 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    v21.origin.x = v5;
    v21.origin.y = v6;
    v21.size.width = v7;
    v21.size.height = v8;
    CGRectGetMaxY(v21);
    [v3 bounds];
    CGRectGetWidth(v22);
    v12 = _SFRoundRectToPixels(0.0);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    swift_unknownObjectRelease();
    v19 = &v11[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v19 = v12;
    *(v19 + 1) = v14;
    *(v19 + 2) = v16;
    *(v19 + 3) = v18;
    return v11;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

char *sub_18BBE1D80(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 lockdownStatusBar];
    if (v4)
    {

      v5 = sub_18BBE1BE4(a1);
      v6 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
      v7 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
      v8 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
      v9 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

      v25.origin.x = v6;
      v25.origin.y = v7;
      v25.size.width = v8;
      v25.size.height = v9;
      CGRectGetMaxY(v25);
    }

    else
    {
      v10 = sub_18BBE1730(a1);
      v11 = *&v10[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
      v12 = *&v10[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
      v13 = *&v10[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
      v14 = *&v10[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

      v26.origin.x = v11;
      v26.origin.y = v12;
      v26.size.width = v13;
      v26.size.height = v14;
      CGRectGetMaxY(v26);
    }

    v15 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    [v3 bounds];
    CGRectGetWidth(v27);
    v16 = _SFRoundRectToPixels(0.0);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    swift_unknownObjectRelease();
    v23 = &v15[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v23 = v16;
    *(v23 + 1) = v18;
    *(v23 + 2) = v20;
    *(v23 + 3) = v22;
    return v15;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

id sub_18BBE1F4C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = a4(a3);
  swift_unknownObjectRelease();

  return v8;
}

id SFCapsulePageLayoutTopFloating.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFCapsulePageLayoutTopFloating.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFCapsulePageLayoutTopFloating();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *sub_18BBE2094()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init], (v4 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v5 = *(v0 + OBJC_IVAR____TtC12MobileSafari30SFCapsulePageLayoutTopFloating_toolbarHeight);
    v6 = v4;
    [v4 bounds];
    v7 = CGRectGetHeight(v30) - v5;
    [v6 bounds];
    Width = CGRectGetWidth(v31);
    [v6 layoutMargins];
    [v6 concentricEdgeInsetsForEdge:4 bounds:0.0 minimumEdgeInsets:{v7, Width, v5, v9, v10, v11, v12}];
    v14 = v13;
    swift_unknownObjectRelease();
    [v2 bounds];
    CGRectGetHeight(v32);
    [v2 bounds];
    CGRectGetWidth(v33);
    v34.origin.x = _SFRoundRectToPixels(v14);
    *&v3[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame] = v34;
    Height = CGRectGetHeight(v34);
    CACornerRadiiMake(v29, Height * 0.5, Height * 0.5, Height * 0.5, Height * 0.5);
    v17 = v29[0];
    v16 = v29[1];
    v19 = v29[2];
    v18 = v29[3];
    v21 = v29[4];
    v20 = v29[5];
    v23 = v29[6];
    v22 = v29[7];
    swift_unknownObjectRelease();
    v24 = &v3[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_cornerRadii];
    swift_beginAccess();
    *v24 = v17;
    v24[1] = v16;
    v24[2] = v19;
    v24[3] = v18;
    v24[4] = v21;
    v24[5] = v20;
    v24[6] = v23;
    v24[7] = v22;
    v25 = 0;
    if (v23 == v22 && v23 == v17 && v22 == v16)
    {
      v26 = v23 == v21;
      if (v22 != v20)
      {
        v26 = 0;
      }

      if (v23 != v19)
      {
        v26 = 0;
      }

      v25 = v22 == v18 && v26;
    }

    v27 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_canRepresentCornersAsRadius;
    swift_beginAccess();
    v3[v27] = v25;
    return v3;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

char *sub_18BBE2344()
{
  v0 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
  v1 = sub_18BC20BD8();
  v3 = v2;
  v4 = &v0[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_parentIdentifier];
  swift_beginAccess();
  *v4 = v1;
  v4[1] = v3;

  v5 = sub_18BBE2094();
  v6 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
  v7 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
  v8 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
  v9 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

  v17.origin.x = v6;
  v17.origin.y = v7;
  v17.size.width = v8;
  v17.size.height = v9;
  v10 = CGRectGetMinX(v17) + 8.0;
  v18.origin.x = v6;
  v18.origin.y = v7;
  v18.size.width = v8;
  v18.size.height = v9;
  CGRectGetMinY(v18);
  v19.origin.x = v6;
  v19.origin.y = v7;
  v19.size.width = v8;
  v19.size.height = v9;
  CGRectGetWidth(v19);
  v11 = _SFRoundRectToPixels(v10);
  v12 = &v0[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
  *v12 = v11;
  *(v12 + 1) = v13;
  *(v12 + 2) = v14;
  *(v12 + 3) = v15;
  return v0;
}

char *sub_18BBE248C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_18BBE2344();
    v3 = *&v2[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    v4 = *&v2[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
    v5 = *&v2[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
    v6 = *&v2[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

    [v1 bounds];
    CGRectGetHeight(v17);
    v18.origin.x = v3;
    v18.origin.y = v4;
    v18.size.width = v5;
    v18.size.height = v6;
    CGRectGetMinY(v18);
    v7 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    [v1 bounds];
    CGRectGetHeight(v19);
    [v1 bounds];
    CGRectGetWidth(v20);
    v8 = _SFRoundRectToPixels(0.0);
    v10 = v9;
    v12 = v11;
    v14 = v13;
    swift_unknownObjectRelease();
    v15 = &v7[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v15 = v8;
    *(v15 + 1) = v10;
    *(v15 + 2) = v12;
    *(v15 + 3) = v14;
    return v7;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

uint64_t SFBookmarksCollectionViewController.BookmarkProxyStyle.hashValue.getter(unsigned __int8 a1)
{
  sub_18BC22158();
  MEMORY[0x18CFFD660](a1);
  return sub_18BC221A8();
}

unint64_t sub_18BBE2898()
{
  result = qword_1EA9DBBB0;
  if (!qword_1EA9DBBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DBBB0);
  }

  return result;
}

id sub_18BBE2D1C(void *a1)
{
  v3 = OBJC_IVAR____TtCC12MobileSafari11TabOverview14BackgroundView_blurView;
  *&v1[v3] = [objc_allocWithZone(SFBackdropView) init];
  v4 = OBJC_IVAR____TtCC12MobileSafari11TabOverview14BackgroundView_fillView;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v9.receiver = v1;
  v9.super_class = _s14BackgroundViewCMa_0();
  v5 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_18B852AE0();
  }

  return v6;
}

id sub_18BBE2E9C()
{
  v2.receiver = v0;
  v2.super_class = _s14BackgroundViewCMa_0();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18BBE2F30()
{
  result = qword_1EA9DBBD0[0];
  if (!qword_1EA9DBBD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA9DBBD0);
  }

  return result;
}

uint64_t sub_18BBE2F84(uint64_t a1)
{
  result = sub_18BC21848();
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

uint64_t sub_18BBE304C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_18BBE3DC8(a1, a2);
  return v4;
}

void sub_18BBE309C()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 24);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v4;
    if (v4 == 1)
    {
      swift_beginAccess();
      v5 = *(v1 + 16);
      v6 = *(v5 + 16);
      if (v6)
      {
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        v7 = v5 + 40;
        do
        {
          v8 = *(v7 - 8);
          v9 = *(v1 + 24) > 0;
          sub_18BC1E1A8();
          v8(&v9);

          v7 += 16;
          --v6;
        }

        while (v6);
      }
    }
  }
}

uint64_t sub_18BBE3170(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v3;
  if (a3)
  {
    v7 = v3[2];
    v3[2] = a2;
    sub_18BC1E3F8();
    sub_18BBE3CE4(v7);

    v3[5] = a2;
    sub_18BC1E3F8();
  }

  else
  {
    v8 = *(*v3 + 88);
    v9 = sub_18BC20DE8();
    if (sub_18BC20E28())
    {
      v10 = sub_18BB32DD8(v9, v8, *(*(v5 + 112) + 8));
    }

    else
    {
      v10 = MEMORY[0x1E69E7CD0];
    }

    v11 = v3[2];
    v3[2] = v10;
    sub_18BBE3CE4(v11);

    v12 = sub_18BC20DE8();
    if (sub_18BC20E28())
    {
      v13 = sub_18BB32DD8(v12, v8, *(*(v5 + 112) + 8));
    }

    else
    {
      v13 = MEMORY[0x1E69E7CD0];
    }

    v3[5] = v13;
  }

  v14 = *(*v3 + 160);
  swift_beginAccess();
  v15 = sub_18BC21848();
  (*(*(v15 - 8) + 24))(v3 + v14, a1, v15);
  result = swift_endAccess();
  *(v3 + 32) = 1;
  return result;
}

uint64_t sub_18BBE3340(uint64_t a1, uint64_t a2)
{
  v22 = *v2;
  v23 = a1;
  v4 = *(v22 + 88);
  v5 = sub_18BC21848();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v16 = v2[2];
  v2[2] = a2;
  sub_18BC1E3F8();
  sub_18BBE3CE4(v16);

  v2[5] = a2;
  sub_18BC1E3F8();

  (*(v6 + 16))(v11, v23, v5);
  if ((*(v12 + 48))(v11, 1, v4) == 1)
  {
    result = (*(v6 + 8))(v11, v5);
    v18 = 1;
  }

  else
  {
    (*(v12 + 32))(v15, v11, v4);
    (*(v12 + 16))(v8, v15, v4);
    (*(v12 + 56))(v8, 0, 1, v4);
    v19 = *(*v2 + 160);
    swift_beginAccess();
    (*(v6 + 40))(v2 + v19, v8, v5);
    swift_endAccess();
    v20 = sub_18BC210B8();
    result = (*(v12 + 8))(v15, v4);
    v18 = (v20 & 1) == 0;
  }

  *(v2 + 32) = v18;
  return result;
}

double sub_18BBE3660(uint64_t a1)
{
  if (*(v1 + 32) == 1)
  {
    sub_18BC210E8();
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    swift_getWitnessTable();
    v2 = sub_18BC21058();
    v3 = *(v1 + 16);
    *(v1 + 16) = v2;
    sub_18BBE3CE4(v3);
  }

  else
  {
    sub_18BC1E3F8();
    v5 = sub_18BC20FF8();
    v6 = *(v1 + 16);
    *(v1 + 16) = v5;
    sub_18BBE3CE4(v6);
  }

  return result;
}

double sub_18BBE37B4(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = sub_18BC21848();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - v14;
  if (*(v1 + 32) == 1)
  {
    (*(v8 + 16))(v11, a1, v3, v13);
    v19 = *(v1 + 16);
    sub_18BC210E8();
    sub_18BC1E3F8();
    sub_18BC21078();
    (*(v8 + 8))(v15, v3);
  }

  else
  {
    v19 = *(v1 + 16);
    sub_18BC210E8();
    sub_18BC1E3F8();
    sub_18BC21088();
    (*(v5 + 8))(v7, v4);
  }

  v16 = *(v1 + 16);
  *(v1 + 16) = v19;
  sub_18BBE3CE4(v16);

  return result;
}

void sub_18BBE3A54()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 24);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v4;
    if (!v4)
    {
      swift_beginAccess();
      v5 = *(v1 + 16);
      v6 = *(v5 + 16);
      if (v6)
      {
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        v7 = v5 + 40;
        do
        {
          v8 = *(v7 - 8);
          v9 = *(v1 + 24) > 0;
          sub_18BC1E1A8();
          v8(&v9);

          v7 += 16;
          --v6;
        }

        while (v6);
      }
    }
  }
}

double sub_18BBE3B24(uint64_t a1)
{
  sub_18BC210E8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  swift_getWitnessTable();
  v2 = sub_18BC21018();
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  sub_18BBE3CE4(v3);

  return result;
}

uint64_t sub_18BBE3C40(char a1)
{
  sub_18BC22158();
  MEMORY[0x18CFFD660](a1 & 1);
  return sub_18BC221A8();
}

uint64_t sub_18BBE3CA4(uint64_t a1)
{
  sub_18BC22158();
  sub_18BBE3C18(v3, *v1);
  return sub_18BC221A8();
}

double sub_18BBE3CE4(uint64_t a1)
{
  sub_18BC1E3F8();
  v3 = sub_18BC21028();

  if ((v3 & 1) == 0)
  {
    v5 = *(v1 + *(*v1 + 168));
    sub_18BC1E1A8();
    v5(a1);
  }

  return result;
}

uint64_t sub_18BBE3DC8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2;
  type metadata accessor for Assertion();
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  *(v7 + 24) = 0;
  *(v2 + 24) = v7;
  *(v2 + 32) = 1;
  v8 = v5[20];
  v9 = v5[11];
  (*(*(v9 - 8) + 56))(v2 + v8, 1, 1, v9);
  v10 = (v2 + *(*v2 + 168));
  v11 = swift_allocObject();
  *(v11 + 16) = v5[10];
  *(v11 + 24) = v9;
  *(v11 + 32) = v5[12];
  *(v11 + 40) = *(v6 + 13);
  *(v11 + 56) = v5[15];
  *v10 = CGRectMake;
  v10[1] = v11;
  swift_beginAccess();
  v12 = sub_18BC21848();
  (*(*(v12 - 8) + 40))(v2 + v8, a1, v12);
  swift_endAccess();
  *(v2 + 40) = a2;
  *(v2 + 16) = a2;
  sub_18BC1E3F8();
  return v2;
}

uint64_t *sub_18BBE3FC4()
{

  v1 = *(*v0 + 160);
  v2 = sub_18BC21848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_18BBE4088()
{
  sub_18BBE3FC4();

  return swift_deallocClassInstance();
}

id sub_18BBE41BC(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = *(a1 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView4Lens_contentView);
  MidX = CGRectGetMidX(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  MidY = CGRectGetMidY(v14);

  return [v9 setCenter_];
}

void sub_18BBE424C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = [v4 window];
  if (v9)
  {

    [v4 bounds];
    if (CGRectGetWidth(v26) != 0.0 && a3 != 0.0)
    {
      [v4 bounds];
      if (v11 != a3 || v10 != a4)
      {
        type metadata accessor for AnimationSettings();
        inited = swift_initStaticObject();
        v14 = swift_allocObject();
        *(v14 + 16) = a3;
        *(v14 + 24) = a4;
        *(v14 + 32) = v4;
        *(v14 + 40) = a1;
        *(v14 + 48) = a2;
        v15 = objc_opt_self();
        v16 = swift_allocObject();
        v16[2] = inited;
        v16[3] = sub_18BBE4900;
        v16[4] = v14;
        v24 = sub_18B7D80AC;
        v25 = v16;
        v20 = MEMORY[0x1E69E9820];
        v21 = 1107296256;
        v22 = sub_18B7B0DB0;
        v23 = &block_descriptor_65;
        v17 = _Block_copy(&v20);
        v18 = v4;
        sub_18BC1E1A8();
        sub_18BC1E1A8();

        v24 = CGRectMake;
        v25 = 0;
        v20 = MEMORY[0x1E69E9820];
        v21 = 1107296256;
        v22 = sub_18B8043A0;
        v23 = &block_descriptor_19_2;
        v19 = _Block_copy(&v20);

        [v15 _animateUsingSpringBehavior_tracking_animations_completion_];
        _Block_release(v19);
        _Block_release(v17);
      }
    }
  }
}

id sub_18BBE4494(char *a1)
{
  sub_18B7F40F4(a1);
  [a1 _setContinuousCornerRadius_];
  v2 = *&a1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView4Lens_contentView];
  [a1 bounds];
  [v2 setFrame_];
  v3 = sub_18B7F4548();
  v5 = v4;
  [v2 bounds];
  [v2 setBounds_];
  v6 = sub_18B7F44CC();

  return [v2 _setContinuousCornerRadius_];
}

void sub_18BBE4588(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = v3;
  sub_18BBE424C(sub_18BA48288, v6, v4, v5);

  if (qword_1EA9D2370 != -1)
  {
    swift_once();
  }

  v8 = qword_1EA9F7FE0;
  v9 = swift_allocObject();
  v10 = *(a1 + 32);
  *(v9 + 72) = *(a1 + 48);
  v11 = *(a1 + 80);
  *(v9 + 88) = *(a1 + 64);
  *(v9 + 104) = v11;
  *(v9 + 120) = *(a1 + 96);
  v12 = *(a1 + 16);
  *(v9 + 24) = *a1;
  *(v9 + 40) = v12;
  *(v9 + 16) = v7;
  *(v9 + 56) = v10;
  v13 = v7;
  sub_18B81407C(a1, &v14);
  sub_18B7EAA64(sub_18BA48290, v9, CGRectMake, 0, v8);
}

id sub_18BBE4744(void *a1)
{
  sub_18B7F40F4(a1);
  v2 = sub_18B7F44CC();

  return [a1 _setContinuousCornerRadius_];
}

id sub_18BBE47A4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_18BBE47DC(uint64_t a1)
{
  v3 = *v1;
  sub_18BBE424C(CGRectMake, 0, *(a1 + 16), *(a1 + 24));
  if (qword_1EA9D2370 != -1)
  {
    swift_once();
  }

  v4 = qword_1EA9F7FE0;
  v5 = swift_allocObject();
  v6 = *(a1 + 32);
  *(v5 + 72) = *(a1 + 48);
  v7 = *(a1 + 80);
  *(v5 + 88) = *(a1 + 64);
  *(v5 + 104) = v7;
  *(v5 + 120) = *(a1 + 96);
  v8 = *(a1 + 16);
  *(v5 + 24) = *a1;
  *(v5 + 40) = v8;
  *(v5 + 16) = v3;
  *(v5 + 56) = v6;
  v9 = v3;
  sub_18B81407C(a1, &v11);
  sub_18B7EAA64(sub_18BBE4964, v5, CGRectMake, 0, v4);

  return result;
}

id sub_18BBE4964()
{
  v1 = *(v0 + 16);
  sub_18B7F40F4(v1);
  v2 = sub_18B7F44CC();

  return [v1 _setContinuousCornerRadius_];
}

uint64_t getEnumTagSinglePayload for PeekingInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PeekingInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_18BBE4A60(double a1, double a2, uint64_t a3, char a4)
{
  MEMORY[0x18CFFD660](a4 & 1);
  if (a1 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = a1;
  }

  MEMORY[0x18CFFD690](*&v6);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  return MEMORY[0x18CFFD690](*&v7);
}

uint64_t sub_18BBE4AC4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_18BC22158();
  sub_18BBE4A60(v2, v3, v5, v1);
  return sub_18BC221A8();
}

uint64_t sub_18BBE4B2C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_18BC22158();
  sub_18BBE4A60(v3, v4, v6, v2);
  return sub_18BC221A8();
}

unint64_t sub_18BBE4BC0()
{
  result = qword_1EA9DBCE0;
  if (!qword_1EA9DBCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DBCE0);
  }

  return result;
}

char *sub_18BBE4C14(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DAE30, &qword_18BC42A50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_18BC1FCD8();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController22ContentUnavailableCell_contentUnavailableView;
  sub_18BBE50D4();
  sub_18BC1FC98();
  *&v4[v13] = sub_18BC21488();
  v14 = _s22ContentUnavailableCellCMa();
  v18.receiver = v4;
  v18.super_class = v14;
  v15 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BC1F798();
  v16 = sub_18BC1F7B8();
  (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  MEMORY[0x18CFFC920](v11);
  [v15 addSubview_];

  return v15;
}

id sub_18BBE506C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s22ContentUnavailableCellCMa();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_18BBE50D4()
{
  result = qword_1EA9D80A8;
  if (!qword_1EA9D80A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D80A8);
  }

  return result;
}

double sub_18BBE5120()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0.0;
  }

  v2 = *(v0 + 32);
  v3 = *(v0 + 72) + *(v0 + 88);
  if (*(v0 + 16))
  {
    return v2 + v3;
  }

  else
  {
    return v2 * v1 + v3 + (v1 + -1.0) * *(v0 + 96);
  }
}

uint64_t sub_18BBE51A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18BBE51E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_18BBE5274@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W3>, uint64_t a4@<X8>)
{
  sub_18B831DF0(a1, a2, a3, v8);
  v5 = v8[5];
  *(a4 + 64) = v8[4];
  *(a4 + 80) = v5;
  *(a4 + 96) = v8[6];
  v6 = v8[1];
  *a4 = v8[0];
  *(a4 + 16) = v6;
  result = v8[3];
  *(a4 + 32) = v8[2];
  *(a4 + 48) = result;
  return result;
}

unint64_t sub_18BBE52DC()
{
  result = qword_1EA9DBCF0;
  if (!qword_1EA9DBCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DBCF0);
  }

  return result;
}

void sub_18BBE53E4(uint64_t a1, uint64_t *a2)
{
  sub_18B9EA798();
  sub_18BC1E878();
  __break(1u);
}

void sub_18BBE55C0(char a1)
{
  v2 = v1[OBJC_IVAR___SFScribbleSelectionOverlay_showsHideButton];
  v1[OBJC_IVAR___SFScribbleSelectionOverlay_showsHideButton] = a1;
  if (v2 != (a1 & 1))
  {
    type metadata accessor for AnimationSettings();
    inited = swift_initStaticObject();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    v6[2] = inited;
    v6[3] = sub_18BBE7CA4;
    v6[4] = v4;
    v14 = sub_18B7E767C;
    v15 = v6;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_18B7B0DB0;
    v13 = &block_descriptor_53_4;
    v7 = _Block_copy(&v10);
    v8 = v1;
    sub_18BC1E1A8();

    v14 = CGRectMake;
    v15 = 0;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_18B8043A0;
    v13 = &block_descriptor_56_2;
    v9 = _Block_copy(&v10);

    [v5 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v9);
    _Block_release(v7);
  }
}

void sub_18BBE57A0()
{
  v1 = v0;
  v2 = 0.0;
  v3 = 0.0;
  if ([v0 showsHideButton] && !v0[OBJC_IVAR___SFScribbleSelectionOverlay_hideButtonTypeThatFits])
  {
    v3 = *&v0[OBJC_IVAR___SFScribbleSelectionOverlay_contentVisibility];
  }

  v4 = [v0 regularHideButton];
  [v4 setAlpha_];

  v5 = [v1 regularHideButton];
  v6 = OBJC_IVAR___SFScribbleSelectionOverlay_hideButtonTypeThatFits;
  [v5 setHidden_];

  v7 = [v1 regularHideButton];
  v8 = sub_18BC0F2C4();

  [v8 setValue_];
  if ([v1 showsHideButton] && v1[v6] == 1)
  {
    v2 = *&v1[OBJC_IVAR___SFScribbleSelectionOverlay_contentVisibility];
  }

  v9 = *&v1[OBJC_IVAR___SFScribbleSelectionOverlay_smallHideButton];
  [v9 setAlpha_];
  [v9 setHidden_];
  v10 = sub_18BC0F2C4();
  [v10 setValue_];
}

void sub_18BBE59DC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v101 = sub_18BC21758();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18BC21808();
  v108 = *(v10 - 8);
  v109 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v102 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730, &unk_18BC41F60);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v105 = &v95 - v13;
  v14 = &v4[OBJC_IVAR___SFScribbleSelectionOverlay_hideButtonHandler];
  *v14 = CGRectMake;
  v14[1] = 0;
  v4[OBJC_IVAR___SFScribbleSelectionOverlay_showsHideButton] = 1;
  v15 = OBJC_IVAR___SFScribbleSelectionOverlay_blurView;
  *&v4[v15] = [objc_allocWithZone(SFBackdropView) init];
  v16 = OBJC_IVAR___SFScribbleSelectionOverlay_borderView;
  *&v4[v16] = [objc_allocWithZone(SFBorderView) init];
  v17 = OBJC_IVAR___SFScribbleSelectionOverlay_smallHideButton;
  type metadata accessor for BlurrableButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v17] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v19 = OBJC_IVAR___SFScribbleSelectionOverlay_regularHideButton;
  *&v4[v19] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR___SFScribbleSelectionOverlay_contentVisibility] = 0;
  v4[OBJC_IVAR___SFScribbleSelectionOverlay_hideButtonTypeThatFits] = 2;
  v111.receiver = v4;
  v111.super_class = SFScribbleSelectionOverlay;
  v20 = objc_msgSendSuper2(&v111, sel_initWithFrame_, a1, a2, a3, a4);
  v21 = *&v20[OBJC_IVAR___SFScribbleSelectionOverlay_blurView];
  v22 = OBJC_IVAR___SFScribbleSelectionOverlay_blurView;
  v23 = v20;
  v24 = v20;
  [v21 setAutoresizingMask_];
  [*&v23[v22] setClipsToBounds_];
  v25 = *&v23[v22];
  v26 = v23;
  v98 = v23;
  *&v103 = v22;
  v27 = [v25 backdropLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A10, &qword_18BC3EFC0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_18BC3E410;
  v29 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v30 = sub_18BC20EC8();
  [v29 setValue:v30 forKey:*MEMORY[0x1E6979B78]];

  v31 = sub_18BC1EEA8();
  [v29 setValue:v31 forKey:*MEMORY[0x1E6979BA8]];

  *(v28 + 56) = sub_18B7B0AC0(0, &qword_1EA9D40B8, 0x1E6979378);
  *(v28 + 32) = v29;
  v32 = sub_18BC20D88();

  [v27 setFilters_];

  v33 = *&v26[v22];
  v34 = v24;
  v35 = v33;
  [v34 bounds];
  [v35 setFrame_];

  v36 = OBJC_IVAR___SFScribbleSelectionOverlay_borderView;
  [*&v34[OBJC_IVAR___SFScribbleSelectionOverlay_borderView] setAutoresizingMask_];
  v37 = *&v34[v36];
  v38 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v39 = v37;
  v40 = [v38 initWithWhite:1.0 alpha:0.3];
  [v39 setBackgroundColor_];

  v41 = *&v34[v36];
  v42 = objc_opt_self();
  v104 = v42;
  v43 = v41;
  v44 = [v42 safari_scribbleThemeColor];
  [v43 setBorderColor_];

  v45 = *&v34[v36];
  v46 = v34;
  v47 = v45;
  [v46 bounds];
  [v47 setFrame_];

  v48 = [*&v34[v36] layer];
  [v48 setBorderWidth_];

  sub_18B7B0AC0(0, &qword_1EA9D52D0, 0x1E69DC628);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v49 = sub_18BC215E8();
  v106 = v49;
  v50 = OBJC_IVAR___SFScribbleSelectionOverlay_regularHideButton;
  v51 = *&v46[OBJC_IVAR___SFScribbleSelectionOverlay_regularHideButton];
  v52 = sub_18BC20B98();
  [v51 setAccessibilityIdentifier_];

  v53 = *&v46[v50];
  v54 = v105;
  sub_18BBE6894();
  v97 = *(v108 + 56);
  v97(v54, 0, 1, v109);
  sub_18BC21828();

  v55 = *&v46[v50];
  [v55 setPointerInteractionEnabled_];
  v56 = [v104 safari_scribbleThemeColor];
  [v55 setTintColor_];

  [v55 setHidden_];
  [v55 addAction:v49 forControlEvents:0x2000];
  [v55 setTranslatesAutoresizingMaskIntoConstraints_];

  [v46 addSubview_];
  [v46 addSubview_];
  [v46 addSubview_];
  v57 = objc_opt_self();
  v96 = v57;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v58 = swift_allocObject();
  v103 = xmmword_18BC41E60;
  *(v58 + 16) = xmmword_18BC41E60;
  v59 = [*&v46[v50] centerXAnchor];
  v60 = [v46 &selRef_contentIdentifier + 2];
  v61 = [v59 constraintEqualToAnchor_];

  *(v58 + 32) = v61;
  v62 = [*&v46[v50] centerYAnchor];
  v63 = [v46 &selRef_contentIsCentered];
  v64 = [v62 constraintEqualToAnchor_];

  *(v58 + 40) = v64;
  sub_18B7B0AC0(0, &qword_1EA9D4700, 0x1E696ACD8);
  v65 = sub_18BC20D88();

  [v57 activateConstraints_];

  v66 = v102;
  sub_18BBE6894();
  (*(v100 + 104))(v99, *MEMORY[0x1E69DC550], v101);
  sub_18BC21618();
  sub_18BC21678();
  v67 = OBJC_IVAR___SFScribbleSelectionOverlay_smallHideButton;
  v68 = *&v46[OBJC_IVAR___SFScribbleSelectionOverlay_smallHideButton];
  v69 = v105;
  v70 = v66;
  v71 = v109;
  (*(v108 + 16))(v105, v70, v109);
  v97(v69, 0, 1, v71);
  v72 = v68;
  sub_18BC21828();

  v73 = *&v46[v67];
  [v73 setPointerInteractionEnabled_];
  v74 = [v104 safari_scribbleThemeColor];
  [v73 setTintColor_];

  [v73 setHidden_];
  [v73 addAction:v106 forControlEvents:0x2000];
  [v73 setTranslatesAutoresizingMaskIntoConstraints_];

  [v46 addSubview_];
  v75 = swift_allocObject();
  *(v75 + 16) = v103;
  v76 = [*&v46[v67] centerXAnchor];
  v77 = [v46 centerXAnchor];
  v78 = [v76 constraintEqualToAnchor_];

  *(v75 + 32) = v78;
  v79 = [*&v46[v67] centerYAnchor];
  v80 = [v46 centerYAnchor];
  v81 = [v79 constraintEqualToAnchor_];

  *(v75 + 40) = v81;
  v82 = sub_18BC20D88();

  v83 = v96;
  [v96 activateConstraints_];

  [*&v46[v50] setMaximumContentSizeCategory_];
  [*&v46[v67] setMaximumContentSizeCategory_];
  v84 = swift_allocObject();
  *(v84 + 16) = v103;
  v85 = [*&v46[v50] heightAnchor];
  v86 = [v85 constraintEqualToConstant_];

  *(v84 + 32) = v86;
  v87 = [*&v46[v67] heightAnchor];
  v88 = [v87 constraintEqualToConstant_];

  *(v84 + 40) = v88;
  v89 = sub_18BC20D88();

  [v83 activateConstraints_];

  v90 = swift_allocObject();
  *(v90 + 16) = v46;
  v91 = objc_opt_self();
  v92 = swift_allocObject();
  *(v92 + 16) = sub_18BBE7C9C;
  *(v92 + 24) = v90;
  v93 = swift_allocObject();
  *(v93 + 16) = sub_18B7D1EC4;
  *(v93 + 24) = v92;
  aBlock[4] = sub_18B7D1E94;
  aBlock[5] = v93;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7E3BF4;
  aBlock[3] = &block_descriptor_40_0;
  v94 = _Block_copy(aBlock);
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v91 performWithoutAnimation_];
  _Block_release(v94);
  LOBYTE(v94) = swift_isEscapingClosureAtFileLocation();

  if (v94)
  {
    __break(1u);
  }

  else
  {
    (*(v108 + 8))(v102, v109);
  }
}

void sub_18BBE6814(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong hideButtonHandler];

    v4[2](v4);
    _Block_release(v4);
  }
}

void sub_18BBE6894()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52F8, &unk_18BC455C0);
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = v26 - v1;
  v3 = sub_18BC1E7F8();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v26[1] = v26 - v7;
  v8 = sub_18BC1EE48();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5300, &qword_18BC43170);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v26 - v13;
  v15 = sub_18BC21628();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC216D8();
  (*(v16 + 104))(v18, *MEMORY[0x1E69DC508], v15);
  sub_18BC21638();
  sub_18BC1EE38();
  sub_18BC1EE28();
  (*(v9 + 8))(v11, v8);
  sub_18BC1E7E8();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_18B9EA798();
  sub_18BC1E7C8();
  (*(v29 + 8))(v5, v30);
  v19 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (v19)
  {
    v20 = v19;

    v32 = v20;
    v21 = v28;
    sub_18BC1E7D8();

    (*(v27 + 8))(v2, v21);
    sub_18BC1E768();
    v22 = sub_18BC1E758();
    (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
    sub_18BC216C8();
    v23 = objc_opt_self();
    v24 = sub_18BC20B98();
    v25 = [v23 sf:v24 colorNamed:?];

    sub_18BC21708();
  }

  else
  {
    __break(1u);
  }
}

void sub_18BBE6D54(uint64_t a1)
{
  v2 = [*(a1 + OBJC_IVAR___SFScribbleSelectionOverlay_blurView) backdropLayer];
  v3 = OBJC_IVAR___SFScribbleSelectionOverlay_contentVisibility;
  v4 = sub_18BC1EEA8();
  v5 = sub_18BC20B98();
  [v2 setValue:v4 forKeyPath:v5];

  [*(a1 + OBJC_IVAR___SFScribbleSelectionOverlay_borderView) setAlpha_];
  sub_18BBE57A0();
}

id SFScribbleSelectionOverlay.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

Swift::Void __swiftcall SFScribbleSelectionOverlay.layoutSubviews()()
{
  v6.super_class = SFScribbleSelectionOverlay;
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  [v0 bounds];
  Width = CGRectGetWidth(v7);
  [v0 bounds];
  Height = CGRectGetHeight(v8);
  if (Height >= Width)
  {
    Height = Width;
  }

  v3 = fmin(Height * 0.5, 16.0);
  [*&v0[OBJC_IVAR___SFScribbleSelectionOverlay_blurView] _setContinuousCornerRadius_];
  [*&v0[OBJC_IVAR___SFScribbleSelectionOverlay_borderView] _setContinuousCornerRadius_];
  [v0 bounds];
  v10 = CGRectInset(v9, 4.0, 4.0);
  v4 = sub_18BBE6FB0(v10.origin.x, v10.origin.y, v10.size.width, v10.size.height);
  v5 = v0[OBJC_IVAR___SFScribbleSelectionOverlay_hideButtonTypeThatFits];
  v0[OBJC_IVAR___SFScribbleSelectionOverlay_hideButtonTypeThatFits] = v4;
  sub_18BBE78B0(v5);
}

uint64_t sub_18BBE6FB0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = sub_18BC20B98();
  v11 = [v9 BOOLForKey_];

  if (v11)
  {
    return 2;
  }

  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  rect = a4;
  v37.size.height = a4;
  Width = CGRectGetWidth(v37);
  v13 = [v4 regularHideButton];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v38.origin.x = v15;
  v38.origin.y = v17;
  v38.size.width = v19;
  v38.size.height = v21;
  if (CGRectGetWidth(v38) < Width)
  {
    v39.origin.x = a1;
    v39.origin.y = a2;
    v39.size.width = a3;
    v39.size.height = rect;
    Height = CGRectGetHeight(v39);
    v23 = [v4 regularHideButton];
    [v23 bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v40.origin.x = v25;
    v40.origin.y = v27;
    v40.size.width = v29;
    v40.size.height = v31;
    if (CGRectGetHeight(v40) < Height)
    {
      return 0;
    }
  }

  v41.origin.x = a1;
  v41.origin.y = a2;
  v41.size.width = a3;
  v41.size.height = rect;
  v33 = CGRectGetWidth(v41);
  v34 = *&v4[OBJC_IVAR___SFScribbleSelectionOverlay_smallHideButton];
  [v34 bounds];
  if (CGRectGetWidth(v42) >= v33)
  {
    return 2;
  }

  v43.origin.x = a1;
  v43.origin.y = a2;
  v43.size.width = a3;
  v43.size.height = rect;
  v35 = CGRectGetHeight(v43);
  [v34 bounds];
  if (CGRectGetHeight(v44) >= v35)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_18BBE721C()
{
  type metadata accessor for AnimationSettings();
  inited = swift_initStaticObject();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  v4[2] = inited;
  v4[3] = sub_18BBE7C8C;
  v4[4] = v2;
  v12 = sub_18B7E767C;
  v13 = v4;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_18B7B0DB0;
  v11 = &block_descriptor_22_3;
  v5 = _Block_copy(&v8);
  v6 = v0;
  sub_18BC1E1A8();

  v12 = CGRectMake;
  v13 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_18B8043A0;
  v11 = &block_descriptor_25;
  v7 = _Block_copy(&v8);

  [v3 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v7);
  _Block_release(v5);
}

void sub_18BBE73E0(uint64_t a1)
{
  v1 = OBJC_IVAR___SFScribbleSelectionOverlay_contentVisibility;
  v2 = *(a1 + OBJC_IVAR___SFScribbleSelectionOverlay_contentVisibility);
  *(a1 + OBJC_IVAR___SFScribbleSelectionOverlay_contentVisibility) = 0x3FF0000000000000;
  if (v2 != 1.0)
  {
    v4 = [*(a1 + OBJC_IVAR___SFScribbleSelectionOverlay_blurView) backdropLayer];
    v5 = sub_18BC1EEA8();
    v6 = sub_18BC20B98();
    [v4 setValue:v5 forKeyPath:v6];

    [*(a1 + OBJC_IVAR___SFScribbleSelectionOverlay_borderView) setAlpha_];
    sub_18BBE57A0();
  }
}

void sub_18BBE750C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnimationSettings();
  inited = swift_initStaticObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v12 = objc_opt_self();
  v8 = swift_allocObject();
  v8[2] = inited;
  v8[3] = sub_18BBE7C54;
  v8[4] = v6;
  v17 = sub_18B7D80AC;
  v18 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_18B7B0DB0;
  v16 = &block_descriptor_66;
  v9 = _Block_copy(&aBlock);
  v10 = v2;
  sub_18B824D48(a1, a2);
  sub_18BC1E1A8();

  v17 = sub_18BBE7C5C;
  v18 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_18B8043A0;
  v16 = &block_descriptor_12_2;
  v11 = _Block_copy(&aBlock);
  sub_18BC1E1A8();

  [v12 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v11);
  _Block_release(v9);
}

void sub_18BBE771C(uint64_t a1)
{
  v1 = OBJC_IVAR___SFScribbleSelectionOverlay_contentVisibility;
  v2 = *(a1 + OBJC_IVAR___SFScribbleSelectionOverlay_contentVisibility);
  *(a1 + OBJC_IVAR___SFScribbleSelectionOverlay_contentVisibility) = 0;
  if (v2 != 0.0)
  {
    v4 = [*(a1 + OBJC_IVAR___SFScribbleSelectionOverlay_blurView) backdropLayer];
    v5 = sub_18BC1EEA8();
    v6 = sub_18BC20B98();
    [v4 setValue:v5 forKeyPath:v6];

    [*(a1 + OBJC_IVAR___SFScribbleSelectionOverlay_borderView) setAlpha_];
    sub_18BBE57A0();
  }
}

void sub_18BBE78B0(unsigned __int8 a1)
{
  if (v1[OBJC_IVAR___SFScribbleSelectionOverlay_hideButtonTypeThatFits] != a1)
  {
    type metadata accessor for AnimationSettings();
    inited = swift_initStaticObject();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    v5[2] = inited;
    v5[3] = sub_18BBE7CEC;
    v5[4] = v3;
    v13 = sub_18B7E767C;
    v14 = v5;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = sub_18B7B0DB0;
    v12 = &block_descriptor_73_1;
    v6 = _Block_copy(&v9);
    v7 = v1;
    sub_18BC1E1A8();

    v13 = CGRectMake;
    v14 = 0;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = sub_18B8043A0;
    v12 = &block_descriptor_76_2;
    v8 = _Block_copy(&v9);

    [v4 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v8);
    _Block_release(v6);
  }
}

void _sSo26SFScribbleSelectionOverlayC12MobileSafariE5coderABSgSo7NSCoderC_tcfc_0()
{
  v1 = (v0 + OBJC_IVAR___SFScribbleSelectionOverlay_hideButtonHandler);
  *v1 = CGRectMake;
  v1[1] = 0;
  *(v0 + OBJC_IVAR___SFScribbleSelectionOverlay_showsHideButton) = 1;
  v2 = OBJC_IVAR___SFScribbleSelectionOverlay_blurView;
  *(v0 + v2) = [objc_allocWithZone(SFBackdropView) init];
  v3 = OBJC_IVAR___SFScribbleSelectionOverlay_borderView;
  *(v0 + v3) = [objc_allocWithZone(SFBorderView) init];
  v4 = OBJC_IVAR___SFScribbleSelectionOverlay_smallHideButton;
  type metadata accessor for BlurrableButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v4) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v6 = OBJC_IVAR___SFScribbleSelectionOverlay_regularHideButton;
  *(v0 + v6) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + OBJC_IVAR___SFScribbleSelectionOverlay_contentVisibility) = 0;
  *(v0 + OBJC_IVAR___SFScribbleSelectionOverlay_hideButtonTypeThatFits) = 2;
  sub_18BC21CF8();
  __break(1u);
}

uint64_t sub_18BBE7C5C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_18BBE7CF0@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = _s4PageVMa_0(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = 0;
  v11 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v12 = *(v6 + 72);
  while (1)
  {
    sub_18B82D10C(v11, v8, _s4PageVMa_0);
    updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
    sub_18B82D234(v8, _s4PageVMa_0);
    if (updated)
    {
      break;
    }

    ++v10;
    v11 += v12;
    if (v9 == v10)
    {
      goto LABEL_8;
    }
  }

  if (v10)
  {
    sub_18B82D10C(v11 - v12, a3, _s4PageVMa_0);
    v14 = 0;
  }

  else
  {
LABEL_8:
    v14 = 1;
  }

  return (*(v6 + 56))(a3, v14, 1, v5);
}

uint64_t sub_18BBE7E84@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = _s4PageVMa_0(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = 0;
  v11 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v12 = *(v6 + 72);
  while (1)
  {
    sub_18B82D10C(v11, v8, _s4PageVMa_0);
    updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
    result = sub_18B82D234(v8, _s4PageVMa_0);
    if (updated)
    {
      break;
    }

    ++v10;
    v11 += v12;
    if (v9 == v10)
    {
      goto LABEL_9;
    }
  }

  if (v10 >= (v9 - 1))
  {
LABEL_9:
    v15 = 1;
    return (*(v6 + 56))(a3, v15, 1, v5);
  }

  if (v10 + 1 < v9)
  {
    sub_18B82D10C(v11 + v12, a3, _s4PageVMa_0);
    v15 = 0;
    return (*(v6 + 56))(a3, v15, 1, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_18BBE8030@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = _s4PageVMa_0(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {
    goto LABEL_5;
  }

  sub_18B82D10C(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v8 - 1), v7, _s4PageVMa_0);
  if (v7[*(v4 + 24)] != 1)
  {
    sub_18B82D234(v7, _s4PageVMa_0);
LABEL_5:
    v9 = 1;
    return (*(v5 + 56))(a2, v9, 1, v4);
  }

  sub_18BBE8450(v7, a2);
  v9 = 0;
  return (*(v5 + 56))(a2, v9, 1, v4);
}

uint64_t sub_18BBE8180(uint64_t a1, uint64_t a2)
{
  v4 = _s4ItemVMa_2(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s7SectionVMa_1(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v25 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s4PageVMa_0(0);
  v12 = *(a1 + *(result + 20) + 96);
  v24 = *(v12 + 16);
  if (!v24)
  {
    return 0;
  }

  v22 = v8;
  v23 = v2;
  v13 = 0;
  v20 = v12;
  v21 = v9;
  while (v13 < *(v12 + 16))
  {
    v14 = v25;
    sub_18B82D10C(v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v13, v25, _s7SectionVMa_1);
    v15 = 0;
    ++v13;
    v16 = *(v14 + *(v8 + 28));
    v17 = *(v16 + 16);
    while (v17 != v15)
    {
      sub_18B82D10C(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15++, v7, _s4ItemVMa_2);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B82D234(v7, _s4ItemVMa_2);
      if (updated)
      {
        sub_18B82D234(v25, _s7SectionVMa_1);
        return 1;
      }
    }

    result = sub_18B82D234(v25, _s7SectionVMa_1);
    v9 = v21;
    v8 = v22;
    v12 = v20;
    if (v13 == v24)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18BBE842C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_18B7E965C(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BBE8450(uint64_t a1, uint64_t a2)
{
  v4 = _s4PageVMa_0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BBE85A0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = v3;
  v7 = *(v3 + 16);
  if (*(v7 + 16) && (result = a2(a1), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * result);
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v5 + 16);
      result = a3(v11, a1, isUniquelyReferenced_nonNull_native);
      *(v5 + 16) = v14;
    }
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v5 + 16);
    a3(1, a1, v13);
    *(v5 + 16) = v15;
    return (*v5)(a1, 1);
  }

  return result;
}

uint64_t sub_18BBE86B8()
{
  v1 = sub_18B7C2E68();
  [v1 setClipsToBounds_];

  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  [*(v0 + v3) setDelegate_];
  [v0 addSubview_];
  v4 = *(v0 + *((*v2 & *v0) + 0xA0));
  v5 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_18BC0DC3C;
  *(v6 + 24) = v5;
  swift_beginAccess();
  v7 = *(v4 + 16);
  sub_18BC1E1A8();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_18B7C358C(0, v7[2] + 1, 1, v7);
    *(v4 + 16) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_18B7C358C((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_18B7FCC48;
  v11[5] = v6;
  *(v4 + 16) = v7;
  swift_endAccess();
}

void sub_18BBE8890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_18BC1ED38();
  v46 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = type metadata accessor for SingleElementIndexPathSequence(0);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v38 - v20;
  if (!*(a3 + 16))
  {
    return;
  }

  v40 = v18;
  v41 = v19;
  v22 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x98);
  swift_beginAccess();
  v23 = *(v5 + v22);
  if (!*(v23 + 16))
  {
LABEL_10:
    sub_18BC21CF8();
    __break(1u);
    return;
  }

  sub_18BC1E3F8();
  v42 = a1;
  v43 = a2;
  v24 = sub_18B7C4104(a1, a2);
  if ((v25 & 1) == 0)
  {

    goto LABEL_10;
  }

  v45 = v5;
  v26 = *(*(v23 + 56) + 8 * v24);
  swift_retain_n();

  v27 = sub_18BC1E3F8();
  v39 = sub_18BC0C274(v27, v26);

  v48 = a4;
  v44 = a4;
  v28 = *(*(a4 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content) + 16);
  sub_18B7F4EE4(&qword_1EA9DB6E8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_18BC218F8();
  if (v28)
  {
    v29 = 0;
    do
    {
      v30 = v29 + 1;
      v47 = v29;
      sub_18BC218D8();
      v29 = v30;
    }

    while (v28 != v30);
  }

  v31 = *(v46 + 32);
  v31(v15, v12, v10);
  sub_18BC1ECA8();
  v32 = (v31)(&v21[*(v40 + 20)], v15, v10);
  MEMORY[0x1EEE9AC00](v32);
  *(&v38 - 4) = v39;
  *(&v38 - 3) = &v48;
  v34 = v42;
  v33 = v43;
  v36 = v42;
  v37 = v43;
  sub_18B80D554(v21, v41, type metadata accessor for SingleElementIndexPathSequence);
  v35 = sub_18BBF28FC(sub_18BC0C5EC, (&v38 - 6));

  sub_18BC09D98(v34, v33, v35, v44, 0, v45);
}

void sub_18BBE8C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_18BC1ED38();
  v46 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = type metadata accessor for SingleElementIndexPathSequence(0);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v38 - v20;
  if (!*(a3 + 16))
  {
    return;
  }

  v40 = v18;
  v41 = v19;
  v22 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x98);
  swift_beginAccess();
  v23 = *(v5 + v22);
  if (!*(v23 + 16))
  {
LABEL_10:
    sub_18BC21CF8();
    __break(1u);
    return;
  }

  sub_18BC1E3F8();
  v42 = a1;
  v43 = a2;
  v24 = sub_18B7C4104(a1, a2);
  if ((v25 & 1) == 0)
  {

    goto LABEL_10;
  }

  v45 = v5;
  v26 = *(*(v23 + 56) + 8 * v24);
  swift_retain_n();

  v27 = sub_18BC1E3F8();
  v39 = sub_18BC0C6E8(v27, v26);

  v48 = a4;
  v44 = a4;
  v28 = *(*(a4 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content) + 16);
  sub_18B7F4EE4(&qword_1EA9DB6E8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_18BC218F8();
  if (v28)
  {
    v29 = 0;
    do
    {
      v30 = v29 + 1;
      v47 = v29;
      sub_18BC218D8();
      v29 = v30;
    }

    while (v28 != v30);
  }

  v31 = *(v46 + 32);
  v31(v15, v12, v10);
  sub_18BC1ECA8();
  v32 = (v31)(&v21[*(v40 + 20)], v15, v10);
  MEMORY[0x1EEE9AC00](v32);
  *(&v38 - 4) = v39;
  *(&v38 - 3) = &v48;
  v34 = v42;
  v33 = v43;
  v36 = v42;
  v37 = v43;
  sub_18B80D554(v21, v41, type metadata accessor for SingleElementIndexPathSequence);
  v35 = sub_18BBF28FC(sub_18BC0E028, (&v38 - 6));

  sub_18BC0AD50(v34, v33, v35, v44, 0, v45);
}

void sub_18BBE9088(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v10 = sub_18BC1ED38();
  v46 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = type metadata accessor for SingleElementIndexPathSequence(0);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v38 - v20;
  if (!*(a3 + 16))
  {
    return;
  }

  v40 = v18;
  v41 = v19;
  v22 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x98);
  swift_beginAccess();
  v23 = *(v5 + v22);
  if (!*(v23 + 16))
  {
LABEL_10:
    sub_18BC21CF8();
    __break(1u);
    return;
  }

  sub_18BC1E3F8();
  v42 = a1;
  v43 = a2;
  v24 = sub_18B7C4104(a1, a2);
  if ((v25 & 1) == 0)
  {

    goto LABEL_10;
  }

  v45 = v5;
  v26 = *(*(v23 + 56) + 8 * v24);
  swift_retain_n();

  v27 = sub_18BC1E3F8();
  v39 = sub_18BC0CA60(v27, v26);

  v48 = a4;
  v44 = a4;
  v28 = *(*&a4[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8] + 16);
  sub_18B7F4EE4(&qword_1EA9DB6E8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_18BC218F8();
  if (v28)
  {
    v29 = 0;
    do
    {
      v30 = v29 + 1;
      v47 = v29;
      sub_18BC218D8();
      v29 = v30;
    }

    while (v28 != v30);
  }

  v31 = *(v46 + 32);
  v31(v15, v12, v10);
  sub_18BC1ECA8();
  v32 = (v31)(&v21[*(v40 + 20)], v15, v10);
  MEMORY[0x1EEE9AC00](v32);
  *(&v38 - 4) = v39;
  *(&v38 - 3) = &v48;
  v34 = v42;
  v33 = v43;
  v36 = v42;
  v37 = v43;
  sub_18B80D554(v21, v41, type metadata accessor for SingleElementIndexPathSequence);
  v35 = sub_18BBF28FC(sub_18BC0E060, (&v38 - 6));

  sub_18BA47890(v34, v33, v35, v44, v45);
}

void sub_18BBE9484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_18BC1ED38();
  v46 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = type metadata accessor for SingleElementIndexPathSequence(0);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v38 - v20;
  if (!*(a3 + 16))
  {
    return;
  }

  v40 = v18;
  v41 = v19;
  v22 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x98);
  swift_beginAccess();
  v23 = *(v5 + v22);
  if (!*(v23 + 16))
  {
LABEL_10:
    sub_18BC21CF8();
    __break(1u);
    return;
  }

  sub_18BC1E3F8();
  v42 = a1;
  v43 = a2;
  v24 = sub_18B7C4104(a1, a2);
  if ((v25 & 1) == 0)
  {

    goto LABEL_10;
  }

  v45 = v5;
  v26 = *(*(v23 + 56) + 8 * v24);
  swift_retain_n();

  v27 = sub_18BC1E3F8();
  v39 = sub_18BC0CDD8(v27, v26);

  v48 = a4;
  v44 = a4;
  v28 = *(*(a4 + 192) + 16);
  sub_18B7F4EE4(&qword_1EA9DB6E8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_18BC218F8();
  if (v28)
  {
    v29 = 0;
    do
    {
      v30 = v29 + 1;
      v47 = v29;
      sub_18BC218D8();
      v29 = v30;
    }

    while (v28 != v30);
  }

  v31 = *(v46 + 32);
  v31(v15, v12, v10);
  sub_18BC1ECA8();
  v32 = (v31)(&v21[*(v40 + 20)], v15, v10);
  MEMORY[0x1EEE9AC00](v32);
  *(&v38 - 4) = v39;
  *(&v38 - 3) = &v48;
  v34 = v42;
  v33 = v43;
  v36 = v42;
  v37 = v43;
  sub_18B80D554(v21, v41, type metadata accessor for SingleElementIndexPathSequence);
  v35 = sub_18BBF28FC(sub_18BC0DE90, (&v38 - 6));

  sub_18BC0B910(v34, v33, v35, v44, 0, v45);
}

void sub_18BBE9874(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_18B7EBEFC();
  v7 = *v2;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & v7) + 0x68);
  swift_beginAccess();
  *(v3 + v9) = a1;
  sub_18BC1E1A8();

  sub_18B7CA054(a2, &v50, &unk_1EA9D5060, &unk_18BC41870);
  if (!v51)
  {
    sub_18B988BAC(&v50, &unk_1EA9D5060, &unk_18BC41870);
    goto LABEL_14;
  }

  sub_18B7C3FA4(&v50, v52);
  v10 = *(a1 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_itemTypes);
  v11 = *(v10 + 16);
  if (!v11)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
LABEL_14:
    [v3 setNeedsLayout];
    v34 = swift_allocObject();
    *(v34 + 16) = v3;
    sub_18B7CA054(a2, &v50, &unk_1EA9D5060, &unk_18BC41870);
    if (v51)
    {
      sub_18B7C3FA4(&v50, v52);
      v35 = *__swift_project_boxed_opaque_existential_1Tm(v52, v53);
      v36 = swift_allocObject();
      *(v36 + 16) = sub_18B848FAC;
      *(v36 + 24) = v34;
      swift_beginAccess();
      v37 = *(v35 + 24);
      v38 = v3;
      sub_18BC1E1A8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v35 + 24) = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = sub_18B9B5814(0, v37[2] + 1, 1, v37);
        *(v35 + 24) = v37;
      }

      v41 = v37[2];
      v40 = v37[3];
      if (v41 >= v40 >> 1)
      {
        v37 = sub_18B9B5814((v40 > 1), v41 + 1, 1, v37);
      }

      v37[2] = v41 + 1;
      v42 = &v37[2 * v41];
      v42[4] = sub_18BA4EE54;
      v42[5] = v36;
      *(v35 + 24) = v37;
      swift_endAccess();

      __swift_destroy_boxed_opaque_existential_1Tm(v52);
    }

    else
    {
      v43 = v3;
      sub_18B988BAC(&v50, &unk_1EA9D5060, &unk_18BC41870);
      [v43 layoutIfNeeded];
    }

    return;
  }

  v44 = a2;
  v12 = *((*v8 & *v3) + 0x98);
  sub_18BC1E3F8();
  v45 = v12;
  swift_beginAccess();
  v13 = (v10 + 40);
  v46 = v3;
  v47 = v6;
  while (1)
  {
    v14 = *(v13 - 1);
    v15 = *v13;
    sub_18BC1E3F8();
    v16 = sub_18B9F2E8C();
    v17 = sub_18B9F2E8C();
    v18 = sub_18BC1E3F8();
    sub_18BBF1AEC(v18, v16);
    v20 = *(v3 + v45);
    if (!*(v20 + 16))
    {
      break;
    }

    v21 = v19;
    v49 = v11;
    sub_18BC1E3F8();
    v22 = sub_18B7C4104(v14, v15);
    if ((v23 & 1) == 0)
    {

      break;
    }

    v24 = *(*(v20 + 56) + 8 * v22);
    sub_18BC1E1A8();

    swift_beginAccess();
    sub_18BBEFB58(v21);
    swift_endAccess();
    v25 = __swift_project_boxed_opaque_existential_1Tm(v52, v53);
    v26 = swift_allocObject();
    v26[2] = v24;
    v26[3] = v21;
    v26[4] = v3;
    v26[5] = v14;
    v48 = v14;
    v26[6] = v15;
    v27 = *v25;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_18BC0DB40;
    *(v28 + 24) = v26;
    swift_beginAccess();
    v29 = *(v27 + 32);
    v3;
    sub_18BC1E3F8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *(v27 + 32) = v29;
    if ((v30 & 1) == 0)
    {
      v29 = sub_18B9B5814(0, v29[2] + 1, 1, v29);
      *(v27 + 32) = v29;
    }

    v32 = v29[2];
    v31 = v29[3];
    if (v32 >= v31 >> 1)
    {
      v29 = sub_18B9B5814((v31 > 1), v32 + 1, 1, v29);
    }

    v29[2] = v32 + 1;
    v33 = &v29[2 * v32];
    v33[4] = sub_18BA4EE54;
    v33[5] = v28;
    *(v27 + 32) = v29;
    swift_endAccess();

    sub_18BBE8890(v48, v15, v17, v47);

    v13 += 2;
    v11 = v49 - 1;
    v3 = v46;
    if (v49 == 1)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      a2 = v44;
      goto LABEL_14;
    }
  }

  sub_18BC21CF8();
  __break(1u);
}

void sub_18BBE9E60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t (*a5)(uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v6;
  v14 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x98);
  swift_beginAccess();
  if (*(*(v10 + v14) + 16))
  {
    sub_18BC1E3F8();
    sub_18B7C4104(a2, a3);
    if (v15)
    {
      sub_18BC1E1A8();

      swift_beginAccess();
      a4(a1);
      swift_endAccess();

      v17 = a5(v16);
      a6(a2, a3, a1, v17);

      return;
    }
  }

  sub_18BC21CF8();
  __break(1u);
}

id sub_18BBEA004(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = v4;
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x98);
  swift_beginAccess();
  if (*(*&v6[v10] + 16))
  {
    sub_18BC1E3F8();
    sub_18B7C4104(a2, a3);
    if (v11)
    {
      sub_18BC1E1A8();

      swift_beginAccess();
      a4(a1);
      swift_endAccess();

      return [v6 setNeedsLayout];
    }
  }

  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

uint64_t sub_18BBEA158(char *a1, uint64_t a2, void *a3)
{
  v101 = a3;
  v92 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6B0, &unk_18BC53D30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v97 = &v86 - v6;
  v7 = _s4ItemVMa_1(0);
  v96 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v94 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v95 = &v86 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v86 - v12;
  v99 = sub_18BC1EDD8();
  v93 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v98 = &v86 - v16;
  v17 = sub_18BC1ED38();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v89 = &v86 - v22;
  v87 = type metadata accessor for SingleElementIndexPathSequence(0);
  MEMORY[0x1EEE9AC00](v87);
  v91 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v86 - v25;
  v110 = a1;
  v88 = a1;
  sub_18BC1E3F8();
  v100 = v3;
  v111[0] = sub_18BA474C4();
  v90 = v111[0];
  v27 = *(*(v111[0] + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content) + 16);
  sub_18B7F4EE4(&qword_1EA9DB6E8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_18BC218F8();
  if (v27)
  {
    v28 = 0;
    do
    {
      v29 = v28 + 1;
      v104[0] = v28;
      sub_18BC218D8();
      v28 = v29;
    }

    while (v27 != v29);
  }

  v30 = *(v18 + 32);
  v31 = v89;
  v30(v89, v20, v17);
  v32 = v26;
  sub_18BC1ECA8();
  v33 = (v30)(&v26[*(v87 + 20)], v31, v17);
  MEMORY[0x1EEE9AC00](v33);
  *(&v86 - 4) = v88;
  *(&v86 - 3) = v111;
  v34 = v92;
  v35 = v101;
  v84 = v92;
  v85 = v101;
  sub_18B80D554(v32, v91, type metadata accessor for SingleElementIndexPathSequence);
  v36 = sub_18BBF28FC(sub_18BC0E028, (&v86 - 6));
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AF8, &qword_18BC46528);
  v109 = sub_18BA4830C();

  v107[0] = v36;
  v37 = v100;
  v38 = *((*MEMORY[0x1E69E7D40] & *v100) + 0x98);
  swift_beginAccess();
  v39 = *(v37 + v38);
  if (*(v39 + 16))
  {
    sub_18BC1E3F8();
    v40 = sub_18B7C4104(v34, v35);
    v41 = v96;
    if (v42)
    {
      v43 = *(*(v39 + 56) + 8 * v40);
      sub_18BC1E1A8();

      v44 = __swift_project_boxed_opaque_existential_1Tm(v107, v108);
      v45 = MEMORY[0x1EEE9AC00](v44);
      (*(v47 + 16))(&v86 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0), v45);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_0Tm(v104);
      sub_18BC20CC8();
      swift_beginAccess();
      v101 = v43;
      swift_beginAccess();
      v48 = (v93 + 48);
      v49 = (v93 + 32);
      v50 = (v93 + 8);
      v51 = v99;
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v104, AssociatedTypeWitness);
        v52 = v98;
        sub_18BC21868();
        if ((*v48)(v52, 1, v51) == 1)
        {
          break;
        }

        (*v49)(v102, v52, v51);
        v53 = *(sub_18BA474C4() + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content);
        v54 = sub_18BC1EDE8();
        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_35;
        }

        if (v54 >= *(v53 + 16))
        {
          goto LABEL_36;
        }

        sub_18B7EC6E4(v53 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v54, v13, _s4ItemVMa_1);

        v55 = v97;
        sub_18B9CDDEC(v97);
        sub_18B988BAC(v55, &qword_1EA9DB6B0, &unk_18BC53D30);
        if (*(v101[4] + 16))
        {
          sub_18BC1E3F8();
          sub_18BB8B5B0(v13);
          v57 = v56;

          if (v57)
          {
            if (!*(v101[7] + 16) || (sub_18BC1E1A8(), sub_18BC1E3F8(), sub_18BB8B5B0(v13), v59 = v58, , , (v59 & 1) == 0))
            {
              v60 = v101;
              v61 = v101[15];
              v62 = v101[16];
              __swift_project_boxed_opaque_existential_1Tm(v101 + 12, v61);
              v63 = v60[2];
              sub_18BC1E1A8();
              v63(v103, v13);
              v41 = v96;

              LOBYTE(v60) = sub_18B814A2C(v103, v61, v62);
              __swift_destroy_boxed_opaque_existential_1Tm(v103);
              if ((v60 & 1) == 0)
              {
                sub_18BA474C4();
                v64 = sub_18BC1EDE8();
                sub_18BAD4D08(v64, 0, v111);

                sub_18B7F4620(v111);
                if ((v112 & 1) == 0)
                {
                  sub_18BBF2FCC(v13);
                }
              }
            }
          }
        }

        sub_18B7ED118(v13, _s4ItemVMa_1);
        v51 = v99;
        (*v50)(v102, v99);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v104);
      v65 = 0;
      v67 = v110 + 56;
      v66 = *(v110 + 7);
      v102 = v110;
      v68 = 1 << v110[32];
      v69 = -1;
      if (v68 < 64)
      {
        v69 = ~(-1 << v68);
      }

      v70 = v69 & v66;
      v71 = (v68 + 63) >> 6;
      v72 = v94;
      while (v70)
      {
LABEL_27:
        v74 = v95;
        sub_18B7EC6E4(*(v102 + 6) + *(v41 + 72) * (__clz(__rbit64(v70)) | (v65 << 6)), v95, _s4ItemVMa_1);
        sub_18B80D554(v74, v72, _s4ItemVMa_1);
        if (*(v101[4] + 16))
        {
          sub_18BC1E3F8();
          sub_18BB8B5B0(v72);
          v76 = v75;

          if (v76)
          {
            if (!*(v101[7] + 16) || (sub_18BC1E1A8(), sub_18BC1E3F8(), sub_18BB8B5B0(v72), v78 = v77, , , (v78 & 1) == 0))
            {
              v79 = v101;
              v80 = v101[15];
              v81 = v101[16];
              __swift_project_boxed_opaque_existential_1Tm(v101 + 12, v80);
              v82 = v79[2];
              sub_18BC1E1A8();
              v82(v104, v94);
              v41 = v96;

              v72 = v94;
              LOBYTE(v79) = sub_18B814A2C(v104, v80, v81);
              __swift_destroy_boxed_opaque_existential_1Tm(v104);
              if ((v79 & 1) == 0)
              {
                sub_18BBF2FCC(v72);
              }
            }
          }
        }

        v70 &= v70 - 1;
        sub_18B7ED118(v72, _s4ItemVMa_1);
      }

      while (1)
      {
        v73 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          break;
        }

        if (v73 >= v71)
        {

          return __swift_destroy_boxed_opaque_existential_1Tm(v107);
        }

        v70 = *&v67[8 * v73];
        ++v65;
        if (v70)
        {
          v65 = v73;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }
  }

  LODWORD(v85) = 0;
  v84 = 438;
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

uint64_t sub_18BBEACD8(char *a1, uint64_t a2, void *a3)
{
  v101 = a3;
  v92 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE00, &unk_18BC41860);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v97 = &v86 - v6;
  v7 = _s4ItemVMa_4(0);
  v96 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v94 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v95 = &v86 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v86 - v12;
  v99 = sub_18BC1EDD8();
  v93 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v98 = &v86 - v16;
  v17 = sub_18BC1ED38();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v89 = &v86 - v22;
  v87 = type metadata accessor for SingleElementIndexPathSequence(0);
  MEMORY[0x1EEE9AC00](v87);
  v91 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v86 - v25;
  v110 = a1;
  v88 = a1;
  sub_18BC1E3F8();
  v100 = v3;
  *&v111[0] = sub_18B7EBEFC();
  v90 = *&v111[0];
  v27 = *(*(*&v111[0] + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content) + 16);
  sub_18B7F4EE4(&qword_1EA9DB6E8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_18BC218F8();
  if (v27)
  {
    v28 = 0;
    do
    {
      v29 = v28 + 1;
      v104[0] = v28;
      sub_18BC218D8();
      v28 = v29;
    }

    while (v27 != v29);
  }

  v30 = *(v18 + 32);
  v31 = v89;
  v30(v89, v20, v17);
  v32 = v26;
  sub_18BC1ECA8();
  v33 = (v30)(&v26[*(v87 + 20)], v31, v17);
  MEMORY[0x1EEE9AC00](v33);
  *(&v86 - 4) = v88;
  *(&v86 - 3) = v111;
  v34 = v92;
  v35 = v101;
  v84 = v92;
  v85 = v101;
  sub_18B80D554(v32, v91, type metadata accessor for SingleElementIndexPathSequence);
  v36 = sub_18BBF28FC(sub_18BC0E00C, (&v86 - 6));
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AF8, &qword_18BC46528);
  v109 = sub_18BA4830C();

  v107[0] = v36;
  v37 = v100;
  v38 = *((*MEMORY[0x1E69E7D40] & *v100) + 0x98);
  swift_beginAccess();
  v39 = *(v37 + v38);
  if (*(v39 + 16))
  {
    sub_18BC1E3F8();
    v40 = sub_18B7C4104(v34, v35);
    v41 = v96;
    if (v42)
    {
      v43 = *(*(v39 + 56) + 8 * v40);
      sub_18BC1E1A8();

      v44 = __swift_project_boxed_opaque_existential_1Tm(v107, v108);
      v45 = MEMORY[0x1EEE9AC00](v44);
      (*(v47 + 16))(&v86 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0), v45);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_0Tm(v104);
      sub_18BC20CC8();
      swift_beginAccess();
      v101 = v43;
      swift_beginAccess();
      v48 = (v93 + 48);
      v49 = (v93 + 32);
      v50 = (v93 + 8);
      v51 = v99;
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v104, AssociatedTypeWitness);
        v52 = v98;
        sub_18BC21868();
        if ((*v48)(v52, 1, v51) == 1)
        {
          break;
        }

        (*v49)(v102, v52, v51);
        v53 = *(sub_18B7EBEFC() + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content);
        v54 = sub_18BC1EDE8();
        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_35;
        }

        if (v54 >= *(v53 + 16))
        {
          goto LABEL_36;
        }

        sub_18B7EC6E4(v53 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v54, v13, _s4ItemVMa_4);

        v55 = v97;
        sub_18B9CE0A8(v97);
        sub_18B988BAC(v55, &qword_1EA9DBE00, &unk_18BC41860);
        if (*(v101[4] + 16))
        {
          sub_18BC1E3F8();
          sub_18BB8B258(v13);
          v57 = v56;

          if (v57)
          {
            if (!*(v101[7] + 16) || (sub_18BC1E1A8(), sub_18BC1E3F8(), sub_18BB8B258(v13), v59 = v58, , , (v59 & 1) == 0))
            {
              v60 = v101;
              v61 = v101[15];
              v62 = v101[16];
              __swift_project_boxed_opaque_existential_1Tm(v101 + 12, v61);
              v63 = v60[2];
              sub_18BC1E1A8();
              v63(v103, v13);
              v41 = v96;

              LOBYTE(v60) = sub_18B814A2C(v103, v61, v62);
              __swift_destroy_boxed_opaque_existential_1Tm(v103);
              if ((v60 & 1) == 0)
              {
                sub_18B7EBEFC();
                v64 = sub_18BC1EDE8();
                sub_18B9F0388(v64, 0, v111);

                sub_18B7F4620(v111);
                if ((v112 & 1) == 0)
                {
                  sub_18BBF2D58(v13);
                }
              }
            }
          }
        }

        sub_18B7ED118(v13, _s4ItemVMa_4);
        v51 = v99;
        (*v50)(v102, v99);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v104);
      v65 = 0;
      v67 = v110 + 56;
      v66 = *(v110 + 7);
      v102 = v110;
      v68 = 1 << v110[32];
      v69 = -1;
      if (v68 < 64)
      {
        v69 = ~(-1 << v68);
      }

      v70 = v69 & v66;
      v71 = (v68 + 63) >> 6;
      v72 = v94;
      while (v70)
      {
LABEL_27:
        v74 = v95;
        sub_18B7EC6E4(*(v102 + 6) + *(v41 + 72) * (__clz(__rbit64(v70)) | (v65 << 6)), v95, _s4ItemVMa_4);
        sub_18B80D554(v74, v72, _s4ItemVMa_4);
        if (*(v101[4] + 16))
        {
          sub_18BC1E3F8();
          sub_18BB8B258(v72);
          v76 = v75;

          if (v76)
          {
            if (!*(v101[7] + 16) || (sub_18BC1E1A8(), sub_18BC1E3F8(), sub_18BB8B258(v72), v78 = v77, , , (v78 & 1) == 0))
            {
              v79 = v101;
              v80 = v101[15];
              v81 = v101[16];
              __swift_project_boxed_opaque_existential_1Tm(v101 + 12, v80);
              v82 = v79[2];
              sub_18BC1E1A8();
              v82(v104, v94);
              v41 = v96;

              v72 = v94;
              LOBYTE(v79) = sub_18B814A2C(v104, v80, v81);
              __swift_destroy_boxed_opaque_existential_1Tm(v104);
              if ((v79 & 1) == 0)
              {
                sub_18BBF2D58(v72);
              }
            }
          }
        }

        v70 &= v70 - 1;
        sub_18B7ED118(v72, _s4ItemVMa_4);
      }

      while (1)
      {
        v73 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          break;
        }

        if (v73 >= v71)
        {

          return __swift_destroy_boxed_opaque_existential_1Tm(v107);
        }

        v70 = *&v67[8 * v73];
        ++v65;
        if (v70)
        {
          v65 = v73;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }
  }

  LODWORD(v85) = 0;
  v84 = 438;
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

uint64_t sub_18BBEB858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v130 = a3;
  v128 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5380, &unk_18BC46510);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v113 = &v109 - v6;
  v131 = _s4ItemVMa_0(0);
  v121 = *(v131 - 1);
  MEMORY[0x1EEE9AC00](v131);
  v109 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v110 = &v109 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v129 = &v109 - v14;
  v118 = sub_18BC1EDD8();
  v132 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v116 = &v109 - v17;
  v18 = sub_18BC1ED38();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v124 = &v109 - v23;
  v123 = type metadata accessor for SingleElementIndexPathSequence(0);
  MEMORY[0x1EEE9AC00](v123);
  v126 = (&v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v109 - v26;
  v125 = a1;
  sub_18BC1E3F8();
  v120 = v3;
  *&v140[0] = sub_18B7D292C();
  v127 = *&v140[0];
  v28 = *(*(*&v140[0] + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8) + 16);
  sub_18B7F4EE4(&qword_1EA9DB6E8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_18BC218F8();
  if (v28)
  {
    v29 = 0;
    do
    {
      v30 = v29 + 1;
      v137[0] = v29;
      sub_18BC218D8();
      v29 = v30;
    }

    while (v28 != v30);
  }

  v31 = *(v19 + 32);
  v32 = v124;
  v31(v124, v21, v18);
  sub_18BC1ECA8();
  v33 = (v31)(&v27[*(v123 + 20)], v32, v18);
  MEMORY[0x1EEE9AC00](v33);
  v35 = v125;
  v34 = v126;
  *(&v109 - 4) = v125;
  *(&v109 - 3) = v140;
  v36 = v128;
  v37 = v130;
  v107 = v128;
  v108 = v130;
  sub_18B80D554(v27, v34, type metadata accessor for SingleElementIndexPathSequence);
  v38 = sub_18BBF28FC(sub_18BC0E060, (&v109 - 6));
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AF8, &qword_18BC46528);
  v139 = sub_18BA4830C();

  v137[0] = v38;
  v39 = v120;
  v40 = *((*MEMORY[0x1E69E7D40] & *v120) + 0x98);
  swift_beginAccess();
  v41 = *(v39 + v40);
  if (*(v41 + 16))
  {
    sub_18BC1E3F8();
    v42 = sub_18B7C4104(v36, v37);
    if ((v43 & 1) == 0)
    {
      goto LABEL_64;
    }

    v44 = *(*(v41 + 56) + 8 * v42);
    sub_18BC1E1A8();

    v45 = __swift_project_boxed_opaque_existential_1Tm(v137, v138);
    v46 = MEMORY[0x1EEE9AC00](v45);
    (*(v48 + 16))(&v109 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0), v46);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_0Tm(v134);
    sub_18BC20CC8();
    swift_beginAccess();
    v126 = v44;
    swift_beginAccess();
    v114 = (v132 + 32);
    v115 = (v132 + 48);
    v111 = (v132 + 8);
    v112 = (v121 + 56);
    v50 = v117;
    v49 = v118;
LABEL_8:
    __swift_mutable_project_boxed_opaque_existential_1(v134, AssociatedTypeWitness);
    v51 = v116;
    sub_18BC21868();
    if ((*v115)(v51, 1, v49) != 1)
    {
      (*v114)(v50, v51, v49);
      v52 = sub_18B7D292C();
      v53 = *&v52[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8];
      v54 = sub_18BC1EDE8();
      if ((v54 & 0x8000000000000000) != 0)
      {
        goto LABEL_62;
      }

      if (v54 >= *(v53 + 16))
      {
        goto LABEL_63;
      }

      v55 = v53 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
      v132 = *(v121 + 72);
      v56 = v129;
      sub_18B7EC6E4(v55 + v132 * v54, v129, _s4ItemVMa_0);

      sub_18BC22158();
      v57 = *v56;
      sub_18BC22178();
      LODWORD(v130) = v56[1];
      sub_18BC22178();
      v58 = v131;
      v59 = v131[6];
      sub_18BC1EC08();
      sub_18B7F4EE4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v128 = v59;
      sub_18BC20A78();
      v127 = *&v56[v58[7]];
      v60 = v127;
      sub_18BC22178();
      if (v60)
      {
        v61 = v60;
        sub_18BC215D8();
      }

      v62 = v131;
      v63 = v129;
      LODWORD(v124) = v129[v131[8]];
      sub_18BC22178();
      LODWORD(v123) = *(v63 + v62[9]);
      sub_18BC22178();
      v64 = (v63 + v62[10]);
      v65 = v64[1];
      v119 = *v64;
      v122 = v65;
      sub_18BC22178();
      if (v65)
      {
        sub_18BC20C28();
      }

      v66 = sub_18BC221A8();
      v67 = v35 + 56;
      v68 = -1 << *(v35 + 32);
      v69 = v66 & ~v68;
      if (((*(v35 + 56 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
      {
LABEL_37:
        v79 = v113;
        (*v112)(v113, 1, 1, v131);
        goto LABEL_38;
      }

      v70 = ~v68;
      v125 = v35;
      while (1)
      {
        v71 = v69 * v132;
        sub_18B7EC6E4(*(v35 + 48) + v69 * v132, v12, _s4ItemVMa_0);
        if (v57 != *v12 || v130 != v12[1] || (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) == 0)
        {
          goto LABEL_18;
        }

        v72 = *&v12[v131[7]];
        if (v72)
        {
          if (!v127)
          {
            goto LABEL_18;
          }

          sub_18B7B0AC0(0, &qword_1ED6514F0, 0x1E69DCAB8);
          v73 = v127;
          v74 = v72;
          v75 = sub_18BC215C8();

          v35 = v125;
          if ((v75 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else if (v127)
        {
          goto LABEL_18;
        }

        if (v124 == v12[v131[8]] && v123 == v12[v131[9]])
        {
          v76 = &v12[v131[10]];
          v77 = *(v76 + 1);
          if (v77)
          {
            if (v122 && (*v76 == v119 && v77 == v122 || (sub_18BC21FD8() & 1) != 0))
            {
LABEL_34:
              sub_18B7ED118(v12, _s4ItemVMa_0);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v133[0] = v35;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_18B9CCCCC();
                v35 = v133[0];
              }

              v79 = v113;
              sub_18B80D554(*(v35 + 48) + v71, v113, _s4ItemVMa_0);
              sub_18B9CFDBC(v69);
              v35 = v133[0];
              (*v112)(v79, 0, 1, v131);
LABEL_38:
              v50 = v117;
              v49 = v118;
              sub_18B988BAC(v79, &unk_1EA9D5380, &unk_18BC46510);
              if (*(v126[4] + 16))
              {
                sub_18BC1E3F8();
                sub_18B80CA2C(v129);
                v81 = v80;

                if (v81)
                {
                  if (!*(v126[7] + 16) || (sub_18BC1E1A8(), sub_18BC1E3F8(), sub_18B80CA2C(v129), v83 = v82, , , (v83 & 1) == 0))
                  {
                    v84 = v126;
                    v85 = v126[15];
                    v86 = v126[16];
                    __swift_project_boxed_opaque_existential_1Tm(v126 + 12, v85);
                    v87 = v84[2];
                    sub_18BC1E1A8();
                    v87(v133, v129);

                    LOBYTE(v84) = sub_18B814A2C(v133, v85, v86);
                    __swift_destroy_boxed_opaque_existential_1Tm(v133);
                    if ((v84 & 1) == 0)
                    {
                      v88 = sub_18B7D292C();
                      v89 = sub_18BC1EDE8();
                      sub_18B812F3C(v89, v140);

                      sub_18B7F4620(v140);
                      if ((v141 & 1) == 0)
                      {
                        sub_18B814EEC(v129);
                      }
                    }
                  }
                }
              }

              sub_18B7ED118(v129, _s4ItemVMa_0);
              (*v111)(v50, v49);
              goto LABEL_8;
            }
          }

          else if (!v122)
          {
            goto LABEL_34;
          }
        }

LABEL_18:
        sub_18B7ED118(v12, _s4ItemVMa_0);
        v69 = (v69 + 1) & v70;
        if (((*(v67 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
        {
          goto LABEL_37;
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v134);
    v90 = 0;
    v125 = v35;
    v91 = v35 + 56;
    v92 = 1 << *(v35 + 32);
    v93 = -1;
    if (v92 < 64)
    {
      v93 = ~(-1 << v92);
    }

    v94 = v93 & *(v35 + 56);
    v95 = (v92 + 63) >> 6;
    v96 = v109;
    while (v94)
    {
LABEL_54:
      v98 = v110;
      sub_18B7EC6E4(*(v125 + 48) + *(v121 + 72) * (__clz(__rbit64(v94)) | (v90 << 6)), v110, _s4ItemVMa_0);
      sub_18B80D554(v98, v96, _s4ItemVMa_0);
      if (*(v126[4] + 16))
      {
        sub_18BC1E3F8();
        sub_18B80CA2C(v96);
        v100 = v99;

        if (v100)
        {
          if (!*(v126[7] + 16) || (sub_18BC1E1A8(), sub_18BC1E3F8(), sub_18B80CA2C(v96), v102 = v101, , , (v102 & 1) == 0))
          {
            v103 = v126;
            v104 = v126[15];
            v132 = v126[16];
            __swift_project_boxed_opaque_existential_1Tm(v126 + 12, v104);
            v105 = v103[2];
            sub_18BC1E1A8();
            v105(v133, v96);

            LOBYTE(v103) = sub_18B814A2C(v133, v104, v132);
            __swift_destroy_boxed_opaque_existential_1Tm(v133);
            if ((v103 & 1) == 0)
            {
              sub_18B814EEC(v96);
            }
          }
        }
      }

      v94 &= v94 - 1;
      sub_18B7ED118(v96, _s4ItemVMa_0);
    }

    while (1)
    {
      v97 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        break;
      }

      if (v97 >= v95)
      {

        return __swift_destroy_boxed_opaque_existential_1Tm(v137);
      }

      v94 = *(v91 + 8 * v97);
      ++v90;
      if (v94)
      {
        v90 = v97;
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
  }

  LODWORD(v108) = 0;
  v107 = 438;
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

uint64_t sub_18BBEC7A4(char *a1, uint64_t a2, void *a3)
{
  v101 = a3;
  v92 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90, &qword_18BC45500);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v97 = &v86 - v6;
  v7 = _s4PageVMa_0(0);
  v96 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v94 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v95 = &v86 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v86 - v12;
  v99 = sub_18BC1EDD8();
  v93 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v98 = &v86 - v16;
  v17 = sub_18BC1ED38();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v89 = &v86 - v22;
  v87 = type metadata accessor for SingleElementIndexPathSequence(0);
  MEMORY[0x1EEE9AC00](v87);
  v91 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v86 - v25;
  v110 = a1;
  v88 = a1;
  sub_18BC1E3F8();
  v100 = v3;
  *&v111[0].x = sub_18B7CC308();
  x = v111[0].x;
  v27 = *(*(*&v111[0].x + 192) + 16);
  sub_18B7F4EE4(&qword_1EA9DB6E8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_18BC218F8();
  if (v27)
  {
    v28 = 0;
    do
    {
      v29 = v28 + 1;
      v104[0] = v28;
      sub_18BC218D8();
      v28 = v29;
    }

    while (v27 != v29);
  }

  v30 = *(v18 + 32);
  v31 = v89;
  v30(v89, v20, v17);
  v32 = v26;
  sub_18BC1ECA8();
  v33 = (v30)(&v26[*(v87 + 20)], v31, v17);
  MEMORY[0x1EEE9AC00](v33);
  *(&v86 - 4) = v88;
  *(&v86 - 3) = v111;
  v34 = v92;
  v35 = v101;
  v84 = v92;
  v85 = v101;
  sub_18B80D554(v32, v91, type metadata accessor for SingleElementIndexPathSequence);
  v36 = sub_18BBF28FC(sub_18BC0E044, (&v86 - 6));
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AF8, &qword_18BC46528);
  v109 = sub_18BA4830C();

  v107[0] = v36;
  v37 = v100;
  v38 = *((*MEMORY[0x1E69E7D40] & *v100) + 0x98);
  swift_beginAccess();
  v39 = *(v37 + v38);
  if (*(v39 + 16))
  {
    sub_18BC1E3F8();
    v40 = sub_18B7C4104(v34, v35);
    v41 = v96;
    if (v42)
    {
      v43 = *(*(v39 + 56) + 8 * v40);
      sub_18BC1E1A8();

      v44 = __swift_project_boxed_opaque_existential_1Tm(v107, v108);
      v45 = MEMORY[0x1EEE9AC00](v44);
      (*(v47 + 16))(&v86 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0), v45);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_0Tm(v104);
      sub_18BC20CC8();
      swift_beginAccess();
      v101 = v43;
      swift_beginAccess();
      v48 = (v93 + 48);
      v49 = (v93 + 32);
      v50 = (v93 + 8);
      v51 = v99;
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v104, AssociatedTypeWitness);
        v52 = v98;
        sub_18BC21868();
        if ((*v48)(v52, 1, v51) == 1)
        {
          break;
        }

        (*v49)(v102, v52, v51);
        v53 = *(sub_18B7CC308() + 192);
        v54 = sub_18BC1EDE8();
        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_35;
        }

        if (v54 >= *(v53 + 16))
        {
          goto LABEL_36;
        }

        sub_18B7EC6E4(v53 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v54, v13, _s4PageVMa_0);

        v55 = v97;
        sub_18B9CE784(v97);
        sub_18B988BAC(v55, &unk_1EA9DBE90, &qword_18BC45500);
        if (*(v101[4] + 16))
        {
          sub_18BC1E3F8();
          sub_18B8629FC(v13);
          v57 = v56;

          if (v57)
          {
            if (!*(v101[7] + 16) || (sub_18BC1E1A8(), sub_18BC1E3F8(), sub_18B8629FC(v13), v59 = v58, , , (v59 & 1) == 0))
            {
              v60 = v101;
              v61 = v101[15];
              v62 = v101[16];
              __swift_project_boxed_opaque_existential_1Tm(v101 + 12, v61);
              v63 = v60[2];
              sub_18BC1E1A8();
              v63(v103, v13);
              v41 = v96;

              LOBYTE(v60) = sub_18B814A2C(v103, v61, v62);
              __swift_destroy_boxed_opaque_existential_1Tm(v103);
              if ((v60 & 1) == 0)
              {
                sub_18B7CC308();
                v64 = sub_18BC1EDE8();
                sub_18B845484(v64, 0, v111);

                sub_18B7F4620(v111);
                if ((v112 & 1) == 0)
                {
                  sub_18B84910C(v13);
                }
              }
            }
          }
        }

        sub_18B7ED118(v13, _s4PageVMa_0);
        v51 = v99;
        (*v50)(v102, v99);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v104);
      v65 = 0;
      v67 = v110 + 56;
      v66 = *(v110 + 7);
      v102 = v110;
      v68 = 1 << v110[32];
      v69 = -1;
      if (v68 < 64)
      {
        v69 = ~(-1 << v68);
      }

      v70 = v69 & v66;
      v71 = (v68 + 63) >> 6;
      v72 = v94;
      while (v70)
      {
LABEL_27:
        v74 = v95;
        sub_18B7EC6E4(*(v102 + 6) + *(v41 + 72) * (__clz(__rbit64(v70)) | (v65 << 6)), v95, _s4PageVMa_0);
        sub_18B80D554(v74, v72, _s4PageVMa_0);
        if (*(v101[4] + 16))
        {
          sub_18BC1E3F8();
          sub_18B8629FC(v72);
          v76 = v75;

          if (v76)
          {
            if (!*(v101[7] + 16) || (sub_18BC1E1A8(), sub_18BC1E3F8(), sub_18B8629FC(v72), v78 = v77, , , (v78 & 1) == 0))
            {
              v79 = v101;
              v80 = v101[15];
              v81 = v101[16];
              __swift_project_boxed_opaque_existential_1Tm(v101 + 12, v80);
              v82 = v79[2];
              sub_18BC1E1A8();
              v82(v104, v94);
              v41 = v96;

              v72 = v94;
              LOBYTE(v79) = sub_18B814A2C(v104, v80, v81);
              __swift_destroy_boxed_opaque_existential_1Tm(v104);
              if ((v79 & 1) == 0)
              {
                sub_18B84910C(v72);
              }
            }
          }
        }

        v70 &= v70 - 1;
        sub_18B7ED118(v72, _s4PageVMa_0);
      }

      while (1)
      {
        v73 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          break;
        }

        if (v73 >= v71)
        {

          return __swift_destroy_boxed_opaque_existential_1Tm(v107);
        }

        v70 = *&v67[8 * v73];
        ++v65;
        if (v70)
        {
          v65 = v73;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }
  }

  LODWORD(v85) = 0;
  v84 = 438;
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

void sub_18BBED30C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v65 = a4;
  v9 = sub_18BC1EDD8();
  v74 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v73 = &v60 - v13;
  v14 = sub_18BC1ED38();
  v70 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v60 - v18;
  v67 = type metadata accessor for SingleElementIndexPathSequence(0);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v60 - v21;
  v22 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x98);
  swift_beginAccess();
  v23 = *(v5 + v22);
  if (!*(v23 + 16))
  {
    goto LABEL_16;
  }

  v64 = v11;
  sub_18BC1E3F8();
  v71 = a2;
  v72 = a3;
  v24 = sub_18B7C4104(a2, a3);
  if ((v25 & 1) == 0)
  {

LABEL_16:
    sub_18BC21CF8();
    __break(1u);
    return;
  }

  v26 = *(*(v23 + 56) + 8 * v24);
  sub_18BC1E1A8();

  swift_beginAccess();
  v27 = *(v26 + 32);
  if (!*(v27 + 16))
  {
LABEL_11:

    return;
  }

  sub_18BC1E3F8();
  v28 = sub_18B80CA2C(a1);
  if ((v29 & 1) == 0)
  {

    goto LABEL_11;
  }

  v63 = v9;
  v62 = *(*(v27 + 56) + 16 * v28);

  v30 = sub_18B7D292C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4BE0, &qword_18BC42898);
  v31 = *(_s4ItemVMa_0(0) - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_18BC3E410;
  v34 = a1;
  v35 = v30;
  sub_18B7EC6E4(v34, v33 + v32, _s4ItemVMa_0);
  v61 = sub_18BA29F38(v33);
  swift_setDeallocating();
  sub_18B7ED118(v33 + v32, _s4ItemVMa_0);
  swift_deallocClassInstance();
  *&v80[0] = v30;
  v36 = *(*&v30[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8] + 16);
  sub_18B7F4EE4(&qword_1EA9DB6E8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_18BC218F8();
  if (v36)
  {
    v37 = 0;
    do
    {
      v38 = v37 + 1;
      v78 = v37;
      sub_18BC218D8();
      v37 = v38;
    }

    while (v36 != v38);
  }

  v39 = *(v70 + 32);
  v40 = v68;
  v39(v68, v16, v14);
  v41 = v66;
  sub_18BC1ECA8();
  v42 = (v39)(v41 + *(v67 + 20), v40, v14);
  MEMORY[0x1EEE9AC00](v42);
  *(&v60 - 4) = v61;
  *(&v60 - 3) = v80;
  v58 = v71;
  v59 = v72;
  sub_18B80D554(v41, v69, type metadata accessor for SingleElementIndexPathSequence);
  v43 = sub_18BBF28FC(sub_18BC0DEB4, (&v60 - 6));

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AF8, &qword_18BC46528);
  v79[3] = v44;
  v79[4] = sub_18BA4830C();

  v79[0] = v43;
  v45 = __swift_project_boxed_opaque_existential_1Tm(v79, v44);
  v46 = MEMORY[0x1EEE9AC00](v45);
  v48 = (&v60 - v47);
  (*(v49 + 16))(&v60 - v47, v46);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v75);
  *boxed_opaque_existential_0Tm = *v48;
  boxed_opaque_existential_0Tm[1] = 0;
  __swift_mutable_project_boxed_opaque_existential_1(v75, AssociatedTypeWitness);
  v51 = v73;
  sub_18BC21868();
  v52 = v74;
  v53 = v63;
  if ((*(v74 + 48))(v51, 1, v63) == 1)
  {
  }

  else
  {
    v54 = v64;
    (*(v52 + 32))(v64, v51, v53);
    v55 = sub_18B7D292C();
    v56 = sub_18BC1EDE8();
    sub_18B812F3C(v56, v80);

    v57 = v62;
    sub_18B7F4620(v80);
    [v57 setHidden_];

    (*(v52 + 8))(v54, v53);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v75);
  __swift_destroy_boxed_opaque_existential_1Tm(v79);
}

void sub_18BBEDB3C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v62 = a4;
  v9 = sub_18BC1EDD8();
  v71 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v70 = &v57 - v13;
  v14 = sub_18BC1ED38();
  v67 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v57 - v18;
  v64 = type metadata accessor for SingleElementIndexPathSequence(0);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v63 = &v57 - v21;
  v22 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x98);
  swift_beginAccess();
  v23 = *(v5 + v22);
  if (!*(v23 + 16))
  {
    goto LABEL_16;
  }

  v61 = v11;
  sub_18BC1E3F8();
  v68 = a2;
  v69 = a3;
  v24 = sub_18B7C4104(a2, a3);
  if ((v25 & 1) == 0)
  {

LABEL_16:
    sub_18BC21CF8();
    __break(1u);
    return;
  }

  v26 = *(*(v23 + 56) + 8 * v24);
  sub_18BC1E1A8();

  swift_beginAccess();
  v27 = *(v26 + 32);
  if (!*(v27 + 16))
  {
LABEL_11:

    return;
  }

  sub_18BC1E3F8();
  v28 = sub_18B8629FC(a1);
  if ((v29 & 1) == 0)
  {

    goto LABEL_11;
  }

  v60 = v9;
  v59 = *(*(v27 + 56) + 16 * v28);

  v30 = sub_18B7CC308();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C30, &qword_18BC55960);
  v31 = *(_s4PageVMa_0(0) - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_18BC3E410;
  sub_18B7EC6E4(a1, v33 + v32, _s4PageVMa_0);
  v58 = sub_18BA2A3CC(v33);
  swift_setDeallocating();
  sub_18B7ED118(v33 + v32, _s4PageVMa_0);
  swift_deallocClassInstance();
  *&v77[0].x = v30;
  v34 = *(*(v30 + 192) + 16);
  sub_18B7F4EE4(&qword_1EA9DB6E8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_18BC218F8();
  if (v34)
  {
    v35 = 0;
    do
    {
      v36 = v35 + 1;
      v75 = v35;
      sub_18BC218D8();
      v35 = v36;
    }

    while (v34 != v36);
  }

  v37 = *(v67 + 32);
  v38 = v65;
  v37(v65, v16, v14);
  v39 = v63;
  sub_18BC1ECA8();
  v40 = (v37)(v39 + *(v64 + 20), v38, v14);
  MEMORY[0x1EEE9AC00](v40);
  *(&v57 - 4) = v58;
  *(&v57 - 3) = v77;
  v55 = v68;
  v56 = v69;
  sub_18B80D554(v39, v66, type metadata accessor for SingleElementIndexPathSequence);
  v41 = sub_18BBF28FC(sub_18BC0E044, (&v57 - 6));

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AF8, &qword_18BC46528);
  v76[3] = v42;
  v76[4] = sub_18BA4830C();

  v76[0] = v41;
  v43 = __swift_project_boxed_opaque_existential_1Tm(v76, v42);
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = (&v57 - v45);
  (*(v47 + 16))(&v57 - v45, v44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v72);
  *boxed_opaque_existential_0Tm = *v46;
  boxed_opaque_existential_0Tm[1] = 0;
  __swift_mutable_project_boxed_opaque_existential_1(v72, AssociatedTypeWitness);
  v49 = v70;
  sub_18BC21868();
  v50 = v71;
  v51 = v60;
  if ((*(v71 + 48))(v49, 1, v60) == 1)
  {
  }

  else
  {
    v52 = v61;
    (*(v50 + 32))(v61, v49, v51);
    sub_18B7CC308();
    v53 = sub_18BC1EDE8();
    sub_18B845484(v53, 0, v77);

    v54 = v59;
    sub_18B7F4620(v77);
    [v54 setHidden_];

    (*(v50 + 8))(v52, v51);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
}

void sub_18BBEE368(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v62 = a4;
  v9 = sub_18BC1EDD8();
  v71 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v70 = &v57 - v13;
  v14 = sub_18BC1ED38();
  v67 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v57 - v18;
  v64 = type metadata accessor for SingleElementIndexPathSequence(0);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v63 = &v57 - v21;
  v22 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x98);
  swift_beginAccess();
  v23 = *(v5 + v22);
  if (!*(v23 + 16))
  {
    goto LABEL_16;
  }

  v61 = v11;
  sub_18BC1E3F8();
  v68 = a2;
  v69 = a3;
  v24 = sub_18B7C4104(a2, a3);
  if ((v25 & 1) == 0)
  {

LABEL_16:
    sub_18BC21CF8();
    __break(1u);
    return;
  }

  v26 = *(*(v23 + 56) + 8 * v24);
  sub_18BC1E1A8();

  swift_beginAccess();
  v27 = *(v26 + 32);
  if (!*(v27 + 16))
  {
LABEL_11:

    return;
  }

  sub_18BC1E3F8();
  v28 = sub_18BB8B5B0(a1);
  if ((v29 & 1) == 0)
  {

    goto LABEL_11;
  }

  v60 = v9;
  v59 = *(*(v27 + 56) + 16 * v28);

  v30 = sub_18BA474C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE60, &qword_18BC55940);
  v31 = *(_s4ItemVMa_1(0) - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_18BC3E410;
  sub_18B7EC6E4(a1, v33 + v32, _s4ItemVMa_1);
  v58 = sub_18BA2A408(v33);
  swift_setDeallocating();
  sub_18B7ED118(v33 + v32, _s4ItemVMa_1);
  swift_deallocClassInstance();
  v77[0] = v30;
  v34 = *(*(v30 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content) + 16);
  sub_18B7F4EE4(&qword_1EA9DB6E8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_18BC218F8();
  if (v34)
  {
    v35 = 0;
    do
    {
      v36 = v35 + 1;
      v75 = v35;
      sub_18BC218D8();
      v35 = v36;
    }

    while (v34 != v36);
  }

  v37 = *(v67 + 32);
  v38 = v65;
  v37(v65, v16, v14);
  v39 = v63;
  sub_18BC1ECA8();
  v40 = (v37)(v39 + *(v64 + 20), v38, v14);
  MEMORY[0x1EEE9AC00](v40);
  *(&v57 - 4) = v58;
  *(&v57 - 3) = v77;
  v55 = v68;
  v56 = v69;
  sub_18B80D554(v39, v66, type metadata accessor for SingleElementIndexPathSequence);
  v41 = sub_18BBF28FC(sub_18BC0DC18, (&v57 - 6));

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AF8, &qword_18BC46528);
  v76[3] = v42;
  v76[4] = sub_18BA4830C();

  v76[0] = v41;
  v43 = __swift_project_boxed_opaque_existential_1Tm(v76, v42);
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = (&v57 - v45);
  (*(v47 + 16))(&v57 - v45, v44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v72);
  *boxed_opaque_existential_0Tm = *v46;
  boxed_opaque_existential_0Tm[1] = 0;
  __swift_mutable_project_boxed_opaque_existential_1(v72, AssociatedTypeWitness);
  v49 = v70;
  sub_18BC21868();
  v50 = v71;
  v51 = v60;
  if ((*(v71 + 48))(v49, 1, v60) == 1)
  {
  }

  else
  {
    v52 = v61;
    (*(v50 + 32))(v61, v49, v51);
    sub_18BA474C4();
    v53 = sub_18BC1EDE8();
    sub_18BAD4D08(v53, 0, v77);

    v54 = v59;
    sub_18B7F4620(v77);
    [v54 setHidden_];

    (*(v50 + 8))(v52, v51);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
}

void sub_18BBEEBA0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v62 = a4;
  v9 = sub_18BC1EDD8();
  v71 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v70 = &v57 - v13;
  v14 = sub_18BC1ED38();
  v67 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v57 - v18;
  v64 = type metadata accessor for SingleElementIndexPathSequence(0);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v63 = &v57 - v21;
  v22 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x98);
  swift_beginAccess();
  v23 = *(v5 + v22);
  if (!*(v23 + 16))
  {
    goto LABEL_16;
  }

  v61 = v11;
  sub_18BC1E3F8();
  v68 = a2;
  v69 = a3;
  v24 = sub_18B7C4104(a2, a3);
  if ((v25 & 1) == 0)
  {

LABEL_16:
    sub_18BC21CF8();
    __break(1u);
    return;
  }

  v26 = *(*(v23 + 56) + 8 * v24);
  sub_18BC1E1A8();

  swift_beginAccess();
  v27 = *(v26 + 32);
  if (!*(v27 + 16))
  {
LABEL_11:

    return;
  }

  sub_18BC1E3F8();
  v28 = sub_18BB8B258(a1);
  if ((v29 & 1) == 0)
  {

    goto LABEL_11;
  }

  v60 = v9;
  v59 = *(*(v27 + 56) + 16 * v28);

  v30 = sub_18B7EBEFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB7D0, &qword_18BC429A0);
  v31 = *(_s4ItemVMa_4(0) - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_18BC3E410;
  sub_18B7EC6E4(a1, v33 + v32, _s4ItemVMa_4);
  v58 = sub_18BA297C8(v33);
  swift_setDeallocating();
  sub_18B7ED118(v33 + v32, _s4ItemVMa_4);
  swift_deallocClassInstance();
  *&v77[0] = v30;
  v34 = *(*(v30 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content) + 16);
  sub_18B7F4EE4(&qword_1EA9DB6E8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_18BC218F8();
  if (v34)
  {
    v35 = 0;
    do
    {
      v36 = v35 + 1;
      v75 = v35;
      sub_18BC218D8();
      v35 = v36;
    }

    while (v34 != v36);
  }

  v37 = *(v67 + 32);
  v38 = v65;
  v37(v65, v16, v14);
  v39 = v63;
  sub_18BC1ECA8();
  v40 = (v37)(v39 + *(v64 + 20), v38, v14);
  MEMORY[0x1EEE9AC00](v40);
  *(&v57 - 4) = v58;
  *(&v57 - 3) = v77;
  v55 = v68;
  v56 = v69;
  sub_18B80D554(v39, v66, type metadata accessor for SingleElementIndexPathSequence);
  v41 = sub_18BBF28FC(sub_18BC0E00C, (&v57 - 6));

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AF8, &qword_18BC46528);
  v76[3] = v42;
  v76[4] = sub_18BA4830C();

  v76[0] = v41;
  v43 = __swift_project_boxed_opaque_existential_1Tm(v76, v42);
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = (&v57 - v45);
  (*(v47 + 16))(&v57 - v45, v44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v72);
  *boxed_opaque_existential_0Tm = *v46;
  boxed_opaque_existential_0Tm[1] = 0;
  __swift_mutable_project_boxed_opaque_existential_1(v72, AssociatedTypeWitness);
  v49 = v70;
  sub_18BC21868();
  v50 = v71;
  v51 = v60;
  if ((*(v71 + 48))(v49, 1, v60) == 1)
  {
  }

  else
  {
    v52 = v61;
    (*(v50 + 32))(v61, v49, v51);
    sub_18B7EBEFC();
    v53 = sub_18BC1EDE8();
    sub_18B9F0388(v53, 0, v77);

    v54 = v59;
    sub_18B7F4620(v77);
    [v54 setHidden_];

    (*(v50 + 8))(v52, v51);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
}

void sub_18BBEF3D8()
{
  v1 = v0;
  v20 = 1;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8);
  swift_beginAccess();
  sub_18B7FD070(&v20, v1 + v3, &unk_1EA9DBEA8, &unk_18BC55970);
  swift_endAccess();
  v4 = sub_18B7D292C();
  v5 = v4[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_configuration + 7];

  v6 = &unk_1EFF1AA08;
  if (!v5)
  {
    v6 = &unk_1EFF1AA48;
  }

  v7 = *v6;
  v8 = *((*v2 & *v1) + 0x98);
  swift_beginAccess();
  if (v7)
  {
    v9 = &unk_1EFF1AA38;
    if (v5)
    {
      v9 = &unk_1EFF1A9F8;
    }

    v10 = (v9 + 40);
    v11 = MEMORY[0x1E69E7CD0];
    while (1)
    {
      v12 = *v10;
      v13 = *(v1 + v8);
      if (!*(v13 + 16))
      {
        sub_18BC1E3F8();
        goto LABEL_13;
      }

      v14 = *(v10 - 1);
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      v15 = sub_18B7C4104(v14, v12);
      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = v15;

      v18 = *(*(v13 + 56) + 8 * v17);
      sub_18BC1E1A8();

      v19 = *(v18 + 88);
      *(v18 + 88) = v11;
      sub_18B7FD7C0(v19, sub_18BC02C08, sub_18BC0170C, sub_18BBF03E0, sub_18BBF102C);

      v10 += 2;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }

LABEL_13:
    sub_18BC21CF8();
    __break(1u);
  }

  else
  {
LABEL_10:
  }
}

void sub_18BBEF678()
{
  v1 = v0;
  v17 = 1;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8);
  swift_beginAccess();
  sub_18B7FD070(&v17, v1 + v3, &qword_1EA9DBE70, &qword_18BC55948);
  swift_endAccess();
  v4 = *(sub_18BA474C4() + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_itemTypes);
  sub_18BC1E3F8();

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *((*v2 & *v1) + 0x98);
    swift_beginAccess();
    v7 = (v4 + 40);
    v8 = MEMORY[0x1E69E7CD0];
    while (1)
    {
      v9 = *v7;
      v10 = *(v1 + v6);
      if (!*(v10 + 16))
      {
        sub_18BC1E3F8();
        goto LABEL_9;
      }

      v11 = *(v7 - 1);
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      v12 = sub_18B7C4104(v11, v9);
      if ((v13 & 1) == 0)
      {
        break;
      }

      v14 = v12;

      v15 = *(*(v10 + 56) + 8 * v14);
      sub_18BC1E1A8();

      v16 = *(v15 + 88);
      *(v15 + 88) = v8;
      sub_18B7FD7C0(v16, sub_18BC04FD4, sub_18BC01F78, sub_18BBEFF9C, sub_18BBF0824);

      v7 += 2;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

LABEL_9:
    sub_18BC21CF8();
    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

void sub_18BBEF8E8()
{
  v1 = v0;
  v17 = 1;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8);
  swift_beginAccess();
  sub_18B7FD070(&v17, v1 + v3, &qword_1EA9DBE28, &unk_18BC55908);
  swift_endAccess();
  v4 = *(sub_18B7EBEFC() + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_itemTypes);
  sub_18BC1E3F8();

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *((*v2 & *v1) + 0x98);
    swift_beginAccess();
    v7 = (v4 + 40);
    v8 = MEMORY[0x1E69E7CD0];
    while (1)
    {
      v9 = *v7;
      v10 = *(v1 + v6);
      if (!*(v10 + 16))
      {
        sub_18BC1E3F8();
        goto LABEL_9;
      }

      v11 = *(v7 - 1);
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      v12 = sub_18B7C4104(v11, v9);
      if ((v13 & 1) == 0)
      {
        break;
      }

      v14 = v12;

      v15 = *(*(v10 + 56) + 8 * v14);
      sub_18BC1E1A8();

      v16 = *(v15 + 88);
      *(v15 + 88) = v8;
      sub_18B7FD7C0(v16, sub_18BC0454C, sub_18BC01D70, sub_18BBEFB58, sub_18BBF0C28);

      v7 += 2;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

LABEL_9:
    sub_18BC21CF8();
    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

void sub_18BBEFB58(uint64_t a1)
{
  v2 = v1;
  v53 = _s4ItemVMa_4(0);
  v55 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v56 = a1;
  sub_18BC1E3F8();
  v11 = 0;
  while (v9)
  {
LABEL_11:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = *(v55 + 72);
    sub_18B7EC6E4(*(v56 + 48) + v14 * (v13 | (v11 << 6)), v5, _s4ItemVMa_4);
    v15 = *(v2 + 16);
    if (*(v15 + 16) && (v16 = sub_18BB8B258(v5), (v17 & 1) != 0))
    {
      v54 = v14;
      v18 = *(*(v15 + 56) + 8 * v16);
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_38;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = *(v2 + 16);
      v21 = v57;
      v22 = sub_18BB8B258(v5);
      v24 = v21[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_39;
      }

      v28 = v23;
      if (v21[3] >= v27)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v51 = v22;
          sub_18BB2A864();
          v22 = v51;
        }
      }

      else
      {
        sub_18BB2EEBC(v27, isUniquelyReferenced_nonNull_native);
        v22 = sub_18BB8B258(v5);
        if ((v28 & 1) != (v29 & 1))
        {
          goto LABEL_41;
        }
      }

      v44 = v19;
      v45 = v57;
      v46 = v54;
      if (v28)
      {
        *(v57[7] + 8 * v22) = v19;
        sub_18B7ED118(v5, _s4ItemVMa_4);
        *(v2 + 16) = v45;
      }

      else
      {
        v57[(v22 >> 6) + 8] |= 1 << v22;
        v47 = v22;
        sub_18B7EC6E4(v5, v45[6] + v22 * v46, _s4ItemVMa_4);
        *(v45[7] + 8 * v47) = v44;
        sub_18B7ED118(v5, _s4ItemVMa_4);
        v48 = v45[2];
        v26 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v26)
        {
          goto LABEL_40;
        }

        v45[2] = v49;
        *(v2 + 16) = v45;
      }
    }

    else
    {
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v57 = *(v2 + 16);
      v31 = v57;
      v32 = sub_18BB8B258(v5);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v26 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v26)
      {
        goto LABEL_36;
      }

      v37 = v33;
      if (v31[3] < v36)
      {
        sub_18BB2EEBC(v36, v30);
        v32 = sub_18BB8B258(v5);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_41;
        }

LABEL_23:
        v39 = v57;
        if (v37)
        {
          goto LABEL_4;
        }

        goto LABEL_24;
      }

      if (v30)
      {
        goto LABEL_23;
      }

      v50 = v32;
      sub_18BB2A864();
      v32 = v50;
      v39 = v57;
      if (v37)
      {
LABEL_4:
        *(v39[7] + 8 * v32) = 1;
        goto LABEL_5;
      }

LABEL_24:
      v39[(v32 >> 6) + 8] |= 1 << v32;
      v40 = v39[6] + v32 * v14;
      v41 = v32;
      sub_18B7EC6E4(v5, v40, _s4ItemVMa_4);
      *(v39[7] + 8 * v41) = 1;
      v42 = v39[2];
      v26 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v26)
      {
        goto LABEL_37;
      }

      v39[2] = v43;
LABEL_5:
      *(v2 + 16) = v39;
      (*v2)(v5, 1);
      sub_18B7ED118(v5, _s4ItemVMa_4);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  sub_18BC22078();
  __break(1u);
}

void sub_18BBEFF9C(uint64_t a1)
{
  v2 = v1;
  v53 = _s4ItemVMa_1(0);
  v55 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v56 = a1;
  sub_18BC1E3F8();
  v11 = 0;
  while (v9)
  {
LABEL_11:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = *(v55 + 72);
    sub_18B7EC6E4(*(v56 + 48) + v14 * (v13 | (v11 << 6)), v5, _s4ItemVMa_1);
    v15 = *(v2 + 16);
    if (*(v15 + 16) && (v16 = sub_18BB8B5B0(v5), (v17 & 1) != 0))
    {
      v54 = v14;
      v18 = *(*(v15 + 56) + 8 * v16);
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_38;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = *(v2 + 16);
      v21 = v57;
      v22 = sub_18BB8B5B0(v5);
      v24 = v21[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_39;
      }

      v28 = v23;
      if (v21[3] >= v27)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v51 = v22;
          sub_18BB2AD58();
          v22 = v51;
        }
      }

      else
      {
        sub_18BB2F2A4(v27, isUniquelyReferenced_nonNull_native);
        v22 = sub_18BB8B5B0(v5);
        if ((v28 & 1) != (v29 & 1))
        {
          goto LABEL_41;
        }
      }

      v44 = v19;
      v45 = v57;
      v46 = v54;
      if (v28)
      {
        *(v57[7] + 8 * v22) = v19;
        sub_18B7ED118(v5, _s4ItemVMa_1);
        *(v2 + 16) = v45;
      }

      else
      {
        v57[(v22 >> 6) + 8] |= 1 << v22;
        v47 = v22;
        sub_18B7EC6E4(v5, v45[6] + v22 * v46, _s4ItemVMa_1);
        *(v45[7] + 8 * v47) = v44;
        sub_18B7ED118(v5, _s4ItemVMa_1);
        v48 = v45[2];
        v26 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v26)
        {
          goto LABEL_40;
        }

        v45[2] = v49;
        *(v2 + 16) = v45;
      }
    }

    else
    {
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v57 = *(v2 + 16);
      v31 = v57;
      v32 = sub_18BB8B5B0(v5);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v26 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v26)
      {
        goto LABEL_36;
      }

      v37 = v33;
      if (v31[3] < v36)
      {
        sub_18BB2F2A4(v36, v30);
        v32 = sub_18BB8B5B0(v5);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_41;
        }

LABEL_23:
        v39 = v57;
        if (v37)
        {
          goto LABEL_4;
        }

        goto LABEL_24;
      }

      if (v30)
      {
        goto LABEL_23;
      }

      v50 = v32;
      sub_18BB2AD58();
      v32 = v50;
      v39 = v57;
      if (v37)
      {
LABEL_4:
        *(v39[7] + 8 * v32) = 1;
        goto LABEL_5;
      }

LABEL_24:
      v39[(v32 >> 6) + 8] |= 1 << v32;
      v40 = v39[6] + v32 * v14;
      v41 = v32;
      sub_18B7EC6E4(v5, v40, _s4ItemVMa_1);
      *(v39[7] + 8 * v41) = 1;
      v42 = v39[2];
      v26 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v26)
      {
        goto LABEL_37;
      }

      v39[2] = v43;
LABEL_5:
      *(v2 + 16) = v39;
      (*v2)(v5, 1);
      sub_18B7ED118(v5, _s4ItemVMa_1);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  sub_18BC22078();
  __break(1u);
}

void sub_18BBF03E0(uint64_t a1)
{
  v2 = v1;
  v53 = _s4ItemVMa_0(0);
  v55 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v56 = a1;
  sub_18BC1E3F8();
  v11 = 0;
  while (v9)
  {
LABEL_11:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = *(v55 + 72);
    sub_18B7EC6E4(*(v56 + 48) + v14 * (v13 | (v11 << 6)), v5, _s4ItemVMa_0);
    v15 = *(v2 + 16);
    if (*(v15 + 16) && (v16 = sub_18B80CA2C(v5), (v17 & 1) != 0))
    {
      v54 = v14;
      v18 = *(*(v15 + 56) + 8 * v16);
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_38;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = *(v2 + 16);
      v21 = v57;
      v22 = sub_18B80CA2C(v5);
      v24 = v21[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_39;
      }

      v28 = v23;
      if (v21[3] >= v27)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v51 = v22;
          sub_18BB2C0D4();
          v22 = v51;
        }
      }

      else
      {
        sub_18BB303EC(v27, isUniquelyReferenced_nonNull_native);
        v22 = sub_18B80CA2C(v5);
        if ((v28 & 1) != (v29 & 1))
        {
          goto LABEL_41;
        }
      }

      v44 = v19;
      v45 = v57;
      v46 = v54;
      if (v28)
      {
        *(v57[7] + 8 * v22) = v19;
        sub_18B7ED118(v5, _s4ItemVMa_0);
        *(v2 + 16) = v45;
      }

      else
      {
        v57[(v22 >> 6) + 8] |= 1 << v22;
        v47 = v22;
        sub_18B7EC6E4(v5, v45[6] + v22 * v46, _s4ItemVMa_0);
        *(v45[7] + 8 * v47) = v44;
        sub_18B7ED118(v5, _s4ItemVMa_0);
        v48 = v45[2];
        v26 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v26)
        {
          goto LABEL_40;
        }

        v45[2] = v49;
        *(v2 + 16) = v45;
      }
    }

    else
    {
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v57 = *(v2 + 16);
      v31 = v57;
      v32 = sub_18B80CA2C(v5);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v26 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v26)
      {
        goto LABEL_36;
      }

      v37 = v33;
      if (v31[3] < v36)
      {
        sub_18BB303EC(v36, v30);
        v32 = sub_18B80CA2C(v5);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_41;
        }

LABEL_23:
        v39 = v57;
        if (v37)
        {
          goto LABEL_4;
        }

        goto LABEL_24;
      }

      if (v30)
      {
        goto LABEL_23;
      }

      v50 = v32;
      sub_18BB2C0D4();
      v32 = v50;
      v39 = v57;
      if (v37)
      {
LABEL_4:
        *(v39[7] + 8 * v32) = 1;
        goto LABEL_5;
      }

LABEL_24:
      v39[(v32 >> 6) + 8] |= 1 << v32;
      v40 = v39[6] + v32 * v14;
      v41 = v32;
      sub_18B7EC6E4(v5, v40, _s4ItemVMa_0);
      *(v39[7] + 8 * v41) = 1;
      v42 = v39[2];
      v26 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v26)
      {
        goto LABEL_37;
      }

      v39[2] = v43;
LABEL_5:
      *(v2 + 16) = v39;
      (*v2)(v5, 1);
      sub_18B7ED118(v5, _s4ItemVMa_0);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  sub_18BC22078();
  __break(1u);
}

void sub_18BBF0824(uint64_t a1)
{
  v2 = v1;
  v46 = _s4ItemVMa_1(0);
  v4 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v46 - v8;
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  sub_18BC1E3F8();
  v14 = 0;
  v48 = v1;
  v49 = v4;
  while (v12)
  {
LABEL_10:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(v4 + 72);
    v18 = v50;
    sub_18B7EC6E4(*(a1 + 48) + v17 * (v16 | (v14 << 6)), v50, _s4ItemVMa_1);
    sub_18B80D554(v18, v6, _s4ItemVMa_1);
    v19 = *(v2 + 16);
    if (*(v19 + 16) && (v20 = sub_18BB8B5B0(v6), (v21 & 1) != 0))
    {
      v22 = *(*(v19 + 56) + 8 * v20);
      if (v22 < 2)
      {
        v33 = v2;
        v34 = sub_18BB8B5B0(v6);
        if (v35)
        {
          v36 = v34;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v38 = *(v33 + 16);
          v51 = v38;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_18BB2AD58();
            v38 = v51;
          }

          sub_18B7ED118(*(v38 + 48) + v36 * v17, _s4ItemVMa_1);
          sub_18BB5C524(v36, v38);
          *(v48 + 16) = v38;
        }

        v2 = v33;
        (*v33)(v6, 0);
        sub_18B7ED118(v6, _s4ItemVMa_1);
        v4 = v49;
      }

      else
      {
        v47 = a1;
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v51 = *(v2 + 16);
        v24 = v51;
        v25 = sub_18BB8B5B0(v6);
        v27 = v24[2];
        v28 = (v26 & 1) == 0;
        v29 = __OFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          goto LABEL_31;
        }

        v31 = v26;
        if (v24[3] >= v30)
        {
          if ((v23 & 1) == 0)
          {
            v45 = v25;
            sub_18BB2AD58();
            v25 = v45;
          }
        }

        else
        {
          sub_18BB2F2A4(v30, v23);
          v25 = sub_18BB8B5B0(v6);
          if ((v31 & 1) != (v32 & 1))
          {
            goto LABEL_33;
          }
        }

        a1 = v47;
        v39 = v22 - 1;
        v40 = v51;
        if (v31)
        {
          *(v51[7] + 8 * v25) = v39;
          sub_18B7ED118(v6, _s4ItemVMa_1);
        }

        else
        {
          v51[(v25 >> 6) + 8] |= 1 << v25;
          v41 = v40[6] + v25 * v17;
          v42 = v25;
          sub_18B7EC6E4(v6, v41, _s4ItemVMa_1);
          *(v40[7] + 8 * v42) = v39;
          sub_18B7ED118(v6, _s4ItemVMa_1);
          v43 = v40[2];
          v29 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v29)
          {
            goto LABEL_32;
          }

          v40[2] = v44;
        }

        v2 = v48;
        v4 = v49;
        *(v48 + 16) = v40;
      }
    }

    else
    {
      sub_18B7ED118(v6, _s4ItemVMa_1);
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_18BC22078();
  __break(1u);
}

void sub_18BBF0C28(uint64_t a1)
{
  v2 = v1;
  v46 = _s4ItemVMa_4(0);
  v4 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v46 - v8;
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  sub_18BC1E3F8();
  v14 = 0;
  v48 = v1;
  v49 = v4;
  while (v12)
  {
LABEL_10:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(v4 + 72);
    v18 = v50;
    sub_18B7EC6E4(*(a1 + 48) + v17 * (v16 | (v14 << 6)), v50, _s4ItemVMa_4);
    sub_18B80D554(v18, v6, _s4ItemVMa_4);
    v19 = *(v2 + 16);
    if (*(v19 + 16) && (v20 = sub_18BB8B258(v6), (v21 & 1) != 0))
    {
      v22 = *(*(v19 + 56) + 8 * v20);
      if (v22 < 2)
      {
        v33 = v2;
        v34 = sub_18BB8B258(v6);
        if (v35)
        {
          v36 = v34;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v38 = *(v33 + 16);
          v51 = v38;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_18BB2A864();
            v38 = v51;
          }

          sub_18B7ED118(*(v38 + 48) + v36 * v17, _s4ItemVMa_4);
          sub_18BB5C04C(v36, v38);
          *(v48 + 16) = v38;
        }

        v2 = v33;
        (*v33)(v6, 0);
        sub_18B7ED118(v6, _s4ItemVMa_4);
        v4 = v49;
      }

      else
      {
        v47 = a1;
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v51 = *(v2 + 16);
        v24 = v51;
        v25 = sub_18BB8B258(v6);
        v27 = v24[2];
        v28 = (v26 & 1) == 0;
        v29 = __OFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          goto LABEL_31;
        }

        v31 = v26;
        if (v24[3] >= v30)
        {
          if ((v23 & 1) == 0)
          {
            v45 = v25;
            sub_18BB2A864();
            v25 = v45;
          }
        }

        else
        {
          sub_18BB2EEBC(v30, v23);
          v25 = sub_18BB8B258(v6);
          if ((v31 & 1) != (v32 & 1))
          {
            goto LABEL_33;
          }
        }

        a1 = v47;
        v39 = v22 - 1;
        v40 = v51;
        if (v31)
        {
          *(v51[7] + 8 * v25) = v39;
          sub_18B7ED118(v6, _s4ItemVMa_4);
        }

        else
        {
          v51[(v25 >> 6) + 8] |= 1 << v25;
          v41 = v40[6] + v25 * v17;
          v42 = v25;
          sub_18B7EC6E4(v6, v41, _s4ItemVMa_4);
          *(v40[7] + 8 * v42) = v39;
          sub_18B7ED118(v6, _s4ItemVMa_4);
          v43 = v40[2];
          v29 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v29)
          {
            goto LABEL_32;
          }

          v40[2] = v44;
        }

        v2 = v48;
        v4 = v49;
        *(v48 + 16) = v40;
      }
    }

    else
    {
      sub_18B7ED118(v6, _s4ItemVMa_4);
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_18BC22078();
  __break(1u);
}

void sub_18BBF102C(uint64_t a1)
{
  v2 = v1;
  v46 = _s4ItemVMa_0(0);
  v4 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v46 - v8;
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  sub_18BC1E3F8();
  v14 = 0;
  v48 = v1;
  v49 = v4;
  while (v12)
  {
LABEL_10:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(v4 + 72);
    v18 = v50;
    sub_18B7EC6E4(*(a1 + 48) + v17 * (v16 | (v14 << 6)), v50, _s4ItemVMa_0);
    sub_18B80D554(v18, v6, _s4ItemVMa_0);
    v19 = *(v2 + 16);
    if (*(v19 + 16) && (v20 = sub_18B80CA2C(v6), (v21 & 1) != 0))
    {
      v22 = *(*(v19 + 56) + 8 * v20);
      if (v22 < 2)
      {
        v33 = v2;
        v34 = sub_18B80CA2C(v6);
        if (v35)
        {
          v36 = v34;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v38 = *(v33 + 16);
          v51 = v38;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_18BB2C0D4();
            v38 = v51;
          }

          sub_18B7ED118(*(v38 + 48) + v36 * v17, _s4ItemVMa_0);
          sub_18BB5D3FC(v36, v38);
          *(v48 + 16) = v38;
        }

        v2 = v33;
        (*v33)(v6, 0);
        sub_18B7ED118(v6, _s4ItemVMa_0);
        v4 = v49;
      }

      else
      {
        v47 = a1;
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v51 = *(v2 + 16);
        v24 = v51;
        v25 = sub_18B80CA2C(v6);
        v27 = v24[2];
        v28 = (v26 & 1) == 0;
        v29 = __OFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          goto LABEL_31;
        }

        v31 = v26;
        if (v24[3] >= v30)
        {
          if ((v23 & 1) == 0)
          {
            v45 = v25;
            sub_18BB2C0D4();
            v25 = v45;
          }
        }

        else
        {
          sub_18BB303EC(v30, v23);
          v25 = sub_18B80CA2C(v6);
          if ((v31 & 1) != (v32 & 1))
          {
            goto LABEL_33;
          }
        }

        a1 = v47;
        v39 = v22 - 1;
        v40 = v51;
        if (v31)
        {
          *(v51[7] + 8 * v25) = v39;
          sub_18B7ED118(v6, _s4ItemVMa_0);
        }

        else
        {
          v51[(v25 >> 6) + 8] |= 1 << v25;
          v41 = v40[6] + v25 * v17;
          v42 = v25;
          sub_18B7EC6E4(v6, v41, _s4ItemVMa_0);
          *(v40[7] + 8 * v42) = v39;
          sub_18B7ED118(v6, _s4ItemVMa_0);
          v43 = v40[2];
          v29 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v29)
          {
            goto LABEL_32;
          }

          v40[2] = v44;
        }

        v2 = v48;
        v4 = v49;
        *(v48 + 16) = v40;
      }
    }

    else
    {
      sub_18B7ED118(v6, _s4ItemVMa_0);
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_18BC22078();
  __break(1u);
}

id sub_18BBF150C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE08, &unk_18BC558F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = _s4ItemVMa_4(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  if (!*(v9 + 16))
  {
    return 0;
  }

  v10 = sub_18BB8B258(a1);
  if (v11)
  {
    v12 = *(*(v9 + 56) + 16 * v10);
    sub_18B7EC6E4(a1, v8, _s4ItemVMa_4);
    v13 = v12;
    sub_18BAD28FC(0, 0, v8);
    return v13;
  }

  if (!*(v9 + 16))
  {
    return 0;
  }

  v15 = sub_18BC21918();
  v16 = sub_18BC097CC(v5, v15, *(v9 + 36), 0, sub_18BB2A828, _s4ItemVMa_4, _s4ItemVMa_4, sub_18BB5BD54);
  sub_18B7ED118(v5, _s4ItemVMa_4);
  return v16;
}

id sub_18BBF16FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE78, &unk_18BC55950);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = _s4ItemVMa_1(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  if (!*(v9 + 16))
  {
    return 0;
  }

  v10 = sub_18BB8B5B0(a1);
  if (v11)
  {
    v12 = *(*(v9 + 56) + 16 * v10);
    sub_18B7EC6E4(a1, v8, _s4ItemVMa_1);
    v13 = v12;
    sub_18BAD2B9C(0, 0, v8);
    return v13;
  }

  if (!*(v9 + 16))
  {
    return 0;
  }

  v15 = sub_18BC21918();
  v16 = sub_18BC097CC(v5, v15, *(v9 + 36), 0, sub_18BB2AAEC, _s4ItemVMa_1, _s4ItemVMa_1, sub_18BB5C4F8);
  sub_18B7ED118(v5, _s4ItemVMa_1);
  return v16;
}

void sub_18BBF18EC(uint64_t a1, uint64_t a2)
{
  v4 = _s4ItemVMa_1(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - v12;
  v14 = 0;
  v21[1] = a2;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_18B7EC6E4(*(a1 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v13, _s4ItemVMa_1);
    sub_18B80D554(v13, v7, _s4ItemVMa_1);
    sub_18BB5E620(v10, v7);
    sub_18B7ED118(v10, _s4ItemVMa_1);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      return;
    }

    v17 = *(a1 + 56 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_18BBF1AEC(uint64_t a1, uint64_t a2)
{
  v4 = _s4ItemVMa_4(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - v12;
  v14 = 0;
  v21[1] = a2;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_18B7EC6E4(*(a1 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v13, _s4ItemVMa_4);
    sub_18B80D554(v13, v7, _s4ItemVMa_4);
    sub_18BB5E328(v10, v7);
    sub_18B7ED118(v10, _s4ItemVMa_4);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      return;
    }

    v17 = *(a1 + 56 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_18BBF1CEC(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v60 = _s4ItemVMa_0(0);
  v50 = *(v60 - 1);
  MEMORY[0x1EEE9AC00](v60);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v44 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v44 - v11;
  v12 = 0;
  v53 = a1;
  v13 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  v48 = a1 + 56;
  v47 = v17;
  for (i = v9; v16; v17 = v47)
  {
LABEL_10:
    v19 = *(v53 + 48);
    v61 = *(v50 + 72);
    v20 = v49;
    sub_18B7EC6E4(v19 + v61 * (__clz(__rbit64(v16)) | (v12 << 6)), v49, _s4ItemVMa_0);
    sub_18B80D554(v20, v9, _s4ItemVMa_0);
    sub_18BC22158();
    v21 = *v9;
    sub_18BC22178();
    v59 = v9[1];
    sub_18BC22178();
    v22 = v60;
    v23 = v60[6];
    sub_18BC1EC08();
    sub_18B7F4EE4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v57 = v23;
    sub_18BC20A78();
    v24 = *&v9[v22[7]];
    sub_18BC22178();
    if (v24)
    {
      v25 = v24;
      sub_18BC215D8();
    }

    v26 = v60;
    v54 = v9[v60[8]];
    sub_18BC22178();
    v52 = v9[v26[9]];
    sub_18BC22178();
    v27 = &v9[v26[10]];
    v28 = *(v27 + 1);
    v29 = v56;
    v45 = *v27;
    v51 = v28;
    sub_18BC22178();
    if (v28)
    {
      sub_18BC20C28();
    }

    v30 = sub_18BC221A8();
    v31 = v29 + 56;
    v32 = -1 << *(v29 + 32);
    v33 = v30 & ~v32;
    if (((*(v29 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
    {
LABEL_34:
      v41 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = i;
      v43 = v46;
      sub_18B7EC6E4(i, v46, _s4ItemVMa_0);
      v62 = v41;
      sub_18BB62770(v43, v33, isUniquelyReferenced_nonNull_native);
      v56 = v62;
      goto LABEL_35;
    }

    v55 = v24;
    v34 = ~v32;
    while (1)
    {
      sub_18B7EC6E4(*(v29 + 48) + v33 * v61, v4, _s4ItemVMa_0);
      if (v21 != *v4 || v59 != v4[1] || (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) == 0)
      {
        goto LABEL_17;
      }

      v35 = *&v4[v60[7]];
      if (v35)
      {
        if (!v55)
        {
          goto LABEL_17;
        }

        sub_18B7B0AC0(0, &qword_1ED6514F0, 0x1E69DCAB8);
        v36 = v55;
        v37 = v35;
        v38 = sub_18BC215C8();

        v29 = v56;
        if ((v38 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (v55)
      {
        goto LABEL_17;
      }

      if (v54 != v4[v60[8]] || v52 != v4[v60[9]])
      {
        goto LABEL_17;
      }

      v39 = &v4[v60[10]];
      v40 = *(v39 + 1);
      if (v40)
      {
        break;
      }

      if (!v51)
      {
        goto LABEL_33;
      }

LABEL_17:
      sub_18B7ED118(v4, _s4ItemVMa_0);
      v33 = (v33 + 1) & v34;
      if (((*(v31 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    if (!v51 || (*v39 != v45 || v40 != v51) && (sub_18BC21FD8() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_33:
    sub_18B7ED118(v4, _s4ItemVMa_0);
    v9 = i;
LABEL_35:
    v16 &= v16 - 1;
    sub_18B7ED118(v9, _s4ItemVMa_0);
    v13 = v48;
  }

  while (1)
  {
    v18 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v18 >= v17)
    {

      return;
    }

    v16 = *(v13 + 8 * v18);
    ++v12;
    if (v16)
    {
      v12 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_18BBF22CC(uint64_t a1, uint64_t a2)
{
  v4 = _s4PageVMa_0(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - v12;
  v14 = 0;
  v21[1] = a2;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_18B7EC6E4(*(a1 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v13, _s4PageVMa_0);
    sub_18B80D554(v13, v7, _s4PageVMa_0);
    sub_18BB5E5CC(v10, v7);
    sub_18B7ED118(v10, _s4PageVMa_0);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      return;
    }

    v17 = *(a1 + 56 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_18BBF24CC(char a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v11 = Strong;
  if (a1)
  {
    memset(v12, 0, sizeof(v12));
    v10 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0xA8);
    swift_beginAccess();
    sub_18B7FD070(v12, v11 + v10, a3, a4);
    swift_endAccess();
  }

  else
  {
    a5();
  }
}

uint64_t sub_18BBF2668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  a6(a2);
  swift_endAccess();
  return a7(a2, a4, a5);
}

uint64_t sub_18BBF2704@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = _s4ItemVMa_1(0);
  a2[4] = sub_18B7F4EE4(&qword_1EA9D8BF8, _s4ItemVMa_1, &unk_18BC4FCF8);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a2);
  return sub_18B7EC6E4(a1, boxed_opaque_existential_0Tm, _s4ItemVMa_1);
}

uint64_t sub_18BBF2794@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = _s4ItemVMa_4(0);
  a2[4] = sub_18B7F4EE4(&qword_1EA9D48A0, _s4ItemVMa_4, &unk_18BC46218);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a2);
  return sub_18B7EC6E4(a1, boxed_opaque_existential_0Tm, _s4ItemVMa_4);
}

void sub_18BBF286C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    a6(a1, a4, a5, a2 & 1);
  }
}

uint64_t sub_18BBF28FC(uint64_t (*a1)(char *), uint64_t a2)
{
  v4 = v2;
  v41 = a1;
  v6 = sub_18BC1ECC8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_18BC1EDD8();
  v10 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v38 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v30 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v30 - v15;
  v42 = *(type metadata accessor for SingleElementIndexPathSequence(0) + 20);
  sub_18BC1EC98();
  v16 = sub_18BC1ECB8();
  v36 = *(v7 + 8);
  v37 = v7 + 8;
  v36(v9, v6);
  if (v16)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_3:
    sub_18B7ED118(v4, type metadata accessor for SingleElementIndexPathSequence);
  }

  else
  {
    v35 = (v7 + 40);
    v43 = (v10 + 32);
    v31 = v10;
    v33 = (v10 + 8);
    v17 = MEMORY[0x1E69E7CC0];
    v34 = xmmword_18BC3E410;
    v32 = a2;
    while (1)
    {
      v19 = sub_18BC1ED48();
      sub_18BC1ECE8();
      v20 = v6;
      (*v35)(v4, v9, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB730, &unk_18BC42A20);
      v21 = swift_allocObject();
      *(v21 + 16) = v34;
      *(v21 + 32) = v19;
      v22 = v40;
      MEMORY[0x18CFFA250]();
      v23 = *v43;
      v24 = v39;
      (*v43)(v39, v22, v44);
      v25 = v41(v24);
      if (v3)
      {
        break;
      }

      if (v25)
      {
        v23(v38, v24, v44);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_18B9B6720(0, *(v17 + 16) + 1, 1);
          v17 = v45;
        }

        v28 = *(v17 + 16);
        v27 = *(v17 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_18B9B6720((v27 > 1), v28 + 1, 1);
          v17 = v45;
        }

        *(v17 + 16) = v28 + 1;
        v23((v17 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v28), v38, v44);
      }

      else
      {
        (*v33)(v24, v44);
      }

      sub_18BC1EC98();
      v18 = sub_18BC1ECB8();
      v6 = v20;
      v36(v9, v20);
      if (v18)
      {
        goto LABEL_3;
      }
    }

    (*v33)(v24, v44);
    sub_18B7ED118(v4, type metadata accessor for SingleElementIndexPathSequence);
  }

  return v17;
}

void sub_18BBF2D58(uint64_t a1)
{
  v2 = v1;
  v4 = _s4ItemVMa_4(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v7 = v1[2];
  sub_18BC1E1A8();
  v7(v23, a1);

  swift_beginAccess();
  v8 = v1[4];
  if (*(v8 + 16))
  {
    sub_18BC1E3F8();
    v9 = sub_18BB8B258(a1);
    if (v10)
    {
      v11 = *(v8 + 56) + 16 * v9;
      v12 = *(v11 + 8);
      v13 = *v11;

      v14 = v2[15];
      v15 = v2[16];
      __swift_project_boxed_opaque_existential_1Tm(v2 + 12, v14);
      v16 = v13;
      LOBYTE(v14) = sub_18B86EA9C(v16, v23, v14, v15);

      if ((v14 & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v23);

        return;
      }

      sub_18B7EC6E4(a1, v6, _s4ItemVMa_4);
      swift_beginAccess();
      sub_18BAD28FC(0, 0, v6);
      swift_endAccess();
      v17 = v2[15];
      v18 = v2[16];
      __swift_project_boxed_opaque_existential_1Tm(v2 + 12, v17);
      v19 = v16;
      sub_18B86ED4C(v19, v23, v17, v18);

      [v19 setHidden_];
      [v19 _removeAllRetargetableAnimations_];
      swift_beginAccess();
      v20 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v2[17];
      v2[17] = 0x8000000000000000;
      sub_18BAA7B0C(v20, v12, a1, isUniquelyReferenced_nonNull_native);
      v2[17] = v22;
      swift_endAccess();
    }

    else
    {
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v23);
}

void sub_18BBF2FCC(uint64_t a1)
{
  v2 = v1;
  v4 = _s4ItemVMa_1(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v7 = v1[2];
  sub_18BC1E1A8();
  v7(v23, a1);

  swift_beginAccess();
  v8 = v1[4];
  if (*(v8 + 16))
  {
    sub_18BC1E3F8();
    v9 = sub_18BB8B5B0(a1);
    if (v10)
    {
      v11 = *(v8 + 56) + 16 * v9;
      v12 = *(v11 + 8);
      v13 = *v11;

      v14 = v2[15];
      v15 = v2[16];
      __swift_project_boxed_opaque_existential_1Tm(v2 + 12, v14);
      v16 = v13;
      LOBYTE(v14) = sub_18B86EA9C(v16, v23, v14, v15);

      if ((v14 & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v23);

        return;
      }

      sub_18B7EC6E4(a1, v6, _s4ItemVMa_1);
      swift_beginAccess();
      sub_18BAD2B9C(0, 0, v6);
      swift_endAccess();
      v17 = v2[15];
      v18 = v2[16];
      __swift_project_boxed_opaque_existential_1Tm(v2 + 12, v17);
      v19 = v16;
      sub_18B86ED4C(v19, v23, v17, v18);

      [v19 setHidden_];
      [v19 _removeAllRetargetableAnimations_];
      swift_beginAccess();
      v20 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v2[17];
      v2[17] = 0x8000000000000000;
      sub_18BAA7E30(v20, v12, a1, isUniquelyReferenced_nonNull_native);
      v2[17] = v22;
      swift_endAccess();
    }

    else
    {
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v23);
}

uint64_t sub_18BBF3240(uint64_t a1)
{
  v2 = v1;
  v4 = _s4ItemVMa_4(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = (v1 + 80);
  v7 = *(v1 + 80);
  if (*(v7 + 16))
  {
    v9 = sub_18BB8B258(a1);
    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v9);
      if (v11 < 2)
      {
        sub_18B7EC6E4(a1, v6, _s4ItemVMa_4);
        sub_18BAD2A58(0, 1, v6);
        (*(v2 + 64))(a1, 0);
      }

      else
      {
        v12 = v11 - 1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *v8;
        *v8 = 0x8000000000000000;
        sub_18BAA7CBC(v12, a1, isUniquelyReferenced_nonNull_native);
        *v8 = v15;
      }
    }
  }

  return swift_endAccess();
}

uint64_t sub_18BBF338C()
{
  v0 = sub_18BC1F248();
  __swift_allocate_value_buffer(v0, qword_1EA9DBD50);
  __swift_project_value_buffer(v0, qword_1EA9DBD50);
  return sub_18BC1F238();
}

id sub_18BBF344C(void *a1, uint64_t (*a2)(void), void *a3)
{
  v6 = sub_18B7EBEFC();
  v7 = a2();
  [v7 presentationValue];
  v9 = v8;

  *(v6 + *a3) = v9;

  return [a1 setNeedsLayout];
}

void sub_18BBF351C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v11 = sub_18B86286C(a1, 0xD000000000000014, 0x800000018BC60730, sub_18BB8B258);

  if (v11)
  {
    type metadata accessor for TabThumbnailView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      sub_18BA18474();
      v7 = (v6 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration);
      v12[0] = *(v6 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration);
      v9 = *(v6 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 32);
      v8 = *(v6 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 48);
      v10 = *(v6 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 16);
      *&v13[9] = *(v6 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 57);
      v12[2] = v9;
      *v13 = v8;
      v12[1] = v10;
      v7[2] = 0u;
      v7[3] = 0u;
      *(v7 + 57) = 0u;
      *v7 = 0u;
      v7[1] = 0u;
      sub_18B988BAC(v12, &unk_1EA9D92A0, &qword_18BC44DD0);
      sub_18BA181B8();
    }

    else
    {
    }
  }
}

void sub_18BBF363C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5 = a2[3];
  v22 = a2[2];
  v23[0] = v5;
  *(v23 + 9) = *(a2 + 57);
  v6 = a2[1];
  v20 = *a2;
  v21 = v6;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v16 = sub_18B86286C(a1, 0xD000000000000014, 0x800000018BC60730, sub_18BB8B258);

  if (v16)
  {
    type metadata accessor for TabThumbnailView();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      sub_18BA18474();
      v10 = (v9 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration);
      v18[0] = *(v9 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration);
      v12 = *(v9 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 32);
      v11 = *(v9 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 48);
      v13 = *(v9 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 16);
      *(v19 + 9) = *(v9 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 57);
      v18[2] = v12;
      v19[0] = v11;
      v18[1] = v13;
      v14 = v23[0];
      v10[2] = v22;
      v10[3] = v14;
      *(v10 + 57) = *(v23 + 9);
      v15 = v21;
      *v10 = v20;
      v10[1] = v15;
      sub_18BA93A88(a2, v17);
      sub_18B988BAC(v18, &unk_1EA9D92A0, &qword_18BC44DD0);
      sub_18BA181B8();
    }

    else
    {
    }
  }
}

void sub_18BBF37AC(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = (a1 & 1) == 0;
    v5 = Strong;
    [Strong setHidden_];
  }
}

void sub_18BBF3814(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((Strong[qword_1EA9DBD80] & 1) == 0)
    {
      v4 = Strong;
      a2();
      Strong = v4;
    }
  }
}

uint64_t sub_18BBF3890()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9360, &unk_18BC558E0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for QuickTabSwitcher.BorrowedContentViewRegistration(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_1EA9F8570;
  swift_beginAccess();
  sub_18B7CA054(v0 + v8, v3, &unk_1EA9D9360, &unk_18BC558E0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_18B988BAC(v3, &unk_1EA9D9360, &unk_18BC558E0);
  }

  sub_18B80D554(v3, v7, type metadata accessor for QuickTabSwitcher.BorrowedContentViewRegistration);
  v10 = sub_18B86286C(v7, 0xD000000000000014, 0x800000018BC60730, sub_18BB8B258);
  if (v10)
  {
    v11 = v10;
    type metadata accessor for TabThumbnailView();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = *(v12 + OBJC_IVAR___SFTabThumbnailView_borrowedContentView);
      *(v12 + OBJC_IVAR___SFTabThumbnailView_borrowedContentView) = 0;
      sub_18BA14FAC(v13);
    }

    else
    {
    }
  }

  return sub_18B7ED118(v7, type metadata accessor for QuickTabSwitcher.BorrowedContentViewRegistration);
}

uint64_t sub_18BBF3AC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9360, &unk_18BC558E0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for QuickTabSwitcher.BorrowedContentViewRegistration(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = qword_1EA9F8570;
  swift_beginAccess();
  sub_18B7CA054(v0 + v14, v6, &unk_1EA9D9360, &unk_18BC558E0);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    sub_18B988BAC(v6, &unk_1EA9D9360, &unk_18BC558E0);
  }

  else
  {
    sub_18B80D554(v6, v13, type metadata accessor for QuickTabSwitcher.BorrowedContentViewRegistration);
    v16 = sub_18B86286C(v13, 0xD000000000000014, 0x800000018BC60730, sub_18BB8B258);
    if (v16)
    {
      v17 = v16;
      type metadata accessor for TabThumbnailView();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        v19 = *&v13[*(v7 + 20)];
        v20 = *(v18 + OBJC_IVAR___SFTabThumbnailView_borrowedContentView);
        *(v18 + OBJC_IVAR___SFTabThumbnailView_borrowedContentView) = v19;
        v21 = v19;
        sub_18BA14FAC(v20);

        v22 = v13;
        return sub_18B7ED118(v22, type metadata accessor for QuickTabSwitcher.BorrowedContentViewRegistration);
      }
    }

    sub_18B7ED118(v13, type metadata accessor for QuickTabSwitcher.BorrowedContentViewRegistration);
  }

  sub_18B7CA054(v0 + v14, v3, &unk_1EA9D9360, &unk_18BC558E0);
  if (v15(v3, 1, v7) == 1)
  {
    return sub_18B988BAC(v3, &unk_1EA9D9360, &unk_18BC558E0);
  }

  sub_18B80D554(v3, v10, type metadata accessor for QuickTabSwitcher.BorrowedContentViewRegistration);
  if (qword_1EA9D22A0 != -1)
  {
    swift_once();
  }

  v24 = sub_18BC1F2C8();
  __swift_project_value_buffer(v24, qword_1EA9F7E98);
  v25 = sub_18BC1F2A8();
  v26 = sub_18BC21238();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_18B7AC000, v25, v26, "QuickTabSwitcher received a borrowed content view but has no container for it. Removing from view hierarchy as fallback.", v27, 2u);
    MEMORY[0x18CFFEEE0](v27, -1, -1);
  }

  [*&v10[*(v7 + 20)] removeFromSuperview];
  v22 = v10;
  return sub_18B7ED118(v22, type metadata accessor for QuickTabSwitcher.BorrowedContentViewRegistration);
}

uint64_t sub_18BBF3ED8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE00, &unk_18BC41860);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - v1;
  v3 = _s7ContentVMa_4(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s4ItemVMa_4(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18B7EBEFC();
  sub_18B7EC6E4(v11 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v6, _s7ContentVMa_4);

  sub_18B7CA054(&v6[*(v4 + 32)], v2, &qword_1EA9DBE00, &unk_18BC41860);
  sub_18B7ED118(v6, _s7ContentVMa_4);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    return sub_18B988BAC(v2, &qword_1EA9DBE00, &unk_18BC41860);
  }

  sub_18B80D554(v2, v10, _s4ItemVMa_4);
  sub_18BBF4120(v10);
  return sub_18B7ED118(v10, _s4ItemVMa_4);
}

void sub_18BBF4120(uint64_t a1)
{
  v2 = _s4ItemVMa_4(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE40, &unk_18BC55920);
  MEMORY[0x1EEE9AC00](v51);
  v6 = &v46 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9360, &unk_18BC558E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE00, &unk_18BC41860);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  v48 = a1;
  sub_18B7EC6E4(a1, &v46 - v16, _s4ItemVMa_4);
  v18 = *(v3 + 56);
  v19 = 1;
  v50 = v2;
  v18(v17, 0, 1, v2);
  v20 = qword_1EA9F8570;
  v21 = v52;
  swift_beginAccess();
  sub_18B7CA054(v21 + v20, v9, &unk_1EA9D9360, &unk_18BC558E0);
  v22 = type metadata accessor for QuickTabSwitcher.BorrowedContentViewRegistration(0);
  if (!(*(*(v22 - 8) + 48))(v9, 1, v22))
  {
    sub_18B7EC6E4(v9, v14, _s4ItemVMa_4);
    v19 = 0;
  }

  sub_18B988BAC(v9, &unk_1EA9D9360, &unk_18BC558E0);
  v23 = v50;
  v18(v14, v19, 1, v50);
  v24 = *(v51 + 48);
  sub_18B7CA054(v17, v6, &qword_1EA9DBE00, &unk_18BC41860);
  sub_18B7CA054(v14, &v6[v24], &qword_1EA9DBE00, &unk_18BC41860);
  v25 = *(v3 + 48);
  v26 = v6;
  if (v25(v6, 1, v23) != 1)
  {
    v27 = v6;
    v28 = v49;
    sub_18B7CA054(v27, v49, &qword_1EA9DBE00, &unk_18BC41860);
    if (v25(v26 + v24, 1, v23) != 1)
    {
      v29 = v47;
      sub_18B80D554(v26 + v24, v47, _s4ItemVMa_4);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B7ED118(v29, _s4ItemVMa_4);
      sub_18B988BAC(v14, &qword_1EA9DBE00, &unk_18BC41860);
      sub_18B988BAC(v17, &qword_1EA9DBE00, &unk_18BC41860);
      sub_18B7ED118(v28, _s4ItemVMa_4);
      sub_18B988BAC(v26, &qword_1EA9DBE00, &unk_18BC41860);
      if ((updated & 1) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

    sub_18B988BAC(v14, &qword_1EA9DBE00, &unk_18BC41860);
    sub_18B988BAC(v17, &qword_1EA9DBE00, &unk_18BC41860);
    sub_18B7ED118(v28, _s4ItemVMa_4);
LABEL_8:
    sub_18B988BAC(v26, &unk_1EA9DBE40, &unk_18BC55920);
    return;
  }

  sub_18B988BAC(v14, &qword_1EA9DBE00, &unk_18BC41860);
  sub_18B988BAC(v17, &qword_1EA9DBE00, &unk_18BC41860);
  if (v25(&v6[v24], 1, v23) != 1)
  {
    goto LABEL_8;
  }

  sub_18B988BAC(v6, &qword_1EA9DBE00, &unk_18BC41860);
LABEL_10:
  v31 = sub_18B86286C(v48, 0xD000000000000014, 0x800000018BC60730, sub_18BB8B258);
  if (v31)
  {
    v32 = v31;
    type metadata accessor for TabThumbnailView();
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      v34 = v33;
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      v36 = objc_opt_self();
      v37 = swift_allocObject();
      *(v37 + 16) = sub_18BC0DB6C;
      *(v37 + 24) = v35;
      v38 = swift_allocObject();
      *(v38 + 16) = sub_18B9D53AC;
      *(v38 + 24) = v37;
      v57 = sub_18B9D53B0;
      v58 = v38;
      aBlock = MEMORY[0x1E69E9820];
      v54 = 1107296256;
      v55 = sub_18B7E3BF4;
      v56 = &block_descriptor_352;
      v39 = _Block_copy(&aBlock);
      sub_18BC1E1A8();
      sub_18BC1E1A8();
      v40 = v32;

      [v36 performWithoutAnimation_];
      _Block_release(v39);
      LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

      if (v36)
      {
        __break(1u);
      }

      else
      {
        v41 = *MEMORY[0x1E69DDA98];
        if (*MEMORY[0x1E69DDA98])
        {
          v42 = swift_allocObject();
          *(v42 + 16) = v34;
          v57 = sub_18BC0DB90;
          v58 = v42;
          aBlock = MEMORY[0x1E69E9820];
          v54 = 1107296256;
          v55 = sub_18B7B0DB0;
          v56 = &block_descriptor_358;
          v43 = _Block_copy(&aBlock);
          v44 = v40;
          v45 = v41;

          [v45 _performBlockAfterCATransactionCommits_];
          _Block_release(v43);

          return;
        }
      }

      __break(1u);
    }

    else
    {
    }
  }
}

void sub_18BBF48EC(void *a1)
{
  type metadata accessor for AnimationSettings();
  inited = swift_initStaticObject();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  v5[2] = inited;
  v5[3] = sub_18BC0DB98;
  v5[4] = v3;
  v13 = sub_18B7E767C;
  v14 = v5;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_18B7B0DB0;
  v12 = &block_descriptor_368_0;
  v6 = _Block_copy(&v9);
  v7 = a1;
  sub_18BC1E1A8();

  v13 = CGRectMake;
  v14 = 0;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_18B8043A0;
  v12 = &block_descriptor_371;
  v8 = _Block_copy(&v9);

  [v4 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v8);
  _Block_release(v6);
}

void sub_18BBF4AB4(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  sub_18B7C2D1C(&selRef_setBounds_, a2, a3, a4, a5);
}

id sub_18BBF4B38(uint64_t a1)
{
  v2 = _s4ItemVMa_4(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s7ContentVMa_4(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_18B7EBEFC();
  sub_18B7EC6E4(v9 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v8, _s7ContentVMa_4);

  v10 = *v8;
  sub_18BC1E3F8();
  result = sub_18B7ED118(v8, _s7ContentVMa_4);
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = 0;
    while (v13 < *(v10 + 16))
    {
      sub_18B7EC6E4(v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v5, _s4ItemVMa_4);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      result = sub_18B7ED118(v5, _s4ItemVMa_4);
      if (updated)
      {

        sub_18B7EBEFC();
        sub_18B9F0388(v13, 0, v15);

        sub_18BB11CB8();
        return sub_18B7F4620(v15);
      }

      if (v12 == ++v13)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return [v1 bounds];
  }

  return result;
}

void sub_18BBF4DB4(uint64_t a1)
{
  v2 = _s4ItemVMa_4(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s7ContentVMa_4(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_18B7EBEFC();
  sub_18B7EC6E4(v9 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v8, _s7ContentVMa_4);

  v10 = *v8;
  sub_18BC1E3F8();
  sub_18B7ED118(v8, _s7ContentVMa_4);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    while (v12 < *(v10 + 16))
    {
      sub_18B7EC6E4(v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v5, _s4ItemVMa_4);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B7ED118(v5, _s4ItemVMa_4);
      if (updated)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AF0, &qword_18BC46520);
        sub_18BC1EDD8();
        v14 = swift_allocObject();
        v17 = xmmword_18BC3E410;
        *(v14 + 16) = xmmword_18BC3E410;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB730, &unk_18BC42A20);
        v15 = swift_allocObject();
        *(v15 + 16) = v17;
        *(v15 + 32) = v12;
        MEMORY[0x18CFFA250]();
        v16 = sub_18B7EBEFC();
        sub_18BC09D98(0xD000000000000014, 0x800000018BC60730, v14, v16, 0, v1);

        return;
      }

      if (v11 == ++v12)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

void sub_18BBF50C8(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  swift_beginAccess();
  if (*(*(v1 + v3) + 16))
  {
    sub_18BC1E3F8();
    sub_18B7C4104(0xD000000000000014, 0x800000018BC60730);
    if (v4)
    {
      sub_18BC1E1A8();

      swift_beginAccess();
      sub_18BBE85A0(a1, sub_18BB8B258, sub_18BAA7CBC);
      swift_endAccess();

      return;
    }
  }

  sub_18BC21CF8();
  __break(1u);
}

void sub_18BBF522C()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (*(v2 + 16))
  {
    sub_18BC1E3F8();
    v3 = sub_18B7C4104(0xD000000000000014, 0x800000018BC60730);
    if (v4)
    {
      v5 = *(*(v2 + 56) + 8 * v3);
      sub_18BC1E1A8();

      swift_beginAccess();
      v6 = *(v5 + 32);
      sub_18BC1E3F8();

      v7 = 0;
      v8 = 1 << *(v6 + 32);
      v9 = -1;
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      v10 = v9 & *(v6 + 64);
      v11 = (v8 + 63) >> 6;
      while (v10)
      {
        v12 = v7;
LABEL_11:
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v14 = *(*(v6 + 56) + ((v12 << 10) | (16 * v13)));
        v15 = [v14 layer];
        [v15 clearHasBeenCommitted];
      }

      while (1)
      {
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v12 >= v11)
        {

          return;
        }

        v10 = *(v6 + 64 + 8 * v12);
        ++v7;
        if (v10)
        {
          v7 = v12;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }

  sub_18BC21CF8();
  __break(1u);
}

uint64_t sub_18BBF543C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9360, &unk_18BC558E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v35 = type metadata accessor for QuickTabSwitcher.BorrowedContentViewRegistration(0);
  v7 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v11 = *&Strong[qword_1EA9F8550];
  sub_18BC1E1A8();

  v36 = a2;
  if (v11)
  {
    v12 = _s4ItemVMa_4(0);
    v13 = sub_18B856BBC(a2 + *(v12 + 20));
  }

  else
  {
    v13 = 0;
  }

  sub_18BA1A450(v13);

  v14 = swift_unknownObjectUnownedLoadStrong();
  v15 = &v14[qword_1EA9F8520];
  swift_beginAccess();
  v16 = *(v15 + 2);
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1E1A8();

  if (*(v16 + 16) && (v17 = sub_18BB8B258(v36), (v18 & 1) != 0))
  {
    v19 = (*(v16 + 56) + 80 * v17);
    v38 = *v19;
    v21 = v19[2];
    v20 = v19[3];
    v22 = *(v19 + 57);
    v39 = v19[1];
    v40 = v21;
    *(v41 + 9) = v22;
    v41[0] = v20;
    sub_18BA93A88(&v38, v46);

    v44 = v40;
    v45[0] = v41[0];
    *(v45 + 9) = *(v41 + 9);
    v42 = v38;
    v43 = v39;
    sub_18BA93A88(&v38, v46);
    sub_18BA18474();
    v23 = (a1 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration);
    v24 = *(a1 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 48);
    v46[2] = *(a1 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 32);
    v47[0] = v24;
    *(v47 + 9) = *(a1 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 57);
    v25 = *(a1 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 16);
    v46[0] = *(a1 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration);
    v46[1] = v25;
    v26 = v45[0];
    v23[2] = v44;
    v23[3] = v26;
    *(v23 + 57) = *(v45 + 9);
    v27 = v43;
    *v23 = v42;
    v23[1] = v27;
    sub_18BA93A88(&v38, &v37);
    sub_18B988BAC(v46, &unk_1EA9D92A0, &qword_18BC44DD0);
    sub_18BA181B8();
    sub_18BB11480(&v38);
    sub_18BB11480(&v38);
  }

  else
  {
  }

  v28 = swift_unknownObjectUnownedLoadStrong();
  v29 = qword_1EA9F8570;
  swift_beginAccess();
  sub_18B7CA054(v28 + v29, v6, &unk_1EA9D9360, &unk_18BC558E0);

  v30 = v35;
  if ((*(v7 + 48))(v6, 1, v35) == 1)
  {
    return sub_18B988BAC(v6, &unk_1EA9D9360, &unk_18BC558E0);
  }

  sub_18B80D554(v6, v9, type metadata accessor for QuickTabSwitcher.BorrowedContentViewRegistration);
  _s4ItemVMa_4(0);
  if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
  {
    v32 = *&v9[*(v30 + 20)];
    v33 = *(a1 + OBJC_IVAR___SFTabThumbnailView_borrowedContentView);
    *(a1 + OBJC_IVAR___SFTabThumbnailView_borrowedContentView) = v32;
    v34 = v32;
    sub_18BA14FAC(v33);
  }

  return sub_18B7ED118(v9, type metadata accessor for QuickTabSwitcher.BorrowedContentViewRegistration);
}

id sub_18BBF5858(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___SFTabThumbnailView_snapshotRegistration);
  if (v2)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v4 = *&Strong[qword_1EA9F8550];
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    if (v4)
    {
      sub_18BA7832C(v2);
    }
  }

  sub_18BA18474();
  v5 = (a1 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration);
  v6 = *(a1 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 48);
  v10[2] = *(a1 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 32);
  v11[0] = v6;
  *(v11 + 9) = *(a1 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 57);
  v7 = *(a1 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 16);
  v10[0] = *(a1 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration);
  v10[1] = v7;
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  *(v5 + 57) = 0u;
  sub_18B988BAC(v10, &unk_1EA9D92A0, &qword_18BC44DD0);
  sub_18BA181B8();
  v8 = *(a1 + OBJC_IVAR___SFTabThumbnailView_borrowedContentView);
  *(a1 + OBJC_IVAR___SFTabThumbnailView_borrowedContentView) = 0;
  sub_18BA14FAC(v8);

  return sub_18BA1A450(0);
}

double sub_18BBF5974@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 2;
  return result;
}

void sub_18BBF598C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE00, &unk_18BC41860);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = _s4ItemVMa_4(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_1EA9DBD88;
  swift_beginAccess();
  sub_18B7CA054(v2 + v14, v9, &qword_1EA9DBE00, &unk_18BC41860);
  v15 = qword_1EA9F8000;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_18B988BAC(v9, &qword_1EA9DBE00, &unk_18BC41860);
  }

  else
  {
    sub_18B80D554(v9, v13, _s4ItemVMa_4);
    if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
    {
      sub_18B7ED118(v13, _s4ItemVMa_4);
    }

    else
    {
      v16 = *(v2 + qword_1EA9DBD90);
      if (v16 < 0)
      {
        goto LABEL_13;
      }

      v25 = qword_1EA9DBD90;
      v26 = a1;
      if (v16)
      {
        v17 = v2 + qword_1EA9F8538;
        do
        {
          v18 = *(v17 + 160);
          sub_18BC1E1A8();
          v18(v13, 0);

          --v16;
        }

        while (v16);
      }

      sub_18B7ED118(v13, _s4ItemVMa_4);
      a1 = v26;
      *(v2 + v25) = 0;
      v15 = qword_1EA9F8000;
    }
  }

  sub_18B7EC6E4(a1, v6, _s4ItemVMa_4);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_18B7FD070(v6, v2 + v14, &qword_1EA9DBE00, &unk_18BC41860);
  swift_endAccess();
  v19 = *(v2 + qword_1EA9DBD90);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v2 + qword_1EA9DBD90) = v21;
    v22 = v2 + v15[167];
    v23 = a1;
    v24 = *(v22 + 160);
    sub_18BC1E1A8();
    v24(v23, 1);

    return;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

double sub_18BBF5CD4(uint64_t a1)
{
  v3 = _s4ItemVMa_4(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE40, &unk_18BC55920);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE00, &unk_18BC41860);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v27 = a1;
  sub_18B7EC6E4(a1, &v27 - v14, _s4ItemVMa_4);
  (*(v4 + 56))(v15, 0, 1, v3);
  v16 = qword_1EA9DBD88;
  swift_beginAccess();
  v17 = *(v7 + 56);
  sub_18B7CA054(v15, v9, &qword_1EA9DBE00, &unk_18BC41860);
  v29 = v1;
  sub_18B7CA054(v1 + v16, &v9[v17], &qword_1EA9DBE00, &unk_18BC41860);
  v18 = *(v4 + 48);
  if (v18(v9, 1, v3) != 1)
  {
    sub_18B7CA054(v9, v12, &qword_1EA9DBE00, &unk_18BC41860);
    if (v18(&v9[v17], 1, v3) != 1)
    {
      v21 = v28;
      sub_18B80D554(&v9[v17], v28, _s4ItemVMa_4);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B7ED118(v21, _s4ItemVMa_4);
      sub_18B988BAC(v15, &qword_1EA9DBE00, &unk_18BC41860);
      sub_18B7ED118(v12, _s4ItemVMa_4);
      sub_18B988BAC(v9, &qword_1EA9DBE00, &unk_18BC41860);
      v20 = v29;
      if ((updated & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_18B988BAC(v15, &qword_1EA9DBE00, &unk_18BC41860);
    sub_18B7ED118(v12, _s4ItemVMa_4);
LABEL_6:
    sub_18B988BAC(v9, &unk_1EA9DBE40, &unk_18BC55920);
    return result;
  }

  sub_18B988BAC(v15, &qword_1EA9DBE00, &unk_18BC41860);
  if (v18(&v9[v17], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_18B988BAC(v9, &qword_1EA9DBE00, &unk_18BC41860);
  v20 = v29;
LABEL_8:
  v23 = *(v20 + qword_1EA9DBD90);
  v24 = v23 < 1;
  v25 = v23 - 1;
  if (!v24)
  {
    *(v20 + qword_1EA9DBD90) = v25;
    v26 = *(v20 + qword_1EA9F8538 + 160);
    sub_18BC1E1A8();
    v26(v27, 0);
  }

  return result;
}

void sub_18BBF60E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9260, &qword_18BC4CB40);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_18B7EBEFC();
  v5 = sub_18B7C453C();
  [v5 presentationValue];
  v7 = v6;

  *(v4 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_visibilityForNeighboringItemsDuringGesture) = v7;

  [v0 setNeedsLayout];
  v8 = sub_18B7EBEFC();
  v9 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState;
  swift_beginAccess();
  sub_18B7CA054(v8 + v9, v3, &qword_1EA9D9260, &qword_18BC4CB40);

  v10 = _s15PanGestureStateVMa(0);
  LODWORD(v8) = (*(*(v10 - 8) + 48))(v3, 1, v10);
  sub_18B988BAC(v3, &qword_1EA9D9260, &qword_18BC4CB40);
  if (v8 == 1)
  {
    if (qword_1EA9D21D0 != -1)
    {
      swift_once();
    }

    v11 = &qword_1EA9F7A60;
  }

  else
  {
    if (qword_1EA9D21C8 != -1)
    {
      swift_once();
    }

    v11 = &qword_1EA9F7A58;
  }

  v12 = *v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = sub_18B848F4C;
  v15[4] = v13;
  v24 = sub_18B7E767C;
  v25 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_18B7B0DB0;
  v23 = &block_descriptor_335;
  v16 = _Block_copy(&aBlock);
  swift_retain_n();
  v17 = v0;
  sub_18BC1E1A8();

  v24 = CGRectMake;
  v25 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_18B8043A0;
  v23 = &block_descriptor_338;
  v18 = _Block_copy(&aBlock);

  [v14 _animateUsingSpringBehavior_tracking_animations_completion_];

  _Block_release(v18);
  _Block_release(v16);
}

void sub_18BBF6458(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = _s4ItemVMa_4(0);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v60 - v18;
  v65 = v20;
  v66 = a1;
  v64 = v21;
  if (a4 == 4 || a4 == 3)
  {
    if (a5)
    {
      sub_18B7EC6E4(a1, v15, _s4ItemVMa_4);
      v32 = a5;
      v33 = qword_1EA9DBDC0;
      *&v70 = *&v6[qword_1EA9DBDC0];
      sub_18BC1E3F8();
      sub_18BB5E328(v19, v15);
      sub_18B7ED118(v19, _s4ItemVMa_4);
      v34 = *&v6[v33];
      *&v6[v33] = v70;
      a5 = v32;
      sub_18BBFA93C(v34);

      sub_18BBF5CD4(a1);
    }

    v35 = *&v6[qword_1EA9F8538];
    sub_18BC1E1A8();
    v35(a5 & 1);

    v36 = 1;
LABEL_22:
    v40 = type metadata accessor for RetargetableTransitionCoordinator();
    v41 = swift_allocObject();
    v42 = MEMORY[0x1E69E7CC0];
    *(v41 + 32) = MEMORY[0x1E69E7CC0];
    v43 = (v41 + 32);
    *(v41 + 40) = 1;
    *(v41 + 16) = a3;
    *(v41 + 24) = v42;
    if (!v36)
    {
      sub_18B7D8090(a3);
LABEL_37:
      *(&v71 + 1) = v40;
      v72 = &off_1EFF27FD8;
      *&v70 = v41;
      sub_18BC1E1A8();
      sub_18BBE9874(a2, &v70);
      sub_18B988BAC(&v70, &unk_1EA9D5060, &unk_18BC41870);
      v59 = *(v41 + 16);
      swift_retain_n();
      sub_18B7D8090(v59);
      sub_18B7EAA64(sub_18B9D4FF4, v41, sub_18B9D4FFC, v41, v59);

      sub_18B7EBAE8(v59);
      *(v41 + 40) = 0;

      return;
    }

    v44 = *&v6[qword_1EA9DBD98];
    v45 = *(v44 + 24);
    v24 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v24)
    {
      __break(1u);
    }

    else
    {
      *(v44 + 24) = v46;
      if (v46 == 1)
      {
        LODWORD(v62) = a5;
        v63 = a2;
        swift_beginAccess();
        v47 = *(v44 + 16);
        v48 = *(v47 + 16);
        if (v48)
        {
          v61 = v6;
          sub_18B7D8090(a3);
          sub_18BC1E1A8();
          sub_18BC1E3F8();
          v49 = v47 + 40;
          do
          {
            v50 = *(v49 - 8);
            LOBYTE(v70) = *(v44 + 24) > 0;
            sub_18BC1E1A8();
            v50(&v70);

            v49 += 16;
            --v48;
          }

          while (v48);

          v6 = v61;
        }

        else
        {
          sub_18B7D8090(a3);
        }

        a2 = v63;
        LOBYTE(a5) = v62;
      }

      else
      {
        sub_18B7D8090(a3);
      }

      v51 = v65;
      sub_18B7EC6E4(v66, v65, _s4ItemVMa_4);
      v52 = (*(v64 + 80) + 25) & ~*(v64 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = v6;
      *(v53 + 24) = a5 & 1;
      sub_18B80D554(v51, v53 + v52, _s4ItemVMa_4);
      v44 = swift_allocObject();
      *(v44 + 16) = sub_18BC0DAD8;
      *(v44 + 24) = v53;
      swift_beginAccess();
      a5 = *v43;
      v54 = v6;
      sub_18BC1E1A8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v43 = a5;
      a3 = a2;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_34;
      }
    }

    a5 = sub_18B9B5814(0, a5[2] + 1, 1, a5);
    *v43 = a5;
LABEL_34:
    v57 = a5[2];
    v56 = a5[3];
    if (v57 >= v56 >> 1)
    {
      a5 = sub_18B9B5814((v56 > 1), v57 + 1, 1, a5);
    }

    a5[2] = v57 + 1;
    v58 = &a5[2 * v57];
    v58[4] = sub_18BA4EE54;
    v58[5] = v44;
    *v43 = a5;
    swift_endAccess();

    a2 = a3;
    goto LABEL_37;
  }

  if (a4 != 1)
  {
    v36 = 0;
    goto LABEL_22;
  }

  v62 = v17;
  v63 = a2;
  sub_18BBF598C(a1);
  v22 = *&v6[qword_1EA9F8558];
  v23 = *(v22 + 24);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    v26 = a5;
    *(v22 + 24) = v25;
    if (v25 == 1)
    {
      swift_beginAccess();
      v27 = *(v22 + 16);
      v28 = *(v27 + 16);
      if (v28)
      {
        sub_18BC1E3F8();
        v29 = v27 + 40;
        do
        {
          v30 = *(v29 - 8);
          LOBYTE(v70) = *(v22 + 24) > 0;
          sub_18BC1E1A8();
          v30(&v70);

          v29 += 16;
          --v28;
        }

        while (v28);

        a1 = v66;
      }
    }

    v31 = &v6[qword_1EA9F8528];
    swift_beginAccess();
    if (*(v31 + 24))
    {
      sub_18B80DBC4(v31, &v70);
    }

    else
    {
      v37 = *(v31 + 16);
      v70 = *v31;
      v71 = v37;
      v72 = *(v31 + 32);
    }

    a5 = v26;
    if (*(&v71 + 1))
    {
      sub_18B80DBC4(&v70, v67);
      if (*(&v71 + 1))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v70);
      }

      v38 = v68;
      v39 = v69;
      __swift_project_boxed_opaque_existential_1Tm(v67, v68);
      (*(v39 + 16))(a1 + *(v62 + 20), "beginning QuickTabSwitcher gesture", 34, 2, v38, v39);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
    }

    v36 = 0;
    a2 = v63;
    goto LABEL_22;
  }

  __break(1u);
}

void sub_18BBF6B14(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE00, &unk_18BC41860);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33[-1] - v7;
  v9 = a1 + qword_1EA9F8528;
  swift_beginAccess();
  if (*(v9 + 24))
  {
    sub_18B80DBC4(v9, &v37);
    if (!*(&v38 + 1))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = *(v9 + 16);
    v37 = *v9;
    v38 = v10;
    v39 = *(v9 + 32);
    if (!*(&v10 + 1))
    {
      goto LABEL_8;
    }
  }

  sub_18B80DBC4(&v37, v33);
  if (*(&v38 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v37);
  }

  v11 = v34;
  v12 = v35;
  __swift_project_boxed_opaque_existential_1Tm(v33, v34);
  (*(v12 + 24))("ending QuickTabSwitcher gesture", 31, 2, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
LABEL_8:
  v13 = *(a1 + qword_1EA9F8558);
  v14 = *(v13 + 24);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  *(v13 + 24) = v16;
  if (!v16)
  {
    swift_beginAccess();
    v17 = *(v13 + 16);
    v18 = *(v17 + 16);
    if (v18)
    {
      sub_18BC1E3F8();
      v19 = v17 + 40;
      do
      {
        v20 = *(v19 - 8);
        LOBYTE(v37) = *(v13 + 24) > 0;
        sub_18BC1E1A8();
        v20(&v37);

        v19 += 16;
        --v18;
      }

      while (v18);
    }
  }

  v21 = *(a1 + qword_1EA9DBD98);
  v22 = *(v21 + 24);
  v15 = __OFSUB__(v22, 1);
  v23 = v22 - 1;
  if (v15)
  {
    goto LABEL_26;
  }

  *(v21 + 24) = v23;
  if (!v23)
  {
    swift_beginAccess();
    v24 = *(v21 + 16);
    v25 = *(v24 + 16);
    if (v25)
    {
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      v26 = v24 + 40;
      do
      {
        v27 = *(v26 - 8);
        LOBYTE(v36) = *(v21 + 24) > 0;
        sub_18BC1E1A8();
        v27(&v36);

        v26 += 16;
        --v25;
      }

      while (v25);
    }
  }

  if (sub_18B7EBCA4())
  {
    v28 = *(a1 + qword_1EA9F8538 + 16);
    v29 = sub_18BC1E1A8();
    v28(v29);
  }

  if (a2)
  {
    v30 = qword_1EA9DBDC0;
    v36 = *(a1 + qword_1EA9DBDC0);
    sub_18BC1E3F8();
    sub_18B9CE0A8(v8);
    sub_18B988BAC(v8, &qword_1EA9DBE00, &unk_18BC41860);
    v31 = *(a1 + v30);
    *(a1 + v30) = v36;
    sub_18BBFA93C(v31);
  }

  else
  {
    sub_18BBF5CD4(a3);
  }
}

void sub_18BBF6E48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18BC1F218();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30[-v9];
  if (a1 != 1)
  {
    return;
  }

  if (qword_1EA9D2548 != -1)
  {
    swift_once();
  }

  v11 = sub_18BC1F248();
  __swift_project_value_buffer(v11, qword_1EA9DBD50);
  sub_18BC1F208();
  v12 = sub_18BC1F228();
  v13 = sub_18BC213D8();
  if (sub_18BC21838())
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_18BC1F1F8();
    _os_signpost_emit_with_name_impl(&dword_18B7AC000, v12, v13, v15, "GestureFirstCommit", "", v14, 2u);
    MEMORY[0x18CFFEEE0](v14, -1, -1);
  }

  (*(v5 + 16))(v7, v10, v4);
  sub_18BC1F288();
  swift_allocObject();
  v16 = sub_18BC1F278();
  (*(v5 + 8))(v10, v4);
  v17 = *MEMORY[0x1E69DDA98];
  if (!*MEMORY[0x1E69DDA98])
  {
LABEL_16:
    __break(1u);
    return;
  }

  aBlock[4] = sub_18BC0DAD0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7B0DB0;
  aBlock[3] = &block_descriptor_303;
  v18 = _Block_copy(aBlock);
  v19 = v17;
  sub_18BC1E1A8();

  [v19 _performBlockAfterCATransactionCommits_];
  _Block_release(v18);

  v20 = *(v2 + qword_1EA9F8538 + 192);
  v21 = sub_18BC1E1A8();
  v20(v21);

  v22 = *(v2 + qword_1EA9F8558);
  v23 = *(v22 + 24);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
    goto LABEL_16;
  }

  *(v22 + 24) = v25;
  if (v25 == 1)
  {
    swift_beginAccess();
    v26 = *(v22 + 16);
    v27 = *(v26 + 16);
    if (v27)
    {
      sub_18BC1E3F8();
      v28 = v26 + 40;
      do
      {
        v29 = *(v28 - 8);
        v31 = *(v22 + 24) > 0;
        sub_18BC1E1A8();
        v29(&v31);

        v28 += 16;
        --v27;
      }

      while (v27);
    }
  }
}

uint64_t sub_18BBF71DC()
{
  v0 = sub_18BC1F258();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC1F218();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA9D2548 != -1)
  {
    swift_once();
  }

  v8 = sub_18BC1F248();
  __swift_project_value_buffer(v8, qword_1EA9DBD50);
  v9 = sub_18BC1F228();
  sub_18BC1F268();
  v10 = sub_18BC213C8();
  if (sub_18BC21838())
  {
    sub_18BC1E1A8();
    sub_18BC1F298();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_18BC1F1F8();
    _os_signpost_emit_with_name_impl(&dword_18B7AC000, v9, v10, v13, "GestureFirstCommit", v11, v12, 2u);
    MEMORY[0x18CFFEEE0](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_18BBF7468()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4520, &unk_18BC41850);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v96 = &v85 - v2;
  v91 = _s7ContentVMa_4(0);
  MEMORY[0x1EEE9AC00](v91);
  v99 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v92 = &v85 - v5;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0, &qword_18BC432A0);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v85 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9260, &qword_18BC4CB40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v98 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v85 - v10;
  v12 = _s15PanGestureStateVMa(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v97 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v85 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v85 - v19;
  v21 = sub_18B7EBEFC();
  v22 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState;
  swift_beginAccess();
  sub_18B7CA054(v21 + v22, v11, &qword_1EA9D9260, &qword_18BC4CB40);

  v95 = v13;
  if ((*(v13 + 6))(v11, 1, v12) == 1)
  {
    return sub_18B988BAC(v11, &qword_1EA9D9260, &qword_18BC4CB40);
  }

  sub_18B80D554(v11, v20, _s15PanGestureStateVMa);
  if (qword_1EA9D22A0 != -1)
  {
    swift_once();
  }

  v24 = sub_18BC1F2C8();
  __swift_project_value_buffer(v24, qword_1EA9F7E98);
  sub_18B7EC6E4(v20, v17, _s15PanGestureStateVMa);
  v90 = v20;
  v25 = v97;
  sub_18B7EC6E4(v20, v97, _s15PanGestureStateVMa);
  v26 = v0;
  v27 = sub_18BC1F2A8();
  v28 = sub_18BC21238();

  if (os_log_type_enabled(v27, v28))
  {
    v87 = v28;
    v88 = v27;
    v29 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *&v105 = v86;
    *v29 = 136446722;
    v30 = _s4ItemVMa_4(0);
    v31 = sub_18BC1EC08();
    sub_18B7F4EE4(&qword_1EA9DBE50, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v32 = sub_18BC21F48();
    v34 = v33;
    sub_18B7ED118(v17, _s15PanGestureStateVMa);
    v35 = sub_18B7EA850(v32, v34, &v105);

    *(v29 + 4) = v35;
    *(v29 + 12) = 2082;
    v36 = sub_18B7EBEFC();
    v37 = v92;
    sub_18B7EC6E4(v36 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v92, _s7ContentVMa_4);

    v38 = v37 + *(v91 + 24);
    if ((*(*(v30 - 8) + 48))(v38, 1, v30))
    {
      sub_18B7ED118(v37, _s7ContentVMa_4);
      v39 = *(v31 - 8);
      v40 = 1;
      v41 = v93;
    }

    else
    {
      v39 = *(v31 - 8);
      v41 = v93;
      (*(v39 + 16))(v93, v38 + *(v30 + 20), v31);
      sub_18B7ED118(v37, _s7ContentVMa_4);
      v40 = 0;
    }

    (*(v39 + 56))(v41, v40, 1, v31);
    v42 = sub_18BC20BF8();
    v44 = sub_18B7EA850(v42, v43, &v105);

    *(v29 + 14) = v44;
    *(v29 + 22) = 2082;
    v45 = v97;
    v46 = sub_18B86286C(v97 + *(v12 + 24), 0xD000000000000014, 0x800000018BC60730, sub_18BB8B258);
    if (v46)
    {
      v47 = v46;
      type metadata accessor for TabThumbnailView();
      v46 = swift_dynamicCastClass();
      if (!v46)
      {

        v46 = 0;
      }
    }

    *&v101 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE58, &unk_18BC55930);
    v48 = sub_18BC20BF8();
    v50 = v49;
    sub_18B7ED118(v45, _s15PanGestureStateVMa);
    v51 = sub_18B7EA850(v48, v50, &v105);

    *(v29 + 24) = v51;
    v52 = v88;
    _os_log_impl(&dword_18B7AC000, v88, v87, "QuickTabSwitcher is cancelling a pan gesture because the item (%{public}s) is no longer selected (%{public}s or its view was discarded (%{public}s).", v29, 0x20u);
    v53 = v86;
    swift_arrayDestroy();
    MEMORY[0x18CFFEEE0](v53, -1, -1);
    MEMORY[0x18CFFEEE0](v29, -1, -1);

    v97 = 0x800000018BC60730;
  }

  else
  {

    sub_18B7ED118(v25, _s15PanGestureStateVMa);
    sub_18B7ED118(v17, _s15PanGestureStateVMa);
    v97 = 0x800000018BC60730;
  }

  v54 = sub_18B7EBEFC();
  sub_18B7EC6E4(v54 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v99, _s7ContentVMa_4);

  v55 = *&v26[qword_1EA9F8568 + 16];
  v105 = *&v26[qword_1EA9F8568];
  v106 = v55;
  v56 = *&v26[qword_1EA9F8568 + 48];
  v107 = *&v26[qword_1EA9F8568 + 32];
  v108 = v56;
  v57 = *&v26[qword_1EA9F8568 + 64];
  v58 = *&v26[qword_1EA9F8568 + 72];
  v101 = *&v26[qword_1EA9F8568 + 80];
  v102 = *&v26[qword_1EA9F8568 + 96];
  v103 = *&v26[qword_1EA9F8568 + 112];
  v104 = *&v26[qword_1EA9F8568 + 128];
  v59 = *&v26[qword_1EA9F8568 + 136];
  v60 = *&v26[qword_1EA9F8568 + 144];
  v61 = *(v95 + 7);
  v61(v98, 1, 1, v12);
  v62 = _s17PinchGestureStateVMa(0);
  v63 = *(*(v62 - 8) + 56);
  v89 = v12;
  v95 = v26;
  v64 = v96;
  v63(v96, 1, 1, v62);
  _s6LayoutCMa_3(0);
  v65 = swift_allocObject();
  v61(v65 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState, 1, 1, v12);
  v63((v65 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState), 1, 1, v62);
  v66 = v65 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetForBeginningPinch;
  *v66 = 0u;
  *(v66 + 16) = 0u;
  *(v66 + 40) = 2;
  *(v66 + 32) = 0;
  *(v65 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_cornerRadiusForPinchingItem) = 0;
  *(v65 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_heightPercentageForPinchingItem) = 0x3FF0000000000000;
  *(v65 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_contentInsetsVisibilityForPinchingItem) = 0x3FF0000000000000;
  *(v65 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_visibilityForNeighboringItemsDuringGesture) = 0;
  *(v65 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetCornerRadiusForPinchingItem) = 0;
  *(v65 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetHeightPercentageForPinchingItem) = 0x3FF0000000000000;
  *(v65 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_itemTypes) = &unk_1EFF1AB10;
  v67 = v65 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_scrollViewState;
  v68 = *MEMORY[0x1E69DDCE0];
  v69 = *(MEMORY[0x1E69DDCE0] + 8);
  v70 = *(MEMORY[0x1E69DDCE0] + 16);
  v71 = *(MEMORY[0x1E69DDCE0] + 24);
  *v67 = *MEMORY[0x1E69DDCE0];
  *(v67 + 8) = v69;
  *(v67 + 16) = v70;
  *(v67 + 24) = v71;
  *(v67 + 32) = 0u;
  *(v67 + 48) = 0u;
  *(v67 + 64) = v68;
  *(v67 + 72) = v69;
  *(v67 + 80) = v70;
  *(v67 + 88) = v71;
  *(v67 + 112) = 0u;
  *(v67 + 128) = 0u;
  *(v67 + 96) = 0u;
  *(v67 + 144) = 0;
  v72 = v99;
  sub_18B7EC6E4(v99, v65 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, _s7ContentVMa_4);
  v73 = v65 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics;
  v74 = v106;
  *v73 = v105;
  *(v73 + 16) = v74;
  v75 = v108;
  *(v73 + 32) = v107;
  *(v73 + 48) = v75;
  *(v73 + 64) = v57;
  *(v73 + 72) = v58;
  v76 = v102;
  *(v73 + 80) = v101;
  *(v73 + 96) = v76;
  *(v73 + 112) = v103;
  *(v73 + 128) = v104;
  *(v73 + 136) = v59;
  *(v73 + 144) = v60;
  v77 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState;
  swift_beginAccess();
  v78 = v98;
  sub_18B7EC8D0(v98, v65 + v77, &qword_1EA9D9260, &qword_18BC4CB40);
  swift_endAccess();
  v79 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState;
  swift_beginAccess();
  sub_18B7EC8D0(v64, v65 + v79, &qword_1EA9D4520, &unk_18BC41850);
  swift_endAccess();
  v80 = *(*v72 + 16);
  type metadata accessor for Deck();
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  *(v81 + 17) = v100[0];
  *(v81 + 20) = *(v100 + 3);
  *(v81 + 24) = v80;
  *(v81 + 32) = v57;
  *(v81 + 40) = v58;
  v82 = MEMORY[0x1E69DC5C0];
  *(v81 + 48) = 0xD000000000000014;
  *(v81 + 56) = v97;
  v83 = v82[1];
  *(v81 + 64) = *v82;
  *(v81 + 80) = v83;
  *(v81 + 96) = v59;
  *(v81 + 104) = 0x3FE999999999999ALL;
  *(v65 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_deck) = v81;
  sub_18B7ECADC();
  sub_18B988BAC(v64, &qword_1EA9D4520, &unk_18BC41850);
  sub_18B988BAC(v78, &qword_1EA9D9260, &qword_18BC4CB40);
  sub_18B7ED118(v72, _s7ContentVMa_4);
  v84 = v90;
  sub_18BBF6458(&v90[*(v89 + 24)], v65, 0x8000000000000010, 4, 0);

  return sub_18B7ED118(v84, _s15PanGestureStateVMa);
}

void sub_18BBF8190(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE38, &qword_18BC55918);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v314 = &v292 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v304 = &v292 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v303 = &v292 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v309 = &v292 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v308 = &v292 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v307 = &v292 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v310 = &v292 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v324 = &v292 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4520, &unk_18BC41850);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v328 = &v292 - v22;
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE40, &unk_18BC55920);
  MEMORY[0x1EEE9AC00](v319);
  v331 = (&v292 - v23);
  v336 = _s15PanGestureStateVMa(0);
  v334 = *(v336 - 8);
  MEMORY[0x1EEE9AC00](v336);
  v330 = &v292 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v335 = &v292 - v26;
  v316 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v317 = &v292 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9260, &qword_18BC4CB40);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v322 = &v292 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v326 = &v292 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v318 = &v292 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v292 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE00, &unk_18BC41860);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v315 = &v292 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v313 = &v292 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v327 = &v292 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v333 = &v292 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v292 - v48;
  v50 = _s7ContentVMa_4(0);
  v320 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v321 = &v292 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v302 = &v292 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v301 = &v292 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v306 = &v292 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v305 = &v292 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v323 = &v292 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v292 - v63;
  v65 = _s4ItemVMa_4(0);
  v66 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v311 = &v292 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v312 = &v292 - v69;
  *&v71 = MEMORY[0x1EEE9AC00](v70).n128_u64[0];
  v73 = &v292 - v72;
  v329 = a1;
  v337 = [a1 state];
  sub_18BBF6E48(v337);
  v74 = sub_18B7EBEFC();
  sub_18B7EC6E4(v74 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v64, _s7ContentVMa_4);

  v332 = v50;
  sub_18B7CA054(&v64[*(v50 + 24)], v49, &qword_1EA9DBE00, &unk_18BC41860);
  sub_18B7ED118(v64, _s7ContentVMa_4);
  v325 = v66;
  v77 = *(v66 + 48);
  v76 = v66 + 48;
  v75 = v77;
  if (v77(v49, 1, v65) == 1)
  {
    sub_18B988BAC(v49, &qword_1EA9DBE00, &unk_18BC41860);
    v78 = v3;
LABEL_18:
    sub_18BBF7468();
    if (v337 != 1)
    {
      return;
    }

    v109 = *(v78 + qword_1EA9F8558);
    v110 = *(v109 + 24);
    v111 = __OFSUB__(v110, 1);
    v112 = v110 - 1;
    if (!v111)
    {
      *(v109 + 24) = v112;
      if (!v112)
      {
        swift_beginAccess();
        v113 = *(v109 + 16);
        v114 = *(v113 + 16);
        if (v114)
        {
          sub_18BC1E3F8();
          v115 = v113 + 40;
          do
          {
            v116 = *(v115 - 8);
            LOBYTE(v348) = *(v109 + 24) > 0;
            sub_18BC1E1A8();
            v116(&v348);

            v115 += 16;
            --v114;
          }

          while (v114);
LABEL_24:

          return;
        }
      }

      return;
    }

    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    swift_once();
LABEL_55:
    v203 = qword_1EA9F7A58;
    v204 = v317;
    sub_18B7EC6E4(v330, v317, _s15PanGestureStateVMa);
    v205 = (*(v334 + 80) + 24) & ~*(v334 + 80);
    v206 = swift_allocObject();
    *(v206 + 16) = v78;
    sub_18B80D554(v204, v206 + v205, _s15PanGestureStateVMa);
    v207 = objc_opt_self();
    v208 = swift_allocObject();
    v208[2] = v203;
    v208[3] = sub_18BC0DA24;
    v208[4] = v206;
    v342 = sub_18B7E767C;
    v343 = v208;
    v338 = MEMORY[0x1E69E9820];
    v339 = 1107296256;
    v340 = sub_18B7B0DB0;
    v341 = &block_descriptor_296_0;
    v209 = _Block_copy(&v338);
    v334 = v78;
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    v342 = CGRectMake;
    v343 = 0;
    v338 = MEMORY[0x1E69E9820];
    v339 = 1107296256;
    v340 = sub_18B8043A0;
    v341 = &block_descriptor_299;
    v210 = _Block_copy(&v338);

    [v207 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v210);
    _Block_release(v209);

    v211 = v335;
    v212 = *(v336 + 32);
    v213 = v330;
    v214 = *(v330 + v212);
    if (*(v335 + v212) != v214)
    {
      v215 = *(v334 + qword_1EA9F8538 + 64);
      sub_18BC1E1A8();
      v215(v214);
    }

    sub_18B7ED118(v213, _s15PanGestureStateVMa);
    v216 = 0;
    v217 = v300;
    while (1)
    {
      v279 = v299;
      v280 = v333;
      v281 = v337;
      sub_18BBF6458(v299, v75, v333, v337, v216);
      sub_18B7EBAE8(v280);

      sub_18B7EBAE8(v280);

      sub_18B7ED118(v211, _s15PanGestureStateVMa);
      sub_18B7ED118(v279, _s4ItemVMa_4);
      if (v281 != 1)
      {
        return;
      }

      v106 = *&v217[qword_1EA9F8558];
      v282 = v106[3];
      v111 = __OFSUB__(v282, 1);
      v283 = v282 - 1;
      if (!v111)
      {
        v106[3] = v283;
        if (!v283)
        {
          swift_beginAccess();
          v284 = v106[2];
          v285 = *(v284 + 16);
          if (v285)
          {
            sub_18BC1E3F8();
            v286 = v284 + 40;
            do
            {
              v287 = *(v286 - 8);
              LOBYTE(v344) = v106[3] > 0;
              sub_18BC1E1A8();
              v287(&v344);

              v286 += 16;
              --v285;
            }

            while (v285);
            goto LABEL_24;
          }
        }

        return;
      }

      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      swift_once();
LABEL_45:
      v108 = qword_1EA9F7A58;
      sub_18BC1E1A8();
LABEL_46:
      v78 = swift_allocObject();
      v78[2] = v106;
      v145 = objc_opt_self();
      v146 = swift_allocObject();
      *(v146 + 16) = sub_18BC0D9D0;
      *(v146 + 24) = v78;
      v75 = swift_allocObject();
      *(v75 + 16) = sub_18B9D53AC;
      *(v75 + 24) = v146;
      *&v355 = sub_18B9D53B0;
      *(&v355 + 1) = v75;
      *&v353 = MEMORY[0x1E69E9820];
      *(&v353 + 1) = 1107296256;
      *&v354 = sub_18B7E3BF4;
      *(&v354 + 1) = &block_descriptor_284;
      v147 = _Block_copy(&v353);
      v148 = v106;
      v333 = v108;
      sub_18B7D8090(v108);
      sub_18BC1E1A8();
      sub_18BC1E1A8();

      [v145 performWithoutAnimation_];
      _Block_release(v147);
      LOBYTE(v145) = swift_isEscapingClosureAtFileLocation();

      if (v145)
      {
        goto LABEL_109;
      }

      v149 = v320;
      v150 = *(v320 + 56);
      v151 = v324;
      v150(v324, 1, 1, v332);
      v152 = v336;
      v331 = v148;
      if (v337 != 3)
      {
        goto LABEL_84;
      }

      v153 = v329;
      [v329 translationInView_];
      v155 = v154;
      v157 = v156;
      [v153 velocityInView_];
      v159 = v158;
      v161 = v148 + qword_1EA9F8568;
      if (v157 + v160 * 0.25 < CGRectGetHeight(*(v148 + qword_1EA9F8568 + 48)) * 0.33 * -0.5)
      {
        v162 = sub_18BC20B98();
        v163 = [v294 _velocityForKey_];

        if (v163)
        {
          sub_18BC218B8();
          swift_unknownObjectRelease();
        }

        else
        {
          v348 = 0u;
          v349 = 0u;
        }

        v233 = v334;
        v234 = v321;
        v353 = v348;
        v354 = v349;
        if (*(&v349 + 1))
        {
          type metadata accessor for CGPoint(0);
          if (swift_dynamicCast())
          {
            v235 = *(&v344 + 1);
LABEL_73:
            if (fabs(v235 / v2) < 0.15)
            {
              v236 = sub_18BC21588();
              v237 = sub_18BC20B98();
              [v294 _setVelocity_forKey_];

              *(v148 + qword_1EA9F8530) = 1;
            }

            v238 = *(v148 + qword_1EA9F8538 + 48);
            sub_18BC1E1A8();
            v238(v299);

            *(v148 + qword_1EA9F8530) = 0;
            LODWORD(v329) = 1;
            goto LABEL_87;
          }
        }

        else
        {
          sub_18B988BAC(&v353, &qword_1EA9D5220, &qword_18BC3FCB0);
        }

        v235 = 0.0;
        goto LABEL_73;
      }

      v220 = v155 + v159 * 0.25;
      if (CGRectGetWidth(*(v161 + 48)) * 0.33 < v220)
      {
        break;
      }

      if (v220 < CGRectGetWidth(*(v161 + 48)) * -0.33)
      {
        v228 = v161[104];
        v229 = sub_18B7EBEFC();
        v230 = (v149 + 48);
        if (v228 == 1)
        {
          v224 = v301;
          sub_18B7EC6E4(v229 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v301, _s7ContentVMa_4);

          v225 = v303;
          v231 = v303;
          v232 = -1;
        }

        else
        {
          v224 = v302;
          sub_18B7EC6E4(v229 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v302, _s7ContentVMa_4);

          v225 = v304;
          v231 = v304;
          v232 = 1;
        }

        sub_18B9A8824(v232, v231);
        v239 = *v230;
        v240 = v332;
        v244 = (*v230)(v225, 1, v332);
        v242 = v309;
        if (v244 != 1)
        {
LABEL_82:
          sub_18B7ED118(v224, _s7ContentVMa_4);
          sub_18B80D554(v225, v242, _s7ContentVMa_4);
          v152 = v336;
LABEL_83:
          v151 = v324;
          v150(v242, 0, 1, v332);
          sub_18B7FD070(v242, v151, &qword_1EA9DBE38, &qword_18BC55918);
          v148 = v331;
          goto LABEL_84;
        }

LABEL_78:
        sub_18B80D554(v224, v242, _s7ContentVMa_4);
        v243 = v239(v225, 1, v240);
        v152 = v336;
        if (v243 != 1)
        {
          sub_18B988BAC(v225, &qword_1EA9DBE38, &qword_18BC55918);
        }

        goto LABEL_83;
      }

LABEL_84:
      if (*(v335 + *(v152 + 32)) == 1)
      {
        v245 = *(v148 + qword_1EA9F8538 + 64);
        sub_18BC1E1A8();
        v245(0);
      }

      LODWORD(v329) = 0;
      v233 = v334;
      v234 = v321;
LABEL_87:
      v246 = v315;
      v247 = *(v320 + 48);
      v248 = v332;
      if (v247(v151, 1, v332))
      {
        (*(v325 + 56))(v246, 1, 1, v292);
LABEL_90:
        sub_18B988BAC(v246, &qword_1EA9DBE00, &unk_18BC41860);
LABEL_91:
        v250 = v331;
        goto LABEL_92;
      }

      sub_18B7CA054(v151 + *(v248 + 24), v246, &qword_1EA9DBE00, &unk_18BC41860);
      v249 = v292;
      if (v296(v246, 1, v292) == 1)
      {
        goto LABEL_90;
      }

      v288 = v246;
      v289 = v311;
      sub_18B80D554(v288, v311, _s4ItemVMa_4);
      if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
      {
        sub_18B7ED118(v289, _s4ItemVMa_4);
        goto LABEL_91;
      }

      v290 = *(v289 + *(v249 + 24));
      v334 = qword_1EA9F8540;
      v250 = v331;
      *(v331 + qword_1EA9F8540) = v290;
      v291 = *(v250 + qword_1EA9F8548);
      sub_18BC1E1A8();
      v291(v289);
      v152 = v336;

      sub_18B7ED118(v289, _s4ItemVMa_4);
      *(v334 + v250) = 0;
LABEL_92:
      v251 = v314;
      sub_18B7CA054(v151, v314, &qword_1EA9DBE38, &qword_18BC55918);
      v252 = v332;
      if (v247(v251, 1, v332) == 1)
      {
        v253 = sub_18B7EBEFC();
        sub_18B7EC6E4(v253 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v234, _s7ContentVMa_4);

        if (v247(v251, 1, v252) != 1)
        {
          sub_18B988BAC(v251, &qword_1EA9DBE38, &qword_18BC55918);
        }
      }

      else
      {
        sub_18B80D554(v251, v234, _s7ContentVMa_4);
      }

      v353 = *(v250 + qword_1EA9F8568);
      v354 = *(v250 + qword_1EA9F8568 + 16);
      v355 = *(v250 + qword_1EA9F8568 + 32);
      v356 = *(v250 + qword_1EA9F8568 + 48);
      v2 = *(v250 + qword_1EA9F8568 + 64);
      v254 = *(v250 + qword_1EA9F8568 + 72);
      v348 = *(v250 + qword_1EA9F8568 + 80);
      v349 = *(v250 + qword_1EA9F8568 + 96);
      v350 = *(v250 + qword_1EA9F8568 + 112);
      *&v351 = *(v250 + qword_1EA9F8568 + 128);
      v255 = *(v250 + qword_1EA9F8568 + 136);
      v256 = *(v250 + qword_1EA9F8568 + 144);
      v257 = v233[7];
      v258 = v322;
      v257(v322, 1, 1, v152);
      v259 = _s17PinchGestureStateVMa(0);
      v260 = *(*(v259 - 8) + 56);
      v261 = v328;
      v260(v328, 1, 1, v259);
      _s6LayoutCMa_3(0);
      v75 = swift_allocObject();
      v257(v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState, 1, 1, v152);
      v260(v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState, 1, 1, v259);
      v262 = v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetForBeginningPinch;
      *v262 = 0u;
      *(v262 + 16) = 0u;
      *(v262 + 40) = 2;
      *(v262 + 32) = 0;
      *(v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_cornerRadiusForPinchingItem) = 0;
      *(v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_heightPercentageForPinchingItem) = 0x3FF0000000000000;
      *(v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_contentInsetsVisibilityForPinchingItem) = 0x3FF0000000000000;
      *(v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_visibilityForNeighboringItemsDuringGesture) = 0;
      *(v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetCornerRadiusForPinchingItem) = 0;
      *(v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetHeightPercentageForPinchingItem) = 0x3FF0000000000000;
      *(v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_itemTypes) = &unk_1EFF1AB70;
      v263 = v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_scrollViewState;
      v264 = *MEMORY[0x1E69DDCE0];
      v265 = *(MEMORY[0x1E69DDCE0] + 8);
      v266 = *(MEMORY[0x1E69DDCE0] + 16);
      v267 = *(MEMORY[0x1E69DDCE0] + 24);
      *v263 = *MEMORY[0x1E69DDCE0];
      *(v263 + 8) = v265;
      *(v263 + 16) = v266;
      *(v263 + 24) = v267;
      *(v263 + 32) = 0u;
      *(v263 + 48) = 0u;
      *(v263 + 64) = v264;
      *(v263 + 72) = v265;
      *(v263 + 80) = v266;
      *(v263 + 88) = v267;
      *(v263 + 112) = 0u;
      *(v263 + 128) = 0u;
      *(v263 + 96) = 0u;
      *(v263 + 144) = 0;
      v268 = v321;
      sub_18B7EC6E4(v321, v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, _s7ContentVMa_4);
      v269 = v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics;
      v270 = v354;
      *v269 = v353;
      *(v269 + 16) = v270;
      v271 = v356;
      *(v269 + 32) = v355;
      *(v269 + 48) = v271;
      *(v269 + 64) = v2;
      *(v269 + 72) = v254;
      v272 = v349;
      *(v269 + 80) = v348;
      *(v269 + 96) = v272;
      *(v269 + 112) = v350;
      *(v269 + 128) = v351;
      *(v269 + 136) = v255;
      *(v269 + 144) = v256;
      v273 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState;
      swift_beginAccess();
      sub_18B7EC8D0(v258, v75 + v273, &qword_1EA9D9260, &qword_18BC4CB40);
      swift_endAccess();
      v274 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState;
      swift_beginAccess();
      sub_18B7EC8D0(v261, v75 + v274, &qword_1EA9D4520, &unk_18BC41850);
      swift_endAccess();
      v275 = *(*v268 + 16);
      type metadata accessor for Deck();
      v276 = swift_allocObject();
      *(v276 + 16) = 0;
      *(v276 + 17) = v344;
      *(v276 + 20) = *(&v344 + 3);
      *(v276 + 24) = v275;
      *(v276 + 32) = v2;
      *(v276 + 40) = v254;
      v277 = MEMORY[0x1E69DC5C0];
      *(v276 + 48) = 0xD000000000000014;
      *(v276 + 56) = v295;
      v278 = v277[1];
      *(v276 + 64) = *v277;
      *(v276 + 80) = v278;
      *(v276 + 96) = v255;
      *(v276 + 104) = 0x3FE999999999999ALL;
      *(v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_deck) = v276;
      sub_18B7ECADC();
      sub_18B988BAC(v261, &qword_1EA9D4520, &unk_18BC41850);
      sub_18B988BAC(v258, &qword_1EA9D9260, &qword_18BC4CB40);
      sub_18B7ED118(v268, _s7ContentVMa_4);
      sub_18BC1E1A8();
      sub_18B988BAC(v324, &qword_1EA9DBE38, &qword_18BC55918);
      v217 = v300;
      v300[v330] = 0;
      v211 = v335;
      v216 = v329;
    }

    v221 = v161[104];
    v222 = sub_18B7EBEFC();
    v223 = (v149 + 48);
    if (v221 == 1)
    {
      v224 = v305;
      sub_18B7EC6E4(v222 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v305, _s7ContentVMa_4);

      v225 = v307;
      v226 = v307;
      v227 = 1;
    }

    else
    {
      v224 = v306;
      sub_18B7EC6E4(v222 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v306, _s7ContentVMa_4);

      v225 = v308;
      v226 = v308;
      v227 = -1;
    }

    sub_18B9A8824(v227, v226);
    v239 = *v223;
    v240 = v332;
    v241 = (*v223)(v225, 1, v332);
    v242 = v310;
    if (v241 != 1)
    {
      goto LABEL_82;
    }

    goto LABEL_78;
  }

  sub_18B80D554(v49, v73, _s4ItemVMa_4);
  v78 = v3;
  v79 = sub_18B86286C(v73, 0xD000000000000014, 0x800000018BC60730, sub_18BB8B258);
  if (!v79)
  {
LABEL_17:
    sub_18B7ED118(v73, _s4ItemVMa_4);
    goto LABEL_18;
  }

  v80 = v79;
  type metadata accessor for TabThumbnailView();
  v81 = swift_dynamicCastClass();
  if (!v81)
  {

    goto LABEL_17;
  }

  v294 = v81;
  v295 = 0x800000018BC60730;
  v296 = v75;
  v297 = v76;
  v298 = v80;
  v299 = v73;
  v300 = v3;
  v82 = sub_18B7EBEFC();
  v83 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState;
  swift_beginAccess();
  sub_18B7CA054(v82 + v83, v38, &qword_1EA9D9260, &qword_18BC4CB40);

  v84 = v334[6];
  v85 = v336;
  LODWORD(v82) = v84(v38, 1, v336);
  sub_18B988BAC(v38, &qword_1EA9D9260, &qword_18BC4CB40);
  if (v82 == 1 && v337 == 1)
  {
LABEL_7:
    v86 = v329;
    v87 = v300;
    [v329 locationInView_];
    v89 = v88;
    [v86 translationInView_];
    v91 = v90;
    v93 = v92;
    [v86 velocityInView_];
    v95 = v94;
    v2 = v96;
    v97 = (v337 - 1);
    if (v337 == 1)
    {
      v98 = *&v87[qword_1EA9F8538 + 208];
      sub_18BC1E1A8();
      v98(v299);
      v87 = v300;
    }

    v99 = sub_18B7EBEFC();
    v100 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState;
    swift_beginAccess();
    v101 = v326;
    sub_18B7CA054(v99 + v100, v326, &qword_1EA9D9260, &qword_18BC4CB40);

    if (v84(v101, 1, v85) == 1)
    {
      v102 = v335;
      sub_18B7EC6E4(v299, v335 + v85[6], _s4ItemVMa_4);
      [v87 bounds];
      v103 = CGRectGetMaxY(v363) - v89;
      [v87 bounds];
      v104 = v89 < CGRectGetMidY(v364);
      *(v102 + v85[8]) = 0;
      *(v102 + v85[9]) = 0;
      v105 = (v102 + v85[10]);
      *v105 = 0;
      v105[1] = 0;
      *(v102 + v85[11]) = 0;
      *(v102 + v85[12]) = 0;
      *v102 = v103;
      *(v102 + 8) = v91;
      *(v102 + 16) = v93;
      *(v102 + v85[7]) = v104;
      v106 = v87;
      if (v84(v101, 1, v85) != 1)
      {
        sub_18B988BAC(v101, &qword_1EA9D9260, &qword_18BC4CB40);
      }

      if (v97 >= 2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_18B80D554(v101, v335, _s15PanGestureStateVMa);
      v106 = v87;
      if (v97 >= 2)
      {
LABEL_13:
        if ((v337 - 3) < 2)
        {
          v330 = qword_1EA9DBD80;
          *(v106 + qword_1EA9DBD80) = 1;
          IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
          v292 = v65;
          if (IsReduceMotionEnabled)
          {
            v108 = 0x8000000000000010;
            goto LABEL_46;
          }

          if (qword_1EA9D21C8 != -1)
          {
            goto LABEL_113;
          }

          goto LABEL_45;
        }

        sub_18B7ED118(v335, _s15PanGestureStateVMa);
        sub_18B7ED118(v299, _s4ItemVMa_4);
        return;
      }
    }

    if (UIAccessibilityIsReduceMotionEnabled())
    {
      v127 = 0x8000000000000010;
      v128 = v335;
    }

    else
    {
      v128 = v335;
      if (qword_1EA9D21C8 != -1)
      {
        swift_once();
      }

      v127 = qword_1EA9F7A58 | 0x4000000000000000;
      sub_18BC1E1A8();
    }

    v164 = v106 + qword_1EA9F8568;
    v165 = *(v106 + qword_1EA9F8568 + 112);
    v359 = *(v106 + qword_1EA9F8568 + 96);
    v360 = v165;
    v361 = *(v106 + qword_1EA9F8568 + 128);
    v362 = *(v106 + qword_1EA9F8568 + 144);
    v166 = *(v106 + qword_1EA9F8568 + 48);
    v355 = *(v106 + qword_1EA9F8568 + 32);
    v356 = v166;
    v167 = *(v106 + qword_1EA9F8568 + 80);
    v357 = *(v106 + qword_1EA9F8568 + 64);
    v358 = v167;
    v168 = *(v106 + qword_1EA9F8568 + 16);
    v353 = *(v106 + qword_1EA9F8568);
    v354 = v168;
    v169 = v128;
    v170 = v330;
    sub_18B7EC6E4(v169, v330, _s15PanGestureStateVMa);
    v333 = v127;
    sub_18B7D8090(v127);
    sub_18BBBA64C(&v353, v91, v93, v95, v2);
    v171 = sub_18B7EBEFC();
    sub_18B7EC6E4(v171 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v323, _s7ContentVMa_4);

    v172 = *(v164 + 1);
    v348 = *v164;
    v349 = v172;
    v173 = *(v164 + 3);
    v350 = *(v164 + 2);
    v351 = v173;
    v174 = *(v164 + 8);
    v2 = *(v164 + 9);
    v175 = *(v164 + 6);
    v344 = *(v164 + 5);
    v345 = v175;
    v346 = *(v164 + 7);
    v347 = *(v164 + 16);
    v176 = *(v164 + 17);
    v177 = *(v164 + 18);
    v178 = v322;
    sub_18B7EC6E4(v170, v322, _s15PanGestureStateVMa);
    v179 = v334[7];
    v179(v178, 0, 1, v85);
    v180 = _s17PinchGestureStateVMa(0);
    v181 = *(*(v180 - 8) + 56);
    v181(v328, 1, 1, v180);
    _s6LayoutCMa_3(0);
    v75 = swift_allocObject();
    v179(v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState, 1, 1, v85);
    v181(v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState, 1, 1, v180);
    v182 = v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetForBeginningPinch;
    *v182 = 0u;
    *(v182 + 16) = 0u;
    *(v182 + 32) = 0;
    *(v182 + 40) = 2;
    *(v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_cornerRadiusForPinchingItem) = 0;
    *(v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_heightPercentageForPinchingItem) = 0x3FF0000000000000;
    *(v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_contentInsetsVisibilityForPinchingItem) = 0x3FF0000000000000;
    *(v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_visibilityForNeighboringItemsDuringGesture) = 0;
    *(v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetCornerRadiusForPinchingItem) = 0;
    *(v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetHeightPercentageForPinchingItem) = 0x3FF0000000000000;
    *(v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_itemTypes) = &unk_1EFF1AB40;
    v183 = v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_scrollViewState;
    v184 = *MEMORY[0x1E69DDCE0];
    v185 = *(MEMORY[0x1E69DDCE0] + 8);
    v186 = *(MEMORY[0x1E69DDCE0] + 16);
    v187 = *(MEMORY[0x1E69DDCE0] + 24);
    *v183 = *MEMORY[0x1E69DDCE0];
    *(v183 + 8) = v185;
    *(v183 + 16) = v186;
    *(v183 + 24) = v187;
    *(v183 + 32) = 0u;
    *(v183 + 48) = 0u;
    *(v183 + 64) = v184;
    *(v183 + 72) = v185;
    *(v183 + 80) = v186;
    *(v183 + 88) = v187;
    *(v183 + 112) = 0u;
    *(v183 + 128) = 0u;
    *(v183 + 96) = 0u;
    *(v183 + 144) = 0;
    v188 = v323;
    sub_18B7EC6E4(v323, v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, _s7ContentVMa_4);
    v189 = v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics;
    v190 = v349;
    *v189 = v348;
    *(v189 + 16) = v190;
    v191 = v351;
    *(v189 + 32) = v350;
    *(v189 + 48) = v191;
    *(v189 + 64) = v174;
    *(v189 + 72) = v2;
    v192 = v345;
    *(v189 + 80) = v344;
    *(v189 + 96) = v192;
    *(v189 + 112) = v346;
    *(v189 + 128) = v347;
    *(v189 + 136) = v176;
    *(v189 + 144) = v177;
    v193 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState;
    swift_beginAccess();
    sub_18B7EC8D0(v178, v75 + v193, &qword_1EA9D9260, &qword_18BC4CB40);
    swift_endAccess();
    v194 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState;
    swift_beginAccess();
    v195 = v328;
    sub_18B7EC8D0(v328, v75 + v194, &qword_1EA9D4520, &unk_18BC41850);
    swift_endAccess();
    v196 = *(*v188 + 16);
    type metadata accessor for Deck();
    v197 = swift_allocObject();
    *(v197 + 16) = 0;
    *(v197 + 17) = v352[0];
    *(v197 + 20) = *(v352 + 3);
    *(v197 + 24) = v196;
    *(v197 + 32) = v174;
    *(v197 + 40) = v2;
    v198 = MEMORY[0x1E69DC5C0];
    *(v197 + 48) = 0xD000000000000014;
    *(v197 + 56) = v295;
    v199 = v198[1];
    *(v197 + 64) = *v198;
    *(v197 + 80) = v199;
    *(v197 + 96) = v176;
    *(v197 + 104) = 0x3FE999999999999ALL;
    *(v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_deck) = v197;
    sub_18B7ECADC();
    v78 = v300;
    sub_18B988BAC(v195, &qword_1EA9D4520, &unk_18BC41850);
    sub_18B988BAC(v178, &qword_1EA9D9260, &qword_18BC4CB40);
    sub_18B7ED118(v188, _s7ContentVMa_4);
    sub_18BC1E1A8();
    v200 = sub_18B7C453C();
    [v200 presentationValue];
    v202 = v201;

    *(v75 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_visibilityForNeighboringItemsDuringGesture) = v202;
    if (qword_1EA9D21C8 == -1)
    {
      goto LABEL_55;
    }

    goto LABEL_110;
  }

  v117 = v333;
  sub_18B7EC6E4(v299, v333, _s4ItemVMa_4);
  v118 = *(v325 + 56);
  v118(v117, 0, 1, v65);
  v119 = sub_18B7EBEFC();
  v120 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState;
  swift_beginAccess();
  v121 = v119 + v120;
  v122 = v318;
  sub_18B7CA054(v121, v318, &qword_1EA9D9260, &qword_18BC4CB40);

  v123 = v84(v122, 1, v85);
  v293 = v84;
  if (v123)
  {
    sub_18B988BAC(v122, &qword_1EA9D9260, &qword_18BC4CB40);
    v124 = 1;
    v125 = v319;
    v126 = v327;
  }

  else
  {
    v129 = v317;
    sub_18B7EC6E4(v122, v317, _s15PanGestureStateVMa);
    sub_18B988BAC(v122, &qword_1EA9D9260, &qword_18BC4CB40);
    v130 = v129 + v85[6];
    v126 = v327;
    sub_18B80D554(v130, v327, _s4ItemVMa_4);
    v124 = 0;
    v125 = v319;
  }

  v118(v126, v124, 1, v65);
  v131 = *(v125 + 48);
  v132 = v333;
  v133 = v331;
  sub_18B7CA054(v333, v331, &qword_1EA9DBE00, &unk_18BC41860);
  sub_18B7CA054(v126, v133 + v131, &qword_1EA9DBE00, &unk_18BC41860);
  v134 = v296;
  if (v296(v133, 1, v65) == 1)
  {
    sub_18B988BAC(v126, &qword_1EA9DBE00, &unk_18BC41860);
    v135 = v331;
    sub_18B988BAC(v132, &qword_1EA9DBE00, &unk_18BC41860);
    if (v134(v135 + v131, 1, v65) == 1)
    {
      sub_18B988BAC(v135, &qword_1EA9DBE00, &unk_18BC41860);
      v85 = v336;
      v84 = v293;
      goto LABEL_7;
    }

    goto LABEL_36;
  }

  v136 = v313;
  sub_18B7CA054(v133, v313, &qword_1EA9DBE00, &unk_18BC41860);
  v137 = v134(v133 + v131, 1, v65);
  v84 = v293;
  if (v137 == 1)
  {
    sub_18B988BAC(v327, &qword_1EA9DBE00, &unk_18BC41860);
    v135 = v331;
    sub_18B988BAC(v333, &qword_1EA9DBE00, &unk_18BC41860);
    sub_18B7ED118(v136, _s4ItemVMa_4);
LABEL_36:
    sub_18B988BAC(v135, &unk_1EA9DBE40, &unk_18BC55920);
    goto LABEL_37;
  }

  v218 = v133 + v131;
  v219 = v312;
  sub_18B80D554(v218, v312, _s4ItemVMa_4);
  LODWORD(v319) = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
  sub_18B7ED118(v219, _s4ItemVMa_4);
  sub_18B988BAC(v327, &qword_1EA9DBE00, &unk_18BC41860);
  sub_18B988BAC(v333, &qword_1EA9DBE00, &unk_18BC41860);
  sub_18B7ED118(v136, _s4ItemVMa_4);
  sub_18B988BAC(v133, &qword_1EA9DBE00, &unk_18BC41860);
  v85 = v336;
  if (v319)
  {
    goto LABEL_7;
  }

LABEL_37:
  v138 = v300;
  sub_18BBF7468();

  sub_18B7ED118(v299, _s4ItemVMa_4);
  if (v337 == 1)
  {
    v106 = *&v138[qword_1EA9F8558];
    v139 = v106[3];
    v111 = __OFSUB__(v139, 1);
    v140 = v139 - 1;
    if (v111)
    {
      goto LABEL_112;
    }

    v106[3] = v140;
    if (!v140)
    {
      swift_beginAccess();
      v141 = v106[2];
      v142 = *(v141 + 16);
      if (v142)
      {
        sub_18BC1E3F8();
        v143 = v141 + 40;
        do
        {
          v144 = *(v143 - 8);
          LOBYTE(v348) = v106[3] > 0;
          sub_18BC1E1A8();
          v144(&v348);

          v143 += 16;
          --v142;
        }

        while (v142);
        goto LABEL_24;
      }
    }
  }
}

void sub_18BBFA85C(uint64_t a1, uint64_t a2)
{
  v5 = sub_18B7C453C();
  v3 = _s15PanGestureStateVMa(0);
  v4 = 0.0;
  if (*(a2 + *(v3 + 36)))
  {
    v4 = 1.0;
  }

  [v5 setValue_];
}

void sub_18BBFA8D4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_18BBF8190(v4);
}

void sub_18BBFA93C(uint64_t a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  swift_beginAccess();
  if (!*(*(v2 + v4) + 16))
  {
    goto LABEL_11;
  }

  sub_18BC1E3F8();
  sub_18B7C4104(0xD000000000000014, 0x800000018BC60730);
  if ((v5 & 1) == 0)
  {

LABEL_11:
    sub_18BC21CF8();
    __break(1u);
    return;
  }

  sub_18BC1E1A8();

  v6 = qword_1EA9DBDC0;
  v7 = *(v2 + qword_1EA9DBDC0);
  if (*(v7 + 16) <= *(a1 + 16) >> 3)
  {
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18BC01D70(v7);

    v8 = a1;
  }

  else
  {
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    v8 = sub_18BC0454C(v7, a1);
  }

  swift_beginAccess();
  sub_18BBF0C28(v8);
  swift_endAccess();

  v9 = *(v2 + v6);
  if (*(a1 + 16) <= *(v9 + 16) >> 3)
  {
    v11 = *(v2 + v6);
    sub_18BC1E3F8();
    sub_18BC01D70(a1);
    v10 = v11;
  }

  else
  {
    sub_18BC1E3F8();
    v10 = sub_18BC0454C(a1, v9);
  }

  swift_beginAccess();
  sub_18BBEFB58(v10);
  swift_endAccess();
}

uint64_t sub_18BBFAB84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9260, &qword_18BC4CB40);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v104 = &v90 - v2;
  v95 = _s7ContentVMa_4(0);
  MEMORY[0x1EEE9AC00](v95);
  v101 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v96 = &v90 - v5;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0, &qword_18BC432A0);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v90 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4520, &unk_18BC41850);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v100 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v90 - v10;
  v12 = _s17PinchGestureStateVMa(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v102 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v90 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v90 - v19;
  v21 = sub_18B7EBEFC();
  v22 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState;
  swift_beginAccess();
  sub_18B7CA054(v21 + v22, v11, &qword_1EA9D4520, &unk_18BC41850);

  v99 = v13;
  v23 = *(v13 + 48);
  v103 = v12;
  if (v23(v11, 1, v12) == 1)
  {
    return sub_18B988BAC(v11, &qword_1EA9D4520, &unk_18BC41850);
  }

  sub_18B80D554(v11, v20, _s17PinchGestureStateVMa);
  if (qword_1EA9D22A0 != -1)
  {
    swift_once();
  }

  v25 = sub_18BC1F2C8();
  __swift_project_value_buffer(v25, qword_1EA9F7E98);
  sub_18B7EC6E4(v20, v17, _s17PinchGestureStateVMa);
  v26 = v102;
  sub_18B7EC6E4(v20, v102, _s17PinchGestureStateVMa);
  v27 = v0;
  v28 = sub_18BC1F2A8();
  v29 = sub_18BC21238();

  v30 = os_log_type_enabled(v28, v29);
  v94 = v20;
  if (v30)
  {
    v92 = v29;
    v93 = v28;
    v31 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *&v110 = v91;
    *v31 = 136446722;
    v32 = _s4ItemVMa_4(0);
    v33 = sub_18BC1EC08();
    sub_18B7F4EE4(&qword_1EA9DBE50, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v34 = sub_18BC21F48();
    v36 = v35;
    sub_18B7ED118(v17, _s17PinchGestureStateVMa);
    v37 = sub_18B7EA850(v34, v36, &v110);

    *(v31 + 4) = v37;
    *(v31 + 12) = 2082;
    v38 = sub_18B7EBEFC();
    v39 = v96;
    sub_18B7EC6E4(v38 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v96, _s7ContentVMa_4);

    v40 = v39 + *(v95 + 24);
    if ((*(*(v32 - 8) + 48))(v40, 1, v32))
    {
      sub_18B7ED118(v39, _s7ContentVMa_4);
      v41 = *(v33 - 8);
      v42 = 1;
      v43 = v97;
    }

    else
    {
      v41 = *(v33 - 8);
      v43 = v97;
      (*(v41 + 16))(v97, v40 + *(v32 + 20), v33);
      sub_18B7ED118(v39, _s7ContentVMa_4);
      v42 = 0;
    }

    (*(v41 + 56))(v43, v42, 1, v33);
    v44 = sub_18BC20BF8();
    v46 = sub_18B7EA850(v44, v45, &v110);

    *(v31 + 14) = v46;
    *(v31 + 22) = 2082;
    v47 = v102;
    v48 = sub_18B86286C(v102 + *(v103 + 52), 0xD000000000000014, 0x800000018BC60730, sub_18BB8B258);
    if (v48)
    {
      v49 = v48;
      type metadata accessor for TabThumbnailView();
      v48 = swift_dynamicCastClass();
      if (!v48)
      {

        v48 = 0;
      }
    }

    *&v106 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE58, &unk_18BC55930);
    v50 = sub_18BC20BF8();
    v52 = v51;
    sub_18B7ED118(v47, _s17PinchGestureStateVMa);
    v53 = sub_18B7EA850(v50, v52, &v110);

    *(v31 + 24) = v53;
    v54 = v93;
    _os_log_impl(&dword_18B7AC000, v93, v92, "QuickTabSwitcher is cancelling a pinch gesture because the item (%{public}s) is no longer selected (%{public}s or its view was discarded (%{public}s).", v31, 0x20u);
    v55 = v91;
    swift_arrayDestroy();
    MEMORY[0x18CFFEEE0](v55, -1, -1);
    MEMORY[0x18CFFEEE0](v31, -1, -1);

    v102 = 0x800000018BC60730;
  }

  else
  {

    sub_18B7ED118(v26, _s17PinchGestureStateVMa);
    sub_18B7ED118(v17, _s17PinchGestureStateVMa);
    v102 = 0x800000018BC60730;
  }

  v56 = sub_18B7EBEFC();
  v57 = v101;
  sub_18B7EC6E4(v56 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v101, _s7ContentVMa_4);

  v58 = *&v27[qword_1EA9F8568 + 16];
  v110 = *&v27[qword_1EA9F8568];
  v111 = v58;
  v59 = *&v27[qword_1EA9F8568 + 48];
  v112 = *&v27[qword_1EA9F8568 + 32];
  v113 = v59;
  v60 = *&v27[qword_1EA9F8568 + 64];
  v61 = *&v27[qword_1EA9F8568 + 72];
  v106 = *&v27[qword_1EA9F8568 + 80];
  v107 = *&v27[qword_1EA9F8568 + 96];
  v108 = *&v27[qword_1EA9F8568 + 112];
  v109 = *&v27[qword_1EA9F8568 + 128];
  v62 = *&v27[qword_1EA9F8568 + 136];
  v63 = *&v27[qword_1EA9F8568 + 144];
  v64 = _s15PanGestureStateVMa(0);
  v65 = *(*(v64 - 8) + 56);
  v98 = v27;
  v65(v104, 1, 1, v64);
  v66 = *(v99 + 56);
  v67 = v100;
  v68 = v103;
  v66(v100, 1, 1, v103);
  _s6LayoutCMa_3(0);
  v69 = swift_allocObject();
  v65(v69 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState, 1, 1, v64);
  v66((v69 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState), 1, 1, v68);
  v70 = v69 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetForBeginningPinch;
  *v70 = 0u;
  *(v70 + 16) = 0u;
  *(v70 + 40) = 2;
  *(v70 + 32) = 0;
  *(v69 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_cornerRadiusForPinchingItem) = 0;
  *(v69 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_heightPercentageForPinchingItem) = 0x3FF0000000000000;
  *(v69 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_contentInsetsVisibilityForPinchingItem) = 0x3FF0000000000000;
  *(v69 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_visibilityForNeighboringItemsDuringGesture) = 0;
  *(v69 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetCornerRadiusForPinchingItem) = 0;
  *(v69 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetHeightPercentageForPinchingItem) = 0x3FF0000000000000;
  *(v69 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_itemTypes) = &unk_1EFF1AF80;
  v71 = v69 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_scrollViewState;
  v72 = *MEMORY[0x1E69DDCE0];
  v73 = *(MEMORY[0x1E69DDCE0] + 8);
  v74 = *(MEMORY[0x1E69DDCE0] + 16);
  v75 = *(MEMORY[0x1E69DDCE0] + 24);
  *v71 = *MEMORY[0x1E69DDCE0];
  *(v71 + 8) = v73;
  *(v71 + 16) = v74;
  *(v71 + 24) = v75;
  *(v71 + 32) = 0u;
  *(v71 + 48) = 0u;
  *(v71 + 64) = v72;
  *(v71 + 72) = v73;
  *(v71 + 80) = v74;
  *(v71 + 88) = v75;
  *(v71 + 112) = 0u;
  *(v71 + 128) = 0u;
  *(v71 + 96) = 0u;
  *(v71 + 144) = 0;
  sub_18B7EC6E4(v57, v69 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, _s7ContentVMa_4);
  v76 = v69 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics;
  v77 = v111;
  *v76 = v110;
  *(v76 + 16) = v77;
  v78 = v113;
  *(v76 + 32) = v112;
  *(v76 + 48) = v78;
  *(v76 + 64) = v60;
  *(v76 + 72) = v61;
  v79 = v107;
  *(v76 + 80) = v106;
  *(v76 + 96) = v79;
  *(v76 + 112) = v108;
  *(v76 + 128) = v109;
  *(v76 + 136) = v62;
  *(v76 + 144) = v63;
  v80 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState;
  swift_beginAccess();
  v81 = v104;
  sub_18B7EC8D0(v104, v69 + v80, &qword_1EA9D9260, &qword_18BC4CB40);
  swift_endAccess();
  v82 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState;
  swift_beginAccess();
  sub_18B7EC8D0(v67, v69 + v82, &qword_1EA9D4520, &unk_18BC41850);
  swift_endAccess();
  v83 = *(*v57 + 16);
  type metadata accessor for Deck();
  v84 = swift_allocObject();
  *(v84 + 16) = 0;
  *(v84 + 17) = v105[0];
  *(v84 + 20) = *(v105 + 3);
  *(v84 + 24) = v83;
  *(v84 + 32) = v60;
  *(v84 + 40) = v61;
  v85 = MEMORY[0x1E69DC5C0];
  *(v84 + 48) = 0xD000000000000014;
  *(v84 + 56) = v102;
  v86 = v85[1];
  *(v84 + 64) = *v85;
  *(v84 + 80) = v86;
  *(v84 + 96) = v62;
  *(v84 + 104) = 0x3FE999999999999ALL;
  *(v69 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_deck) = v84;
  sub_18B7ECADC();
  sub_18B988BAC(v67, &qword_1EA9D4520, &unk_18BC41850);
  sub_18B988BAC(v81, &qword_1EA9D9260, &qword_18BC4CB40);
  sub_18B7ED118(v57, _s7ContentVMa_4);
  v87 = v94;
  v88 = v98;
  sub_18BBF6458(&v94[*(v68 + 52)], v69, 0x8000000000000010, 4, 0);
  v89 = *(v88 + qword_1EA9F8538 + 96);
  sub_18BC1E1A8();
  v89(0, 1.0);

  return sub_18B7ED118(v87, _s17PinchGestureStateVMa);
}

void sub_18BBFB8F0(void *a1@<X0>, double a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE00, &unk_18BC41860);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v110 - v6;
  v8 = _s7ContentVMa_4(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s4ItemVMa_4(0);
  v12 = *(v11 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v15 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 state] != 1)
  {
    v29 = _s17PinchGestureStateVMa(0);
    v26 = *(*(v29 - 8) + 56);
    v27 = v29;
    v28 = a2;
    goto LABEL_5;
  }

  v120 = v15;
  v121 = a2;
  [a1 locationInView_];
  v17 = v16;
  v19 = v18;
  v20 = a1;
  v21 = &v2[qword_1EA9F8538];
  v22 = *&v2[qword_1EA9F8538 + 144];
  v23 = sub_18BC1E1A8();
  v22(v129, v23, v17, v19);

  v24 = v130;
  if (v130 != 2)
  {
    v30 = *v129;
    v31 = *&v129[1];
    v33 = *&v129[2];
    v32 = *&v129[3];
    v34 = v129[4];
    v119 = v131;
    v118 = v20;
    [v20 locationInView_];
    v36 = v35;
    v38 = v37;
    v39 = sub_18B7EBEFC();
    sub_18B7EC6E4(v39 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v10, _s7ContentVMa_4);

    sub_18B7CA054(&v10[*(v8 + 24)], v7, &qword_1EA9DBE00, &unk_18BC41860);
    sub_18B7ED118(v10, _s7ContentVMa_4);
    if ((*(v12 + 48))(v7, 1, v11) == 1)
    {
      sub_18B988BAC(v7, &qword_1EA9DBE00, &unk_18BC41860);
LABEL_17:
      v63 = _s17PinchGestureStateVMa(0);
      v64 = *(*(v63 - 8) + 56);
      v65 = v121;
      goto LABEL_18;
    }

    v40 = v120;
    sub_18B80D554(v7, v120, _s4ItemVMa_4);
    v117 = v2;
    v41 = sub_18B86286C(v40, 0xD000000000000014, 0x800000018BC60730, sub_18BB8B258);
    if (!v41)
    {
LABEL_16:
      sub_18B7ED118(v40, _s4ItemVMa_4);
      goto LABEL_17;
    }

    v42 = v41;
    type metadata accessor for TabThumbnailView();
    v43 = swift_dynamicCastClass();
    if (v43)
    {
      v44 = v43;
      v45 = v24 & 1;
      v46 = v119;
      v116 = v32;
      v115 = v34;
      v114 = v36;
      v113 = v38;
      v112 = v45;
      if (v119)
      {
        v47 = v117;
        v48 = sub_18B7EBEFC() + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetForBeginningPinch;
        *v48 = v30;
        *(v48 + 8) = v31;
        *(v48 + 16) = v33;
        *(v48 + 24) = v32;
        *(v48 + 32) = v34;
        *(v48 + 40) = v45;

        [v44 _removeAllRetargetableAnimations_];
        v49 = swift_allocObject();
        *(v49 + 16) = v44;
        *(v49 + 24) = v30;
        *(v49 + 32) = v31;
        *(v49 + 40) = v33;
        *(v49 + 48) = v32;
        *(v49 + 56) = v34;
        *(v49 + 64) = v45;
        v50 = objc_opt_self();
        v51 = swift_allocObject();
        *(v51 + 16) = sub_18BC0D9C4;
        *(v51 + 24) = v49;
        v52 = swift_allocObject();
        *(v52 + 16) = sub_18B9D53AC;
        *(v52 + 24) = v51;
        v126 = sub_18B9D53B0;
        v127 = v52;
        aBlock = MEMORY[0x1E69E9820];
        v123 = 1107296256;
        v124 = sub_18B7E3BF4;
        v125 = COERCE_DOUBLE(&block_descriptor_269);
        v53 = _Block_copy(&aBlock);
        v54 = v42;
        sub_18BC1E1A8();
        sub_18BC1E1A8();

        [v50 performWithoutAnimation_];
        v55 = v47;
        _Block_release(v53);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        v57 = v30;
        v58 = v31;
        v59 = v33;
        v60 = v32;
        v61 = v121;
        v62 = v118;
        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
          goto LABEL_15;
        }
      }

      else
      {
        v66 = *(v21 + 4);
        sub_18BC1E1A8();
        v67 = v66(v40);

        if (v67)
        {
          v68 = v42;
          v69 = v42;
          [v44 _removeAllRetargetableAnimations_];
          v70 = swift_allocObject();
          *(v70 + 16) = v44;
          *(v70 + 24) = v67;
          v111 = objc_opt_self();
          v71 = swift_allocObject();
          *(v71 + 16) = sub_18BC0D9BC;
          *(v71 + 24) = v70;
          v72 = swift_allocObject();
          *(v72 + 16) = sub_18B9D53AC;
          *(v72 + 24) = v71;
          v126 = sub_18B9D53B0;
          v127 = v72;
          aBlock = MEMORY[0x1E69E9820];
          v123 = 1107296256;
          v124 = sub_18B7E3BF4;
          v125 = COERCE_DOUBLE(&block_descriptor_255);
          v73 = _Block_copy(&aBlock);
          v110 = v69;
          v74 = v67;
          sub_18BC1E1A8();
          sub_18BC1E1A8();

          [v111 performWithoutAnimation_];
          _Block_release(v73);
          v75 = swift_isEscapingClosureAtFileLocation();

          if (v75)
          {
            __break(1u);
            return;
          }

          [v44 frame];
          v57 = v76;
          v58 = v77;
          v59 = v78;
          v60 = v79;

          v61 = v121;
          v62 = v118;
          v42 = v68;
          v55 = v117;
        }

        else
        {
          v74 = [v44 layer];
          v80 = [v74 presentationLayer];
          if (v80)
          {
            v81 = v80;

            v74 = v81;
          }

          v61 = v121;
          v62 = v118;
          v55 = v117;
          [v74 frame];
          v57 = v82;
          v58 = v83;
          v59 = v84;
          v60 = v85;
        }

        v46 = v119;
      }

      [v62 scale];
      v87 = v86;
      v133.origin.x = v57;
      v133.origin.y = v58;
      v133.size.width = v59;
      v133.size.height = v60;
      v88 = v87 * CGRectGetWidth(v133);
      [v55 bounds];
      v89 = v88 / CGRectGetWidth(v134);
      v90 = (*&v89 >> 52) & 0x7FFLL;
      if (v90 && v90 != 2047)
      {
        [v62 setScale_];
        v102 = _s17PinchGestureStateVMa(0);
        sub_18B7EC6E4(v40, *&v61 + v102[13], _s4ItemVMa_4);
        v135.origin.x = v57;
        v135.origin.y = v58;
        v135.size.width = v59;
        v135.size.height = v60;
        MidX = CGRectGetMidX(v135);
        v121 = v33;
        v104 = MidX;
        v136.origin.x = v57;
        v136.origin.y = v58;
        v136.size.width = v59;
        v136.size.height = v60;
        MidY = CGRectGetMidY(v136);

        sub_18B7ED118(v40, _s4ItemVMa_4);
        v106 = v114;
        v107 = v113;
        **&v61 = 0;
        *(*&v61 + 8) = 0;
        *(*&v61 + 16) = 0;
        *(*&v61 + 24) = 1;
        *(*&v61 + 32) = 0x3FF0000000000000;
        *(*&v61 + 40) = 0;
        *(*&v61 + 48) = 0;
        *(*&v61 + 56) = 0x3FF0000000000000;
        *(*&v61 + v102[15]) = 0;
        *(*&v61 + v102[16]) = 0;
        *(*&v61 + v102[17]) = 0;
        *(*&v61 + 64) = v46 & 1;
        *(*&v61 + 72) = (v106 - v104) / v89;
        *(*&v61 + 80) = (v107 - MidY) / v89;
        *(*&v61 + 88) = v106;
        *(*&v61 + 96) = v107;
        v108 = *&v61 + v102[14];
        *v108 = v30;
        *(v108 + 8) = v31;
        v109 = v116;
        *(v108 + 16) = v121;
        *(v108 + 24) = v109;
        *(v108 + 32) = v115;
        *(v108 + 40) = v112;
        (*(*(v102 - 1) + 56))(COERCE_DOUBLE(*&v61), 0, 1, v102);
        return;
      }

      if (qword_1EA9D22A0 != -1)
      {
        swift_once();
      }

      v91 = sub_18BC1F2C8();
      __swift_project_value_buffer(v91, qword_1EA9F7E98);
      v92 = sub_18BC1F2A8();
      v93 = sub_18BC21238();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = v40;
        v95 = swift_slowAlloc();
        v96 = v42;
        v97 = swift_slowAlloc();
        v128 = v97;
        *v95 = 136315138;
        aBlock = v57;
        v123 = *&v58;
        v124 = *&v59;
        v125 = v60;
        type metadata accessor for CGRect(0);
        v98 = sub_18BC20BF8();
        v100 = sub_18B7EA850(v98, v99, &v128);

        *(v95 + 4) = v100;
        _os_log_impl(&dword_18B7AC000, v92, v93, "QuickTabSwitcher is attempting pinch gesture on item with invalid layout or bounds: %s", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v97);
        MEMORY[0x18CFFEEE0](v97, -1, -1);
        MEMORY[0x18CFFEEE0](v95, -1, -1);

        v101 = v94;
      }

      else
      {

        v101 = v40;
      }

      sub_18B7ED118(v101, _s4ItemVMa_4);
      v63 = _s17PinchGestureStateVMa(0);
      v64 = *(*(v63 - 8) + 56);
      v65 = v61;
LABEL_18:
      v64(*&v65, 1, 1, v63);
      return;
    }

LABEL_15:

    goto LABEL_16;
  }

  v25 = _s17PinchGestureStateVMa(0);
  v26 = *(*(v25 - 8) + 56);
  v27 = v25;
  v28 = v121;
LABEL_5:

  v26(*&v28, 1, 1, v27);
}

id sub_18BBFC5A0(char *a1, uint64_t a2)
{
  [a1 setFrame_];
  v4 = *(a2 + 32);
  v5 = &a1[OBJC_IVAR___SFTabThumbnailView_metrics];
  v6 = *&a1[OBJC_IVAR___SFTabThumbnailView_metrics + 112];
  v7 = *&a1[OBJC_IVAR___SFTabThumbnailView_metrics + 144];
  v55 = *&a1[OBJC_IVAR___SFTabThumbnailView_metrics + 128];
  v8 = v55;
  v56 = v7;
  v9 = *&a1[OBJC_IVAR___SFTabThumbnailView_metrics + 48];
  v10 = *&a1[OBJC_IVAR___SFTabThumbnailView_metrics + 80];
  v51 = *&a1[OBJC_IVAR___SFTabThumbnailView_metrics + 64];
  v11 = v51;
  v52 = v10;
  *(v5 + 10) = v4;
  v12 = *(v5 + 7);
  v13 = *(v5 + 5);
  v53 = *(v5 + 6);
  v54 = v12;
  v14 = *(v5 + 1);
  v48[0] = *v5;
  v48[1] = v14;
  v15 = *(v5 + 3);
  v17 = *v5;
  v16 = *(v5 + 1);
  v49 = *(v5 + 2);
  v50 = v15;
  v18 = *(v5 + 9);
  v46[8] = v8;
  v46[9] = v18;
  v46[6] = v53;
  v46[7] = v6;
  v46[0] = v17;
  v46[1] = v16;
  v46[2] = v49;
  v46[3] = v9;
  v57 = *(v5 + 20);
  v47 = *(v5 + 20);
  v46[4] = v11;
  v46[5] = v13;
  if (!sub_18BA1A2E4(v46, v48))
  {
    sub_18BA18DB4();
  }

  v19 = *(v5 + 7);
  v20 = *(v5 + 9);
  v43 = *(v5 + 8);
  v21 = v43;
  v44 = v20;
  v23 = *(v5 + 3);
  v22 = *(v5 + 4);
  *(v5 + 8) = 0;
  v25 = *(v5 + 4);
  v24 = *(v5 + 5);
  v39 = v22;
  v40 = v24;
  v26 = *(v5 + 5);
  v27 = *(v5 + 7);
  v41 = *(v5 + 6);
  v42 = v27;
  v28 = *(v5 + 1);
  v36[0] = *v5;
  v36[1] = v28;
  v29 = *(v5 + 3);
  v31 = *v5;
  v30 = *(v5 + 1);
  v37 = *(v5 + 2);
  v38 = v29;
  v32 = *(v5 + 9);
  v34[8] = v21;
  v34[9] = v32;
  v34[6] = v41;
  v34[7] = v19;
  v34[0] = v31;
  v34[1] = v30;
  v34[2] = v37;
  v34[3] = v23;
  v45 = *(v5 + 20);
  v35 = *(v5 + 20);
  v34[4] = v25;
  v34[5] = v26;
  if (!sub_18BA1A2E4(v34, v36))
  {
    sub_18BA18DB4();
  }

  return [a1 layoutIfNeeded];
}

id sub_18BBFC710(char *a1, void *a2)
{
  v4 = [a1 layer];
  v5 = [a2 layer];
  v6 = [v5 presentationLayer];
  if (v6)
  {
    v7 = v6;

    v5 = v7;
  }

  sub_18BAE348C(v5);

  v8 = &a1[OBJC_IVAR___SFTabThumbnailView_metrics];
  v9 = *&a1[OBJC_IVAR___SFTabThumbnailView_metrics + 112];
  v10 = *&a1[OBJC_IVAR___SFTabThumbnailView_metrics + 144];
  v33 = *&a1[OBJC_IVAR___SFTabThumbnailView_metrics + 128];
  v11 = v33;
  v34 = v10;
  v13 = *&a1[OBJC_IVAR___SFTabThumbnailView_metrics + 48];
  v12 = *&a1[OBJC_IVAR___SFTabThumbnailView_metrics + 64];
  *(v8 + 8) = 0x3FF0000000000000;
  v15 = *(v8 + 4);
  v14 = *(v8 + 5);
  v29 = v12;
  v30 = v14;
  v16 = *(v8 + 5);
  v17 = *(v8 + 7);
  v31 = *(v8 + 6);
  v32 = v17;
  v18 = *(v8 + 1);
  v26[0] = *v8;
  v26[1] = v18;
  v19 = *(v8 + 3);
  v21 = *v8;
  v20 = *(v8 + 1);
  v27 = *(v8 + 2);
  v28 = v19;
  v22 = *(v8 + 9);
  v24[8] = v11;
  v24[9] = v22;
  v24[6] = v31;
  v24[7] = v9;
  v24[0] = v21;
  v24[1] = v20;
  v24[2] = v27;
  v24[3] = v13;
  v35 = *(v8 + 20);
  v25 = *(v8 + 20);
  v24[4] = v15;
  v24[5] = v16;
  if (!sub_18BA1A2E4(v24, v26))
  {
    sub_18BA18DB4();
  }

  [a1 setNeedsLayout];

  return [a1 layoutIfNeeded];
}

void sub_18BBFC870(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9360, &unk_18BC558E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v422 = &v404 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v421 = &v404 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE38, &qword_18BC55918);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v428 = &v404 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v433 = &v404 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v413 = (&v404 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v412 = (&v404 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v416 = &v404 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v418 = (&v404 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v417 = (&v404 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v419 = &v404 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v424 = &v404 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v443 = &v404 - v28;
  v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE40, &unk_18BC55920);
  MEMORY[0x1EEE9AC00](v440);
  v423 = &v404 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v437 = &v404 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9260, &qword_18BC4CB40);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v444 = &v404 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v449 = &v404 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE00, &unk_18BC41860);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v420 = &v404 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v425 = &v404 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v431 = &v404 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v427 = &v404 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v441 = &v404 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v432 = &v404 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v442 = &v404 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v447 = &v404 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v54 = (&v404 - v53);
  v55 = _s7ContentVMa_4(0);
  v445 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v426 = &v404 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v404 - v58;
  MEMORY[0x1EEE9AC00](v60);
  v411 = &v404 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v410 = &v404 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v415 = &v404 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v414 = &v404 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v439 = (&v404 - v69);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v404 - v71;
  v73 = _s4ItemVMa_4(0);
  v453 = *(v73 - 8);
  v454 = v73;
  MEMORY[0x1EEE9AC00](v73);
  v430 = &v404 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v429 = &v404 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v452 = &v404 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4520, &unk_18BC41850);
  MEMORY[0x1EEE9AC00](v79 - 8);
  v438 = &v404 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81);
  v436 = &v404 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v446 = &v404 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v404 - v86;
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v404 - v89;
  v91 = _s17PinchGestureStateVMa(0);
  v456 = *(v91 - 1);
  v457 = v91;
  MEMORY[0x1EEE9AC00](v91);
  v448 = &v404 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v93);
  v434 = v95;
  v435 = &v404 - v94;
  *&v97 = MEMORY[0x1EEE9AC00](v96).n128_u64[0];
  v455 = &v404 - v98;
  v459 = [a1 state];
  if (v459 == 1)
  {
    v458 = v90;
    v99 = *&v1[qword_1EA9F8538 + 176];
    sub_18BC1E1A8();
    LOBYTE(v99) = v99([a1 scale]);
    v90 = v458;

    if ((v99 & 1) == 0)
    {
      return;
    }
  }

  v450 = v55;
  v451 = a1;
  v409 = v59;
  sub_18BBF6E48(v459);
  v100 = sub_18B7EBEFC();
  v101 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState;
  swift_beginAccess();
  sub_18B7CA054(v100 + v101, v87, &qword_1EA9D4520, &unk_18BC41850);

  v102 = v456;
  v103 = v457;
  v104 = (v456 + 48);
  v105 = *(v456 + 48);
  v106 = (v105)(v87, 1, v457);
  v458 = v1;
  if (v106 == 1)
  {
    sub_18BBFB8F0(v451, *&v90);
    if ((v105)(v87, 1, v103) != 1)
    {
      sub_18B988BAC(v87, &qword_1EA9D4520, &unk_18BC41850);
    }
  }

  else
  {
    sub_18B80D554(v87, v90, _s17PinchGestureStateVMa);
    (*(v102 + 56))(v90, 0, 1, v103);
  }

  if ((v105)(v90, 1, v103) == 1)
  {
    sub_18B988BAC(v90, &qword_1EA9D4520, &unk_18BC41850);
    if (v459 != 1)
    {
      return;
    }

    v107 = *&v458[qword_1EA9F8558];
    v108 = *(v107 + 24);
    v109 = __OFSUB__(v108, 1);
    v110 = v108 - 1;
    if (!v109)
    {
      *(v107 + 24) = v110;
      if (!v110)
      {
        swift_beginAccess();
        v111 = *(v107 + 16);
        v112 = *(v111 + 16);
        if (v112)
        {
          sub_18BC1E3F8();
          v113 = v111 + 40;
          do
          {
            v114 = *(v113 - 8);
            LOBYTE(v466) = *(v107 + 24) > 0;
            sub_18BC1E1A8();
            v114(&v466);

            v113 += 16;
            --v112;
          }

          while (v112);
LABEL_35:

          return;
        }
      }

      return;
    }

    __break(1u);
    goto LABEL_152;
  }

  v115 = v90;
  v116 = v455;
  sub_18B80D554(v115, v455, _s17PinchGestureStateVMa);
  v87 = sub_18B7EBEFC();
  sub_18B7EC6E4(&v87[OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content], v72, _s7ContentVMa_4);

  sub_18B7CA054(&v72[*(v450 + 24)], v54, &qword_1EA9DBE00, &unk_18BC41860);
  sub_18B7ED118(v72, _s7ContentVMa_4);
  v118 = (v453 + 6);
  v117 = v453[6];
  if (v117(v54, 1, v454) == 1)
  {
    sub_18B988BAC(v54, &qword_1EA9DBE00, &unk_18BC41860);
    goto LABEL_29;
  }

  v87 = v452;
  sub_18B80D554(v54, v452, _s4ItemVMa_4);
  v54 = 0x800000018BC60730;
  v119 = sub_18B86286C(v87, 0xD000000000000014, 0x800000018BC60730, sub_18BB8B258);
  if (!v119)
  {
LABEL_28:
    sub_18B7ED118(v87, _s4ItemVMa_4);
LABEL_29:
    v149 = v458;
    sub_18BBFAB84();
    sub_18B7ED118(v116, _s17PinchGestureStateVMa);
    if (v459 != 1)
    {
      return;
    }

    v150 = *&v149[qword_1EA9F8558];
    v151 = *(v150 + 24);
    v109 = __OFSUB__(v151, 1);
    v152 = v151 - 1;
    if (!v109)
    {
      *(v150 + 24) = v152;
      if (!v152)
      {
        swift_beginAccess();
        v153 = *(v150 + 16);
        v154 = *(v153 + 16);
        if (v154)
        {
          sub_18BC1E3F8();
          v155 = v153 + 40;
          do
          {
            v156 = *(v155 - 8);
            LOBYTE(v466) = *(v150 + 24) > 0;
            sub_18BC1E1A8();
            v156(&v466);

            v155 += 16;
            --v154;
          }

          while (v154);
          goto LABEL_35;
        }
      }

      return;
    }

LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    swift_once();
    goto LABEL_72;
  }

  v120 = v119;
  type metadata accessor for TabThumbnailView();
  v121 = swift_dynamicCastClass();
  if (!v121)
  {

    goto LABEL_28;
  }

  v405 = v121;
  v407 = 0x800000018BC60730;
  v408 = v120;
  v72 = v458;
  v122 = sub_18B7EBEFC();
  v123 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState;
  swift_beginAccess();
  v87 = v449;
  sub_18B7CA054(v122 + v123, v449, &qword_1EA9D9260, &qword_18BC4CB40);

  v54 = _s15PanGestureStateVMa(0);
  v406 = *(v54 - 1);
  LODWORD(v122) = (*(v406 + 48))(v87, 1, v54);
  sub_18B988BAC(v87, &qword_1EA9D9260, &qword_18BC4CB40);
  if (v122 != 1)
  {
    sub_18BBFAB84();

    sub_18B7ED118(v452, _s4ItemVMa_4);
    sub_18B7ED118(v455, _s17PinchGestureStateVMa);
    if (v459 != 1)
    {
      return;
    }

    v157 = *&v72[qword_1EA9F8558];
    v158 = *(v157 + 24);
    v109 = __OFSUB__(v158, 1);
    v159 = v158 - 1;
    if (!v109)
    {
      *(v157 + 24) = v159;
      if (!v159)
      {
        swift_beginAccess();
        v160 = *(v157 + 16);
        v161 = *(v160 + 16);
        if (v161)
        {
          sub_18BC1E3F8();
          v162 = v160 + 40;
          do
          {
            v163 = *(v162 - 8);
            LOBYTE(v466) = *(v157 + 24) > 0;
            sub_18BC1E1A8();
            v163(&v466);

            v162 += 16;
            --v161;
          }

          while (v161);
          goto LABEL_35;
        }
      }

      return;
    }

    goto LABEL_153;
  }

  v404 = v54;
  v449 = v117;
  v124 = sub_18B7EBEFC();
  v125 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState;
  swift_beginAccess();
  v126 = v446;
  sub_18B7CA054(v124 + v125, v446, &qword_1EA9D4520, &unk_18BC41850);

  LODWORD(v124) = (v105)(v126, 1, v457);
  sub_18B988BAC(v126, &qword_1EA9D4520, &unk_18BC41850);
  v72 = v452;
  v127 = v453;
  v128 = v454;
  if (v124 != 1 || v459 != 1)
  {
    v164 = v447;
    sub_18B7EC6E4(v452, v447, _s4ItemVMa_4);
    v165 = v127[7];
    v165(v164, 0, 1, v128);
    v166 = sub_18B7EBEFC();
    v167 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState;
    swift_beginAccess();
    v168 = v166 + v167;
    v169 = v436;
    sub_18B7CA054(v168, v436, &qword_1EA9D4520, &unk_18BC41850);

    v170 = v457;
    if ((v105)(v169, 1, v457))
    {
      sub_18B988BAC(v169, &qword_1EA9D4520, &unk_18BC41850);
      v171 = 1;
      v172 = v437;
      v173 = v442;
    }

    else
    {
      v174 = v169;
      v175 = v169;
      v176 = v435;
      sub_18B7EC6E4(v174, v435, _s17PinchGestureStateVMa);
      sub_18B988BAC(v175, &qword_1EA9D4520, &unk_18BC41850);
      v173 = v442;
      sub_18B80D554(v176 + v170[13], v442, _s4ItemVMa_4);
      v171 = 0;
      v172 = v437;
    }

    v165(v173, v171, 1, v128);
    v177 = *(v440 + 48);
    v178 = v447;
    sub_18B7CA054(v447, v172, &qword_1EA9DBE00, &unk_18BC41860);
    sub_18B7CA054(v173, v172 + v177, &qword_1EA9DBE00, &unk_18BC41860);
    v179 = v449;
    if ((v449)(v172, 1, v128) == 1)
    {
      sub_18B988BAC(v173, &qword_1EA9DBE00, &unk_18BC41860);
      sub_18B988BAC(v178, &qword_1EA9DBE00, &unk_18BC41860);
      v180 = (v179)(v172 + v177, 1, v128);
      v72 = v452;
      if (v180 == 1)
      {
        sub_18B988BAC(v172, &qword_1EA9DBE00, &unk_18BC41860);
        goto LABEL_22;
      }
    }

    else
    {
      v181 = v432;
      sub_18B7CA054(v172, v432, &qword_1EA9DBE00, &unk_18BC41860);
      if ((v179)(v172 + v177, 1, v128) != 1)
      {
        v284 = v172 + v177;
        v285 = v429;
        sub_18B80D554(v284, v429, _s4ItemVMa_4);
        updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        sub_18B7ED118(v285, _s4ItemVMa_4);
        sub_18B988BAC(v442, &qword_1EA9DBE00, &unk_18BC41860);
        sub_18B988BAC(v447, &qword_1EA9DBE00, &unk_18BC41860);
        sub_18B7ED118(v181, _s4ItemVMa_4);
        sub_18B988BAC(v172, &qword_1EA9DBE00, &unk_18BC41860);
        v72 = v452;
        if (updated)
        {
          goto LABEL_22;
        }

LABEL_55:
        v182 = v458;
        sub_18BBFAB84();

        sub_18B7ED118(v72, _s4ItemVMa_4);
        sub_18B7ED118(v455, _s17PinchGestureStateVMa);
        if (v459 != 1)
        {
          return;
        }

        v183 = *&v182[qword_1EA9F8558];
        v184 = *(v183 + 24);
        v109 = __OFSUB__(v184, 1);
        v185 = v184 - 1;
        if (!v109)
        {
          *(v183 + 24) = v185;
          if (!v185)
          {
            swift_beginAccess();
            v186 = *(v183 + 16);
            v187 = *(v186 + 16);
            if (v187)
            {
              sub_18BC1E3F8();
              v188 = v186 + 40;
              do
              {
                v189 = *(v188 - 8);
                LOBYTE(v466) = *(v183 + 24) > 0;
                sub_18BC1E1A8();
                v189(&v466);

                v188 += 16;
                --v187;
              }

              while (v187);
              goto LABEL_35;
            }
          }

          return;
        }

        goto LABEL_158;
      }

      sub_18B988BAC(v442, &qword_1EA9DBE00, &unk_18BC41860);
      sub_18B988BAC(v447, &qword_1EA9DBE00, &unk_18BC41860);
      sub_18B7ED118(v181, _s4ItemVMa_4);
      v72 = v452;
    }

    sub_18B988BAC(v172, &unk_1EA9DBE40, &unk_18BC55920);
    goto LABEL_55;
  }

LABEL_22:
  v129 = qword_1EA9DBDC0;
  v105 = v458;
  *&v470 = *&v458[qword_1EA9DBDC0];
  sub_18BC1E3F8();
  v130 = v441;
  sub_18B9CE0A8(v441);
  sub_18B988BAC(v130, &qword_1EA9DBE00, &unk_18BC41860);
  v131 = *&v105[v129];
  *&v105[v129] = v470;
  sub_18BBFA93C(v131);

  v132 = v451;
  [v451 locationInView_];
  v134 = v133;
  v136 = v135;
  v54 = &selRef_progressTintColor;
  [v132 scale];
  v2 = v137;
  v104 = &selRef_performSearchUsingQuery_;
  [v132 velocity];
  v139 = v138;
  v140 = (v459 - 1);
  if (v459 == 1)
  {
    v141 = *&v105[qword_1EA9F8538 + 224];
    v142 = *(v455 + 64);
    sub_18BC1E1A8();
    v141(v72, v142);
  }

  v87 = &v105[qword_1EA9F8568];
  v3 = *&v105[qword_1EA9F8568 + 128];
  v143 = v448;
  sub_18B7EC6E4(v455, v448, _s17PinchGestureStateVMa);
  *(v143 + 32) = *(v143 + 56);
  *(v143 + 40) = v134;
  *(v143 + 48) = v136;
  *(v143 + 56) = v2;
  v144 = fabs(v139);
  v145 = v144 < 0.5;
  v146 = v457;
  v147 = v457[15];
  if (*(v143 + v147) == 1)
  {
    *(v143 + v147) = 1;
    v148 = v146[16];
    if ((*(v143 + v148) & 1) == 0)
    {
      goto LABEL_64;
    }

LABEL_47:
    v145 = 1;
    goto LABEL_64;
  }

  *(v143 + v147) = v144 > 1.5;
  v148 = v146[16];
  if (*(v143 + v148) == 1)
  {
    goto LABEL_47;
  }

  v145 = v144 > 1.5;
  if (v144 >= 0.5)
  {
    v145 = 0;
  }

LABEL_64:
  *(v143 + v148) = v145;
  *v143 = v2 < v3;
  if (v2 < v3)
  {
    v145 = 0;
    *(v143 + v148) = 0;
    *(v143 + v457[17]) = 0;
  }

  v190 = vabdd_f64(v134, *(v143 + 88));
  if (v190 > 50.0 && vabdd_f64(v136, *(v143 + 96)) < v190)
  {
    *(v143 + v457[17]) = 1;
  }

  *(v143 + 24) = (*(v143 + v457[17]) | v145) & (v2 >= v3);
  if (v140 < 2)
  {
    if (qword_1EA9D21D0 == -1)
    {
      goto LABEL_77;
    }

    goto LABEL_156;
  }

  v191 = v455;
  if ((v459 - 3) >= 2)
  {

    sub_18B7ED118(v143, _s17PinchGestureStateVMa);
    sub_18B7ED118(v72, _s4ItemVMa_4);
    sub_18B7ED118(v191, _s17PinchGestureStateVMa);
    return;
  }

  v441 = v118;
  v442 = qword_1EA9DBD80;
  v105[qword_1EA9DBD80] = 1;
  if (qword_1EA9D21D0 != -1)
  {
    goto LABEL_154;
  }

LABEL_72:
  v192 = qword_1EA9F7A60;
  v193 = *(v445 + 56);
  v194 = v443;
  v193(v443, 1, 1, v450);
  v446 = v192;
  swift_retain_n();
  if (v459 != 3)
  {
    goto LABEL_99;
  }

  v195 = sub_18B7C453C();
  [v195 presentationValue];
  v197 = v196;

  v198 = sub_18B7C3778();
  [v198 translationInView_];
  v200 = v199;
  [v198 velocityInView_];
  v202 = v201;

  v203 = v451;
  [v451 v54[300]];
  v3 = v204;
  [v203 v104[458]];
  v206 = v3 + v205 * 0.25;
  v207 = *(v87 + 16);
  LODWORD(v451) = v206 < v207;
  if (v206 >= v207)
  {
    if (v197 > 0.3)
    {
      v2 = (v200 + v202 * 0.25) / v2;
      if (CGRectGetWidth(*(v87 + 48)) * 0.33 < v2)
      {
        v287 = v87[104];
        v288 = sub_18B7EBEFC();
        v447 = (v445 + 48);
        if (v287 == 1)
        {
          v289 = v414;
          sub_18B7EC6E4(v288 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v414, _s7ContentVMa_4);

          v290 = v417;
          sub_18B9A8824(1, v417);
          sub_18B988BAC(v194, &qword_1EA9DBE38, &qword_18BC55918);
          v291 = *v447;
          v292 = v290;
          v293 = v450;
          if ((*v447)(v292, 1, v450) == 1)
          {
            sub_18B80D554(v289, v419, _s7ContentVMa_4);
            v294 = v417;
LABEL_139:
            if (v291(v294, 1, v293) != 1)
            {
              sub_18B988BAC(v294, &qword_1EA9DBE38, &qword_18BC55918);
            }

            v210 = v419;
            goto LABEL_75;
          }

          sub_18B7ED118(v289, _s7ContentVMa_4);
          v399 = v417;
        }

        else
        {
          v396 = v415;
          sub_18B7EC6E4(v288 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v415, _s7ContentVMa_4);

          v397 = v418;
          sub_18B9A8824(-1, v418);
          sub_18B988BAC(v194, &qword_1EA9DBE38, &qword_18BC55918);
          v291 = *v447;
          v398 = v397;
          v293 = v450;
          if ((*v447)(v398, 1, v450) == 1)
          {
            sub_18B80D554(v396, v419, _s7ContentVMa_4);
            v294 = v418;
            goto LABEL_139;
          }

          sub_18B7ED118(v396, _s7ContentVMa_4);
          v399 = v418;
        }

        v210 = v419;
        sub_18B80D554(v399, v419, _s7ContentVMa_4);
        goto LABEL_75;
      }

      if (v2 < CGRectGetWidth(*(v87 + 48)) * -0.33)
      {
        v295 = v87[104];
        v296 = sub_18B7EBEFC();
        v447 = (v445 + 48);
        if (v295 == 1)
        {
          v297 = v410;
          sub_18B7EC6E4(v296 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v410, _s7ContentVMa_4);

          v298 = v412;
          sub_18B9A8824(-1, v412);
          sub_18B988BAC(v194, &qword_1EA9DBE38, &qword_18BC55918);
          v299 = *v447;
          v300 = (*v447)(v298, 1, v450);
          v301 = v416;
          if (v300 == 1)
          {
            v302 = v297;
            v303 = v416;
            sub_18B80D554(v302, v416, _s7ContentVMa_4);
            if (v299(v298, 1, v450) != 1)
            {
              v304 = v412;
LABEL_146:
              sub_18B988BAC(v304, &qword_1EA9DBE38, &qword_18BC55918);
              goto LABEL_147;
            }

            goto LABEL_147;
          }
        }

        else
        {
          v297 = v411;
          sub_18B7EC6E4(v296 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v411, _s7ContentVMa_4);

          v298 = v413;
          sub_18B9A8824(1, v413);
          sub_18B988BAC(v194, &qword_1EA9DBE38, &qword_18BC55918);
          v400 = *v447;
          v401 = (*v447)(v298, 1, v450);
          v301 = v416;
          if (v401 == 1)
          {
            v402 = v297;
            v303 = v416;
            sub_18B80D554(v402, v416, _s7ContentVMa_4);
            if (v400(v298, 1, v450) != 1)
            {
              v304 = v413;
              goto LABEL_146;
            }

LABEL_147:
            v210 = v303;
            goto LABEL_75;
          }
        }

        v403 = v301;
        sub_18B7ED118(v297, _s7ContentVMa_4);
        sub_18B80D554(v298, v403, _s7ContentVMa_4);
        v210 = v403;
        goto LABEL_75;
      }
    }

LABEL_99:
    LODWORD(v451) = 0;
    goto LABEL_100;
  }

  v208 = *&v105[qword_1EA9F8538 + 80];
  sub_18BC1E1A8();
  v208(v72);

  v209 = sub_18B7EBEFC();
  sub_18B988BAC(v194, &qword_1EA9DBE38, &qword_18BC55918);
  v210 = v424;
  sub_18B7EC6E4(v209 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v424, _s7ContentVMa_4);

LABEL_75:
  v193(v210, 0, 1, v450);
  sub_18BC0D874(v210, v194);
LABEL_100:
  v305 = swift_allocObject();
  *(v305 + 16) = v105;
  v306 = objc_opt_self();
  v307 = swift_allocObject();
  *(v307 + 16) = sub_18BC0D86C;
  *(v307 + 24) = v305;
  v308 = swift_allocObject();
  *(v308 + 16) = sub_18B7D1EC4;
  *(v308 + 24) = v307;
  *&v472 = sub_18B7D1E94;
  *(&v472 + 1) = v308;
  *&v470 = MEMORY[0x1E69E9820];
  *(&v470 + 1) = 1107296256;
  *&v471 = sub_18B7E3BF4;
  *(&v471 + 1) = &block_descriptor_67;
  v309 = _Block_copy(&v470);
  v447 = v105;
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v306 performWithoutAnimation_];
  _Block_release(v309);
  LOBYTE(v306) = swift_isEscapingClosureAtFileLocation();

  if ((v306 & 1) == 0)
  {
    v310 = v433;
    sub_18B7CA054(v194, v433, &qword_1EA9DBE38, &qword_18BC55918);
    v311 = v445 + 48;
    v312 = *(v445 + 48);
    v313 = v450;
    v314 = (v312)(v310, 1, v450);
    v315 = v409;
    v445 = v311;
    v439 = v312;
    if (v314 == 1)
    {
      v316 = sub_18B7EBEFC();
      sub_18B7EC6E4(v316 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v315, _s7ContentVMa_4);

      v317 = (v312)(v310, 1, v313);
      v318 = v456;
      if (v317 != 1)
      {
        sub_18B988BAC(v310, &qword_1EA9DBE38, &qword_18BC55918);
      }
    }

    else
    {
      sub_18B80D554(v310, v409, _s7ContentVMa_4);
      v318 = v456;
    }

    v319 = *(v87 + 1);
    v470 = *v87;
    v471 = v319;
    v320 = *(v87 + 3);
    v472 = *(v87 + 2);
    v473 = v320;
    v321 = *(v87 + 8);
    v322 = *(v87 + 9);
    v323 = *(v87 + 6);
    v466 = *(v87 + 5);
    v467 = v323;
    v468 = *(v87 + 7);
    v469 = *(v87 + 16);
    v324 = *(v87 + 17);
    v325 = *(v87 + 18);
    v326 = *(v406 + 56);
    v327 = v444;
    v328 = v404;
    v326(v444, 1, 1, v404);
    v329 = *(v318 + 56);
    v330 = v438;
    v331 = v457;
    v329(v438, 1, 1, v457);
    _s6LayoutCMa_3(0);
    v224 = swift_allocObject();
    v326(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState, 1, 1, v328);
    v329(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState, 1, 1, v331);
    v332 = v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetForBeginningPinch;
    *v332 = 0u;
    *(v332 + 16) = 0u;
    *(v332 + 40) = 2;
    *(v332 + 32) = 0;
    *(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_cornerRadiusForPinchingItem) = 0;
    *(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_heightPercentageForPinchingItem) = 0x3FF0000000000000;
    *(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_contentInsetsVisibilityForPinchingItem) = 0x3FF0000000000000;
    *(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_visibilityForNeighboringItemsDuringGesture) = 0;
    *(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetCornerRadiusForPinchingItem) = 0;
    *(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetHeightPercentageForPinchingItem) = 0x3FF0000000000000;
    *(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_itemTypes) = &unk_1EFF1AFE0;
    v333 = v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_scrollViewState;
    v334 = *MEMORY[0x1E69DDCE0];
    v335 = *(MEMORY[0x1E69DDCE0] + 8);
    v336 = *(MEMORY[0x1E69DDCE0] + 16);
    v337 = *(MEMORY[0x1E69DDCE0] + 24);
    *v333 = *MEMORY[0x1E69DDCE0];
    *(v333 + 8) = v335;
    *(v333 + 16) = v336;
    *(v333 + 24) = v337;
    *(v333 + 32) = 0u;
    *(v333 + 48) = 0u;
    *(v333 + 64) = v334;
    *(v333 + 72) = v335;
    *(v333 + 80) = v336;
    *(v333 + 88) = v337;
    *(v333 + 112) = 0u;
    *(v333 + 128) = 0u;
    *(v333 + 96) = 0u;
    *(v333 + 144) = 0;
    v338 = v409;
    sub_18B7EC6E4(v409, v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, _s7ContentVMa_4);
    v339 = v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics;
    v340 = v471;
    *v339 = v470;
    *(v339 + 16) = v340;
    v341 = v473;
    *(v339 + 32) = v472;
    *(v339 + 48) = v341;
    *(v339 + 64) = v321;
    *(v339 + 72) = v322;
    v342 = v467;
    *(v339 + 80) = v466;
    *(v339 + 96) = v342;
    *(v339 + 112) = v468;
    *(v339 + 128) = v469;
    *(v339 + 136) = v324;
    *(v339 + 144) = v325;
    v343 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState;
    swift_beginAccess();
    sub_18B7EC8D0(v327, v224 + v343, &qword_1EA9D9260, &qword_18BC4CB40);
    swift_endAccess();
    v344 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState;
    swift_beginAccess();
    sub_18B7EC8D0(v330, v224 + v344, &qword_1EA9D4520, &unk_18BC41850);
    swift_endAccess();
    v345 = *(*v338 + 16);
    type metadata accessor for Deck();
    v346 = swift_allocObject();
    *(v346 + 16) = 0;
    *(v346 + 17) = *v474;
    *(v346 + 20) = *&v474[3];
    *(v346 + 24) = v345;
    *(v346 + 32) = v321;
    *(v346 + 40) = v322;
    v347 = MEMORY[0x1E69DC5C0];
    *(v346 + 48) = 0xD000000000000014;
    *(v346 + 56) = v407;
    v348 = v347[1];
    *(v346 + 64) = *v347;
    *(v346 + 80) = v348;
    *(v346 + 96) = v324;
    *(v346 + 104) = 0x3FE999999999999ALL;
    *(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_deck) = v346;
    sub_18B7ECADC();
    sub_18B988BAC(v330, &qword_1EA9D4520, &unk_18BC41850);
    sub_18B988BAC(v327, &qword_1EA9D9260, &qword_18BC4CB40);
    sub_18B7ED118(v338, _s7ContentVMa_4);
    v281 = v451;
    if (v451)
    {
      sub_18BC1E1A8();
      sub_18B988BAC(v443, &qword_1EA9DBE38, &qword_18BC55918);
      v282 = v458;
LABEL_114:
      v283 = v452;
      v279 = v446;
      v359 = v442;
LABEL_127:
      v282[v359] = 0;
      goto LABEL_128;
    }

    v349 = *&v447[qword_1EA9F8538 + 96];
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    v349(0, 1.0);

    v350 = v428;
    sub_18B7CA054(v443, v428, &qword_1EA9DBE38, &qword_18BC55918);
    v351 = v450;
    v352 = v439;
    v353 = (v439)(v350, 1, v450);
    v282 = v458;
    if (v353 == 1)
    {
      v354 = sub_18B7EBEFC();
      v355 = v426;
      sub_18B7EC6E4(v354 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v426, _s7ContentVMa_4);

      v356 = v352(v350, 1, v351);
      v357 = v453;
      v358 = v427;
      if (v356 != 1)
      {
        sub_18B988BAC(v350, &qword_1EA9DBE38, &qword_18BC55918);
      }
    }

    else
    {
      v355 = v426;
      sub_18B80D554(v350, v426, _s7ContentVMa_4);
      v357 = v453;
      v358 = v427;
    }

    sub_18B7CA054(v355 + *(v351 + 24), v358, &qword_1EA9DBE00, &unk_18BC41860);
    sub_18B7ED118(v355, _s7ContentVMa_4);
    if ((v449)(v358, 1, v454) == 1)
    {
      sub_18B988BAC(v443, &qword_1EA9DBE38, &qword_18BC55918);
      sub_18B988BAC(v358, &qword_1EA9DBE00, &unk_18BC41860);
      goto LABEL_114;
    }

    sub_18B80D554(v358, v430, _s4ItemVMa_4);
    v360 = qword_1EA9F8570;
    v361 = v447;
    swift_beginAccess();
    v362 = v421;
    sub_18B7CA054(v361 + v360, v421, &unk_1EA9D9360, &unk_18BC558E0);
    v363 = type metadata accessor for QuickTabSwitcher.BorrowedContentViewRegistration(0);
    v364 = *(v363 - 8);
    v365 = *(v364 + 48);
    v366 = 1;
    v456 = v364 + 48;
    v457 = v365;
    if (!(v365)(v362, 1, v363))
    {
      sub_18B7EC6E4(v362, v431, _s4ItemVMa_4);
      v366 = 0;
    }

    sub_18B988BAC(v362, &unk_1EA9D9360, &unk_18BC558E0);
    v368 = v357[7];
    v369 = v454;
    v368(v431, v366, 1, v454);
    v370 = *(v361 + qword_1EA9F8548);
    sub_18BC1E1A8();
    v370(v430);

    v371 = v361 + v360;
    v372 = 1;
    v373 = v422;
    sub_18B7CA054(v371, v422, &unk_1EA9D9360, &unk_18BC558E0);
    v374 = (v457)(v373, 1, v363);
    v375 = v425;
    if (!v374)
    {
      sub_18B7EC6E4(v373, v425, _s4ItemVMa_4);
      v372 = 0;
    }

    sub_18B988BAC(v373, &unk_1EA9D9360, &unk_18BC558E0);
    v368(v375, v372, 1, v369);
    v376 = *(v440 + 48);
    v377 = v423;
    sub_18B7CA054(v375, v423, &qword_1EA9DBE00, &unk_18BC41860);
    sub_18B7CA054(v431, v377 + v376, &qword_1EA9DBE00, &unk_18BC41860);
    v378 = v449;
    if ((v449)(v377, 1, v369) == 1)
    {
      sub_18B988BAC(v375, &qword_1EA9DBE00, &unk_18BC41860);
      v379 = (v378)(v377 + v376, 1, v369);
      v282 = v458;
      v380 = v443;
      v283 = v452;
      v381 = v430;
      if (v379 == 1)
      {
        sub_18B988BAC(v377, &qword_1EA9DBE00, &unk_18BC41860);
        v359 = v442;
        v382 = v431;
LABEL_126:
        sub_18B988BAC(v382, &qword_1EA9DBE00, &unk_18BC41860);
        sub_18B7ED118(v381, _s4ItemVMa_4);
        sub_18B988BAC(v380, &qword_1EA9DBE38, &qword_18BC55918);
        v279 = v446;
        v281 = v451;
        goto LABEL_127;
      }
    }

    else
    {
      v383 = v420;
      sub_18B7CA054(v377, v420, &qword_1EA9DBE00, &unk_18BC41860);
      v384 = (v378)(v377 + v376, 1, v369);
      v282 = v458;
      v380 = v443;
      v283 = v452;
      if (v384 != 1)
      {
        v393 = v377 + v376;
        v394 = v429;
        sub_18B80D554(v393, v429, _s4ItemVMa_4);
        LODWORD(v457) = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        sub_18B7ED118(v394, _s4ItemVMa_4);
        v395 = v377;
        sub_18B988BAC(v425, &qword_1EA9DBE00, &unk_18BC41860);
        sub_18B7ED118(v383, _s4ItemVMa_4);
        v382 = v431;
        sub_18B988BAC(v395, &qword_1EA9DBE00, &unk_18BC41860);
        v359 = v442;
        v381 = v430;
        if (v457)
        {
          goto LABEL_126;
        }

        goto LABEL_125;
      }

      sub_18B988BAC(v425, &qword_1EA9DBE00, &unk_18BC41860);
      sub_18B7ED118(v383, _s4ItemVMa_4);
      v381 = v430;
    }

    sub_18B988BAC(v377, &unk_1EA9DBE40, &unk_18BC55920);
    v359 = v442;
    v382 = v431;
LABEL_125:
    sub_18BBF4120(v381);
    goto LABEL_126;
  }

  __break(1u);
LABEL_156:
  swift_once();
LABEL_77:
  v454 = qword_1EA9F7A60;
  swift_retain_n();
  v211 = sub_18B7EBEFC();
  sub_18B7EC6E4(v211 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v439, _s7ContentVMa_4);

  v212 = *(v87 + 1);
  v470 = *v87;
  v471 = v212;
  v213 = *(v87 + 3);
  v472 = *(v87 + 2);
  v473 = v213;
  v214 = *(v87 + 8);
  v215 = *(v87 + 9);
  v216 = *(v87 + 6);
  v466 = *(v87 + 5);
  v467 = v216;
  v468 = *(v87 + 7);
  v469 = *(v87 + 16);
  v217 = *(v87 + 17);
  v218 = *(v87 + 18);
  v219 = *(v406 + 56);
  v220 = v404;
  v219(v444, 1, 1, v404);
  v221 = v438;
  sub_18B7EC6E4(v448, v438, _s17PinchGestureStateVMa);
  v222 = v457;
  v223 = *(v456 + 56);
  v223(v221, 0, 1, v457);
  _s6LayoutCMa_3(0);
  v224 = swift_allocObject();
  v219(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState, 1, 1, v220);
  v223(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState, 1, 1, v222);
  v225 = v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetForBeginningPinch;
  *v225 = 0u;
  *(v225 + 16) = 0u;
  *(v225 + 32) = 0;
  *(v225 + 40) = 2;
  *(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_cornerRadiusForPinchingItem) = 0;
  *(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_heightPercentageForPinchingItem) = 0x3FF0000000000000;
  *(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_contentInsetsVisibilityForPinchingItem) = 0x3FF0000000000000;
  *(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_visibilityForNeighboringItemsDuringGesture) = 0;
  *(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetCornerRadiusForPinchingItem) = 0;
  *(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetHeightPercentageForPinchingItem) = 0x3FF0000000000000;
  *(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_itemTypes) = &unk_1EFF1AFB0;
  v226 = v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_scrollViewState;
  v227 = *MEMORY[0x1E69DDCE0];
  v228 = *(MEMORY[0x1E69DDCE0] + 8);
  v229 = *(MEMORY[0x1E69DDCE0] + 16);
  v230 = *(MEMORY[0x1E69DDCE0] + 24);
  *v226 = *MEMORY[0x1E69DDCE0];
  *(v226 + 8) = v228;
  *(v226 + 16) = v229;
  *(v226 + 24) = v230;
  *(v226 + 32) = 0u;
  *(v226 + 48) = 0u;
  *(v226 + 64) = v227;
  *(v226 + 72) = v228;
  *(v226 + 80) = v229;
  *(v226 + 88) = v230;
  *(v226 + 112) = 0u;
  *(v226 + 128) = 0u;
  *(v226 + 96) = 0u;
  *(v226 + 144) = 0;
  v231 = v439;
  sub_18B7EC6E4(v439, v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, _s7ContentVMa_4);
  v232 = v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics;
  v233 = v471;
  *v232 = v470;
  *(v232 + 16) = v233;
  v234 = v473;
  *(v232 + 32) = v472;
  *(v232 + 48) = v234;
  *(v232 + 64) = v214;
  *(v232 + 72) = v215;
  v235 = v467;
  *(v232 + 80) = v466;
  *(v232 + 96) = v235;
  *(v232 + 112) = v468;
  *(v232 + 128) = v469;
  *(v232 + 136) = v217;
  *(v232 + 144) = v218;
  v236 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState;
  swift_beginAccess();
  v237 = v444;
  sub_18B7EC8D0(v444, v224 + v236, &qword_1EA9D9260, &qword_18BC4CB40);
  swift_endAccess();
  v238 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState;
  swift_beginAccess();
  sub_18B7EC8D0(v221, v224 + v238, &qword_1EA9D4520, &unk_18BC41850);
  swift_endAccess();
  v239 = *(*v231 + 16);
  type metadata accessor for Deck();
  v240 = swift_allocObject();
  *(v240 + 16) = 0;
  *(v240 + 17) = *v474;
  *(v240 + 20) = *&v474[3];
  *(v240 + 24) = v239;
  *(v240 + 32) = v214;
  *(v240 + 40) = v215;
  v241 = MEMORY[0x1E69DC5C0];
  *(v240 + 48) = 0xD000000000000014;
  *(v240 + 56) = v407;
  v242 = v241[1];
  *(v240 + 64) = *v241;
  *(v240 + 80) = v242;
  *(v240 + 96) = v217;
  *(v240 + 104) = 0x3FE999999999999ALL;
  *(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_deck) = v240;
  sub_18B7ECADC();
  v243 = v448;
  sub_18B988BAC(v221, &qword_1EA9D4520, &unk_18BC41850);
  sub_18B988BAC(v237, &qword_1EA9D9260, &qword_18BC4CB40);
  sub_18B7ED118(v231, _s7ContentVMa_4);
  if (v459 == 1 && (*(v243 + 64) & 1) != 0)
  {
    v244 = &selRef_value;
    v245 = 0x8000000000000010;
  }

  else
  {
    v245 = v454;
    sub_18BC1E1A8();
    v244 = &selRef_presentationValue;
  }

  v246 = v435;
  sub_18B7EC6E4(v243, v435, _s17PinchGestureStateVMa);
  v247 = (*(v456 + 80) + 32) & ~*(v456 + 80);
  v248 = (v434 + v247 + 7) & 0xFFFFFFFFFFFFFFF8;
  v249 = swift_allocObject();
  v250 = v458;
  v249[2] = v458;
  v249[3] = v224;
  sub_18B80D554(v246, v249 + v247, _s17PinchGestureStateVMa);
  *(v249 + v248) = v405;
  swift_retain_n();
  v251 = v250;
  v252 = v408;
  sub_18B80ECB4(sub_18BC0D8E4, v249, v245);

  v253 = sub_18B7C42F0();
  [v253 *v244];
  v255 = v254;

  *(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_cornerRadiusForPinchingItem) = v255;
  v256 = sub_18B7C4518();
  [v256 *v244];
  v258 = v257;

  *(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_heightPercentageForPinchingItem) = v258;
  v259 = sub_18B7C4560();
  [v259 *v244];
  v261 = v260;

  *(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_contentInsetsVisibilityForPinchingItem) = v261;
  v262 = sub_18B7C453C();
  [v262 *v244];
  v264 = v263;

  *(v224 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_visibilityForNeighboringItemsDuringGesture) = v264;
  if (v459 == 1 && *(v455 + 64) == 1)
  {
    v456 = v245;
    v265 = v405;
    v266 = &v405[OBJC_IVAR___SFTabThumbnailView_restingSize];
    *v266 = *(v455 + v457[14] + 16);
    v266[16] = 0;
    [v265 setNeedsLayout];
    v267 = swift_allocObject();
    *(v267 + 16) = v265;
    v268 = objc_opt_self();
    v269 = swift_allocObject();
    *(v269 + 16) = sub_18BC0D974;
    *(v269 + 24) = v267;
    v270 = swift_allocObject();
    *(v270 + 16) = sub_18B9D53AC;
    *(v270 + 24) = v269;
    v464 = sub_18B9D53B0;
    v465 = v270;
    v460 = MEMORY[0x1E69E9820];
    v461 = 1107296256;
    v453 = &v462;
    v462 = sub_18B7E3BF4;
    v463 = &block_descriptor_215;
    v271 = _Block_copy(&v460);
    v451 = v252;
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    v457 = v268;
    [v268 performWithoutAnimation_];
    _Block_release(v271);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
LABEL_159:
      __break(1u);
      return;
    }

    type metadata accessor for AnimationSettings();
    inited = swift_initStaticObject();
    v274 = swift_allocObject();
    *(v274 + 16) = v265;
    v275 = swift_allocObject();
    v275[2] = inited;
    v275[3] = sub_18BC0D97C;
    v275[4] = v274;
    v464 = sub_18B7D80AC;
    v465 = v275;
    v460 = MEMORY[0x1E69E9820];
    v461 = 1107296256;
    v462 = sub_18B7B0DB0;
    v463 = &block_descriptor_224;
    v276 = _Block_copy(&v460);
    v277 = v451;
    sub_18BC1E1A8();

    v464 = CGRectMake;
    v465 = 0;
    v460 = MEMORY[0x1E69E9820];
    v461 = 1107296256;
    v462 = sub_18B8043A0;
    v463 = &block_descriptor_227;
    v278 = _Block_copy(&v460);

    [v457 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v278);
    _Block_release(v276);

    sub_18BBF3ED8();
    v245 = v456;
  }

  v279 = v454 | 0x4000000000000000;
  v280 = *&v251[qword_1EA9F8538 + 96];
  sub_18BC1E1A8();
  v280(v2 < v3, v2);

  sub_18B7EBAE8(v245);
  v281 = 0;
  v282 = v458;
  v283 = v452;
LABEL_128:
  v385 = v459;
  sub_18BBF6458(v283, v224, v279, v459, v281);
  sub_18B7EBAE8(v279);

  sub_18B7EBAE8(v279);

  sub_18B7ED118(v448, _s17PinchGestureStateVMa);
  sub_18B7ED118(v283, _s4ItemVMa_4);
  sub_18B7ED118(v455, _s17PinchGestureStateVMa);
  if (v385 != 1)
  {
    return;
  }

  v386 = *&v282[qword_1EA9F8558];
  v387 = *(v386 + 24);
  v109 = __OFSUB__(v387, 1);
  v388 = v387 - 1;
  if (v109)
  {
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  *(v386 + 24) = v388;
  if (!v388)
  {
    swift_beginAccess();
    v389 = *(v386 + 16);
    v390 = *(v389 + 16);
    if (v390)
    {
      sub_18BC1E3F8();
      v391 = v389 + 40;
      do
      {
        v392 = *(v391 - 8);
        LOBYTE(v466) = *(v386 + 24) > 0;
        sub_18BC1E1A8();
        v392(&v466);

        v391 += 16;
        --v390;
      }

      while (v390);
      goto LABEL_35;
    }
  }
}

int *sub_18BBFFD24(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v7 = sub_18B7C4518();
  [v7 setValue_];

  v8 = sub_18B7C42F0();
  [v8 setValue_];

  v9 = sub_18B7C4560();
  v10 = v9;
  v11 = *a3;
  if (*a3)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 1.0;
  }

  [v9 setValue_];

  v13 = sub_18B7C453C();
  v14 = v13;
  if (a3[24])
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  [v13 setValue_];

  result = _s17PinchGestureStateVMa(0);
  if (a3[result[14] + 40] & v11)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = *(a4 + OBJC_IVAR___SFTabThumbnailView_controlsVisibility);
  *(a4 + OBJC_IVAR___SFTabThumbnailView_controlsVisibility) = v17;
  if (v17 != v18)
  {
    return sub_18BA15D30();
  }

  return result;
}

void sub_18BBFFE40(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___SFTabThumbnailView_controlsVisibility);
  *(a1 + OBJC_IVAR___SFTabThumbnailView_controlsVisibility) = 0x3FF0000000000000;
  if (v2 != 1.0)
  {
    sub_18BA15D30();
  }

  v3 = *(a1 + OBJC_IVAR___SFTabThumbnailView_controlsContainerView);
  v4 = sub_18B7DE654();
  [v4 value];
  v6 = v5;

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v6;
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_18B7EA1C4;
  *(v9 + 24) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_18B9D53AC;
  *(v10 + 24) = v9;
  v13[4] = sub_18B9D53B0;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_18B7E3BF4;
  v13[3] = &block_descriptor_241;
  v11 = _Block_copy(v13);
  v12 = v3;
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v8 performWithoutAnimation_];
  _Block_release(v11);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

void sub_18BC00044(uint64_t a1)
{
  v2 = sub_18B7C42F0();
  [v2 setValue_];

  v3 = sub_18B7C4518();
  [v3 setValue_];

  v4 = sub_18B7C4560();
  [v4 setValue_];

  v5 = sub_18B7C453C();
  [v5 setValue_];
}

void sub_18BC000F4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_18BBFC870(v4);
}

void *sub_18BC0015C(uint64_t a1)
{
  v3 = _s4ItemVMa_4(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  result = sub_18B86286C(a1, 0xD000000000000014, 0x800000018BC60730, sub_18BB8B258);
  if (result)
  {
    v14 = result;
    type metadata accessor for TabThumbnailView();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v24 = v15;
      sub_18B7EC6E4(a1, v12, _s4ItemVMa_4);
      v16 = (*(v4 + 80) + 24) & ~*(v4 + 80);
      v17 = swift_allocObject();
      v23 = v17;
      *(v17 + 16) = v1;
      sub_18B80D554(v12, v17 + v16, _s4ItemVMa_4);
      sub_18B7EC6E4(a1, v9, _s4ItemVMa_4);
      v18 = swift_allocObject();
      *(v18 + 16) = v1;
      sub_18B80D554(v9, v18 + v16, _s4ItemVMa_4);
      sub_18B7EC6E4(a1, v6, _s4ItemVMa_4);
      v19 = swift_allocObject();
      *(v19 + 16) = v1;
      sub_18B80D554(v6, v19 + v16, _s4ItemVMa_4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE30, &unk_18BC42F50);
      v20 = swift_allocObject();
      v21 = v23;
      v20[2] = v24;
      v20[3] = sub_18BC0D698;
      v20[4] = v21;
      v20[5] = sub_18BC0D6B0;
      v20[6] = v18;
      v20[7] = sub_18BC0D7E8;
      v20[8] = v19;
      v20[9] = CGRectMake;
      v20[10] = 0;
      v22 = v1;
      return v20;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_18BC0042C(void *a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x98);
  swift_beginAccess();
  if (*(*(a1 + v4) + 16))
  {
    sub_18BC1E3F8();
    sub_18B7C4104(0xD000000000000014, 0x800000018BC60730);
    if (v5)
    {
      sub_18BC1E1A8();

      sub_18BBF3240(a2);

      return;
    }
  }

  sub_18BC21CF8();
  __break(1u);
}

id sub_18BC00550(void *a1, uint64_t a2, void *a3)
{
  sub_18B7B0AC0(0, &qword_1EA9D5BE0, 0x1E69E58C0);
  v5 = a3;
  v6 = a1;
  v7 = sub_18B7C37F4();
  LOBYTE(a1) = sub_18BC215C8();

  if (a1 & 1) != 0 || (v8 = sub_18B7C3778(), v9 = sub_18BC215C8(), v8, (v9))
  {

    v10 = v6[qword_1EA9F8518];
  }

  else
  {
    v12.receiver = v6;
    v12.super_class = type metadata accessor for QuickTabSwitcher(0);
    v10 = objc_msgSendSuper2(&v12, sel_gestureRecognizerShouldBegin_, v5);
  }

  return v10;
}

uint64_t sub_18BC0064C(_BYTE *a1, uint64_t a2, void *a3, void *a4)
{
  if (a1[qword_1EA9F8518] == 1)
  {
    v6 = a1;
    sub_18B7B0AC0(0, &qword_1EA9D5BE0, 0x1E69E58C0);
    v7 = a3;
    v8 = a4;
    v9 = v6;
    v10 = sub_18B7C37F4();
    LOBYTE(v6) = sub_18BC215C8();

    if (v6)
    {
      v11 = *&v9[qword_1EA9F8538 + 128];
      sub_18BC1E1A8();
      v12 = v11(v8);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_18BC00748(_BYTE *a1, uint64_t a2, void *a3, void *a4)
{
  if (a1[qword_1EA9F8518] == 1)
  {
    v6 = a1;
    sub_18B7B0AC0(0, &qword_1EA9D5BE0, 0x1E69E58C0);
    v7 = a3;
    v8 = a4;
    v9 = v6;
    v10 = sub_18B7C37F4();
    LOBYTE(v6) = sub_18BC215C8();

    if (v6)
    {
      v11 = *&v9[qword_1EA9F8538 + 112];
      sub_18BC1E1A8();
      v12 = v11(v8);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_18BC00844(uint64_t a1, void *a2)
{
  sub_18B7B0AC0(0, &qword_1EA9D5BE0, 0x1E69E58C0);
  v3 = sub_18B7C3778();
  v4 = sub_18BC215C8();

  if ((v4 & 1) == 0)
  {
    v6 = [a2 view];
    if (!v6)
    {
      v5 = 0;
      return v5 & 1;
    }

    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v10 = [v8 panGestureRecognizer];
      sub_18B7B0AC0(0, &qword_1EA9D4850, 0x1E69DCA60);
      v11 = a2;
      v12 = sub_18BC215C8();

      if (v12)
      {
        v5 = 1;
LABEL_11:

        return v5 & 1;
      }

      v13 = [v9 pinchGestureRecognizer];
      if (v13)
      {
        v14 = v13;
        v15 = v11;
        v5 = sub_18BC215C8();

        goto LABEL_11;
      }
    }

    v5 = 0;
    goto LABEL_11;
  }

  v5 = 1;
  return v5 & 1;
}

uint64_t sub_18BC009B0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_18BC00844(v6, v7);

  return v9 & 1;
}

id sub_18BC00A14(void *a1)
{
  *&v1[qword_1EA9DBD68] = 0;
  *&v1[qword_1EA9DBD70] = 0;
  *&v1[qword_1EA9DBD78] = 0;
  v1[qword_1EA9F8518] = 1;
  v3 = &v1[qword_1EA9F8520];
  v4 = MEMORY[0x1E69E7CC0];
  v5 = sub_18B7C17A0(MEMORY[0x1E69E7CC0]);
  *v3 = CGRectMake;
  v3[1] = 0;
  v3[2] = v5;
  v3[3] = CGRectMake;
  v3[4] = 0;
  v6 = &v1[qword_1EA9F8528];
  *(v6 + 4) = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v1[qword_1EA9F8530] = 0;
  v7 = &v1[qword_1EA9F8538];
  *v7 = CGRectMake;
  v7[1] = 0;
  v7[2] = CGRectMake;
  v7[3] = 0;
  v7[4] = sub_18B8390A8;
  v7[5] = 0;
  v7[6] = CGRectMake;
  v7[7] = 0;
  v7[8] = CGRectMake;
  v7[9] = 0;
  v7[10] = CGRectMake;
  v7[11] = 0;
  v7[12] = CGRectMake;
  v7[13] = 0;
  v7[14] = sub_18B814EE4;
  v7[15] = 0;
  v7[16] = sub_18B814EE4;
  v7[17] = 0;
  v7[18] = sub_18BBF5974;
  v7[19] = 0;
  v7[20] = CGRectMake;
  v7[21] = 0;
  v7[22] = sub_18B7E9C50;
  v7[23] = 0;
  v7[24] = CGRectMake;
  v7[25] = 0;
  v7[26] = CGRectMake;
  v7[27] = 0;
  v7[28] = CGRectMake;
  v7[29] = 0;
  v1[qword_1EA9DBD80] = 0;
  v1[qword_1EA9F8540] = 0;
  v8 = qword_1EA9DBD88;
  v9 = _s4ItemVMa_4(0);
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  *&v1[qword_1EA9DBD90] = 0;
  v10 = qword_1EA9DBD98;
  type metadata accessor for Assertion();
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = 0;
  *&v1[v10] = v11;
  v12 = &v1[qword_1EA9F8548];
  *v12 = CGRectMake;
  v12[1] = 0;
  *&v1[qword_1EA9F8550] = 0;
  v13 = qword_1EA9F8558;
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = 0;
  *&v1[v13] = v14;
  v15 = &v1[qword_1EA9F8560];
  v16 = *MEMORY[0x1E69DDCE0];
  v17 = *(MEMORY[0x1E69DDCE0] + 8);
  v18 = *(MEMORY[0x1E69DDCE0] + 16);
  v19 = *(MEMORY[0x1E69DDCE0] + 24);
  *v15 = *MEMORY[0x1E69DDCE0];
  v15[1] = v17;
  v15[2] = v18;
  v15[3] = v19;
  v20 = &v1[qword_1EA9F8568];
  v26 = 1;
  *v20 = v16;
  *(v20 + 1) = v17;
  *(v20 + 2) = v18;
  *(v20 + 3) = v19;
  *(v20 + 10) = 0;
  *(v20 + 3) = 0u;
  *(v20 + 4) = 0u;
  *(v20 + 2) = 0u;
  *(v20 + 88) = xmmword_18BC556E0;
  v20[104] = 0;
  *(v20 + 14) = 0;
  v20[120] = 1;
  *(v20 + 8) = xmmword_18BC556F0;
  *(v20 + 18) = 0x3FF3333333333333;
  *&v1[qword_1EA9DBDA0] = 0;
  *&v1[qword_1EA9DBDA8] = 0;
  *&v1[qword_1EA9DBDB0] = 0;
  *&v1[qword_1EA9DBDB8] = 0;
  v21 = qword_1EA9F8570;
  v22 = type metadata accessor for QuickTabSwitcher.BorrowedContentViewRegistration(0);
  (*(*(v22 - 8) + 56))(&v1[v21], 1, 1, v22);
  *&v1[qword_1EA9DBDC0] = MEMORY[0x1E69E7CD0];
  v25.receiver = v1;
  v25.super_class = type metadata accessor for QuickTabSwitcher(0);
  v23 = objc_msgSendSuper2(&v25, sel_initWithCoder_, a1);

  if (v23)
  {
  }

  return v23;
}

double sub_18BC00E70()
{

  if (*(v0 + qword_1EA9F8528 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EA9F8528));
  }

  v1 = *(v0 + qword_1EA9F8538 + 208);
  v9[12] = *(v0 + qword_1EA9F8538 + 192);
  v9[13] = v1;
  v9[14] = *(v0 + qword_1EA9F8538 + 224);
  v2 = *(v0 + qword_1EA9F8538 + 144);
  v9[8] = *(v0 + qword_1EA9F8538 + 128);
  v9[9] = v2;
  v3 = *(v0 + qword_1EA9F8538 + 176);
  v9[10] = *(v0 + qword_1EA9F8538 + 160);
  v9[11] = v3;
  v4 = *(v0 + qword_1EA9F8538 + 80);
  v9[4] = *(v0 + qword_1EA9F8538 + 64);
  v9[5] = v4;
  v5 = *(v0 + qword_1EA9F8538 + 112);
  v9[6] = *(v0 + qword_1EA9F8538 + 96);
  v9[7] = v5;
  v6 = *(v0 + qword_1EA9F8538 + 16);
  v9[0] = *(v0 + qword_1EA9F8538);
  v9[1] = v6;
  v7 = *(v0 + qword_1EA9F8538 + 48);
  v9[2] = *(v0 + qword_1EA9F8538 + 32);
  v9[3] = v7;
  sub_18BC014D4(v9);
  sub_18B988BAC(v0 + qword_1EA9DBD88, &qword_1EA9DBE00, &unk_18BC41860);

  sub_18B988BAC(v0 + qword_1EA9F8570, &unk_1EA9D9360, &unk_18BC558E0);

  return result;
}

id sub_18BC01034()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickTabSwitcher(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_18BC0106C(uint64_t a1)
{

  if (*(a1 + qword_1EA9F8528 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + qword_1EA9F8528));
  }

  v2 = *(a1 + qword_1EA9F8538 + 208);
  v10[12] = *(a1 + qword_1EA9F8538 + 192);
  v10[13] = v2;
  v10[14] = *(a1 + qword_1EA9F8538 + 224);
  v3 = *(a1 + qword_1EA9F8538 + 144);
  v10[8] = *(a1 + qword_1EA9F8538 + 128);
  v10[9] = v3;
  v4 = *(a1 + qword_1EA9F8538 + 176);
  v10[10] = *(a1 + qword_1EA9F8538 + 160);
  v10[11] = v4;
  v5 = *(a1 + qword_1EA9F8538 + 80);
  v10[4] = *(a1 + qword_1EA9F8538 + 64);
  v10[5] = v5;
  v6 = *(a1 + qword_1EA9F8538 + 112);
  v10[6] = *(a1 + qword_1EA9F8538 + 96);
  v10[7] = v6;
  v7 = *(a1 + qword_1EA9F8538 + 16);
  v10[0] = *(a1 + qword_1EA9F8538);
  v10[1] = v7;
  v8 = *(a1 + qword_1EA9F8538 + 48);
  v10[2] = *(a1 + qword_1EA9F8538 + 32);
  v10[3] = v8;
  sub_18BC014D4(v10);
  sub_18B988BAC(a1 + qword_1EA9DBD88, &qword_1EA9DBE00, &unk_18BC41860);

  sub_18B988BAC(a1 + qword_1EA9F8570, &unk_1EA9D9360, &unk_18BC558E0);

  return result;
}

uint64_t sub_18BC01234(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *a2;
  sub_18B7CA054(a4, &v10, &unk_1EA9D5060, &unk_18BC41870);
  if (!v11)
  {
    return sub_18B988BAC(&v10, &unk_1EA9D5060, &unk_18BC41870);
  }

  sub_18B7C3FA4(&v10, v12);
  v7 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content;
  v8 = __swift_project_boxed_opaque_existential_1Tm(v12, v12[3]);
  sub_18BC0A658((v5 + v7), v6 + v7, *v8, v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_18BC01338(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_18BC01380(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
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
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18BC01420(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18BC01474(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

void sub_18BC01504(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30, &unk_18BC42E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = _s4ItemVMa_2(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    sub_18BC1E3F8();
    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_18B7EC6E4(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, _s4ItemVMa_2);
      sub_18B9CDB20(v5);
      sub_18B7ED118(v9, _s4ItemVMa_2);
      sub_18B988BAC(v5, &unk_1EA9D4F30, &unk_18BC42E60);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_18BC0170C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5380, &unk_18BC46510);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v44 - v4;
  v59 = _s4ItemVMa_0(0);
  v6 = *(v59 - 1);
  MEMORY[0x1EEE9AC00](v59);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v44 - v10;
  v62 = *v1;
  if (!*(v62 + 16))
  {
    return;
  }

  v44 = v1;
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v47 = (v6 + 56);
  sub_18BC1E3F8();
  v16 = 0;
  v49 = v5;
  v48 = v6;
  v50 = v15;
  v51 = a1 + 56;
  v46 = a1;
  if (!v14)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_10:
    v18 = *(a1 + 48);
    v61 = *(v6 + 72);
    v19 = v57;
    sub_18B7EC6E4(v18 + v61 * (__clz(__rbit64(v14)) | (v16 << 6)), v57, _s4ItemVMa_0);
    sub_18BC22158();
    v60 = *v19;
    sub_18BC22178();
    v58 = v19[1];
    sub_18BC22178();
    v20 = v59;
    v21 = v59[6];
    sub_18BC1EC08();
    sub_18B7F4EE4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v56 = v21;
    sub_18BC20A78();
    v55 = *&v19[v20[7]];
    v22 = v55;
    sub_18BC22178();
    if (v22)
    {
      v23 = v22;
      sub_18BC215D8();
    }

    v24 = v59;
    v25 = v57;
    v54 = v57[v59[8]];
    sub_18BC22178();
    v53 = *(v25 + v24[9]);
    sub_18BC22178();
    v26 = (v25 + v24[10]);
    v27 = v26[1];
    v45 = *v26;
    v52 = v27;
    sub_18BC22178();
    if (v27)
    {
      sub_18BC20C28();
    }

    v28 = sub_18BC221A8();
    v29 = v62 + 56;
    v30 = -1 << *(v62 + 32);
    v31 = v28 & ~v30;
    if (((*(v62 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
    {
LABEL_36:
      v43 = v49;
      (*v47)(v49, 1, 1, v59);
      v6 = v48;
      goto LABEL_37;
    }

    v32 = ~v30;
    while (1)
    {
      v33 = v31 * v61;
      sub_18B7EC6E4(*(v62 + 48) + v31 * v61, v8, _s4ItemVMa_0);
      if (v60 != *v8 || v58 != v8[1] || (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) == 0)
      {
        goto LABEL_17;
      }

      v34 = *&v8[v59[7]];
      if (v34)
      {
        if (!v55)
        {
          goto LABEL_17;
        }

        sub_18B7B0AC0(0, &qword_1ED6514F0, 0x1E69DCAB8);
        v35 = v55;
        v36 = v34;
        v37 = sub_18BC215C8();

        a1 = v46;
        if ((v37 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (v55)
      {
        goto LABEL_17;
      }

      if (v54 != v8[v59[8]] || v53 != v8[v59[9]])
      {
        goto LABEL_17;
      }

      v38 = &v8[v59[10]];
      v39 = *(v38 + 1);
      if (v39)
      {
        break;
      }

      if (!v52)
      {
        goto LABEL_33;
      }

LABEL_17:
      sub_18B7ED118(v8, _s4ItemVMa_0);
      v31 = (v31 + 1) & v32;
      if (((*(v29 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    if (!v52 || (*v38 != v45 || v39 != v52) && (sub_18BC21FD8() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_33:
    sub_18B7ED118(v8, _s4ItemVMa_0);
    v40 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *v40;
    v63 = *v40;
    v6 = v48;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_18B9CCCCC();
      v42 = v63;
    }

    v43 = v49;
    sub_18B80D554(*(v42 + 48) + v33, v49, _s4ItemVMa_0);
    sub_18B9CFDBC(v31);
    v62 = v63;
    *v40 = v63;
    (*v47)(v43, 0, 1, v59);
LABEL_37:
    v14 &= v14 - 1;
    sub_18B7ED118(v57, _s4ItemVMa_0);
    sub_18B988BAC(v43, &unk_1EA9D5380, &unk_18BC46510);
    v15 = v50;
    v11 = v51;
  }

  while (v14);
LABEL_6:
  while (2)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
    }

    else
    {
      if (v17 < v15)
      {
        v14 = *(v11 + 8 * v17);
        ++v16;
        if (!v14)
        {
          continue;
        }

        v16 = v17;
        goto LABEL_10;
      }
    }

    break;
  }
}

void sub_18BC01D70(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE00, &unk_18BC41860);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = _s4ItemVMa_4(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    sub_18BC1E3F8();
    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_18B7EC6E4(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, _s4ItemVMa_4);
      sub_18B9CE0A8(v5);
      sub_18B7ED118(v9, _s4ItemVMa_4);
      sub_18B988BAC(v5, &qword_1EA9DBE00, &unk_18BC41860);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_18BC01F78(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6B0, &unk_18BC53D30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = _s4ItemVMa_1(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    sub_18BC1E3F8();
    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_18B7EC6E4(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, _s4ItemVMa_1);
      sub_18B9CDDEC(v5);
      sub_18B7ED118(v9, _s4ItemVMa_1);
      sub_18B988BAC(v5, &qword_1EA9DB6B0, &unk_18BC53D30);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_18BC02180(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30, &unk_18BC42E60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v70 - v8;
  v10 = _s4ItemVMa_2(0);
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v70 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v84 = (&v70 - v17);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v73 = v6;
  v19 = a1 + 56;
  v18 = *(a1 + 56);
  v20 = -1 << *(a1 + 32);
  v83 = ~v20;
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v18;
  v76 = (63 - v20) >> 6;
  v82 = (v16 + 56);
  v72 = v16;
  v81 = (v16 + 48);
  v85 = (a2 + 56);
  sub_18BC1E3F8();
  v24 = 0;
  v80 = a1;
  v88 = v10;
  v79 = a1 + 56;
  v71 = v9;
  while (1)
  {
    v25 = v22;
    v26 = v24;
    i = v22;
    if (v22)
    {
LABEL_15:
      v22 = (v25 - 1) & v25;
      sub_18B7EC6E4(*(a1 + 48) + *(v72 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v9, _s4ItemVMa_2);
      v30 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v76 <= (v24 + 1) ? v24 + 1 : v76;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v76)
        {
          break;
        }

        v25 = *(v19 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_15;
        }
      }

      v22 = 0;
      v30 = 1;
    }

    v78 = *v82;
    v78(v9, v30, 1, v10);
    v89 = a1;
    v90 = v19;
    v91 = v83;
    v92 = v28;
    v93 = v22;
    v77 = *v81;
    if (v77(v9, 1, v10) == 1)
    {
      sub_18B988BAC(v9, &unk_1EA9D4F30, &unk_18BC42E60);
      v63 = a1;
      goto LABEL_52;
    }

    sub_18B80D554(v9, v84, _s4ItemVMa_2);
    sub_18BC22158();
    v31 = sub_18BC1EC08();
    v32 = sub_18B7F4EE4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v75 = v31;
    v74 = v32;
    sub_18BC20A78();
    v33 = sub_18BC221A8();
    v34 = -1 << *(a2 + 32);
    v24 = v33 & ~v34;
    v19 = v24 >> 6;
    v9 = 1 << v24;
    if (((1 << v24) & v85[v24 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_18B7ED118(v84, _s4ItemVMa_2);
    v24 = v28;
    v10 = v88;
    v19 = v79;
    v9 = v71;
    a1 = v80;
  }

  v35 = ~v34;
  v36 = *(v72 + 72);
  v37 = *(a2 + 48);
  for (i = v36; ; v36 = i)
  {
    sub_18B7EC6E4(v37 + v36 * v24, v14, _s4ItemVMa_2);
    updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
    sub_18B7ED118(v14, _s4ItemVMa_2);
    if (updated)
    {
      break;
    }

    v24 = (v24 + 1) & v35;
    v19 = v24 >> 6;
    v9 = 1 << v24;
    if (((1 << v24) & v85[v24 >> 6]) == 0)
    {
      goto LABEL_6;
    }

    v37 = *(a2 + 48);
  }

  v39 = sub_18B7ED118(v84, _s4ItemVMa_2);
  v40 = *(a2 + 32);
  v26 = ((1 << v40) + 63) >> 6;
  v23 = 8 * v26;
  a1 = v80;
  if ((v40 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v70 = v26;
    v71 = &v70;
    MEMORY[0x1EEE9AC00](v39);
    v42 = &v70 - ((v41 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v42, v85, v41);
    v43 = *&v42[8 * v19] & ~v9;
    v44 = *(a2 + 16);
    v84 = v42;
    *&v42[8 * v19] = v43;
    v45 = v44 - 1;
    v24 = v73;
    v26 = v88;
    v46 = v79;
    v47 = v76;
LABEL_25:
    v72 = v45;
    while (v22)
    {
      v48 = v28;
LABEL_37:
      v51 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      sub_18B7EC6E4(*(a1 + 48) + (v51 | (v48 << 6)) * i, v24, _s4ItemVMa_2);
      v52 = 0;
LABEL_38:
      v78(v24, v52, 1, v26);
      v89 = a1;
      v90 = v46;
      v91 = v83;
      v92 = v28;
      v93 = v22;
      if (v77(v24, 1, v26) == 1)
      {
        sub_18B988BAC(v24, &unk_1EA9D4F30, &unk_18BC42E60);
        a2 = sub_18BC07A84(v84, v70, v72, a2);
        goto LABEL_51;
      }

      sub_18B80D554(v24, v87, _s4ItemVMa_2);
      sub_18BC22158();
      v19 = *(v26 + 20);
      sub_18BC20A78();
      v53 = sub_18BC221A8();
      v54 = a2;
      v55 = -1 << *(a2 + 32);
      v56 = v53 & ~v55;
      v9 = v56 >> 6;
      v57 = 1 << v56;
      if (((1 << v56) & v85[v56 >> 6]) != 0)
      {
        sub_18B7EC6E4(*(v54 + 48) + v56 * i, v14, _s4ItemVMa_2);
        v58 = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        sub_18B7ED118(v14, _s4ItemVMa_2);
        if ((v58 & 1) == 0)
        {
          v59 = ~v55;
          do
          {
            v56 = (v56 + 1) & v59;
            v9 = v56 >> 6;
            v57 = 1 << v56;
            if (((1 << v56) & v85[v56 >> 6]) == 0)
            {
              goto LABEL_26;
            }

            sub_18B7EC6E4(*(v54 + 48) + v56 * i, v14, _s4ItemVMa_2);
            v60 = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
            sub_18B7ED118(v14, _s4ItemVMa_2);
          }

          while ((v60 & 1) == 0);
        }

        sub_18B7ED118(v87, _s4ItemVMa_2);
        v61 = v84[v9];
        v84[v9] = v61 & ~v57;
        v62 = (v61 & v57) == 0;
        a2 = v54;
        a1 = v80;
        v24 = v73;
        v26 = v88;
        v46 = v79;
        v47 = v76;
        if (!v62)
        {
          v45 = v72 - 1;
          if (__OFSUB__(v72, 1))
          {
            __break(1u);
          }

          if (v72 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_51;
          }

          goto LABEL_25;
        }
      }

      else
      {
LABEL_26:
        sub_18B7ED118(v87, _s4ItemVMa_2);
        a2 = v54;
        a1 = v80;
        v24 = v73;
        v26 = v88;
        v46 = v79;
        v47 = v76;
      }
    }

    if (v47 <= (v28 + 1))
    {
      v49 = v28 + 1;
    }

    else
    {
      v49 = v47;
    }

    v50 = v49 - 1;
    while (1)
    {
      v48 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v48 >= v47)
      {
        v22 = 0;
        v52 = 1;
        v28 = v50;
        goto LABEL_38;
      }

      v22 = *(v46 + 8 * v48);
      ++v28;
      if (v22)
      {
        v28 = v48;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v65 = v23;
    sub_18BC1E1A8();
    v84 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v66 = v84;
  v67 = swift_slowAlloc();
  memcpy(v67, v85, v66);
  sub_18BC05ED8(v67, v26, a2, v24, &v89);
  v69 = v68;

  MEMORY[0x18CFFEEE0](v67, -1, -1);
  a2 = v69;
LABEL_51:
  v63 = v89;
LABEL_52:
  sub_18B7D2E34(v63);
  return a2;
}

uint64_t sub_18BC02C08(unint64_t a1, uint64_t a2)
{
  v145 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5380, &unk_18BC46510);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v114 = v110 - v9;
  v10 = _s4ItemVMa_0(0);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v130 = v110 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v110 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v136 = v110 - v19;
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v128 = v17;
  v112 = v7;
  v111 = 0;
  v21 = (a1 + 56);
  v20 = *(a1 + 56);
  v22 = -1 << *(a1 + 32);
  v125 = ~v22;
  if (-v22 < 64)
  {
    v23 = ~(-1 << -v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v20;
  v113 = (63 - v22) >> 6;
  v124 = (v18 + 56);
  v129 = v18;
  v123 = (v18 + 48);
  v139 = (a2 + 56);
  sub_18BC1E3F8();
  v26 = 0;
  v118 = a2;
  v119 = a1;
  v137 = v10;
  for (i = (a1 + 56); ; v21 = i)
  {
    v27 = v24;
    v28 = v26;
    if (v24)
    {
LABEL_15:
      v32 = (v27 - 1) & v27;
      v33 = v114;
      sub_18B7EC6E4(*(a1 + 48) + *(v129 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v114, _s4ItemVMa_0);
      v34 = 0;
      v35 = v28;
      v36 = v32;
      v30 = v35;
    }

    else
    {
      v29 = v113 <= v26 + 1 ? v26 + 1 : v113;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          __break(1u);
          goto LABEL_93;
        }

        if (v28 >= v113)
        {
          break;
        }

        v27 = v21[v28];
        ++v31;
        if (v27)
        {
          goto LABEL_15;
        }
      }

      v36 = 0;
      v34 = 1;
      v33 = v114;
    }

    v121 = *v124;
    v121(v33, v34, 1, v10);
    v140 = a1;
    v141 = v21;
    v142 = v125;
    v143 = v30;
    v144 = v36;
    v120 = *v123;
    v37 = v120(v33, 1, v10) == 1;
    v38 = v33;
    if (v37)
    {
      sub_18B988BAC(v33, &unk_1EA9D5380, &unk_18BC46510);
      v61 = a1;
      goto LABEL_43;
    }

    v39 = v36;
    v40 = v136;
    sub_18B80D554(v38, v136, _s4ItemVMa_0);
    sub_18BC22158();
    v41 = *v40;
    sub_18BC22178();
    v42 = v40[1];
    sub_18BC22178();
    v43 = v10[6];
    v44 = sub_18BC1EC08();
    v45 = sub_18B7F4EE4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v135 = v43;
    v117 = v44;
    v116 = v45;
    sub_18BC20A78();
    v134 = *&v40[v10[7]];
    v46 = v134;
    sub_18BC22178();
    if (v46)
    {
      v47 = v46;
      sub_18BC215D8();
    }

    v48 = v136;
    v131 = *(v136 + v10[8]);
    sub_18BC22178();
    LODWORD(v127) = *(v48 + v10[9]);
    sub_18BC22178();
    v49 = (v48 + v10[10]);
    v50 = *v49;
    v51 = v49[1];
    v133 = v30;
    v132 = v39;
    v115 = v50;
    v126 = v51;
    sub_18BC22178();
    if (v51)
    {
      sub_18BC20C28();
    }

    v52 = sub_18BC221A8();
    v53 = -1 << *(a2 + 32);
    a1 = v52 & ~v53;
    v2 = a1 >> 6;
    v30 = 1 << a1;
    if (((1 << a1) & v139[a1 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_18B7ED118(v136, _s4ItemVMa_0);
    v26 = v133;
    v24 = v132;
    a1 = v119;
    v10 = v137;
  }

  v54 = ~v53;
  v138 = *(v129 + 72);
  while (1)
  {
    sub_18B7EC6E4(*(a2 + 48) + v138 * a1, v15, _s4ItemVMa_0);
    if (v41 != *v15 || v42 != v15[1] || (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) == 0)
    {
      goto LABEL_24;
    }

    v55 = *&v15[v137[7]];
    if (v55)
    {
      if (!v134)
      {
        goto LABEL_24;
      }

      sub_18B7B0AC0(0, &qword_1ED6514F0, 0x1E69DCAB8);
      v56 = v134;
      v57 = v55;
      v58 = sub_18BC215C8();

      a2 = v118;
      if ((v58 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (v134)
    {
      goto LABEL_24;
    }

    if (v131 != v15[v137[8]] || v127 != v15[v137[9]])
    {
      goto LABEL_24;
    }

    v59 = &v15[v137[10]];
    v60 = *(v59 + 1);
    if (v60)
    {
      break;
    }

    if (!v126)
    {
      goto LABEL_46;
    }

LABEL_24:
    sub_18B7ED118(v15, _s4ItemVMa_0);
    a1 = (a1 + 1) & v54;
    v2 = a1 >> 6;
    v30 = 1 << a1;
    if ((v139[a1 >> 6] & (1 << a1)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (!v126 || (*v59 != v115 || v60 != v126) && (sub_18BC21FD8() & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_46:
  sub_18B7ED118(v15, _s4ItemVMa_0);
  v63 = sub_18B7ED118(v136, _s4ItemVMa_0);
  v64 = *(a2 + 32);
  v114 = ((1 << v64) + 63) >> 6;
  v25 = 8 * v114;
  if ((v64 & 0x3Fu) > 0xD)
  {
    goto LABEL_94;
  }

  while (1)
  {
    v110[1] = v110;
    MEMORY[0x1EEE9AC00](v63);
    v66 = v110 - ((v65 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v66, v139, v65);
    v67 = *&v66[8 * v2] & ~v30;
    v68 = *(a2 + 16);
    v126 = v66;
    *&v66[8 * v2] = v67;
    v115 = v68 - 1;
    v69 = v119;
LABEL_49:
    v70 = v112;
    v2 = v137;
    v71 = i;
    v72 = v113;
    v30 = v133;
    a1 = v132;
LABEL_50:
    if (a1)
    {
      break;
    }

    if (v72 <= v30 + 1)
    {
      v74 = v30 + 1;
    }

    else
    {
      v74 = v72;
    }

    v75 = v74 - 1;
    while (1)
    {
      v73 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v73 >= v72)
      {
        v77 = 0;
        v78 = 1;
        v30 = v75;
        goto LABEL_61;
      }

      a1 = v71[v73];
      ++v30;
      if (a1)
      {
        v30 = v73;
        goto LABEL_60;
      }
    }

LABEL_93:
    __break(1u);
LABEL_94:
    v107 = v25;
    sub_18BC1E1A8();
    v108 = v107;
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v71 = swift_slowAlloc();
      memcpy(v71, v139, v108);
      v2 = v111;
      sub_18BC063CC(v71, v114, v118, a1, &v140);
      a2 = v109;

      if (v2)
      {
        goto LABEL_99;
      }

      MEMORY[0x18CFFEEE0](v71, -1, -1);
LABEL_91:
      v61 = v140;
LABEL_43:
      sub_18B7D2E34(v61);
      return a2;
    }

    a2 = v118;
  }

  v73 = v30;
LABEL_60:
  v76 = __clz(__rbit64(a1));
  v77 = (a1 - 1) & a1;
  sub_18B7EC6E4(*(v69 + 48) + (v76 | (v73 << 6)) * v138, v70, _s4ItemVMa_0);
  v78 = 0;
LABEL_61:
  v121(v70, v78, 1, v2);
  v140 = v69;
  v141 = v71;
  v142 = v125;
  v143 = v30;
  v144 = v77;
  if (v120(v70, 1, v2) == 1)
  {
    sub_18B988BAC(v70, &unk_1EA9D5380, &unk_18BC46510);
    a2 = sub_18BC083FC(v126, v114, v115, a2);
    goto LABEL_91;
  }

  v79 = v70;
  v80 = v130;
  sub_18B80D554(v79, v130, _s4ItemVMa_0);
  sub_18BC22158();
  v81 = *v80;
  sub_18BC22178();
  v82 = v80[1];
  sub_18BC22178();
  v136 = *(v2 + 24);
  sub_18BC20A78();
  v83 = *&v80[*(v2 + 28)];
  v135 = v83;
  sub_18BC22178();
  if (v83)
  {
    v84 = v83;
    sub_18BC215D8();
  }

  v85 = v130;
  LODWORD(v134) = v130[*(v2 + 32)];
  sub_18BC22178();
  v131 = *(v85 + *(v2 + 36));
  sub_18BC22178();
  v86 = (v85 + *(v2 + 40));
  v87 = *v86;
  v88 = v86[1];
  v133 = v30;
  v129 = v88;
  sub_18BC22178();
  if (v88)
  {
    sub_18BC20C28();
  }

  v132 = v77;
  v89 = sub_18BC221A8();
  v90 = -1 << *(a2 + 32);
  v91 = v89 & ~v90;
  v92 = v91 >> 6;
  v93 = 1 << v91;
  if (((1 << v91) & v139[v91 >> 6]) == 0)
  {
LABEL_48:
    sub_18B7ED118(v130, _s4ItemVMa_0);
    goto LABEL_49;
  }

  v127 = v87;
  v94 = ~v90;
  v95 = v128;
  while (2)
  {
    sub_18B7EC6E4(*(a2 + 48) + v91 * v138, v95, _s4ItemVMa_0);
    v96 = v95;
    if (v81 != *v95)
    {
      goto LABEL_69;
    }

    if (v82 != v95[1])
    {
      goto LABEL_69;
    }

    updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
    v96 = v128;
    if ((updated & 1) == 0)
    {
      goto LABEL_69;
    }

    v98 = *&v128[v137[7]];
    if (!v98)
    {
      if (!v135)
      {
        goto LABEL_76;
      }

      goto LABEL_69;
    }

    if (!v135)
    {
      goto LABEL_69;
    }

    sub_18B7B0AC0(0, &qword_1ED6514F0, 0x1E69DCAB8);
    v99 = v135;
    v100 = v98;
    v101 = sub_18BC215C8();

    v69 = v119;
    v96 = v128;
    a2 = v118;
    if ((v101 & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_76:
    if (v134 != *(v96 + v137[8]) || v131 != *(v96 + v137[9]))
    {
      goto LABEL_69;
    }

    v102 = (v96 + v137[10]);
    v103 = v102[1];
    if (!v103)
    {
      if (!v129)
      {
        break;
      }

      goto LABEL_69;
    }

    if (!v129 || (*v102 != v127 || v103 != v129) && (v104 = sub_18BC21FD8(), v96 = v128, (v104 & 1) == 0))
    {
LABEL_69:
      v95 = v96;
      sub_18B7ED118(v96, _s4ItemVMa_0);
      v91 = (v91 + 1) & v94;
      v92 = v91 >> 6;
      v93 = 1 << v91;
      if ((v139[v91 >> 6] & (1 << v91)) == 0)
      {
        goto LABEL_48;
      }

      continue;
    }

    break;
  }

  sub_18B7ED118(v96, _s4ItemVMa_0);
  sub_18B7ED118(v130, _s4ItemVMa_0);
  v105 = v126[v92];
  v126[v92] = v105 & ~v93;
  v70 = v112;
  v2 = v137;
  v71 = i;
  v72 = v113;
  v30 = v133;
  a1 = v132;
  if ((v105 & v93) == 0)
  {
    goto LABEL_50;
  }

  v106 = v115 - 1;
  if (!__OFSUB__(v115, 1))
  {
    --v115;
    if (!v106)
    {

      a2 = MEMORY[0x1E69E7CD0];
      goto LABEL_91;
    }

    goto LABEL_50;
  }

  __break(1u);
LABEL_99:

  result = MEMORY[0x18CFFEEE0](v71, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_18BC03B1C(char *a1, uint64_t a2)
{
  v89 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90, &qword_18BC45500);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v69 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v65 - v7;
  v80 = _s4PageVMa_0(0);
  v9 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v65 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v81 = (&v65 - v15);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v17 = (a1 + 56);
  v16 = *(a1 + 7);
  v18 = -1 << a1[32];
  v79 = ~v18;
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v16;
  v72 = (63 - v18) >> 6;
  v78 = (v9 + 56);
  v77 = (v9 + 48);
  v82 = (a2 + 56);
  sub_18BC1E3F8();
  v22 = 0;
  v76 = a1;
  v75 = (a1 + 56);
  v67 = v8;
  for (i = v9; ; v9 = i)
  {
    v23 = v20;
    v24 = v22;
    v71 = v20;
    if (v20)
    {
LABEL_15:
      v20 = (v23 - 1) & v23;
      sub_18B7EC6E4(*(a1 + 6) + *(v9 + 72) * (__clz(__rbit64(v23)) | (v24 << 6)), v8, _s4PageVMa_0);
      v28 = 0;
      v26 = v24;
    }

    else
    {
      v25 = v72 <= (v22 + 1) ? v22 + 1 : v72;
      v26 = v25 - 1;
      v27 = v22;
      while (1)
      {
        v24 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_57;
        }

        if (v24 >= v72)
        {
          break;
        }

        v23 = *(v17 + 8 * v24);
        ++v27;
        if (v23)
        {
          goto LABEL_15;
        }
      }

      v20 = 0;
      v28 = 1;
    }

    v29 = v80;
    v74 = *v78;
    v74(v8, v28, 1, v80);
    v84 = a1;
    v85 = v17;
    v86 = v79;
    v87 = v26;
    v88 = v20;
    v73 = *v77;
    if (v73(v8, 1, v29) == 1)
    {
      sub_18B988BAC(v8, &unk_1EA9DBE90, &qword_18BC45500);
      v59 = a1;
      goto LABEL_52;
    }

    sub_18B80D554(v8, v81, _s4PageVMa_0);
    sub_18BC22158();
    v30 = sub_18BC1EC08();
    v31 = sub_18B7F4EE4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v71 = v30;
    v70 = v31;
    sub_18BC20A78();
    v32 = sub_18BC221A8();
    v33 = -1 << *(a2 + 32);
    v22 = v32 & ~v33;
    v9 = v22 >> 6;
    v8 = 1 << v22;
    if (((1 << v22) & v82[v22 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_18B7ED118(v81, _s4PageVMa_0);
    v22 = v26;
    a1 = v76;
    v17 = v75;
    v8 = v67;
  }

  v34 = ~v33;
  v24 = *(i + 72);
  v17 = a2;
  while (1)
  {
    sub_18B7EC6E4(*(a2 + 48) + v24 * v22, v13, _s4PageVMa_0);
    updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
    sub_18B7ED118(v13, _s4PageVMa_0);
    if (updated)
    {
      break;
    }

    v22 = (v22 + 1) & v34;
    v9 = v22 >> 6;
    v8 = 1 << v22;
    a2 = v17;
    if (((1 << v22) & v82[v22 >> 6]) == 0)
    {
      goto LABEL_6;
    }
  }

  v36 = sub_18B7ED118(v81, _s4PageVMa_0);
  a2 = v17;
  v37 = *(v17 + 32);
  v66 = ((1 << v37) + 63) >> 6;
  v21 = (8 * v66);
  a1 = v69;
  if ((v37 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v67 = &v65;
    MEMORY[0x1EEE9AC00](v36);
    v39 = &v65 - ((v38 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v39, v82, v38);
    v40 = *&v39[8 * v9] & ~v8;
    v41 = *(a2 + 16);
    v81 = v39;
    *&v39[8 * v9] = v40;
    v42 = v41 - 1;
    v22 = v76;
    v9 = v75;
    v43 = v72;
LABEL_25:
    i = v42;
    while (v20)
    {
      v44 = v26;
LABEL_37:
      v47 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      sub_18B7EC6E4(*(v22 + 48) + (v47 | (v44 << 6)) * v24, a1, _s4PageVMa_0);
      v48 = 0;
LABEL_38:
      v49 = v80;
      v74(a1, v48, 1, v80);
      v84 = v22;
      v85 = v9;
      v86 = v79;
      v87 = v26;
      v88 = v20;
      if (v73(a1, 1, v49) == 1)
      {
        sub_18B988BAC(a1, &unk_1EA9DBE90, &qword_18BC45500);
        a2 = sub_18BC08760(v81, v66, i, a2);
        goto LABEL_51;
      }

      sub_18B80D554(a1, v83, _s4PageVMa_0);
      sub_18BC22158();
      sub_18BC20A78();
      v50 = sub_18BC221A8();
      v51 = -1 << *(a2 + 32);
      v52 = v50 & ~v51;
      v8 = v52 >> 6;
      v53 = 1 << v52;
      if (((1 << v52) & v82[v52 >> 6]) != 0)
      {
        sub_18B7EC6E4(*(v17 + 48) + v52 * v24, v13, _s4PageVMa_0);
        v54 = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        sub_18B7ED118(v13, _s4PageVMa_0);
        if ((v54 & 1) == 0)
        {
          v55 = ~v51;
          do
          {
            v52 = (v52 + 1) & v55;
            v8 = v52 >> 6;
            v53 = 1 << v52;
            if (((1 << v52) & v82[v52 >> 6]) == 0)
            {
              goto LABEL_26;
            }

            sub_18B7EC6E4(*(v17 + 48) + v52 * v24, v13, _s4PageVMa_0);
            v56 = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
            sub_18B7ED118(v13, _s4PageVMa_0);
          }

          while ((v56 & 1) == 0);
        }

        sub_18B7ED118(v83, _s4PageVMa_0);
        v57 = v81[v8];
        v81[v8] = v57 & ~v53;
        v58 = (v57 & v53) == 0;
        a2 = v17;
        v22 = v76;
        a1 = v69;
        v9 = v75;
        v43 = v72;
        if (!v58)
        {
          v42 = i - 1;
          if (__OFSUB__(i, 1))
          {
            __break(1u);
          }

          if (i == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_51;
          }

          goto LABEL_25;
        }
      }

      else
      {
LABEL_26:
        sub_18B7ED118(v83, _s4PageVMa_0);
        a2 = v17;
        v22 = v76;
        a1 = v69;
        v9 = v75;
        v43 = v72;
      }
    }

    if (v43 <= (v26 + 1))
    {
      v45 = v26 + 1;
    }

    else
    {
      v45 = v43;
    }

    v46 = v45 - 1;
    while (1)
    {
      v44 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v44 >= v43)
      {
        v20 = 0;
        v48 = 1;
        v26 = v46;
        goto LABEL_38;
      }

      v20 = *(v9 + 8 * v44);
      ++v26;
      if (v20)
      {
        v26 = v44;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v81 = v21;
    sub_18BC1E1A8();
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v61 = v81;
  v62 = swift_slowAlloc();
  memcpy(v62, v82, v61);
  sub_18BC06AB8(v62, v66, a2, v22, &v84);
  v64 = v63;

  MEMORY[0x18CFFEEE0](v62, -1, -1);
  a2 = v64;
LABEL_51:
  v59 = v84;
LABEL_52:
  sub_18B7D2E34(v59);
  return a2;
}

uint64_t sub_18BC0454C(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE00, &unk_18BC41860);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v70 - v8;
  v10 = _s4ItemVMa_4(0);
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v70 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v84 = (&v70 - v17);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v73 = v6;
  v19 = a1 + 56;
  v18 = *(a1 + 56);
  v20 = -1 << *(a1 + 32);
  v83 = ~v20;
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v18;
  v76 = (63 - v20) >> 6;
  v82 = (v16 + 56);
  v72 = v16;
  v81 = (v16 + 48);
  v85 = (a2 + 56);
  sub_18BC1E3F8();
  v24 = 0;
  v80 = a1;
  v88 = v10;
  v79 = a1 + 56;
  v71 = v9;
  while (1)
  {
    v25 = v22;
    v26 = v24;
    i = v22;
    if (v22)
    {
LABEL_15:
      v22 = (v25 - 1) & v25;
      sub_18B7EC6E4(*(a1 + 48) + *(v72 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v9, _s4ItemVMa_4);
      v30 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v76 <= (v24 + 1) ? v24 + 1 : v76;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v76)
        {
          break;
        }

        v25 = *(v19 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_15;
        }
      }

      v22 = 0;
      v30 = 1;
    }

    v78 = *v82;
    v78(v9, v30, 1, v10);
    v89 = a1;
    v90 = v19;
    v91 = v83;
    v92 = v28;
    v93 = v22;
    v77 = *v81;
    if (v77(v9, 1, v10) == 1)
    {
      sub_18B988BAC(v9, &qword_1EA9DBE00, &unk_18BC41860);
      v63 = a1;
      goto LABEL_52;
    }

    sub_18B80D554(v9, v84, _s4ItemVMa_4);
    sub_18BC22158();
    v31 = sub_18BC1EC08();
    v32 = sub_18B7F4EE4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v75 = v31;
    v74 = v32;
    sub_18BC20A78();
    v33 = sub_18BC221A8();
    v34 = -1 << *(a2 + 32);
    v24 = v33 & ~v34;
    v19 = v24 >> 6;
    v9 = 1 << v24;
    if (((1 << v24) & v85[v24 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_18B7ED118(v84, _s4ItemVMa_4);
    v24 = v28;
    v10 = v88;
    v19 = v79;
    v9 = v71;
    a1 = v80;
  }

  v35 = ~v34;
  v36 = *(v72 + 72);
  v37 = *(a2 + 48);
  for (i = v36; ; v36 = i)
  {
    sub_18B7EC6E4(v37 + v36 * v24, v14, _s4ItemVMa_4);
    updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
    sub_18B7ED118(v14, _s4ItemVMa_4);
    if (updated)
    {
      break;
    }

    v24 = (v24 + 1) & v35;
    v19 = v24 >> 6;
    v9 = 1 << v24;
    if (((1 << v24) & v85[v24 >> 6]) == 0)
    {
      goto LABEL_6;
    }

    v37 = *(a2 + 48);
  }

  v39 = sub_18B7ED118(v84, _s4ItemVMa_4);
  v40 = *(a2 + 32);
  v26 = ((1 << v40) + 63) >> 6;
  v23 = 8 * v26;
  a1 = v80;
  if ((v40 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v70 = v26;
    v71 = &v70;
    MEMORY[0x1EEE9AC00](v39);
    v42 = &v70 - ((v41 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v42, v85, v41);
    v43 = *&v42[8 * v19] & ~v9;
    v44 = *(a2 + 16);
    v84 = v42;
    *&v42[8 * v19] = v43;
    v45 = v44 - 1;
    v24 = v73;
    v26 = v88;
    v46 = v79;
    v47 = v76;
LABEL_25:
    v72 = v45;
    while (v22)
    {
      v48 = v28;
LABEL_37:
      v51 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      sub_18B7EC6E4(*(a1 + 48) + (v51 | (v48 << 6)) * i, v24, _s4ItemVMa_4);
      v52 = 0;
LABEL_38:
      v78(v24, v52, 1, v26);
      v89 = a1;
      v90 = v46;
      v91 = v83;
      v92 = v28;
      v93 = v22;
      if (v77(v24, 1, v26) == 1)
      {
        sub_18B988BAC(v24, &qword_1EA9DBE00, &unk_18BC41860);
        a2 = sub_18BC07DB0(v84, v70, v72, a2);
        goto LABEL_51;
      }

      sub_18B80D554(v24, v87, _s4ItemVMa_4);
      sub_18BC22158();
      v19 = *(v26 + 20);
      sub_18BC20A78();
      v53 = sub_18BC221A8();
      v54 = a2;
      v55 = -1 << *(a2 + 32);
      v56 = v53 & ~v55;
      v9 = v56 >> 6;
      v57 = 1 << v56;
      if (((1 << v56) & v85[v56 >> 6]) != 0)
      {
        sub_18B7EC6E4(*(v54 + 48) + v56 * i, v14, _s4ItemVMa_4);
        v58 = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        sub_18B7ED118(v14, _s4ItemVMa_4);
        if ((v58 & 1) == 0)
        {
          v59 = ~v55;
          do
          {
            v56 = (v56 + 1) & v59;
            v9 = v56 >> 6;
            v57 = 1 << v56;
            if (((1 << v56) & v85[v56 >> 6]) == 0)
            {
              goto LABEL_26;
            }

            sub_18B7EC6E4(*(v54 + 48) + v56 * i, v14, _s4ItemVMa_4);
            v60 = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
            sub_18B7ED118(v14, _s4ItemVMa_4);
          }

          while ((v60 & 1) == 0);
        }

        sub_18B7ED118(v87, _s4ItemVMa_4);
        v61 = v84[v9];
        v84[v9] = v61 & ~v57;
        v62 = (v61 & v57) == 0;
        a2 = v54;
        a1 = v80;
        v24 = v73;
        v26 = v88;
        v46 = v79;
        v47 = v76;
        if (!v62)
        {
          v45 = v72 - 1;
          if (__OFSUB__(v72, 1))
          {
            __break(1u);
          }

          if (v72 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_51;
          }

          goto LABEL_25;
        }
      }

      else
      {
LABEL_26:
        sub_18B7ED118(v87, _s4ItemVMa_4);
        a2 = v54;
        a1 = v80;
        v24 = v73;
        v26 = v88;
        v46 = v79;
        v47 = v76;
      }
    }

    if (v47 <= (v28 + 1))
    {
      v49 = v28 + 1;
    }

    else
    {
      v49 = v47;
    }

    v50 = v49 - 1;
    while (1)
    {
      v48 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v48 >= v47)
      {
        v22 = 0;
        v52 = 1;
        v28 = v50;
        goto LABEL_38;
      }

      v22 = *(v46 + 8 * v48);
      ++v28;
      if (v22)
      {
        v28 = v48;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v65 = v23;
    sub_18BC1E1A8();
    v84 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v66 = v84;
  v67 = swift_slowAlloc();
  memcpy(v67, v85, v66);
  sub_18BC06F84(v67, v26, a2, v24, &v89);
  v69 = v68;

  MEMORY[0x18CFFEEE0](v67, -1, -1);
  a2 = v69;
LABEL_51:
  v63 = v89;
LABEL_52:
  sub_18B7D2E34(v63);
  return a2;
}

uint64_t sub_18BC04FD4(char *a1, uint64_t a2)
{
  v89 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6B0, &unk_18BC53D30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v69 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v65 - v7;
  v80 = _s4ItemVMa_1(0);
  v9 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v65 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v81 = (&v65 - v15);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v17 = (a1 + 56);
  v16 = *(a1 + 7);
  v18 = -1 << a1[32];
  v79 = ~v18;
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v16;
  v72 = (63 - v18) >> 6;
  v78 = (v9 + 56);
  v77 = (v9 + 48);
  v82 = (a2 + 56);
  sub_18BC1E3F8();
  v22 = 0;
  v76 = a1;
  v75 = (a1 + 56);
  v67 = v8;
  for (i = v9; ; v9 = i)
  {
    v23 = v20;
    v24 = v22;
    v71 = v20;
    if (v20)
    {
LABEL_15:
      v20 = (v23 - 1) & v23;
      sub_18B7EC6E4(*(a1 + 6) + *(v9 + 72) * (__clz(__rbit64(v23)) | (v24 << 6)), v8, _s4ItemVMa_1);
      v28 = 0;
      v26 = v24;
    }

    else
    {
      v25 = v72 <= (v22 + 1) ? v22 + 1 : v72;
      v26 = v25 - 1;
      v27 = v22;
      while (1)
      {
        v24 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_57;
        }

        if (v24 >= v72)
        {
          break;
        }

        v23 = *(v17 + 8 * v24);
        ++v27;
        if (v23)
        {
          goto LABEL_15;
        }
      }

      v20 = 0;
      v28 = 1;
    }

    v29 = v80;
    v74 = *v78;
    v74(v8, v28, 1, v80);
    v84 = a1;
    v85 = v17;
    v86 = v79;
    v87 = v26;
    v88 = v20;
    v73 = *v77;
    if (v73(v8, 1, v29) == 1)
    {
      sub_18B988BAC(v8, &qword_1EA9DB6B0, &unk_18BC53D30);
      v59 = a1;
      goto LABEL_52;
    }

    sub_18B80D554(v8, v81, _s4ItemVMa_1);
    sub_18BC22158();
    v30 = sub_18BC1EC08();
    v31 = sub_18B7F4EE4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v71 = v30;
    v70 = v31;
    sub_18BC20A78();
    v32 = sub_18BC221A8();
    v33 = -1 << *(a2 + 32);
    v22 = v32 & ~v33;
    v9 = v22 >> 6;
    v8 = 1 << v22;
    if (((1 << v22) & v82[v22 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_18B7ED118(v81, _s4ItemVMa_1);
    v22 = v26;
    a1 = v76;
    v17 = v75;
    v8 = v67;
  }

  v34 = ~v33;
  v24 = *(i + 72);
  v17 = a2;
  while (1)
  {
    sub_18B7EC6E4(*(a2 + 48) + v24 * v22, v13, _s4ItemVMa_1);
    updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
    sub_18B7ED118(v13, _s4ItemVMa_1);
    if (updated)
    {
      break;
    }

    v22 = (v22 + 1) & v34;
    v9 = v22 >> 6;
    v8 = 1 << v22;
    a2 = v17;
    if (((1 << v22) & v82[v22 >> 6]) == 0)
    {
      goto LABEL_6;
    }
  }

  v36 = sub_18B7ED118(v81, _s4ItemVMa_1);
  a2 = v17;
  v37 = *(v17 + 32);
  v66 = ((1 << v37) + 63) >> 6;
  v21 = (8 * v66);
  a1 = v69;
  if ((v37 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v67 = &v65;
    MEMORY[0x1EEE9AC00](v36);
    v39 = &v65 - ((v38 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v39, v82, v38);
    v40 = *&v39[8 * v9] & ~v8;
    v41 = *(a2 + 16);
    v81 = v39;
    *&v39[8 * v9] = v40;
    v42 = v41 - 1;
    v22 = v76;
    v9 = v75;
    v43 = v72;
LABEL_25:
    i = v42;
    while (v20)
    {
      v44 = v26;
LABEL_37:
      v47 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      sub_18B7EC6E4(*(v22 + 48) + (v47 | (v44 << 6)) * v24, a1, _s4ItemVMa_1);
      v48 = 0;
LABEL_38:
      v49 = v80;
      v74(a1, v48, 1, v80);
      v84 = v22;
      v85 = v9;
      v86 = v79;
      v87 = v26;
      v88 = v20;
      if (v73(a1, 1, v49) == 1)
      {
        sub_18B988BAC(a1, &qword_1EA9DB6B0, &unk_18BC53D30);
        a2 = sub_18BC080DC(v81, v66, i, a2);
        goto LABEL_51;
      }

      sub_18B80D554(a1, v83, _s4ItemVMa_1);
      sub_18BC22158();
      sub_18BC20A78();
      v50 = sub_18BC221A8();
      v51 = -1 << *(a2 + 32);
      v52 = v50 & ~v51;
      v8 = v52 >> 6;
      v53 = 1 << v52;
      if (((1 << v52) & v82[v52 >> 6]) != 0)
      {
        sub_18B7EC6E4(*(v17 + 48) + v52 * v24, v13, _s4ItemVMa_1);
        v54 = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        sub_18B7ED118(v13, _s4ItemVMa_1);
        if ((v54 & 1) == 0)
        {
          v55 = ~v51;
          do
          {
            v52 = (v52 + 1) & v55;
            v8 = v52 >> 6;
            v53 = 1 << v52;
            if (((1 << v52) & v82[v52 >> 6]) == 0)
            {
              goto LABEL_26;
            }

            sub_18B7EC6E4(*(v17 + 48) + v52 * v24, v13, _s4ItemVMa_1);
            v56 = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
            sub_18B7ED118(v13, _s4ItemVMa_1);
          }

          while ((v56 & 1) == 0);
        }

        sub_18B7ED118(v83, _s4ItemVMa_1);
        v57 = v81[v8];
        v81[v8] = v57 & ~v53;
        v58 = (v57 & v53) == 0;
        a2 = v17;
        v22 = v76;
        a1 = v69;
        v9 = v75;
        v43 = v72;
        if (!v58)
        {
          v42 = i - 1;
          if (__OFSUB__(i, 1))
          {
            __break(1u);
          }

          if (i == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_51;
          }

          goto LABEL_25;
        }
      }

      else
      {
LABEL_26:
        sub_18B7ED118(v83, _s4ItemVMa_1);
        a2 = v17;
        v22 = v76;
        a1 = v69;
        v9 = v75;
        v43 = v72;
      }
    }

    if (v43 <= (v26 + 1))
    {
      v45 = v26 + 1;
    }

    else
    {
      v45 = v43;
    }

    v46 = v45 - 1;
    while (1)
    {
      v44 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v44 >= v43)
      {
        v20 = 0;
        v48 = 1;
        v26 = v46;
        goto LABEL_38;
      }

      v20 = *(v9 + 8 * v44);
      ++v26;
      if (v20)
      {
        v26 = v44;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v81 = v21;
    sub_18BC1E1A8();
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v61 = v81;
  v62 = swift_slowAlloc();
  memcpy(v62, v82, v61);
  sub_18BC07478(v62, v66, a2, v22, &v84);
  v64 = v63;

  MEMORY[0x18CFFEEE0](v62, -1, -1);
  a2 = v64;
LABEL_51:
  v59 = v84;
LABEL_52:
  sub_18B7D2E34(v59);
  return a2;
}

void sub_18BC05A04(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0, &qword_18BC432A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_18BC1EC08();
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_18B988BAC(v11, &unk_1EA9D3AE0, &qword_18BC432A0);
          v45 = v61;
          sub_18BC1E1A8();
          sub_18B86E524(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_18B7F4EE4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v35 = sub_18BC20A68();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_18B7F4EE4(&qword_1EA9D9FE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v43 = sub_18BC20AE8();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_18BC05ED8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v46 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30, &unk_18BC42E60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v54 = _s4ItemVMa_2(0);
  MEMORY[0x1EEE9AC00](v54);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v45 - v15;
  v16 = *(a3 + 16);
  v17 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v18 = *(a1 + v17) & ((-1 << a4) - 1);
  v48 = a1;
  v49 = v11;
  *(a1 + v17) = v18;
  v19 = v16 - 1;
  v51 = (v20 + 56);
  v52 = v20;
  v50 = (v20 + 48);
  v55 = a3;
  v53 = a3 + 56;
  while (2)
  {
    v47 = v19;
    do
    {
      while (1)
      {
        v21 = *a5;
        v22 = a5[1];
        v24 = a5[2];
        v23 = a5[3];
        v25 = a5[4];
        if (!v25)
        {
          v27 = (v24 + 64) >> 6;
          if (v27 <= v23 + 1)
          {
            v28 = v23 + 1;
          }

          else
          {
            v28 = (v24 + 64) >> 6;
          }

          v29 = v28 - 1;
          while (1)
          {
            v26 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v26 >= v27)
            {
              v30 = 0;
              v31 = 1;
              goto LABEL_14;
            }

            v25 = *(v22 + 8 * v26);
            ++v23;
            if (v25)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_28;
        }

        v26 = a5[3];
LABEL_13:
        v30 = (v25 - 1) & v25;
        sub_18B7EC6E4(*(v21 + 48) + *(v52 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11, _s4ItemVMa_2);
        v31 = 0;
        v29 = v26;
LABEL_14:
        v32 = v54;
        (*v51)(v11, v31, 1, v54);
        *a5 = v21;
        a5[1] = v22;
        a5[2] = v24;
        a5[3] = v29;
        a5[4] = v30;
        if ((*v50)(v11, 1, v32) == 1)
        {
          sub_18B988BAC(v11, &unk_1EA9D4F30, &unk_18BC42E60);
          v44 = v55;
          sub_18BC1E1A8();
          sub_18BC07A84(v48, v46, v47, v44);
          return;
        }

        sub_18B80D554(v11, v56, _s4ItemVMa_2);
        v33 = v55;
        sub_18BC22158();
        sub_18BC1EC08();
        sub_18B7F4EE4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_18BC20A78();
        v34 = sub_18BC221A8();
        v35 = -1 << *(v33 + 32);
        v36 = v34 & ~v35;
        v37 = v36 >> 6;
        v38 = 1 << v36;
        if (((1 << v36) & *(v53 + 8 * (v36 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_18B7ED118(v56, _s4ItemVMa_2);
        v11 = v49;
      }

      v39 = *(v52 + 72);
      sub_18B7EC6E4(*(v55 + 48) + v39 * v36, v13, _s4ItemVMa_2);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B7ED118(v13, _s4ItemVMa_2);
      if ((updated & 1) == 0)
      {
        v41 = ~v35;
        do
        {
          v36 = (v36 + 1) & v41;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v53 + 8 * (v36 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          sub_18B7EC6E4(*(v55 + 48) + v39 * v36, v13, _s4ItemVMa_2);
          v42 = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
          sub_18B7ED118(v13, _s4ItemVMa_2);
        }

        while ((v42 & 1) == 0);
      }

      sub_18B7ED118(v56, _s4ItemVMa_2);
      v11 = v49;
      v43 = v48[v37];
      v48[v37] = v43 & ~v38;
    }

    while ((v43 & v38) == 0);
    v19 = v47 - 1;
    if (__OFSUB__(v47, 1))
    {
LABEL_28:
      __break(1u);
      return;
    }

    if (v47 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_18BC063CC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v71 = a3;
  v59 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5380, &unk_18BC46510);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v58 - v10;
  v75 = _s4ItemVMa_0(0);
  MEMORY[0x1EEE9AC00](v75);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v74 = &v58 - v15;
  v16 = *(a3 + 16);
  v17 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v18 = *(a1 + v17) & ((-1 << a4) - 1);
  v61 = a1;
  *(a1 + v17) = v18;
  v19 = v16 - 1;
  v69 = v20;
  v66 = (v20 + 48);
  v67 = (v20 + 56);
  v78 = a3 + 56;
  v65 = a5;
  v64 = v11;
  do
  {
    v60 = v19;
    do
    {
      while (1)
      {
        v21 = *a5;
        v22 = a5[1];
        v24 = a5[2];
        v23 = a5[3];
        v25 = a5[4];
        if (!v25)
        {
          v27 = (v24 + 64) >> 6;
          if (v27 <= v23 + 1)
          {
            v28 = v23 + 1;
          }

          else
          {
            v28 = (v24 + 64) >> 6;
          }

          v29 = v28 - 1;
          while (1)
          {
            v26 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v26 >= v27)
            {
              v30 = 0;
              v31 = 1;
              goto LABEL_14;
            }

            v25 = *(v22 + 8 * v26);
            ++v23;
            if (v25)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_46:
          __break(1u);
          return;
        }

        v26 = a5[3];
LABEL_13:
        v30 = (v25 - 1) & v25;
        sub_18B7EC6E4(*(v21 + 48) + *(v69 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11, _s4ItemVMa_0);
        v31 = 0;
        v29 = v26;
LABEL_14:
        v32 = v75;
        (*v67)(v11, v31, 1, v75);
        *a5 = v21;
        a5[1] = v22;
        a5[2] = v24;
        a5[3] = v29;
        a5[4] = v30;
        if ((*v66)(v11, 1, v32) == 1)
        {
          sub_18B988BAC(v11, &unk_1EA9D5380, &unk_18BC46510);
          v57 = v71;
          sub_18BC1E1A8();
          sub_18BC083FC(v61, v59, v60, v57);
          return;
        }

        v33 = v74;
        sub_18B80D554(v11, v74, _s4ItemVMa_0);
        sub_18BC22158();
        v77 = *v33;
        sub_18BC22178();
        v76 = v33[1];
        sub_18BC22178();
        v34 = v32[6];
        sub_18BC1EC08();
        sub_18B7F4EE4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v73 = v34;
        sub_18BC20A78();
        v35 = *&v33[v32[7]];
        sub_18BC22178();
        if (v35)
        {
          v36 = v35;
          sub_18BC215D8();
        }

        v37 = v74;
        v70 = v74[v32[8]];
        sub_18BC22178();
        v68 = *(v37 + v32[9]);
        sub_18BC22178();
        v38 = (v37 + v32[10]);
        v39 = *v38;
        v40 = v38[1];
        v41 = v71;
        sub_18BC22178();
        if (v40)
        {
          sub_18BC20C28();
        }

        v42 = sub_18BC221A8();
        v43 = -1 << *(v41 + 32);
        v44 = v42 & ~v43;
        v45 = v44 >> 6;
        v46 = 1 << v44;
        if (((1 << v44) & *(v78 + 8 * (v44 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_18B7ED118(v74, _s4ItemVMa_0);
        a5 = v65;
        v11 = v64;
      }

      v63 = v40;
      v62 = v39;
      v72 = v35;
      v47 = ~v43;
      v48 = *(v69 + 72);
      while (1)
      {
        sub_18B7EC6E4(*(v41 + 48) + v48 * v44, v13, _s4ItemVMa_0);
        if (v77 != *v13 || v76 != v13[1] || (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) == 0)
        {
          goto LABEL_22;
        }

        v49 = *&v13[v75[7]];
        if (v49)
        {
          if (!v72)
          {
            goto LABEL_22;
          }

          sub_18B7B0AC0(0, &qword_1ED6514F0, 0x1E69DCAB8);
          v50 = v72;
          v51 = v49;
          v52 = sub_18BC215C8();

          v41 = v71;
          if ((v52 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        else if (v72)
        {
          goto LABEL_22;
        }

        if (v70 != v13[v75[8]] || v68 != v13[v75[9]])
        {
          goto LABEL_22;
        }

        v53 = &v13[v75[10]];
        v54 = *(v53 + 1);
        if (v54)
        {
          break;
        }

        if (!v63)
        {
          goto LABEL_38;
        }

LABEL_22:
        sub_18B7ED118(v13, _s4ItemVMa_0);
        v44 = (v44 + 1) & v47;
        v45 = v44 >> 6;
        v46 = 1 << v44;
        if ((*(v78 + 8 * (v44 >> 6)) & (1 << v44)) == 0)
        {
          goto LABEL_3;
        }
      }

      if (!v63 || (*v53 != v62 || v54 != v63) && (sub_18BC21FD8() & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_38:
      sub_18B7ED118(v13, _s4ItemVMa_0);
      sub_18B7ED118(v74, _s4ItemVMa_0);
      v55 = v61[v45];
      v61[v45] = v55 & ~v46;
      v56 = (v55 & v46) == 0;
      a5 = v65;
      v11 = v64;
    }

    while (v56);
    v19 = v60 - 1;
    if (__OFSUB__(v60, 1))
    {
      goto LABEL_46;
    }
  }

  while (v60 != 1);
}

void sub_18BC06AB8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v45 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90, &qword_18BC45500);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v52 = &v44 - v10;
  v51 = _s4PageVMa_0(0);
  MEMORY[0x1EEE9AC00](v51);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v47 = a1;
  v48 = &v44 - v14;
  v15 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v16 = v15 - 1;
  v49 = (v17 + 48);
  v50 = (v17 + 56);
  v55 = a3;
  v53 = v17;
  v54 = a3 + 56;
  while (2)
  {
    v46 = v16;
    do
    {
      while (1)
      {
        v18 = *a5;
        v19 = a5[1];
        v21 = a5[2];
        v20 = a5[3];
        v22 = a5[4];
        if (!v22)
        {
          v24 = (v21 + 64) >> 6;
          if (v24 <= v20 + 1)
          {
            v25 = v20 + 1;
          }

          else
          {
            v25 = (v21 + 64) >> 6;
          }

          v26 = v25 - 1;
          while (1)
          {
            v23 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            if (v23 >= v24)
            {
              v27 = 0;
              v29 = 1;
              v28 = v52;
              goto LABEL_14;
            }

            v22 = *(v19 + 8 * v23);
            ++v20;
            if (v22)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_28;
        }

        v23 = a5[3];
LABEL_13:
        v27 = (v22 - 1) & v22;
        v28 = v52;
        sub_18B7EC6E4(*(v18 + 48) + *(v53 + 72) * (__clz(__rbit64(v22)) | (v23 << 6)), v52, _s4PageVMa_0);
        v29 = 0;
        v26 = v23;
LABEL_14:
        v30 = v51;
        (*v50)(v28, v29, 1, v51);
        *a5 = v18;
        a5[1] = v19;
        a5[2] = v21;
        a5[3] = v26;
        a5[4] = v27;
        if ((*v49)(v28, 1, v30) == 1)
        {
          sub_18B988BAC(v28, &unk_1EA9DBE90, &qword_18BC45500);
          v43 = v55;
          sub_18BC1E1A8();
          sub_18BC08760(v47, v45, v46, v43);
          return;
        }

        v31 = v48;
        sub_18B80D554(v28, v48, _s4PageVMa_0);
        v32 = v55;
        sub_18BC22158();
        sub_18BC1EC08();
        sub_18B7F4EE4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_18BC20A78();
        v33 = sub_18BC221A8();
        v34 = -1 << *(v32 + 32);
        v35 = v33 & ~v34;
        v36 = v35 >> 6;
        v37 = 1 << v35;
        if (((1 << v35) & *(v54 + 8 * (v35 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_18B7ED118(v31, _s4PageVMa_0);
      }

      v38 = *(v53 + 72);
      sub_18B7EC6E4(*(v55 + 48) + v38 * v35, v12, _s4PageVMa_0);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B7ED118(v12, _s4PageVMa_0);
      if ((updated & 1) == 0)
      {
        v40 = ~v34;
        do
        {
          v35 = (v35 + 1) & v40;
          v36 = v35 >> 6;
          v37 = 1 << v35;
          if (((1 << v35) & *(v54 + 8 * (v35 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          sub_18B7EC6E4(*(v55 + 48) + v38 * v35, v12, _s4PageVMa_0);
          v41 = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
          sub_18B7ED118(v12, _s4PageVMa_0);
        }

        while ((v41 & 1) == 0);
      }

      sub_18B7ED118(v31, _s4PageVMa_0);
      v42 = v47[v36];
      v47[v36] = v42 & ~v37;
    }

    while ((v42 & v37) == 0);
    v16 = v46 - 1;
    if (__OFSUB__(v46, 1))
    {
LABEL_28:
      __break(1u);
      return;
    }

    if (v46 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_18BC06F84(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v46 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE00, &unk_18BC41860);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v54 = _s4ItemVMa_4(0);
  MEMORY[0x1EEE9AC00](v54);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v45 - v15;
  v16 = *(a3 + 16);
  v17 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v18 = *(a1 + v17) & ((-1 << a4) - 1);
  v48 = a1;
  v49 = v11;
  *(a1 + v17) = v18;
  v19 = v16 - 1;
  v51 = (v20 + 56);
  v52 = v20;
  v50 = (v20 + 48);
  v55 = a3;
  v53 = a3 + 56;
  while (2)
  {
    v47 = v19;
    do
    {
      while (1)
      {
        v21 = *a5;
        v22 = a5[1];
        v24 = a5[2];
        v23 = a5[3];
        v25 = a5[4];
        if (!v25)
        {
          v27 = (v24 + 64) >> 6;
          if (v27 <= v23 + 1)
          {
            v28 = v23 + 1;
          }

          else
          {
            v28 = (v24 + 64) >> 6;
          }

          v29 = v28 - 1;
          while (1)
          {
            v26 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v26 >= v27)
            {
              v30 = 0;
              v31 = 1;
              goto LABEL_14;
            }

            v25 = *(v22 + 8 * v26);
            ++v23;
            if (v25)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_28;
        }

        v26 = a5[3];
LABEL_13:
        v30 = (v25 - 1) & v25;
        sub_18B7EC6E4(*(v21 + 48) + *(v52 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11, _s4ItemVMa_4);
        v31 = 0;
        v29 = v26;
LABEL_14:
        v32 = v54;
        (*v51)(v11, v31, 1, v54);
        *a5 = v21;
        a5[1] = v22;
        a5[2] = v24;
        a5[3] = v29;
        a5[4] = v30;
        if ((*v50)(v11, 1, v32) == 1)
        {
          sub_18B988BAC(v11, &qword_1EA9DBE00, &unk_18BC41860);
          v44 = v55;
          sub_18BC1E1A8();
          sub_18BC07DB0(v48, v46, v47, v44);
          return;
        }

        sub_18B80D554(v11, v56, _s4ItemVMa_4);
        v33 = v55;
        sub_18BC22158();
        sub_18BC1EC08();
        sub_18B7F4EE4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_18BC20A78();
        v34 = sub_18BC221A8();
        v35 = -1 << *(v33 + 32);
        v36 = v34 & ~v35;
        v37 = v36 >> 6;
        v38 = 1 << v36;
        if (((1 << v36) & *(v53 + 8 * (v36 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_18B7ED118(v56, _s4ItemVMa_4);
        v11 = v49;
      }

      v39 = *(v52 + 72);
      sub_18B7EC6E4(*(v55 + 48) + v39 * v36, v13, _s4ItemVMa_4);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B7ED118(v13, _s4ItemVMa_4);
      if ((updated & 1) == 0)
      {
        v41 = ~v35;
        do
        {
          v36 = (v36 + 1) & v41;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v53 + 8 * (v36 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          sub_18B7EC6E4(*(v55 + 48) + v39 * v36, v13, _s4ItemVMa_4);
          v42 = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
          sub_18B7ED118(v13, _s4ItemVMa_4);
        }

        while ((v42 & 1) == 0);
      }

      sub_18B7ED118(v56, _s4ItemVMa_4);
      v11 = v49;
      v43 = v48[v37];
      v48[v37] = v43 & ~v38;
    }

    while ((v43 & v38) == 0);
    v19 = v47 - 1;
    if (__OFSUB__(v47, 1))
    {
LABEL_28:
      __break(1u);
      return;
    }

    if (v47 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_18BC07478(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v45 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6B0, &unk_18BC53D30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v52 = &v44 - v10;
  v51 = _s4ItemVMa_1(0);
  MEMORY[0x1EEE9AC00](v51);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v47 = a1;
  v48 = &v44 - v14;
  v15 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v16 = v15 - 1;
  v49 = (v17 + 48);
  v50 = (v17 + 56);
  v55 = a3;
  v53 = v17;
  v54 = a3 + 56;
  while (2)
  {
    v46 = v16;
    do
    {
      while (1)
      {
        v18 = *a5;
        v19 = a5[1];
        v21 = a5[2];
        v20 = a5[3];
        v22 = a5[4];
        if (!v22)
        {
          v24 = (v21 + 64) >> 6;
          if (v24 <= v20 + 1)
          {
            v25 = v20 + 1;
          }

          else
          {
            v25 = (v21 + 64) >> 6;
          }

          v26 = v25 - 1;
          while (1)
          {
            v23 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            if (v23 >= v24)
            {
              v27 = 0;
              v29 = 1;
              v28 = v52;
              goto LABEL_14;
            }

            v22 = *(v19 + 8 * v23);
            ++v20;
            if (v22)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_28;
        }

        v23 = a5[3];
LABEL_13:
        v27 = (v22 - 1) & v22;
        v28 = v52;
        sub_18B7EC6E4(*(v18 + 48) + *(v53 + 72) * (__clz(__rbit64(v22)) | (v23 << 6)), v52, _s4ItemVMa_1);
        v29 = 0;
        v26 = v23;
LABEL_14:
        v30 = v51;
        (*v50)(v28, v29, 1, v51);
        *a5 = v18;
        a5[1] = v19;
        a5[2] = v21;
        a5[3] = v26;
        a5[4] = v27;
        if ((*v49)(v28, 1, v30) == 1)
        {
          sub_18B988BAC(v28, &qword_1EA9DB6B0, &unk_18BC53D30);
          v43 = v55;
          sub_18BC1E1A8();
          sub_18BC080DC(v47, v45, v46, v43);
          return;
        }

        v31 = v48;
        sub_18B80D554(v28, v48, _s4ItemVMa_1);
        v32 = v55;
        sub_18BC22158();
        sub_18BC1EC08();
        sub_18B7F4EE4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_18BC20A78();
        v33 = sub_18BC221A8();
        v34 = -1 << *(v32 + 32);
        v35 = v33 & ~v34;
        v36 = v35 >> 6;
        v37 = 1 << v35;
        if (((1 << v35) & *(v54 + 8 * (v35 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_18B7ED118(v31, _s4ItemVMa_1);
      }

      v38 = *(v53 + 72);
      sub_18B7EC6E4(*(v55 + 48) + v38 * v35, v12, _s4ItemVMa_1);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B7ED118(v12, _s4ItemVMa_1);
      if ((updated & 1) == 0)
      {
        v40 = ~v34;
        do
        {
          v35 = (v35 + 1) & v40;
          v36 = v35 >> 6;
          v37 = 1 << v35;
          if (((1 << v35) & *(v54 + 8 * (v35 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          sub_18B7EC6E4(*(v55 + 48) + v38 * v35, v12, _s4ItemVMa_1);
          v41 = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
          sub_18B7ED118(v12, _s4ItemVMa_1);
        }

        while ((v41 & 1) == 0);
      }

      sub_18B7ED118(v31, _s4ItemVMa_1);
      v42 = v47[v36];
      v47[v36] = v42 & ~v37;
    }

    while ((v42 & v37) == 0);
    v16 = v46 - 1;
    if (__OFSUB__(v46, 1))
    {
LABEL_28:
      __break(1u);
      return;
    }

    if (v46 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_18BC07944(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5020, &unk_18BC42F20);
      v8 = sub_18BC21AA8();
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      while (v9)
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        sub_18B833990(*(a4 + 48) + 40 * (v11 | (v10 << 6)), v15);
        sub_18BB61D04(v15, v8);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_20;
        }

        if (!v5)
        {
LABEL_18:

          return;
        }
      }

      v12 = v10;
      while (1)
      {
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_18;
        }

        v13 = a1[v10];
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v9 = (v13 - 1) & v13;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t sub_18BC07A84(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s4ItemVMa_2(0);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4F60, &qword_18BC42E88);
  result = sub_18BC21AA8();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v28 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v18 = *(a4 + 48);
    v31 = *(v29 + 72);
    sub_18B7EC6E4(v18 + v31 * (v15 | (v13 << 6)), v32, _s4ItemVMa_2);
    sub_18BC22158();
    sub_18BC1EC08();
    sub_18B7F4EE4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_18BC20A78();
    result = sub_18BC221A8();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = sub_18B80D554(v32, *(v10 + 48) + v22 * v31, _s4ItemVMa_2);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v28;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_18BC07DB0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s4ItemVMa_4(0);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4FC0, &unk_18BC42ED0);
  result = sub_18BC21AA8();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v28 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v18 = *(a4 + 48);
    v31 = *(v29 + 72);
    sub_18B7EC6E4(v18 + v31 * (v15 | (v13 << 6)), v32, _s4ItemVMa_4);
    sub_18BC22158();
    sub_18BC1EC08();
    sub_18B7F4EE4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_18BC20A78();
    result = sub_18BC221A8();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = sub_18B80D554(v32, *(v10 + 48) + v22 * v31, _s4ItemVMa_4);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v28;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_18BC080DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s4ItemVMa_1(0);
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9FC0, &qword_18BC42EE8);
  result = sub_18BC21AA8();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v15 = v31;
  v30 = a4;
  while (v12)
  {
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v20 = *(v32 + 72);
    sub_18B7EC6E4(v19 + v20 * (v16 | (v13 << 6)), v15, _s4ItemVMa_1);
    sub_18BC22158();
    sub_18BC1EC08();
    sub_18B7F4EE4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_18BC20A78();
    result = sub_18BC221A8();
    v21 = -1 << *(v10 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      v15 = v31;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v14 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    v15 = v31;
LABEL_26:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_18B80D554(v15, *(v10 + 48) + v24 * v20, _s4ItemVMa_1);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v17 = v13;
  while (1)
  {
    v13 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v13];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v12 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_18BC083FC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s4ItemVMa_0(0);
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9FB0, &qword_18BC55980);
  result = sub_18BC21AA8();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v24 = result + 56;
  v25 = a4;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v27 = (v13 - 1) & v13;
LABEL_16:
    v18 = *(a4 + 48);
    v28 = *(v26 + 72);
    sub_18B7EC6E4(v18 + v28 * (v15 | (v14 << 6)), v10, _s4ItemVMa_0);
    sub_18BC22158();
    sub_18BC22178();
    sub_18BC22178();
    sub_18BC1EC08();
    sub_18B7F4EE4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_18BC20A78();
    v19 = *&v10[*(v8 + 28)];
    sub_18BC22178();
    if (v19)
    {
      v20 = v19;
      sub_18BC215D8();
    }

    sub_18BC22178();
    sub_18BC22178();
    if (*&v10[*(v8 + 40) + 8])
    {
      sub_18BC22178();
      sub_18BC20C28();
    }

    else
    {
      sub_18BC22178();
    }

    a4 = v25;
    sub_18BC221A8();
    v21 = v24;
    v22 = sub_18BC21938();
    *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = sub_18B80D554(v10, *(v11 + 48) + v22 * v28, _s4ItemVMa_0);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_26;
    }

    v13 = v27;
    if (!a3)
    {
LABEL_23:

      return v11;
    }
  }

  v16 = v14;
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_23;
    }

    v17 = a1[v14];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v27 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_18BC08760(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s4PageVMa_0(0);
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6450, &unk_18BC42F00);
  result = sub_18BC21AA8();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v15 = v31;
  v30 = a4;
  while (v12)
  {
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v20 = *(v32 + 72);
    sub_18B7EC6E4(v19 + v20 * (v16 | (v13 << 6)), v15, _s4PageVMa_0);
    sub_18BC22158();
    sub_18BC1EC08();
    sub_18B7F4EE4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_18BC20A78();
    result = sub_18BC221A8();
    v21 = -1 << *(v10 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      v15 = v31;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v14 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    v15 = v31;
LABEL_26:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_18B80D554(v15, *(v10 + 48) + v24 * v20, _s4PageVMa_0);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v17 = v13;
  while (1)
  {
    v13 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v13];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v12 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_18BC08A80(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s4ItemVMa(0);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5000, &unk_18BC4F850);
  result = sub_18BC21AA8();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v28 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v18 = *(a4 + 48);
    v31 = *(v29 + 72);
    sub_18B7EC6E4(v18 + v31 * (v15 | (v13 << 6)), v32, _s4ItemVMa);
    sub_18BC22158();
    sub_18BC1EC08();
    sub_18B7F4EE4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_18BC20A78();
    result = sub_18BC221A8();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = sub_18B80D554(v32, *(v10 + 48) + v22 * v31, _s4ItemVMa);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v28;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_18BC08DAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v7 = _s4ItemVMa_4(0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v24 = a1;
    v23 = a2;
    v10 = v27 + 56;
    v11 = 1 << *(v27 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v27 + 56);
    sub_18BC1E1A8();
    swift_beginAccess();
    v14 = 0;
    v15 = 0;
    v16 = (v11 + 63) >> 6;
    while (1)
    {
      v25 = v14;
      if (!v13)
      {
        break;
      }

      while (1)
      {
        v17 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_14:
        v20 = v17 | (v15 << 6);
        sub_18B7EC6E4(*(v27 + 48) + *(v26 + 72) * v20, v9, _s4ItemVMa_4);
        if (!*(*(a4 + 32) + 16))
        {
          break;
        }

        sub_18BC1E3F8();
        sub_18BB8B258(v9);
        v22 = v21;

        if ((v22 & 1) == 0)
        {
          break;
        }

        sub_18B7ED118(v9, _s4ItemVMa_4);
        if (!v13)
        {
          goto LABEL_9;
        }
      }

      sub_18B7ED118(v9, _s4ItemVMa_4);
      *(v24 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v14 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_21:
        sub_18BC07DB0(v24, v23, v25, v27);

        return;
      }
    }

LABEL_9:
    v18 = v15;
    while (1)
    {
      v15 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v15 >= v16)
      {
        goto LABEL_21;
      }

      v19 = *(v10 + 8 * v15);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_18BC09034(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v7 = _s4ItemVMa_1(0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v24 = a1;
    v23 = a2;
    v10 = v27 + 56;
    v11 = 1 << *(v27 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v27 + 56);
    sub_18BC1E1A8();
    swift_beginAccess();
    v14 = 0;
    v15 = 0;
    v16 = (v11 + 63) >> 6;
    while (1)
    {
      v25 = v14;
      if (!v13)
      {
        break;
      }

      while (1)
      {
        v17 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_14:
        v20 = v17 | (v15 << 6);
        sub_18B7EC6E4(*(v27 + 48) + *(v26 + 72) * v20, v9, _s4ItemVMa_1);
        if (!*(*(a4 + 32) + 16))
        {
          break;
        }

        sub_18BC1E3F8();
        sub_18BB8B5B0(v9);
        v22 = v21;

        if ((v22 & 1) == 0)
        {
          break;
        }

        sub_18B7ED118(v9, _s4ItemVMa_1);
        if (!v13)
        {
          goto LABEL_9;
        }
      }

      sub_18B7ED118(v9, _s4ItemVMa_1);
      *(v24 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v14 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_21:
        sub_18BC080DC(v24, v23, v25, v27);

        return;
      }
    }

LABEL_9:
    v18 = v15;
    while (1)
    {
      v15 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v15 >= v16)
      {
        goto LABEL_21;
      }

      v19 = *(v10 + 8 * v15);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_18BC092BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v7 = _s4ItemVMa_0(0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v24 = a1;
    v23 = a2;
    v10 = v27 + 56;
    v11 = 1 << *(v27 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v27 + 56);
    sub_18BC1E1A8();
    swift_beginAccess();
    v14 = 0;
    v15 = 0;
    v16 = (v11 + 63) >> 6;
    while (1)
    {
      v25 = v14;
      if (!v13)
      {
        break;
      }

      while (1)
      {
        v17 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_14:
        v20 = v17 | (v15 << 6);
        sub_18B7EC6E4(*(v27 + 48) + *(v26 + 72) * v20, v9, _s4ItemVMa_0);
        if (!*(*(a4 + 32) + 16))
        {
          break;
        }

        sub_18BC1E3F8();
        sub_18B80CA2C(v9);
        v22 = v21;

        if ((v22 & 1) == 0)
        {
          break;
        }

        sub_18B7ED118(v9, _s4ItemVMa_0);
        if (!v13)
        {
          goto LABEL_9;
        }
      }

      sub_18B7ED118(v9, _s4ItemVMa_0);
      *(v24 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v14 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_21:
        sub_18BC083FC(v24, v23, v25, v27);

        return;
      }
    }

LABEL_9:
    v18 = v15;
    while (1)
    {
      v15 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v15 >= v16)
      {
        goto LABEL_21;
      }

      v19 = *(v10 + 8 * v15);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_18BC09544(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v7 = _s4PageVMa_0(0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v24 = a1;
    v23 = a2;
    v10 = v27 + 56;
    v11 = 1 << *(v27 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v27 + 56);
    sub_18BC1E1A8();
    swift_beginAccess();
    v14 = 0;
    v15 = 0;
    v16 = (v11 + 63) >> 6;
    while (1)
    {
      v25 = v14;
      if (!v13)
      {
        break;
      }

      while (1)
      {
        v17 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_14:
        v20 = v17 | (v15 << 6);
        sub_18B7EC6E4(*(v27 + 48) + *(v26 + 72) * v20, v9, _s4PageVMa_0);
        if (!*(*(a4 + 32) + 16))
        {
          break;
        }

        sub_18BC1E3F8();
        sub_18B8629FC(v9);
        v22 = v21;

        if ((v22 & 1) == 0)
        {
          break;
        }

        sub_18B7ED118(v9, _s4PageVMa_0);
        if (!v13)
        {
          goto LABEL_9;
        }
      }

      sub_18B7ED118(v9, _s4PageVMa_0);
      *(v24 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v14 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_21:
        sub_18BC08760(v24, v23, v25, v27);

        return;
      }
    }

LABEL_9:
    v18 = v15;
    while (1)
    {
      v15 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v15 >= v16)
      {
        goto LABEL_21;
      }

      v19 = *(v10 + 8 * v15);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_18BC097CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t))
{
  v13 = v8;
  result = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v8;
  if ((result & 1) == 0)
  {
    result = a5();
    *v13 = v18;
  }

  if (a2 < 0 || 1 << *(v18 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v18 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v18 + 36) == a3)
  {
    v19 = *(v18 + 48);
    v20 = a6(0);
    sub_18B80D554(v19 + *(*(v20 - 8) + 72) * a2, a1, a7);
    v21 = *(*(v18 + 56) + 16 * a2);
    a8(a2, v18);
    *v13 = v18;
    return v21;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_18BC09958(uint64_t a1, uint64_t a2, void *a3)
{
  v28[3] = _s7ContentVMa_4(0);
  v28[4] = &off_1EFF1D848;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v28);
  sub_18B7EC6E4(a2, boxed_opaque_existential_0Tm, _s7ContentVMa_4);
  swift_beginAccess();
  v7 = a3[4];
  if (*(v7 + 16))
  {
    sub_18BC1E3F8();
    v8 = sub_18BB8B258(a1);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 16 * v8);

      goto LABEL_9;
    }
  }

  swift_beginAccess();
  v11 = sub_18BBF150C(a1);
  AssociatedConformanceWitness = v12;
  swift_endAccess();
  if (v11)
  {
    ObjectType = swift_getObjectType();
    v26[0] = v11;
    v15 = *(AssociatedConformanceWitness + 16);
    v16 = v11;
    v15(ObjectType, AssociatedConformanceWitness);
    v17 = [v16 layer];

    [v17 clearHasBeenCommitted];
  }

  else
  {
    v18 = a3[15];
    v19 = a3[16];
    __swift_project_boxed_opaque_existential_1Tm(a3 + 12, v18);
    v20 = (*(v19 + 72))(v18, v19);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = v20;
  }

  swift_beginAccess();
  v10 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = a3[4];
  a3[4] = 0x8000000000000000;
  sub_18BAA7B0C(v10, AssociatedConformanceWitness, a1, isUniquelyReferenced_nonNull_native);
  a3[4] = v27;
  swift_endAccess();
  v22 = a3[15];
  v23 = a3[16];
  __swift_project_boxed_opaque_existential_1Tm(a3 + 12, v22);
  v24 = a3[2];
  sub_18BC1E1A8();
  v24(v26, a1);

  sub_18B80D714(v10, v26, v28, v22, v23);

  __swift_destroy_boxed_opaque_existential_1Tm(v26);
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return v10;
}

unint64_t sub_18BC09C40(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = _s4ItemVMa_4(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*a3 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content);
  result = sub_18BC1EDE8();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v9 + 16))
  {
    sub_18B7EC6E4(v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * result, v8, _s4ItemVMa_4);
    v11 = sub_18B9BA20C(v8, a2);
    sub_18B7ED118(v8, _s4ItemVMa_4);
    return v11 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_18BC09D98(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v79 = a5;
  v76 = a4;
  v89 = a2;
  v9 = _s4ItemVMa_4(0);
  v78 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v73 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v72 - v12;
  v14 = sub_18BC1EDD8();
  v87 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v82 = &v72 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AF8, &qword_18BC46528);
  v94[3] = v18;
  v94[4] = sub_18BA4830C();
  v94[0] = a3;
  v19 = *((*MEMORY[0x1E69E7D40] & *a6) + 0x98);
  swift_beginAccess();
  v20 = *(a6 + v19);
  v21 = *(v20 + 16);
  sub_18BC1E3F8();
  if (v21)
  {
    sub_18BC1E3F8();
    v22 = sub_18B7C4104(a1, v89);
    if (v23)
    {
      v24 = *(*(v20 + 56) + 8 * v22);
      sub_18BC1E1A8();

      v25 = __swift_project_boxed_opaque_existential_1Tm(v94, v18);
      v26 = MEMORY[0x1EEE9AC00](v25);
      v28 = (&v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v29 + 16))(v28, v26);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v91);
      *boxed_opaque_existential_0Tm = *v28;
      boxed_opaque_existential_0Tm[1] = 0;
      v88 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content;
      swift_beginAccess();
      v89 = v24;
      swift_beginAccess();
      v80 = (v87 + 32);
      v81 = (v87 + 48);
      v77 = (v87 + 8);
      v31 = v76;
      v33 = v82;
      v32 = v83;
      v75 = a6;
      v72 = v14;
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v91, AssociatedTypeWitness);
        sub_18BC21868();
        if ((*v81)(v33, 1, v14) == 1)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v91);
          return __swift_destroy_boxed_opaque_existential_1Tm(v94);
        }

        (*v80)(v32, v33, v14);
        v50 = *(v31 + v88);
        v51 = sub_18BC1EDE8();
        if ((v51 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v51 >= *(v50 + 16))
        {
          goto LABEL_26;
        }

        v87 = *(v78 + 80);
        sub_18B7EC6E4(v50 + ((v87 + 32) & ~v87) + *(v78 + 72) * v51, v13, _s4ItemVMa_4);
        v52 = sub_18BC1EDE8();
        sub_18B9F0388(v52, v79, v95);
        v53 = v89;
        if (*(v89[10] + 16))
        {
          sub_18BC1E1A8();
          sub_18BC1E3F8();
          sub_18BB8B258(v13);
          v55 = v54;

          v53 = v89;
        }

        else
        {
          v55 = 0;
        }

        v101 = v95[0];
        v102 = v95[1];
        v103[0] = (v55 | v96) & 1;
        *&v103[1] = v97;
        *&v103[64] = *&v100[15];
        *&v103[49] = *v100;
        *&v103[33] = v99;
        *&v103[17] = v98;
        if (v97 & 1) != 0 || *(v53[7] + 16) && (sub_18BC1E1A8(), sub_18BC1E3F8(), sub_18BB8B258(v13), v57 = v56, , , v53 = v89, (v57) || (v58 = v53[15], v59 = v53[16], __swift_project_boxed_opaque_existential_1Tm(v53 + 12, v58), v60 = v89[2], sub_18BC1E1A8(), v60(v90, v13), v33 = v82, , v32 = v83, v61 = sub_18B814A2C(v90, v58, v59), __swift_destroy_boxed_opaque_existential_1Tm(v90), v53 = v89, (v61))
        {
          v62 = sub_18BC09958(v13, v31 + v88, v53);
          v86 = v63;
          v65 = v64;
          v66 = sub_18B7C2E68();
          v67 = [v62 superview];
          if (!v67 || (v68 = v67, sub_18B7B0AC0(0, &qword_1EA9D46F0, 0x1E69DD250), v69 = v66, v70 = sub_18BC215C8(), v68, v69, (v70 & 1) == 0))
          {
            [v66 addSubview_];
          }

          v34 = v87;
          v84 = v65 & 1;
          if (v65)
          {
            v35 = 0x8000000000000010;
          }

          else
          {
            v35 = 0x8000000000000008;
          }

          v85 = v66;
          v36 = v73;
          sub_18B7EC6E4(v13, v73, _s4ItemVMa_4);
          v37 = (v34 + 152) & ~v34;
          v38 = (v37 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
          v39 = v13;
          v40 = (v37 + v74 + 23) & 0xFFFFFFFFFFFFFFF8;
          v41 = swift_allocObject();
          v42 = v86;
          *(v41 + 16) = v62;
          *(v41 + 24) = v42;
          v43 = *&v103[48];
          *(v41 + 96) = *&v103[32];
          *(v41 + 112) = v43;
          *(v41 + 128) = *&v103[64];
          v44 = v102;
          *(v41 + 32) = v101;
          *(v41 + 48) = v44;
          v45 = *&v103[16];
          *(v41 + 64) = *v103;
          *(v41 + 80) = v45;
          *(v41 + 144) = v89;
          sub_18B80D554(v36, v41 + v37, _s4ItemVMa_4);
          v46 = v41 + v38;
          v47 = v75;
          v31 = v76;
          *v46 = v76;
          *(v46 + 8) = v84;
          *(v41 + v40) = v47;
          v13 = v39;
          sub_18BC1E1A8();
          v48 = v62;
          sub_18BC1E1A8();
          v49 = v47;
          sub_18B80ECB4(sub_18BC0C610, v41, v35);

          sub_18B7EBAE8(v35);

          v14 = v72;
          v33 = v82;
          v32 = v83;
        }

        else
        {
          sub_18B7F4620(&v101);
          sub_18BBF2D58(v13);
        }

        sub_18B7ED118(v13, _s4ItemVMa_4);
        (*v77)(v32, v14);
      }

      __break(1u);
LABEL_26:
      __break(1u);
    }
  }

  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

uint64_t sub_18BC0A658(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for RetargetableTransitionCoordinator();
  v21[3] = v7;
  v21[4] = &off_1EFF27FD8;
  v21[0] = a3;
  sub_18BC1E1A8();
  v8 = sub_18B9A85F0(a1, 0xAuLL);
  if (*(v8 + 16))
  {
    v9 = v8;
    sub_18BBE9E60(v8, 0xD000000000000014, 0x800000018BC60730, sub_18BBEFB58, sub_18B7EBEFC, sub_18BBE8890);
    v10 = __swift_project_boxed_opaque_existential_1Tm(v21, v7);
    v11 = swift_allocObject();
    *(v11 + 16) = a4;
    *(v11 + 24) = v9;
    v12 = *v10;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_18BC0A85C;
    *(v13 + 24) = v11;
    swift_beginAccess();
    v14 = *(v12 + 32);
    v15 = a4;
    sub_18BC1E1A8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + 32) = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_18B9B5814(0, v14[2] + 1, 1, v14);
      *(v12 + 32) = v14;
    }

    v18 = v14[2];
    v17 = v14[3];
    if (v18 >= v17 >> 1)
    {
      v14 = sub_18B9B5814((v17 > 1), v18 + 1, 1, v14);
    }

    v14[2] = v18 + 1;
    v19 = &v14[2 * v18];
    v19[4] = sub_18B7D1E9C;
    v19[5] = v13;
    *(v12 + 32) = v14;
    swift_endAccess();
  }

  else
  {
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v21);
}

id sub_18BC0A910(uint64_t a1, uint64_t a2, void *a3)
{
  v28[3] = _s7ContentVMa_1(0);
  v28[4] = &off_1EFF29940;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v28);
  sub_18B7EC6E4(a2, boxed_opaque_existential_0Tm, _s7ContentVMa_1);
  swift_beginAccess();
  v7 = a3[4];
  if (*(v7 + 16))
  {
    sub_18BC1E3F8();
    v8 = sub_18BB8B5B0(a1);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 16 * v8);

      goto LABEL_9;
    }
  }

  swift_beginAccess();
  v11 = sub_18BBF16FC(a1);
  AssociatedConformanceWitness = v12;
  swift_endAccess();
  if (v11)
  {
    ObjectType = swift_getObjectType();
    v26[0] = v11;
    v15 = *(AssociatedConformanceWitness + 16);
    v16 = v11;
    v15(ObjectType, AssociatedConformanceWitness);
    v17 = [v16 layer];

    [v17 clearHasBeenCommitted];
  }

  else
  {
    v18 = a3[15];
    v19 = a3[16];
    __swift_project_boxed_opaque_existential_1Tm(a3 + 12, v18);
    v20 = (*(v19 + 72))(v18, v19);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = v20;
  }

  swift_beginAccess();
  v10 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = a3[4];
  a3[4] = 0x8000000000000000;
  sub_18BAA7E30(v10, AssociatedConformanceWitness, a1, isUniquelyReferenced_nonNull_native);
  a3[4] = v27;
  swift_endAccess();
  v22 = a3[15];
  v23 = a3[16];
  __swift_project_boxed_opaque_existential_1Tm(a3 + 12, v22);
  v24 = a3[2];
  sub_18BC1E1A8();
  v24(v26, a1);

  sub_18B80D714(v10, v26, v28, v22, v23);

  __swift_destroy_boxed_opaque_existential_1Tm(v26);
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return v10;
}

unint64_t sub_18BC0ABF8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = _s4ItemVMa_1(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*a3 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content);
  result = sub_18BC1EDE8();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v9 + 16))
  {
    sub_18B7EC6E4(v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * result, v8, _s4ItemVMa_1);
    v11 = sub_18B9BA700(v8, a2);
    sub_18B7ED118(v8, _s4ItemVMa_1);
    return v11 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_18BC0AD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v81 = a5;
  v11 = _s4ItemVMa_1(0);
  v80 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v73 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v86 = &v73 - v14;
  v78 = sub_18BC1EDD8();
  v89 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v91 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v84 = &v73 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AF8, &qword_18BC46528);
  v97[3] = v18;
  v97[4] = sub_18BA4830C();
  v97[0] = a3;
  v19 = *((*MEMORY[0x1E69E7D40] & *a6) + 0x98);
  swift_beginAccess();
  v20 = *(a6 + v19);
  v21 = *(v20 + 16);
  sub_18BC1E3F8();
  if (v21)
  {
    sub_18BC1E3F8();
    v85 = a1;
    v75 = a2;
    v22 = sub_18B7C4104(a1, a2);
    if (v23)
    {
      v24 = *(*(v20 + 56) + 8 * v22);
      sub_18BC1E1A8();

      v25 = __swift_project_boxed_opaque_existential_1Tm(v97, v18);
      v26 = MEMORY[0x1EEE9AC00](v25);
      v28 = (&v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v29 + 16))(v28, v26);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v94);
      *boxed_opaque_existential_0Tm = *v28;
      boxed_opaque_existential_0Tm[1] = 0;
      v90 = OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content;
      swift_beginAccess();
      v92 = v24;
      swift_beginAccess();
      v82 = (v89 + 32);
      v83 = (v89 + 48);
      v79 = (v89 + 8);
      v31 = v85;
      v32 = v86;
      v33 = v78;
      v76 = a4;
      v77 = a6;
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v94, AssociatedTypeWitness);
        v49 = v84;
        sub_18BC21868();
        if ((*v83)(v49, 1, v33) == 1)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v94);
          return __swift_destroy_boxed_opaque_existential_1Tm(v97);
        }

        (*v82)(v91, v49, v33);
        v50 = *(a4 + v90);
        v51 = sub_18BC1EDE8();
        if ((v51 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v51 >= *(v50 + 16))
        {
          goto LABEL_26;
        }

        v52 = *(v80 + 80);
        sub_18B7EC6E4(v50 + ((v52 + 32) & ~v52) + *(v80 + 72) * v51, v32, _s4ItemVMa_1);
        v53 = sub_18BC1EDE8();
        sub_18BAD4D08(v53, v81, v98);
        v54 = v92;
        if (*(v92[10] + 16))
        {
          sub_18BC1E1A8();
          sub_18BC1E3F8();
          sub_18BB8B5B0(v32);
          v56 = v55;

          v54 = v92;
        }

        else
        {
          v56 = 0;
        }

        v104 = v98[0];
        v105 = v98[1];
        v106[0] = (v56 | v99) & 1;
        *&v106[1] = v100;
        *&v106[64] = *&v103[15];
        *&v106[49] = *v103;
        *&v106[33] = v102;
        *&v106[17] = v101;
        if (v100 & 1) != 0 || *(v54[7] + 16) && (sub_18BC1E1A8(), sub_18BC1E3F8(), sub_18BB8B5B0(v32), v58 = v57, , , v54 = v92, (v58) || (v59 = v54[15], v60 = v54[16], __swift_project_boxed_opaque_existential_1Tm(v54 + 12, v59), v61 = v92[2], sub_18BC1E1A8(), v61(v93, v86), v32 = v86, , v31 = v85, v62 = sub_18B814A2C(v93, v59, v60), __swift_destroy_boxed_opaque_existential_1Tm(v93), v54 = v92, (v62))
        {
          v63 = sub_18BC0A910(v32, a4 + v90, v54);
          v89 = v64;
          v66 = v65;
          v67 = (*((*MEMORY[0x1E69E7D40] & *a6) + 0x210))(v32, v31, v75);
          v68 = [v63 superview];
          if (!v68 || (v69 = v68, sub_18B7B0AC0(0, &qword_1EA9D46F0, 0x1E69DD250), v70 = v67, v71 = sub_18BC215C8(), v69, v70, (v71 & 1) == 0))
          {
            [v67 addSubview_];
          }

          v34 = v52;
          v35 = ~v52;
          v87 = v66 & 1;
          if (v66)
          {
            v36 = 0x8000000000000010;
          }

          else
          {
            v36 = 0x8000000000000008;
          }

          v32 = v86;
          v37 = v73;
          sub_18B7EC6E4(v86, v73, _s4ItemVMa_1);
          v38 = (v34 + 152) & v35;
          v39 = (v38 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
          v88 = v67;
          v40 = (v38 + v74 + 23) & 0xFFFFFFFFFFFFFFF8;
          v41 = swift_allocObject();
          v42 = v89;
          *(v41 + 16) = v63;
          *(v41 + 24) = v42;
          v43 = *&v106[48];
          *(v41 + 96) = *&v106[32];
          *(v41 + 112) = v43;
          *(v41 + 128) = *&v106[64];
          v44 = v105;
          *(v41 + 32) = v104;
          *(v41 + 48) = v44;
          v45 = *&v106[16];
          *(v41 + 64) = *v106;
          *(v41 + 80) = v45;
          *(v41 + 144) = v92;
          sub_18B80D554(v37, v41 + v38, _s4ItemVMa_1);
          v46 = v41 + v39;
          a4 = v76;
          a6 = v77;
          *v46 = v76;
          *(v46 + 8) = v87;
          *(v41 + v40) = a6;
          sub_18BC1E1A8();
          v47 = v63;
          sub_18BC1E1A8();
          v48 = a6;
          sub_18B80ECB4(sub_18BC0DC7C, v41, v36);

          sub_18B7EBAE8(v36);

          v31 = v85;
          v33 = v78;
        }

        else
        {
          sub_18B7F4620(&v104);
          sub_18BBF2FCC(v32);
        }

        sub_18B7ED118(v32, _s4ItemVMa_1);
        (*v79)(v91, v33);
      }

      __break(1u);
LABEL_26:
      __break(1u);
    }
  }

  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

unint64_t sub_18BC0B668(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = _s4ItemVMa_0(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*a3 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8);
  result = sub_18BC1EDE8();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v9 + 16))
  {
    sub_18B7EC6E4(v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * result, v8, _s4ItemVMa_0);
    v11 = sub_18B9BA740(v8, a2);
    sub_18B7ED118(v8, _s4ItemVMa_0);
    return v11 & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_18BC0B7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _s4PageVMa_0(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*a3 + 192);
  result = sub_18BC1EDE8();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v9 + 16))
  {
    sub_18B7EC6E4(v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * result, v8, _s4PageVMa_0);
    v11 = sub_18B9BAA04(v8, a2);
    sub_18B7ED118(v8, _s4PageVMa_0);
    return v11 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_18BC0B910(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v82 = a5;
  v79 = a4;
  v92 = a2;
  v9 = _s4PageVMa_0(0);
  v81 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v77 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v75 - v12;
  v14 = sub_18BC1EDD8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v85 = &v75 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AF8, &qword_18BC46528);
  v97[3] = v19;
  v97[4] = sub_18BA4830C();
  v97[0] = a3;
  v20 = *((*MEMORY[0x1E69E7D40] & *a6) + 0x98);
  swift_beginAccess();
  v91 = a6;
  v21 = *(a6 + v20);
  v22 = *(v21 + 16);
  sub_18BC1E3F8();
  if (v22)
  {
    sub_18BC1E3F8();
    v23 = sub_18B7C4104(a1, v92);
    if (v24)
    {
      v25 = *(*(v21 + 56) + 8 * v23);
      sub_18BC1E1A8();

      v26 = __swift_project_boxed_opaque_existential_1Tm(v97, v19);
      v27 = MEMORY[0x1EEE9AC00](v26);
      v29 = (&v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v30 + 16))(v29, v27);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v94);
      *boxed_opaque_existential_0Tm = *v29;
      boxed_opaque_existential_0Tm[1] = 0;
      swift_beginAccess();
      v92 = v25;
      swift_beginAccess();
      v83 = (v15 + 32);
      v84 = (v15 + 48);
      v80 = (v15 + 8);
      v32 = v79;
      v87 = v13;
      v34 = v85;
      v33 = v86;
      v76 = v14;
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v94, AssociatedTypeWitness);
        sub_18BC21868();
        if ((*v84)(v34, 1, v14) == 1)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v94);
          return __swift_destroy_boxed_opaque_existential_1Tm(v97);
        }

        (*v83)(v33, v34, v14);
        v52 = *(v32 + 192);
        v53 = sub_18BC1EDE8();
        if ((v53 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v53 >= *(v52 + 16))
        {
          goto LABEL_26;
        }

        v54 = *(v81 + 80);
        sub_18B7EC6E4(v52 + ((v54 + 32) & ~v54) + *(v81 + 72) * v53, v13, _s4PageVMa_0);
        v55 = sub_18BC1EDE8();
        sub_18B845484(v55, v82, v98);
        v56 = v92;
        if (*(v92[10] + 16))
        {
          sub_18BC1E1A8();
          sub_18BC1E3F8();
          sub_18B8629FC(v13);
          v58 = v57;

          v56 = v92;
        }

        else
        {
          v58 = 0;
        }

        v104 = v98[0];
        v105 = v98[1];
        v106[0] = (v58 | v99) & 1;
        *&v106[1] = v100;
        *&v106[64] = *&v103[15];
        *&v106[49] = *v103;
        *&v106[33] = v102;
        *&v106[17] = v101;
        if (v100 & 1) != 0 || *(v56[7] + 16) && (sub_18BC1E1A8(), sub_18BC1E3F8(), sub_18B8629FC(v13), v60 = v59, , , v56 = v92, (v60) || (v61 = v56[15], v62 = v56[16], __swift_project_boxed_opaque_existential_1Tm(v56 + 12, v61), v63 = v92[2], sub_18BC1E1A8(), v63(v93, v87), v13 = v87, , v33 = v86, v64 = sub_18B814A2C(v93, v61, v62), __swift_destroy_boxed_opaque_existential_1Tm(v93), v56 = v92, (v64))
        {
          v65 = sub_18B849380(v13, *(v32 + 184), v52, v56);
          v90 = v66;
          v68 = v67;
          v69 = sub_18B7C2E68();
          v70 = [v65 superview];
          if (!v70 || (v71 = v70, sub_18B7B0AC0(0, &qword_1EA9D46F0, 0x1E69DD250), v72 = v69, v73 = sub_18BC215C8(), v71, v72, (v73 & 1) == 0))
          {
            [v69 addSubview_];
          }

          v88 = v68 & 1;
          if (v68)
          {
            v35 = 0x8000000000000010;
          }

          else
          {
            v35 = 0x8000000000000008;
          }

          v36 = v87;
          v89 = v69;
          v37 = v77;
          sub_18B7EC6E4(v87, v77, _s4PageVMa_0);
          v38 = (v54 + 152) & ~v54;
          v39 = (v38 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
          v40 = (v38 + v78 + 23) & 0xFFFFFFFFFFFFFFF8;
          v41 = swift_allocObject();
          v42 = v90;
          *(v41 + 16) = v65;
          *(v41 + 24) = v42;
          v43 = *&v106[48];
          *(v41 + 96) = *&v106[32];
          *(v41 + 112) = v43;
          *(v41 + 128) = *&v106[64];
          v44 = v105;
          *(v41 + 32) = v104;
          *(v41 + 48) = v44;
          v45 = *&v106[16];
          *(v41 + 64) = *v106;
          *(v41 + 80) = v45;
          *(v41 + 144) = v92;
          v46 = v41 + v38;
          v13 = v36;
          sub_18B80D554(v37, v46, _s4PageVMa_0);
          v47 = v41 + v39;
          v32 = v79;
          *v47 = v79;
          *(v47 + 8) = v88;
          v48 = v91;
          *(v41 + v40) = v91;
          v49 = v48;
          sub_18BC1E1A8();
          v50 = v65;
          sub_18BC1E1A8();
          v51 = v49;
          sub_18B80ECB4(sub_18B86709C, v41, v35);

          sub_18B7EBAE8(v35);

          v14 = v76;
          v33 = v86;
        }

        else
        {
          sub_18B7F4620(&v104);
          sub_18B84910C(v13);
        }

        sub_18B7ED118(v13, _s4PageVMa_0);
        (*v80)(v33, v14);
        v34 = v85;
      }

      __break(1u);
LABEL_26:
      __break(1u);
    }
  }

  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

id sub_18BC0C1C8(char *a1)
{
  [a1 bounds];
  v2 = &a1[qword_1EA9F8568];
  *(v2 + 6) = v3;
  *(v2 + 7) = v4;
  *(v2 + 8) = v5;
  *(v2 + 9) = v6;
  [a1 setNeedsLayout];
  v7 = [a1 traitCollection];
  [v7 displayCornerRadius];
  v9 = v8;

  *(v2 + 10) = v9;

  return [a1 setNeedsLayout];
}

uint64_t sub_18BC0C274(uint64_t a1, int64_t a2)
{
  v3 = v2;
  v36 = *MEMORY[0x1E69E9840];
  v6 = _s4ItemVMa_4(0);
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v9 = v7 & 0x3F;
  v10 = ((1 << v7) + 63) >> 6;
  v11 = 8 * v10;
  v12 = sub_18BC1E1A8();
  if (v9 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v30 = v10;
    v31 = v3;
    v29[1] = v29;
    MEMORY[0x1EEE9AC00](v12);
    v32 = v29 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v11);
    v35 = a1;
    v14 = *(a1 + 56);
    a1 += 56;
    v13 = v14;
    v15 = 1 << *(a1 - 24);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v13;
    v10 = a2;
    swift_beginAccess();
    v18 = 0;
    v19 = 0;
    a2 = (v15 + 63) >> 6;
    while (1)
    {
      v33 = v18;
      if (!v17)
      {
        break;
      }

      while (1)
      {
        v20 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_12:
        v3 = v20 | (v19 << 6);
        sub_18B7EC6E4(*(v35 + 48) + *(v34 + 72) * v3, v8, _s4ItemVMa_4);
        v11 = *(v10 + 32);
        if (!*(v11 + 16))
        {
          break;
        }

        sub_18BC1E3F8();
        sub_18BB8B258(v8);
        v24 = v23;

        if ((v24 & 1) == 0)
        {
          break;
        }

        sub_18B7ED118(v8, _s4ItemVMa_4);
        if (!v17)
        {
          goto LABEL_7;
        }
      }

      sub_18B7ED118(v8, _s4ItemVMa_4);
      *&v32[(v3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v3;
      v18 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
LABEL_19:
        v25 = sub_18BC07DB0(v32, v30, v33, v35);

        return v25;
      }
    }

LABEL_7:
    v21 = v19;
    while (1)
    {
      v19 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v19 >= a2)
      {
        goto LABEL_19;
      }

      v22 = *(a1 + 8 * v19);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    sub_18BC1E1A8();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  sub_18BC1E1A8();
  sub_18BC08DAC(v27, v10, a1, a2);
  v25 = v28;

  MEMORY[0x18CFFEEE0](v27, -1, -1);

  return v25;
}

id sub_18BC0C610()
{
  v1 = *(_s4ItemVMa_4(0) - 8);
  v2 = (*(v1 + 80) + 152) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_18BC0DD54(*(v0 + 16), *(v0 + 24), v0 + 32, *(v0 + 144), v0 + v2, *v3, *(v3 + 8), _s7ContentVMa_4, &off_1EFF1D848, &OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, _s7ContentVMa_4);
}

uint64_t sub_18BC0C6E8(uint64_t a1, int64_t a2)
{
  v3 = v2;
  v36 = *MEMORY[0x1E69E9840];
  v6 = _s4ItemVMa_1(0);
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v9 = v7 & 0x3F;
  v10 = ((1 << v7) + 63) >> 6;
  v11 = 8 * v10;
  v12 = sub_18BC1E1A8();
  if (v9 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v30 = v10;
    v31 = v3;
    v29[1] = v29;
    MEMORY[0x1EEE9AC00](v12);
    v32 = v29 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v11);
    v35 = a1;
    v14 = *(a1 + 56);
    a1 += 56;
    v13 = v14;
    v15 = 1 << *(a1 - 24);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v13;
    v10 = a2;
    swift_beginAccess();
    v18 = 0;
    v19 = 0;
    a2 = (v15 + 63) >> 6;
    while (1)
    {
      v33 = v18;
      if (!v17)
      {
        break;
      }

      while (1)
      {
        v20 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_12:
        v3 = v20 | (v19 << 6);
        sub_18B7EC6E4(*(v35 + 48) + *(v34 + 72) * v3, v8, _s4ItemVMa_1);
        v11 = *(v10 + 32);
        if (!*(v11 + 16))
        {
          break;
        }

        sub_18BC1E3F8();
        sub_18BB8B5B0(v8);
        v24 = v23;

        if ((v24 & 1) == 0)
        {
          break;
        }

        sub_18B7ED118(v8, _s4ItemVMa_1);
        if (!v17)
        {
          goto LABEL_7;
        }
      }

      sub_18B7ED118(v8, _s4ItemVMa_1);
      *&v32[(v3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v3;
      v18 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
LABEL_19:
        v25 = sub_18BC080DC(v32, v30, v33, v35);

        return v25;
      }
    }

LABEL_7:
    v21 = v19;
    while (1)
    {
      v19 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v19 >= a2)
      {
        goto LABEL_19;
      }

      v22 = *(a1 + 8 * v19);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    sub_18BC1E1A8();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  sub_18BC1E1A8();
  sub_18BC09034(v27, v10, a1, a2);
  v25 = v28;

  MEMORY[0x18CFFEEE0](v27, -1, -1);

  return v25;
}

uint64_t sub_18BC0CA60(uint64_t a1, int64_t a2)
{
  v3 = v2;
  v36 = *MEMORY[0x1E69E9840];
  v6 = _s4ItemVMa_0(0);
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v9 = v7 & 0x3F;
  v10 = ((1 << v7) + 63) >> 6;
  v11 = 8 * v10;
  v12 = sub_18BC1E1A8();
  if (v9 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v30 = v10;
    v31 = v3;
    v29[1] = v29;
    MEMORY[0x1EEE9AC00](v12);
    v32 = v29 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v11);
    v35 = a1;
    v14 = *(a1 + 56);
    a1 += 56;
    v13 = v14;
    v15 = 1 << *(a1 - 24);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v13;
    v10 = a2;
    swift_beginAccess();
    v18 = 0;
    v19 = 0;
    a2 = (v15 + 63) >> 6;
    while (1)
    {
      v33 = v18;
      if (!v17)
      {
        break;
      }

      while (1)
      {
        v20 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_12:
        v3 = v20 | (v19 << 6);
        sub_18B7EC6E4(*(v35 + 48) + *(v34 + 72) * v3, v8, _s4ItemVMa_0);
        v11 = *(v10 + 32);
        if (!*(v11 + 16))
        {
          break;
        }

        sub_18BC1E3F8();
        sub_18B80CA2C(v8);
        v24 = v23;

        if ((v24 & 1) == 0)
        {
          break;
        }

        sub_18B7ED118(v8, _s4ItemVMa_0);
        if (!v17)
        {
          goto LABEL_7;
        }
      }

      sub_18B7ED118(v8, _s4ItemVMa_0);
      *&v32[(v3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v3;
      v18 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
LABEL_19:
        v25 = sub_18BC083FC(v32, v30, v33, v35);

        return v25;
      }
    }

LABEL_7:
    v21 = v19;
    while (1)
    {
      v19 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v19 >= a2)
      {
        goto LABEL_19;
      }

      v22 = *(a1 + 8 * v19);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    sub_18BC1E1A8();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  sub_18BC1E1A8();
  sub_18BC092BC(v27, v10, a1, a2);
  v25 = v28;

  MEMORY[0x18CFFEEE0](v27, -1, -1);

  return v25;
}

uint64_t sub_18BC0CDD8(uint64_t a1, int64_t a2)
{
  v3 = v2;
  v36 = *MEMORY[0x1E69E9840];
  v6 = _s4PageVMa_0(0);
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v9 = v7 & 0x3F;
  v10 = ((1 << v7) + 63) >> 6;
  v11 = 8 * v10;
  v12 = sub_18BC1E1A8();
  if (v9 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v30 = v10;
    v31 = v3;
    v29[1] = v29;
    MEMORY[0x1EEE9AC00](v12);
    v32 = v29 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v11);
    v35 = a1;
    v14 = *(a1 + 56);
    a1 += 56;
    v13 = v14;
    v15 = 1 << *(a1 - 24);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v13;
    v10 = a2;
    swift_beginAccess();
    v18 = 0;
    v19 = 0;
    a2 = (v15 + 63) >> 6;
    while (1)
    {
      v33 = v18;
      if (!v17)
      {
        break;
      }

      while (1)
      {
        v20 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_12:
        v3 = v20 | (v19 << 6);
        sub_18B7EC6E4(*(v35 + 48) + *(v34 + 72) * v3, v8, _s4PageVMa_0);
        v11 = *(v10 + 32);
        if (!*(v11 + 16))
        {
          break;
        }

        sub_18BC1E3F8();
        sub_18B8629FC(v8);
        v24 = v23;

        if ((v24 & 1) == 0)
        {
          break;
        }

        sub_18B7ED118(v8, _s4PageVMa_0);
        if (!v17)
        {
          goto LABEL_7;
        }
      }

      sub_18B7ED118(v8, _s4PageVMa_0);
      *&v32[(v3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v3;
      v18 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
LABEL_19:
        v25 = sub_18BC08760(v32, v30, v33, v35);

        return v25;
      }
    }

LABEL_7:
    v21 = v19;
    while (1)
    {
      v19 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v19 >= a2)
      {
        goto LABEL_19;
      }

      v22 = *(a1 + 8 * v19);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    sub_18BC1E1A8();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  sub_18BC1E1A8();
  sub_18BC09544(v27, v10, a1, a2);
  v25 = v28;

  MEMORY[0x18CFFEEE0](v27, -1, -1);

  return v25;
}

void sub_18BC0D150(char *a1, _BYTE *a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = *&Strong[qword_1EA9F8568 + 32];
  v7 = *&Strong[qword_1EA9F8568 + 40];
  v79 = *&Strong[qword_1EA9F8568 + 16];
  v76 = *&Strong[qword_1EA9F8568];

  v9 = &a1[OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics];
  v10 = *&a1[OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics];
  v11 = *&a1[OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics + 16];
  v13 = *&a1[OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics + 32];
  v12 = *&a1[OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics + 40];
  *v9 = v76;
  *(v9 + 1) = v79;
  *(v9 + 4) = v8;
  *(v9 + 5) = v7;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v76, v10), vceqq_f64(v79, v11)))) & 1) == 0 || (v8 == v13 ? (v14 = v7 == v12) : (v14 = 0), !v14))
  {
    [a1 setNeedsLayout];
  }

  v80 = a1;
  v15 = *&a1[OBJC_IVAR___SFTabThumbnailView_configuration + 16];
  v89 = *&a1[OBJC_IVAR___SFTabThumbnailView_configuration];
  v90 = v15;
  v16 = *&a1[OBJC_IVAR___SFTabThumbnailView_configuration + 48];
  v91 = *&a1[OBJC_IVAR___SFTabThumbnailView_configuration + 32];
  v92 = v16;
  v93 = *&a1[OBJC_IVAR___SFTabThumbnailView_configuration + 64];
  v17 = *&a1[OBJC_IVAR___SFTabThumbnailView_configuration + 80];
  v94 = v17;
  v18 = *(&v89 + 1);
  v19 = v90;
  v72 = v16;
  v73 = *(&v91 + 1);
  v70 = v93;
  v71 = *(&v16 + 1);
  v69 = *(&v93 + 1);
  v20 = _s4ItemVMa_4(0);
  v77 = *&a2[v20[8]];
  v21 = *(a3 + 8);
  sub_18BA1A650(&v89, v97);
  v22 = sub_18B9BA20C(a2, v21);
  if (v22)
  {
    v74 = a2[v20[7]];
    v23 = &a2[v20[10]];
    v67 = v23[1];
    v68 = *v23;
    sub_18BC1E3F8();
  }

  else
  {
    v74 = 0;
    v67 = 1;
    v68 = 0;
  }

  sub_18BA1A6B8(v18, v19, *(&v19 + 1));
  v66 = *&a2[v20[9]];
  sub_18BC1E3F8();

  if (v22)
  {
    if (qword_1EA9D23B8 != -1)
    {
      swift_once();
    }

    v24 = &qword_1EA9F80D0;
  }

  else
  {
    if ((*a2 & 1) == 0)
    {
      v36 = 0;
      v64 = 0;
      v65 = 0;
      v33 = 0;
      v39 = 0;
      v26 = 1;
      goto LABEL_22;
    }

    if (qword_1EA9D23B0 != -1)
    {
      swift_once();
    }

    v24 = &qword_1EA9F80A0;
  }

  v26 = *v24;
  v25 = v24[1];
  v27 = v24[2];
  v28 = *(v24 + 24);
  v29 = *(v24 + 25);
  v31 = v24[4];
  v30 = v24[5];
  v32 = 256;
  if (!v29)
  {
    v32 = 0;
  }

  v33 = v32 | v28;
  v64 = v30;
  v34 = v30;
  v35 = v26;
  v36 = v25;
  v37 = v25;
  v65 = v27;
  v38 = v27;
  v39 = v31;
  v40 = v31;
LABEL_22:
  sub_18BA1A4DC(v73, v72, v71, v70, v69, v17);
  v99[0] = v77;
  v99[1] = v74;
  v99[2] = v68;
  v99[3] = v67;
  v99[4] = v66;
  v99[5] = v26;
  v99[6] = v36;
  v99[7] = v65;
  v99[8] = v33;
  v99[9] = v39;
  v99[10] = v64;
  sub_18BA1A650(v99, v97);
  sub_18BA1A548(v99);
  sub_18BA1A688(v99);
  v81[0] = v77;
  v81[1] = v74;
  v81[2] = v68;
  v81[3] = v67;
  v81[4] = v66;
  v81[5] = v26;
  v81[6] = v36;
  v81[7] = v65;
  v81[8] = v33;
  v81[9] = v39;
  v81[10] = v64;
  sub_18BA1A688(v81);
  v41 = &v80[OBJC_IVAR___SFTabThumbnailView_metrics];
  v88[0] = *&v80[OBJC_IVAR___SFTabThumbnailView_metrics + 33];
  *(v88 + 3) = *&v80[OBJC_IVAR___SFTabThumbnailView_metrics + 36];
  v42 = *&v80[OBJC_IVAR___SFTabThumbnailView_metrics + 105];
  v43 = *&v80[OBJC_IVAR___SFTabThumbnailView_metrics + 137];
  v86 = *&v80[OBJC_IVAR___SFTabThumbnailView_metrics + 121];
  v87[0] = v43;
  *(v87 + 15) = *&v80[OBJC_IVAR___SFTabThumbnailView_metrics + 152];
  v44 = *&v80[OBJC_IVAR___SFTabThumbnailView_metrics + 73];
  v82 = *&v80[OBJC_IVAR___SFTabThumbnailView_metrics + 57];
  v83 = v44;
  v84 = *&v80[OBJC_IVAR___SFTabThumbnailView_metrics + 89];
  v85 = v42;
  v45 = swift_unknownObjectUnownedLoadStrong();
  v75 = *&v45[qword_1EA9F8560 + 16];
  v78 = *&v45[qword_1EA9F8560];

  v46 = swift_unknownObjectUnownedLoadStrong();
  [v46 bounds];
  v48 = v47;
  v50 = v49;

  v51 = *(v41 + 9);
  v97[8] = *(v41 + 8);
  v97[9] = v51;
  v98 = *(v41 + 20);
  v52 = *(v41 + 5);
  v97[4] = *(v41 + 4);
  v97[5] = v52;
  v53 = *(v41 + 7);
  v97[6] = *(v41 + 6);
  v97[7] = v53;
  v54 = *(v41 + 1);
  v97[0] = *v41;
  v97[1] = v54;
  v55 = *(v41 + 3);
  v97[2] = *(v41 + 2);
  v97[3] = v55;
  *v41 = v78;
  *(v41 + 1) = v75;
  v41[32] = 0;
  *(v41 + 33) = v88[0];
  *(v41 + 9) = *(v88 + 3);
  *(v41 + 5) = v48;
  *(v41 + 6) = v50;
  v41[56] = 0;
  v56 = v84;
  *(v41 + 105) = v85;
  v57 = v87[0];
  *(v41 + 121) = v86;
  *(v41 + 137) = v57;
  *(v41 + 152) = *(v87 + 15);
  v58 = v83;
  *(v41 + 57) = v82;
  *(v41 + 73) = v58;
  *(v41 + 89) = v56;
  v59 = *(v41 + 9);
  v95[8] = *(v41 + 8);
  v95[9] = v59;
  v96 = *(v41 + 20);
  v60 = *(v41 + 5);
  v95[4] = *(v41 + 4);
  v95[5] = v60;
  v61 = *(v41 + 7);
  v95[6] = *(v41 + 6);
  v95[7] = v61;
  v62 = *(v41 + 1);
  v95[0] = *v41;
  v95[1] = v62;
  v63 = *(v41 + 3);
  v95[2] = *(v41 + 2);
  v95[3] = v63;
  if (!sub_18BA1A2E4(v95, v97))
  {
    sub_18BA18DB4();
  }
}

uint64_t objectdestroy_180Tm()
{
  v1 = (_s4ItemVMa_4(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[7];
  v4 = sub_18BC1EC08();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_18BC0D874(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE38, &qword_18BC55918);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

int *sub_18BC0D8E4()
{
  v1 = *(_s17PinchGestureStateVMa(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_18BBFFD24(v3, v4, (v0 + v2), v5);
}

id sub_18BC0D97C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR___SFTabThumbnailView_controlsVisibility);
  *(v1 + OBJC_IVAR___SFTabThumbnailView_controlsVisibility) = 0;
  if (v2 != 0.0)
  {
    return sub_18BA15D30();
  }

  return result;
}

void sub_18BC0D9D0()
{
  v0 = sub_18B7C453C();
  [v0 setValue_];
}

uint64_t sub_18BC0DA50(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

void sub_18BC0DAD8()
{
  v1 = *(_s4ItemVMa_4(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 25) & ~*(v1 + 80));

  sub_18BBF6B14(v2, v3, v4);
}

uint64_t objectdestroy_162Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 32));

  return swift_deallocObject();
}

id sub_18BC0DC7C()
{
  v1 = *(_s4ItemVMa_1(0) - 8);
  v2 = (*(v1 + 80) + 152) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_18BC0DD54(*(v0 + 16), *(v0 + 24), v0 + 32, *(v0 + 144), v0 + v2, *v3, *(v3 + 8), _s7ContentVMa_1, &off_1EFF29940, &OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content, _s7ContentVMa_1);
}

id sub_18BC0DD54(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7, uint64_t (*a8)(void), uint64_t a9, void *a10, uint64_t (*a11)(void))
{
  ObjectType = swift_getObjectType();
  v26[0] = a1;
  (*(*(a2 + 8) + 8))(a3, ObjectType);
  v26[3] = a8(0);
  v26[4] = a9;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v26);
  sub_18B7EC6E4(a6 + *a10, boxed_opaque_existential_0Tm, a11);
  v20 = a4[15];
  v21 = a4[16];
  __swift_project_boxed_opaque_existential_1Tm(a4 + 12, v20);
  v22 = a4[2];
  sub_18BC1E1A8();
  v22(v25, a5);

  sub_18B810470(a1, v25, v26, a7, v20, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return [a1 layoutIfNeeded];
}

id sub_18BC0E784(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___SFTabSnapshotPool_wrapped);
  swift_beginAccess();
  v4 = *(v3 + 40);
  if (*(v4 + 16))
  {
    sub_18BC1E1A8();
    sub_18BC1E3F8();
    v5 = sub_18B857EE4(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);
      sub_18BC1E3F8();

      sub_18BA76964(v7);
      v9 = v8;

      sub_18BA76CE0(v9, v16);

      if ((v17 & 1) == 0)
      {
        v10 = v16[1];
        v11 = v16[0];
        v12 = objc_allocWithZone(SFTabSnapshotVisibility);
        v13 = &v12[OBJC_IVAR___SFTabSnapshotVisibility_wrapped];
        *v13 = v11;
        *(v13 + 1) = v10;
        v15.receiver = v12;
        v15.super_class = SFTabSnapshotVisibility;
        return objc_msgSendSuper2(&v15, sel_init);
      }
    }

    else
    {
    }
  }

  return 0;
}

id sub_18BC0EA08()
{
  v1 = *(v0 + OBJC_IVAR___SFTabSnapshotRegistration_wrapped);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  v17 = *(v1 + 32);
  v18 = v4;
  v19 = *(v1 + 64);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_allocWithZone(SFTabSnapshotContent);
  v6 = &v5[OBJC_IVAR___SFTabSnapshotContent_wrapped];
  *v6 = v2;
  *(v6 + 1) = v3;
  v7 = v17;
  v8 = v18;
  *(v6 + 1) = v17;
  *(v6 + 2) = v8;
  v9 = v19;
  *(v6 + 3) = v19;
  v13[0] = v2;
  v13[1] = v3;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  sub_18BA1A744(v13, v12);
  v11.receiver = v5;
  v11.super_class = SFTabSnapshotContent;
  return objc_msgSendSuper2(&v11, sel_init);
}

double sub_18BC0EBD0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___SFTabSnapshotRegistration_contentObserver);
  *v3 = a1;
  v3[1] = a2;

  v4 = *(v2 + OBJC_IVAR___SFTabSnapshotRegistration_wrapped);
  v5 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  swift_beginAccess();
  *(v4 + 80) = sub_18BC0F2B0;
  *(v4 + 88) = v5;

  return result;
}

void sub_18BC0EC78(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = [Strong contentObserver];

  if (v3)
  {
    v6 = objc_allocWithZone(SFTabSnapshotContent);
    v7 = &v6[OBJC_IVAR___SFTabSnapshotContent_wrapped];
    *v7 = v2;
    *(v7 + 1) = v3;
    v8 = *(a1 + 1);
    v9 = *(a1 + 2);
    *(v7 + 1) = v8;
    *(v7 + 2) = v9;
    v10 = *(a1 + 3);
    *(v7 + 3) = v10;
    v14[0] = v2;
    v14[1] = v3;
    v15 = v8;
    v16 = v9;
    v17 = v10;
    sub_18BA1A744(v14, v13);
    v12.receiver = v6;
    v12.super_class = SFTabSnapshotContent;
    v11 = objc_msgSendSuper2(&v12, sel_init);
  }

  else
  {
    v11 = 0;
  }

  v5[2](v5, v11);
  _Block_release(v5);
}

void sub_18BC0EF84(char *a1)
{
  v3 = *(v1 + OBJC_IVAR___SFTabSnapshotRegistration_wrapped);
  v4 = *&a1[OBJC_IVAR___SFTabSnapshotVisibility_wrapped];
  v5 = *&a1[OBJC_IVAR___SFTabSnapshotVisibility_wrapped + 8];
  v6 = v3 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibility;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  *v6 = v4;
  *(v6 + 8) = v5;
  if (v4 == v7 && v5 == v8)
  {
  }

  else
  {
    v10 = *(v3 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibilityDidChangeHandler);
    sub_18BC1E1A8();
    v11 = sub_18BC1E1A8();
    v10(v11);
  }
}

unint64_t sub_18BC0F098()
{
  result = qword_1EA9D3940;
  if (!qword_1EA9D3940)
  {
    type metadata accessor for Tier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3940);
  }

  return result;
}

double sub_18BC0F15C()
{

  return result;
}

id sub_18BC0F2C4()
{
  v1 = OBJC_IVAR____TtC12MobileSafari15BlurrableButton____lazy_storage___blurRadius;
  v2 = *(v0 + OBJC_IVAR____TtC12MobileSafari15BlurrableButton____lazy_storage___blurRadius);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12MobileSafari15BlurrableButton____lazy_storage___blurRadius);
  }

  else
  {
    v4 = sub_18BB8CA60();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_18BC0F354(void *a1)
{
  v5 = [a1 layer];
  v2 = [a1 traitCollection];
  [v2 displayScale];
  v4 = v3;

  [v5 setRasterizationScale_];
}

id sub_18BC0F4A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlurrableButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18BC0F54C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBF40, &qword_18BC55C38);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBF48, &qword_18BC55C40);
  MEMORY[0x1EEE9AC00](v1);
  sub_18B80A3F8();
  sub_18BC1E458();
  sub_18BC1E448();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBF50, &qword_18BC55C70);
  sub_18BC1E438();

  sub_18BC1E448();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBF58, qword_18BC55CA0);
  sub_18BC1E438();

  sub_18BC1E448();
  sub_18BC1E478();
  return sub_18BC1E418();
}

uint64_t sub_18BC0F744(uint64_t a1)
{
  v2 = sub_18BC1056C();

  return MEMORY[0x1EEDB39D0](a1, v2);
}

uint64_t sub_18BC0F794@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BC100E8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18BC0F7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a2;
  v4[21] = a4;
  v4[19] = a1;
  v5 = sub_18BC1EC08();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  type metadata accessor for TabEntity(0);
  v4[25] = swift_task_alloc();
  sub_18BC20F28();
  v4[26] = sub_18BC20F18();
  v7 = sub_18BC20ED8();
  v4[27] = v7;
  v4[28] = v6;

  return MEMORY[0x1EEE6DFA0](sub_18BC0F8E0, v7, v6);
}

uint64_t sub_18BC0F8E0()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[20];
  sub_18BC1E0A8();
  (*(v4 + 16))(v2, v1, v3);
  sub_18BA5F48C(v1);
  v6 = sub_18BC1EBC8();
  v0[29] = v6;
  (*(v4 + 8))(v2, v3);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_18BC0FA78;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6ED0, &unk_18BC51EF0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_18BAB46D0;
  v0[13] = &block_descriptor_69;
  v0[14] = v7;
  [v5 sceneForTabWithUUID:v6 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_18BC0FA78()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_18BC0FB80, v2, v1);
}

uint64_t sub_18BC0FB80()
{
  v1 = v0[29];

  v2 = v0[18];

  if (v2)
  {
    v3 = v0[19];
    *v3 = v2;
    v4 = *MEMORY[0x1E6985C00];
    v5 = sub_18BC1F048();
    (*(*(v5 - 8) + 104))(v3, v4, v5);

    v6 = v0[1];
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v7 = sub_18BC1DE48();
    v8 = __swift_project_value_buffer(v7, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
    swift_allocError();
    (*(*(v7 - 8) + 16))(v9, v8, v7);
    swift_willThrow();

    v6 = v0[1];
  }

  return v6();
}

uint64_t sub_18BC0FD64(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_18B987B10;

  return sub_18BC0F7BC(a1, a2, v7, v6);
}

unint64_t sub_18BC0FE34()
{
  result = qword_1EA9DBF28;
  if (!qword_1EA9DBF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DBF28);
  }

  return result;
}

void sub_18BC0FE9C(void *a1)
{
  v2 = sub_18BC1EC08();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TabEntity(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1E0A8();
  (*(v3 + 16))(v5, v8, v2);
  sub_18BA5F48C(v8);
  v9 = sub_18BC1EBC8();
  (*(v3 + 8))(v5, v2);
  LOBYTE(a1) = [a1 canFindOnTabWithUUID_];

  if ((a1 & 1) == 0)
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v10 = sub_18BC1DE48();
    v11 = __swift_project_value_buffer(v10, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
    swift_allocError();
    (*(*(v10 - 8) + 16))(v12, v11, v10);
    swift_willThrow();
  }
}

uint64_t sub_18BC100E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6EC8, &unk_18BC472E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v32 = &v25 - v1;
  v2 = sub_18BC1E488();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0, &unk_18BC472F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v31 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7430, &unk_18BC50F30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v25 - v15;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB220, &unk_18BC52B80);
  v17 = sub_18BC1E8D8();
  v18 = *(v17 - 8);
  v28 = *(v18 + 56);
  v29 = v18 + 56;
  v28(v16, 1, 1, v17);
  v19 = sub_18BC20AF8();
  v33 = 0;
  v34 = 0;
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = sub_18BC1DF68();
  v21 = *(*(v20 - 8) + 56);
  v21(v10, 1, 1, v20);
  v27 = *MEMORY[0x1E695A4F8];
  v22 = *(v3 + 104);
  v25 = v3 + 104;
  v26 = v22;
  v22(v5);
  v30 = sub_18BC1E158();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D77E8, &qword_18BC498E0);
  v28(v16, 1, 1, v17);
  v23 = type metadata accessor for TabEntity(0);
  (*(*(v23 - 8) + 56))(v32, 1, 1, v23);
  v21(v10, 1, 1, v20);
  v21(v31, 1, 1, v20);
  v26(v5, v27, v2);
  sub_18BA5F958(&qword_1EA9D6EF0, type metadata accessor for TabEntity, &unk_18BC48BC0);
  sub_18BC1E108();
  return v30;
}

unint64_t sub_18BC1056C()
{
  result = qword_1EA9DBF60;
  if (!qword_1EA9DBF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DBF60);
  }

  return result;
}

uint64_t sub_18BC105C0()
{
  v0 = sub_18BC1DE48();
  __swift_allocate_value_buffer(v0, qword_1EA9F8578);
  __swift_project_value_buffer(v0, qword_1EA9F8578);
  return sub_18BC1DE38();
}

uint64_t sub_18BC1060C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18BC10630, 0, 0);
}

uint64_t sub_18BC10630()
{
  v1 = sub_18BC221B8();
  v2 = sub_18BC221B8();
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_18BC106EC;
  v5 = v0[2];
  v4 = v0[3];

  return MEMORY[0x1EEDCCC68](v5, v4, v1, v2, 0);
}

uint64_t sub_18BC106EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_18BC10980(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = _Block_copy(aBlock);
  v4[5] = sub_18BC20BD8();
  v4[6] = v7;
  v8 = a2;
  v9 = a3;

  return MEMORY[0x1EEE6DFA0](sub_18BC10A1C, 0, 0);
}

uint64_t sub_18BC10A1C()
{
  v1 = sub_18BC221B8();
  v2 = sub_18BC221B8();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_18BC10AD8;
  v5 = v0[5];
  v4 = v0[6];

  return MEMORY[0x1EEDCCC68](v5, v4, v1, v2, 0);
}

uint64_t sub_18BC10AD8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = sub_18BC1E888();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

id SFAppDistributorWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFAppDistributorWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFAppDistributorWrapper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SFAppDistributorWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFAppDistributorWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of static SFAppDistributorWrapper.handlePunchout(WithBundleID:adamID:externalVersionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(v4 + 80) + **(v4 + 80));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_18B987B10;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_18BC10EE0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_18B987B10;

  return sub_18BC10980(v2, v3, v4, v5);
}

uint64_t sub_18BC10FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10, &qword_18BC426D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_18BC11264(a3, v23 - v10);
  v12 = sub_18BC20F48();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_18B7B3990(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_18BC20F38();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_18BC20ED8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_18BC20C08() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    sub_18BC1E1A8();
    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_18B7B3990(a3);

    return v21;
  }

LABEL_8:
  sub_18B7B3990(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_18BC11264(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10, &qword_18BC426D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18BC112D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content);
  result = sub_18BC1EDE8();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  if (result >= *(v3 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *(_s4ItemVMa_1(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;

  return sub_18BAC2894(v7, a1);
}

uint64_t sub_18BC113A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  (*(a5 + 120))(v26, a2, a3, a4, a5);
  v13 = __swift_project_boxed_opaque_existential_1Tm(v26, v26[3]);
  v14 = MEMORY[0x1EEE9AC00](v13);
  (*(v16 + 16))(&v19[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], v14);
  v20 = a4;
  v21 = a5;
  v22 = a1;
  v23 = v6;
  v24 = a2;
  v25 = a3;
  v17 = sub_18BC20D28();
  a6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AF8, &qword_18BC46528);
  a6[4] = sub_18BA4830C();
  *a6 = v17;
  return __swift_destroy_boxed_opaque_existential_1Tm(v26);
}

uint64_t sub_18BC1152C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = v18 - v15;
  (*(a7 + 104))(a4, a5, a1, a6, a7, v14);
  swift_getAssociatedConformanceWitness();
  LOBYTE(a5) = sub_18BC210B8();
  (*(v13 + 8))(v16, AssociatedTypeWitness);
  return a5 & 1;
}

id sub_18BC116D4()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69DD738]) initWithStyle_];
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

unint64_t sub_18BC11758()
{
  result = qword_1EA9DBF68;
  if (!qword_1EA9DBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DBF68);
  }

  return result;
}

id sub_18BC118C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFChromeBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18BC1193C()
{
  result = qword_1EA9DBF98;
  if (!qword_1EA9DBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DBF98);
  }

  return result;
}

uint64_t SFTabSnapshotMetadata.description.getter()
{
  v1 = v0;
  v2 = sub_18BC1EB88();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v50 - v5;
  v6 = sub_18BC1EC08();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v50 - v15;
  v57 = 0x61646174656D207BLL;
  v58 = 0xEB00000000206174;
  v17 = [v0 identifier];
  sub_18BC1EBE8();

  sub_18BC12494();
  v18 = sub_18BC21F48();
  MEMORY[0x18CFFC150](v18);

  v19 = v16;
  v20 = v1;
  v21 = *(v7 + 8);
  v21(v19, v6);
  v22 = [v20 windowUUID];
  if (v22)
  {
    v23 = v22;
    sub_18BC1EBE8();

    (*(v7 + 32))(v12, v9, v6);
    v56[0] = 10272;
    v56[1] = 0xE200000000000000;
    v24 = sub_18BC21F48();
    MEMORY[0x18CFFC150](v24);

    MEMORY[0x18CFFC150](41, 0xE100000000000000);
    MEMORY[0x18CFFC150](v56[0], v56[1]);

    v21(v12, v6);
  }

  v25 = [v20 includedBannerHeight];
  if (v25)
  {
    v26 = v25;
    [v25 floatValue];
    if (v27 > 0.0)
    {
      v56[0] = 0;
      v56[1] = 0xE000000000000000;
      sub_18BC21AD8();

      v56[0] = 0xD000000000000019;
      v56[1] = 0x800000018BC72C50;
      [v26 floatValue];
      LODWORD(v54) = v28;
      sub_18BB9DBCC();
      v29 = sub_18BC20968();
      MEMORY[0x18CFFC150](v29);

      MEMORY[0x18CFFC150](v56[0], v56[1]);
    }
  }

  else
  {
    MEMORY[0x18CFFC150](0xD00000000000001FLL, 0x800000018BC72BD0);
  }

  v30 = [v20 dateCreated];
  if (v30)
  {
    v31 = v50;
    v32 = v30;
    sub_18BC1EB58();

    v34 = v51;
    v33 = v52;
    v35 = v31;
    v36 = v53;
    (*(v52 + 32))(v51, v35, v53);
    v56[0] = 0;
    v56[1] = 0xE000000000000000;
    sub_18BC21AD8();

    v56[0] = 0xD000000000000010;
    v56[1] = 0x800000018BC72C30;
    v37 = sub_18BC1EB78();
    MEMORY[0x18CFFC150](v37);

    MEMORY[0x18CFFC150](v56[0], v56[1]);

    (*(v33 + 8))(v34, v36);
  }

  v38 = [v20 fileName];
  if (v38)
  {
    v39 = v38;
    v40 = sub_18BC20BD8();
    v42 = v41;

    strcpy(v56, "; fileName = ");
    HIWORD(v56[1]) = -4864;
    MEMORY[0x18CFFC150](v40, v42);

    MEMORY[0x18CFFC150](v56[0], v56[1]);
  }

  if ([v20 includesTransparentBorderPadding])
  {
    MEMORY[0x18CFFC150](0xD000000000000016, 0x800000018BC72C10);
  }

  [v20 topBackdropHeight];
  if (v43 != 0.0)
  {
    v56[0] = 0;
    v56[1] = 0xE000000000000000;
    sub_18BC21AD8();

    v56[0] = 0xD000000000000016;
    v56[1] = 0x800000018BC72BF0;
    [v20 topBackdropHeight];
    v44 = sub_18BC20F88();
    MEMORY[0x18CFFC150](v44);

    MEMORY[0x18CFFC150](v56[0], v56[1]);
  }

  [v20 windowSize];
  if (v46 != 0.0 || v45 != 0.0)
  {
    v56[0] = 0;
    v56[1] = 0xE000000000000000;
    sub_18BC21AD8();
    MEMORY[0x18CFFC150](0x776F646E6977203BLL, 0xEF203D20657A6953);
    [v20 windowSize];
    v54 = v47;
    v55 = v48;
    type metadata accessor for CGSize(0);
    sub_18BC21C58();
    MEMORY[0x18CFFC150](v56[0], v56[1]);
  }

  return v57;
}

unint64_t sub_18BC12494()
{
  result = qword_1EA9DBE50;
  if (!qword_1EA9DBE50)
  {
    sub_18BC1EC08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DBE50);
  }

  return result;
}

uint64_t sub_18BC12C78()
{
  v1 = _s8MetadataVMa(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v4 = OBJC_IVAR___SFTabSnapshotMetadata__wrapped;
  swift_beginAccess();
  sub_18B7B193C(v0 + v4, v7);
  swift_dynamicCast();
  LOBYTE(v1) = v3[*(v1 + 32) + 8];
  sub_18BC13E34(v3);
  result = 0;
  if ((v1 & 1) == 0)
  {
    sub_18B7B0AC0(0, &qword_1EA9D8F88, 0x1E696AD98);
    return sub_18BC215A8();
  }

  return result;
}

uint64_t sub_18BC12DE0(void *a1)
{
  v3 = _s8MetadataVMa(0);
  *&v4 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    [a1 floatValue];
    v8 = v7;
    v9 = OBJC_IVAR___SFTabSnapshotMetadata__wrapped;
    swift_beginAccess();
    sub_18B7B193C(v1 + v9, &v18);
    swift_dynamicCast();
    v10 = &v6[*(v3 + 32)];
    *v10 = v8;
    *(v10 + 8) = 0;
    v19 = v3;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v18);
    sub_18BC13E90(v6, boxed_opaque_existential_0Tm);

    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + v9));
    v12 = (v1 + v9);
  }

  else
  {
    v13 = OBJC_IVAR___SFTabSnapshotMetadata__wrapped;
    swift_beginAccess();
    sub_18B7B193C(v1 + v13, &v18);
    swift_dynamicCast();
    v14 = &v6[*(v3 + 32)];
    *v14 = 0;
    v14[8] = 1;
    v19 = v3;
    v15 = __swift_allocate_boxed_opaque_existential_0Tm(&v18);
    sub_18BC13E90(v6, v15);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + v13));
    v12 = (v1 + v13);
  }

  sub_18B7B1AD4(&v18, v12);
  return swift_endAccess();
}

void __swiftcall SFTabSnapshotMetadata.init()(SFTabSnapshotMetadata *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t _s8MetadataVMa(uint64_t a1)
{
  result = qword_1EA9DBFB0;
  if (!qword_1EA9DBFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18BC13E34(uint64_t a1)
{
  v2 = _s8MetadataVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18BC13E90(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_18BC13F48(uint64_t a1)
{
  sub_18BC140B0(319, &qword_1EA9DBFC0, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    sub_18B7BFE80(319, &qword_1ED6511A0, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UIEdgeInsets(319);
      if (v3 <= 0x3F)
      {
        sub_18BC1EC08();
        if (v4 <= 0x3F)
        {
          sub_18B7BFE80(319, &qword_1EA9DBFC8, MEMORY[0x1E69E7DE0]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for CGSize(319);
            if (v6 <= 0x3F)
            {
              sub_18BC140B0(319, qword_1ED651F98, MEMORY[0x1E69695A8]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_18BC140B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18BC21848();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

SFTabSnapshot __swiftcall SFTabSnapshot.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.metadata = v3;
  result.image = v2;
  result.super.isa = v1;
  return result;
}

unint64_t type metadata accessor for SFTabSnapshot()
{
  result = qword_1EA9DBFE0;
  if (!qword_1EA9DBFE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9DBFE0);
  }

  return result;
}

void SFSearchFieldIconContainerView.init(coder:)()
{
  v1 = OBJC_IVAR___SFSearchFieldIconContainerView_iconView;
  *(v0 + v1) = [objc_allocWithZone(SFFaviconView) init];
  *(v0 + OBJC_IVAR___SFSearchFieldIconContainerView_theme) = 0;
  sub_18BC21CF8();
  __break(1u);
}

void __swiftcall SFSearchFieldIconContainerView.init(frame:)(SFSearchFieldIconContainerView *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

char *SFSearchFieldIconContainerView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR___SFSearchFieldIconContainerView_iconView;
  *&v4[v9] = [objc_allocWithZone(SFFaviconView) init];
  *&v4[OBJC_IVAR___SFSearchFieldIconContainerView_theme] = 0;
  v18.receiver = v4;
  v18.super_class = SFSearchFieldIconContainerView;
  v10 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = OBJC_IVAR___SFSearchFieldIconContainerView_iconView;
  v12 = *&v10[OBJC_IVAR___SFSearchFieldIconContainerView_iconView];
  v13 = objc_opt_self();
  v14 = v10;
  v15 = v12;
  v16 = [v13 safari_URLFieldButtonConfiguration];
  [v15 setPreferredSymbolConfiguration_];

  [*&v10[v11] sf_applyContentSizeCategoryLimitsForToolbarButton];
  [v14 addSubview_];

  return v14;
}

id SFSearchFieldIconContainerView.icon.getter()
{
  v1 = [v0 iconView];
  v2 = [v1 icon];

  return v2;
}

void SFSearchFieldIconContainerView.icon.setter(void *a1)
{
  v3 = [v1 iconView];
  [v3 setIcon_];

  v5 = [v1 iconView];
  if (a1 && [a1 isSymbolImage])
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  [v5 setIconContentMode_];
}

void *SFSearchFieldIconContainerView.theme.getter()
{
  v1 = OBJC_IVAR___SFSearchFieldIconContainerView_theme;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SFSearchFieldIconContainerView.theme.setter(void *a1)
{
  v3 = OBJC_IVAR___SFSearchFieldIconContainerView_theme;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_18BC14A60();
}

void sub_18BC14A60()
{
  v1 = [v0 iconView];
  v2 = OBJC_IVAR___SFSearchFieldIconContainerView_theme;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3)
  {
    v4 = [v3 themeColor];
  }

  else
  {
    v4 = 0;
  }

  [v1 setThemeColor_];

  v5 = [v0 iconView];
  v6 = *&v0[v2];
  if (v6)
  {
    v7 = [v6 placeholderTextColor];
  }

  else
  {
    v7 = 0;
  }

  [v5 setTintColor_];
}

Swift::Void __swiftcall SFSearchFieldIconContainerView.layoutSubviews()()
{
  v7.super_class = SFSearchFieldIconContainerView;
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = [v0 iconView];
  [v0 bounds];
  x = v8.origin.x;
  y = v8.origin.y;
  width = v8.size.width;
  height = v8.size.height;
  MidX = CGRectGetMidX(v8);
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  [v1 setFrame_];
}

unint64_t type metadata accessor for SFSearchFieldIconContainerView()
{
  result = qword_1EA9DBFF8;
  if (!qword_1EA9DBFF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9DBFF8);
  }

  return result;
}

void SFStepperContainer.init(coder:)()
{
  *(v0 + OBJC_IVAR___SFStepperContainer_stepper) = 0;
  sub_18BC21CF8();
  __break(1u);
}

void __swiftcall SFStepperContainer.init(frame:)(SFStepperContainer *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

id SFStepperContainer.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = sub_18BC1F688();
  MEMORY[0x1EEE9AC00](v9);
  *&v4[OBJC_IVAR___SFStepperContainer_stepper] = 0;
  v12.receiver = v4;
  v12.super_class = SFStepperContainer;
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BC21528();
  sub_18BC1F5B8();
  sub_18BC21538();

  return v10;
}

void *SFStepperContainer.stepper.getter()
{
  v1 = OBJC_IVAR___SFStepperContainer_stepper;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SFStepperContainer.stepper.setter(void *a1)
{
  v3 = OBJC_IVAR___SFStepperContainer_stepper;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  if (a1)
  {
    v6 = v5;
    [v6 bounds];
    [v1 convertRect:v6 fromCoordinateSpace:?];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [v6 setFrame_];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];

    [v6 prepareForFocus];
    [v1 addSubview_];
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    v16[2] = v6;
    v16[3] = v8;
    v16[4] = v10;
    v16[5] = v12;
    v16[6] = v14;
    v16[7] = v1;
    v25 = sub_18BC15A90;
    v26 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_18B7B0DB0;
    v24 = &block_descriptor_70;
    v17 = _Block_copy(&aBlock);
    v18 = v6;
    v19 = v1;

    v25 = CGRectMake;
    v26 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_18BA89100;
    v24 = &block_descriptor_3_0;
    v20 = _Block_copy(&aBlock);
    [v15 _animateUsingDefaultTimingWithOptions_animations_completion_];

    _Block_release(v20);
    _Block_release(v17);
  }
}

id sub_18BC154C0(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  MinX = CGRectGetMinX(*&a3);
  [a2 bounds];
  Height = CGRectGetHeight(v21);
  [a2 safeAreaInsets];
  v15 = Height - v14;
  v22.origin.x = a3;
  v22.origin.y = a4;
  v22.size.width = a5;
  v22.size.height = a6;
  v16 = v15 - CGRectGetHeight(v22) + -10.0;
  v23.origin.x = a3;
  v23.origin.y = a4;
  v23.size.width = a5;
  v23.size.height = a6;
  Width = CGRectGetWidth(v23);
  v24.origin.x = a3;
  v24.origin.y = a4;
  v24.size.width = a5;
  v24.size.height = a6;
  v18 = CGRectGetHeight(v24);

  return [a1 setFrame_];
}

void __swiftcall SFStepperContainer.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  v4 = v3;
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  v8 = [v4 stepper];
  if (v8)
  {
    v9 = v8;
    v13.receiver = v4;
    v13.super_class = SFStepperContainer;
    v10 = [(UIView_optional *)&v13 hitTest:isa withEvent:x, y];
    if (!v10 || (v11 = v10, v12 = [v10 isDescendantOfView_], v9, v9 = v11, (v12 & 1) == 0))
    {
    }
  }
}

void SFStepperContainer.hideStepper(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 stepper];
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v3;
    v19 = sub_18BC15AA4;
    v20 = v9;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_18B7B0DB0;
    v18 = &block_descriptor_9_0;
    v10 = _Block_copy(&v15);
    v11 = v7;
    v12 = v3;

    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v19 = sub_18B7D1E9C;
    v20 = v13;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_18BA89100;
    v18 = &block_descriptor_15;
    v14 = _Block_copy(&v15);
    sub_18BC1E1A8();

    [v8 animateWithDuration:0x10000 delay:v10 options:v14 animations:0.15 completion:0.0];

    _Block_release(v14);
    _Block_release(v10);
  }
}

id sub_18BC15968(void *a1, void *a2)
{
  [a1 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [a2 bounds];
  MaxY = CGRectGetMaxY(v13);

  return [a1 setFrame_];
}

unint64_t type metadata accessor for SFStepperContainer()
{
  result = qword_1EA9DC008;
  if (!qword_1EA9DC008)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9DC008);
  }

  return result;
}

char *sub_18BC15B40(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730, &unk_18BC41F60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v174 = &v159 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5300, &qword_18BC43170);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v180 = &v159 - v12;
  v13 = sub_18BC21808();
  v181 = *(v13 - 8);
  v182 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v162 = &v159 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v178 = &v159 - v16;
  v17 = sub_18BC1E7F8();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v173 = (&v159 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_18BC1E758();
  v176 = *(v19 - 8);
  v177 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v175 = &v159 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_18BC1EE48();
  v183 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v172 = &v159 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v159 - v24;
  v26 = sub_18BC1F7B8();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v159 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DAE30, &qword_18BC42A50);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v159 - v31;
  v33 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_notNowButton;
  *&v4[v33] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v34 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_continueButton;
  *&v4[v34] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v35 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_learnMoreButton;
  *&v4[v35] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  *&v4[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_notNowAction] = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_continueAction] = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_learnMoreAction] = 0;
  v36 = _s15ConsentCardCellCMa();
  v185.receiver = v4;
  v185.super_class = v36;
  v37 = objc_msgSendSuper2(&v185, sel_initWithFrame_, a1, a2, a3, a4);
  v38 = sub_18BC20B98();
  [v37 setAccessibilityIdentifier_];

  sub_18BC1F7A8();
  v171 = objc_opt_self();
  v39 = [v171 secondarySystemGroupedBackgroundColor];
  sub_18BC1F788();
  (*(v27 + 16))(v32, v29, v26);
  sub_18BC1F768();
  (*(v27 + 8))(v29, v26);
  (*(v27 + 56))(v32, 0, 1, v26);
  MEMORY[0x18CFFC920](v32);
  v40 = [v37 contentView];
  if (qword_1EA9D2180 != -1)
  {
    swift_once();
  }

  [v40 setLayoutMargins_];

  v41 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v41 setAccessibilityTraits_];
  v42 = objc_opt_self();
  v43 = [v42 preferredFontForTextStyle_];
  [v41 setFont_];

  v44 = v25;
  sub_18BC1EE38();
  sub_18BC1EE28();
  v45 = v183 + 8;
  v179 = *(v183 + 1);
  v163 = v21;
  v179(v25, v21);
  v46 = sub_18BC20B98();

  [v41 setText_];

  v47 = v41;
  v170 = v47;
  [v47 setTranslatesAutoresizingMaskIntoConstraints_];
  v48 = [v37 contentView];
  [v48 addSubview_];

  v49 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v50 = [v42 preferredFontForTextStyle_];
  [v49 setFont_];

  [v49 setNumberOfLines_];
  v51 = v44;
  sub_18BC1EE38();
  sub_18BC1EE28();
  v52 = v44;
  v53 = v45;
  v54 = v179;
  v179(v52, v21);
  v55 = sub_18BC20B98();

  [v49 setText_];

  v56 = v49;
  [v56 setTranslatesAutoresizingMaskIntoConstraints_];
  v57 = [v37 contentView];
  v168 = v56;
  [v57 addSubview_];

  sub_18BC1EE38();
  v58 = v172;
  sub_18BC1EE38();
  sub_18BC1EE18();
  v183 = v53;
  v54(v58, v21);
  v54(v51, v21);
  sub_18BC1E7E8();
  v59 = v175;
  sub_18BC1E768();
  v184[0] = [v56 font];
  sub_18B9EA798();
  v60 = v59;
  sub_18BC1E778();
  v61 = v178;
  sub_18BC21798();
  v62 = sub_18BC21658();
  *(v63 + 8) = 0;
  v62(v184, 0);
  v64 = v176;
  v65 = v177;
  v66 = v180;
  (*(v176 + 16))(v180, v60, v177);
  (*(v64 + 56))(v66, 0, 1, v65);
  sub_18BC216C8();
  v67 = *&v37[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_learnMoreButton];
  v68 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_learnMoreButton;
  v69 = v181;
  v70 = *(v181 + 16);
  v166 = v181 + 16;
  v167 = v70;
  v71 = v174;
  v72 = v182;
  v70(v174, v61, v182);
  v73 = *(v69 + 56);
  v164 = v69 + 56;
  v165 = v73;
  v73(v71, 0, 1, v72);
  v74 = v67;
  sub_18BC21828();

  v75 = *&v37[v68];
  v169 = v68;
  [v75 setTranslatesAutoresizingMaskIntoConstraints_];
  v76 = [v37 contentView];
  [v76 addSubview_];

  v77 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v77 setAlignment_];
  [v77 setDistribution_];
  [v77 setSpacing_];
  v78 = v77;
  v180 = v78;
  [v78 setTranslatesAutoresizingMaskIntoConstraints_];
  v79 = [v37 contentView];
  [v79 addSubview_];

  v80 = v162;
  sub_18BC21768();
  v81 = [v171 labelColor];
  sub_18BC21708();
  sub_18BBD99B4();
  v82 = v69;
  v83 = *(v69 + 8);
  v171 = (v69 + 8);
  v173 = v83;
  v84 = v61;
  v83(v61, v72);
  v85 = v80;
  v86 = *(v82 + 32);
  v181 = v82 + 32;
  v160 = v86;
  v86(v61, v80, v72);
  sub_18BC1EE38();
  v87 = v172;
  sub_18BC1EE38();
  v159 = v51;
  sub_18BC1EE18();
  v88 = v163;
  v89 = v179;
  v179(v87, v163);
  v89(v51, v88);
  sub_18BC217A8();
  v90 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_notNowButton;
  v91 = *&v37[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_notNowButton];
  v92 = sub_18BC20B98();
  [v91 setAccessibilityIdentifier_];

  v161 = v90;
  v93 = *&v37[v90];
  v94 = v174;
  v95 = v182;
  v167(v174, v84, v182);
  v165(v94, 0, 1, v95);
  v96 = v93;
  sub_18BC21828();

  [v180 addArrangedSubview_];
  sub_18BC217C8();
  sub_18BBD99B4();
  v173(v84, v95);
  v97 = v95;
  v160(v84, v85, v95);
  v98 = v159;
  sub_18BC1EE38();
  sub_18BC1EE38();
  sub_18BC1EE18();
  v99 = v87;
  v100 = v163;
  v101 = v179;
  v179(v99, v163);
  v101(v98, v100);
  sub_18BC217A8();
  v102 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_continueButton;
  v103 = *&v37[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_continueButton];
  v104 = sub_18BC20B98();
  [v103 setAccessibilityIdentifier_];

  v105 = *&v37[v102];
  v167(v94, v84, v97);
  v165(v94, 0, 1, v97);
  v106 = v105;
  sub_18BC21828();

  v107 = v37;
  [v180 addArrangedSubview_];
  v108 = [v37 contentView];

  v109 = [v108 layoutMarginsGuide];
  v110 = [*&v37[v169] leadingAnchor];
  v111 = [v109 &selRef_initWithRow_itemRange_ + 1];
  v112 = [v110 constraintEqualToAnchor_];

  [v112 setActive_];
  v183 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_18BC504D0;
  v114 = v170;
  v115 = [v170 &selRef_initWithRow_itemRange_ + 1];
  v116 = [v109 &selRef_initWithRow_itemRange_ + 1];
  v117 = [v115 &selRef:v116 containsButtonType:? + 5];

  *(v113 + 32) = v117;
  v118 = [v114 trailingAnchor];
  v119 = [v109 &selRef_stringByAppendingPathExtension_ + 4];
  v120 = [v118 &selRef:v119 containsButtonType:? + 5];

  *(v113 + 40) = v120;
  v121 = [v114 topAnchor];
  v122 = [v109 topAnchor];
  v123 = [v121 &selRef:v122 containsButtonType:? + 5];

  *(v113 + 48) = v123;
  v124 = v168;
  v125 = [v168 topAnchor];
  v126 = [v114 bottomAnchor];

  v127 = [v125 constraintEqualToAnchor:v126 constant:14.0];
  *(v113 + 56) = v127;
  v128 = [v124 leadingAnchor];
  v129 = [v109 leadingAnchor];
  v130 = [v128 constraintEqualToAnchor_];

  *(v113 + 64) = v130;
  v131 = [v124 &selRef_stringByAppendingPathExtension_ + 4];
  v132 = [v109 &selRef_stringByAppendingPathExtension_ + 4];
  v133 = [v131 constraintEqualToAnchor_];

  *(v113 + 72) = v133;
  v134 = v169;
  v135 = [*&v107[v169] topAnchor];
  v136 = [v124 bottomAnchor];

  v137 = [v135 constraintEqualToAnchor_];
  *(v113 + 80) = v137;
  v138 = [*&v107[v134] trailingAnchor];
  v139 = [v109 trailingAnchor];
  v140 = [v138 constraintLessThanOrEqualToAnchor_];

  *(v113 + 88) = v140;
  v141 = v180;
  v142 = [v180 topAnchor];
  v143 = [*&v107[v134] bottomAnchor];
  v144 = [v142 constraintEqualToAnchor:v143 constant:14.0];

  *(v113 + 96) = v144;
  v145 = [v141 leadingAnchor];
  v146 = [v109 leadingAnchor];
  v147 = [v145 constraintEqualToAnchor_];

  *(v113 + 104) = v147;
  v148 = [v141 trailingAnchor];
  v149 = [v109 trailingAnchor];
  v150 = [v148 constraintEqualToAnchor_];

  *(v113 + 112) = v150;
  v151 = [v141 bottomAnchor];
  v152 = [v109 bottomAnchor];
  v153 = [v151 constraintEqualToAnchor_];

  *(v113 + 120) = v153;
  v154 = [v141 heightAnchor];

  v155 = [*&v107[v161] heightAnchor];
  v156 = [v154 constraintEqualToAnchor_];

  *(v113 + 128) = v156;
  sub_18BA497D0();
  v157 = sub_18BC20D88();

  [v183 activateConstraints_];

  v173(v178, v182);
  (*(v176 + 8))(v175, v177);
  return v107;
}

id sub_18BC17198(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s15ConsentCardCellCMa();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_18BC1727C()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_notNowButton;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v2 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_continueButton;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v3 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_learnMoreButton;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_notNowAction) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_continueAction) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_learnMoreAction) = 0;
  sub_18BC21CF8();
  __break(1u);
}

id sub_18BC17394(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_contentCornerRadius] = 0x4024000000000000;
  v10 = &v4[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_leadingButtonActionHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_trailingButtonActionHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_leadingButton;
  v13 = sub_18BC20B98();
  v14 = objc_opt_self();
  v15 = [v14 systemImageNamed_];

  v16 = type metadata accessor for MainButton();
  v17 = objc_allocWithZone(v16);
  v18 = sub_18BC18BD0(v15, 1, 0, 1);

  *&v5[v12] = v18;
  v19 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_trailingButton;
  v20 = sub_18BC20B98();
  v21 = [v14 systemImageNamed_];

  v22 = objc_allocWithZone(v16);
  v23 = sub_18BC18BD0(v21, 1, 0, 1);

  *&v5[v19] = v23;
  *&v5[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_stepper] = 0;
  *&v5[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_backgroundView] = 0;
  v26.receiver = v5;
  v26.super_class = _s16MainHeaderFooterCMa();
  v24 = objc_msgSendSuper2(&v26, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BC179DC();
  sub_18BC175A0();
  sub_18BC17D84();

  return v24;
}

void sub_18BC175A0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_leadingButton];
  v3 = sub_18BC20B98();
  [v2 setAccessibilityIdentifier_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_18B7B0AC0(0, &qword_1EA9D52D0, 0x1E69DC628);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = sub_18BC215E8();
  [v2 addAction:v5 forControlEvents:{0x2000, 0, 0, 0, sub_18BC18BAC, v4}];

  [v1 addSubview_];
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18BC42C20;
  v8 = [v2 leadingAnchor];
  v9 = [v1 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:*(MEMORY[0x1E69DC5C0] + 8)];

  *(v7 + 32) = v10;
  v11 = [v2 topAnchor];
  v12 = [v1 topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v7 + 40) = v13;
  v14 = [v2 bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v7 + 48) = v16;
  v17 = [*&v1[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_trailingButton] widthAnchor];
  v18 = [v2 widthAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v7 + 56) = v19;
  sub_18B7B0AC0(0, &qword_1EA9D4700, 0x1E696ACD8);
  v20 = sub_18BC20D88();

  [v6 activateConstraints_];

  LODWORD(v20) = [objc_opt_self() isSolariumEnabled];
  v21 = [v2 widthAnchor];
  if (v20)
  {
    v22 = [v2 heightAnchor];
    v23 = [v21 constraintEqualToAnchor_];
  }

  else
  {
    v22 = [v1 widthAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 multiplier:0.23];
  }

  v24 = v23;

  [v24 setActive_];
}

void sub_18BC179DC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_trailingButton];
  v3 = sub_18BC20B98();
  [v2 setAccessibilityIdentifier_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_18B7B0AC0(0, &qword_1EA9D52D0, 0x1E69DC628);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = sub_18BC215E8();
  [v2 addAction:v5 forControlEvents:{0x2000, 0, 0, 0, sub_18BC18B88, v4}];

  [v1 addSubview_];
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18BC3E3F0;
  v8 = [v2 trailingAnchor];
  v9 = [v1 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:-*(MEMORY[0x1E69DC5C0] + 24)];

  *(v7 + 32) = v10;
  v11 = [v2 topAnchor];
  v12 = [v1 topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v7 + 40) = v13;
  v14 = [v2 bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v7 + 48) = v16;
  sub_18B7B0AC0(0, &qword_1EA9D4700, 0x1E696ACD8);
  v17 = sub_18BC20D88();

  [v6 activateConstraints_];
}

void sub_18BC17CF8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = (Strong + *a3);
    v6 = *v5;
    v7 = v5[1];
    v8 = Strong;
    sub_18B824D48(*v5, v7);

    if (v6)
    {
      v6();
      sub_18B7E0A10(v6, v7);
    }
  }
}

char *sub_18BC17D84()
{
  v1 = *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_stepper);
  if (v1)
  {
    [v1 _setContinuousCornerRadius_];
  }

  v2 = *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_leadingButton);
  v3 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_contentCornerRadius;
  v4 = *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_contentCornerRadius);
  v5 = *&v2[OBJC_IVAR___SFBrowsingAssistantMainButton_cornerRadius];
  *&v2[OBJC_IVAR___SFBrowsingAssistantMainButton_cornerRadius] = v4;
  if (v2[OBJC_IVAR___SFBrowsingAssistantMainButton_customCornerRadius] == 1 && v4 != v5)
  {
    [v2 setNeedsUpdateConfiguration];
    v4 = *(v0 + v3);
  }

  result = *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_trailingButton);
  v8 = *&result[OBJC_IVAR___SFBrowsingAssistantMainButton_cornerRadius];
  *&result[OBJC_IVAR___SFBrowsingAssistantMainButton_cornerRadius] = v4;
  if (result[OBJC_IVAR___SFBrowsingAssistantMainButton_customCornerRadius] == 1 && v4 != v8)
  {

    return [result setNeedsUpdateConfiguration];
  }

  return result;
}

id sub_18BC180E0(id a1)
{
  result = *(v1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_stepper);
  if (result)
  {
    v4 = result == a1;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    return [result removeFromSuperview];
  }

  return result;
}

void sub_18BC1810C(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_stepper];
  if (v2)
  {
    v3 = v2 == a1;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v28 = v2;
    [v28 setTranslatesAutoresizingMaskIntoConstraints_];
    [v1 addSubview_];
    v4 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18BC3E3F0;
    v6 = [v28 topAnchor];
    v7 = [v1 topAnchor];
    v8 = [v6 constraintEqualToAnchor_];

    *(v5 + 32) = v8;
    v9 = [v28 bottomAnchor];
    v10 = [v1 bottomAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    *(v5 + 40) = v11;
    v12 = [v28 centerXAnchor];
    v13 = [v1 centerXAnchor];
    v14 = [v12 constraintEqualToAnchor_];

    *(v5 + 48) = v14;
    sub_18B7B0AC0(0, &qword_1EA9D4700, 0x1E696ACD8);
    v15 = sub_18BC20D88();

    [v4 activateConstraints_];

    if ([objc_opt_self() isSolariumEnabled])
    {
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_18BC41E60;
      v17 = [v28 leadingAnchor];
      v18 = [*&v1[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_leadingButton] trailingAnchor];
      v19 = [v17 constraintEqualToAnchor:v18 constant:8.0];

      *(v16 + 32) = v19;
      v20 = [v28 trailingAnchor];

      v21 = [*&v1[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_trailingButton] leadingAnchor];
      v22 = [v20 constraintEqualToAnchor:v21 constant:-8.0];

      *(v16 + 40) = v22;
      v23 = sub_18BC20D88();

      [v4 activateConstraints_];

      [v28 _setContinuousCornerRadius_];
      v24 = v28;
    }

    else
    {
      [v28 _setContinuousCornerRadius_];
      v25 = [v28 widthAnchor];

      v26 = [*&v1[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_trailingButton] widthAnchor];
      v27 = [v25 constraintEqualToAnchor:v26 multiplier:2.0];

      [v27 setActive_];
      v24 = v27;
    }
  }
}

id sub_18BC186C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong isEnabled];
    v5 = objc_opt_self();
    if (v4)
    {
      v6 = [v5 labelColor];
    }

    else
    {
      v6 = [v5 secondaryLabelColor];
    }

    v9 = v6;

    return v9;
  }

  else
  {
    v7 = [objc_opt_self() labelColor];

    return v7;
  }
}

uint64_t sub_18BC1879C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730, &unk_18BC41F60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16[-v5];
  v7 = sub_18BC21808();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18BC21818();
  v11 = *(v8 + 48);
  if (v11(v6, 1, v7) == 1)
  {
    sub_18BC217B8();
    if (v11(v6, 1, v7) != 1)
    {
      sub_18B9A27B4(v6);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  v12 = &selRef_secondarySystemFillColor;
  if (([a1 isHighlighted] & 1) == 0 && !objc_msgSend(a1, sel_isSelected))
  {
    v12 = &selRef_secondarySystemGroupedBackgroundColor;
  }

  v13 = [objc_opt_self() *v12];
  sub_18BC216F8();
  if (a1[OBJC_IVAR___SFBrowsingAssistantMainButton_customCornerRadius] == 1)
  {
    v14 = sub_18BC21608();
    sub_18BC1F768();
    v14(v16, 0);
  }

  (*(v8 + 32))(a2, v10, v7);
  return (*(v8 + 56))(a2, 0, 1, v7);
}

id sub_18BC18B2C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_18BC18BD0(void *a1, char a2, uint64_t a3, int a4)
{
  v30 = a4;
  v29 = a3;
  v31 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730, &unk_18BC41F60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v32 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E8, &unk_18BC56090);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_18BC21628();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_18BC21808();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR___SFBrowsingAssistantMainButton_cornerRadius] = 0;
  v4[OBJC_IVAR___SFBrowsingAssistantMainButton_customCornerRadius] = a2;
  v19 = type metadata accessor for MainButton();
  v34.receiver = v4;
  v34.super_class = v19;
  v20 = objc_msgSendSuper2(&v34, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0, v29);
  sub_18BC217B8();
  if (a2)
  {
    (*(v12 + 104))(v14, *MEMORY[0x1E69DC4F0], v11);
    sub_18BC21638();
  }

  if ((v30 & 1) == 0)
  {
    v21 = sub_18BC21608();
    sub_18BC1F778();
    v21(v33, 0);
  }

  v22 = v31;
  sub_18BC21788();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = v20;
  sub_18BC1FBD8();
  v24 = sub_18BC1FBC8();
  (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
  sub_18BC21718();
  v25 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:3];
  sub_18BC215F8();
  v26 = v32;
  (*(v16 + 16))(v32, v18, v15);
  (*(v16 + 56))(v26, 0, 1, v15);
  v27 = v23;
  sub_18BC21828();

  [v27 setMaximumContentSizeCategory_];
  (*(v16 + 8))(v18, v15);
  return v27;
}

void sub_18BC18FF8()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_contentCornerRadius) = 0x4024000000000000;
  v2 = (v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_leadingButtonActionHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_trailingButtonActionHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_leadingButton;
  v5 = sub_18BC20B98();
  v6 = objc_opt_self();
  v7 = [v6 systemImageNamed_];

  v8 = type metadata accessor for MainButton();
  v9 = objc_allocWithZone(v8);
  v10 = sub_18BC18BD0(v7, 1, 0, 1);

  *(v1 + v4) = v10;
  v11 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_trailingButton;
  v12 = sub_18BC20B98();
  v13 = [v6 systemImageNamed_];

  v14 = objc_allocWithZone(v8);
  v15 = sub_18BC18BD0(v13, 1, 0, 1);

  *(v1 + v11) = v15;
  *(v1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_stepper) = 0;
  *(v1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_backgroundView) = 0;
  sub_18BC21CF8();
  __break(1u);
}

void __SFCreateAppSuggestionBannerFromMetaTagContent_block_invoke_4_cold_1(os_log_t log)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = 138543618;
  v2 = @"app-id";
  v3 = 2114;
  v4 = @"app-clip-bundle-id";
  _os_log_error_impl(&dword_18B7AC000, log, OS_LOG_TYPE_ERROR, "Not showing banner because there wasn't a valid '%{public}@' or '%{public}@' parameter", &v1, 0x16u);
}

void __ensureImageCacheDirectory_block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_3(&dword_18B7AC000, v6, v7, "Failed to create cache directory at path %@. Error: %{public}@", v8, v9, v10, v11);
}

void __ensureImageCacheDirectory_block_invoke_cold_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_3(&dword_18B7AC000, v6, v7, "Failed to exclude cache directory from backup %@. Error: %{public}@", v8, v9, v10, v11);
}

void _SFPopoverSourceInfoUnwrap_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_fault_impl(&dword_18B7AC000, log, OS_LOG_TYPE_FAULT, "Could not unwrap popover source info: %{public}@, context: %{public}@", &v3, 0x16u);
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC38](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x1EEDBF2E0](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}